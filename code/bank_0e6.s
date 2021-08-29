; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0e6", ROMX[$4000], BANK[$e6]

	adc  b                                           ; $4000: $88
	adc  b                                           ; $4001: $88
	ld   a, b                                        ; $4002: $78
	ld   [hl], a                                     ; $4003: $77
	add  a                                           ; $4004: $87
	adc  b                                           ; $4005: $88
	adc  c                                           ; $4006: $89
	sbc  b                                           ; $4007: $98
	sbc  b                                           ; $4008: $98
	sbc  b                                           ; $4009: $98
	adc  b                                           ; $400a: $88
	add  a                                           ; $400b: $87
	add  a                                           ; $400c: $87
	ld   [hl], a                                     ; $400d: $77
	ld   a, b                                        ; $400e: $78
	adc  b                                           ; $400f: $88
	sbc  c                                           ; $4010: $99
	adc  c                                           ; $4011: $89
	sbc  c                                           ; $4012: $99
	adc  c                                           ; $4013: $89
	ld   a, b                                        ; $4014: $78
	add  a                                           ; $4015: $87
	add  a                                           ; $4016: $87
	ld   a, b                                        ; $4017: $78
	ld   a, c                                        ; $4018: $79
	ld   a, c                                        ; $4019: $79
	adc  b                                           ; $401a: $88
	sbc  c                                           ; $401b: $99
	sbc  b                                           ; $401c: $98
	adc  c                                           ; $401d: $89
	adc  b                                           ; $401e: $88
	adc  b                                           ; $401f: $88
	adc  b                                           ; $4020: $88
	adc  b                                           ; $4021: $88
	adc  b                                           ; $4022: $88
	adc  c                                           ; $4023: $89
	adc  b                                           ; $4024: $88
	adc  b                                           ; $4025: $88
	add  a                                           ; $4026: $87
	adc  b                                           ; $4027: $88
	ld   a, c                                        ; $4028: $79
	ld   a, b                                        ; $4029: $78
	adc  b                                           ; $402a: $88
	sbc  b                                           ; $402b: $98
	sbc  c                                           ; $402c: $99
	adc  b                                           ; $402d: $88
	sbc  b                                           ; $402e: $98
	adc  b                                           ; $402f: $88
	ld   a, b                                        ; $4030: $78
	ld   [hl], a                                     ; $4031: $77
	add  a                                           ; $4032: $87
	ld   a, c                                        ; $4033: $79
	ld   a, b                                        ; $4034: $78
	adc  b                                           ; $4035: $88
	sbc  c                                           ; $4036: $99
	sbc  b                                           ; $4037: $98
	adc  b                                           ; $4038: $88
	adc  c                                           ; $4039: $89
	adc  b                                           ; $403a: $88
	adc  b                                           ; $403b: $88
	ld   [hl], a                                     ; $403c: $77
	ld   [hl], a                                     ; $403d: $77
	ld   l, c                                        ; $403e: $69
	ld   [hl], a                                     ; $403f: $77
	sub  [hl]                                        ; $4040: $96
	sbc  b                                           ; $4041: $98
	sbc  c                                           ; $4042: $99
	adc  c                                           ; $4043: $89
	sbc  b                                           ; $4044: $98
	sbc  b                                           ; $4045: $98
	sbc  b                                           ; $4046: $98
	adc  b                                           ; $4047: $88
	adc  b                                           ; $4048: $88
	adc  b                                           ; $4049: $88
	adc  b                                           ; $404a: $88
	add  a                                           ; $404b: $87
	adc  b                                           ; $404c: $88
	ld   l, d                                        ; $404d: $6a
	ld   [hl], a                                     ; $404e: $77
	sub  [hl]                                        ; $404f: $96
	sub  a                                           ; $4050: $97
	sbc  c                                           ; $4051: $99
	ld   a, d                                        ; $4052: $7a
	adc  c                                           ; $4053: $89
	sbc  b                                           ; $4054: $98
	sbc  c                                           ; $4055: $99
	sbc  b                                           ; $4056: $98
	ld   [hl], a                                     ; $4057: $77
	add  a                                           ; $4058: $87
	ld   l, c                                        ; $4059: $69
	ld   l, b                                        ; $405a: $68
	add  a                                           ; $405b: $87
	sub  a                                           ; $405c: $97
	xor  b                                           ; $405d: $a8
	sbc  c                                           ; $405e: $99
	adc  c                                           ; $405f: $89
	adc  c                                           ; $4060: $89
	adc  c                                           ; $4061: $89
	adc  b                                           ; $4062: $88
	ld   [hl], a                                     ; $4063: $77
	sub  h                                           ; $4064: $94
	sub  [hl]                                        ; $4065: $96
	ld   e, d                                        ; $4066: $5a
	ld   e, c                                        ; $4067: $59
	ld   a, b                                        ; $4068: $78
	sub  a                                           ; $4069: $97
	cp   b                                           ; $406a: $b8
	sbc  d                                           ; $406b: $9a
	adc  c                                           ; $406c: $89
	adc  c                                           ; $406d: $89
	sbc  b                                           ; $406e: $98
	ld   h, [hl]                                     ; $406f: $66
	and  h                                           ; $4070: $a4
	ld   a, d                                        ; $4071: $7a
	inc  l                                           ; $4072: $2c
	ld   e, b                                        ; $4073: $58
	sub  [hl]                                        ; $4074: $96
	or   [hl]                                        ; $4075: $b6
	cp   d                                           ; $4076: $ba
	sbc  e                                           ; $4077: $9b
	sbc  c                                           ; $4078: $99
	xor  b                                           ; $4079: $a8
	adc  b                                           ; $407a: $88
	ld   e, b                                        ; $407b: $58
	sub  e                                           ; $407c: $93
	and  [hl]                                        ; $407d: $a6
	ld   c, e                                        ; $407e: $4b
	ld   c, d                                        ; $407f: $4a
	ld   a, c                                        ; $4080: $79
	and  a                                           ; $4081: $a7
	rst  ToBoot                                         ; $4082: $c7
	xor  d                                           ; $4083: $aa
	adc  c                                           ; $4084: $89
	sbc  c                                           ; $4085: $99
	sub  a                                           ; $4086: $97
	ld   l, d                                        ; $4087: $6a
	ld   b, [hl]                                     ; $4088: $46
	and  d                                           ; $4089: $a2
	and  [hl]                                        ; $408a: $a6
	ld   l, d                                        ; $408b: $6a
	ld   l, h                                        ; $408c: $6c
	ld   l, e                                        ; $408d: $6b
	xor  c                                           ; $408e: $a9
	ret  z                                           ; $408f: $c8

	xor  d                                           ; $4090: $aa
	sbc  b                                           ; $4091: $98
	halt                                             ; $4092: $76
	sub  l                                           ; $4093: $95
	ld   c, c                                        ; $4094: $49
	jr   z, jr_0e6_410c                              ; $4095: $28 $75

	and  l                                           ; $4097: $a5
	rst  ToBoot                                         ; $4098: $c7
	xor  h                                           ; $4099: $ac
	adc  h                                           ; $409a: $8c
	sbc  e                                           ; $409b: $9b
	xor  c                                           ; $409c: $a9
	sub  a                                           ; $409d: $97
	ld   l, b                                        ; $409e: $68
	ld   d, h                                        ; $409f: $54
	sub  d                                           ; $40a0: $92
	ld   [hl], a                                     ; $40a1: $77
	ld   e, d                                        ; $40a2: $5a
	ld   e, h                                        ; $40a3: $5c
	ld   a, d                                        ; $40a4: $7a
	ret  z                                           ; $40a5: $c8

	ret                                              ; $40a6: $c9


	cp   d                                           ; $40a7: $ba
	xor  b                                           ; $40a8: $a8
	ld   [hl], l                                     ; $40a9: $75
	add  [hl]                                        ; $40aa: $86
	ld   a, [hl+]                                    ; $40ab: $2a
	dec  h                                           ; $40ac: $25
	sub  e                                           ; $40ad: $93
	and  l                                           ; $40ae: $a5
	cp   b                                           ; $40af: $b8
	adc  [hl]                                        ; $40b0: $8e
	ld   a, l                                        ; $40b1: $7d
	sbc  e                                           ; $40b2: $9b
	xor  c                                           ; $40b3: $a9
	sub  [hl]                                        ; $40b4: $96
	ld   l, b                                        ; $40b5: $68
	ld   h, d                                        ; $40b6: $62
	and  c                                           ; $40b7: $a1
	ld   e, b                                        ; $40b8: $58
	dec  sp                                          ; $40b9: $3b
	ld   e, e                                        ; $40ba: $5b
	adc  c                                           ; $40bb: $89
	rst  $20                                         ; $40bc: $e7
	jp   z, $9abb                                    ; $40bd: $ca $bb $9a

	ld   h, [hl]                                     ; $40c0: $66
	halt                                             ; $40c1: $76
	ld   a, [de]                                     ; $40c2: $1a
	inc  hl                                          ; $40c3: $23
	sub  d                                           ; $40c4: $92
	and  [hl]                                        ; $40c5: $a6
	xor  d                                           ; $40c6: $aa
	ld   a, [hl]                                     ; $40c7: $7e
	ld   a, h                                        ; $40c8: $7c
	cp   e                                           ; $40c9: $bb
	xor  d                                           ; $40ca: $aa
	and  [hl]                                        ; $40cb: $a6
	ld   l, c                                        ; $40cc: $69
	ld   d, d                                        ; $40cd: $52
	and  c                                           ; $40ce: $a1
	ld   h, a                                        ; $40cf: $67
	ld   a, [hl-]                                    ; $40d0: $3a
	ld   c, e                                        ; $40d1: $4b
	adc  c                                           ; $40d2: $89
	rst  $20                                         ; $40d3: $e7
	db   $eb                                         ; $40d4: $eb
	cp   h                                           ; $40d5: $bc
	xor  c                                           ; $40d6: $a9
	ld   h, [hl]                                     ; $40d7: $66
	sub  d                                           ; $40d8: $92
	ld   c, c                                        ; $40d9: $49
	ld   a, [de]                                     ; $40da: $1a
	ld   b, l                                        ; $40db: $45
	and  h                                           ; $40dc: $a4
	sub  $cd                                         ; $40dd: $d6 $cd
	adc  a                                           ; $40df: $8f
	xor  h                                           ; $40e0: $ac
	jp   z, $8794                                    ; $40e1: $ca $94 $87

	dec  de                                          ; $40e4: $1b
	ld   de, $b4b1                                   ; $40e5: $11 $b1 $b4
	sbc  h                                           ; $40e8: $9c
	ld   e, a                                        ; $40e9: $5f
	adc  h                                           ; $40ea: $8c
	ld   a, [$a6ea]                                  ; $40eb: $fa $ea $a6
	ld   e, e                                        ; $40ee: $5b
	dec  d                                           ; $40ef: $15
	sub  c                                           ; $40f0: $91
	or   d                                           ; $40f1: $b2
	ld   e, d                                        ; $40f2: $5a
	ccf                                              ; $40f3: $3f
	ld   e, h                                        ; $40f4: $5c
	rst  $20                                         ; $40f5: $e7
	ld   a, [$88bd]                                  ; $40f6: $fa $bd $88
	ld   c, d                                        ; $40f9: $4a
	ld   sp, $76c1                                   ; $40fa: $31 $c1 $76
	dec  e                                           ; $40fd: $1d
	ld   e, $89                                      ; $40fe: $1e $89
	rst  $30                                         ; $4100: $f7
	db   $fd                                         ; $4101: $fd
	cp   [hl]                                        ; $4102: $be
	sbc  c                                           ; $4103: $99
	ld   c, d                                        ; $4104: $4a
	ld   b, c                                        ; $4105: $41
	pop  hl                                          ; $4106: $e1
	ld   h, a                                        ; $4107: $67
	rra                                              ; $4108: $1f
	dec  e                                           ; $4109: $1d
	sub  a                                           ; $410a: $97
	rst  $30                                         ; $410b: $f7

jr_0e6_410c:
	cp   $ad                                         ; $410c: $fe $ad
	and  a                                           ; $410e: $a7
	ld   e, d                                        ; $410f: $5a
	ld   hl, $84d1                                   ; $4110: $21 $d1 $84
	ld   e, $1e                                      ; $4113: $1e $1e
	adc  d                                           ; $4115: $8a
	ld   sp, hl                                      ; $4116: $f9
	rst  $38                                         ; $4117: $ff
	xor  [hl]                                        ; $4118: $ae
	sub  l                                           ; $4119: $95
	ld   a, c                                        ; $411a: $79
	ld   d, $61                                      ; $411b: $16 $61
	pop  bc                                          ; $411d: $c1
	ld   e, c                                        ; $411e: $59
	cpl                                              ; $411f: $2f
	ld   e, a                                        ; $4120: $5f
	ld   [$ccfd], a                                  ; $4121: $ea $fd $cc
	ld   [hl], l                                     ; $4124: $75
	or   e                                           ; $4125: $b3
	ld   a, [de]                                     ; $4126: $1a
	inc  de                                          ; $4127: $13
	add  c                                           ; $4128: $81
	jp   $9fab                                       ; $4129: $c3 $ab $9f


	xor  a                                           ; $412c: $af
	ei                                               ; $412d: $fb
	bit  3, c                                        ; $412e: $cb $59
	ld   h, c                                        ; $4130: $61
	sub  c                                           ; $4131: $91
	add  hl, de                                      ; $4132: $19
	add  hl, de                                      ; $4133: $19
	ld   d, [hl]                                     ; $4134: $56
	sub  $fb                                         ; $4135: $d6 $fb
	rst  $28                                         ; $4137: $ef
	call Call_0e6_78a7                               ; $4138: $cd $a7 $78
	rla                                              ; $413b: $17
	ld   hl, $6691                                   ; $413c: $21 $91 $66
	ld   l, l                                        ; $413f: $6d
	ld   a, a                                        ; $4140: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4141: $cf
	db   $fd                                         ; $4142: $fd
	reti                                             ; $4143: $d9


	ld   a, b                                        ; $4144: $78
	ld   [hl], c                                     ; $4145: $71
	ld   [hl], c                                     ; $4146: $71
	jr   jr_0e6_4160                                 ; $4147: $18 $17

	ld   d, a                                        ; $4149: $57
	cp   c                                           ; $414a: $b9
	db   $fc                                         ; $414b: $fc
	rst  $38                                         ; $414c: $ff
	call c, $95a7                                    ; $414d: $dc $a7 $95
	jr   jr_0e6_4164                                 ; $4150: $18 $12

	ld   b, c                                        ; $4152: $41
	add  e                                           ; $4153: $83
	xor  c                                           ; $4154: $a9
	cp   a                                           ; $4155: $bf
	rst  JumpTable                                         ; $4156: $df
	db   $fd                                         ; $4157: $fd
	jp   z, $1479                                    ; $4158: $ca $79 $14

	ld   b, c                                        ; $415b: $41
	ld   [hl], c                                     ; $415c: $71
	ld   b, [hl]                                     ; $415d: $46
	ld   c, h                                        ; $415e: $4c
	adc  a                                           ; $415f: $8f

jr_0e6_4160:
	rst  $38                                         ; $4160: $ff
	rst  $38                                         ; $4161: $ff
	db   $db                                         ; $4162: $db
	adc  c                                           ; $4163: $89

jr_0e6_4164:
	ld   h, c                                        ; $4164: $61
	add  c                                           ; $4165: $81
	dec  d                                           ; $4166: $15
	rla                                              ; $4167: $17
	ld   c, b                                        ; $4168: $48
	xor  d                                           ; $4169: $aa
	cp   $ff                                         ; $416a: $fe $ff
	call z, $a198                                    ; $416c: $cc $98 $a1
	ld   h, c                                        ; $416f: $61
	dec  d                                           ; $4170: $15
	ld   d, $47                                      ; $4171: $16 $47
	xor  b                                           ; $4173: $a8
	cp   $ef                                         ; $4174: $fe $ef
	db   $ec                                         ; $4176: $ec
	or   a                                           ; $4177: $b7
	and  d                                           ; $4178: $a2
	ld   [hl], $15                                   ; $4179: $36 $15
	ld   [de], a                                     ; $417b: $12
	ld   h, h                                        ; $417c: $64
	cp   b                                           ; $417d: $b8
	rst  JumpTable                                         ; $417e: $df
	rst  $28                                         ; $417f: $ef
	db   $fc                                         ; $4180: $fc
	rst  ToBoot                                         ; $4181: $c7
	and  l                                           ; $4182: $a5
	rla                                              ; $4183: $17
	ld   [de], a                                     ; $4184: $12
	ld   hl, $a963                                   ; $4185: $21 $63 $a9
	cp   a                                           ; $4188: $bf
	rst  JumpTable                                         ; $4189: $df
	db   $fd                                         ; $418a: $fd
	ret  z                                           ; $418b: $c8

	adc  c                                           ; $418c: $89
	rla                                              ; $418d: $17
	ld   de, $6341                                   ; $418e: $11 $41 $63
	adc  d                                           ; $4191: $8a
	sbc  a                                           ; $4192: $9f
	rst  JumpTable                                         ; $4193: $df
	cp   $cb                                         ; $4194: $fe $cb
	ld   a, e                                        ; $4196: $7b
	inc  d                                           ; $4197: $14
	ld   b, c                                        ; $4198: $41
	ld   d, c                                        ; $4199: $51
	dec  [hl]                                        ; $419a: $35
	ld   c, e                                        ; $419b: $4b
	adc  [hl]                                        ; $419c: $8e
	cp   $ff                                         ; $419d: $fe $ff
	call c, Call_0e6_528a                            ; $419f: $dc $8a $52
	ld   h, c                                        ; $41a2: $61
	ld   [hl-], a                                    ; $41a3: $32
	ld   d, $3a                                      ; $41a4: $16 $3a
	sbc  h                                           ; $41a6: $9c
	db   $fd                                         ; $41a7: $fd
	rst  $38                                         ; $41a8: $ff
	db   $dd                                         ; $41a9: $dd
	sbc  b                                           ; $41aa: $98
	add  c                                           ; $41ab: $81
	ld   h, c                                        ; $41ac: $61
	inc  d                                           ; $41ad: $14
	dec  d                                           ; $41ae: $15
	scf                                              ; $41af: $37
	sbc  c                                           ; $41b0: $99
	cp   $ff                                         ; $41b1: $fe $ff
	sbc  $a8                                         ; $41b3: $de $a8
	and  e                                           ; $41b5: $a3
	dec  [hl]                                        ; $41b6: $35
	inc  d                                           ; $41b7: $14
	ld   [de], a                                     ; $41b8: $12
	ld   d, e                                        ; $41b9: $53
	and  a                                           ; $41ba: $a7
	rst  JumpTable                                         ; $41bb: $df
	rst  JumpTable                                         ; $41bc: $df
	xor  $d8                                         ; $41bd: $ee $d8
	sub  a                                           ; $41bf: $97
	ld   d, $11                                      ; $41c0: $16 $11
	ld   b, c                                        ; $41c2: $41
	ld   d, e                                        ; $41c3: $53
	ld   a, c                                        ; $41c4: $79
	sbc  a                                           ; $41c5: $9f
	rst  JumpTable                                         ; $41c6: $df
	cp   $ea                                         ; $41c7: $fe $ea
	adc  c                                           ; $41c9: $89
	ld   b, e                                        ; $41ca: $43
	ld   d, c                                        ; $41cb: $51
	ld   sp, $3a15                                   ; $41cc: $31 $15 $3a
	adc  l                                           ; $41cf: $8d
	db   $fc                                         ; $41d0: $fc
	cp   $ec                                         ; $41d1: $fe $ec
	sbc  b                                           ; $41d3: $98
	add  d                                           ; $41d4: $82
	ld   d, e                                        ; $41d5: $53
	inc  d                                           ; $41d6: $14
	inc  d                                           ; $41d7: $14
	ld   b, [hl]                                     ; $41d8: $46
	xor  c                                           ; $41d9: $a9
	cp   $ef                                         ; $41da: $fe $ef
	sbc  $c8                                         ; $41dc: $de $c8
	sub  a                                           ; $41de: $97
	dec  h                                           ; $41df: $25
	ld   de, $5441                                   ; $41e0: $11 $41 $54
	ld   a, c                                        ; $41e3: $79
	sbc  a                                           ; $41e4: $9f
	rst  JumpTable                                         ; $41e5: $df
	db   $fd                                         ; $41e6: $fd
	jp   c, $6298                                    ; $41e7: $da $98 $62

	ld   h, c                                        ; $41ea: $61
	inc  d                                           ; $41eb: $14
	ld   d, $39                                      ; $41ec: $16 $39
	sbc  c                                           ; $41ee: $99
	db   $fc                                         ; $41ef: $fc
	cp   $ec                                         ; $41f0: $fe $ec
	cp   b                                           ; $41f2: $b8
	add  [hl]                                        ; $41f3: $86
	ld   h, $12                                      ; $41f4: $26 $12
	ld   sp, $9863                                   ; $41f6: $31 $63 $98
	xor  [hl]                                        ; $41f9: $ae
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41fa: $cf
	xor  $db                                         ; $41fb: $ee $db
	adc  c                                           ; $41fd: $89
	ld   h, d                                        ; $41fe: $62
	ld   h, c                                        ; $41ff: $61
	inc  hl                                          ; $4200: $23
	ld   d, $39                                      ; $4201: $16 $39
	adc  d                                           ; $4203: $8a
	db   $eb                                         ; $4204: $eb
	cp   $dc                                         ; $4205: $fe $dc
	xor  b                                           ; $4207: $a8
	add  a                                           ; $4208: $87
	ld   h, $12                                      ; $4209: $26 $12
	ld   b, c                                        ; $420b: $41
	ld   h, e                                        ; $420c: $63
	adc  b                                           ; $420d: $88
	sbc  a                                           ; $420e: $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $420f: $cf
	db   $ed                                         ; $4210: $ed
	res  3, b                                        ; $4211: $cb $98
	add  d                                           ; $4213: $82
	ld   h, e                                        ; $4214: $63
	inc  d                                           ; $4215: $14
	ld   d, $47                                      ; $4216: $16 $47
	sbc  b                                           ; $4218: $98
	db   $ec                                         ; $4219: $ec
	xor  $dc                                         ; $421a: $ee $dc
	cp   c                                           ; $421c: $b9
	ld   a, b                                        ; $421d: $78
	dec  [hl]                                        ; $421e: $35
	ld   b, c                                        ; $421f: $41
	ld   b, d                                        ; $4220: $42
	ld   d, h                                        ; $4221: $54
	ld   l, c                                        ; $4222: $69
	ld   a, [hl]                                     ; $4223: $7e
	cp   l                                           ; $4224: $bd
	db   $fd                                         ; $4225: $fd
	db   $db                                         ; $4226: $db
	and  a                                           ; $4227: $a7
	sub  l                                           ; $4228: $95
	ld   b, [hl]                                     ; $4229: $46
	inc  h                                           ; $422a: $24
	inc  [hl]                                        ; $422b: $34
	ld   d, l                                        ; $422c: $55
	and  a                                           ; $422d: $a7
	call z, $dcce                                    ; $422e: $cc $ce $dc
	cp   e                                           ; $4231: $bb
	ld   a, c                                        ; $4232: $79
	ld   [hl], e                                     ; $4233: $73
	ld   h, e                                        ; $4234: $63
	inc  [hl]                                        ; $4235: $34
	dec  [hl]                                        ; $4236: $35
	ld   e, b                                        ; $4237: $58
	adc  c                                           ; $4238: $89
	jp   z, $dbed                                    ; $4239: $ca $ed $db

	cp   b                                           ; $423c: $b8
	ld   a, c                                        ; $423d: $79
	ld   b, [hl]                                     ; $423e: $46
	ld   d, d                                        ; $423f: $52
	ld   d, e                                        ; $4240: $53
	ld   d, l                                        ; $4241: $55
	ld   a, c                                        ; $4242: $79
	adc  h                                           ; $4243: $8c
	cp   h                                           ; $4244: $bc
	call z, $a7cb                                    ; $4245: $cc $cb $a7
	sub  [hl]                                        ; $4248: $96
	ld   b, [hl]                                     ; $4249: $46
	inc  [hl]                                        ; $424a: $34
	ld   b, h                                        ; $424b: $44
	ld   h, [hl]                                     ; $424c: $66
	adc  b                                           ; $424d: $88
	cp   h                                           ; $424e: $bc
	cp   h                                           ; $424f: $bc
	res  7, d                                        ; $4250: $cb $ba
	ld   a, b                                        ; $4252: $78
	ld   [hl], l                                     ; $4253: $75
	ld   h, l                                        ; $4254: $65
	ld   b, l                                        ; $4255: $45
	ld   d, l                                        ; $4256: $55
	ld   h, a                                        ; $4257: $67
	adc  d                                           ; $4258: $8a
	cp   e                                           ; $4259: $bb
	call z, $a8ba                                    ; $425a: $cc $ba $a8
	ld   a, b                                        ; $425d: $78
	ld   h, [hl]                                     ; $425e: $66
	ld   h, h                                        ; $425f: $64
	ld   d, l                                        ; $4260: $55
	ld   d, [hl]                                     ; $4261: $56
	ld   a, b                                        ; $4262: $78
	adc  d                                           ; $4263: $8a
	cp   e                                           ; $4264: $bb
	cp   e                                           ; $4265: $bb
	xor  d                                           ; $4266: $aa
	sub  a                                           ; $4267: $97
	add  a                                           ; $4268: $87
	ld   d, [hl]                                     ; $4269: $56
	ld   d, l                                        ; $426a: $55
	ld   h, [hl]                                     ; $426b: $66
	halt                                             ; $426c: $76
	sbc  b                                           ; $426d: $98
	sbc  e                                           ; $426e: $9b
	xor  e                                           ; $426f: $ab
	cp   d                                           ; $4270: $ba
	xor  c                                           ; $4271: $a9
	sub  a                                           ; $4272: $97
	add  [hl]                                        ; $4273: $86
	ld   h, [hl]                                     ; $4274: $66
	ld   d, [hl]                                     ; $4275: $56
	ld   h, [hl]                                     ; $4276: $66
	ld   [hl], a                                     ; $4277: $77
	adc  c                                           ; $4278: $89
	xor  d                                           ; $4279: $aa
	sbc  e                                           ; $427a: $9b
	xor  c                                           ; $427b: $a9
	sbc  c                                           ; $427c: $99
	ld   a, b                                        ; $427d: $78
	halt                                             ; $427e: $76
	ld   h, [hl]                                     ; $427f: $66
	ld   h, [hl]                                     ; $4280: $66
	ld   [hl], a                                     ; $4281: $77
	adc  c                                           ; $4282: $89
	sbc  d                                           ; $4283: $9a
	xor  c                                           ; $4284: $a9
	sbc  c                                           ; $4285: $99
	sbc  c                                           ; $4286: $99
	adc  b                                           ; $4287: $88
	ld   [hl], a                                     ; $4288: $77
	halt                                             ; $4289: $76
	ld   h, [hl]                                     ; $428a: $66
	ld   [hl], a                                     ; $428b: $77
	ld   a, b                                        ; $428c: $78
	sbc  c                                           ; $428d: $99
	xor  d                                           ; $428e: $aa
	sbc  c                                           ; $428f: $99
	sbc  b                                           ; $4290: $98
	sbc  b                                           ; $4291: $98
	add  a                                           ; $4292: $87
	halt                                             ; $4293: $76
	ld   [hl], a                                     ; $4294: $77
	ld   h, a                                        ; $4295: $67
	ld   a, b                                        ; $4296: $78
	sbc  b                                           ; $4297: $98
	sbc  c                                           ; $4298: $99
	sbc  c                                           ; $4299: $99
	sbc  b                                           ; $429a: $98
	adc  c                                           ; $429b: $89
	add  a                                           ; $429c: $87
	ld   [hl], a                                     ; $429d: $77
	ld   [hl], a                                     ; $429e: $77
	ld   [hl], a                                     ; $429f: $77
	ld   [hl], a                                     ; $42a0: $77
	ld   a, c                                        ; $42a1: $79
	sbc  b                                           ; $42a2: $98
	adc  c                                           ; $42a3: $89
	sbc  c                                           ; $42a4: $99
	sbc  b                                           ; $42a5: $98
	sbc  c                                           ; $42a6: $99
	add  a                                           ; $42a7: $87
	add  a                                           ; $42a8: $87
	ld   [hl], a                                     ; $42a9: $77
	ld   [hl], a                                     ; $42aa: $77
	add  a                                           ; $42ab: $87
	adc  b                                           ; $42ac: $88
	adc  c                                           ; $42ad: $89
	adc  b                                           ; $42ae: $88
	adc  c                                           ; $42af: $89
	adc  c                                           ; $42b0: $89
	adc  b                                           ; $42b1: $88
	add  a                                           ; $42b2: $87
	adc  b                                           ; $42b3: $88
	add  a                                           ; $42b4: $87
	ld   [hl], a                                     ; $42b5: $77
	adc  b                                           ; $42b6: $88
	adc  b                                           ; $42b7: $88
	adc  b                                           ; $42b8: $88
	adc  c                                           ; $42b9: $89
	adc  b                                           ; $42ba: $88
	adc  b                                           ; $42bb: $88
	sbc  b                                           ; $42bc: $98
	sbc  b                                           ; $42bd: $98
	sbc  b                                           ; $42be: $98
	adc  c                                           ; $42bf: $89
	ld   a, c                                        ; $42c0: $79
	ld   a, b                                        ; $42c1: $78
	adc  b                                           ; $42c2: $88
	adc  b                                           ; $42c3: $88
	add  a                                           ; $42c4: $87
	sbc  b                                           ; $42c5: $98
	adc  b                                           ; $42c6: $88
	adc  b                                           ; $42c7: $88
	sbc  b                                           ; $42c8: $98
	sbc  c                                           ; $42c9: $99
	adc  c                                           ; $42ca: $89
	ld   a, b                                        ; $42cb: $78
	adc  b                                           ; $42cc: $88
	add  a                                           ; $42cd: $87
	add  a                                           ; $42ce: $87
	add  a                                           ; $42cf: $87
	adc  b                                           ; $42d0: $88
	adc  b                                           ; $42d1: $88
	adc  b                                           ; $42d2: $88
	adc  c                                           ; $42d3: $89
	adc  c                                           ; $42d4: $89
	adc  b                                           ; $42d5: $88
	adc  b                                           ; $42d6: $88
	sub  a                                           ; $42d7: $97
	adc  b                                           ; $42d8: $88
	add  a                                           ; $42d9: $87
	adc  b                                           ; $42da: $88
	adc  b                                           ; $42db: $88
	adc  b                                           ; $42dc: $88
	adc  b                                           ; $42dd: $88
	adc  b                                           ; $42de: $88
	adc  b                                           ; $42df: $88
	adc  b                                           ; $42e0: $88
	adc  b                                           ; $42e1: $88
	adc  b                                           ; $42e2: $88
	adc  b                                           ; $42e3: $88
	adc  b                                           ; $42e4: $88
	adc  b                                           ; $42e5: $88
	sbc  b                                           ; $42e6: $98
	adc  c                                           ; $42e7: $89
	adc  b                                           ; $42e8: $88
	sbc  b                                           ; $42e9: $98
	adc  b                                           ; $42ea: $88
	adc  b                                           ; $42eb: $88
	adc  b                                           ; $42ec: $88
	adc  b                                           ; $42ed: $88
	add  a                                           ; $42ee: $87
	sbc  b                                           ; $42ef: $98
	adc  b                                           ; $42f0: $88
	sbc  b                                           ; $42f1: $98
	sbc  b                                           ; $42f2: $98
	adc  c                                           ; $42f3: $89
	adc  c                                           ; $42f4: $89
	adc  b                                           ; $42f5: $88
	adc  b                                           ; $42f6: $88
	adc  b                                           ; $42f7: $88
	adc  b                                           ; $42f8: $88
	adc  b                                           ; $42f9: $88
	adc  b                                           ; $42fa: $88
	adc  b                                           ; $42fb: $88
	adc  b                                           ; $42fc: $88
	adc  b                                           ; $42fd: $88
	adc  b                                           ; $42fe: $88
	adc  b                                           ; $42ff: $88
	adc  b                                           ; $4300: $88
	adc  b                                           ; $4301: $88
	adc  b                                           ; $4302: $88
	adc  b                                           ; $4303: $88
	adc  b                                           ; $4304: $88
	adc  b                                           ; $4305: $88
	adc  b                                           ; $4306: $88
	adc  b                                           ; $4307: $88
	adc  b                                           ; $4308: $88
	adc  b                                           ; $4309: $88
	adc  b                                           ; $430a: $88
	adc  b                                           ; $430b: $88
	adc  b                                           ; $430c: $88
	adc  b                                           ; $430d: $88
	adc  b                                           ; $430e: $88
	adc  b                                           ; $430f: $88
	adc  b                                           ; $4310: $88
	adc  b                                           ; $4311: $88
	adc  b                                           ; $4312: $88
	adc  b                                           ; $4313: $88
	adc  b                                           ; $4314: $88
	adc  b                                           ; $4315: $88
	adc  b                                           ; $4316: $88
	adc  b                                           ; $4317: $88
	adc  b                                           ; $4318: $88
	adc  b                                           ; $4319: $88
	adc  b                                           ; $431a: $88
	adc  b                                           ; $431b: $88
	adc  b                                           ; $431c: $88
	adc  c                                           ; $431d: $89
	adc  b                                           ; $431e: $88
	adc  b                                           ; $431f: $88
	adc  b                                           ; $4320: $88
	adc  b                                           ; $4321: $88
	adc  b                                           ; $4322: $88
	adc  b                                           ; $4323: $88
	adc  b                                           ; $4324: $88
	adc  b                                           ; $4325: $88
	adc  b                                           ; $4326: $88
	adc  b                                           ; $4327: $88
	adc  b                                           ; $4328: $88
	adc  b                                           ; $4329: $88
	adc  b                                           ; $432a: $88
	adc  b                                           ; $432b: $88
	adc  b                                           ; $432c: $88
	adc  b                                           ; $432d: $88
	adc  b                                           ; $432e: $88
	adc  b                                           ; $432f: $88
	adc  b                                           ; $4330: $88
	adc  b                                           ; $4331: $88
	adc  b                                           ; $4332: $88
	adc  b                                           ; $4333: $88
	adc  b                                           ; $4334: $88
	adc  b                                           ; $4335: $88
	adc  b                                           ; $4336: $88
	adc  b                                           ; $4337: $88
	adc  b                                           ; $4338: $88
	adc  b                                           ; $4339: $88
	adc  b                                           ; $433a: $88
	adc  b                                           ; $433b: $88
	adc  b                                           ; $433c: $88
	adc  b                                           ; $433d: $88
	adc  b                                           ; $433e: $88
	adc  b                                           ; $433f: $88
	adc  b                                           ; $4340: $88
	adc  b                                           ; $4341: $88
	adc  b                                           ; $4342: $88
	adc  b                                           ; $4343: $88
	adc  b                                           ; $4344: $88
	adc  b                                           ; $4345: $88
	adc  b                                           ; $4346: $88
	adc  b                                           ; $4347: $88
	adc  b                                           ; $4348: $88
	adc  b                                           ; $4349: $88
	adc  b                                           ; $434a: $88
	adc  b                                           ; $434b: $88
	adc  b                                           ; $434c: $88
	adc  b                                           ; $434d: $88
	adc  b                                           ; $434e: $88
	adc  b                                           ; $434f: $88
	adc  b                                           ; $4350: $88
	adc  b                                           ; $4351: $88
	adc  b                                           ; $4352: $88
	adc  b                                           ; $4353: $88
	adc  b                                           ; $4354: $88
	adc  b                                           ; $4355: $88
	adc  b                                           ; $4356: $88
	adc  b                                           ; $4357: $88
	adc  b                                           ; $4358: $88
	adc  b                                           ; $4359: $88
	adc  b                                           ; $435a: $88
	adc  b                                           ; $435b: $88
	adc  b                                           ; $435c: $88
	adc  b                                           ; $435d: $88
	adc  b                                           ; $435e: $88
	adc  b                                           ; $435f: $88
	adc  b                                           ; $4360: $88
	adc  b                                           ; $4361: $88
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
	adc  b                                           ; $4372: $88
	adc  b                                           ; $4373: $88
	adc  b                                           ; $4374: $88
	adc  b                                           ; $4375: $88

Jump_0e6_4376:
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
	adc  b                                           ; $4385: $88
	adc  b                                           ; $4386: $88
	adc  b                                           ; $4387: $88
	adc  b                                           ; $4388: $88
	adc  b                                           ; $4389: $88
	adc  b                                           ; $438a: $88
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

Call_0e6_43b5:
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

Call_0e6_4496:
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

Call_0e6_44c7:
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
	sbc  b                                           ; $4569: $98
	adc  b                                           ; $456a: $88
	adc  b                                           ; $456b: $88
	adc  b                                           ; $456c: $88
	adc  b                                           ; $456d: $88
	adc  b                                           ; $456e: $88
	adc  b                                           ; $456f: $88
	sbc  b                                           ; $4570: $98
	sbc  b                                           ; $4571: $98
	adc  b                                           ; $4572: $88
	adc  b                                           ; $4573: $88

Jump_0e6_4574:
	adc  c                                           ; $4574: $89
	adc  b                                           ; $4575: $88
	adc  b                                           ; $4576: $88
	adc  b                                           ; $4577: $88
	adc  b                                           ; $4578: $88
	sbc  b                                           ; $4579: $98
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
	sbc  b                                           ; $4584: $98
	adc  c                                           ; $4585: $89
	ld   a, b                                        ; $4586: $78
	sbc  b                                           ; $4587: $98
	sbc  b                                           ; $4588: $98
	adc  b                                           ; $4589: $88
	sub  a                                           ; $458a: $97
	adc  c                                           ; $458b: $89
	adc  c                                           ; $458c: $89
	adc  b                                           ; $458d: $88
	adc  c                                           ; $458e: $89
	add  a                                           ; $458f: $87
	adc  b                                           ; $4590: $88
	adc  c                                           ; $4591: $89
	adc  b                                           ; $4592: $88
	adc  b                                           ; $4593: $88
	adc  b                                           ; $4594: $88
	adc  b                                           ; $4595: $88
	adc  c                                           ; $4596: $89
	adc  b                                           ; $4597: $88
	adc  c                                           ; $4598: $89
	adc  b                                           ; $4599: $88
	adc  b                                           ; $459a: $88
	adc  b                                           ; $459b: $88
	sbc  b                                           ; $459c: $98
	adc  c                                           ; $459d: $89
	adc  b                                           ; $459e: $88
	adc  c                                           ; $459f: $89
	ld   a, c                                        ; $45a0: $79
	adc  b                                           ; $45a1: $88
	add  a                                           ; $45a2: $87
	adc  c                                           ; $45a3: $89
	adc  b                                           ; $45a4: $88
	adc  c                                           ; $45a5: $89
	ld   a, b                                        ; $45a6: $78
	sub  a                                           ; $45a7: $97
	sbc  b                                           ; $45a8: $98
	adc  b                                           ; $45a9: $88
	sbc  b                                           ; $45aa: $98
	adc  c                                           ; $45ab: $89
	ld   a, b                                        ; $45ac: $78
	adc  b                                           ; $45ad: $88
	adc  b                                           ; $45ae: $88
	adc  b                                           ; $45af: $88
	add  a                                           ; $45b0: $87
	ld   a, b                                        ; $45b1: $78
	ld   a, c                                        ; $45b2: $79
	adc  b                                           ; $45b3: $88
	sbc  b                                           ; $45b4: $98
	adc  b                                           ; $45b5: $88
	adc  c                                           ; $45b6: $89
	sub  a                                           ; $45b7: $97
	sbc  c                                           ; $45b8: $99
	ld   l, b                                        ; $45b9: $68
	ld   a, b                                        ; $45ba: $78
	ld   l, b                                        ; $45bb: $68
	add  a                                           ; $45bc: $87
	xor  b                                           ; $45bd: $a8
	sbc  d                                           ; $45be: $9a
	xor  b                                           ; $45bf: $a8
	sub  a                                           ; $45c0: $97
	ld   a, d                                        ; $45c1: $7a
	halt                                             ; $45c2: $76
	and  l                                           ; $45c3: $a5
	ld   [hl], a                                     ; $45c4: $77
	ld   l, b                                        ; $45c5: $68
	ld   l, d                                        ; $45c6: $6a
	adc  d                                           ; $45c7: $8a
	xor  b                                           ; $45c8: $a8
	cp   b                                           ; $45c9: $b8
	sbc  b                                           ; $45ca: $98
	ld   l, b                                        ; $45cb: $68
	sub  e                                           ; $45cc: $93
	sub  a                                           ; $45cd: $97
	add  hl, sp                                      ; $45ce: $39
	ld   e, c                                        ; $45cf: $59
	ld   l, c                                        ; $45d0: $69
	xor  c                                           ; $45d1: $a9
	ret                                              ; $45d2: $c9


	res  1, c                                        ; $45d3: $cb $89
	ld   [hl], l                                     ; $45d5: $75
	sub  [hl]                                        ; $45d6: $96
	inc  e                                           ; $45d7: $1c
	inc  h                                           ; $45d8: $24
	sub  l                                           ; $45d9: $95
	sub  l                                           ; $45da: $95
	ret  z                                           ; $45db: $c8

	cp   l                                           ; $45dc: $bd
	ld   a, a                                        ; $45dd: $7f
	xor  b                                           ; $45de: $a8
	and  l                                           ; $45df: $a5
	dec  sp                                          ; $45e0: $3b
	ld   b, c                                        ; $45e1: $41
	pop  de                                          ; $45e2: $d1
	ld   l, c                                        ; $45e3: $69
	ld   e, h                                        ; $45e4: $5c
	ld   c, a                                        ; $45e5: $4f
	adc  l                                           ; $45e6: $8d
	or   $f9                                         ; $45e7: $f6 $f9
	adc  c                                           ; $45e9: $89
	inc  h                                           ; $45ea: $24
	sub  c                                           ; $45eb: $91
	ld   e, d                                        ; $45ec: $5a
	inc  e                                           ; $45ed: $1c
	ld   l, d                                        ; $45ee: $6a
	xor  d                                           ; $45ef: $aa
	or   $f9                                         ; $45f0: $f6 $f9
	sbc  a                                           ; $45f2: $9f
	ld   b, a                                        ; $45f3: $47
	ld   [hl-], a                                    ; $45f4: $32
	sub  c                                           ; $45f5: $91
	dec  sp                                          ; $45f6: $3b
	add  hl, de                                      ; $45f7: $19
	sbc  c                                           ; $45f8: $99
	xor  e                                           ; $45f9: $ab
	rst  $30                                         ; $45fa: $f7
	db   $fd                                         ; $45fb: $fd
	ld   e, a                                        ; $45fc: $5f
	ld   d, e                                        ; $45fd: $53
	inc  hl                                          ; $45fe: $23
	ld   [hl], c                                     ; $45ff: $71
	sbc  b                                           ; $4600: $98
	inc  e                                           ; $4601: $1c
	adc  [hl]                                        ; $4602: $8e
	adc  a                                           ; $4603: $8f
	or   $f9                                         ; $4604: $f6 $f9
	ld   a, l                                        ; $4606: $7d
	ld   b, c                                        ; $4607: $41
	ld   a, [de]                                     ; $4608: $1a
	ld   de, $5df1                                   ; $4609: $11 $f1 $5d
	cp   [hl]                                        ; $460c: $be
	ld   l, a                                        ; $460d: $6f
	sbc  h                                           ; $460e: $9c
	db   $f4                                         ; $460f: $f4
	or   [hl]                                        ; $4610: $b6
	ld   de, $1fb3                                   ; $4611: $11 $b3 $1f
	inc  [hl]                                        ; $4614: $34
	db   $db                                         ; $4615: $db
	db   $f4                                         ; $4616: $f4
	db   $fc                                         ; $4617: $fc
	ld   a, a                                        ; $4618: $7f
	dec  hl                                          ; $4619: $2b
	ld   b, c                                        ; $461a: $41
	dec  de                                          ; $461b: $1b
	ld   hl, $8ef1                                   ; $461c: $21 $f1 $8e
	cp   a                                           ; $461f: $bf
	cpl                                              ; $4620: $2f
	add  a                                           ; $4621: $87
	pop  af                                          ; $4622: $f1
	pop  bc                                          ; $4623: $c1
	ld   d, $b1                                      ; $4624: $16 $b1
	sbc  a                                           ; $4626: $9f
	rra                                              ; $4627: $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4628: $cf
	sbc  c                                           ; $4629: $99
	pop  af                                          ; $462a: $f1
	or   $1c                                         ; $462b: $f6 $1c
	ld   [de], a                                     ; $462d: $12
	pop  af                                          ; $462e: $f1
	cpl                                              ; $462f: $2f
	ld   a, [de]                                     ; $4630: $1a
	db   $fd                                         ; $4631: $fd
	push de                                          ; $4632: $d5
	ldh  a, [c]                                      ; $4633: $f2
	adc  [hl]                                        ; $4634: $8e
	inc  e                                           ; $4635: $1c
	ld   de, $5ff1                                   ; $4636: $11 $f1 $5f
	dec  sp                                          ; $4639: $3b
	rst  $38                                         ; $463a: $ff
	sub  [hl]                                        ; $463b: $96
	pop  af                                          ; $463c: $f1
	adc  e                                           ; $463d: $8b
	rla                                              ; $463e: $17
	inc  d                                           ; $463f: $14
	pop  af                                          ; $4640: $f1
	rst  $38                                         ; $4641: $ff
	ld   a, $ff                                      ; $4642: $3e $ff
	ld   l, $e1                                      ; $4644: $2e $e1
	jp   $1c12                                       ; $4646: $c3 $12 $1c


	inc  h                                           ; $4649: $24
	rst  $30                                         ; $464a: $f7
	cp   a                                           ; $464b: $bf
	ld   hl, sp+$3f                                  ; $464c: $f8 $3f
	dec  d                                           ; $464e: $15
	sub  c                                           ; $464f: $91
	ld   de, $1fb7                                   ; $4650: $11 $b7 $1f
	ret  c                                           ; $4653: $d8

	rst  JumpTable                                         ; $4654: $df
	pop  hl                                          ; $4655: $e1
	ld   [$2119], a                                  ; $4656: $ea $19 $21
	add  hl, de                                      ; $4659: $19
	or   c                                           ; $465a: $b1
	rst  $38                                         ; $465b: $ff
	ld   a, h                                        ; $465c: $7c
	rst  $28                                         ; $465d: $ef
	jr   c, @-$0c                                    ; $465e: $38 $f2

	ld   [hl], h                                     ; $4660: $74
	ld   de, $284d                                   ; $4661: $11 $4d $28
	ld   a, [$f79c]                                  ; $4664: $fa $9c $f7
	ld   c, [hl]                                     ; $4667: $4e
	ld   h, l                                        ; $4668: $65
	ld   h, d                                        ; $4669: $62
	ld   de, $3fc8                                   ; $466a: $11 $c8 $3f
	add  sp, -$42                                    ; $466d: $e8 $be
	jp   nc, Jump_0e6_57bb                           ; $466f: $d2 $bb $57

	inc  sp                                          ; $4672: $33
	ld   d, $e3                                      ; $4673: $16 $e3
	xor  a                                           ; $4675: $af
	sbc  b                                           ; $4676: $98
	cp   a                                           ; $4677: $bf
	ld   h, e                                        ; $4678: $63
	add  sp, $55                                     ; $4679: $e8 $55
	ld   b, c                                        ; $467b: $41
	inc  e                                           ; $467c: $1c
	or   c                                           ; $467d: $b1
	rst  $38                                         ; $467e: $ff
	ld   a, c                                        ; $467f: $79
	adc  $17                                         ; $4680: $ce $17
	sub  $64                                         ; $4682: $d6 $64
	ld   h, c                                        ; $4684: $61
	rra                                              ; $4685: $1f
	sub  c                                           ; $4686: $91
	rst  $38                                         ; $4687: $ff
	ld   l, c                                        ; $4688: $69
	db   $dd                                         ; $4689: $dd
	add  hl, de                                      ; $468a: $19
	and  $65                                         ; $468b: $e6 $65
	add  c                                           ; $468d: $81
	rra                                              ; $468e: $1f
	sub  c                                           ; $468f: $91
	rst  $38                                         ; $4690: $ff
	ld   h, a                                        ; $4691: $67
	xor  $18                                         ; $4692: $ee $18
	rst  $20                                         ; $4694: $e7
	ld   d, l                                        ; $4695: $55
	or   c                                           ; $4696: $b1
	rra                                              ; $4697: $1f
	pop  af                                          ; $4698: $f1
	rst  $38                                         ; $4699: $ff
	ld   b, [hl]                                     ; $469a: $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $469b: $cf
	inc  de                                          ; $469c: $13
	ld   sp, hl                                      ; $469d: $f9
	ld   [hl], e                                     ; $469e: $73
	cp   c                                           ; $469f: $b9
	inc  de                                          ; $46a0: $13
	pop  af                                          ; $46a1: $f1
	rra                                              ; $46a2: $1f
	pop  bc                                          ; $46a3: $c1
	adc  a                                           ; $46a4: $8f
	pop  af                                          ; $46a5: $f1
	sbc  a                                           ; $46a6: $9f
	ld   h, l                                        ; $46a7: $65
	ld   c, a                                        ; $46a8: $4f
	ld   de, $11bf                                   ; $46a9: $11 $bf $11
	db   $fc                                         ; $46ac: $fc
	add  hl, de                                      ; $46ad: $19
	rst  $38                                         ; $46ae: $ff
	inc  e                                           ; $46af: $1c
	push af                                          ; $46b0: $f5
	ld   d, l                                        ; $46b1: $55
	ldh  a, [c]                                      ; $46b2: $f2
	rla                                              ; $46b3: $17
	push af                                          ; $46b4: $f5
	rra                                              ; $46b5: $1f
	pop  af                                          ; $46b6: $f1
	xor  l                                           ; $46b7: $ad
	pop  af                                          ; $46b8: $f1
	ld   c, a                                        ; $46b9: $4f
	ld   [hl], a                                     ; $46ba: $77
	cpl                                              ; $46bb: $2f
	and  c                                           ; $46bc: $a1
	ld   e, $f1                                      ; $46bd: $1e $f1
	cp   a                                           ; $46bf: $bf
	dec  d                                           ; $46c0: $15
	cp   a                                           ; $46c1: $bf
	ld   d, c                                        ; $46c2: $51
	ei                                               ; $46c3: $fb
	ld   [hl], d                                     ; $46c4: $72
	cp   a                                           ; $46c5: $bf
	ld   de, $615f                                   ; $46c6: $11 $5f $61
	rst  $38                                         ; $46c9: $ff
	add  hl, de                                      ; $46ca: $19
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46cb: $cf
	inc  de                                          ; $46cc: $13
	ld   hl, sp+$62                                  ; $46cd: $f8 $62
	db   $fc                                         ; $46cf: $fc
	ld   de, $11af                                   ; $46d0: $11 $af $11
	ld   hl, sp+$19                                  ; $46d3: $f8 $19
	db   $fd                                         ; $46d5: $fd
	add  hl, de                                      ; $46d6: $19
	ld   hl, sp+$46                                  ; $46d7: $f8 $46
	rst  $30                                         ; $46d9: $f7
	ld   de, $17cf                                   ; $46da: $11 $cf $17
	db   $f4                                         ; $46dd: $f4
	dec  sp                                          ; $46de: $3b
	ld   sp, hl                                      ; $46df: $f9
	inc  e                                           ; $46e0: $1c
	rst  $20                                         ; $46e1: $e7
	add  hl, sp                                      ; $46e2: $39
	db   $f4                                         ; $46e3: $f4
	ld   de, $1abe                                   ; $46e4: $11 $be $1a
	di                                               ; $46e7: $f3
	ld   c, d                                        ; $46e8: $4a
	or   $1c                                         ; $46e9: $f6 $1c
	add  sp, $4b                                     ; $46eb: $e8 $4b
	di                                               ; $46ed: $f3
	ld   de, $1ddd                                   ; $46ee: $11 $dd $1d
	ldh  a, [c]                                      ; $46f1: $f2
	ld   c, e                                        ; $46f2: $4b
	db   $f4                                         ; $46f3: $f4
	ld   e, $f7                                      ; $46f4: $1e $f7
	ld   c, l                                        ; $46f6: $4d
	pop  af                                          ; $46f7: $f1
	ld   [de], a                                     ; $46f8: $12
	call z, $f21f                                    ; $46f9: $cc $1f $f2
	ld   l, e                                        ; $46fc: $6b
	db   $f4                                         ; $46fd: $f4
	rra                                              ; $46fe: $1f
	and  $4d                                         ; $46ff: $e6 $4d
	pop  af                                          ; $4701: $f1
	inc  de                                          ; $4702: $13
	call z, $f11e                                    ; $4703: $cc $1e $f1
	ld   l, h                                        ; $4706: $6c
	di                                               ; $4707: $f3
	ld   e, $d6                                      ; $4708: $1e $d6
	ld   e, h                                        ; $470a: $5c
	pop  af                                          ; $470b: $f1
	ld   [de], a                                     ; $470c: $12
	ld   a, [$f11f]                                  ; $470d: $fa $1f $f1
	ld   l, e                                        ; $4710: $6b
	pop  af                                          ; $4711: $f1
	rra                                              ; $4712: $1f
	sub  $3f                                         ; $4713: $d6 $3f
	pop  af                                          ; $4715: $f1
	inc  d                                           ; $4716: $14
	ld   sp, hl                                      ; $4717: $f9
	rra                                              ; $4718: $1f
	pop  af                                          ; $4719: $f1
	ld   l, h                                        ; $471a: $6c
	pop  af                                          ; $471b: $f1
	rra                                              ; $471c: $1f
	push bc                                          ; $471d: $c5
	ld   c, a                                        ; $471e: $4f
	pop  af                                          ; $471f: $f1
	dec  d                                           ; $4720: $15
	or   $1f                                         ; $4721: $f6 $1f
	pop  af                                          ; $4723: $f1
	ld   a, l                                        ; $4724: $7d
	pop  af                                          ; $4725: $f1
	rra                                              ; $4726: $1f
	push bc                                          ; $4727: $c5
	ld   c, a                                        ; $4728: $4f
	pop  af                                          ; $4729: $f1
	rla                                              ; $472a: $17
	di                                               ; $472b: $f3
	rra                                              ; $472c: $1f
	pop  af                                          ; $472d: $f1
	ld   a, [hl]                                     ; $472e: $7e
	pop  af                                          ; $472f: $f1
	rra                                              ; $4730: $1f
	or   l                                           ; $4731: $b5
	ld   e, a                                        ; $4732: $5f
	pop  bc                                          ; $4733: $c1
	add  hl, de                                      ; $4734: $19
	pop  af                                          ; $4735: $f1
	rra                                              ; $4736: $1f
	pop  bc                                          ; $4737: $c1
	ld   a, a                                        ; $4738: $7f
	pop  af                                          ; $4739: $f1
	ld   c, a                                        ; $473a: $4f
	and  h                                           ; $473b: $a4
	ld   a, a                                        ; $473c: $7f
	or   c                                           ; $473d: $b1
	dec  de                                          ; $473e: $1b
	pop  af                                          ; $473f: $f1
	ccf                                              ; $4740: $3f
	sub  d                                           ; $4741: $92
	adc  a                                           ; $4742: $8f
	pop  bc                                          ; $4743: $c1
	ld   a, a                                        ; $4744: $7f
	and  e                                           ; $4745: $a3
	sbc  a                                           ; $4746: $9f
	ld   h, c                                        ; $4747: $61
	rra                                              ; $4748: $1f
	pop  af                                          ; $4749: $f1
	cp   a                                           ; $474a: $bf
	ld   b, h                                        ; $474b: $44
	adc  a                                           ; $474c: $8f
	add  c                                           ; $474d: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $474e: $cf
	add  d                                           ; $474f: $82
	cp   a                                           ; $4750: $bf
	ld   hl, $c11f                                   ; $4751: $21 $1f $c1
	rst  $38                                         ; $4754: $ff
	dec  h                                           ; $4755: $25
	xor  a                                           ; $4756: $af
	ld   hl, $62ff                                   ; $4757: $21 $ff $62
	rst  $28                                         ; $475a: $ef
	ld   de, $316f                                   ; $475b: $11 $6f $31
	rst  $38                                         ; $475e: $ff
	ld   d, $cf                                      ; $475f: $16 $cf
	ld   de, $43fd                                   ; $4761: $11 $fd $43
	db   $fc                                         ; $4764: $fc
	ld   de, $14df                                   ; $4765: $11 $df $14
	ld   hl, sp+$36                                  ; $4768: $f8 $36
	db   $fc                                         ; $476a: $fc
	jr   @-$04                                       ; $476b: $18 $fa

	jr   @-$0a                                       ; $476d: $18 $f4

	ld   de, $1ffb                                   ; $476f: $11 $fb $1f
	ldh  a, [c]                                      ; $4772: $f2
	ld   e, c                                        ; $4773: $59
	pop  af                                          ; $4774: $f1
	rra                                              ; $4775: $1f
	and  $1f                                         ; $4776: $e6 $1f
	pop  af                                          ; $4778: $f1
	ld   a, [de]                                     ; $4779: $1a
	pop  af                                          ; $477a: $f1
	rra                                              ; $477b: $1f
	and  e                                           ; $477c: $a3
	ld   l, a                                        ; $477d: $6f
	pop  af                                          ; $477e: $f1
	ld   l, a                                        ; $477f: $6f
	and  d                                           ; $4780: $a2
	ld   l, a                                        ; $4781: $6f
	ld   h, c                                        ; $4782: $61
	rra                                              ; $4783: $1f
	pop  bc                                          ; $4784: $c1
	rst  $38                                         ; $4785: $ff
	dec  h                                           ; $4786: $25
	sbc  a                                           ; $4787: $9f

jr_0e6_4788:
	ld   hl, $61fd                                   ; $4788: $21 $fd $61
	xor  $11                                         ; $478b: $ee $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $478d: $cf
	inc  d                                           ; $478e: $14
	or   $47                                         ; $478f: $f6 $47
	ei                                               ; $4791: $fb
	ld   a, [de]                                     ; $4792: $1a
	jp   hl                                          ; $4793: $e9


	jr   z, jr_0e6_4788                              ; $4794: $28 $f2

	inc  d                                           ; $4796: $14
	di                                               ; $4797: $f3
	rra                                              ; $4798: $1f
	jp   nc, $f17d                                   ; $4799: $d2 $7d $f1

	ld   e, a                                        ; $479c: $5f
	sub  h                                           ; $479d: $94
	ld   c, a                                        ; $479e: $4f
	ld   h, c                                        ; $479f: $61
	rra                                              ; $47a0: $1f
	or   c                                           ; $47a1: $b1
	rst  $38                                         ; $47a2: $ff
	ld   h, $bf                                      ; $47a3: $26 $bf
	ld   [de], a                                     ; $47a5: $12
	ei                                               ; $47a6: $fb
	ld   d, d                                        ; $47a7: $52
	ld   a, [rAUD1LEN]                                  ; $47a8: $fa $11 $ff
	inc  e                                           ; $47ab: $1c
	ldh  a, [c]                                      ; $47ac: $f2
	ld   e, d                                        ; $47ad: $5a
	db   $f4                                         ; $47ae: $f4
	ld   e, $b6                                      ; $47af: $1e $b6
	dec  l                                           ; $47b1: $2d
	or   c                                           ; $47b2: $b1
	inc  e                                           ; $47b3: $1c
	pop  af                                          ; $47b4: $f1
	adc  a                                           ; $47b5: $8f
	ld   b, l                                        ; $47b6: $45
	sbc  a                                           ; $47b7: $9f
	ld   [hl], c                                     ; $47b8: $71
	call c, $bc82                                    ; $47b9: $dc $82 $bc
	ld   de, $159f                                   ; $47bc: $11 $9f $15
	push af                                          ; $47bf: $f5
	ld   e, b                                        ; $47c0: $58
	ld   sp, hl                                      ; $47c1: $f9
	inc  e                                           ; $47c2: $1c
	cp   d                                           ; $47c3: $ba
	ld   c, d                                        ; $47c4: $4a
	jp   nz, $f115                                   ; $47c5: $c2 $15 $f1

	rra                                              ; $47c8: $1f
	ld   [hl], h                                     ; $47c9: $74
	adc  h                                           ; $47ca: $8c
	and  c                                           ; $47cb: $a1
	cp   e                                           ; $47cc: $bb
	sub  [hl]                                        ; $47cd: $96
	adc  h                                           ; $47ce: $8c
	ld   b, c                                        ; $47cf: $41
	cpl                                              ; $47d0: $2f
	ld   h, c                                        ; $47d1: $61
	ei                                               ; $47d2: $fb
	add  hl, sp                                      ; $47d3: $39
	cp   h                                           ; $47d4: $bc
	add  hl, de                                      ; $47d5: $19
	ret  z                                           ; $47d6: $c8

	ld   [hl], a                                     ; $47d7: $77
	push de                                          ; $47d8: $d5
	ld   hl, $1fdb                                   ; $47d9: $21 $db $1f
	ldh  [c], a                                      ; $47dc: $e2
	sbc  e                                           ; $47dd: $9b
	jp   $886c                                       ; $47de: $c3 $6c $88


	ld   l, h                                        ; $47e1: $6c
	ld   [hl], e                                     ; $47e2: $73
	jr   @-$1d                                       ; $47e3: $18 $e1

	xor  a                                           ; $47e5: $af
	jr   c, @-$42                                    ; $47e6: $38 $bc

	ld   d, h                                        ; $47e8: $54
	ret  z                                           ; $47e9: $c8

	sub  [hl]                                        ; $47ea: $96
	cp   c                                           ; $47eb: $b9
	ld   b, e                                        ; $47ec: $43
	ld   e, a                                        ; $47ed: $5f
	inc  hl                                          ; $47ee: $23
	or   $6a                                         ; $47ef: $f6 $6a
	ret  z                                           ; $47f1: $c8

	dec  sp                                          ; $47f2: $3b
	sbc  c                                           ; $47f3: $99
	ld   l, c                                        ; $47f4: $69
	or   l                                           ; $47f5: $b5
	ld   b, e                                        ; $47f6: $43
	rst  $10                                         ; $47f7: $d7
	rra                                              ; $47f8: $1f
	or   h                                           ; $47f9: $b4
	sbc  e                                           ; $47fa: $9b
	jp   $879a                                       ; $47fb: $c3 $9a $87


	ld   a, e                                        ; $47fe: $7b
	ld   h, l                                        ; $47ff: $65
	add  hl, hl                                      ; $4800: $29
	or   c                                           ; $4801: $b1
	cp   l                                           ; $4802: $bd
	ld   c, b                                        ; $4803: $48
	xor  h                                           ; $4804: $ac
	ld   h, [hl]                                     ; $4805: $66
	xor  c                                           ; $4806: $a9
	sub  [hl]                                        ; $4807: $96
	xor  c                                           ; $4808: $a9
	ld   d, h                                        ; $4809: $54
	ld   l, l                                        ; $480a: $6d
	dec  [hl]                                        ; $480b: $35
	rst  $30                                         ; $480c: $f7
	ld   a, c                                        ; $480d: $79
	cp   c                                           ; $480e: $b9
	ld   e, c                                        ; $480f: $59
	xor  b                                           ; $4810: $a8
	ld   a, c                                        ; $4811: $79
	sub  [hl]                                        ; $4812: $96
	ld   d, l                                        ; $4813: $55
	cp   b                                           ; $4814: $b8
	dec  sp                                          ; $4815: $3b
	or   l                                           ; $4816: $b5
	adc  d                                           ; $4817: $8a
	or   [hl]                                        ; $4818: $b6
	ld   a, d                                        ; $4819: $7a
	sub  a                                           ; $481a: $97
	ld   a, d                                        ; $481b: $7a
	sub  a                                           ; $481c: $97
	ld   l, b                                        ; $481d: $68
	and  [hl]                                        ; $481e: $a6
	ld   l, e                                        ; $481f: $6b
	add  [hl]                                        ; $4820: $86
	adc  c                                           ; $4821: $89
	add  [hl]                                        ; $4822: $86
	sbc  d                                           ; $4823: $9a
	sub  a                                           ; $4824: $97
	adc  c                                           ; $4825: $89
	sub  a                                           ; $4826: $97
	ld   a, c                                        ; $4827: $79
	sub  [hl]                                        ; $4828: $96
	ld   a, d                                        ; $4829: $7a
	halt                                             ; $482a: $76
	sbc  b                                           ; $482b: $98
	add  a                                           ; $482c: $87
	sbc  c                                           ; $482d: $99
	adc  b                                           ; $482e: $88
	adc  c                                           ; $482f: $89
	adc  b                                           ; $4830: $88
	sbc  b                                           ; $4831: $98
	sub  a                                           ; $4832: $97
	adc  c                                           ; $4833: $89
	ld   h, a                                        ; $4834: $67
	add  a                                           ; $4835: $87
	add  a                                           ; $4836: $87
	adc  b                                           ; $4837: $88
	adc  b                                           ; $4838: $88
	adc  b                                           ; $4839: $88
	adc  c                                           ; $483a: $89
	adc  c                                           ; $483b: $89
	adc  b                                           ; $483c: $88
	ld   a, b                                        ; $483d: $78
	ld   [hl], a                                     ; $483e: $77
	ld   [hl], a                                     ; $483f: $77
	add  a                                           ; $4840: $87
	ld   a, c                                        ; $4841: $79
	adc  b                                           ; $4842: $88
	adc  b                                           ; $4843: $88
	adc  b                                           ; $4844: $88
	sbc  b                                           ; $4845: $98
	adc  b                                           ; $4846: $88
	ld   [hl], a                                     ; $4847: $77
	add  a                                           ; $4848: $87
	ld   [hl], a                                     ; $4849: $77
	ld   [hl], a                                     ; $484a: $77
	ld   a, b                                        ; $484b: $78
	adc  b                                           ; $484c: $88
	adc  c                                           ; $484d: $89
	adc  c                                           ; $484e: $89
	adc  c                                           ; $484f: $89
	sbc  b                                           ; $4850: $98
	ld   [hl], a                                     ; $4851: $77
	add  a                                           ; $4852: $87
	ld   [hl], a                                     ; $4853: $77
	ld   [hl], a                                     ; $4854: $77
	ld   a, b                                        ; $4855: $78
	adc  c                                           ; $4856: $89
	adc  c                                           ; $4857: $89
	sbc  c                                           ; $4858: $99
	adc  c                                           ; $4859: $89
	adc  b                                           ; $485a: $88
	add  a                                           ; $485b: $87
	add  a                                           ; $485c: $87
	ld   [hl], a                                     ; $485d: $77
	ld   [hl], a                                     ; $485e: $77
	ld   a, b                                        ; $485f: $78
	sbc  c                                           ; $4860: $99
	sbc  b                                           ; $4861: $98
	sbc  b                                           ; $4862: $98
	sbc  b                                           ; $4863: $98
	adc  c                                           ; $4864: $89
	add  a                                           ; $4865: $87
	add  a                                           ; $4866: $87
	ld   [hl], a                                     ; $4867: $77
	ld   [hl], a                                     ; $4868: $77
	ld   a, b                                        ; $4869: $78
	sbc  b                                           ; $486a: $98
	adc  b                                           ; $486b: $88
	adc  c                                           ; $486c: $89
	sbc  c                                           ; $486d: $99
	adc  c                                           ; $486e: $89
	ld   [hl], a                                     ; $486f: $77
	add  a                                           ; $4870: $87
	ld   [hl], a                                     ; $4871: $77
	ld   [hl], a                                     ; $4872: $77
	ld   a, b                                        ; $4873: $78
	sbc  c                                           ; $4874: $99
	sbc  b                                           ; $4875: $98
	sbc  c                                           ; $4876: $99
	adc  b                                           ; $4877: $88
	adc  b                                           ; $4878: $88
	ld   [hl], a                                     ; $4879: $77
	add  a                                           ; $487a: $87
	ld   [hl], a                                     ; $487b: $77
	ld   [hl], a                                     ; $487c: $77
	ld   a, b                                        ; $487d: $78
	sbc  c                                           ; $487e: $99
	adc  b                                           ; $487f: $88
	sbc  b                                           ; $4880: $98
	sbc  b                                           ; $4881: $98
	adc  b                                           ; $4882: $88
	ld   [hl], a                                     ; $4883: $77
	add  a                                           ; $4884: $87
	ld   [hl], a                                     ; $4885: $77
	ld   [hl], a                                     ; $4886: $77
	ld   a, b                                        ; $4887: $78
	adc  c                                           ; $4888: $89
	adc  c                                           ; $4889: $89
	adc  b                                           ; $488a: $88
	sbc  c                                           ; $488b: $99
	adc  b                                           ; $488c: $88
	add  a                                           ; $488d: $87
	add  a                                           ; $488e: $87
	ld   [hl], a                                     ; $488f: $77
	ld   [hl], a                                     ; $4890: $77
	ld   a, b                                        ; $4891: $78
	sbc  b                                           ; $4892: $98
	sbc  c                                           ; $4893: $99
	sbc  c                                           ; $4894: $99
	sbc  c                                           ; $4895: $99
	adc  b                                           ; $4896: $88
	ld   [hl], a                                     ; $4897: $77
	add  a                                           ; $4898: $87
	ld   [hl], a                                     ; $4899: $77
	ld   [hl], a                                     ; $489a: $77
	ld   a, c                                        ; $489b: $79
	adc  c                                           ; $489c: $89
	sbc  b                                           ; $489d: $98
	adc  c                                           ; $489e: $89
	sbc  b                                           ; $489f: $98
	adc  c                                           ; $48a0: $89
	ld   [hl], a                                     ; $48a1: $77
	ld   [hl], a                                     ; $48a2: $77
	ld   [hl], a                                     ; $48a3: $77
	ld   [hl], a                                     ; $48a4: $77
	adc  b                                           ; $48a5: $88
	adc  c                                           ; $48a6: $89
	sbc  c                                           ; $48a7: $99
	adc  c                                           ; $48a8: $89
	adc  b                                           ; $48a9: $88
	sbc  b                                           ; $48aa: $98
	ld   [hl], a                                     ; $48ab: $77
	ld   [hl], a                                     ; $48ac: $77
	ld   [hl], a                                     ; $48ad: $77
	ld   [hl], a                                     ; $48ae: $77
	adc  b                                           ; $48af: $88
	sbc  c                                           ; $48b0: $99
	adc  b                                           ; $48b1: $88
	sbc  c                                           ; $48b2: $99
	sbc  c                                           ; $48b3: $99
	sbc  b                                           ; $48b4: $98
	ld   [hl], a                                     ; $48b5: $77
	ld   [hl], a                                     ; $48b6: $77
	ld   [hl], a                                     ; $48b7: $77
	ld   [hl], a                                     ; $48b8: $77
	adc  b                                           ; $48b9: $88
	adc  c                                           ; $48ba: $89
	adc  b                                           ; $48bb: $88
	sbc  c                                           ; $48bc: $99
	sbc  c                                           ; $48bd: $99
	add  a                                           ; $48be: $87
	ld   [hl], a                                     ; $48bf: $77
	ld   [hl], a                                     ; $48c0: $77
	ld   [hl], a                                     ; $48c1: $77
	ld   [hl], a                                     ; $48c2: $77
	adc  c                                           ; $48c3: $89
	adc  c                                           ; $48c4: $89
	adc  c                                           ; $48c5: $89
	sbc  b                                           ; $48c6: $98
	sbc  c                                           ; $48c7: $99
	add  a                                           ; $48c8: $87
	ld   a, b                                        ; $48c9: $78
	ld   [hl], a                                     ; $48ca: $77
	ld   [hl], a                                     ; $48cb: $77
	ld   [hl], a                                     ; $48cc: $77
	adc  b                                           ; $48cd: $88
	adc  c                                           ; $48ce: $89
	sbc  c                                           ; $48cf: $99
	sbc  b                                           ; $48d0: $98
	sbc  c                                           ; $48d1: $99
	add  a                                           ; $48d2: $87
	ld   a, b                                        ; $48d3: $78
	ld   [hl], a                                     ; $48d4: $77
	ld   [hl], a                                     ; $48d5: $77
	ld   [hl], a                                     ; $48d6: $77
	sbc  b                                           ; $48d7: $98
	adc  c                                           ; $48d8: $89
	sbc  c                                           ; $48d9: $99
	sbc  c                                           ; $48da: $99
	sbc  c                                           ; $48db: $99
	ld   [hl], a                                     ; $48dc: $77
	ld   [hl], a                                     ; $48dd: $77
	ld   [hl], a                                     ; $48de: $77
	ld   [hl], a                                     ; $48df: $77
	ld   a, b                                        ; $48e0: $78
	sbc  b                                           ; $48e1: $98
	sbc  c                                           ; $48e2: $99
	sbc  c                                           ; $48e3: $99
	sbc  c                                           ; $48e4: $99
	sbc  b                                           ; $48e5: $98
	ld   [hl], a                                     ; $48e6: $77
	ld   [hl], a                                     ; $48e7: $77
	ld   [hl], a                                     ; $48e8: $77
	ld   [hl], a                                     ; $48e9: $77
	ld   a, b                                        ; $48ea: $78
	sbc  b                                           ; $48eb: $98
	sbc  c                                           ; $48ec: $99
	sbc  c                                           ; $48ed: $99
	adc  c                                           ; $48ee: $89
	sbc  b                                           ; $48ef: $98
	ld   [hl], a                                     ; $48f0: $77
	ld   [hl], a                                     ; $48f1: $77
	ld   [hl], a                                     ; $48f2: $77
	ld   [hl], a                                     ; $48f3: $77
	adc  b                                           ; $48f4: $88
	adc  c                                           ; $48f5: $89
	sbc  c                                           ; $48f6: $99
	sbc  c                                           ; $48f7: $99
	sbc  c                                           ; $48f8: $99
	adc  b                                           ; $48f9: $88
	ld   [hl], a                                     ; $48fa: $77
	ld   [hl], a                                     ; $48fb: $77
	ld   [hl], a                                     ; $48fc: $77
	ld   [hl], a                                     ; $48fd: $77
	adc  c                                           ; $48fe: $89
	adc  c                                           ; $48ff: $89
	sbc  c                                           ; $4900: $99
	sbc  c                                           ; $4901: $99
	sbc  c                                           ; $4902: $99
	adc  b                                           ; $4903: $88
	ld   [hl], a                                     ; $4904: $77
	ld   [hl], a                                     ; $4905: $77
	ld   [hl], a                                     ; $4906: $77
	ld   [hl], a                                     ; $4907: $77
	adc  c                                           ; $4908: $89
	sbc  c                                           ; $4909: $99
	sbc  c                                           ; $490a: $99
	sbc  b                                           ; $490b: $98
	sbc  c                                           ; $490c: $99
	add  a                                           ; $490d: $87
	ld   [hl], a                                     ; $490e: $77
	ld   [hl], a                                     ; $490f: $77
	ld   [hl], a                                     ; $4910: $77
	ld   a, b                                        ; $4911: $78
	adc  b                                           ; $4912: $88
	sbc  c                                           ; $4913: $99
	sbc  c                                           ; $4914: $99
	sbc  b                                           ; $4915: $98
	sbc  b                                           ; $4916: $98
	add  a                                           ; $4917: $87
	ld   [hl], a                                     ; $4918: $77
	ld   [hl], a                                     ; $4919: $77
	ld   [hl], a                                     ; $491a: $77
	ld   a, b                                        ; $491b: $78
	sbc  b                                           ; $491c: $98
	sbc  c                                           ; $491d: $99
	sbc  c                                           ; $491e: $99
	sbc  c                                           ; $491f: $99
	sbc  b                                           ; $4920: $98
	add  a                                           ; $4921: $87
	ld   [hl], a                                     ; $4922: $77
	ld   [hl], a                                     ; $4923: $77
	ld   [hl], a                                     ; $4924: $77
	adc  b                                           ; $4925: $88
	sbc  b                                           ; $4926: $98
	sbc  c                                           ; $4927: $99
	sbc  c                                           ; $4928: $99
	adc  c                                           ; $4929: $89
	sbc  b                                           ; $492a: $98
	ld   [hl], a                                     ; $492b: $77
	ld   [hl], a                                     ; $492c: $77
	ld   [hl], a                                     ; $492d: $77
	ld   [hl], a                                     ; $492e: $77
	adc  b                                           ; $492f: $88
	adc  c                                           ; $4930: $89
	sbc  c                                           ; $4931: $99
	sbc  c                                           ; $4932: $99
	adc  c                                           ; $4933: $89
	sbc  b                                           ; $4934: $98
	ld   [hl], a                                     ; $4935: $77
	ld   [hl], a                                     ; $4936: $77
	ld   [hl], a                                     ; $4937: $77
	ld   [hl], a                                     ; $4938: $77
	adc  b                                           ; $4939: $88
	adc  b                                           ; $493a: $88
	sbc  c                                           ; $493b: $99
	sbc  c                                           ; $493c: $99
	sbc  c                                           ; $493d: $99
	adc  b                                           ; $493e: $88
	ld   [hl], a                                     ; $493f: $77
	ld   [hl], a                                     ; $4940: $77
	ld   [hl], a                                     ; $4941: $77
	ld   [hl], a                                     ; $4942: $77
	adc  c                                           ; $4943: $89
	adc  c                                           ; $4944: $89
	sbc  c                                           ; $4945: $99
	sbc  b                                           ; $4946: $98
	adc  c                                           ; $4947: $89
	adc  b                                           ; $4948: $88
	ld   [hl], a                                     ; $4949: $77
	ld   [hl], a                                     ; $494a: $77
	ld   [hl], a                                     ; $494b: $77
	ld   a, b                                        ; $494c: $78
	adc  c                                           ; $494d: $89
	adc  c                                           ; $494e: $89
	sbc  c                                           ; $494f: $99
	sbc  b                                           ; $4950: $98
	adc  b                                           ; $4951: $88
	add  a                                           ; $4952: $87
	ld   [hl], a                                     ; $4953: $77
	ld   [hl], a                                     ; $4954: $77
	ld   [hl], a                                     ; $4955: $77
	ld   a, b                                        ; $4956: $78
	adc  c                                           ; $4957: $89
	adc  c                                           ; $4958: $89
	sbc  c                                           ; $4959: $99
	sbc  b                                           ; $495a: $98
	sbc  b                                           ; $495b: $98
	add  a                                           ; $495c: $87
	ld   [hl], a                                     ; $495d: $77
	ld   [hl], a                                     ; $495e: $77
	ld   [hl], a                                     ; $495f: $77
	ld   a, b                                        ; $4960: $78
	adc  c                                           ; $4961: $89
	adc  c                                           ; $4962: $89
	adc  c                                           ; $4963: $89
	sbc  b                                           ; $4964: $98
	sbc  b                                           ; $4965: $98
	add  a                                           ; $4966: $87
	ld   [hl], a                                     ; $4967: $77
	ld   [hl], a                                     ; $4968: $77
	ld   [hl], a                                     ; $4969: $77
	ld   a, b                                        ; $496a: $78
	adc  c                                           ; $496b: $89
	adc  c                                           ; $496c: $89
	adc  c                                           ; $496d: $89
	sbc  c                                           ; $496e: $99
	sbc  b                                           ; $496f: $98
	add  a                                           ; $4970: $87
	ld   [hl], a                                     ; $4971: $77
	ld   [hl], a                                     ; $4972: $77
	ld   [hl], a                                     ; $4973: $77
	ld   a, b                                        ; $4974: $78
	adc  c                                           ; $4975: $89
	adc  c                                           ; $4976: $89
	adc  c                                           ; $4977: $89
	sbc  c                                           ; $4978: $99
	sbc  b                                           ; $4979: $98
	add  a                                           ; $497a: $87
	ld   [hl], a                                     ; $497b: $77
	ld   [hl], a                                     ; $497c: $77
	ld   [hl], a                                     ; $497d: $77
	ld   a, b                                        ; $497e: $78
	adc  c                                           ; $497f: $89
	adc  c                                           ; $4980: $89
	adc  c                                           ; $4981: $89
	sbc  c                                           ; $4982: $99
	sbc  b                                           ; $4983: $98
	add  a                                           ; $4984: $87
	ld   [hl], a                                     ; $4985: $77
	ld   [hl], a                                     ; $4986: $77
	add  a                                           ; $4987: $87
	ld   a, b                                        ; $4988: $78
	adc  c                                           ; $4989: $89
	adc  c                                           ; $498a: $89
	adc  c                                           ; $498b: $89
	sbc  c                                           ; $498c: $99
	sbc  b                                           ; $498d: $98
	add  a                                           ; $498e: $87
	ld   a, b                                        ; $498f: $78
	ld   h, a                                        ; $4990: $67
	add  a                                           ; $4991: $87
	ld   a, b                                        ; $4992: $78
	adc  c                                           ; $4993: $89
	sbc  c                                           ; $4994: $99
	sbc  c                                           ; $4995: $99
	sbc  b                                           ; $4996: $98
	add  a                                           ; $4997: $87
	add  a                                           ; $4998: $87
	ld   a, b                                        ; $4999: $78
	ld   h, a                                        ; $499a: $67
	add  a                                           ; $499b: $87
	adc  b                                           ; $499c: $88
	adc  b                                           ; $499d: $88
	sbc  b                                           ; $499e: $98
	sbc  c                                           ; $499f: $99
	adc  b                                           ; $49a0: $88
	ld   [hl], a                                     ; $49a1: $77
	add  [hl]                                        ; $49a2: $86
	ld   a, b                                        ; $49a3: $78
	ld   l, b                                        ; $49a4: $68
	add  a                                           ; $49a5: $87
	sbc  c                                           ; $49a6: $99
	sbc  b                                           ; $49a7: $98
	xor  c                                           ; $49a8: $a9
	sbc  c                                           ; $49a9: $99
	adc  b                                           ; $49aa: $88
	ld   [hl], a                                     ; $49ab: $77
	halt                                             ; $49ac: $76
	adc  b                                           ; $49ad: $88
	ld   l, b                                        ; $49ae: $68
	adc  b                                           ; $49af: $88
	sbc  b                                           ; $49b0: $98
	sbc  b                                           ; $49b1: $98
	xor  b                                           ; $49b2: $a8
	sbc  c                                           ; $49b3: $99
	ld   a, b                                        ; $49b4: $78
	ld   l, b                                        ; $49b5: $68
	halt                                             ; $49b6: $76
	add  a                                           ; $49b7: $87
	ld   l, c                                        ; $49b8: $69
	ld   a, c                                        ; $49b9: $79
	sbc  c                                           ; $49ba: $99
	sbc  c                                           ; $49bb: $99
	and  a                                           ; $49bc: $a7
	sbc  b                                           ; $49bd: $98
	ld   [hl], a                                     ; $49be: $77
	ld   l, b                                        ; $49bf: $68
	ld   h, [hl]                                     ; $49c0: $66
	sub  [hl]                                        ; $49c1: $96
	ld   a, c                                        ; $49c2: $79
	ld   a, c                                        ; $49c3: $79
	adc  d                                           ; $49c4: $8a
	adc  d                                           ; $49c5: $8a
	sub  a                                           ; $49c6: $97
	and  a                                           ; $49c7: $a7
	add  [hl]                                        ; $49c8: $86
	ld   a, b                                        ; $49c9: $78
	ld   d, a                                        ; $49ca: $57
	sub  [hl]                                        ; $49cb: $96
	sbc  b                                           ; $49cc: $98
	adc  b                                           ; $49cd: $88
	adc  c                                           ; $49ce: $89
	adc  d                                           ; $49cf: $8a
	ld   a, b                                        ; $49d0: $78
	sub  a                                           ; $49d1: $97
	add  [hl]                                        ; $49d2: $86
	add  a                                           ; $49d3: $87
	ld   e, b                                        ; $49d4: $58
	halt                                             ; $49d5: $76
	and  a                                           ; $49d6: $a7
	sbc  c                                           ; $49d7: $99
	xor  c                                           ; $49d8: $a9
	adc  e                                           ; $49d9: $8b
	ld   a, d                                        ; $49da: $7a
	add  a                                           ; $49db: $87
	halt                                             ; $49dc: $76
	sub  [hl]                                        ; $49dd: $96
	ld   l, c                                        ; $49de: $69
	ld   l, b                                        ; $49df: $68
	sbc  b                                           ; $49e0: $98
	sbc  c                                           ; $49e1: $99
	and  a                                           ; $49e2: $a7
	xor  b                                           ; $49e3: $a8
	ld   a, d                                        ; $49e4: $7a
	ld   l, c                                        ; $49e5: $69
	ld   h, a                                        ; $49e6: $67
	add  l                                           ; $49e7: $85
	adc  b                                           ; $49e8: $88
	ld   l, c                                        ; $49e9: $69
	adc  b                                           ; $49ea: $88
	adc  c                                           ; $49eb: $89
	sub  a                                           ; $49ec: $97
	or   a                                           ; $49ed: $b7
	xor  b                                           ; $49ee: $a8
	ld   a, c                                        ; $49ef: $79
	ld   e, b                                        ; $49f0: $58
	ld   h, l                                        ; $49f1: $65
	sub  a                                           ; $49f2: $97
	ld   a, d                                        ; $49f3: $7a
	adc  c                                           ; $49f4: $89
	adc  d                                           ; $49f5: $8a
	adc  d                                           ; $49f6: $8a
	and  [hl]                                        ; $49f7: $a6
	and  a                                           ; $49f8: $a7
	add  a                                           ; $49f9: $87
	ld   l, c                                        ; $49fa: $69
	ld   d, a                                        ; $49fb: $57
	sub  [hl]                                        ; $49fc: $96
	sbc  b                                           ; $49fd: $98
	sbc  c                                           ; $49fe: $99
	adc  d                                           ; $49ff: $8a
	ld   a, e                                        ; $4a00: $7b
	ld   a, c                                        ; $4a01: $79
	and  [hl]                                        ; $4a02: $a6
	sub  l                                           ; $4a03: $95
	add  a                                           ; $4a04: $87
	ld   e, c                                        ; $4a05: $59
	ld   [hl], a                                     ; $4a06: $77
	xor  b                                           ; $4a07: $a8
	sbc  c                                           ; $4a08: $99
	sbc  c                                           ; $4a09: $99
	sbc  e                                           ; $4a0a: $9b
	ld   l, e                                        ; $4a0b: $6b
	ld   [hl], a                                     ; $4a0c: $77
	ld   [hl], l                                     ; $4a0d: $75
	sub  l                                           ; $4a0e: $95
	ld   l, c                                        ; $4a0f: $69
	ld   l, b                                        ; $4a10: $68
	sbc  b                                           ; $4a11: $98
	sbc  c                                           ; $4a12: $99
	and  a                                           ; $4a13: $a7
	cp   b                                           ; $4a14: $b8
	ld   a, d                                        ; $4a15: $7a
	ld   l, b                                        ; $4a16: $68
	ld   d, a                                        ; $4a17: $57
	sub  h                                           ; $4a18: $94
	adc  b                                           ; $4a19: $88
	ld   l, d                                        ; $4a1a: $6a
	adc  c                                           ; $4a1b: $89
	adc  d                                           ; $4a1c: $8a
	sub  a                                           ; $4a1d: $97
	add  $98                                         ; $4a1e: $c6 $98
	ld   l, c                                        ; $4a20: $69
	ld   c, c                                        ; $4a21: $49
	ld   h, [hl]                                     ; $4a22: $66
	and  [hl]                                        ; $4a23: $a6
	adc  d                                           ; $4a24: $8a
	adc  d                                           ; $4a25: $8a
	adc  e                                           ; $4a26: $8b
	ld   a, c                                        ; $4a27: $79
	and  [hl]                                        ; $4a28: $a6
	or   [hl]                                        ; $4a29: $b6
	sub  [hl]                                        ; $4a2a: $96
	ld   l, c                                        ; $4a2b: $69
	ld   e, b                                        ; $4a2c: $58
	add  [hl]                                        ; $4a2d: $86
	sbc  b                                           ; $4a2e: $98
	adc  c                                           ; $4a2f: $89
	adc  d                                           ; $4a30: $8a
	ld   a, h                                        ; $4a31: $7c
	ld   a, b                                        ; $4a32: $78
	and  l                                           ; $4a33: $a5
	sub  h                                           ; $4a34: $94
	add  a                                           ; $4a35: $87
	ld   e, c                                        ; $4a36: $59
	ld   [hl], a                                     ; $4a37: $77
	xor  b                                           ; $4a38: $a8
	sbc  c                                           ; $4a39: $99
	xor  c                                           ; $4a3a: $a9
	adc  e                                           ; $4a3b: $8b
	ld   e, d                                        ; $4a3c: $5a
	ld   [hl], a                                     ; $4a3d: $77
	ld   [hl], l                                     ; $4a3e: $75
	and  l                                           ; $4a3f: $a5
	ld   a, c                                        ; $4a40: $79
	ld   l, c                                        ; $4a41: $69
	sbc  c                                           ; $4a42: $99
	sbc  c                                           ; $4a43: $99
	or   a                                           ; $4a44: $b7
	xor  b                                           ; $4a45: $a8
	ld   a, e                                        ; $4a46: $7b
	ld   e, c                                        ; $4a47: $59
	ld   d, a                                        ; $4a48: $57
	sub  l                                           ; $4a49: $95
	sbc  b                                           ; $4a4a: $98
	ld   l, c                                        ; $4a4b: $69
	sbc  c                                           ; $4a4c: $99
	adc  c                                           ; $4a4d: $89
	and  a                                           ; $4a4e: $a7
	or   [hl]                                        ; $4a4f: $b6
	sbc  c                                           ; $4a50: $99
	ld   l, b                                        ; $4a51: $68
	ld   c, c                                        ; $4a52: $49
	ld   h, [hl]                                     ; $4a53: $66
	sub  a                                           ; $4a54: $97
	ld   a, d                                        ; $4a55: $7a
	adc  d                                           ; $4a56: $8a
	adc  d                                           ; $4a57: $8a
	ld   a, c                                        ; $4a58: $79
	or   l                                           ; $4a59: $b5
	or   [hl]                                        ; $4a5a: $b6
	add  a                                           ; $4a5b: $87
	ld   e, c                                        ; $4a5c: $59
	ld   d, a                                        ; $4a5d: $57
	add  [hl]                                        ; $4a5e: $86
	adc  c                                           ; $4a5f: $89
	sbc  c                                           ; $4a60: $99
	adc  d                                           ; $4a61: $8a
	ld   a, e                                        ; $4a62: $7b
	add  a                                           ; $4a63: $87
	or   l                                           ; $4a64: $b5
	sub  l                                           ; $4a65: $95
	ld   a, b                                        ; $4a66: $78
	ld   e, c                                        ; $4a67: $59
	ld   [hl], a                                     ; $4a68: $77
	xor  b                                           ; $4a69: $a8
	sbc  c                                           ; $4a6a: $99
	sbc  b                                           ; $4a6b: $98
	adc  e                                           ; $4a6c: $8b
	ld   e, e                                        ; $4a6d: $5b
	ld   [hl], a                                     ; $4a6e: $77
	add  h                                           ; $4a6f: $84
	and  l                                           ; $4a70: $a5
	ld   l, d                                        ; $4a71: $6a
	ld   l, c                                        ; $4a72: $69
	sbc  c                                           ; $4a73: $99
	xor  c                                           ; $4a74: $a9
	or   a                                           ; $4a75: $b7
	xor  c                                           ; $4a76: $a9
	ld   l, e                                        ; $4a77: $6b
	ld   e, c                                        ; $4a78: $59
	ld   d, a                                        ; $4a79: $57
	sub  h                                           ; $4a7a: $94
	sub  a                                           ; $4a7b: $97
	ld   a, c                                        ; $4a7c: $79
	adc  c                                           ; $4a7d: $89
	adc  c                                           ; $4a7e: $89
	sbc  b                                           ; $4a7f: $98
	or   l                                           ; $4a80: $b5
	xor  b                                           ; $4a81: $a8
	ld   l, b                                        ; $4a82: $68
	ld   c, c                                        ; $4a83: $49
	ld   d, [hl]                                     ; $4a84: $56
	and  l                                           ; $4a85: $a5
	sbc  c                                           ; $4a86: $99
	sbc  d                                           ; $4a87: $9a
	adc  d                                           ; $4a88: $8a
	ld   a, e                                        ; $4a89: $7b
	add  a                                           ; $4a8a: $87
	and  l                                           ; $4a8b: $a5
	sub  l                                           ; $4a8c: $95
	ld   a, b                                        ; $4a8d: $78
	ld   c, d                                        ; $4a8e: $4a
	ld   [hl], a                                     ; $4a8f: $77
	xor  b                                           ; $4a90: $a8
	sbc  b                                           ; $4a91: $98
	xor  b                                           ; $4a92: $a8
	adc  d                                           ; $4a93: $8a
	ld   e, e                                        ; $4a94: $5b
	ld   [hl], a                                     ; $4a95: $77
	ld   [hl], l                                     ; $4a96: $75
	and  h                                           ; $4a97: $a4
	adc  c                                           ; $4a98: $89

Call_0e6_4a99:
	ld   e, d                                        ; $4a99: $5a
	adc  c                                           ; $4a9a: $89
	sbc  c                                           ; $4a9b: $99
	sub  a                                           ; $4a9c: $97
	or   [hl]                                        ; $4a9d: $b6
	adc  d                                           ; $4a9e: $8a
	ld   e, c                                        ; $4a9f: $59
	ld   c, c                                        ; $4aa0: $49
	ld   h, l                                        ; $4aa1: $65
	or   l                                           ; $4aa2: $b5
	sbc  d                                           ; $4aa3: $9a
	adc  d                                           ; $4aa4: $8a
	adc  e                                           ; $4aa5: $8b
	ld   a, d                                        ; $4aa6: $7a
	add  [hl]                                        ; $4aa7: $86
	or   l                                           ; $4aa8: $b5
	add  l                                           ; $4aa9: $85
	ld   a, c                                        ; $4aaa: $79
	dec  sp                                          ; $4aab: $3b
	ld   [hl], a                                     ; $4aac: $77
	and  a                                           ; $4aad: $a7
	xor  b                                           ; $4aae: $a8
	xor  b                                           ; $4aaf: $a8
	sbc  d                                           ; $4ab0: $9a
	ld   e, e                                        ; $4ab1: $5b
	ld   h, a                                        ; $4ab2: $67
	ld   [hl], l                                     ; $4ab3: $75
	and  e                                           ; $4ab4: $a3
	sbc  c                                           ; $4ab5: $99
	ld   e, h                                        ; $4ab6: $5c
	ld   a, d                                        ; $4ab7: $7a
	sbc  c                                           ; $4ab8: $99
	sub  a                                           ; $4ab9: $97
	push bc                                          ; $4aba: $c5
	xor  b                                           ; $4abb: $a8
	ld   l, b                                        ; $4abc: $68
	ld   c, d                                        ; $4abd: $4a
	ld   b, a                                        ; $4abe: $47
	and  h                                           ; $4abf: $a4
	cp   b                                           ; $4ac0: $b8
	adc  d                                           ; $4ac1: $8a
	sbc  c                                           ; $4ac2: $99
	ld   a, h                                        ; $4ac3: $7c
	ld   l, c                                        ; $4ac4: $69
	and  l                                           ; $4ac5: $a5
	add  h                                           ; $4ac6: $84
	sub  [hl]                                        ; $4ac7: $96
	ld   e, h                                        ; $4ac8: $5c
	ld   c, d                                        ; $4ac9: $4a
	xor  b                                           ; $4aca: $a8
	cp   b                                           ; $4acb: $b8
	and  a                                           ; $4acc: $a7
	or   a                                           ; $4acd: $b7
	ld   a, e                                        ; $4ace: $7b
	ld   e, c                                        ; $4acf: $59
	ld   c, c                                        ; $4ad0: $49
	ld   [hl], h                                     ; $4ad1: $74
	push bc                                          ; $4ad2: $c5
	sbc  e                                           ; $4ad3: $9b
	ld   a, e                                        ; $4ad4: $7b
	sbc  d                                           ; $4ad5: $9a
	ld   a, d                                        ; $4ad6: $7a
	add  a                                           ; $4ad7: $87
	or   l                                           ; $4ad8: $b5
	add  l                                           ; $4ad9: $85
	ld   a, b                                        ; $4ada: $78
	inc  a                                           ; $4adb: $3c
	ld   e, b                                        ; $4adc: $58
	or   a                                           ; $4add: $b7
	xor  c                                           ; $4ade: $a9
	sub  a                                           ; $4adf: $97
	xor  c                                           ; $4ae0: $a9
	ld   l, e                                        ; $4ae1: $6b
	ld   d, a                                        ; $4ae2: $57
	ld   d, a                                        ; $4ae3: $57
	add  e                                           ; $4ae4: $83
	add  $7c                                         ; $4ae5: $c6 $7c
	ld   l, d                                        ; $4ae7: $6a
	sbc  d                                           ; $4ae8: $9a
	ld   a, d                                        ; $4ae9: $7a
	sub  [hl]                                        ; $4aea: $96
	or   l                                           ; $4aeb: $b5
	halt                                             ; $4aec: $76
	ld   l, c                                        ; $4aed: $69
	inc  a                                           ; $4aee: $3c
	ld   h, a                                        ; $4aef: $67
	add  $b9                                         ; $4af0: $c6 $b9
	sbc  b                                           ; $4af2: $98
	sbc  c                                           ; $4af3: $99
	ld   l, e                                        ; $4af4: $6b
	ld   d, a                                        ; $4af5: $57
	ld   h, [hl]                                     ; $4af6: $66
	sub  e                                           ; $4af7: $93
	or   a                                           ; $4af8: $b7
	ld   a, l                                        ; $4af9: $7d
	ld   l, e                                        ; $4afa: $6b
	sbc  c                                           ; $4afb: $99
	adc  c                                           ; $4afc: $89
	sub  [hl]                                        ; $4afd: $96
	or   l                                           ; $4afe: $b5
	halt                                             ; $4aff: $76
	ld   l, c                                        ; $4b00: $69
	inc  a                                           ; $4b01: $3c
	ld   h, a                                        ; $4b02: $67
	add  $ba                                         ; $4b03: $c6 $ba
	sbc  b                                           ; $4b05: $98
	xor  c                                           ; $4b06: $a9
	ld   l, e                                        ; $4b07: $6b
	ld   d, a                                        ; $4b08: $57
	ld   h, [hl]                                     ; $4b09: $66
	sub  e                                           ; $4b0a: $93
	add  $7d                                         ; $4b0b: $c6 $7d
	ld   l, e                                        ; $4b0d: $6b
	xor  b                                           ; $4b0e: $a8
	adc  d                                           ; $4b0f: $8a
	sub  l                                           ; $4b10: $95
	or   l                                           ; $4b11: $b5
	halt                                             ; $4b12: $76
	ld   l, c                                        ; $4b13: $69
	dec  sp                                          ; $4b14: $3b
	halt                                             ; $4b15: $76
	sub  $a9                                         ; $4b16: $d6 $a9
	adc  b                                           ; $4b18: $88
	xor  c                                           ; $4b19: $a9
	ld   e, e                                        ; $4b1a: $5b
	ld   h, [hl]                                     ; $4b1b: $66
	ld   h, [hl]                                     ; $4b1c: $66
	sub  e                                           ; $4b1d: $93
	cp   b                                           ; $4b1e: $b8
	ld   e, [hl]                                     ; $4b1f: $5e
	ld   l, c                                        ; $4b20: $69
	xor  c                                           ; $4b21: $a9
	adc  d                                           ; $4b22: $8a
	sub  l                                           ; $4b23: $95
	or   [hl]                                        ; $4b24: $b6
	ld   h, [hl]                                     ; $4b25: $66
	ld   l, c                                        ; $4b26: $69
	inc  a                                           ; $4b27: $3c
	sub  l                                           ; $4b28: $95
	rst  $20                                         ; $4b29: $e7
	xor  d                                           ; $4b2a: $aa
	sbc  b                                           ; $4b2b: $98
	sbc  d                                           ; $4b2c: $9a
	ld   e, e                                        ; $4b2d: $5b
	ld   h, [hl]                                     ; $4b2e: $66
	ld   h, l                                        ; $4b2f: $65
	and  e                                           ; $4b30: $a3
	cp   d                                           ; $4b31: $ba
	ld   c, l                                        ; $4b32: $4d
	adc  b                                           ; $4b33: $88
	cp   c                                           ; $4b34: $b9
	adc  c                                           ; $4b35: $89
	and  l                                           ; $4b36: $a5
	or   a                                           ; $4b37: $b7
	ld   d, a                                        ; $4b38: $57
	ld   e, d                                        ; $4b39: $5a
	ld   c, c                                        ; $4b3a: $49
	or   h                                           ; $4b3b: $b4
	reti                                             ; $4b3c: $d9


	adc  d                                           ; $4b3d: $8a
	adc  b                                           ; $4b3e: $88
	sbc  e                                           ; $4b3f: $9b
	ld   e, c                                        ; $4b40: $59
	sub  l                                           ; $4b41: $95
	ld   [hl], l                                     ; $4b42: $75
	and  h                                           ; $4b43: $a4
	adc  h                                           ; $4b44: $8c
	ld   c, h                                        ; $4b45: $4c
	and  a                                           ; $4b46: $a7
	cp   c                                           ; $4b47: $b9
	ld   a, b                                        ; $4b48: $78
	or   l                                           ; $4b49: $b5
	sbc  d                                           ; $4b4a: $9a
	ld   b, a                                        ; $4b4b: $47
	ld   e, c                                        ; $4b4c: $59
	ld   d, [hl]                                     ; $4b4d: $56
	push bc                                          ; $4b4e: $c5
	xor  h                                           ; $4b4f: $ac
	ld   a, e                                        ; $4b50: $7b
	sbc  b                                           ; $4b51: $98
	ld   a, d                                        ; $4b52: $7a
	ld   h, a                                        ; $4b53: $67
	or   l                                           ; $4b54: $b5
	ld   [hl], l                                     ; $4b55: $75
	sub  a                                           ; $4b56: $97
	ld   c, l                                        ; $4b57: $4d
	ld   h, a                                        ; $4b58: $67
	rst  $10                                         ; $4b59: $d7
	xor  d                                           ; $4b5a: $aa
	add  a                                           ; $4b5b: $87
	cp   b                                           ; $4b5c: $b8
	ld   e, e                                        ; $4b5d: $5b
	ld   h, [hl]                                     ; $4b5e: $66
	ld   h, a                                        ; $4b5f: $67
	sub  h                                           ; $4b60: $94
	cp   c                                           ; $4b61: $b9
	ld   e, l                                        ; $4b62: $5d
	sbc  b                                           ; $4b63: $98
	cp   b                                           ; $4b64: $b8
	ld   a, c                                        ; $4b65: $79
	sub  h                                           ; $4b66: $94
	cp   b                                           ; $4b67: $b8
	ld   d, [hl]                                     ; $4b68: $56
	ld   l, c                                        ; $4b69: $69
	ld   c, b                                        ; $4b6a: $48
	push bc                                          ; $4b6b: $c5
	xor  e                                           ; $4b6c: $ab
	ld   a, d                                        ; $4b6d: $7a
	sub  a                                           ; $4b6e: $97
	ld   a, e                                        ; $4b6f: $7b
	ld   h, a                                        ; $4b70: $67
	and  l                                           ; $4b71: $a5
	ld   h, [hl]                                     ; $4b72: $66
	sub  [hl]                                        ; $4b73: $96
	ld   e, h                                        ; $4b74: $5c
	ld   h, a                                        ; $4b75: $67
	rst  $10                                         ; $4b76: $d7
	sbc  d                                           ; $4b77: $9a
	add  [hl]                                        ; $4b78: $86
	xor  b                                           ; $4b79: $a8
	ld   e, e                                        ; $4b7a: $5b
	ld   h, l                                        ; $4b7b: $65
	ld   h, a                                        ; $4b7c: $67
	sub  h                                           ; $4b7d: $94
	cp   d                                           ; $4b7e: $ba
	ld   c, l                                        ; $4b7f: $4d
	sub  a                                           ; $4b80: $97
	cp   c                                           ; $4b81: $b9
	ld   l, c                                        ; $4b82: $69
	or   h                                           ; $4b83: $b4
	xor  c                                           ; $4b84: $a9
	ld   b, [hl]                                     ; $4b85: $46
	ld   l, c                                        ; $4b86: $69
	ld   c, b                                        ; $4b87: $48
	call nc, Call_0e6_6aad                           ; $4b88: $d4 $ad $6a
	sub  a                                           ; $4b8b: $97
	ld   a, h                                        ; $4b8c: $7c
	ld   h, [hl]                                     ; $4b8d: $66
	push bc                                          ; $4b8e: $c5
	ld   d, [hl]                                     ; $4b8f: $56
	sub  [hl]                                        ; $4b90: $96
	ld   c, l                                        ; $4b91: $4d
	add  [hl]                                        ; $4b92: $86
	rst  $20                                         ; $4b93: $e7
	adc  d                                           ; $4b94: $8a
	add  [hl]                                        ; $4b95: $86
	xor  d                                           ; $4b96: $aa
	ld   c, e                                        ; $4b97: $4b
	add  h                                           ; $4b98: $84
	ld   d, a                                        ; $4b99: $57
	sub  e                                           ; $4b9a: $93
	xor  h                                           ; $4b9b: $ac
	dec  a                                           ; $4b9c: $3d
	or   [hl]                                        ; $4b9d: $b6
	xor  d                                           ; $4b9e: $aa
	ld   h, a                                        ; $4b9f: $67
	or   l                                           ; $4ba0: $b5
	adc  e                                           ; $4ba1: $8b
	ld   b, h                                        ; $4ba2: $44
	ld   l, c                                        ; $4ba3: $69
	ld   d, [hl]                                     ; $4ba4: $56
	and  $7e                                         ; $4ba5: $e6 $7e
	ld   a, b                                        ; $4ba7: $78
	xor  b                                           ; $4ba8: $a8
	ld   e, e                                        ; $4ba9: $5b
	add  h                                           ; $4baa: $84
	rst  ToBoot                                         ; $4bab: $c7
	ld   [hl], $87                                   ; $4bac: $36 $87
	ld   c, e                                        ; $4bae: $4b
	or   h                                           ; $4baf: $b4
	db   $db                                         ; $4bb0: $db
	ld   l, c                                        ; $4bb1: $69
	sub  [hl]                                        ; $4bb2: $96
	ld   a, e                                        ; $4bb3: $7b
	ld   c, c                                        ; $4bb4: $49
	or   h                                           ; $4bb5: $b4
	ld   b, a                                        ; $4bb6: $47
	sub  l                                           ; $4bb7: $95
	ld   a, [hl]                                     ; $4bb8: $7e
	ld   h, a                                        ; $4bb9: $67
	rst  $20                                         ; $4bba: $e7
	ld   a, d                                        ; $4bbb: $7a
	sub  l                                           ; $4bbc: $95
	cp   c                                           ; $4bbd: $b9
	ld   c, e                                        ; $4bbe: $4b
	add  e                                           ; $4bbf: $83
	ld   e, b                                        ; $4bc0: $58
	ld   [hl], h                                     ; $4bc1: $74
	call z, $c63c                                    ; $4bc2: $cc $3c $c6
	sbc  d                                           ; $4bc5: $9a
	ld   h, [hl]                                     ; $4bc6: $66
	push bc                                          ; $4bc7: $c5
	ld   a, e                                        ; $4bc8: $7b
	ld   d, e                                        ; $4bc9: $53
	ld   a, c                                        ; $4bca: $79
	ld   d, [hl]                                     ; $4bcb: $56
	rst  $20                                         ; $4bcc: $e7
	ld   l, [hl]                                     ; $4bcd: $6e
	add  [hl]                                        ; $4bce: $86
	xor  c                                           ; $4bcf: $a9
	ld   c, d                                        ; $4bd0: $4a
	and  h                                           ; $4bd1: $a4
	cp   d                                           ; $4bd2: $ba
	inc  h                                           ; $4bd3: $24
	sbc  b                                           ; $4bd4: $98
	dec  sp                                          ; $4bd5: $3b
	db   $d3                                         ; $4bd6: $d3
	cp   h                                           ; $4bd7: $bc
	ld   l, b                                        ; $4bd8: $68
	or   a                                           ; $4bd9: $b7
	ld   e, h                                        ; $4bda: $5c
	ld   h, [hl]                                     ; $4bdb: $66
	add  $26                                         ; $4bdc: $c6 $26
	sub  [hl]                                        ; $4bde: $96
	ld   e, l                                        ; $4bdf: $5d
	sub  h                                           ; $4be0: $94
	jp   c, $a569                                    ; $4be1: $da $69 $a5

	ld   a, l                                        ; $4be4: $7d
	ld   c, b                                        ; $4be5: $48
	jp   $9438                                       ; $4be6: $c3 $38 $94


	ld   a, [hl]                                     ; $4be9: $7e
	ld   h, a                                        ; $4bea: $67
	rst  $20                                         ; $4beb: $e7
	ld   l, d                                        ; $4bec: $6a
	sub  e                                           ; $4bed: $93
	cp   e                                           ; $4bee: $bb
	ld   c, e                                        ; $4bef: $4b
	and  d                                           ; $4bf0: $a2
	ld   c, c                                        ; $4bf1: $49
	add  h                                           ; $4bf2: $84
	sbc  [hl]                                        ; $4bf3: $9e
	ld   c, c                                        ; $4bf4: $49
	and  $6b                                         ; $4bf5: $e6 $6b

jr_0e6_4bf7:
	add  e                                           ; $4bf7: $83
	ret  z                                           ; $4bf8: $c8

	ld   e, l                                        ; $4bf9: $5d
	add  c                                           ; $4bfa: $81
	ld   e, c                                        ; $4bfb: $59
	ld   [hl], h                                     ; $4bfc: $74
	call z, $c63c                                    ; $4bfd: $cc $3c $c6
	ld   l, d                                        ; $4c00: $6a
	ld   [hl], h                                     ; $4c01: $74
	rst  $10                                         ; $4c02: $d7
	ld   l, l                                        ; $4c03: $6d
	ld   h, c                                        ; $4c04: $61
	ld   l, c                                        ; $4c05: $69
	ld   h, h                                        ; $4c06: $64
	db   $eb                                         ; $4c07: $eb
	ld   a, $b5                                      ; $4c08: $3e $b5
	ld   a, e                                        ; $4c0a: $7b
	ld   d, [hl]                                     ; $4c0b: $56
	push de                                          ; $4c0c: $d5
	ld   a, l                                        ; $4c0d: $7d
	ld   d, d                                        ; $4c0e: $52
	ld   a, c                                        ; $4c0f: $79
	ld   h, l                                        ; $4c10: $65
	ld   [$b65d], a                                  ; $4c11: $ea $5d $b6
	ld   l, e                                        ; $4c14: $6b
	ld   h, [hl]                                     ; $4c15: $66
	sub  $7c                                         ; $4c16: $d6 $7c
	ld   b, c                                        ; $4c18: $41
	ld   a, e                                        ; $4c19: $7b
	ld   b, a                                        ; $4c1a: $47
	or   $6e                                         ; $4c1b: $f6 $6e
	add  h                                           ; $4c1d: $84
	sbc  d                                           ; $4c1e: $9a
	dec  sp                                          ; $4c1f: $3b
	push bc                                          ; $4c20: $c5
	xor  d                                           ; $4c21: $aa
	inc  hl                                          ; $4c22: $23
	adc  c                                           ; $4c23: $89
	ld   c, c                                        ; $4c24: $49
	or   $8e                                         ; $4c25: $f6 $8e
	add  e                                           ; $4c27: $83
	adc  d                                           ; $4c28: $8a
	ld   a, [hl-]                                    ; $4c29: $3a
	or   [hl]                                        ; $4c2a: $b6
	xor  c                                           ; $4c2b: $a9
	ld   [de], a                                     ; $4c2c: $12
	xor  c                                           ; $4c2d: $a9
	dec  l                                           ; $4c2e: $2d
	di                                               ; $4c2f: $f3
	cp   l                                           ; $4c30: $bd
	ld   h, e                                        ; $4c31: $63
	xor  b                                           ; $4c32: $a8
	ld   c, h                                        ; $4c33: $4c
	sub  [hl]                                        ; $4c34: $96
	or   [hl]                                        ; $4c35: $b6
	inc  d                                           ; $4c36: $14
	xor  b                                           ; $4c37: $a8
	ccf                                              ; $4c38: $3f
	db   $e3                                         ; $4c39: $e3
	call $b753                                       ; $4c3a: $cd $53 $b7
	ld   l, l                                        ; $4c3d: $6d
	add  a                                           ; $4c3e: $87
	and  h                                           ; $4c3f: $a4
	dec  d                                           ; $4c40: $15
	call nc, $856f                                   ; $4c41: $d4 $6f $85
	jp   c, $c526                                    ; $4c44: $da $26 $c5

	xor  h                                           ; $4c47: $ac
	ld   a, d                                        ; $4c48: $7a
	add  c                                           ; $4c49: $81
	add  hl, de                                      ; $4c4a: $19
	and  e                                           ; $4c4b: $a3
	rst  JumpTable                                         ; $4c4c: $df
	ld   e, b                                        ; $4c4d: $58
	rst  $10                                         ; $4c4e: $d7
	jr   z, jr_0e6_4bf7                              ; $4c4f: $28 $a6

	res  1, c                                        ; $4c51: $cb $89
	ld   d, c                                        ; $4c53: $51
	inc  a                                           ; $4c54: $3c
	add  l                                           ; $4c55: $85
	db   $fd                                         ; $4c56: $fd
	ld   c, d                                        ; $4c57: $4a
	or   h                                           ; $4c58: $b4
	dec  sp                                          ; $4c59: $3b
	adc  c                                           ; $4c5a: $89
	jp   c, $2197                                    ; $4c5b: $da $97 $21

	ld   a, l                                        ; $4c5e: $7d
	ld   e, d                                        ; $4c5f: $5a
	ld   hl, sp+$5b                                  ; $4c60: $f8 $5b
	sub  c                                           ; $4c62: $91
	ld   l, h                                        ; $4c63: $6c
	ld   a, e                                        ; $4c64: $7b
	ret                                              ; $4c65: $c9


	ld   [hl], l                                     ; $4c66: $75
	ld   de, $6fbb                                   ; $4c67: $11 $bb $6f
	db   $f4                                         ; $4c6a: $f4
	adc  d                                           ; $4c6b: $8a
	ld   b, c                                        ; $4c6c: $41
	xor  d                                           ; $4c6d: $aa
	sbc  l                                           ; $4c6e: $9d
	sbc  b                                           ; $4c6f: $98
	ld   h, c                                        ; $4c70: $61
	ld   d, $d8                                      ; $4c71: $16 $d8
	cp   a                                           ; $4c73: $bf
	and  e                                           ; $4c74: $a3
	sbc  b                                           ; $4c75: $98
	inc  h                                           ; $4c76: $24
	ei                                               ; $4c77: $fb
	sbc  l                                           ; $4c78: $9d
	add  l                                           ; $4c79: $85
	ld   sp, $c71c                                   ; $4c7a: $31 $1c $c7
	rst  $38                                         ; $4c7d: $ff
	dec  [hl]                                        ; $4c7e: $35
	sub  h                                           ; $4c7f: $94
	dec  l                                           ; $4c80: $2d
	jp   c, Jump_0e6_55d9                            ; $4c81: $da $d9 $55

	ld   de, $9b8f                                   ; $4c84: $11 $8f $9b
	rst  $30                                         ; $4c87: $f7
	ld   d, $72                                      ; $4c88: $16 $72
	ld   a, a                                        ; $4c8a: $7f
	call z, Call_0e6_43b5                            ; $4c8b: $cc $b5 $43
	ld   de, $8fef                                   ; $4c8e: $11 $ef $8f
	pop  af                                          ; $4c91: $f1
	rla                                              ; $4c92: $17
	ld   [hl], e                                     ; $4c93: $73
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c94: $cf
	cp   e                                           ; $4c95: $bb
	add  e                                           ; $4c96: $83
	ld   b, c                                        ; $4c97: $41
	dec  d                                           ; $4c98: $15
	rst  $38                                         ; $4c99: $ff
	ld   l, a                                        ; $4c9a: $6f
	or   c                                           ; $4c9b: $b1
	add  hl, hl                                      ; $4c9c: $29
	ld   [hl], l                                     ; $4c9d: $75
	rst  $38                                         ; $4c9e: $ff
	cp   c                                           ; $4c9f: $b9
	inc  sp                                          ; $4ca0: $33
	ld   d, c                                        ; $4ca1: $51
	dec  de                                          ; $4ca2: $1b
	db   $fc                                         ; $4ca3: $fc
	ld   e, a                                        ; $4ca4: $5f
	ld   b, c                                        ; $4ca5: $41
	ld   c, h                                        ; $4ca6: $4c
	add  a                                           ; $4ca7: $87
	rst  $38                                         ; $4ca8: $ff
	ld   [hl], l                                     ; $4ca9: $75
	inc  h                                           ; $4caa: $24
	ld   h, c                                        ; $4cab: $61
	rra                                              ; $4cac: $1f
	rst  $30                                         ; $4cad: $f7
	ld   e, a                                        ; $4cae: $5f
	ld   de, $977f                                   ; $4caf: $11 $7f $97
	db   $fc                                         ; $4cb2: $fc
	ld   d, h                                        ; $4cb3: $54
	rla                                              ; $4cb4: $17
	ld   h, c                                        ; $4cb5: $61
	rra                                              ; $4cb6: $1f
	pop  af                                          ; $4cb7: $f1
	ld   a, a                                        ; $4cb8: $7f
	ld   de, $789f                                   ; $4cb9: $11 $9f $78
	ld   sp, hl                                      ; $4cbc: $f9
	inc  sp                                          ; $4cbd: $33
	dec  sp                                          ; $4cbe: $3b
	ld   d, c                                        ; $4cbf: $51
	ld   c, a                                        ; $4cc0: $4f
	pop  af                                          ; $4cc1: $f1
	sbc  $11                                         ; $4cc2: $de $11
	rst  JumpTable                                         ; $4cc4: $df
	ld   c, d                                        ; $4cc5: $4a
	or   $32                                         ; $4cc6: $f6 $32
	ld   e, h                                        ; $4cc8: $5c
	ld   sp, $d18f                                   ; $4cc9: $31 $8f $d1
	ld   hl, sp+$13                                  ; $4ccc: $f8 $13
	rst  $38                                         ; $4cce: $ff
	dec  l                                           ; $4ccf: $2d
	db   $e4                                         ; $4cd0: $e4
	ld   [hl-], a                                    ; $4cd1: $32
	sbc  h                                           ; $4cd2: $9c
	ld   de, $41ef                                   ; $4cd3: $11 $ef $41
	ldh  a, [c]                                      ; $4cd6: $f2
	ld   d, $fd                                      ; $4cd7: $16 $fd
	cpl                                              ; $4cd9: $2f
	or   h                                           ; $4cda: $b4
	inc  hl                                          ; $4cdb: $23
	ret                                              ; $4cdc: $c9


	ld   de, $15ff                                   ; $4cdd: $11 $ff $15
	pop  af                                          ; $4ce0: $f1
	add  hl, de                                      ; $4ce1: $19
	ld   sp, hl                                      ; $4ce2: $f9
	ld   c, a                                        ; $4ce3: $4f
	add  h                                           ; $4ce4: $84
	ld   h, $f6                                      ; $4ce5: $26 $f6
	inc  de                                          ; $4ce7: $13
	rst  $38                                         ; $4ce8: $ff
	inc  e                                           ; $4ce9: $1c
	pop  de                                          ; $4cea: $d1
	ld   e, $f4                                      ; $4ceb: $1e $f4
	ld   a, l                                        ; $4ced: $7d
	ld   h, h                                        ; $4cee: $64
	add  hl, hl                                      ; $4cef: $29
	pop  hl                                          ; $4cf0: $e1
	dec  de                                          ; $4cf1: $1b
	ld   hl, sp+$1f                                  ; $4cf2: $f8 $1f
	ld   h, c                                        ; $4cf4: $61
	ld   c, a                                        ; $4cf5: $4f
	ldh  a, [c]                                      ; $4cf6: $f2
	xor  d                                           ; $4cf7: $aa
	ld   h, e                                        ; $4cf8: $63
	ld   a, $c1                                      ; $4cf9: $3e $c1
	rra                                              ; $4cfb: $1f
	pop  af                                          ; $4cfc: $f1
	ld   e, a                                        ; $4cfd: $5f
	ld   de, $a48f                                   ; $4cfe: $11 $8f $a4
	or   a                                           ; $4d01: $b7
	ld   h, d                                        ; $4d02: $62
	ld   a, a                                        ; $4d03: $7f
	ld   d, c                                        ; $4d04: $51
	ld   e, a                                        ; $4d05: $5f
	pop  hl                                          ; $4d06: $e1
	ret                                              ; $4d07: $c9


	ld   [de], a                                     ; $4d08: $12
	rst  $38                                         ; $4d09: $ff
	ld   b, a                                        ; $4d0a: $47
	sub  a                                           ; $4d0b: $97
	ld   h, d                                        ; $4d0c: $62
	call rAUD1LEN                                       ; $4d0d: $cd $11 $ff
	ld   de, $17e4                                   ; $4d10: $11 $e4 $17
	db   $fd                                         ; $4d13: $fd
	ld   c, c                                        ; $4d14: $49
	ld   l, b                                        ; $4d15: $68
	dec  [hl]                                        ; $4d16: $35
	rst  $30                                         ; $4d17: $f7
	ld   [de], a                                     ; $4d18: $12
	rst  $38                                         ; $4d19: $ff
	add  hl, de                                      ; $4d1a: $19
	and  c                                           ; $4d1b: $a1
	cpl                                              ; $4d1c: $2f
	push af                                          ; $4d1d: $f5
	halt                                             ; $4d1e: $76
	ld   a, b                                        ; $4d1f: $78
	dec  hl                                          ; $4d20: $2b
	pop  de                                          ; $4d21: $d1
	rra                                              ; $4d22: $1f
	pop  af                                          ; $4d23: $f1
	dec  e                                           ; $4d24: $1d
	ld   b, c                                        ; $4d25: $41
	adc  a                                           ; $4d26: $8f
	or   h                                           ; $4d27: $b4
	ld   [hl], l                                     ; $4d28: $75
	sub  h                                           ; $4d29: $94
	ld   l, a                                        ; $4d2a: $6f
	ld   h, c                                        ; $4d2b: $61
	ccf                                              ; $4d2c: $3f
	pop  af                                          ; $4d2d: $f1
	sbc  b                                           ; $4d2e: $98
	inc  hl                                          ; $4d2f: $23
	rst  $38                                         ; $4d30: $ff
	ld   b, a                                        ; $4d31: $47
	ld   d, a                                        ; $4d32: $57
	add  e                                           ; $4d33: $83
	cp   h                                           ; $4d34: $bc
	ld   de, $12ff                                   ; $4d35: $11 $ff $12
	or   l                                           ; $4d38: $b5
	ld   a, [hl+]                                    ; $4d39: $2a
	ld   a, [$5946]                                  ; $4d3a: $fa $46 $59
	ld   d, a                                        ; $4d3d: $57
	push hl                                          ; $4d3e: $e5
	ld   d, $fc                                      ; $4d3f: $16 $fc
	add  hl, de                                      ; $4d41: $19
	ld   [hl], e                                     ; $4d42: $73
	ld   c, a                                        ; $4d43: $4f
	di                                               ; $4d44: $f3
	ld   h, h                                        ; $4d45: $64
	adc  b                                           ; $4d46: $88
	ld   e, h                                        ; $4d47: $5c
	and  c                                           ; $4d48: $a1
	rra                                              ; $4d49: $1f
	pop  af                                          ; $4d4a: $f1
	add  hl, sp                                      ; $4d4b: $39
	ld   b, e                                        ; $4d4c: $43
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d4d: $cf
	ld   [hl], h                                     ; $4d4e: $74
	ld   d, l                                        ; $4d4f: $55
	or   l                                           ; $4d50: $b5
	adc  h                                           ; $4d51: $8c
	ld   de, $61df                                   ; $4d52: $11 $df $61
	add  [hl]                                        ; $4d55: $86
	scf                                              ; $4d56: $37
	cp   $35                                         ; $4d57: $fe $35
	ld   c, d                                        ; $4d59: $4a
	halt                                             ; $4d5a: $76
	or   l                                           ; $4d5b: $b5
	inc  d                                           ; $4d5c: $14
	rst  $38                                         ; $4d5d: $ff
	dec  d                                           ; $4d5e: $15
	ld   [hl], h                                     ; $4d5f: $74
	ld   c, a                                        ; $4d60: $4f
	db   $f4                                         ; $4d61: $f4
	ld   d, e                                        ; $4d62: $53
	adc  d                                           ; $4d63: $8a
	ld   e, e                                        ; $4d64: $5b
	add  c                                           ; $4d65: $81
	rra                                              ; $4d66: $1f
	pop  af                                          ; $4d67: $f1
	rla                                              ; $4d68: $17
	ld   h, h                                        ; $4d69: $64
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d6a: $cf
	add  e                                           ; $4d6b: $83
	ld   b, [hl]                                     ; $4d6c: $46
	and  [hl]                                        ; $4d6d: $a6
	adc  d                                           ; $4d6e: $8a
	ld   de, $51ff                                   ; $4d6f: $11 $ff $51
	ld   h, a                                        ; $4d72: $67
	ld   e, c                                        ; $4d73: $59
	ei                                               ; $4d74: $fb
	inc  [hl]                                        ; $4d75: $34
	ld   e, e                                        ; $4d76: $5b
	ld   [hl], a                                     ; $4d77: $77
	and  c                                           ; $4d78: $a1
	dec  e                                           ; $4d79: $1d
	ld   hl, sp+$15                                  ; $4d7a: $f8 $15
	halt                                             ; $4d7c: $76
	ld   a, a                                        ; $4d7d: $7f
	ldh  [c], a                                      ; $4d7e: $e2
	ld   b, h                                        ; $4d7f: $44
	xor  b                                           ; $4d80: $a8
	ld   a, d                                        ; $4d81: $7a
	ld   hl, $e19f                                   ; $4d82: $21 $9f $e1
	ld   [hl], $76                                   ; $4d85: $36 $76
	rst  $38                                         ; $4d87: $ff
	inc  sp                                          ; $4d88: $33
	ld   c, d                                        ; $4d89: $4a
	sub  a                                           ; $4d8a: $97
	and  e                                           ; $4d8b: $a3
	ld   d, $ff                                      ; $4d8c: $16 $ff
	ld   [de], a                                     ; $4d8e: $12
	ld   d, a                                        ; $4d8f: $57
	ld   l, a                                        ; $4d90: $6f
	di                                               ; $4d91: $f3
	inc  sp                                          ; $4d92: $33
	sbc  e                                           ; $4d93: $9b
	ld   a, d                                        ; $4d94: $7a
	ld   sp, $f16f                                   ; $4d95: $31 $6f $f1
	dec  h                                           ; $4d98: $25
	ld   [hl], a                                     ; $4d99: $77
	rst  $38                                         ; $4d9a: $ff
	ld   [hl-], a                                    ; $4d9b: $32
	add  hl, sp                                      ; $4d9c: $39
	or   a                                           ; $4d9d: $b7
	sub  e                                           ; $4d9e: $93
	ld   d, $ff                                      ; $4d9f: $16 $ff
	ld   de, $7f57                                   ; $4da1: $11 $57 $7f
	di                                               ; $4da4: $f3
	inc  h                                           ; $4da5: $24
	xor  e                                           ; $4da6: $ab
	ld   a, b                                        ; $4da7: $78
	ld   sp, $f18f                                   ; $4da8: $31 $8f $f1
	dec  d                                           ; $4dab: $15
	adc  b                                           ; $4dac: $88
	rst  $38                                         ; $4dad: $ff
	ld   sp, $a74a                                   ; $4dae: $31 $4a $a7
	sub  c                                           ; $4db1: $91
	dec  de                                          ; $4db2: $1b
	cp   $11                                         ; $4db3: $fe $11
	ld   e, c                                        ; $4db5: $59
	adc  a                                           ; $4db6: $8f
	ldh  a, [c]                                      ; $4db7: $f2
	inc  d                                           ; $4db8: $14
	xor  d                                           ; $4db9: $aa
	ld   [hl], a                                     ; $4dba: $77
	ld   de, $91ff                                   ; $4dbb: $11 $ff $91
	ld   h, $8a                                      ; $4dbe: $26 $8a
	db   $fc                                         ; $4dc0: $fc
	ld   hl, $985c                                   ; $4dc1: $21 $5c $98
	ld   [hl], c                                     ; $4dc4: $71
	rra                                              ; $4dc5: $1f
	or   $12                                         ; $4dc6: $f6 $12
	ld   l, c                                        ; $4dc8: $69
	rst  JumpTable                                         ; $4dc9: $df
	and  d                                           ; $4dca: $a2
	rla                                              ; $4dcb: $17
	ret                                              ; $4dcc: $c9


	sub  l                                           ; $4dcd: $95
	ld   [de], a                                     ; $4dce: $12
	rst  $38                                         ; $4dcf: $ff
	ld   hl, $8f47                                   ; $4dd0: $21 $47 $8f
	rst  $30                                         ; $4dd3: $f7
	ld   [de], a                                     ; $4dd4: $12
	xor  e                                           ; $4dd5: $ab
	ld   a, c                                        ; $4dd6: $79
	ld   hl, $f19f                                   ; $4dd7: $21 $9f $f1
	ld   d, $8a                                      ; $4dda: $16 $8a
	cp   $41                                         ; $4ddc: $fe $41
	ld   c, h                                        ; $4dde: $4c
	xor  c                                           ; $4ddf: $a9
	add  c                                           ; $4de0: $81
	rra                                              ; $4de1: $1f
	ld   sp, hl                                      ; $4de2: $f9
	ld   [de], a                                     ; $4de3: $12
	ld   l, c                                        ; $4de4: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4de5: $cf
	jp   nz, wResetSaveDataReturnState                                   ; $4de6: $c2 $17 $c9

	sub  l                                           ; $4de9: $95
	ld   de, $31ff                                   ; $4dea: $11 $ff $31
	scf                                              ; $4ded: $37
	sbc  a                                           ; $4dee: $9f
	ld   hl, sp+$11                                  ; $4def: $f8 $11
	xor  h                                           ; $4df1: $ac
	adc  c                                           ; $4df2: $89
	ld   de, $f19f                                   ; $4df3: $11 $9f $f1
	dec  d                                           ; $4df6: $15
	adc  e                                           ; $4df7: $8b
	rst  $38                                         ; $4df8: $ff
	ld   b, c                                        ; $4df9: $41
	ld   c, l                                        ; $4dfa: $4d
	sbc  b                                           ; $4dfb: $98
	ld   [hl], c                                     ; $4dfc: $71
	rra                                              ; $4dfd: $1f
	push af                                          ; $4dfe: $f5
	inc  de                                          ; $4dff: $13
	ld   a, c                                        ; $4e00: $79
	rst  $28                                         ; $4e01: $ef
	sub  c                                           ; $4e02: $91
	add  hl, de                                      ; $4e03: $19
	ret                                              ; $4e04: $c9


	add  d                                           ; $4e05: $82
	rla                                              ; $4e06: $17
	rst  $38                                         ; $4e07: $ff
	ld   de, $cf58                                   ; $4e08: $11 $58 $cf
	push af                                          ; $4e0b: $f5
	inc  de                                          ; $4e0c: $13
	cp   d                                           ; $4e0d: $ba
	and  a                                           ; $4e0e: $a7
	ld   de, $71ff                                   ; $4e0f: $11 $ff $71
	ld   h, $ae                                      ; $4e12: $26 $ae
	ei                                               ; $4e14: $fb
	ld   de, $9a9b                                   ; $4e15: $11 $9b $9a
	ld   sp, $f17f                                   ; $4e18: $31 $7f $f1
	dec  d                                           ; $4e1b: $15
	adc  h                                           ; $4e1c: $8c
	rst  $38                                         ; $4e1d: $ff
	ld   d, c                                        ; $4e1e: $51
	inc  a                                           ; $4e1f: $3c
	xor  c                                           ; $4e20: $a9
	ld   h, c                                        ; $4e21: $61
	rra                                              ; $4e22: $1f
	push af                                          ; $4e23: $f5
	inc  de                                          ; $4e24: $13
	ld   a, d                                        ; $4e25: $7a
	rst  $38                                         ; $4e26: $ff
	sub  c                                           ; $4e27: $91
	ld   a, [de]                                     ; $4e28: $1a

jr_0e6_4e29:
	cp   b                                           ; $4e29: $b8
	sub  c                                           ; $4e2a: $91
	dec  e                                           ; $4e2b: $1d
	db   $fd                                         ; $4e2c: $fd
	ld   de, $cf69                                   ; $4e2d: $11 $69 $cf
	db   $e3                                         ; $4e30: $e3
	ld   d, $c9                                      ; $4e31: $16 $c9
	sub  h                                           ; $4e33: $94
	inc  de                                          ; $4e34: $13
	rst  $38                                         ; $4e35: $ff
	ld   hl, $af48                                   ; $4e36: $21 $48 $af
	rst  $30                                         ; $4e39: $f7
	ld   [de], a                                     ; $4e3a: $12
	ret                                              ; $4e3b: $c9


	sub  a                                           ; $4e3c: $97
	ld   de, $91ff                                   ; $4e3d: $11 $ff $91
	daa                                              ; $4e40: $27
	xor  [hl]                                        ; $4e41: $ae
	db   $fc                                         ; $4e42: $fc
	ld   de, $889c                                   ; $4e43: $11 $9c $88
	ld   hl, $f18f                                   ; $4e46: $21 $8f $f1
	dec  d                                           ; $4e49: $15
	sbc  h                                           ; $4e4a: $9c
	cp   $41                                         ; $4e4b: $fe $41
	ld   e, l                                        ; $4e4d: $5d
	sbc  c                                           ; $4e4e: $99
	ld   d, c                                        ; $4e4f: $51
	rra                                              ; $4e50: $1f
	db   $f4                                         ; $4e51: $f4
	inc  de                                          ; $4e52: $13
	adc  e                                           ; $4e53: $8b
	rst  $38                                         ; $4e54: $ff
	add  c                                           ; $4e55: $81
	inc  c                                           ; $4e56: $0c
	cp   b                                           ; $4e57: $b8
	ld   [hl], c                                     ; $4e58: $71
	rra                                              ; $4e59: $1f
	ei                                               ; $4e5a: $fb
	ld   de, $ef6a                                   ; $4e5b: $11 $6a $ef
	pop  bc                                          ; $4e5e: $c1
	jr   jr_0e6_4e29                                 ; $4e5f: $18 $c8

	add  d                                           ; $4e61: $82
	ld   d, $ff                                      ; $4e62: $16 $ff
	ld   de, $cf48                                   ; $4e64: $11 $48 $cf
	push af                                          ; $4e67: $f5
	inc  de                                          ; $4e68: $13
	jp   z, $1195                                    ; $4e69: $ca $95 $11

	rst  $38                                         ; $4e6c: $ff
	ld   d, c                                        ; $4e6d: $51
	scf                                              ; $4e6e: $37
	xor  a                                           ; $4e6f: $af
	ld   hl, sp+$11                                  ; $4e70: $f8 $11
	xor  e                                           ; $4e72: $ab
	and  a                                           ; $4e73: $a7
	ld   de, $91ff                                   ; $4e74: $11 $ff $91
	scf                                              ; $4e77: $37
	sbc  [hl]                                        ; $4e78: $9e
	ei                                               ; $4e79: $fb
	ld   de, $998b                                   ; $4e7a: $11 $8b $99
	ld   de, $e1af                                   ; $4e7d: $11 $af $e1
	ld   d, $ad                                      ; $4e80: $16 $ad
	db   $fd                                         ; $4e82: $fd
	ld   sp, $9a6a                                   ; $4e83: $31 $6a $9a
	ld   b, c                                        ; $4e86: $41
	ld   e, a                                        ; $4e87: $5f
	pop  af                                          ; $4e88: $f1
	inc  d                                           ; $4e89: $14
	adc  h                                           ; $4e8a: $8c
	cp   $51                                         ; $4e8b: $fe $51
	ld   c, d                                        ; $4e8d: $4a
	sbc  c                                           ; $4e8e: $99
	ld   h, c                                        ; $4e8f: $61
	rra                                              ; $4e90: $1f

jr_0e6_4e91:
	db   $f4                                         ; $4e91: $f4
	inc  de                                          ; $4e92: $13
	ld   a, e                                        ; $4e93: $7b
	rst  $38                                         ; $4e94: $ff
	add  c                                           ; $4e95: $81
	dec  de                                          ; $4e96: $1b
	sbc  c                                           ; $4e97: $99
	add  c                                           ; $4e98: $81
	rra                                              ; $4e99: $1f
	ei                                               ; $4e9a: $fb
	ld   [de], a                                     ; $4e9b: $12
	ld   l, c                                        ; $4e9c: $69
	rst  $28                                         ; $4e9d: $ef
	pop  bc                                          ; $4e9e: $c1
	add  hl, de                                      ; $4e9f: $19
	xor  b                                           ; $4ea0: $a8
	sub  d                                           ; $4ea1: $92
	add  hl, de                                      ; $4ea2: $19
	rst  $38                                         ; $4ea3: $ff
	ld   de, $df59                                   ; $4ea4: $11 $59 $df

jr_0e6_4ea7:
	db   $e3                                         ; $4ea7: $e3
	ld   d, $b9                                      ; $4ea8: $16 $b9
	sub  h                                           ; $4eaa: $94
	inc  de                                          ; $4eab: $13
	rst  $38                                         ; $4eac: $ff
	ld   hl, $cf47                                   ; $4ead: $21 $47 $cf
	or   $13                                         ; $4eb0: $f6 $13
	cp   c                                           ; $4eb2: $b9
	sub  a                                           ; $4eb3: $97
	ld   de, $61ff                                   ; $4eb4: $11 $ff $61
	ld   [hl], $af                                   ; $4eb7: $36 $af
	ld   a, [$9911]                                  ; $4eb9: $fa $11 $99
	sbc  d                                           ; $4ebc: $9a
	ld   de, $e1af                                   ; $4ebd: $11 $af $e1
	dec  d                                           ; $4ec0: $15
	adc  l                                           ; $4ec1: $8d
	db   $fd                                         ; $4ec2: $fd
	ld   hl, $8b6a                                   ; $4ec3: $21 $6a $8b
	ld   b, c                                        ; $4ec6: $41
	cpl                                              ; $4ec7: $2f
	ldh  a, [c]                                      ; $4ec8: $f2
	inc  d                                           ; $4ec9: $14
	ld   a, e                                        ; $4eca: $7b
	rst  $38                                         ; $4ecb: $ff
	ld   [hl], c                                     ; $4ecc: $71
	ld   a, [hl+]                                    ; $4ecd: $2a
	xor  d                                           ; $4ece: $aa
	add  c                                           ; $4ecf: $81
	rra                                              ; $4ed0: $1f
	ld   a, [$5912]                                  ; $4ed1: $fa $12 $59
	rst  $38                                         ; $4ed4: $ff
	pop  bc                                          ; $4ed5: $c1
	jr   jr_0e6_4e91                                 ; $4ed6: $18 $b9

	and  e                                           ; $4ed8: $a3
	dec  d                                           ; $4ed9: $15
	rst  $38                                         ; $4eda: $ff
	ld   de, $cf47                                   ; $4edb: $11 $47 $cf
	push af                                          ; $4ede: $f5
	inc  d                                           ; $4edf: $14
	cp   c                                           ; $4ee0: $b9
	and  a                                           ; $4ee1: $a7
	ld   de, $61ff                                   ; $4ee2: $11 $ff $61
	ld   [hl], $af                                   ; $4ee5: $36 $af
	ld   a, [$9a11]                                  ; $4ee7: $fa $11 $9a
	sbc  c                                           ; $4eea: $99
	ld   de, $f18f                                   ; $4eeb: $11 $8f $f1
	inc  d                                           ; $4eee: $14
	adc  h                                           ; $4eef: $8c
	rst  $38                                         ; $4ef0: $ff
	ld   sp, $ab5b                                   ; $4ef1: $31 $5b $ab
	ld   h, c                                        ; $4ef4: $61
	rra                                              ; $4ef5: $1f
	push af                                          ; $4ef6: $f5
	inc  de                                          ; $4ef7: $13
	ld   l, c                                        ; $4ef8: $69
	rst  $38                                         ; $4ef9: $ff
	sub  c                                           ; $4efa: $91
	jr   jr_0e6_4ea7                                 ; $4efb: $18 $aa

	and  c                                           ; $4efd: $a1
	add  hl, de                                      ; $4efe: $19
	rst  $38                                         ; $4eff: $ff
	ld   de, $cf48                                   ; $4f00: $11 $48 $cf
	di                                               ; $4f03: $f3
	inc  d                                           ; $4f04: $14
	cp   d                                           ; $4f05: $ba
	or   [hl]                                        ; $4f06: $b6
	ld   de, $61ff                                   ; $4f07: $11 $ff $61
	dec  h                                           ; $4f0a: $25
	xor  a                                           ; $4f0b: $af
	ld   a, [$8a11]                                  ; $4f0c: $fa $11 $8a
	xor  e                                           ; $4f0f: $ab
	ld   hl, $f16f                                   ; $4f10: $21 $6f $f1
	inc  d                                           ; $4f13: $14
	ld   a, h                                        ; $4f14: $7c
	rst  $38                                         ; $4f15: $ff
	ld   b, c                                        ; $4f16: $41
	dec  sp                                          ; $4f17: $3b
	cp   d                                           ; $4f18: $ba
	ld   [hl], c                                     ; $4f19: $71
	rra                                              ; $4f1a: $1f
	rst  $30                                         ; $4f1b: $f7
	ld   [de], a                                     ; $4f1c: $12
	ld   e, c                                        ; $4f1d: $59
	rst  $38                                         ; $4f1e: $ff
	and  c                                           ; $4f1f: $a1
	rla                                              ; $4f20: $17
	cp   e                                           ; $4f21: $bb
	or   e                                           ; $4f22: $b3
	inc  de                                          ; $4f23: $13
	rst  $38                                         ; $4f24: $ff
	ld   de, $bf37                                   ; $4f25: $11 $37 $bf
	or   $11                                         ; $4f28: $f6 $11
	cp   e                                           ; $4f2a: $bb
	cp   b                                           ; $4f2b: $b8
	ld   de, $b1df                                   ; $4f2c: $11 $df $b1
	inc  d                                           ; $4f2f: $14
	adc  a                                           ; $4f30: $8f
	db   $fd                                         ; $4f31: $fd
	ld   hl, $aa5b                                   ; $4f32: $21 $5b $aa
	ld   d, c                                        ; $4f35: $51
	rra                                              ; $4f36: $1f
	db   $f4                                         ; $4f37: $f4
	ld   [de], a                                     ; $4f38: $12
	ld   e, d                                        ; $4f39: $5a
	rst  $38                                         ; $4f3a: $ff
	add  c                                           ; $4f3b: $81
	add  hl, de                                      ; $4f3c: $19
	cp   d                                           ; $4f3d: $ba
	and  c                                           ; $4f3e: $a1
	rla                                              ; $4f3f: $17
	rst  $38                                         ; $4f40: $ff
	ld   de, $cf37                                   ; $4f41: $11 $37 $cf
	db   $e3                                         ; $4f44: $e3
	inc  de                                          ; $4f45: $13
	res  4, a                                        ; $4f46: $cb $a7
	ld   de, $91ff                                   ; $4f48: $11 $ff $91
	dec  d                                           ; $4f4b: $15
	xor  a                                           ; $4f4c: $af
	ld   a, [$7c11]                                  ; $4f4d: $fa $11 $7c
	xor  d                                           ; $4f50: $aa
	ld   sp, $f12f                                   ; $4f51: $31 $2f $f1
	inc  de                                          ; $4f54: $13
	ld   l, e                                        ; $4f55: $6b
	rst  $38                                         ; $4f56: $ff
	ld   h, c                                        ; $4f57: $61
	dec  de                                          ; $4f58: $1b
	cp   d                                           ; $4f59: $ba
	add  c                                           ; $4f5a: $81
	ld   a, [de]                                     ; $4f5b: $1a
	rst  $38                                         ; $4f5c: $ff
	ld   de, $ff47                                   ; $4f5d: $11 $47 $ff
	jp   nz, wNameReplacementCharToReplace                                   ; $4f60: $c2 $14 $cb

	sub  [hl]                                        ; $4f63: $96
	ld   de, $51ff                                   ; $4f64: $11 $ff $51
	dec  [hl]                                        ; $4f67: $35
	sbc  a                                           ; $4f68: $9f
	ld   hl, sp+$11                                  ; $4f69: $f8 $11
	adc  h                                           ; $4f6b: $8c
	xor  c                                           ; $4f6c: $a9
	ld   sp, $f14f                                   ; $4f6d: $31 $4f $f1
	inc  de                                          ; $4f70: $13
	ld   l, h                                        ; $4f71: $6c
	rst  $38                                         ; $4f72: $ff
	ld   b, c                                        ; $4f73: $41
	dec  de                                          ; $4f74: $1b
	ret                                              ; $4f75: $c9


	ld   [hl], c                                     ; $4f76: $71
	inc  e                                           ; $4f77: $1c
	db   $fc                                         ; $4f78: $fc
	ld   de, $ff48                                   ; $4f79: $11 $48 $ff
	or   d                                           ; $4f7c: $b2
	dec  d                                           ; $4f7d: $15
	db   $db                                         ; $4f7e: $db
	sub  l                                           ; $4f7f: $95
	ld   de, $31ff                                   ; $4f80: $11 $ff $31
	dec  [hl]                                        ; $4f83: $35
	xor  a                                           ; $4f84: $af
	rst  $30                                         ; $4f85: $f7
	ld   de, $a89d                                   ; $4f86: $11 $9d $a8
	ld   hl, $f16f                                   ; $4f89: $21 $6f $f1
	inc  d                                           ; $4f8c: $14
	ld   l, [hl]                                     ; $4f8d: $6e
	cp   $31                                         ; $4f8e: $fe $31
	inc  l                                           ; $4f90: $2c
	cp   d                                           ; $4f91: $ba
	ld   h, c                                        ; $4f92: $61
	rra                                              ; $4f93: $1f
	rst  $30                                         ; $4f94: $f7
	ld   [de], a                                     ; $4f95: $12
	ld   c, c                                        ; $4f96: $49
	rst  $38                                         ; $4f97: $ff
	add  c                                           ; $4f98: $81
	rla                                              ; $4f99: $17
	jp   c, $1293                                    ; $4f9a: $da $93 $12

	rst  $38                                         ; $4f9d: $ff
	ld   de, $df35                                   ; $4f9e: $11 $35 $df
	db   $f4                                         ; $4fa1: $f4
	ld   de, $a7bb                                   ; $4fa2: $11 $bb $a7
	ld   de, $c1cf                                   ; $4fa5: $11 $cf $c1
	inc  d                                           ; $4fa8: $14
	ld   a, a                                        ; $4fa9: $7f
	ld   a, [$5c11]                                  ; $4faa: $fa $11 $5c
	cp   d                                           ; $4fad: $ba
	ld   d, c                                        ; $4fae: $51
	rra                                              ; $4faf: $1f
	di                                               ; $4fb0: $f3
	inc  de                                          ; $4fb1: $13
	ld   c, e                                        ; $4fb2: $4b
	rst  $38                                         ; $4fb3: $ff
	ld   [hl], c                                     ; $4fb4: $71
	add  hl, de                                      ; $4fb5: $19
	ret                                              ; $4fb6: $c9


	sub  d                                           ; $4fb7: $92
	jr   @+$01                                       ; $4fb8: $18 $ff

	ld   de, $ef46                                   ; $4fba: $11 $46 $ef
	jp   $cb13                                       ; $4fbd: $c3 $13 $cb


	sub  [hl]                                        ; $4fc0: $96
	ld   de, $51ff                                   ; $4fc1: $11 $ff $51
	inc  [hl]                                        ; $4fc4: $34
	sbc  a                                           ; $4fc5: $9f
	rst  $30                                         ; $4fc6: $f7
	ld   de, $a88d                                   ; $4fc7: $11 $8d $a8
	ld   hl, $f15f                                   ; $4fca: $21 $5f $f1
	inc  de                                          ; $4fcd: $13
	ld   l, l                                        ; $4fce: $6d
	rst  $38                                         ; $4fcf: $ff
	ld   sp, $ca2b                                   ; $4fd0: $31 $2b $ca
	ld   [hl], c                                     ; $4fd3: $71
	rra                                              ; $4fd4: $1f
	ld   sp, hl                                      ; $4fd5: $f9
	ld   [de], a                                     ; $4fd6: $12
	ld   c, c                                        ; $4fd7: $49
	rst  $38                                         ; $4fd8: $ff
	sub  c                                           ; $4fd9: $91
	ld   d, $db                                      ; $4fda: $16 $db
	and  h                                           ; $4fdc: $a4
	ld   de, $31ff                                   ; $4fdd: $11 $ff $31
	inc  h                                           ; $4fe0: $24
	cp   a                                           ; $4fe1: $bf
	or   $11                                         ; $4fe2: $f6 $11
	sbc  h                                           ; $4fe4: $9c
	sbc  b                                           ; $4fe5: $98
	ld   de, $d1af                                   ; $4fe6: $11 $af $d1
	inc  d                                           ; $4fe9: $14
	ld   a, a                                        ; $4fea: $7f
	db   $fc                                         ; $4feb: $fc
	ld   hl, $a94c                                   ; $4fec: $21 $4c $a9
	ld   d, c                                        ; $4fef: $51
	rra                                              ; $4ff0: $1f
	db   $f4                                         ; $4ff1: $f4
	ld   [de], a                                     ; $4ff2: $12
	ld   c, d                                        ; $4ff3: $4a
	rst  $38                                         ; $4ff4: $ff
	ld   [hl], c                                     ; $4ff5: $71
	jr   @-$25                                       ; $4ff6: $18 $d9

	sub  d                                           ; $4ff8: $92
	ld   d, $ff                                      ; $4ff9: $16 $ff
	ld   de, $ef36                                   ; $4ffb: $11 $36 $ef
	db   $e3                                         ; $4ffe: $e3
	ld   [de], a                                     ; $4fff: $12
	cp   e                                           ; $5000: $bb
	sub  [hl]                                        ; $5001: $96
	ld   de, $71ff                                   ; $5002: $11 $ff $71
	inc  h                                           ; $5005: $24
	sbc  a                                           ; $5006: $9f
	ld   sp, hl                                      ; $5007: $f9
	ld   de, $a97c                                   ; $5008: $11 $7c $a9
	ld   sp, $f14f                                   ; $500b: $31 $4f $f1
	inc  de                                          ; $500e: $13
	ld   e, l                                        ; $500f: $5d
	rst  $38                                         ; $5010: $ff
	ld   b, c                                        ; $5011: $41
	inc  e                                           ; $5012: $1c
	cp   d                                           ; $5013: $ba
	ld   [hl], c                                     ; $5014: $71
	rra                                              ; $5015: $1f
	ld   a, [$4812]                                  ; $5016: $fa $12 $48
	rst  $38                                         ; $5019: $ff
	and  c                                           ; $501a: $a1
	ld   d, $da                                      ; $501b: $16 $da
	sub  e                                           ; $501d: $93
	inc  de                                          ; $501e: $13
	rst  $38                                         ; $501f: $ff
	ld   de, $df35                                   ; $5020: $11 $35 $df
	push af                                          ; $5023: $f5
	ld   de, $97ac                                   ; $5024: $11 $ac $97
	ld   de, $a1ff                                   ; $5027: $11 $ff $a1

jr_0e6_502a:
	inc  h                                           ; $502a: $24
	adc  a                                           ; $502b: $8f
	ld   a, [$5d11]                                  ; $502c: $fa $11 $5d
	cp   d                                           ; $502f: $ba
	ld   b, c                                        ; $5030: $41
	ccf                                              ; $5031: $3f
	ldh  a, [c]                                      ; $5032: $f2
	inc  de                                          ; $5033: $13
	ld   e, h                                        ; $5034: $5c
	rst  $38                                         ; $5035: $ff
	ld   d, c                                        ; $5036: $51
	dec  de                                          ; $5037: $1b
	cp   c                                           ; $5038: $b9
	ld   [hl], c                                     ; $5039: $71
	rra                                              ; $503a: $1f
	ld   sp, hl                                      ; $503b: $f9
	ld   [de], a                                     ; $503c: $12
	ld   c, b                                        ; $503d: $48
	rst  $38                                         ; $503e: $ff
	and  c                                           ; $503f: $a1
	ld   d, $ca                                      ; $5040: $16 $ca
	sub  e                                           ; $5042: $93
	dec  d                                           ; $5043: $15
	rst  $38                                         ; $5044: $ff
	ld   de, $df35                                   ; $5045: $11 $35 $df
	db   $f4                                         ; $5048: $f4
	ld   [de], a                                     ; $5049: $12
	xor  e                                           ; $504a: $ab
	and  [hl]                                        ; $504b: $a6
	ld   de, $71ff                                   ; $504c: $11 $ff $71
	inc  [hl]                                        ; $504f: $34
	sbc  a                                           ; $5050: $9f
	ld   sp, hl                                      ; $5051: $f9
	ld   de, $987c                                   ; $5052: $11 $7c $98
	ld   de, $c1cf                                   ; $5055: $11 $cf $c1
	inc  h                                           ; $5058: $24
	ld   a, a                                        ; $5059: $7f
	ei                                               ; $505a: $fb
	ld   de, $aa5c                                   ; $505b: $11 $5c $aa
	ld   sp, $f25f                                   ; $505e: $31 $5f $f2
	inc  bc                                          ; $5061: $03
	ld   e, h                                        ; $5062: $5c
	rst  $38                                         ; $5063: $ff
	ld   b, c                                        ; $5064: $41
	ld   a, [de]                                     ; $5065: $1a
	xor  d                                           ; $5066: $aa
	ld   h, c                                        ; $5067: $61
	rra                                              ; $5068: $1f
	or   $13                                         ; $5069: $f6 $13
	ld   e, c                                        ; $506b: $59
	rst  $38                                         ; $506c: $ff
	ld   [hl], c                                     ; $506d: $71
	jr   jr_0e6_502a                                 ; $506e: $18 $ba

	add  c                                           ; $5070: $81
	ld   e, $fa                                      ; $5071: $1e $fa
	ld   [de], a                                     ; $5073: $12
	ld   b, a                                        ; $5074: $47
	rst  $38                                         ; $5075: $ff
	and  c                                           ; $5076: $a1
	dec  d                                           ; $5077: $15
	cp   d                                           ; $5078: $ba
	sub  d                                           ; $5079: $92
	add  hl, de                                      ; $507a: $19
	rst  $38                                         ; $507b: $ff
	ld   [de], a                                     ; $507c: $12
	ld   b, [hl]                                     ; $507d: $46
	rst  JumpTable                                         ; $507e: $df
	jp   nc, $a913                                   ; $507f: $d2 $13 $a9

	sub  h                                           ; $5082: $94
	dec  d                                           ; $5083: $15
	rst  $38                                         ; $5084: $ff
	ld   sp, $cf45                                   ; $5085: $31 $45 $cf
	di                                               ; $5088: $f3
	ld   [de], a                                     ; $5089: $12
	sbc  c                                           ; $508a: $99
	sub  [hl]                                        ; $508b: $96
	ld   [de], a                                     ; $508c: $12
	rst  $38                                         ; $508d: $ff
	ld   d, c                                        ; $508e: $51
	ld   b, [hl]                                     ; $508f: $46
	xor  a                                           ; $5090: $af
	push af                                          ; $5091: $f5
	ld   de, $978a                                   ; $5092: $11 $8a $97
	ld   de, $71ff                                   ; $5095: $11 $ff $71
	dec  [hl]                                        ; $5098: $35
	sbc  a                                           ; $5099: $9f
	or   $11                                         ; $509a: $f6 $11
	ld   a, c                                        ; $509c: $79
	xor  b                                           ; $509d: $a8
	ld   de, $91ff                                   ; $509e: $11 $ff $91
	dec  [hl]                                        ; $50a1: $35
	adc  a                                           ; $50a2: $8f
	ld   hl, sp+$11                                  ; $50a3: $f8 $11
	ld   l, c                                        ; $50a5: $69
	sbc  b                                           ; $50a6: $98
	ld   de, $a1ff                                   ; $50a7: $11 $ff $a1
	dec  [hl]                                        ; $50aa: $35
	ld   a, a                                        ; $50ab: $7f
	ld   a, [$6911]                                  ; $50ac: $fa $11 $69
	sbc  c                                           ; $50af: $99
	ld   hl, $c1cf                                   ; $50b0: $21 $cf $c1
	dec  [hl]                                        ; $50b3: $35
	ld   a, a                                        ; $50b4: $7f
	ei                                               ; $50b5: $fb
	ld   de, $8959                                   ; $50b6: $11 $59 $89
	ld   sp, $f29f                                   ; $50b9: $31 $9f $f2
	dec  h                                           ; $50bc: $25
	ld   l, l                                        ; $50bd: $6d
	cp   $21                                         ; $50be: $fe $21
	ld   c, d                                        ; $50c0: $4a
	adc  c                                           ; $50c1: $89
	ld   d, c                                        ; $50c2: $51
	ld   e, a                                        ; $50c3: $5f
	di                                               ; $50c4: $f3
	inc  d                                           ; $50c5: $14
	ld   l, h                                        ; $50c6: $6c
	rst  $38                                         ; $50c7: $ff
	ld   sp, $8928                                   ; $50c8: $31 $28 $89
	ld   d, c                                        ; $50cb: $51
	ld   c, a                                        ; $50cc: $4f
	db   $f4                                         ; $50cd: $f4
	dec  d                                           ; $50ce: $15
	ld   l, d                                        ; $50cf: $6a
	rst  $38                                         ; $50d0: $ff
	ld   b, c                                        ; $50d1: $41
	add  hl, hl                                      ; $50d2: $29
	adc  c                                           ; $50d3: $89
	ld   [hl], c                                     ; $50d4: $71
	rra                                              ; $50d5: $1f
	or   $14                                         ; $50d6: $f6 $14
	ld   e, b                                        ; $50d8: $58
	rst  $38                                         ; $50d9: $ff
	ld   h, c                                        ; $50da: $61
	rla                                              ; $50db: $17
	adc  b                                           ; $50dc: $88
	add  c                                           ; $50dd: $81
	rra                                              ; $50de: $1f
	ld   sp, hl                                      ; $50df: $f9
	inc  de                                          ; $50e0: $13
	ld   d, a                                        ; $50e1: $57
	rst  $38                                         ; $50e2: $ff
	sub  c                                           ; $50e3: $91
	ld   d, $98                                      ; $50e4: $16 $98
	and  d                                           ; $50e6: $a2
	dec  de                                          ; $50e7: $1b
	cp   $12                                         ; $50e8: $fe $12
	ld   d, [hl]                                     ; $50ea: $56
	rst  $38                                         ; $50eb: $ff
	pop  bc                                          ; $50ec: $c1
	dec  d                                           ; $50ed: $15
	sbc  b                                           ; $50ee: $98
	and  e                                           ; $50ef: $a3
	jr   @+$01                                       ; $50f0: $18 $ff

	ld   [de], a                                     ; $50f2: $12
	ld   d, [hl]                                     ; $50f3: $56
	rst  JumpTable                                         ; $50f4: $df
	ldh  [c], a                                      ; $50f5: $e2
	inc  d                                           ; $50f6: $14
	sbc  b                                           ; $50f7: $98
	and  l                                           ; $50f8: $a5
	dec  d                                           ; $50f9: $15
	rst  $38                                         ; $50fa: $ff
	ld   hl, $bf56                                   ; $50fb: $21 $56 $bf
	di                                               ; $50fe: $f3
	ld   [de], a                                     ; $50ff: $12
	sbc  b                                           ; $5100: $98
	and  a                                           ; $5101: $a7
	ld   de, $61ff                                   ; $5102: $11 $ff $61
	ld   b, l                                        ; $5105: $45
	adc  a                                           ; $5106: $8f
	rst  $30                                         ; $5107: $f7
	ld   de, $9979                                   ; $5108: $11 $79 $99
	ld   de, $a1ff                                   ; $510b: $11 $ff $a1
	dec  [hl]                                        ; $510e: $35
	ld   a, a                                        ; $510f: $7f
	ld   a, [$6a11]                                  ; $5110: $fa $11 $6a
	adc  c                                           ; $5113: $89
	ld   hl, $f1af                                   ; $5114: $21 $af $f1
	dec  h                                           ; $5117: $25
	ld   l, h                                        ; $5118: $6c
	rst  $38                                         ; $5119: $ff
	ld   de, $8949                                   ; $511a: $11 $49 $89
	ld   h, c                                        ; $511d: $61
	cpl                                              ; $511e: $2f
	db   $f4                                         ; $511f: $f4
	inc  b                                           ; $5120: $04
	ld   e, c                                        ; $5121: $59
	rst  $38                                         ; $5122: $ff
	ld   d, c                                        ; $5123: $51
	jr   @-$65                                       ; $5124: $18 $99

	sub  c                                           ; $5126: $91
	rra                                              ; $5127: $1f
	rst  $30                                         ; $5128: $f7
	inc  d                                           ; $5129: $14
	ld   d, [hl]                                     ; $512a: $56
	rst  $38                                         ; $512b: $ff
	and  c                                           ; $512c: $a1
	ld   d, $99                                      ; $512d: $16 $99
	sub  d                                           ; $512f: $92
	ld   a, [de]                                     ; $5130: $1a
	cp   $12                                         ; $5131: $fe $12
	ld   d, l                                        ; $5133: $55
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5134: $cf
	ldh  a, [c]                                      ; $5135: $f2
	inc  de                                          ; $5136: $13
	xor  c                                           ; $5137: $a9
	and  [hl]                                        ; $5138: $a6
	ld   [de], a                                     ; $5139: $12
	rst  $38                                         ; $513a: $ff
	ld   sp, $8f55                                   ; $513b: $31 $55 $8f
	push af                                          ; $513e: $f5
	ld   de, $9999                                   ; $513f: $11 $99 $99
	ld   de, $a1ff                                   ; $5142: $11 $ff $a1
	dec  [hl]                                        ; $5145: $35
	ld   e, [hl]                                     ; $5146: $5e
	db   $fc                                         ; $5147: $fc
	ld   de, $8a59                                   ; $5148: $11 $59 $8a
	ld   b, c                                        ; $514b: $41
	ld   l, a                                        ; $514c: $6f
	pop  af                                          ; $514d: $f1

jr_0e6_514e:
	dec  d                                           ; $514e: $15
	ld   e, d                                        ; $514f: $5a
	rst  $38                                         ; $5150: $ff
	ld   sp, $8929                                   ; $5151: $31 $29 $89
	sub  c                                           ; $5154: $91
	rra                                              ; $5155: $1f
	ld   hl, sp+$14                                  ; $5156: $f8 $14
	ld   d, l                                        ; $5158: $55
	rst  $38                                         ; $5159: $ff
	pop  bc                                          ; $515a: $c1
	ld   d, $a9                                      ; $515b: $16 $a9
	or   h                                           ; $515d: $b4
	rla                                              ; $515e: $17
	rst  $38                                         ; $515f: $ff
	ld   [de], a                                     ; $5160: $12
	ld   d, h                                        ; $5161: $54
	sbc  a                                           ; $5162: $9f
	di                                               ; $5163: $f3
	ld   [de], a                                     ; $5164: $12
	xor  c                                           ; $5165: $a9
	sbc  c                                           ; $5166: $99
	ld   de, $61ff                                   ; $5167: $11 $ff $61
	ld   b, h                                        ; $516a: $44
	ld   e, a                                        ; $516b: $5f
	ei                                               ; $516c: $fb
	ld   de, $8b6b                                   ; $516d: $11 $6b $8b
	ld   d, c                                        ; $5170: $51
	ld   c, a                                        ; $5171: $4f
	pop  af                                          ; $5172: $f1
	dec  d                                           ; $5173: $15
	ld   c, b                                        ; $5174: $48
	rst  $38                                         ; $5175: $ff
	ld   d, c                                        ; $5176: $51
	ld   a, [de]                                     ; $5177: $1a
	sbc  d                                           ; $5178: $9a
	or   c                                           ; $5179: $b1
	ld   a, [de]                                     ; $517a: $1a
	db   $fd                                         ; $517b: $fd
	inc  de                                          ; $517c: $13

jr_0e6_517d:
	ld   b, h                                        ; $517d: $44
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $517e: $cf
	ldh  a, [c]                                      ; $517f: $f2
	inc  de                                          ; $5180: $13
	jp   z, $11a9                                    ; $5181: $ca $a9 $11

	rst  $38                                         ; $5184: $ff
	ld   [hl], c                                     ; $5185: $71
	ld   b, h                                        ; $5186: $44
	ld   l, a                                        ; $5187: $6f
	db   $fc                                         ; $5188: $fc
	ld   de, $9b6b                                   ; $5189: $11 $6b $9b
	ld   h, c                                        ; $518c: $61
	rra                                              ; $518d: $1f
	ldh  a, [c]                                      ; $518e: $f2
	inc  d                                           ; $518f: $14
	ld   b, a                                        ; $5190: $47
	rst  $38                                         ; $5191: $ff
	add  c                                           ; $5192: $81
	jr   jr_0e6_514e                                 ; $5193: $18 $b9

	or   e                                           ; $5195: $b3
	ld   d, $ff                                      ; $5196: $16 $ff
	ld   [de], a                                     ; $5198: $12
	ld   d, l                                        ; $5199: $55
	xor  a                                           ; $519a: $af
	db   $f4                                         ; $519b: $f4
	ld   de, $9bba                                   ; $519c: $11 $ba $9b
	ld   de, $e1bf                                   ; $519f: $11 $bf $e1
	dec  h                                           ; $51a2: $25
	ld   e, h                                        ; $51a3: $5c
	rst  $38                                         ; $51a4: $ff
	ld   hl, $993c                                   ; $51a5: $21 $3c $99
	and  c                                           ; $51a8: $a1
	rra                                              ; $51a9: $1f
	ld   a, [$5514]                                  ; $51aa: $fa $14 $55
	rst  JumpTable                                         ; $51ad: $df
	pop  de                                          ; $51ae: $d1
	ld   d, $c8                                      ; $51af: $16 $c8
	xor  b                                           ; $51b1: $a8
	ld   de, $51ff                                   ; $51b2: $11 $ff $51
	ld   b, l                                        ; $51b5: $45
	ld   l, a                                        ; $51b6: $6f
	ei                                               ; $51b7: $fb
	ld   de, $8a7c                                   ; $51b8: $11 $7c $8a
	ld   [hl], c                                     ; $51bb: $71
	rra                                              ; $51bc: $1f
	ldh  a, [c]                                      ; $51bd: $f2
	dec  d                                           ; $51be: $15
	ld   d, a                                        ; $51bf: $57
	rst  $38                                         ; $51c0: $ff
	sub  c                                           ; $51c1: $91
	jr   jr_0e6_517d                                 ; $51c2: $18 $b9

	or   [hl]                                        ; $51c4: $b6
	ld   de, $11ff                                   ; $51c5: $11 $ff $11
	ld   b, l                                        ; $51c8: $45
	adc  a                                           ; $51c9: $8f
	ld   hl, sp+$11                                  ; $51ca: $f8 $11
	sbc  e                                           ; $51cc: $9b
	sbc  e                                           ; $51cd: $9b
	ld   b, c                                        ; $51ce: $41
	ccf                                              ; $51cf: $3f
	pop  af                                          ; $51d0: $f1
	dec  d                                           ; $51d1: $15
	ld   e, c                                        ; $51d2: $59
	rst  $38                                         ; $51d3: $ff
	ld   h, c                                        ; $51d4: $61
	ld   a, [de]                                     ; $51d5: $1a
	cp   c                                           ; $51d6: $b9
	or   e                                           ; $51d7: $b3
	ld   d, $ff                                      ; $51d8: $16 $ff
	ld   de, $9f55                                   ; $51da: $11 $55 $9f
	or   $11                                         ; $51dd: $f6 $11
	cp   d                                           ; $51df: $ba
	xor  e                                           ; $51e0: $ab
	ld   hl, $f16f                                   ; $51e1: $21 $6f $f1
	dec  d                                           ; $51e4: $15
	ld   e, c                                        ; $51e5: $59
	rst  $38                                         ; $51e6: $ff
	ld   d, c                                        ; $51e7: $51
	dec  de                                          ; $51e8: $1b
	xor  d                                           ; $51e9: $aa
	and  c                                           ; $51ea: $a1
	jr   @+$01                                       ; $51eb: $18 $ff

	ld   [de], a                                     ; $51ed: $12
	ld   d, l                                        ; $51ee: $55
	xor  a                                           ; $51ef: $af
	db   $f4                                         ; $51f0: $f4
	ld   [de], a                                     ; $51f1: $12
	jp   z, $1199                                    ; $51f2: $ca $99 $11

	xor  a                                           ; $51f5: $af
	pop  hl                                          ; $51f6: $e1
	dec  h                                           ; $51f7: $25
	ld   e, h                                        ; $51f8: $5c
	rst  $38                                         ; $51f9: $ff
	ld   sp, $aa3c                                   ; $51fa: $31 $3c $aa
	and  c                                           ; $51fd: $a1
	dec  de                                          ; $51fe: $1b
	cp   $12                                         ; $51ff: $fe $12
	ld   d, l                                        ; $5201: $55
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5202: $cf
	di                                               ; $5203: $f3
	inc  de                                          ; $5204: $13
	ret                                              ; $5205: $c9


	xor  d                                           ; $5206: $aa
	ld   de, $d1af                                   ; $5207: $11 $af $d1
	dec  [hl]                                        ; $520a: $35
	ld   e, h                                        ; $520b: $5c
	rst  $38                                         ; $520c: $ff
	ld   sp, $aa3c                                   ; $520d: $31 $3c $aa
	and  c                                           ; $5210: $a1
	dec  de                                          ; $5211: $1b
	db   $fd                                         ; $5212: $fd
	ld   [de], a                                     ; $5213: $12
	ld   d, l                                        ; $5214: $55
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5215: $cf
	di                                               ; $5216: $f3
	inc  de                                          ; $5217: $13
	jp   z, $11aa                                    ; $5218: $ca $aa $11

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $521b: $cf
	pop  de                                          ; $521c: $d1
	dec  [hl]                                        ; $521d: $35
	ld   e, e                                        ; $521e: $5b
	rst  $38                                         ; $521f: $ff
	ld   sp, $aa3d                                   ; $5220: $31 $3d $aa
	sub  c                                           ; $5223: $91
	ld   a, [de]                                     ; $5224: $1a
	rst  $38                                         ; $5225: $ff
	ld   [de], a                                     ; $5226: $12
	ld   d, l                                        ; $5227: $55
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5228: $cf
	db   $f4                                         ; $5229: $f4
	ld   [de], a                                     ; $522a: $12
	jp   c, $11aa                                    ; $522b: $da $aa $11

	adc  a                                           ; $522e: $8f
	pop  af                                          ; $522f: $f1
	inc  h                                           ; $5230: $24
	ld   c, d                                        ; $5231: $4a
	rst  $38                                         ; $5232: $ff
	ld   b, c                                        ; $5233: $41
	inc  l                                           ; $5234: $2c
	sbc  c                                           ; $5235: $99
	and  c                                           ; $5236: $a1
	add  hl, de                                      ; $5237: $19
	rst  $38                                         ; $5238: $ff
	ld   [de], a                                     ; $5239: $12
	ld   d, h                                        ; $523a: $54
	xor  a                                           ; $523b: $af
	db   $f4                                         ; $523c: $f4
	inc  de                                          ; $523d: $13
	cp   c                                           ; $523e: $b9
	sbc  d                                           ; $523f: $9a
	ld   de, $f17f                                   ; $5240: $11 $7f $f1
	dec  h                                           ; $5243: $25
	ld   c, e                                        ; $5244: $4b
	rst  $38                                         ; $5245: $ff
	ld   b, c                                        ; $5246: $41
	dec  sp                                          ; $5247: $3b
	sbc  c                                           ; $5248: $99
	and  c                                           ; $5249: $a1
	rla                                              ; $524a: $17
	rst  $38                                         ; $524b: $ff
	ld   de, $af55                                   ; $524c: $11 $55 $af
	push af                                          ; $524f: $f5
	ld   [de], a                                     ; $5250: $12
	xor  c                                           ; $5251: $a9
	xor  d                                           ; $5252: $aa
	ld   de, $f16f                                   ; $5253: $11 $6f $f1
	inc  d                                           ; $5256: $14
	ld   e, d                                        ; $5257: $5a
	rst  $38                                         ; $5258: $ff
	ld   d, c                                        ; $5259: $51
	dec  hl                                          ; $525a: $2b
	xor  d                                           ; $525b: $aa
	and  d                                           ; $525c: $a2
	ld   d, $ff                                      ; $525d: $16 $ff
	ld   [hl+], a                                    ; $525f: $22
	ld   d, l                                        ; $5260: $55
	xor  a                                           ; $5261: $af
	db   $f4                                         ; $5262: $f4
	inc  de                                          ; $5263: $13
	cp   c                                           ; $5264: $b9
	sbc  d                                           ; $5265: $9a
	ld   de, $f1af                                   ; $5266: $11 $af $f1
	dec  h                                           ; $5269: $25
	ld   e, e                                        ; $526a: $5b
	rst  $38                                         ; $526b: $ff
	ld   sp, $9b4a                                   ; $526c: $31 $4a $9b
	sub  c                                           ; $526f: $91
	inc  e                                           ; $5270: $1c
	db   $fd                                         ; $5271: $fd
	inc  de                                          ; $5272: $13
	ld   d, [hl]                                     ; $5273: $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5274: $cf
	pop  hl                                          ; $5275: $e1
	dec  d                                           ; $5276: $15
	xor  c                                           ; $5277: $a9
	xor  b                                           ; $5278: $a8
	ld   de, $a1ff                                   ; $5279: $11 $ff $a1
	dec  [hl]                                        ; $527c: $35
	ld   l, a                                        ; $527d: $6f
	ei                                               ; $527e: $fb
	ld   de, $9b7a                                   ; $527f: $11 $7a $9b
	ld   h, c                                        ; $5282: $61
	rrca                                             ; $5283: $0f
	or   $14                                         ; $5284: $f6 $14
	ld   d, a                                        ; $5286: $57
	rst  $38                                         ; $5287: $ff
	ld   [hl], c                                     ; $5288: $71
	add  hl, de                                      ; $5289: $19

Call_0e6_528a:
	cp   c                                           ; $528a: $b9
	or   h                                           ; $528b: $b4
	inc  d                                           ; $528c: $14
	rst  $38                                         ; $528d: $ff
	ld   b, c                                        ; $528e: $41
	ld   b, l                                        ; $528f: $45
	sbc  a                                           ; $5290: $9f
	push af                                          ; $5291: $f5
	ld   [de], a                                     ; $5292: $12
	xor  d                                           ; $5293: $aa
	sbc  d                                           ; $5294: $9a
	ld   de, $f28f                                   ; $5295: $11 $8f $f2
	inc  h                                           ; $5298: $24
	ld   e, e                                        ; $5299: $5b
	rst  $38                                         ; $529a: $ff
	ld   hl, $9a4a                                   ; $529b: $21 $4a $9a
	add  c                                           ; $529e: $81
	rra                                              ; $529f: $1f
	ei                                               ; $52a0: $fb
	inc  de                                          ; $52a1: $13
	ld   d, [hl]                                     ; $52a2: $56
	rst  $28                                         ; $52a3: $ef
	pop  bc                                          ; $52a4: $c1
	ld   d, $b8                                      ; $52a5: $16 $b8
	and  [hl]                                        ; $52a7: $a6
	ld   de, $61ff                                   ; $52a8: $11 $ff $61
	ld   b, l                                        ; $52ab: $45
	ld   a, a                                        ; $52ac: $7f
	rst  $30                                         ; $52ad: $f7
	ld   de, $8a9b                                   ; $52ae: $11 $9b $8a
	ld   sp, $f36f                                   ; $52b1: $31 $6f $f3
	inc  d                                           ; $52b4: $14
	ld   e, e                                        ; $52b5: $5b
	rst  $38                                         ; $52b6: $ff
	ld   b, c                                        ; $52b7: $41
	ld   a, [hl+]                                    ; $52b8: $2a
	sbc  c                                           ; $52b9: $99
	sub  c                                           ; $52ba: $91
	ld   e, $fb                                      ; $52bb: $1e $fb
	inc  de                                          ; $52bd: $13
	ld   d, [hl]                                     ; $52be: $56
	rst  $28                                         ; $52bf: $ef
	pop  bc                                          ; $52c0: $c1
	ld   d, $b9                                      ; $52c1: $16 $b9
	or   a                                           ; $52c3: $b7
	ld   de, $71ff                                   ; $52c4: $11 $ff $71
	ld   b, h                                        ; $52c7: $44
	ld   a, a                                        ; $52c8: $7f
	rst  $30                                         ; $52c9: $f7
	ld   de, $aa7a                                   ; $52ca: $11 $7a $aa
	ld   sp, $f28f                                   ; $52cd: $31 $8f $f2
	inc  h                                           ; $52d0: $24
	ld   c, d                                        ; $52d1: $4a
	rst  $38                                         ; $52d2: $ff
	ld   hl, $9b39                                   ; $52d3: $21 $39 $9b
	add  c                                           ; $52d6: $81
	rra                                              ; $52d7: $1f
	ld   hl, sp+$24                                  ; $52d8: $f8 $24
	ld   d, l                                        ; $52da: $55
	rst  $38                                         ; $52db: $ff
	sub  c                                           ; $52dc: $91
	rla                                              ; $52dd: $17
	sbc  c                                           ; $52de: $99
	or   h                                           ; $52df: $b4
	ld   d, $ff                                      ; $52e0: $16 $ff
	inc  sp                                          ; $52e2: $33
	ld   d, h                                        ; $52e3: $54
	sbc  a                                           ; $52e4: $9f
	db   $f4                                         ; $52e5: $f4
	inc  de                                          ; $52e6: $13
	adc  b                                           ; $52e7: $88
	xor  b                                           ; $52e8: $a8
	ld   de, $72ff                                   ; $52e9: $11 $ff $72
	ld   d, l                                        ; $52ec: $55
	ld   e, a                                        ; $52ed: $5f
	ld   a, [$6811]                                  ; $52ee: $fa $11 $68
	sbc  d                                           ; $52f1: $9a
	ld   b, c                                        ; $52f2: $41
	sbc  a                                           ; $52f3: $9f
	di                                               ; $52f4: $f3
	dec  [hl]                                        ; $52f5: $35
	ld   e, d                                        ; $52f6: $5a
	rst  $38                                         ; $52f7: $ff
	ld   sp, $7a48                                   ; $52f8: $31 $48 $7a
	add  c                                           ; $52fb: $81
	cpl                                              ; $52fc: $2f
	or   $25                                         ; $52fd: $f6 $25
	ld   d, [hl]                                     ; $52ff: $56
	rst  $38                                         ; $5300: $ff
	ld   [hl], c                                     ; $5301: $71
	ld   h, $79                                      ; $5302: $26 $79
	sub  d                                           ; $5304: $92
	ld   e, $f9                                      ; $5305: $1e $f9
	dec  h                                           ; $5307: $25
	ld   h, [hl]                                     ; $5308: $66
	rst  $28                                         ; $5309: $ef
	sub  c                                           ; $530a: $91
	ld   h, $77                                      ; $530b: $26 $77
	sub  h                                           ; $530d: $94
	add  hl, de                                      ; $530e: $19
	cp   $33                                         ; $530f: $fe $33
	ld   h, [hl]                                     ; $5311: $66
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5312: $cf
	db   $d3                                         ; $5313: $d3
	dec  d                                           ; $5314: $15
	add  a                                           ; $5315: $87
	sub  l                                           ; $5316: $95
	rla                                              ; $5317: $17
	rst  $38                                         ; $5318: $ff
	ld   b, e                                        ; $5319: $43
	ld   h, [hl]                                     ; $531a: $66
	sbc  a                                           ; $531b: $9f
	db   $f4                                         ; $531c: $f4
	inc  de                                          ; $531d: $13
	ld   [hl], a                                     ; $531e: $77
	sub  [hl]                                        ; $531f: $96
	ld   d, $ff                                      ; $5320: $16 $ff
	ld   d, h                                        ; $5322: $54
	ld   h, [hl]                                     ; $5323: $66
	adc  a                                           ; $5324: $8f
	push af                                          ; $5325: $f5
	inc  de                                          ; $5326: $13
	ld   [hl], a                                     ; $5327: $77
	sub  [hl]                                        ; $5328: $96
	dec  d                                           ; $5329: $15
	rst  $38                                         ; $532a: $ff
	ld   h, e                                        ; $532b: $63
	ld   h, [hl]                                     ; $532c: $66
	ld   a, a                                        ; $532d: $7f
	or   $13                                         ; $532e: $f6 $13
	ld   h, [hl]                                     ; $5330: $66
	sub  a                                           ; $5331: $97
	inc  d                                           ; $5332: $14
	rst  $38                                         ; $5333: $ff
	ld   [hl], h                                     ; $5334: $74
	ld   h, [hl]                                     ; $5335: $66
	adc  a                                           ; $5336: $8f
	or   $33                                         ; $5337: $f6 $33
	ld   h, [hl]                                     ; $5339: $66
	sub  a                                           ; $533a: $97
	inc  d                                           ; $533b: $14
	rst  $38                                         ; $533c: $ff
	ld   h, h                                        ; $533d: $64
	ld   h, [hl]                                     ; $533e: $66
	adc  a                                           ; $533f: $8f
	rst  $30                                         ; $5340: $f7
	inc  hl                                          ; $5341: $23
	ld   h, l                                        ; $5342: $65
	add  a                                           ; $5343: $87
	ld   h, $ff                                      ; $5344: $26 $ff
	ld   d, h                                        ; $5346: $54
	ld   [hl], a                                     ; $5347: $77
	sbc  a                                           ; $5348: $9f
	and  $24                                         ; $5349: $e6 $24
	halt                                             ; $534b: $76
	ld   [hl], l                                     ; $534c: $75

jr_0e6_534d:
	jr   c, jr_0e6_534d                              ; $534d: $38 $fe

	ld   b, h                                        ; $534f: $44
	ld   [hl], a                                     ; $5350: $77
	xor  a                                           ; $5351: $af
	push hl                                          ; $5352: $e5
	inc  h                                           ; $5353: $24
	halt                                             ; $5354: $76
	ld   [hl], h                                     ; $5355: $74
	add  hl, hl                                      ; $5356: $29
	cp   $45                                         ; $5357: $fe $45
	ld   [hl], a                                     ; $5359: $77
	cp   a                                           ; $535a: $bf
	call nz, Call_0e6_7624                           ; $535b: $c4 $24 $76
	ld   [hl], e                                     ; $535e: $73
	inc  a                                           ; $535f: $3c
	ei                                               ; $5360: $fb
	dec  [hl]                                        ; $5361: $35
	ld   [hl], a                                     ; $5362: $77
	rst  JumpTable                                         ; $5363: $df
	and  e                                           ; $5364: $a3
	ld   h, $77                                      ; $5365: $26 $77
	ld   [hl], e                                     ; $5367: $73
	inc  a                                           ; $5368: $3c
	ld   a, [$6745]                                  ; $5369: $fa $45 $67
	rst  JumpTable                                         ; $536c: $df
	and  h                                           ; $536d: $a4
	dec  h                                           ; $536e: $25
	ld   h, a                                        ; $536f: $67
	ld   [hl], e                                     ; $5370: $73
	ld   c, [hl]                                     ; $5371: $4e
	ld   hl, sp+$36                                  ; $5372: $f8 $36
	ld   [hl], a                                     ; $5374: $77
	rst  $28                                         ; $5375: $ef
	sub  e                                           ; $5376: $93
	ld   h, $67                                      ; $5377: $26 $67
	ld   h, d                                        ; $5379: $62
	ld   e, a                                        ; $537a: $5f
	rst  $30                                         ; $537b: $f7
	ld   b, [hl]                                     ; $537c: $46
	ld   h, a                                        ; $537d: $67
	rst  $38                                         ; $537e: $ff
	add  e                                           ; $537f: $83
	ld   h, $57                                      ; $5380: $26 $57
	ld   [hl], e                                     ; $5382: $73
	ld   e, a                                        ; $5383: $5f
	rst  $30                                         ; $5384: $f7
	ld   d, [hl]                                     ; $5385: $56
	ld   a, b                                        ; $5386: $78
	rst  $38                                         ; $5387: $ff
	ld   [hl], e                                     ; $5388: $73
	ld   [hl], $67                                   ; $5389: $36 $67
	ld   d, d                                        ; $538b: $52
	ld   a, a                                        ; $538c: $7f
	or   $46                                         ; $538d: $f6 $46
	ld   a, c                                        ; $538f: $79
	rst  $38                                         ; $5390: $ff
	ld   [hl], e                                     ; $5391: $73
	dec  [hl]                                        ; $5392: $35
	ld   e, b                                        ; $5393: $58
	ld   d, d                                        ; $5394: $52
	sbc  a                                           ; $5395: $9f
	push hl                                          ; $5396: $e5
	ld   d, a                                        ; $5397: $57

Call_0e6_5398:
	ld   a, d                                        ; $5398: $7a
	cp   $62                                         ; $5399: $fe $62
	ld   [hl], $68                                   ; $539b: $36 $68
	ld   b, d                                        ; $539d: $42
	xor  a                                           ; $539e: $af
	call nc, Call_0e6_6a57                           ; $539f: $d4 $57 $6a
	db   $fd                                         ; $53a2: $fd
	ld   h, d                                        ; $53a3: $62
	ld   [hl], $68                                   ; $53a4: $36 $68
	ld   b, e                                        ; $53a6: $43
	sbc  a                                           ; $53a7: $9f
	call nz, Call_0e6_6b67                           ; $53a8: $c4 $67 $6b
	db   $fc                                         ; $53ab: $fc
	ld   h, d                                        ; $53ac: $62
	ld   b, l                                        ; $53ad: $45
	ld   e, b                                        ; $53ae: $58
	ld   d, e                                        ; $53af: $53
	sbc  a                                           ; $53b0: $9f
	call nc, Call_0e6_6b67                           ; $53b1: $d4 $67 $6b
	db   $fd                                         ; $53b4: $fd
	ld   h, d                                        ; $53b5: $62
	ld   b, l                                        ; $53b6: $45
	ld   e, b                                        ; $53b7: $58
	ld   b, d                                        ; $53b8: $42
	xor  a                                           ; $53b9: $af
	call nz, Call_0e6_5a67                           ; $53ba: $c4 $67 $5a
	db   $fd                                         ; $53bd: $fd
	ld   h, d                                        ; $53be: $62
	ld   b, l                                        ; $53bf: $45
	ld   e, b                                        ; $53c0: $58
	ld   h, d                                        ; $53c1: $62
	adc  a                                           ; $53c2: $8f
	push de                                          ; $53c3: $d5
	ld   h, a                                        ; $53c4: $67
	ld   l, d                                        ; $53c5: $6a
	cp   $62                                         ; $53c6: $fe $62
	ld   b, l                                        ; $53c8: $45
	ld   e, b                                        ; $53c9: $58
	ld   d, d                                        ; $53ca: $52
	sbc  a                                           ; $53cb: $9f
	push de                                          ; $53cc: $d5
	ld   h, a                                        ; $53cd: $67
	ld   e, d                                        ; $53ce: $5a
	cp   $62                                         ; $53cf: $fe $62
	inc  [hl]                                        ; $53d1: $34
	ld   e, d                                        ; $53d2: $5a
	ld   h, c                                        ; $53d3: $61
	ld   e, a                                        ; $53d4: $5f
	or   $67                                         ; $53d5: $f6 $67
	ld   d, a                                        ; $53d7: $57
	rst  $38                                         ; $53d8: $ff
	add  d                                           ; $53d9: $82
	inc  [hl]                                        ; $53da: $34
	ld   c, b                                        ; $53db: $48
	ld   [hl], d                                     ; $53dc: $72
	ld   e, a                                        ; $53dd: $5f
	or   $57                                         ; $53de: $f6 $57
	ld   d, a                                        ; $53e0: $57
	rst  $38                                         ; $53e1: $ff
	add  d                                           ; $53e2: $82
	dec  h                                           ; $53e3: $25
	ld   c, c                                        ; $53e4: $49
	add  d                                           ; $53e5: $82
	cpl                                              ; $53e6: $2f
	ld   hl, sp+$67                                  ; $53e7: $f8 $67
	ld   d, l                                        ; $53e9: $55
	rst  $38                                         ; $53ea: $ff
	and  e                                           ; $53eb: $a3
	dec  h                                           ; $53ec: $25
	scf                                              ; $53ed: $37
	and  h                                           ; $53ee: $a4
	inc  e                                           ; $53ef: $1c
	ei                                               ; $53f0: $fb
	ld   h, [hl]                                     ; $53f1: $66
	ld   h, h                                        ; $53f2: $64
	rst  JumpTable                                         ; $53f3: $df
	push bc                                          ; $53f4: $c5
	inc  h                                           ; $53f5: $24
	ld   b, [hl]                                     ; $53f6: $46
	sub  l                                           ; $53f7: $95

jr_0e6_53f8:
	jr   jr_0e6_53f8                                 ; $53f8: $18 $fe

	ld   h, [hl]                                     ; $53fa: $66
	ld   h, h                                        ; $53fb: $64
	xor  a                                           ; $53fc: $af
	or   $24                                         ; $53fd: $f6 $24
	ld   b, h                                        ; $53ff: $44
	sub  a                                           ; $5400: $97
	inc  d                                           ; $5401: $14
	rst  $38                                         ; $5402: $ff
	ld   [hl], l                                     ; $5403: $75
	ld   h, h                                        ; $5404: $64
	ld   l, a                                        ; $5405: $6f
	ld   hl, sp+$23                                  ; $5406: $f8 $23
	ld   b, e                                        ; $5408: $43
	sbc  d                                           ; $5409: $9a
	ld   sp, $a6ef                                   ; $540a: $31 $ef $a6
	ld   [hl], l                                     ; $540d: $75
	dec  a                                           ; $540e: $3d
	db   $fc                                         ; $540f: $fc
	ld   d, e                                        ; $5410: $53
	ld   d, e                                        ; $5411: $53
	ld   e, d                                        ; $5412: $5a
	ld   h, c                                        ; $5413: $61
	ld   l, a                                        ; $5414: $6f
	push af                                          ; $5415: $f5
	ld   d, [hl]                                     ; $5416: $56
	ld   b, a                                        ; $5417: $47
	rst  $38                                         ; $5418: $ff
	sub  d                                           ; $5419: $92
	inc  [hl]                                        ; $541a: $34
	jr   c, @-$7b                                    ; $541b: $38 $83

	rra                                              ; $541d: $1f
	ld   sp, hl                                      ; $541e: $f9
	ld   d, [hl]                                     ; $541f: $56
	ld   d, h                                        ; $5420: $54
	rst  $28                                         ; $5421: $ef
	push bc                                          ; $5422: $c5
	dec  [hl]                                        ; $5423: $35
	dec  [hl]                                        ; $5424: $35
	sub  l                                           ; $5425: $95
	add  hl, de                                      ; $5426: $19
	db   $fd                                         ; $5427: $fd
	ld   d, [hl]                                     ; $5428: $56
	ld   h, e                                        ; $5429: $63
	adc  a                                           ; $542a: $8f
	ld   hl, sp+$34                                  ; $542b: $f8 $34
	ld   [hl-], a                                    ; $542d: $32
	ld   a, c                                        ; $542e: $79
	ld   [hl+], a                                    ; $542f: $22
	rst  $38                                         ; $5430: $ff
	ld   [hl], l                                     ; $5431: $75
	ld   [hl], l                                     ; $5432: $75
	ld   a, $fc                                      ; $5433: $3e $fc
	ld   b, h                                        ; $5435: $44
	ld   d, c                                        ; $5436: $51
	ld   e, d                                        ; $5437: $5a
	ld   h, c                                        ; $5438: $61
	xor  a                                           ; $5439: $af
	push de                                          ; $543a: $d5
	ld   [hl], a                                     ; $543b: $77
	daa                                              ; $543c: $27
	rst  $38                                         ; $543d: $ff
	add  e                                           ; $543e: $83
	ld   d, e                                        ; $543f: $53
	rla                                              ; $5440: $17
	sub  d                                           ; $5441: $92
	ccf                                              ; $5442: $3f
	rst  $30                                         ; $5443: $f7
	ld   d, a                                        ; $5444: $57
	ld   b, e                                        ; $5445: $43
	rst  $28                                         ; $5446: $ef
	push bc                                          ; $5447: $c5
	ld   b, h                                        ; $5448: $44
	inc  d                                           ; $5449: $14
	sub  [hl]                                        ; $544a: $96
	ld   a, [de]                                     ; $544b: $1a
	db   $fc                                         ; $544c: $fc
	ld   d, a                                        ; $544d: $57
	ld   h, d                                        ; $544e: $62
	adc  a                                           ; $544f: $8f
	ld   sp, hl                                      ; $5450: $f9
	ld   b, l                                        ; $5451: $45
	ld   [hl+], a                                    ; $5452: $22
	ld   l, b                                        ; $5453: $68
	inc  h                                           ; $5454: $24
	rst  $38                                         ; $5455: $ff
	add  [hl]                                        ; $5456: $86
	ld   h, e                                        ; $5457: $63
	ld   c, [hl]                                     ; $5458: $4e
	db   $fc                                         ; $5459: $fc
	ld   h, h                                        ; $545a: $64
	ld   b, c                                        ; $545b: $41
	ld   b, a                                        ; $545c: $47
	ld   d, d                                        ; $545d: $52
	rst  JumpTable                                         ; $545e: $df
	rst  ToBoot                                         ; $545f: $c7
	ld   [hl], l                                     ; $5460: $75
	ld   a, [hl-]                                    ; $5461: $3a
	cp   $95                                         ; $5462: $fe $95
	ld   d, c                                        ; $5464: $51
	ld   h, $63                                      ; $5465: $26 $63
	xor  a                                           ; $5467: $af
	reti                                             ; $5468: $d9


	ld   [hl], l                                     ; $5469: $75
	scf                                              ; $546a: $37
	rst  $38                                         ; $546b: $ff
	add  $52                                         ; $546c: $c6 $52
	inc  d                                           ; $546e: $14
	ld   b, e                                        ; $546f: $43
	sbc  a                                           ; $5470: $9f
	ld   a, [$3675]                                  ; $5471: $fa $75 $36
	rst  JumpTable                                         ; $5474: $df
	ret  c                                           ; $5475: $d8

	ld   d, c                                        ; $5476: $51
	inc  de                                          ; $5477: $13
	ld   b, h                                        ; $5478: $44
	sbc  a                                           ; $5479: $9f
	ld   a, [$3585]                                  ; $547a: $fa $85 $35
	rst  JumpTable                                         ; $547d: $df
	reti                                             ; $547e: $d9


	ld   h, c                                        ; $547f: $61
	ld   [de], a                                     ; $5480: $12
	inc  sp                                          ; $5481: $33
	cp   a                                           ; $5482: $bf
	db   $eb                                         ; $5483: $eb
	sub  l                                           ; $5484: $95
	ld   b, l                                        ; $5485: $45
	cp   [hl]                                        ; $5486: $be
	ret                                              ; $5487: $c9


	ld   [hl], c                                     ; $5488: $71
	ld   de, $ef25                                   ; $5489: $11 $25 $ef
	db   $dd                                         ; $548c: $dd
	add  l                                           ; $548d: $85
	ld   b, [hl]                                     ; $548e: $46
	call Call_0e6_61ba                               ; $548f: $cd $ba $61
	ld   de, $ff18                                   ; $5492: $11 $18 $ff
	rst  JumpTable                                         ; $5495: $df
	ld   [hl], l                                     ; $5496: $75
	ld   b, a                                        ; $5497: $47
	res  7, d                                        ; $5498: $cb $ba
	ld   b, c                                        ; $549a: $41
	ld   de, $ff7f                                   ; $549b: $11 $7f $ff
	ld   sp, hl                                      ; $549e: $f9
	ld   h, l                                        ; $549f: $65
	ld   l, e                                        ; $54a0: $6b
	cp   c                                           ; $54a1: $b9
	sub  h                                           ; $54a2: $94
	ld   de, $fd1b                                   ; $54a3: $11 $1b $fd
	rst  $38                                         ; $54a6: $ff
	sub  l                                           ; $54a7: $95
	adc  d                                           ; $54a8: $8a
	sbc  b                                           ; $54a9: $98
	add  a                                           ; $54aa: $87
	ld   de, $db1b                                   ; $54ab: $11 $1b $db
	rst  $38                                         ; $54ae: $ff
	add  l                                           ; $54af: $85
	adc  h                                           ; $54b0: $8c
	add  a                                           ; $54b1: $87
	add  [hl]                                        ; $54b2: $86
	ld   de, $db29                                   ; $54b3: $11 $29 $db
	rst  $38                                         ; $54b6: $ff
	add  a                                           ; $54b7: $87
	adc  h                                           ; $54b8: $8c
	add  a                                           ; $54b9: $87
	and  l                                           ; $54ba: $a5
	ld   de, $bb27                                   ; $54bb: $11 $27 $bb
	rst  $38                                         ; $54be: $ff
	cp   b                                           ; $54bf: $b8
	sbc  e                                           ; $54c0: $9b
	add  [hl]                                        ; $54c1: $86
	sub  l                                           ; $54c2: $95
	ld   de, $ba18                                   ; $54c3: $11 $18 $ba
	rst  $38                                         ; $54c6: $ff
	xor  b                                           ; $54c7: $a8
	xor  e                                           ; $54c8: $ab
	ld   [hl], l                                     ; $54c9: $75
	add  [hl]                                        ; $54ca: $86
	ld   de, $a917                                   ; $54cb: $11 $17 $a9
	rst  $38                                         ; $54ce: $ff
	cp   c                                           ; $54cf: $b9
	xor  e                                           ; $54d0: $ab
	ld   [hl], l                                     ; $54d1: $75
	add  l                                           ; $54d2: $85
	ld   bc, $aa17                                   ; $54d3: $01 $17 $aa
	rst  $28                                         ; $54d6: $ef
	jp   c, $64ab                                    ; $54d7: $da $ab $64

	ld   [hl], l                                     ; $54da: $75
	ld   de, $a917                                   ; $54db: $11 $17 $a9
	rst  $28                                         ; $54de: $ef
	set  1, h                                        ; $54df: $cb $cc
	ld   [hl], h                                     ; $54e1: $74
	ld   h, h                                        ; $54e2: $64
	ld   de, $9a16                                   ; $54e3: $11 $16 $9a
	rst  JumpTable                                         ; $54e6: $df
	db   $dd                                         ; $54e7: $dd
	cp   e                                           ; $54e8: $bb
	add  l                                           ; $54e9: $85
	ld   h, e                                        ; $54ea: $63
	ld   bc, $ba15                                   ; $54eb: $01 $15 $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54ee: $cf
	db   $fd                                         ; $54ef: $fd
	cp   l                                           ; $54f0: $bd
	and  l                                           ; $54f1: $a5
	ld   h, h                                        ; $54f2: $64
	ld   de, $7915                                   ; $54f3: $11 $15 $79
	rst  JumpTable                                         ; $54f6: $df
	db   $fd                                         ; $54f7: $fd
	db   $ec                                         ; $54f8: $ec
	sub  l                                           ; $54f9: $95
	ld   h, h                                        ; $54fa: $64
	ld   de, $6913                                   ; $54fb: $11 $13 $69
	rst  JumpTable                                         ; $54fe: $df
	db   $fd                                         ; $54ff: $fd
	xor  $a5                                         ; $5500: $ee $a5
	ld   h, h                                        ; $5502: $64
	ld   de, $5912                                   ; $5503: $11 $12 $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5506: $cf
	cp   $fc                                         ; $5507: $fe $fc
	or   a                                           ; $5509: $b7
	ld   [hl], h                                     ; $550a: $74
	ld   hl, $4811                                   ; $550b: $21 $11 $48
	xor  l                                           ; $550e: $ad
	rst  $38                                         ; $550f: $ff
	db   $ed                                         ; $5510: $ed
	ret                                              ; $5511: $c9


	ld   h, l                                        ; $5512: $65
	ld   sp, $3611                                   ; $5513: $31 $11 $36
	sbc  e                                           ; $5516: $9b
	rst  $28                                         ; $5517: $ef
	rst  $38                                         ; $5518: $ff
	ld   [$3276], a                                  ; $5519: $ea $76 $32
	ld   bc, $7a24                                   ; $551c: $01 $24 $7a
	sbc  $ff                                         ; $551f: $de $ff
	call c, Call_0e6_5398                            ; $5521: $dc $98 $53
	ld   hl, $5723                                   ; $5524: $21 $23 $57
	xor  h                                           ; $5527: $ac
	db   $dd                                         ; $5528: $dd
	sbc  $b9                                         ; $5529: $de $b9
	add  [hl]                                        ; $552b: $86
	inc  sp                                          ; $552c: $33
	inc  hl                                          ; $552d: $23
	ld   b, l                                        ; $552e: $45
	ld   a, c                                        ; $552f: $79
	cp   h                                           ; $5530: $bc
	call z, $99cb                                    ; $5531: $cc $cb $99
	ld   [hl], l                                     ; $5534: $75
	inc  sp                                          ; $5535: $33
	ld   b, h                                        ; $5536: $44
	ld   d, a                                        ; $5537: $57
	adc  c                                           ; $5538: $89
	cp   l                                           ; $5539: $bd
	cp   h                                           ; $553a: $bc
	cp   c                                           ; $553b: $b9
	sub  a                                           ; $553c: $97
	ld   [hl], l                                     ; $553d: $75
	ld   b, l                                        ; $553e: $45
	ld   d, [hl]                                     ; $553f: $56
	ld   h, a                                        ; $5540: $67
	adc  d                                           ; $5541: $8a
	cp   e                                           ; $5542: $bb
	cp   e                                           ; $5543: $bb
	xor  b                                           ; $5544: $a8
	add  a                                           ; $5545: $87
	ld   [hl], a                                     ; $5546: $77
	ld   h, [hl]                                     ; $5547: $66
	ld   h, [hl]                                     ; $5548: $66
	ld   [hl], a                                     ; $5549: $77
	sbc  c                                           ; $554a: $99
	sbc  d                                           ; $554b: $9a
	xor  c                                           ; $554c: $a9
	adc  c                                           ; $554d: $89
	adc  b                                           ; $554e: $88
	add  a                                           ; $554f: $87
	ld   [hl], a                                     ; $5550: $77
	ld   [hl], a                                     ; $5551: $77
	ld   a, b                                        ; $5552: $78
	adc  b                                           ; $5553: $88
	adc  b                                           ; $5554: $88
	adc  b                                           ; $5555: $88
	sbc  c                                           ; $5556: $99
	adc  b                                           ; $5557: $88
	adc  b                                           ; $5558: $88
	ld   [hl], a                                     ; $5559: $77
	ld   [hl], a                                     ; $555a: $77
	ld   a, b                                        ; $555b: $78
	add  a                                           ; $555c: $87
	ld   a, c                                        ; $555d: $79
	sbc  b                                           ; $555e: $98
	sbc  b                                           ; $555f: $98
	adc  b                                           ; $5560: $88
	sbc  c                                           ; $5561: $99
	adc  b                                           ; $5562: $88
	add  a                                           ; $5563: $87
	ld   [hl], a                                     ; $5564: $77
	adc  b                                           ; $5565: $88
	adc  b                                           ; $5566: $88
	sbc  c                                           ; $5567: $99
	adc  b                                           ; $5568: $88
	adc  b                                           ; $5569: $88
	ld   a, b                                        ; $556a: $78
	sbc  b                                           ; $556b: $98
	adc  b                                           ; $556c: $88
	ld   a, b                                        ; $556d: $78
	adc  b                                           ; $556e: $88
	adc  c                                           ; $556f: $89
	sbc  b                                           ; $5570: $98
	adc  b                                           ; $5571: $88
	adc  b                                           ; $5572: $88
	ld   a, b                                        ; $5573: $78
	adc  b                                           ; $5574: $88
	adc  b                                           ; $5575: $88
	sbc  b                                           ; $5576: $98
	adc  b                                           ; $5577: $88
	sbc  b                                           ; $5578: $98
	adc  b                                           ; $5579: $88
	adc  b                                           ; $557a: $88
	add  a                                           ; $557b: $87
	ld   a, b                                        ; $557c: $78
	adc  b                                           ; $557d: $88
	adc  b                                           ; $557e: $88
	adc  c                                           ; $557f: $89
	adc  b                                           ; $5580: $88
	sbc  b                                           ; $5581: $98
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
	adc  c                                           ; $558d: $89
	adc  b                                           ; $558e: $88
	sbc  b                                           ; $558f: $98
	adc  b                                           ; $5590: $88
	adc  b                                           ; $5591: $88
	adc  b                                           ; $5592: $88
	adc  b                                           ; $5593: $88
	adc  b                                           ; $5594: $88
	adc  b                                           ; $5595: $88

Call_0e6_5596:
	adc  c                                           ; $5596: $89
	adc  b                                           ; $5597: $88
	adc  b                                           ; $5598: $88
	adc  b                                           ; $5599: $88
	adc  b                                           ; $559a: $88
	adc  b                                           ; $559b: $88
	adc  b                                           ; $559c: $88
	adc  b                                           ; $559d: $88
	adc  b                                           ; $559e: $88
	adc  c                                           ; $559f: $89
	adc  b                                           ; $55a0: $88
	adc  b                                           ; $55a1: $88
	adc  b                                           ; $55a2: $88
	ld   a, b                                        ; $55a3: $78
	adc  b                                           ; $55a4: $88
	adc  b                                           ; $55a5: $88
	adc  b                                           ; $55a6: $88

Call_0e6_55a7:
	adc  c                                           ; $55a7: $89
	sbc  b                                           ; $55a8: $98
	adc  b                                           ; $55a9: $88
	adc  b                                           ; $55aa: $88
	adc  b                                           ; $55ab: $88
	adc  b                                           ; $55ac: $88
	adc  b                                           ; $55ad: $88
	adc  b                                           ; $55ae: $88
	sbc  b                                           ; $55af: $98
	adc  c                                           ; $55b0: $89
	sbc  c                                           ; $55b1: $99
	adc  b                                           ; $55b2: $88
	add  a                                           ; $55b3: $87
	ld   a, b                                        ; $55b4: $78
	adc  b                                           ; $55b5: $88
	adc  b                                           ; $55b6: $88
	adc  b                                           ; $55b7: $88
	adc  c                                           ; $55b8: $89
	adc  b                                           ; $55b9: $88
	sbc  b                                           ; $55ba: $98
	adc  b                                           ; $55bb: $88
	adc  b                                           ; $55bc: $88
	adc  b                                           ; $55bd: $88
	adc  b                                           ; $55be: $88
	adc  b                                           ; $55bf: $88
	adc  b                                           ; $55c0: $88
	adc  b                                           ; $55c1: $88
	sbc  b                                           ; $55c2: $98
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

Jump_0e6_55d9:
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
	add  a                                           ; $566f: $87
	adc  c                                           ; $5670: $89
	ld   a, b                                        ; $5671: $78
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
	add  a                                           ; $5682: $87
	adc  c                                           ; $5683: $89
	add  a                                           ; $5684: $87
	adc  b                                           ; $5685: $88
	adc  b                                           ; $5686: $88
	sbc  b                                           ; $5687: $98
	adc  b                                           ; $5688: $88
	adc  b                                           ; $5689: $88
	adc  b                                           ; $568a: $88
	adc  c                                           ; $568b: $89
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

Call_0e6_56b9:
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
	adc  c                                           ; $5729: $89
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
	ld   a, b                                        ; $573c: $78
	adc  b                                           ; $573d: $88
	adc  b                                           ; $573e: $88
	sbc  b                                           ; $573f: $98
	adc  b                                           ; $5740: $88
	adc  b                                           ; $5741: $88
	add  a                                           ; $5742: $87
	adc  b                                           ; $5743: $88
	adc  b                                           ; $5744: $88
	adc  b                                           ; $5745: $88
	ld   a, b                                        ; $5746: $78
	sbc  b                                           ; $5747: $98
	sbc  c                                           ; $5748: $99
	add  a                                           ; $5749: $87
	ld   a, b                                        ; $574a: $78
	sbc  c                                           ; $574b: $99
	adc  b                                           ; $574c: $88
	sbc  b                                           ; $574d: $98
	adc  b                                           ; $574e: $88
	add  a                                           ; $574f: $87
	adc  b                                           ; $5750: $88
	adc  b                                           ; $5751: $88
	ld   a, b                                        ; $5752: $78
	adc  b                                           ; $5753: $88
	adc  c                                           ; $5754: $89
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
	sbc  b                                           ; $5761: $98
	adc  b                                           ; $5762: $88
	ld   [hl], a                                     ; $5763: $77
	ld   a, b                                        ; $5764: $78
	adc  b                                           ; $5765: $88
	add  a                                           ; $5766: $87
	adc  b                                           ; $5767: $88
	adc  b                                           ; $5768: $88
	adc  c                                           ; $5769: $89
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

Jump_0e6_5775:
	adc  b                                           ; $5775: $88
	add  a                                           ; $5776: $87
	adc  b                                           ; $5777: $88
	adc  b                                           ; $5778: $88
	adc  b                                           ; $5779: $88
	adc  b                                           ; $577a: $88
	adc  b                                           ; $577b: $88
	adc  b                                           ; $577c: $88
	adc  b                                           ; $577d: $88
	sub  a                                           ; $577e: $97
	adc  c                                           ; $577f: $89
	adc  b                                           ; $5780: $88
	adc  b                                           ; $5781: $88
	adc  b                                           ; $5782: $88
	adc  b                                           ; $5783: $88
	adc  b                                           ; $5784: $88
	ld   [hl], a                                     ; $5785: $77

Call_0e6_5786:
	ld   a, b                                        ; $5786: $78
	add  a                                           ; $5787: $87
	adc  b                                           ; $5788: $88
	adc  b                                           ; $5789: $88
	adc  b                                           ; $578a: $88
	adc  c                                           ; $578b: $89
	sbc  c                                           ; $578c: $99
	adc  b                                           ; $578d: $88
	adc  b                                           ; $578e: $88
	ld   h, [hl]                                     ; $578f: $66
	ld   [hl], a                                     ; $5790: $77
	ld   h, [hl]                                     ; $5791: $66
	ld   h, a                                        ; $5792: $67
	ld   [hl], a                                     ; $5793: $77
	adc  b                                           ; $5794: $88
	sbc  d                                           ; $5795: $9a

Call_0e6_5796:
	xor  d                                           ; $5796: $aa
	xor  c                                           ; $5797: $a9
	xor  c                                           ; $5798: $a9
	sbc  c                                           ; $5799: $99
	add  a                                           ; $579a: $87
	ld   h, [hl]                                     ; $579b: $66
	ld   b, e                                        ; $579c: $43
	ld   h, a                                        ; $579d: $67
	ld   h, [hl]                                     ; $579e: $66
	adc  d                                           ; $579f: $8a
	sbc  d                                           ; $57a0: $9a
	cp   e                                           ; $57a1: $bb
	cp   d                                           ; $57a2: $ba
	sbc  d                                           ; $57a3: $9a
	sub  a                                           ; $57a4: $97
	adc  c                                           ; $57a5: $89
	add  [hl]                                        ; $57a6: $86
	ld   b, h                                        ; $57a7: $44
	inc  [hl]                                        ; $57a8: $34
	ld   h, a                                        ; $57a9: $67
	ld   a, b                                        ; $57aa: $78
	cp   e                                           ; $57ab: $bb
	xor  e                                           ; $57ac: $ab
	cp   h                                           ; $57ad: $bc
	xor  b                                           ; $57ae: $a8
	sbc  d                                           ; $57af: $9a
	add  a                                           ; $57b0: $87
	sbc  b                                           ; $57b1: $98
	ld   h, h                                        ; $57b2: $64
	ld   [hl+], a                                    ; $57b3: $22
	ld   b, [hl]                                     ; $57b4: $46
	ld   h, a                                        ; $57b5: $67
	xor  h                                           ; $57b6: $ac
	call z, $b9cd                                    ; $57b7: $cc $cd $b9
	ld   a, d                                        ; $57ba: $7a

Jump_0e6_57bb:
	sub  a                                           ; $57bb: $97
	ld   a, c                                        ; $57bc: $79
	add  h                                           ; $57bd: $84
	ld   hl, $7726                                   ; $57be: $21 $26 $77
	sbc  e                                           ; $57c1: $9b
	db   $ec                                         ; $57c2: $ec
	db   $dd                                         ; $57c3: $dd
	cp   c                                           ; $57c4: $b9
	ld   l, b                                        ; $57c5: $68
	add  a                                           ; $57c6: $87
	ld   l, b                                        ; $57c7: $68
	sub  l                                           ; $57c8: $95
	ld   hl, $7725                                   ; $57c9: $21 $25 $77
	sbc  h                                           ; $57cc: $9c
	db   $dd                                         ; $57cd: $dd
	db   $dd                                         ; $57ce: $dd
	cp   c                                           ; $57cf: $b9
	ld   h, a                                        ; $57d0: $67
	add  a                                           ; $57d1: $87
	ld   a, b                                        ; $57d2: $78
	sub  [hl]                                        ; $57d3: $96
	ld   sp, $8715                                   ; $57d4: $31 $15 $87
	adc  h                                           ; $57d7: $8c
	db   $ed                                         ; $57d8: $ed
	call z, Call_0e6_56b9                            ; $57d9: $cc $b9 $56
	sbc  b                                           ; $57dc: $98
	ld   a, b                                        ; $57dd: $78
	sub  a                                           ; $57de: $97
	ld   hl, $7715                                   ; $57df: $21 $15 $77
	sbc  h                                           ; $57e2: $9c
	cp   $cb                                         ; $57e3: $fe $cb
	xor  c                                           ; $57e5: $a9
	ld   d, [hl]                                     ; $57e6: $56
	adc  b                                           ; $57e7: $88
	ld   a, b                                        ; $57e8: $78
	sub  a                                           ; $57e9: $97
	ld   sp, $9815                                   ; $57ea: $31 $15 $98
	adc  h                                           ; $57ed: $8c
	rst  $38                                         ; $57ee: $ff
	res  6, a                                        ; $57ef: $cb $b7
	ld   d, l                                        ; $57f1: $55
	sbc  c                                           ; $57f2: $99
	ld   a, b                                        ; $57f3: $78
	xor  c                                           ; $57f4: $a9
	ld   hl, $8814                                   ; $57f5: $21 $14 $88
	sbc  l                                           ; $57f8: $9d
	rst  $38                                         ; $57f9: $ff
	res  2, a                                        ; $57fa: $cb $97
	ld   b, l                                        ; $57fc: $45
	sbc  d                                           ; $57fd: $9a
	adc  b                                           ; $57fe: $88
	sub  a                                           ; $57ff: $97
	ld   de, $a917                                   ; $5800: $11 $17 $a9
	sbc  [hl]                                        ; $5803: $9e
	cp   $ba                                         ; $5804: $fe $ba
	sub  a                                           ; $5806: $97
	ld   b, [hl]                                     ; $5807: $46
	xor  d                                           ; $5808: $aa
	adc  b                                           ; $5809: $88
	and  [hl]                                        ; $580a: $a6
	ld   de, $aa17                                   ; $580b: $11 $17 $aa
	cp   [hl]                                        ; $580e: $be
	cp   $98                                         ; $580f: $fe $98
	halt                                             ; $5811: $76
	ld   b, [hl]                                     ; $5812: $46
	cp   h                                           ; $5813: $bc
	add  a                                           ; $5814: $87
	ld   [hl], h                                     ; $5815: $74
	ld   de, $cb29                                   ; $5816: $11 $29 $cb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5819: $cf
	db   $fc                                         ; $581a: $fc
	add  a                                           ; $581b: $87
	ld   h, [hl]                                     ; $581c: $66
	ld   e, b                                        ; $581d: $58
	cp   e                                           ; $581e: $bb
	sub  a                                           ; $581f: $97
	ld   h, e                                        ; $5820: $63
	ld   de, $cc39                                   ; $5821: $11 $39 $cc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5824: $cf
	ei                                               ; $5825: $fb
	ld   [hl], l                                     ; $5826: $75
	halt                                             ; $5827: $76
	ld   l, c                                        ; $5828: $69
	bit  6, [hl]                                     ; $5829: $cb $76
	ld   d, e                                        ; $582b: $53
	ld   de, $dc3b                                   ; $582c: $11 $3b $dc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $582f: $cf
	ld   a, [$7766]                                  ; $5830: $fa $66 $77
	ld   a, d                                        ; $5833: $7a
	bit  4, l                                        ; $5834: $cb $65
	ld   b, d                                        ; $5836: $42
	ld   de, $cd6d                                   ; $5837: $11 $6d $cd
	rst  JumpTable                                         ; $583a: $df
	rst  $10                                         ; $583b: $d7
	ld   d, l                                        ; $583c: $55
	add  a                                           ; $583d: $87
	adc  e                                           ; $583e: $8b
	cp   b                                           ; $583f: $b8
	ld   d, h                                        ; $5840: $54
	ld   [hl+], a                                    ; $5841: $22
	ld   [de], a                                     ; $5842: $12
	cp   [hl]                                        ; $5843: $be
	call c, $a5ff                                    ; $5844: $dc $ff $a5
	ld   d, a                                        ; $5847: $57
	adc  c                                           ; $5848: $89
	sbc  e                                           ; $5849: $9b
	and  [hl]                                        ; $584a: $a6
	ld   b, h                                        ; $584b: $44
	ld   hl, $df14                                   ; $584c: $21 $14 $df
	db   $dd                                         ; $584f: $dd
	db   $fc                                         ; $5850: $fc
	ld   [hl], l                                     ; $5851: $75
	ld   e, c                                        ; $5852: $59
	sbc  c                                           ; $5853: $99
	cp   e                                           ; $5854: $bb
	add  l                                           ; $5855: $85
	ld   b, d                                        ; $5856: $42
	ld   de, $ee2a                                   ; $5857: $11 $2a $ee
	sbc  $e9                                         ; $585a: $de $e9
	ld   d, l                                        ; $585c: $55
	ld   a, c                                        ; $585d: $79
	sbc  c                                           ; $585e: $99
	cp   c                                           ; $585f: $b9
	ld   h, h                                        ; $5860: $64
	ld   sp, $6d11                                   ; $5861: $31 $11 $6d
	cp   $dd                                         ; $5864: $fe $dd
	or   a                                           ; $5866: $b7
	ld   d, l                                        ; $5867: $55
	sbc  c                                           ; $5868: $99
	xor  e                                           ; $5869: $ab
	xor  b                                           ; $586a: $a8
	ld   d, h                                        ; $586b: $54
	ld   hl, $bf12                                   ; $586c: $21 $12 $bf
	call c, $96ed                                    ; $586f: $dc $ed $96
	ld   d, a                                        ; $5872: $57
	sbc  d                                           ; $5873: $9a
	xor  d                                           ; $5874: $aa
	and  [hl]                                        ; $5875: $a6
	ld   b, e                                        ; $5876: $43
	ld   de, $ee18                                   ; $5877: $11 $18 $ee
	db   $dd                                         ; $587a: $dd
	jp   c, Jump_0e6_6865                            ; $587b: $da $65 $68

	xor  d                                           ; $587e: $aa
	cp   d                                           ; $587f: $ba
	ld   [hl], h                                     ; $5880: $74
	ld   b, d                                        ; $5881: $42
	ld   de, $ed3b                                   ; $5882: $11 $3b $ed
	db   $dd                                         ; $5885: $dd
	ret  z                                           ; $5886: $c8

	ld   h, l                                        ; $5887: $65
	ld   a, d                                        ; $5888: $7a
	xor  e                                           ; $5889: $ab
	xor  c                                           ; $588a: $a9
	ld   d, h                                        ; $588b: $54
	ld   sp, $7d11                                   ; $588c: $31 $11 $7d
	xor  $cd                                         ; $588f: $ee $cd
	sub  [hl]                                        ; $5891: $96
	ld   d, l                                        ; $5892: $55
	sbc  d                                           ; $5893: $9a
	cp   c                                           ; $5894: $b9

Call_0e6_5895:
	and  a                                           ; $5895: $a7
	ld   b, h                                        ; $5896: $44
	ld   hl, $bf15                                   ; $5897: $21 $15 $bf
	call c, $85dc                                    ; $589a: $dc $dc $85
	ld   d, a                                        ; $589d: $57
	sbc  e                                           ; $589e: $9b
	xor  d                                           ; $589f: $aa
	add  l                                           ; $58a0: $85
	ld   b, e                                        ; $58a1: $43
	ld   hl, $df29                                   ; $58a2: $21 $29 $df
	call c, Call_0e6_75ca                            ; $58a5: $dc $ca $75
	ld   l, b                                        ; $58a8: $68
	xor  e                                           ; $58a9: $ab
	sbc  c                                           ; $58aa: $99
	ld   h, l                                        ; $58ab: $65
	ld   [hl-], a                                    ; $58ac: $32
	ld   de, $fd8e                                   ; $58ad: $11 $8e $fd
	cp   l                                           ; $58b0: $bd
	xor  b                                           ; $58b1: $a8
	ld   d, l                                        ; $58b2: $55
	adc  d                                           ; $58b3: $8a
	cp   c                                           ; $58b4: $b9
	sub  a                                           ; $58b5: $97
	ld   d, h                                        ; $58b6: $54
	ld   hl, $cf15                                   ; $58b7: $21 $15 $cf
	db   $ec                                         ; $58ba: $ec
	call z, Call_0e6_5786                            ; $58bb: $cc $86 $57
	adc  e                                           ; $58be: $8b
	cp   c                                           ; $58bf: $b9
	add  l                                           ; $58c0: $85
	ld   d, e                                        ; $58c1: $53
	ld   hl, $ef19                                   ; $58c2: $21 $19 $ef
	call c, Call_0e6_75da                            ; $58c5: $dc $da $75
	ld   h, a                                        ; $58c8: $67
	sbc  h                                           ; $58c9: $9c
	xor  c                                           ; $58ca: $a9
	ld   [hl], l                                     ; $58cb: $75
	ld   b, d                                        ; $58cc: $42
	ld   de, $fe5c                                   ; $58cd: $11 $5c $fe
	db   $dd                                         ; $58d0: $dd
	cp   b                                           ; $58d1: $b8
	ld   h, l                                        ; $58d2: $65
	ld   a, b                                        ; $58d3: $78
	res  4, a                                        ; $58d4: $cb $a7
	ld   d, h                                        ; $58d6: $54
	ld   [hl-], a                                    ; $58d7: $32
	inc  de                                          ; $58d8: $13
	xor  l                                           ; $58d9: $ad
	db   $ed                                         ; $58da: $ed
	call z, Call_0e6_55a7                            ; $58db: $cc $a7 $55
	ld   a, d                                        ; $58de: $7a
	cp   d                                           ; $58df: $ba
	sub  [hl]                                        ; $58e0: $96
	ld   d, e                                        ; $58e1: $53
	ld   de, $ef19                                   ; $58e2: $11 $19 $ef
	res  7, h                                        ; $58e5: $cb $bc
	and  [hl]                                        ; $58e7: $a6
	ld   d, [hl]                                     ; $58e8: $56
	sbc  e                                           ; $58e9: $9b
	cp   c                                           ; $58ea: $b9
	ld   h, l                                        ; $58eb: $65
	ld   b, e                                        ; $58ec: $43
	ld   bc, $ef5b                                   ; $58ed: $01 $5b $ef
	db   $db                                         ; $58f0: $db
	jp   z, Jump_0e6_5775                            ; $58f1: $ca $75 $57

	cp   e                                           ; $58f4: $bb
	and  a                                           ; $58f5: $a7
	ld   h, h                                        ; $58f6: $64
	ld   sp, $9d13                                   ; $58f7: $31 $13 $9d
	db   $fd                                         ; $58fa: $fd
	res  7, c                                        ; $58fb: $cb $b9
	ld   h, l                                        ; $58fd: $65
	ld   l, c                                        ; $58fe: $69
	res  0, [hl]                                     ; $58ff: $cb $86
	ld   d, h                                        ; $5901: $54
	ld   sp, $ce16                                   ; $5902: $31 $16 $ce
	db   $dd                                         ; $5905: $dd
	res  6, a                                        ; $5906: $cb $b7
	ld   h, l                                        ; $5908: $65
	ld   a, e                                        ; $5909: $7b
	cp   e                                           ; $590a: $bb
	add  [hl]                                        ; $590b: $86
	ld   d, e                                        ; $590c: $53
	ld   hl, $ce39                                   ; $590d: $21 $39 $ce
	res  7, h                                        ; $5910: $cb $bc
	or   a                                           ; $5912: $b7
	ld   d, l                                        ; $5913: $55
	ld   a, d                                        ; $5914: $7a
	jp   z, Jump_0e6_4376                            ; $5915: $ca $76 $43

	ld   de, $dd5a                                   ; $5918: $11 $5a $dd
	res  7, h                                        ; $591b: $cb $bc
	and  a                                           ; $591d: $a7
	ld   d, l                                        ; $591e: $55
	sbc  e                                           ; $591f: $9b
	cp   c                                           ; $5920: $b9
	ld   [hl], l                                     ; $5921: $75
	ld   b, e                                        ; $5922: $43
	ld   [de], a                                     ; $5923: $12
	ld   l, d                                        ; $5924: $6a
	call c, $bcba                                    ; $5925: $dc $ba $bc
	and  a                                           ; $5928: $a7
	ld   h, [hl]                                     ; $5929: $66
	adc  d                                           ; $592a: $8a
	xor  b                                           ; $592b: $a8
	halt                                             ; $592c: $76
	ld   d, h                                        ; $592d: $54
	inc  hl                                          ; $592e: $23
	ld   l, c                                        ; $592f: $69
	cp   e                                           ; $5930: $bb
	cp   c                                           ; $5931: $b9
	cp   h                                           ; $5932: $bc
	xor  c                                           ; $5933: $a9
	ld   h, a                                        ; $5934: $67
	sbc  c                                           ; $5935: $99
	sbc  b                                           ; $5936: $98
	halt                                             ; $5937: $76
	ld   h, l                                        ; $5938: $65
	ld   b, e                                        ; $5939: $43
	ld   e, b                                        ; $593a: $58
	xor  c                                           ; $593b: $a9
	sbc  c                                           ; $593c: $99
	xor  e                                           ; $593d: $ab
	cp   d                                           ; $593e: $ba
	add  a                                           ; $593f: $87
	adc  c                                           ; $5940: $89
	xor  c                                           ; $5941: $a9
	ld   [hl], a                                     ; $5942: $77
	ld   [hl], a                                     ; $5943: $77
	ld   h, l                                        ; $5944: $65
	ld   b, [hl]                                     ; $5945: $46
	sbc  c                                           ; $5946: $99
	adc  b                                           ; $5947: $88
	adc  b                                           ; $5948: $88
	xor  d                                           ; $5949: $aa
	sbc  b                                           ; $594a: $98
	adc  c                                           ; $594b: $89
	sbc  c                                           ; $594c: $99
	adc  c                                           ; $594d: $89
	sbc  b                                           ; $594e: $98
	add  a                                           ; $594f: $87
	ld   h, [hl]                                     ; $5950: $66
	ld   h, a                                        ; $5951: $67
	adc  b                                           ; $5952: $88
	ld   [hl], a                                     ; $5953: $77
	ld   a, c                                        ; $5954: $79
	sbc  c                                           ; $5955: $99
	sbc  c                                           ; $5956: $99
	adc  c                                           ; $5957: $89
	sbc  c                                           ; $5958: $99
	sbc  c                                           ; $5959: $99
	adc  b                                           ; $595a: $88
	sbc  b                                           ; $595b: $98
	halt                                             ; $595c: $76
	ld   h, a                                        ; $595d: $67
	adc  b                                           ; $595e: $88
	ld   [hl], a                                     ; $595f: $77
	ld   a, b                                        ; $5960: $78
	adc  b                                           ; $5961: $88
	adc  b                                           ; $5962: $88
	adc  b                                           ; $5963: $88
	sbc  d                                           ; $5964: $9a
	sbc  c                                           ; $5965: $99
	sbc  c                                           ; $5966: $99
	sbc  c                                           ; $5967: $99
	ld   [hl], a                                     ; $5968: $77
	ld   [hl], a                                     ; $5969: $77
	adc  b                                           ; $596a: $88
	ld   [hl], a                                     ; $596b: $77
	ld   [hl], a                                     ; $596c: $77
	ld   [hl], a                                     ; $596d: $77
	adc  b                                           ; $596e: $88
	adc  b                                           ; $596f: $88
	adc  c                                           ; $5970: $89
	xor  c                                           ; $5971: $a9
	sbc  c                                           ; $5972: $99
	sbc  c                                           ; $5973: $99
	adc  c                                           ; $5974: $89
	adc  b                                           ; $5975: $88
	adc  b                                           ; $5976: $88
	ld   [hl], a                                     ; $5977: $77
	halt                                             ; $5978: $76
	ld   h, a                                        ; $5979: $67
	ld   [hl], a                                     ; $597a: $77
	adc  b                                           ; $597b: $88
	adc  b                                           ; $597c: $88
	adc  c                                           ; $597d: $89
	sbc  c                                           ; $597e: $99
	sbc  d                                           ; $597f: $9a
	xor  d                                           ; $5980: $aa
	sbc  b                                           ; $5981: $98
	adc  b                                           ; $5982: $88
	ld   [hl], a                                     ; $5983: $77
	ld   [hl], a                                     ; $5984: $77
	ld   [hl], a                                     ; $5985: $77
	ld   [hl], a                                     ; $5986: $77
	ld   [hl], a                                     ; $5987: $77
	ld   [hl], a                                     ; $5988: $77
	ld   a, b                                        ; $5989: $78
	sbc  c                                           ; $598a: $99
	sbc  d                                           ; $598b: $9a
	sbc  c                                           ; $598c: $99
	sbc  c                                           ; $598d: $99
	sbc  b                                           ; $598e: $98
	sbc  c                                           ; $598f: $99
	adc  b                                           ; $5990: $88
	adc  b                                           ; $5991: $88
	ld   [hl], a                                     ; $5992: $77
	ld   [hl], a                                     ; $5993: $77
	ld   [hl], a                                     ; $5994: $77
	ld   [hl], a                                     ; $5995: $77
	adc  b                                           ; $5996: $88
	adc  c                                           ; $5997: $89
	sbc  c                                           ; $5998: $99
	adc  c                                           ; $5999: $89
	sbc  c                                           ; $599a: $99
	sbc  d                                           ; $599b: $9a
	sbc  b                                           ; $599c: $98
	sbc  b                                           ; $599d: $98
	adc  b                                           ; $599e: $88
	ld   [hl], a                                     ; $599f: $77
	ld   [hl], a                                     ; $59a0: $77
	ld   [hl], a                                     ; $59a1: $77
	ld   [hl], a                                     ; $59a2: $77
	ld   [hl], a                                     ; $59a3: $77
	ld   [hl], a                                     ; $59a4: $77
	adc  b                                           ; $59a5: $88
	adc  c                                           ; $59a6: $89
	sbc  c                                           ; $59a7: $99
	sbc  c                                           ; $59a8: $99
	sbc  b                                           ; $59a9: $98
	adc  c                                           ; $59aa: $89
	adc  b                                           ; $59ab: $88
	adc  b                                           ; $59ac: $88
	ld   [hl], a                                     ; $59ad: $77
	ld   [hl], a                                     ; $59ae: $77
	ld   [hl], a                                     ; $59af: $77
	ld   [hl], a                                     ; $59b0: $77
	ld   [hl], a                                     ; $59b1: $77
	adc  b                                           ; $59b2: $88
	adc  c                                           ; $59b3: $89
	adc  b                                           ; $59b4: $88
	adc  c                                           ; $59b5: $89
	sbc  c                                           ; $59b6: $99
	sbc  c                                           ; $59b7: $99
	sbc  b                                           ; $59b8: $98
	adc  b                                           ; $59b9: $88
	ld   [hl], a                                     ; $59ba: $77
	ld   [hl], a                                     ; $59bb: $77
	ld   [hl], a                                     ; $59bc: $77
	ld   [hl], a                                     ; $59bd: $77
	ld   [hl], a                                     ; $59be: $77
	adc  b                                           ; $59bf: $88
	adc  b                                           ; $59c0: $88
	adc  c                                           ; $59c1: $89
	sbc  b                                           ; $59c2: $98
	adc  b                                           ; $59c3: $88
	sbc  b                                           ; $59c4: $98
	sbc  b                                           ; $59c5: $98
	adc  b                                           ; $59c6: $88
	adc  b                                           ; $59c7: $88
	ld   [hl], a                                     ; $59c8: $77
	ld   [hl], a                                     ; $59c9: $77
	ld   [hl], a                                     ; $59ca: $77
	ld   [hl], a                                     ; $59cb: $77
	adc  b                                           ; $59cc: $88
	adc  b                                           ; $59cd: $88
	adc  c                                           ; $59ce: $89
	sbc  b                                           ; $59cf: $98
	sbc  c                                           ; $59d0: $99
	adc  b                                           ; $59d1: $88
	adc  b                                           ; $59d2: $88
	adc  b                                           ; $59d3: $88
	adc  b                                           ; $59d4: $88
	add  a                                           ; $59d5: $87
	ld   [hl], a                                     ; $59d6: $77
	add  a                                           ; $59d7: $87
	ld   [hl], a                                     ; $59d8: $77
	ld   a, b                                        ; $59d9: $78
	adc  b                                           ; $59da: $88
	adc  b                                           ; $59db: $88
	adc  c                                           ; $59dc: $89
	sbc  c                                           ; $59dd: $99
	sbc  c                                           ; $59de: $99
	sbc  c                                           ; $59df: $99
	adc  b                                           ; $59e0: $88
	adc  c                                           ; $59e1: $89
	adc  b                                           ; $59e2: $88
	adc  b                                           ; $59e3: $88
	adc  b                                           ; $59e4: $88
	ld   [hl], a                                     ; $59e5: $77
	ld   [hl], a                                     ; $59e6: $77
	adc  b                                           ; $59e7: $88
	adc  b                                           ; $59e8: $88
	adc  b                                           ; $59e9: $88
	adc  b                                           ; $59ea: $88
	adc  c                                           ; $59eb: $89
	sbc  c                                           ; $59ec: $99
	sbc  b                                           ; $59ed: $98
	adc  b                                           ; $59ee: $88
	adc  c                                           ; $59ef: $89
	adc  b                                           ; $59f0: $88
	adc  b                                           ; $59f1: $88
	adc  b                                           ; $59f2: $88
	ld   [hl], a                                     ; $59f3: $77
	adc  b                                           ; $59f4: $88
	adc  b                                           ; $59f5: $88
	adc  b                                           ; $59f6: $88
	adc  c                                           ; $59f7: $89
	adc  b                                           ; $59f8: $88
	adc  b                                           ; $59f9: $88
	sbc  c                                           ; $59fa: $99
	adc  c                                           ; $59fb: $89
	adc  b                                           ; $59fc: $88
	adc  b                                           ; $59fd: $88
	add  a                                           ; $59fe: $87
	adc  b                                           ; $59ff: $88
	adc  b                                           ; $5a00: $88
	adc  b                                           ; $5a01: $88
	adc  b                                           ; $5a02: $88
	adc  b                                           ; $5a03: $88
	ld   [hl], a                                     ; $5a04: $77
	adc  c                                           ; $5a05: $89
	adc  c                                           ; $5a06: $89
	sbc  c                                           ; $5a07: $99
	sbc  c                                           ; $5a08: $99
	sbc  b                                           ; $5a09: $98
	adc  b                                           ; $5a0a: $88
	adc  b                                           ; $5a0b: $88
	adc  b                                           ; $5a0c: $88
	adc  b                                           ; $5a0d: $88
	add  a                                           ; $5a0e: $87
	ld   a, b                                        ; $5a0f: $78
	adc  b                                           ; $5a10: $88
	adc  b                                           ; $5a11: $88
	adc  c                                           ; $5a12: $89
	adc  b                                           ; $5a13: $88
	adc  b                                           ; $5a14: $88
	sbc  b                                           ; $5a15: $98
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
	sbc  b                                           ; $5a23: $98
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
	adc  c                                           ; $5a4c: $89
	adc  b                                           ; $5a4d: $88
	adc  b                                           ; $5a4e: $88
	adc  b                                           ; $5a4f: $88
	adc  b                                           ; $5a50: $88
	ld   a, b                                        ; $5a51: $78
	add  a                                           ; $5a52: $87
	adc  b                                           ; $5a53: $88
	adc  b                                           ; $5a54: $88
	adc  b                                           ; $5a55: $88
	adc  b                                           ; $5a56: $88
	adc  c                                           ; $5a57: $89
	sbc  b                                           ; $5a58: $98
	sbc  c                                           ; $5a59: $99
	adc  b                                           ; $5a5a: $88
	adc  b                                           ; $5a5b: $88
	adc  b                                           ; $5a5c: $88
	adc  b                                           ; $5a5d: $88
	add  a                                           ; $5a5e: $87
	ld   [hl], a                                     ; $5a5f: $77
	ld   a, b                                        ; $5a60: $78
	add  a                                           ; $5a61: $87
	adc  b                                           ; $5a62: $88
	adc  b                                           ; $5a63: $88
	sbc  b                                           ; $5a64: $98
	adc  c                                           ; $5a65: $89
	adc  b                                           ; $5a66: $88

Call_0e6_5a67:
	sbc  b                                           ; $5a67: $98
	adc  b                                           ; $5a68: $88
	adc  b                                           ; $5a69: $88
	ld   [hl], a                                     ; $5a6a: $77
	ld   [hl], a                                     ; $5a6b: $77
	ld   [hl], a                                     ; $5a6c: $77
	ld   [hl], a                                     ; $5a6d: $77
	ld   a, b                                        ; $5a6e: $78
	adc  b                                           ; $5a6f: $88
	sbc  c                                           ; $5a70: $99
	adc  b                                           ; $5a71: $88
	sbc  b                                           ; $5a72: $98
	sbc  c                                           ; $5a73: $99
	adc  b                                           ; $5a74: $88
	adc  b                                           ; $5a75: $88
	ld   [hl], a                                     ; $5a76: $77
	ld   [hl], a                                     ; $5a77: $77
	ld   [hl], a                                     ; $5a78: $77
	ld   [hl], a                                     ; $5a79: $77
	adc  b                                           ; $5a7a: $88
	adc  c                                           ; $5a7b: $89
	adc  c                                           ; $5a7c: $89
	sbc  c                                           ; $5a7d: $99
	sbc  b                                           ; $5a7e: $98
	sub  a                                           ; $5a7f: $97
	adc  c                                           ; $5a80: $89
	add  a                                           ; $5a81: $87
	ld   [hl], a                                     ; $5a82: $77
	halt                                             ; $5a83: $76
	ld   [hl], a                                     ; $5a84: $77
	ld   [hl], a                                     ; $5a85: $77
	adc  c                                           ; $5a86: $89
	adc  c                                           ; $5a87: $89
	sbc  c                                           ; $5a88: $99
	sbc  c                                           ; $5a89: $99
	sbc  b                                           ; $5a8a: $98
	ld   [hl], a                                     ; $5a8b: $77
	adc  b                                           ; $5a8c: $88
	add  a                                           ; $5a8d: $87
	halt                                             ; $5a8e: $76
	ld   h, a                                        ; $5a8f: $67
	adc  b                                           ; $5a90: $88
	adc  b                                           ; $5a91: $88
	sbc  c                                           ; $5a92: $99
	xor  d                                           ; $5a93: $aa
	sbc  c                                           ; $5a94: $99
	sbc  c                                           ; $5a95: $99
	add  a                                           ; $5a96: $87
	ld   [hl], a                                     ; $5a97: $77
	adc  b                                           ; $5a98: $88
	ld   [hl], a                                     ; $5a99: $77
	ld   h, [hl]                                     ; $5a9a: $66
	ld   a, c                                        ; $5a9b: $79
	adc  c                                           ; $5a9c: $89
	sbc  c                                           ; $5a9d: $99
	xor  c                                           ; $5a9e: $a9
	xor  c                                           ; $5a9f: $a9
	adc  b                                           ; $5aa0: $88
	halt                                             ; $5aa1: $76
	ld   h, a                                        ; $5aa2: $67
	ld   [hl], a                                     ; $5aa3: $77
	ld   [hl], a                                     ; $5aa4: $77
	ld   h, [hl]                                     ; $5aa5: $66
	adc  c                                           ; $5aa6: $89
	xor  c                                           ; $5aa7: $a9
	adc  c                                           ; $5aa8: $89
	xor  d                                           ; $5aa9: $aa
	sbc  c                                           ; $5aaa: $99
	sub  a                                           ; $5aab: $97
	ld   [hl], l                                     ; $5aac: $75
	ld   d, [hl]                                     ; $5aad: $56
	ld   a, c                                        ; $5aae: $79
	sub  a                                           ; $5aaf: $97
	ld   h, a                                        ; $5ab0: $67
	xor  e                                           ; $5ab1: $ab
	xor  d                                           ; $5ab2: $aa
	adc  c                                           ; $5ab3: $89
	sbc  d                                           ; $5ab4: $9a
	xor  b                                           ; $5ab5: $a8
	add  a                                           ; $5ab6: $87
	ld   h, h                                        ; $5ab7: $64
	dec  [hl]                                        ; $5ab8: $35
	ld   a, c                                        ; $5ab9: $79
	xor  b                                           ; $5aba: $a8
	ld   [hl], a                                     ; $5abb: $77
	xor  e                                           ; $5abc: $ab
	cp   c                                           ; $5abd: $b9
	adc  b                                           ; $5abe: $88
	sbc  d                                           ; $5abf: $9a
	add  a                                           ; $5ac0: $87
	ld   h, l                                        ; $5ac1: $65
	ld   b, d                                        ; $5ac2: $42
	ld   [hl], $9b                                   ; $5ac3: $36 $9b
	xor  c                                           ; $5ac5: $a9
	sbc  e                                           ; $5ac6: $9b
	call c, Call_0e6_7897                            ; $5ac7: $dc $97 $78
	xor  c                                           ; $5aca: $a9
	ld   [hl], l                                     ; $5acb: $75
	ld   [hl-], a                                    ; $5acc: $32
	inc  de                                          ; $5acd: $13
	ld   a, d                                        ; $5ace: $7a
	db   $eb                                         ; $5acf: $eb
	xor  d                                           ; $5ad0: $aa
	cp   h                                           ; $5ad1: $bc
	ret                                              ; $5ad2: $c9


	ld   h, [hl]                                     ; $5ad3: $66
	ld   a, d                                        ; $5ad4: $7a
	sub  [hl]                                        ; $5ad5: $96
	ld   d, d                                        ; $5ad6: $52
	ld   de, $de59                                   ; $5ad7: $11 $59 $de
	res  5, l                                        ; $5ada: $cb $ad
	jp   z, Jump_0e6_6865                            ; $5adc: $ca $65 $68

	cp   b                                           ; $5adf: $b8
	ld   d, e                                        ; $5ae0: $53
	ld   de, $ef3a                                   ; $5ae1: $11 $3a $ef
	db   $db                                         ; $5ae4: $db
	xor  h                                           ; $5ae5: $ac
	jp   z, $6864                                    ; $5ae6: $ca $64 $68

	cp   c                                           ; $5ae9: $b9
	ld   d, d                                        ; $5aea: $52
	ld   de, $ff2a                                   ; $5aeb: $11 $2a $ff
	ei                                               ; $5aee: $fb
	xor  e                                           ; $5aef: $ab
	cp   b                                           ; $5af0: $b8
	ld   b, e                                        ; $5af1: $43
	ld   l, e                                        ; $5af2: $6b
	jp   c, $1152                                    ; $5af3: $da $52 $11

	ld   a, [hl+]                                    ; $5af6: $2a
	rst  $38                                         ; $5af7: $ff
	db   $fc                                         ; $5af8: $fc
	cp   c                                           ; $5af9: $b9
	and  [hl]                                        ; $5afa: $a6
	inc  [hl]                                        ; $5afb: $34
	adc  h                                           ; $5afc: $8c
	reti                                             ; $5afd: $d9


	ld   b, c                                        ; $5afe: $41
	ld   de, $ff3c                                   ; $5aff: $11 $3c $ff
	ei                                               ; $5b02: $fb
	sbc  c                                           ; $5b03: $99
	add  l                                           ; $5b04: $85
	ld   [hl], $ae                                   ; $5b05: $36 $ae
	rst  ToBoot                                         ; $5b07: $c7
	ld   hl, $7f11                                   ; $5b08: $21 $11 $7f
	rst  $38                                         ; $5b0b: $ff
	ld   [$6487], a                                  ; $5b0c: $ea $87 $64
	ld   c, b                                        ; $5b0f: $48
	adc  $a3                                         ; $5b10: $ce $a3
	ld   de, $bf12                                   ; $5b12: $11 $12 $bf
	rst  $38                                         ; $5b15: $ff
	ret                                              ; $5b16: $c9


	ld   h, [hl]                                     ; $5b17: $66
	ld   d, l                                        ; $5b18: $55
	ld   a, h                                        ; $5b19: $7c
	db   $ec                                         ; $5b1a: $ec
	ld   h, c                                        ; $5b1b: $61
	ld   de, $ff18                                   ; $5b1c: $11 $18 $ff
	cp   $95                                         ; $5b1f: $fe $95
	ld   b, l                                        ; $5b21: $45
	ld   d, a                                        ; $5b22: $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b23: $cf
	rst  $10                                         ; $5b24: $d7
	ld   de, $4d11                                   ; $5b25: $11 $11 $4d
	rst  $38                                         ; $5b28: $ff
	ld   a, [$4563]                                  ; $5b29: $fa $63 $45
	ld   a, h                                        ; $5b2c: $7c
	rst  $38                                         ; $5b2d: $ff
	add  c                                           ; $5b2e: $81
	ld   de, $cf13                                   ; $5b2f: $11 $13 $cf
	rst  $38                                         ; $5b32: $ff
	push bc                                          ; $5b33: $c5
	inc  sp                                          ; $5b34: $33
	ld   e, b                                        ; $5b35: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b36: $cf
	ld   sp, hl                                      ; $5b37: $f9
	ld   de, $2a11                                   ; $5b38: $11 $11 $2a
	rst  $38                                         ; $5b3b: $ff
	cp   $52                                         ; $5b3c: $fe $52
	ld   h, $9d                                      ; $5b3e: $26 $9d
	rst  $38                                         ; $5b40: $ff
	and  c                                           ; $5b41: $a1
	ld   de, $af13                                   ; $5b42: $11 $13 $af
	rst  $38                                         ; $5b45: $ff
	push de                                          ; $5b46: $d5
	ld   de, $ef5a                                   ; $5b47: $11 $5a $ef
	add  sp, $11                                     ; $5b4a: $e8 $11
	ld   de, $ff3a                                   ; $5b4c: $11 $3a $ff
	db   $fd                                         ; $5b4f: $fd
	ld   b, c                                        ; $5b50: $41
	ld   d, $bf                                      ; $5b51: $16 $bf
	db   $fd                                         ; $5b53: $fd
	ld   [hl], c                                     ; $5b54: $71
	ld   de, $af14                                   ; $5b55: $11 $14 $af
	rst  $38                                         ; $5b58: $ff
	call nc, Call_0e6_7c11                           ; $5b59: $d4 $11 $7c
	rst  $38                                         ; $5b5c: $ff
	add  $11                                         ; $5b5d: $c6 $11
	ld   [de], a                                     ; $5b5f: $12
	ld   c, e                                        ; $5b60: $4b
	rst  $38                                         ; $5b61: $ff
	ei                                               ; $5b62: $fb
	ld   sp, $ef29                                   ; $5b63: $31 $29 $ef
	ei                                               ; $5b66: $fb
	ld   b, c                                        ; $5b67: $41
	ld   de, $cf46                                   ; $5b68: $11 $46 $cf
	rst  $38                                         ; $5b6b: $ff
	and  d                                           ; $5b6c: $a2
	inc  de                                          ; $5b6d: $13
	xor  a                                           ; $5b6e: $af
	rst  $38                                         ; $5b6f: $ff
	sub  d                                           ; $5b70: $92
	ld   de, $6c15                                   ; $5b71: $11 $15 $6c
	rst  $38                                         ; $5b74: $ff
	rst  $30                                         ; $5b75: $f7
	ld   de, $ff5c                                   ; $5b76: $11 $5c $ff
	rst  $10                                         ; $5b79: $d7
	ld   de, $5713                                   ; $5b7a: $11 $13 $57
	rst  $38                                         ; $5b7d: $ff
	cp   $41                                         ; $5b7e: $fe $41
	rla                                              ; $5b80: $17
	rst  $28                                         ; $5b81: $ef
	ld   a, [$1141]                                  ; $5b82: $fa $41 $11
	ld   d, [hl]                                     ; $5b85: $56
	sbc  a                                           ; $5b86: $9f
	rst  $38                                         ; $5b87: $ff
	and  e                                           ; $5b88: $a3
	inc  d                                           ; $5b89: $14
	cp   a                                           ; $5b8a: $bf
	cp   $71                                         ; $5b8b: $fe $71
	ld   de, $6c36                                   ; $5b8d: $11 $36 $6c
	rst  $38                                         ; $5b90: $ff
	or   $12                                         ; $5b91: $f6 $12
	ld   a, [hl]                                     ; $5b93: $7e
	rst  $38                                         ; $5b94: $ff
	and  e                                           ; $5b95: $a3
	ld   de, $6816                                   ; $5b96: $11 $16 $68
	rst  $38                                         ; $5b99: $ff
	ld   a, [$4c22]                                  ; $5b9a: $fa $22 $4c
	rst  $38                                         ; $5b9d: $ff
	add  $11                                         ; $5b9e: $c6 $11
	inc  d                                           ; $5ba0: $14
	ld   [hl], a                                     ; $5ba1: $77
	rst  $38                                         ; $5ba2: $ff
	db   $fd                                         ; $5ba3: $fd
	ld   sp, $ff3a                                   ; $5ba4: $31 $3a $ff
	rst  $20                                         ; $5ba7: $e7
	ld   de, $7712                                   ; $5ba8: $11 $12 $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bab: $cf
	rst  $38                                         ; $5bac: $ff
	ld   d, c                                        ; $5bad: $51
	jr   z, @+$01                                    ; $5bae: $28 $ff

	ld   hl, sp+$21                                  ; $5bb0: $f8 $21
	ld   de, $af66                                   ; $5bb2: $11 $66 $af
	rst  $38                                         ; $5bb5: $ff
	add  d                                           ; $5bb6: $82
	ld   h, $ef                                      ; $5bb7: $26 $ef
	ei                                               ; $5bb9: $fb
	ld   b, c                                        ; $5bba: $41
	ld   de, $8f56                                   ; $5bbb: $11 $56 $8f
	rst  $38                                         ; $5bbe: $ff
	and  c                                           ; $5bbf: $a1
	dec  h                                           ; $5bc0: $25
	rst  $28                                         ; $5bc1: $ef
	ei                                               ; $5bc2: $fb
	ld   b, c                                        ; $5bc3: $41
	ld   de, $8f46                                   ; $5bc4: $11 $46 $8f
	rst  $38                                         ; $5bc7: $ff
	sub  d                                           ; $5bc8: $92
	dec  h                                           ; $5bc9: $25
	rst  JumpTable                                         ; $5bca: $df
	ld   a, [$1141]                                  ; $5bcb: $fa $41 $11
	ld   b, l                                        ; $5bce: $45
	adc  a                                           ; $5bcf: $8f
	rst  $38                                         ; $5bd0: $ff
	sub  c                                           ; $5bd1: $91
	ld   h, $ef                                      ; $5bd2: $26 $ef
	ld   sp, hl                                      ; $5bd4: $f9
	ld   sp, $5511                                   ; $5bd5: $31 $11 $55
	sbc  a                                           ; $5bd8: $9f
	rst  $38                                         ; $5bd9: $ff
	add  d                                           ; $5bda: $82
	add  hl, sp                                      ; $5bdb: $39
	rst  $38                                         ; $5bdc: $ff
	and  $21                                         ; $5bdd: $e6 $21
	ld   [de], a                                     ; $5bdf: $12
	ld   d, l                                        ; $5be0: $55
	sbc  a                                           ; $5be1: $9f
	rst  $38                                         ; $5be2: $ff
	ld   h, d                                        ; $5be3: $62
	ld   c, e                                        ; $5be4: $4b
	rst  $38                                         ; $5be5: $ff
	call nz, $1411                                   ; $5be6: $c4 $11 $14
	ld   d, l                                        ; $5be9: $55
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bea: $cf
	db   $fc                                         ; $5beb: $fc
	ld   [hl-], a                                    ; $5bec: $32
	ld   l, [hl]                                     ; $5bed: $6e
	rst  $38                                         ; $5bee: $ff
	and  d                                           ; $5bef: $a2
	ld   de, $5714                                   ; $5bf0: $11 $14 $57
	rst  $38                                         ; $5bf3: $ff
	ld   sp, hl                                      ; $5bf4: $f9
	inc  h                                           ; $5bf5: $24
	adc  a                                           ; $5bf6: $8f
	cp   $61                                         ; $5bf7: $fe $61
	ld   de, $5935                                   ; $5bf9: $11 $35 $59
	rst  $38                                         ; $5bfc: $ff
	push hl                                          ; $5bfd: $e5
	dec  d                                           ; $5bfe: $15
	rst  JumpTable                                         ; $5bff: $df
	ei                                               ; $5c00: $fb
	ld   sp, $4511                                   ; $5c01: $31 $11 $45
	ld   l, [hl]                                     ; $5c04: $6e
	rst  $38                                         ; $5c05: $ff
	or   c                                           ; $5c06: $b1
	daa                                              ; $5c07: $27
	rst  $38                                         ; $5c08: $ff
	rst  $20                                         ; $5c09: $e7
	ld   de, $4312                                   ; $5c0a: $11 $12 $43
	sbc  a                                           ; $5c0d: $9f
	rst  $38                                         ; $5c0e: $ff
	ld   d, c                                        ; $5c0f: $51
	inc  a                                           ; $5c10: $3c
	rst  $38                                         ; $5c11: $ff
	jp   nz, $1311                                   ; $5c12: $c2 $11 $13

	dec  [hl]                                        ; $5c15: $35
	rst  JumpTable                                         ; $5c16: $df
	ld   a, [$8f12]                                  ; $5c17: $fa $12 $8f
	rst  $38                                         ; $5c1a: $ff
	ld   h, c                                        ; $5c1b: $61
	ld   de, $3733                                   ; $5c1c: $11 $33 $37
	rst  $38                                         ; $5c1f: $ff
	push af                                          ; $5c20: $f5
	inc  de                                          ; $5c21: $13
	rst  JumpTable                                         ; $5c22: $df
	ld   a, [$1211]                                  ; $5c23: $fa $11 $12
	ld   [hl-], a                                    ; $5c26: $32
	ld   c, h                                        ; $5c27: $4c
	rst  $38                                         ; $5c28: $ff
	or   c                                           ; $5c29: $b1
	ld   d, $ff                                      ; $5c2a: $16 $ff
	and  $11                                         ; $5c2c: $e6 $11
	inc  de                                          ; $5c2e: $13
	inc  sp                                          ; $5c2f: $33
	ld   l, a                                        ; $5c30: $6f
	rst  $38                                         ; $5c31: $ff
	ld   h, c                                        ; $5c32: $61
	ld   a, [de]                                     ; $5c33: $1a
	rst  $38                                         ; $5c34: $ff
	db   $d3                                         ; $5c35: $d3
	ld   de, $3323                                   ; $5c36: $11 $23 $33
	xor  a                                           ; $5c39: $af
	cp   $21                                         ; $5c3a: $fe $21
	ld   l, $ff                                      ; $5c3c: $2e $ff
	and  c                                           ; $5c3e: $a1
	ld   de, $3244                                   ; $5c3f: $11 $44 $32
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c42: $cf
	ei                                               ; $5c43: $fb
	ld   de, $ff3f                                   ; $5c44: $11 $3f $ff
	ld   h, c                                        ; $5c47: $61
	ld   de, $4344                                   ; $5c48: $11 $44 $43
	rst  $38                                         ; $5c4b: $ff
	rst  $30                                         ; $5c4c: $f7
	ld   de, $ff7f                                   ; $5c4d: $11 $7f $ff
	ld   sp, $6513                                   ; $5c50: $31 $13 $65
	ld   [hl-], a                                    ; $5c53: $32
	rst  $38                                         ; $5c54: $ff
	or   $11                                         ; $5c55: $f6 $11
	ld   a, a                                        ; $5c57: $7f
	rst  $38                                         ; $5c58: $ff
	ld   hl, $7514                                   ; $5c59: $21 $14 $75
	ld   [hl+], a                                    ; $5c5c: $22
	rst  $38                                         ; $5c5d: $ff
	db   $f4                                         ; $5c5e: $f4
	ld   de, $ff8f                                   ; $5c5f: $11 $8f $ff
	ld   de, $7714                                   ; $5c62: $11 $14 $77
	ld   [hl-], a                                    ; $5c65: $32
	rst  $38                                         ; $5c66: $ff
	push af                                          ; $5c67: $f5
	ld   de, $ff8f                                   ; $5c68: $11 $8f $ff
	ld   hl, $7914                                   ; $5c6b: $21 $14 $79
	ld   sp, $f5ef                                   ; $5c6e: $31 $ef $f5
	ld   de, $ff7f                                   ; $5c71: $11 $7f $ff
	ld   sp, $8a13                                   ; $5c74: $31 $13 $8a
	ld   h, c                                        ; $5c77: $61
	adc  a                                           ; $5c78: $8f
	ld   sp, hl                                      ; $5c79: $f9
	ld   de, $ff1f                                   ; $5c7a: $11 $1f $ff
	ld   [hl], c                                     ; $5c7d: $71
	ld   de, $919b                                   ; $5c7e: $11 $9b $91
	cpl                                              ; $5c81: $2f
	rst  $38                                         ; $5c82: $ff
	ld   hl, $ff1c                                   ; $5c83: $21 $1c $ff
	pop  de                                          ; $5c86: $d1
	ld   de, $b45b                                   ; $5c87: $11 $5b $b4
	ld   a, [de]                                     ; $5c8a: $1a
	rst  $38                                         ; $5c8b: $ff
	sub  c                                           ; $5c8c: $91
	inc  de                                          ; $5c8d: $13
	rst  $38                                         ; $5c8e: $ff
	push af                                          ; $5c8f: $f5
	ld   de, $d93a                                   ; $5c90: $11 $3a $d9
	ld   de, $f3ff                                   ; $5c93: $11 $ff $f3
	ld   de, $fccf                                   ; $5c96: $11 $cf $fc
	ld   de, $bc17                                   ; $5c99: $11 $17 $bc
	ld   d, c                                        ; $5c9c: $51
	ld   a, a                                        ; $5c9d: $7f
	ei                                               ; $5c9e: $fb
	ld   de, $ff1f                                   ; $5c9f: $11 $1f $ff
	ld   [hl], c                                     ; $5ca2: $71
	inc  de                                          ; $5ca3: $13
	sbc  h                                           ; $5ca4: $9c
	and  c                                           ; $5ca5: $a1
	inc  e                                           ; $5ca6: $1c
	rst  $38                                         ; $5ca7: $ff
	ld   [hl], c                                     ; $5ca8: $71
	ld   d, $ff                                      ; $5ca9: $16 $ff
	pop  af                                          ; $5cab: $f1
	ld   de, $a86b                                   ; $5cac: $11 $6b $a8
	ld   de, $f4ff                                   ; $5caf: $11 $ff $f4
	ld   de, $fccf                                   ; $5cb2: $11 $cf $fc
	ld   de, $aa37                                   ; $5cb5: $11 $37 $aa
	ld   h, c                                        ; $5cb8: $61
	ld   c, a                                        ; $5cb9: $4f
	cp   $11                                         ; $5cba: $fe $11
	rra                                              ; $5cbc: $1f
	rst  $38                                         ; $5cbd: $ff
	sub  c                                           ; $5cbe: $91
	inc  d                                           ; $5cbf: $14
	sbc  h                                           ; $5cc0: $9c
	sub  l                                           ; $5cc1: $95
	ld   d, $ff                                      ; $5cc2: $16 $ff
	pop  de                                          ; $5cc4: $d1
	ld   de, $f6ff                                   ; $5cc5: $11 $ff $f6

Jump_0e6_5cc8:
	ld   de, $a96a                                   ; $5cc8: $11 $6a $a9
	ld   b, c                                        ; $5ccb: $41
	sbc  a                                           ; $5ccc: $9f
	ei                                               ; $5ccd: $fb
	ld   de, $ff1f                                   ; $5cce: $11 $1f $ff
	ld   h, c                                        ; $5cd1: $61
	ld   h, $aa                                      ; $5cd2: $26 $aa
	sub  h                                           ; $5cd4: $94
	add  hl, de                                      ; $5cd5: $19
	rst  $38                                         ; $5cd6: $ff
	or   c                                           ; $5cd7: $b1
	ld   de, $f3ff                                   ; $5cd8: $11 $ff $f3
	inc  d                                           ; $5cdb: $14
	adc  e                                           ; $5cdc: $8b
	sub  a                                           ; $5cdd: $97
	ld   hl, $f8df                                   ; $5cde: $21 $df $f8
	ld   de, $ff3f                                   ; $5ce1: $11 $3f $ff
	ld   hl, $ba48                                   ; $5ce4: $21 $48 $ba
	ld   [hl], d                                     ; $5ce7: $72
	dec  de                                          ; $5ce8: $1b
	rst  $38                                         ; $5ce9: $ff
	and  c                                           ; $5cea: $a1
	ld   [de], a                                     ; $5ceb: $12
	rst  $38                                         ; $5cec: $ff
	ldh  a, [c]                                      ; $5ced: $f2
	ld   d, $9a                                      ; $5cee: $16 $9a
	halt                                             ; $5cf0: $76
	ld   sp, $f8df                                   ; $5cf1: $31 $df $f8
	ld   de, $ff4f                                   ; $5cf4: $11 $4f $ff
	ld   hl, $c969                                   ; $5cf7: $21 $69 $c9
	ld   h, d                                        ; $5cfa: $62
	dec  e                                           ; $5cfb: $1d
	rst  $38                                         ; $5cfc: $ff
	sub  c                                           ; $5cfd: $91
	inc  de                                          ; $5cfe: $13
	rst  $38                                         ; $5cff: $ff
	ldh  a, [c]                                      ; $5d00: $f2
	ld   d, $ac                                      ; $5d01: $16 $ac
	add  l                                           ; $5d03: $85
	ld   hl, $f8ef                                   ; $5d04: $21 $ef $f8
	ld   de, $ff4f                                   ; $5d07: $11 $4f $ff
	ld   hl, $c859                                   ; $5d0a: $21 $59 $c8
	ld   h, c                                        ; $5d0d: $61
	rra                                              ; $5d0e: $1f
	rst  $38                                         ; $5d0f: $ff
	ld   [hl], c                                     ; $5d10: $71
	dec  d                                           ; $5d11: $15
	rst  $38                                         ; $5d12: $ff
	pop  hl                                          ; $5d13: $e1
	ld   d, $bc                                      ; $5d14: $16 $bc
	ld   [hl], l                                     ; $5d16: $75
	ld   de, $f6ff                                   ; $5d17: $11 $ff $f6
	ld   de, $fd7f                                   ; $5d1a: $11 $7f $fd
	ld   de, $d77b                                   ; $5d1d: $11 $7b $d7
	ld   b, c                                        ; $5d20: $41
	rra                                              ; $5d21: $1f
	rst  $38                                         ; $5d22: $ff
	ld   d, c                                        ; $5d23: $51
	add  hl, de                                      ; $5d24: $19
	rst  $38                                         ; $5d25: $ff
	pop  bc                                          ; $5d26: $c1
	rla                                              ; $5d27: $17
	cp   [hl]                                        ; $5d28: $be
	add  l                                           ; $5d29: $85
	ld   de, $f7ff                                   ; $5d2a: $11 $ff $f7
	ld   de, $fc7f                                   ; $5d2d: $11 $7f $fc
	ld   de, $c68c                                   ; $5d30: $11 $8c $c6
	ld   b, c                                        ; $5d33: $41
	rra                                              ; $5d34: $1f
	db   $fd                                         ; $5d35: $fd
	ld   b, c                                        ; $5d36: $41
	dec  de                                          ; $5d37: $1b
	rst  $38                                         ; $5d38: $ff
	and  c                                           ; $5d39: $a1
	add  hl, de                                      ; $5d3a: $19
	call $1164                                       ; $5d3b: $cd $64 $11
	rst  $38                                         ; $5d3e: $ff
	jp   $cf11                                       ; $5d3f: $c3 $11 $cf


	ld   sp, hl                                      ; $5d42: $f9
	ld   de, $c59d                                   ; $5d43: $11 $9d $c5
	ld   sp, $fc2f                                   ; $5d46: $31 $2f $fc
	ld   de, $ff1e                                   ; $5d49: $11 $1e $ff
	ld   h, c                                        ; $5d4c: $61
	dec  de                                          ; $5d4d: $1b
	db   $ec                                         ; $5d4e: $ec
	ld   b, d                                        ; $5d4f: $42
	ld   d, $ff                                      ; $5d50: $16 $ff
	and  c                                           ; $5d52: $a1
	ld   de, $f4ff                                   ; $5d53: $11 $ff $f4
	inc  de                                          ; $5d56: $13
	xor  l                                           ; $5d57: $ad
	push bc                                          ; $5d58: $c5
	ld   hl, $fa8f                                   ; $5d59: $21 $8f $fa
	ld   de, $ff2f                                   ; $5d5c: $11 $2f $ff
	ld   hl, $ea4b                                   ; $5d5f: $21 $4b $ea
	ld   sp, $ff1e                                   ; $5d62: $31 $1e $ff
	ld   [hl], c                                     ; $5d65: $71
	ld   d, $ff                                      ; $5d66: $16 $ff
	pop  de                                          ; $5d68: $d1
	dec  d                                           ; $5d69: $15
	xor  l                                           ; $5d6a: $ad
	sub  h                                           ; $5d6b: $94
	ld   de, $e5ff                                   ; $5d6c: $11 $ff $e5
	ld   de, $fa9f                                   ; $5d6f: $11 $9f $fa
	ld   de, $e67c                                   ; $5d72: $11 $7c $e6
	ld   sp, $fb3f                                   ; $5d75: $31 $3f $fb
	ld   de, $ff1f                                   ; $5d78: $11 $1f $ff
	ld   h, c                                        ; $5d7b: $61
	jr   @-$31                                       ; $5d7c: $18 $cd

jr_0e6_5d7e:
	ld   h, d                                        ; $5d7e: $62
	rla                                              ; $5d7f: $17
	rst  $38                                         ; $5d80: $ff

jr_0e6_5d81:
	and  c                                           ; $5d81: $a1
	ld   [de], a                                     ; $5d82: $12
	rst  $38                                         ; $5d83: $ff
	di                                               ; $5d84: $f3
	inc  de                                          ; $5d85: $13
	xor  [hl]                                        ; $5d86: $ae
	or   h                                           ; $5d87: $b4
	ld   de, $e5ff                                   ; $5d88: $11 $ff $e5
	ld   de, $fb9f                                   ; $5d8b: $11 $9f $fb
	ld   de, $e86b                                   ; $5d8e: $11 $6b $e8
	ld   b, c                                        ; $5d91: $41
	rra                                              ; $5d92: $1f
	db   $fc                                         ; $5d93: $fc
	ld   hl, $ff1d                                   ; $5d94: $21 $1d $ff
	ld   [hl], c                                     ; $5d97: $71
	jr   @-$22                                       ; $5d98: $18 $dc

	ld   h, d                                        ; $5d9a: $62

Call_0e6_5d9b:
	add  hl, de                                      ; $5d9b: $19
	rst  $38                                         ; $5d9c: $ff
	sub  c                                           ; $5d9d: $91
	inc  d                                           ; $5d9e: $14
	rst  $38                                         ; $5d9f: $ff
	db   $e3                                         ; $5da0: $e3
	inc  de                                          ; $5da1: $13
	xor  l                                           ; $5da2: $ad
	or   l                                           ; $5da3: $b5
	ld   de, $e6ff                                   ; $5da4: $11 $ff $e6
	ld   de, $fa9f                                   ; $5da7: $11 $9f $fa
	ld   de, $d85a                                   ; $5daa: $11 $5a $d8
	ld   b, c                                        ; $5dad: $41
	ld   c, a                                        ; $5dae: $4f
	ld   a, [$1f01]                                  ; $5daf: $fa $01 $1f
	rst  $38                                         ; $5db2: $ff
	ld   d, c                                        ; $5db3: $51
	jr   z, jr_0e6_5d81                              ; $5db4: $28 $cb

	ld   d, c                                        ; $5db6: $51
	ld   e, $fc                                      ; $5db7: $1e $fc
	ld   b, c                                        ; $5db9: $41
	ld   a, [de]                                     ; $5dba: $1a
	rst  $38                                         ; $5dbb: $ff
	or   c                                           ; $5dbc: $b1
	ld   d, $9d                                      ; $5dbd: $16 $9d
	ld   [hl], e                                     ; $5dbf: $73

jr_0e6_5dc0:
	jr   @+$01                                       ; $5dc0: $18 $ff

	ld   [hl], c                                     ; $5dc2: $71
	dec  d                                           ; $5dc3: $15
	rst  $38                                         ; $5dc4: $ff
	db   $d3                                         ; $5dc5: $d3
	dec  d                                           ; $5dc6: $15
	sbc  d                                           ; $5dc7: $9a
	ld   [hl], e                                     ; $5dc8: $73
	ld   a, [de]                                     ; $5dc9: $1a
	rst  $38                                         ; $5dca: $ff
	ld   h, c                                        ; $5dcb: $61
	dec  d                                           ; $5dcc: $15
	rst  $38                                         ; $5dcd: $ff
	db   $e3                                         ; $5dce: $e3
	dec  d                                           ; $5dcf: $15
	adc  d                                           ; $5dd0: $8a
	ld   [hl], d                                     ; $5dd1: $72
	dec  de                                          ; $5dd2: $1b
	cp   $51                                         ; $5dd3: $fe $51
	rla                                              ; $5dd5: $17
	rst  $38                                         ; $5dd6: $ff
	jp   nz, $ab17                                   ; $5dd7: $c2 $17 $ab

	ld   h, c                                        ; $5dda: $61
	ld   l, $fe                                      ; $5ddb: $2e $fe
	ld   sp, $ff19                                   ; $5ddd: $31 $19 $ff
	and  c                                           ; $5de0: $a1
	jr   jr_0e6_5d7e                                 ; $5de1: $18 $9b

	ld   b, c                                        ; $5de3: $41
	ld   c, a                                        ; $5de4: $4f
	ld   a, [$2e11]                                  ; $5de5: $fa $11 $2e
	rst  $38                                         ; $5de8: $ff
	ld   h, c                                        ; $5de9: $61
	add  hl, hl                                      ; $5dea: $29
	xor  d                                           ; $5deb: $aa
	ld   hl, $f69f                                   ; $5dec: $21 $9f $f6
	ld   de, $fc7f                                   ; $5def: $11 $7f $fc
	ld   hl, $a769                                   ; $5df2: $21 $69 $a7
	ld   d, $ff                                      ; $5df5: $16 $ff
	add  c                                           ; $5df7: $81
	inc  d                                           ; $5df8: $14
	rst  $38                                         ; $5df9: $ff
	db   $f4                                         ; $5dfa: $f4
	ld   [de], a                                     ; $5dfb: $12
	sbc  d                                           ; $5dfc: $9a
	add  c                                           ; $5dfd: $81
	ld   c, a                                        ; $5dfe: $4f
	ld   a, [$2f11]                                  ; $5dff: $fa $11 $2f
	rst  $38                                         ; $5e02: $ff
	ld   d, c                                        ; $5e03: $51
	jr   jr_0e6_5dc0                                 ; $5e04: $18 $ba

	inc  sp                                          ; $5e06: $33
	rst  $38                                         ; $5e07: $ff
	pop  bc                                          ; $5e08: $c1
	ld   de, $f6ff                                   ; $5e09: $11 $ff $f6
	ld   de, $937b                                   ; $5e0c: $11 $7b $93
	ld   e, a                                        ; $5e0f: $5f
	ld   sp, hl                                      ; $5e10: $f9
	ld   de, $ff3f                                   ; $5e11: $11 $3f $ff
	ld   d, c                                        ; $5e14: $51
	rla                                              ; $5e15: $17
	xor  d                                           ; $5e16: $aa
	ld   c, b                                        ; $5e17: $48
	rst  $38                                         ; $5e18: $ff
	ld   h, c                                        ; $5e19: $61
	jr   @+$01                                       ; $5e1a: $18 $ff

	pop  de                                          ; $5e1c: $d1
	ld   de, $868c                                   ; $5e1d: $11 $8c $86
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e20: $cf
	sub  d                                           ; $5e21: $92
	ld   de, $f8ff                                   ; $5e22: $11 $ff $f8
	ld   de, $c83a                                   ; $5e25: $11 $3a $c8
	xor  a                                           ; $5e28: $af
	and  h                                           ; $5e29: $a4
	ld   de, $fdaf                                   ; $5e2a: $11 $af $fd
	ld   de, $ba17                                   ; $5e2d: $11 $17 $ba
	cp   a                                           ; $5e30: $bf
	or   l                                           ; $5e31: $b5
	ld   de, $ff6f                                   ; $5e32: $11 $6f $ff
	ld   sp, wNameReplacementCurrReplacementListIdx                                   ; $5e35: $31 $15 $cb
	xor  l                                           ; $5e38: $ad
	add  $11                                         ; $5e39: $c6 $11
	ld   c, a                                        ; $5e3b: $4f
	rst  $38                                         ; $5e3c: $ff
	ld   h, c                                        ; $5e3d: $61
	inc  d                                           ; $5e3e: $14

jr_0e6_5e3f:
	xor  l                                           ; $5e3f: $ad
	call $11b6                                       ; $5e40: $cd $b6 $11
	ld   c, a                                        ; $5e43: $4f
	rst  $38                                         ; $5e44: $ff
	ld   h, c                                        ; $5e45: $61
	inc  de                                          ; $5e46: $13
	xor  l                                           ; $5e47: $ad
	sbc  $a5                                         ; $5e48: $de $a5
	ld   de, $ff6f                                   ; $5e4a: $11 $6f $ff
	ld   d, c                                        ; $5e4d: $51
	dec  d                                           ; $5e4e: $15
	cp   h                                           ; $5e4f: $bc
	db   $ed                                         ; $5e50: $ed
	sub  h                                           ; $5e51: $94
	ld   de, $fe8f                                   ; $5e52: $11 $8f $fe
	ld   hl, $ce16                                   ; $5e55: $21 $16 $ce
	db   $fc                                         ; $5e58: $fc
	ld   h, d                                        ; $5e59: $62
	dec  d                                           ; $5e5a: $15
	rst  JumpTable                                         ; $5e5b: $df
	ld   hl, sp+$11                                  ; $5e5c: $f8 $11
	jr   jr_0e6_5e3f                                 ; $5e5e: $18 $df

	add  sp, $21                                     ; $5e60: $e8 $21
	ld   a, [hl-]                                    ; $5e62: $3a
	rst  $38                                         ; $5e63: $ff
	or   c                                           ; $5e64: $b1
	ld   de, $fe7d                                   ; $5e65: $11 $7d $fe
	sub  e                                           ; $5e68: $93
	inc  d                                           ; $5e69: $14
	cp   a                                           ; $5e6a: $bf
	ld   a, [$1921]                                  ; $5e6b: $fa $21 $19
	rst  $38                                         ; $5e6e: $ff
	or   h                                           ; $5e6f: $b4
	inc  d                                           ; $5e70: $14
	cp   [hl]                                        ; $5e71: $be
	ret  z                                           ; $5e72: $c8

	ld   sp, $fd4a                                   ; $5e73: $31 $4a $fd
	add  h                                           ; $5e76: $84
	scf                                              ; $5e77: $37
	cp   h                                           ; $5e78: $bc
	sub  l                                           ; $5e79: $95
	inc  [hl]                                        ; $5e7a: $34
	sbc  l                                           ; $5e7b: $9d
	reti                                             ; $5e7c: $d9


	ld   d, h                                        ; $5e7d: $54
	ld   a, e                                        ; $5e7e: $7b
	ret                                              ; $5e7f: $c9


	ld   h, h                                        ; $5e80: $64
	ld   d, a                                        ; $5e81: $57
	xor  h                                           ; $5e82: $ac
	cp   c                                           ; $5e83: $b9
	ld   h, [hl]                                     ; $5e84: $66
	ld   a, c                                        ; $5e85: $79
	cp   c                                           ; $5e86: $b9
	ld   d, e                                        ; $5e87: $53
	ld   e, d                                        ; $5e88: $5a
	db   $ed                                         ; $5e89: $ed
	ld   [hl], e                                     ; $5e8a: $73
	ld   c, c                                        ; $5e8b: $49
	call c, $3584                                    ; $5e8c: $dc $84 $35
	adc  h                                           ; $5e8f: $8c
	jp   c, Jump_0e6_6975                            ; $5e90: $da $75 $69

	xor  e                                           ; $5e93: $ab
	ld   [hl], h                                     ; $5e94: $74
	scf                                              ; $5e95: $37
	adc  $a5                                         ; $5e96: $ce $a5
	scf                                              ; $5e98: $37
	call Call_0e6_4496                               ; $5e99: $cd $96 $44
	ld   a, e                                        ; $5e9c: $7b
	res  0, l                                        ; $5e9d: $cb $85
	ld   d, a                                        ; $5e9f: $57
	xor  e                                           ; $5ea0: $ab
	and  [hl]                                        ; $5ea1: $a6
	dec  [hl]                                        ; $5ea2: $35
	cp   [hl]                                        ; $5ea3: $be
	or   a                                           ; $5ea4: $b7
	ld   b, l                                        ; $5ea5: $45
	sbc  h                                           ; $5ea6: $9c
	and  a                                           ; $5ea7: $a7
	ld   d, h                                        ; $5ea8: $54
	ld   l, d                                        ; $5ea9: $6a
	res  2, [hl]                                     ; $5eaa: $cb $96
	ld   d, a                                        ; $5eac: $57
	xor  d                                           ; $5ead: $aa
	and  [hl]                                        ; $5eae: $a6
	dec  [hl]                                        ; $5eaf: $35
	sbc  l                                           ; $5eb0: $9d
	ret  z                                           ; $5eb1: $c8

	ld   b, l                                        ; $5eb2: $45
	adc  d                                           ; $5eb3: $8a
	cp   c                                           ; $5eb4: $b9
	ld   d, h                                        ; $5eb5: $54
	ld   e, c                                        ; $5eb6: $59
	call c, Call_0e6_5796                            ; $5eb7: $dc $96 $57
	sbc  e                                           ; $5eba: $9b
	add  l                                           ; $5ebb: $85
	ld   b, l                                        ; $5ebc: $45
	xor  h                                           ; $5ebd: $ac
	ret  z                                           ; $5ebe: $c8

	ld   d, l                                        ; $5ebf: $55
	sbc  d                                           ; $5ec0: $9a
	xor  b                                           ; $5ec1: $a8
	ld   d, e                                        ; $5ec2: $53
	ld   e, d                                        ; $5ec3: $5a
	call c, Call_0e6_5895                            ; $5ec4: $dc $95 $58
	xor  e                                           ; $5ec7: $ab
	sub  l                                           ; $5ec8: $95
	ld   b, [hl]                                     ; $5ec9: $46
	xor  l                                           ; $5eca: $ad
	or   a                                           ; $5ecb: $b7
	ld   d, [hl]                                     ; $5ecc: $56
	sbc  e                                           ; $5ecd: $9b
	xor  b                                           ; $5ece: $a8
	ld   d, h                                        ; $5ecf: $54
	ld   l, d                                        ; $5ed0: $6a
	res  0, l                                        ; $5ed1: $cb $85
	ld   h, a                                        ; $5ed3: $67
	sbc  d                                           ; $5ed4: $9a
	add  [hl]                                        ; $5ed5: $86
	ld   b, [hl]                                     ; $5ed6: $46
	xor  h                                           ; $5ed7: $ac
	or   a                                           ; $5ed8: $b7
	ld   d, [hl]                                     ; $5ed9: $56
	adc  d                                           ; $5eda: $8a
	sub  a                                           ; $5edb: $97
	ld   d, h                                        ; $5edc: $54
	ld   a, d                                        ; $5edd: $7a
	jp   z, Jump_0e6_6975                            ; $5ede: $ca $75 $69

	xor  d                                           ; $5ee1: $aa
	add  l                                           ; $5ee2: $85
	ld   b, a                                        ; $5ee3: $47
	cp   l                                           ; $5ee4: $bd
	and  [hl]                                        ; $5ee5: $a6
	ld   d, [hl]                                     ; $5ee6: $56
	sbc  d                                           ; $5ee7: $9a
	sub  a                                           ; $5ee8: $97
	ld   b, h                                        ; $5ee9: $44
	adc  h                                           ; $5eea: $8c
	cp   d                                           ; $5eeb: $ba
	ld   h, l                                        ; $5eec: $65
	ld   a, c                                        ; $5eed: $79
	xor  c                                           ; $5eee: $a9
	ld   h, h                                        ; $5eef: $64
	ld   e, c                                        ; $5ef0: $59
	res  0, l                                        ; $5ef1: $cb $85
	ld   e, b                                        ; $5ef3: $58
	xor  d                                           ; $5ef4: $aa
	add  [hl]                                        ; $5ef5: $86
	ld   b, l                                        ; $5ef6: $45
	sbc  e                                           ; $5ef7: $9b
	cp   b                                           ; $5ef8: $b8
	ld   h, l                                        ; $5ef9: $65
	ld   a, c                                        ; $5efa: $79
	xor  c                                           ; $5efb: $a9
	ld   h, h                                        ; $5efc: $64
	ld   l, e                                        ; $5efd: $6b
	cp   c                                           ; $5efe: $b9
	ld   [hl], l                                     ; $5eff: $75
	ld   a, c                                        ; $5f00: $79
	xor  c                                           ; $5f01: $a9
	ld   [hl], l                                     ; $5f02: $75
	ld   e, b                                        ; $5f03: $58
	res  0, [hl]                                     ; $5f04: $cb $86
	ld   h, a                                        ; $5f06: $67
	sbc  d                                           ; $5f07: $9a
	sub  a                                           ; $5f08: $97
	ld   d, [hl]                                     ; $5f09: $56
	xor  e                                           ; $5f0a: $ab
	cp   b                                           ; $5f0b: $b8
	ld   h, [hl]                                     ; $5f0c: $66
	sbc  c                                           ; $5f0d: $99
	sub  a                                           ; $5f0e: $97
	ld   d, l                                        ; $5f0f: $55
	adc  e                                           ; $5f10: $8b
	ret                                              ; $5f11: $c9


	ld   h, l                                        ; $5f12: $65
	ld   a, d                                        ; $5f13: $7a
	sbc  b                                           ; $5f14: $98
	ld   h, l                                        ; $5f15: $65
	ld   l, d                                        ; $5f16: $6a
	cp   d                                           ; $5f17: $ba
	halt                                             ; $5f18: $76
	ld   l, c                                        ; $5f19: $69
	xor  c                                           ; $5f1a: $a9
	halt                                             ; $5f1b: $76
	ld   d, a                                        ; $5f1c: $57
	cp   e                                           ; $5f1d: $bb
	sub  a                                           ; $5f1e: $97
	ld   h, a                                        ; $5f1f: $67
	sbc  d                                           ; $5f20: $9a
	add  [hl]                                        ; $5f21: $86
	ld   d, [hl]                                     ; $5f22: $56
	sbc  e                                           ; $5f23: $9b
	cp   b                                           ; $5f24: $b8
	ld   d, [hl]                                     ; $5f25: $56
	adc  c                                           ; $5f26: $89
	sbc  b                                           ; $5f27: $98
	ld   h, l                                        ; $5f28: $65
	ld   a, d                                        ; $5f29: $7a
	ret                                              ; $5f2a: $c9


	halt                                             ; $5f2b: $76
	ld   a, b                                        ; $5f2c: $78
	sbc  b                                           ; $5f2d: $98
	ld   [hl], l                                     ; $5f2e: $75
	ld   l, c                                        ; $5f2f: $69
	cp   d                                           ; $5f30: $ba
	add  [hl]                                        ; $5f31: $86
	ld   l, b                                        ; $5f32: $68
	sbc  d                                           ; $5f33: $9a
	add  l                                           ; $5f34: $85
	ld   d, a                                        ; $5f35: $57
	xor  h                                           ; $5f36: $ac
	and  a                                           ; $5f37: $a7
	ld   h, a                                        ; $5f38: $67
	sbc  c                                           ; $5f39: $99
	sub  a                                           ; $5f3a: $97
	ld   d, [hl]                                     ; $5f3b: $56
	sbc  e                                           ; $5f3c: $9b
	xor  b                                           ; $5f3d: $a8
	ld   h, [hl]                                     ; $5f3e: $66
	sbc  c                                           ; $5f3f: $99
	add  a                                           ; $5f40: $87
	ld   h, l                                        ; $5f41: $65
	ld   a, e                                        ; $5f42: $7b
	xor  c                                           ; $5f43: $a9
	halt                                             ; $5f44: $76
	ld   a, c                                        ; $5f45: $79
	sbc  c                                           ; $5f46: $99
	ld   [hl], l                                     ; $5f47: $75
	ld   l, d                                        ; $5f48: $6a
	xor  c                                           ; $5f49: $a9
	halt                                             ; $5f4a: $76
	ld   a, c                                        ; $5f4b: $79
	xor  c                                           ; $5f4c: $a9
	ld   [hl], l                                     ; $5f4d: $75
	ld   l, b                                        ; $5f4e: $68
	cp   e                                           ; $5f4f: $bb
	add  [hl]                                        ; $5f50: $86
	ld   l, c                                        ; $5f51: $69
	sbc  c                                           ; $5f52: $99
	add  [hl]                                        ; $5f53: $86
	ld   d, a                                        ; $5f54: $57
	xor  d                                           ; $5f55: $aa
	and  a                                           ; $5f56: $a7
	ld   h, a                                        ; $5f57: $67
	sbc  c                                           ; $5f58: $99
	sub  a                                           ; $5f59: $97
	ld   d, [hl]                                     ; $5f5a: $56
	sbc  d                                           ; $5f5b: $9a
	xor  b                                           ; $5f5c: $a8
	ld   h, [hl]                                     ; $5f5d: $66
	adc  c                                           ; $5f5e: $89
	add  a                                           ; $5f5f: $87
	ld   h, [hl]                                     ; $5f60: $66
	adc  e                                           ; $5f61: $8b
	cp   b                                           ; $5f62: $b8
	ld   h, [hl]                                     ; $5f63: $66
	adc  c                                           ; $5f64: $89
	sbc  b                                           ; $5f65: $98
	ld   h, [hl]                                     ; $5f66: $66
	ld   a, d                                        ; $5f67: $7a
	cp   d                                           ; $5f68: $ba
	halt                                             ; $5f69: $76
	ld   a, c                                        ; $5f6a: $79
	sbc  c                                           ; $5f6b: $99
	halt                                             ; $5f6c: $76
	ld   l, b                                        ; $5f6d: $68
	xor  d                                           ; $5f6e: $aa
	add  [hl]                                        ; $5f6f: $86
	ld   l, c                                        ; $5f70: $69
	xor  c                                           ; $5f71: $a9
	add  [hl]                                        ; $5f72: $86
	ld   l, b                                        ; $5f73: $68
	xor  d                                           ; $5f74: $aa
	add  a                                           ; $5f75: $87
	ld   h, a                                        ; $5f76: $67
	xor  c                                           ; $5f77: $a9
	add  [hl]                                        ; $5f78: $86
	ld   h, a                                        ; $5f79: $67
	sbc  e                                           ; $5f7a: $9b
	and  a                                           ; $5f7b: $a7
	ld   h, a                                        ; $5f7c: $67
	sbc  d                                           ; $5f7d: $9a
	sub  a                                           ; $5f7e: $97
	ld   h, [hl]                                     ; $5f7f: $66
	sbc  e                                           ; $5f80: $9b
	sbc  b                                           ; $5f81: $98
	ld   h, [hl]                                     ; $5f82: $66
	sbc  d                                           ; $5f83: $9a
	add  a                                           ; $5f84: $87
	ld   h, [hl]                                     ; $5f85: $66
	sbc  d                                           ; $5f86: $9a
	xor  c                                           ; $5f87: $a9
	halt                                             ; $5f88: $76
	adc  d                                           ; $5f89: $8a
	sbc  b                                           ; $5f8a: $98
	ld   h, [hl]                                     ; $5f8b: $66
	ld   a, c                                        ; $5f8c: $79
	xor  c                                           ; $5f8d: $a9
	halt                                             ; $5f8e: $76
	ld   a, c                                        ; $5f8f: $79
	sbc  b                                           ; $5f90: $98
	halt                                             ; $5f91: $76
	ld   a, d                                        ; $5f92: $7a
	xor  c                                           ; $5f93: $a9
	halt                                             ; $5f94: $76
	ld   a, b                                        ; $5f95: $78
	xor  b                                           ; $5f96: $a8
	halt                                             ; $5f97: $76
	ld   l, b                                        ; $5f98: $68
	xor  c                                           ; $5f99: $a9
	add  [hl]                                        ; $5f9a: $86
	ld   l, b                                        ; $5f9b: $68
	xor  b                                           ; $5f9c: $a8
	halt                                             ; $5f9d: $76
	ld   l, c                                        ; $5f9e: $69
	cp   d                                           ; $5f9f: $ba
	add  [hl]                                        ; $5fa0: $86
	ld   l, b                                        ; $5fa1: $68
	xor  c                                           ; $5fa2: $a9
	halt                                             ; $5fa3: $76
	ld   l, b                                        ; $5fa4: $68
	xor  d                                           ; $5fa5: $aa
	sub  a                                           ; $5fa6: $97
	ld   h, a                                        ; $5fa7: $67
	sbc  c                                           ; $5fa8: $99
	halt                                             ; $5fa9: $76
	ld   h, a                                        ; $5faa: $67
	xor  d                                           ; $5fab: $aa
	add  a                                           ; $5fac: $87
	ld   h, a                                        ; $5fad: $67
	sbc  d                                           ; $5fae: $9a
	add  [hl]                                        ; $5faf: $86
	ld   h, a                                        ; $5fb0: $67
	sbc  e                                           ; $5fb1: $9b
	sub  a                                           ; $5fb2: $97
	ld   h, a                                        ; $5fb3: $67
	sbc  c                                           ; $5fb4: $99
	add  [hl]                                        ; $5fb5: $86
	ld   h, a                                        ; $5fb6: $67
	xor  e                                           ; $5fb7: $ab
	sub  a                                           ; $5fb8: $97
	ld   h, a                                        ; $5fb9: $67
	sbc  c                                           ; $5fba: $99
	add  [hl]                                        ; $5fbb: $86
	ld   h, a                                        ; $5fbc: $67
	sbc  d                                           ; $5fbd: $9a
	sub  a                                           ; $5fbe: $97
	ld   h, [hl]                                     ; $5fbf: $66
	sbc  c                                           ; $5fc0: $99
	sub  a                                           ; $5fc1: $97
	ld   h, a                                        ; $5fc2: $67
	sbc  e                                           ; $5fc3: $9b
	sub  a                                           ; $5fc4: $97
	ld   h, [hl]                                     ; $5fc5: $66
	adc  c                                           ; $5fc6: $89
	add  a                                           ; $5fc7: $87
	ld   h, a                                        ; $5fc8: $67
	sbc  d                                           ; $5fc9: $9a
	sub  a                                           ; $5fca: $97
	ld   h, [hl]                                     ; $5fcb: $66
	adc  c                                           ; $5fcc: $89
	add  a                                           ; $5fcd: $87
	ld   h, a                                        ; $5fce: $67
	sbc  e                                           ; $5fcf: $9b
	and  a                                           ; $5fd0: $a7
	ld   h, a                                        ; $5fd1: $67
	sbc  d                                           ; $5fd2: $9a
	add  [hl]                                        ; $5fd3: $86
	ld   h, a                                        ; $5fd4: $67
	sbc  e                                           ; $5fd5: $9b
	sub  a                                           ; $5fd6: $97
	ld   h, a                                        ; $5fd7: $67
	sbc  d                                           ; $5fd8: $9a
	add  [hl]                                        ; $5fd9: $86
	ld   l, b                                        ; $5fda: $68
	xor  d                                           ; $5fdb: $aa
	sub  a                                           ; $5fdc: $97
	ld   l, b                                        ; $5fdd: $68
	sbc  c                                           ; $5fde: $99
	halt                                             ; $5fdf: $76
	ld   a, c                                        ; $5fe0: $79
	xor  d                                           ; $5fe1: $aa
	add  [hl]                                        ; $5fe2: $86
	ld   l, b                                        ; $5fe3: $68
	xor  c                                           ; $5fe4: $a9
	halt                                             ; $5fe5: $76
	ld   a, c                                        ; $5fe6: $79
	xor  d                                           ; $5fe7: $aa
	halt                                             ; $5fe8: $76
	ld   a, b                                        ; $5fe9: $78
	xor  b                                           ; $5fea: $a8
	ld   h, [hl]                                     ; $5feb: $66
	adc  c                                           ; $5fec: $89
	xor  b                                           ; $5fed: $a8
	halt                                             ; $5fee: $76
	adc  c                                           ; $5fef: $89
	sub  a                                           ; $5ff0: $97
	ld   h, a                                        ; $5ff1: $67
	adc  d                                           ; $5ff2: $8a
	xor  b                                           ; $5ff3: $a8
	ld   h, a                                        ; $5ff4: $67
	adc  d                                           ; $5ff5: $8a
	add  a                                           ; $5ff6: $87
	ld   h, a                                        ; $5ff7: $67
	sbc  c                                           ; $5ff8: $99
	add  a                                           ; $5ff9: $87
	ld   l, b                                        ; $5ffa: $68
	sbc  c                                           ; $5ffb: $99
	halt                                             ; $5ffc: $76
	ld   a, b                                        ; $5ffd: $78
	xor  c                                           ; $5ffe: $a9
	halt                                             ; $5fff: $76
	ld   a, b                                        ; $6000: $78
	sbc  b                                           ; $6001: $98
	ld   [hl], a                                     ; $6002: $77
	adc  c                                           ; $6003: $89
	sbc  b                                           ; $6004: $98
	ld   [hl], a                                     ; $6005: $77
	sbc  c                                           ; $6006: $99
	sub  a                                           ; $6007: $97
	ld   a, b                                        ; $6008: $78
	sbc  c                                           ; $6009: $99
	sub  a                                           ; $600a: $97
	ld   a, b                                        ; $600b: $78
	adc  c                                           ; $600c: $89
	ld   [hl], a                                     ; $600d: $77
	adc  b                                           ; $600e: $88
	sbc  c                                           ; $600f: $99
	ld   [hl], a                                     ; $6010: $77
	adc  b                                           ; $6011: $88
	sbc  b                                           ; $6012: $98
	ld   a, b                                        ; $6013: $78
	sbc  b                                           ; $6014: $98
	sub  a                                           ; $6015: $97
	ld   a, b                                        ; $6016: $78
	sbc  c                                           ; $6017: $99
	add  a                                           ; $6018: $87
	adc  c                                           ; $6019: $89
	adc  c                                           ; $601a: $89
	add  a                                           ; $601b: $87
	adc  b                                           ; $601c: $88
	sbc  b                                           ; $601d: $98
	ld   a, b                                        ; $601e: $78
	adc  c                                           ; $601f: $89
	sbc  b                                           ; $6020: $98
	ld   a, b                                        ; $6021: $78
	adc  c                                           ; $6022: $89
	adc  b                                           ; $6023: $88
	ld   a, b                                        ; $6024: $78
	sbc  c                                           ; $6025: $99
	adc  b                                           ; $6026: $88
	adc  b                                           ; $6027: $88
	adc  b                                           ; $6028: $88
	adc  b                                           ; $6029: $88
	adc  b                                           ; $602a: $88
	adc  b                                           ; $602b: $88
	adc  b                                           ; $602c: $88
	adc  c                                           ; $602d: $89
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
	ld   de, $1111                                   ; $6040: $11 $11 $11
	ld   de, $1111                                   ; $6043: $11 $11 $11
	ld   de, $1111                                   ; $6046: $11 $11 $11
	ld   de, $1111                                   ; $6049: $11 $11 $11
	ld   de, $0011                                   ; $604c: $11 $11 $00
	ld   c, b                                        ; $604f: $48
	ld   de, $1111                                   ; $6050: $11 $11 $11
	ld   de, $1111                                   ; $6053: $11 $11 $11
	ld   de, $1111                                   ; $6056: $11 $11 $11
	ld   de, $5413                                   ; $6059: $11 $13 $54
	ld   d, h                                        ; $605c: $54
	ld   d, h                                        ; $605d: $54
	ld   b, c                                        ; $605e: $41
	rra                                              ; $605f: $1f
	rst  $38                                         ; $6060: $ff
	pop  af                                          ; $6061: $f1
	ld   de, $1911                                   ; $6062: $11 $11 $19
	ld   de, $1c11                                   ; $6065: $11 $11 $1c
	sbc  $bc                                         ; $6068: $de $bc
	sbc  $b1                                         ; $606a: $de $b1
	ld   de, $1111                                   ; $606c: $11 $11 $11
	ld   de, $1111                                   ; $606f: $11 $11 $11
	ld   de, $1111                                   ; $6072: $11 $11 $11
	ld   de, $1111                                   ; $6075: $11 $11 $11
	ld   de, $5411                                   ; $6078: $11 $11 $54
	ld   b, h                                        ; $607b: $44
	add  hl, de                                      ; $607c: $19
	ld   de, $5454                                   ; $607d: $11 $54 $54
	ld   h, a                                        ; $6080: $67
	ld   [hl], d                                     ; $6081: $72
	ld   de, $1111                                   ; $6082: $11 $11 $11
	ld   de, $1112                                   ; $6085: $11 $12 $11
	ld   [de], a                                     ; $6088: $12
	ld   de, $1111                                   ; $6089: $11 $11 $11
	ld   h, [hl]                                     ; $608c: $66
	halt                                             ; $608d: $76
	ld   sp, hl                                      ; $608e: $f9
	ld   de, $8888                                   ; $608f: $11 $88 $88
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
	adc  c                                           ; $60cb: $89
	adc  b                                           ; $60cc: $88
	adc  b                                           ; $60cd: $88
	adc  c                                           ; $60ce: $89
	add  a                                           ; $60cf: $87
	sbc  b                                           ; $60d0: $98
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
	add  a                                           ; $60e4: $87
	adc  b                                           ; $60e5: $88
	adc  b                                           ; $60e6: $88
	adc  c                                           ; $60e7: $89
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
	ld   a, b                                        ; $60f3: $78
	adc  b                                           ; $60f4: $88
	adc  b                                           ; $60f5: $88
	adc  b                                           ; $60f6: $88
	adc  b                                           ; $60f7: $88
	adc  b                                           ; $60f8: $88
	adc  b                                           ; $60f9: $88
	adc  c                                           ; $60fa: $89
	ld   a, b                                        ; $60fb: $78
	add  a                                           ; $60fc: $87
	sbc  b                                           ; $60fd: $98
	adc  b                                           ; $60fe: $88
	adc  b                                           ; $60ff: $88
	ld   a, c                                        ; $6100: $79
	adc  b                                           ; $6101: $88
	adc  b                                           ; $6102: $88
	sub  a                                           ; $6103: $97
	adc  b                                           ; $6104: $88
	adc  b                                           ; $6105: $88
	adc  b                                           ; $6106: $88
	adc  b                                           ; $6107: $88
	ld   a, b                                        ; $6108: $78
	adc  b                                           ; $6109: $88
	adc  b                                           ; $610a: $88
	adc  b                                           ; $610b: $88
	adc  c                                           ; $610c: $89
	ld   a, b                                        ; $610d: $78
	adc  b                                           ; $610e: $88
	sbc  b                                           ; $610f: $98
	adc  b                                           ; $6110: $88
	add  a                                           ; $6111: $87
	sbc  b                                           ; $6112: $98
	ld   a, c                                        ; $6113: $79
	adc  b                                           ; $6114: $88
	adc  b                                           ; $6115: $88
	add  a                                           ; $6116: $87
	adc  b                                           ; $6117: $88
	adc  b                                           ; $6118: $88
	sub  a                                           ; $6119: $97
	adc  b                                           ; $611a: $88
	ld   a, c                                        ; $611b: $79
	ld   a, b                                        ; $611c: $78
	sub  a                                           ; $611d: $97
	sub  a                                           ; $611e: $97
	adc  b                                           ; $611f: $88
	ld   a, b                                        ; $6120: $78
	ld   a, c                                        ; $6121: $79
	ld   a, b                                        ; $6122: $78
	ld   [hl], a                                     ; $6123: $77
	sub  a                                           ; $6124: $97
	adc  b                                           ; $6125: $88
	ld   a, b                                        ; $6126: $78
	adc  b                                           ; $6127: $88
	ld   a, b                                        ; $6128: $78
	add  a                                           ; $6129: $87
	sbc  b                                           ; $612a: $98
	ld   a, b                                        ; $612b: $78
	sub  a                                           ; $612c: $97
	adc  c                                           ; $612d: $89
	ld   l, c                                        ; $612e: $69
	sub  a                                           ; $612f: $97
	adc  c                                           ; $6130: $89
	ld   [hl], a                                     ; $6131: $77
	sub  a                                           ; $6132: $97
	ld   a, c                                        ; $6133: $79
	add  a                                           ; $6134: $87
	xor  b                                           ; $6135: $a8
	ld   a, c                                        ; $6136: $79
	add  a                                           ; $6137: $87
	adc  d                                           ; $6138: $8a
	ld   a, b                                        ; $6139: $78
	add  a                                           ; $613a: $87
	ld   a, c                                        ; $613b: $79
	ld   [hl], a                                     ; $613c: $77
	sub  a                                           ; $613d: $97
	adc  b                                           ; $613e: $88
	sub  a                                           ; $613f: $97
	adc  c                                           ; $6140: $89
	ld   a, b                                        ; $6141: $78
	add  a                                           ; $6142: $87
	adc  c                                           ; $6143: $89
	ld   a, b                                        ; $6144: $78
	sub  a                                           ; $6145: $97
	adc  c                                           ; $6146: $89
	add  a                                           ; $6147: $87
	adc  b                                           ; $6148: $88
	ld   l, c                                        ; $6149: $69
	ld   a, b                                        ; $614a: $78
	ld   a, b                                        ; $614b: $78
	adc  b                                           ; $614c: $88
	sub  a                                           ; $614d: $97
	adc  b                                           ; $614e: $88
	add  a                                           ; $614f: $87
	sbc  b                                           ; $6150: $98
	ld   a, b                                        ; $6151: $78
	adc  b                                           ; $6152: $88
	ld   a, c                                        ; $6153: $79
	adc  b                                           ; $6154: $88
	sbc  b                                           ; $6155: $98
	adc  c                                           ; $6156: $89
	add  a                                           ; $6157: $87
	sub  a                                           ; $6158: $97
	add  a                                           ; $6159: $87
	adc  b                                           ; $615a: $88
	ld   a, b                                        ; $615b: $78
	ld   a, b                                        ; $615c: $78
	ld   a, b                                        ; $615d: $78
	ld   a, c                                        ; $615e: $79
	ld   l, b                                        ; $615f: $68
	sub  a                                           ; $6160: $97
	adc  c                                           ; $6161: $89
	add  a                                           ; $6162: $87
	sub  a                                           ; $6163: $97
	sbc  c                                           ; $6164: $99
	sbc  b                                           ; $6165: $98
	sbc  b                                           ; $6166: $98
	ld   a, c                                        ; $6167: $79
	ld   [hl], a                                     ; $6168: $77
	add  a                                           ; $6169: $87
	ld   [hl], a                                     ; $616a: $77
	add  [hl]                                        ; $616b: $86
	ld   [hl], a                                     ; $616c: $77
	ld   [hl], a                                     ; $616d: $77
	adc  c                                           ; $616e: $89
	adc  c                                           ; $616f: $89
	sbc  c                                           ; $6170: $99
	xor  d                                           ; $6171: $aa
	sbc  d                                           ; $6172: $9a
	xor  c                                           ; $6173: $a9
	sbc  b                                           ; $6174: $98
	add  [hl]                                        ; $6175: $86
	halt                                             ; $6176: $76
	ld   h, [hl]                                     ; $6177: $66
	ld   h, [hl]                                     ; $6178: $66
	ld   e, b                                        ; $6179: $58
	ld   h, a                                        ; $617a: $67
	adc  c                                           ; $617b: $89
	sbc  d                                           ; $617c: $9a
	xor  c                                           ; $617d: $a9
	cp   d                                           ; $617e: $ba
	xor  d                                           ; $617f: $aa
	xor  b                                           ; $6180: $a8
	sbc  b                                           ; $6181: $98
	ld   h, [hl]                                     ; $6182: $66
	ld   h, [hl]                                     ; $6183: $66
	ld   d, [hl]                                     ; $6184: $56
	ld   d, l                                        ; $6185: $55
	ld   h, [hl]                                     ; $6186: $66
	ld   a, b                                        ; $6187: $78
	sbc  c                                           ; $6188: $99
	xor  e                                           ; $6189: $ab
	cp   d                                           ; $618a: $ba
	cp   e                                           ; $618b: $bb
	xor  d                                           ; $618c: $aa
	xor  b                                           ; $618d: $a8
	adc  c                                           ; $618e: $89
	ld   d, [hl]                                     ; $618f: $56
	ld   h, l                                        ; $6190: $65
	ld   b, l                                        ; $6191: $45
	ld   h, h                                        ; $6192: $64
	ld   d, [hl]                                     ; $6193: $56
	ld   h, a                                        ; $6194: $67
	sbc  c                                           ; $6195: $99
	xor  e                                           ; $6196: $ab
	cp   h                                           ; $6197: $bc
	res  7, e                                        ; $6198: $cb $bb
	sbc  c                                           ; $619a: $99
	sbc  b                                           ; $619b: $98
	halt                                             ; $619c: $76
	ld   d, h                                        ; $619d: $54
	ld   h, l                                        ; $619e: $65
	ld   [hl], $45                                   ; $619f: $36 $45
	halt                                             ; $61a1: $76
	adc  c                                           ; $61a2: $89
	sbc  d                                           ; $61a3: $9a
	cp   h                                           ; $61a4: $bc
	call z, $bada                                    ; $61a5: $cc $da $ba
	adc  c                                           ; $61a8: $89
	add  [hl]                                        ; $61a9: $86
	ld   h, h                                        ; $61aa: $64
	ld   d, l                                        ; $61ab: $55
	dec  [hl]                                        ; $61ac: $35
	ld   d, e                                        ; $61ad: $53
	ld   h, [hl]                                     ; $61ae: $66
	ld   l, c                                        ; $61af: $69
	sbc  d                                           ; $61b0: $9a
	set  3, l                                        ; $61b1: $cb $dd
	call z, $99cc                                    ; $61b3: $cc $cc $99
	sub  a                                           ; $61b6: $97
	ld   d, h                                        ; $61b7: $54
	ld   b, h                                        ; $61b8: $44
	ld   b, d                                        ; $61b9: $42

Call_0e6_61ba:
	ld   h, e                                        ; $61ba: $63
	scf                                              ; $61bb: $37
	ld   d, a                                        ; $61bc: $57
	sbc  c                                           ; $61bd: $99
	cp   h                                           ; $61be: $bc
	cp   [hl]                                        ; $61bf: $be
	call c, $b9cb                                    ; $61c0: $dc $cb $b9
	and  a                                           ; $61c3: $a7
	ld   h, l                                        ; $61c4: $65
	inc  sp                                          ; $61c5: $33
	ld   d, c                                        ; $61c6: $51
	ld   b, l                                        ; $61c7: $45
	rla                                              ; $61c8: $17
	ld   h, l                                        ; $61c9: $65
	sbc  c                                           ; $61ca: $99
	sbc  l                                           ; $61cb: $9d
	call z, $dced                                    ; $61cc: $cc $ed $dc
	ret                                              ; $61cf: $c9


	xor  c                                           ; $61d0: $a9
	ld   d, l                                        ; $61d1: $55
	ld   [hl-], a                                    ; $61d2: $32
	ld   d, c                                        ; $61d3: $51
	rlca                                             ; $61d4: $07
	dec  d                                           ; $61d5: $15
	add  h                                           ; $61d6: $84
	sbc  d                                           ; $61d7: $9a
	xor  l                                           ; $61d8: $ad
	db   $ec                                         ; $61d9: $ec
	cp   $dc                                         ; $61da: $fe $dc
	res  1, d                                        ; $61dc: $cb $8a
	ld   d, l                                        ; $61de: $55
	ld   sp, $1752                                   ; $61df: $31 $52 $17
	ld   [de], a                                     ; $61e2: $12
	and  e                                           ; $61e3: $a3
	sbc  e                                           ; $61e4: $9b
	sbc  h                                           ; $61e5: $9c
	db   $ec                                         ; $61e6: $ec
	cp   $dc                                         ; $61e7: $fe $dc
	res  3, e                                        ; $61e9: $cb $9b
	ld   d, l                                        ; $61eb: $55
	ld   sp, $1651                                   ; $61ec: $31 $51 $16
	ld   [de], a                                     ; $61ef: $12
	and  d                                           ; $61f0: $a2
	sbc  h                                           ; $61f1: $9c
	sbc  [hl]                                        ; $61f2: $9e
	db   $fc                                         ; $61f3: $fc
	rst  $38                                         ; $61f4: $ff
	call $8adb                                       ; $61f5: $cd $db $8a
	ld   b, h                                        ; $61f8: $44
	ld   sp, $1751                                   ; $61f9: $31 $51 $17
	ld   [de], a                                     ; $61fc: $12
	or   d                                           ; $61fd: $b2
	xor  h                                           ; $61fe: $ac
	adc  [hl]                                        ; $61ff: $8e
	db   $fc                                         ; $6200: $fc
	rst  $38                                         ; $6201: $ff
	call c, $8bea                                    ; $6202: $dc $ea $8b
	ld   b, h                                        ; $6205: $44
	ld   sp, $1851                                   ; $6206: $31 $51 $18
	inc  d                                           ; $6209: $14
	and  c                                           ; $620a: $a1
	cp   e                                           ; $620b: $bb
	adc  a                                           ; $620c: $8f
	db   $fc                                         ; $620d: $fc
	rst  $38                                         ; $620e: $ff
	call $8bd9                                       ; $620f: $cd $d9 $8b
	dec  h                                           ; $6212: $25
	ld   hl, $1761                                   ; $6213: $21 $61 $17
	rla                                              ; $6216: $17
	add  c                                           ; $6217: $81
	ld   [$fd9f], a                                  ; $6218: $ea $9f $fd
	cp   $bd                                         ; $621b: $fe $bd
	rst  $10                                         ; $621d: $d7
	xor  d                                           ; $621e: $aa
	dec  h                                           ; $621f: $25
	ld   de, $5451                                   ; $6220: $11 $51 $54
	dec  de                                          ; $6223: $1b
	ld   b, d                                        ; $6224: $42
	rst  $30                                         ; $6225: $f7
	cp   a                                           ; $6226: $bf
	call $cffd                                       ; $6227: $cd $fd $cf
	rst  ToBoot                                         ; $622a: $c7
	rst  ToBoot                                         ; $622b: $c7
	ld   d, $14                                      ; $622c: $16 $14
	ld   sp, $1e81                                   ; $622e: $31 $81 $1e
	rla                                              ; $6231: $17
	push af                                          ; $6232: $f5
	rst  $28                                         ; $6233: $ef
	cp   a                                           ; $6234: $bf
	db   $fc                                         ; $6235: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6236: $cf
	or   a                                           ; $6237: $b7
	call nc, $1634                                   ; $6238: $d4 $34 $16
	ld   de, $3c91                                   ; $623b: $11 $91 $3c
	inc  e                                           ; $623e: $1c
	add  $ff                                         ; $623f: $c6 $ff
	cp   a                                           ; $6241: $bf
	db   $fc                                         ; $6242: $fc
	sbc  $88                                         ; $6243: $de $88
	jp   nz, $1752                                   ; $6245: $c2 $52 $17

	ld   [de], a                                     ; $6248: $12
	add  c                                           ; $6249: $81
	xor  b                                           ; $624a: $a8
	rra                                              ; $624b: $1f
	sbc  b                                           ; $624c: $98
	db   $fd                                         ; $624d: $fd
	rst  JumpTable                                         ; $624e: $df
	call c, $8bed                                    ; $624f: $dc $ed $8b
	sub  c                                           ; $6252: $91
	ld   h, c                                        ; $6253: $61
	dec  [hl]                                        ; $6254: $35
	rla                                              ; $6255: $17
	ld   sp, $4ff2                                   ; $6256: $31 $f2 $4f
	ld   e, h                                        ; $6259: $5c
	ei                                               ; $625a: $fb
	rst  $38                                         ; $625b: $ff
	call Call_0e6_7cdc                               ; $625c: $cd $dc $7c
	ld   h, d                                        ; $625f: $62
	ld   d, c                                        ; $6260: $51
	ld   h, c                                        ; $6261: $61
	ld   a, [de]                                     ; $6262: $1a
	ld   [de], a                                     ; $6263: $12
	pop  hl                                          ; $6264: $e1
	cp   [hl]                                        ; $6265: $be
	ld   c, a                                        ; $6266: $4f
	ld   a, [$ceff]                                  ; $6267: $fa $ff $ce
	jp   z, $349b                                    ; $626a: $ca $9b $34

	ld   hl, $2971                                   ; $626d: $21 $71 $29
	dec  de                                          ; $6270: $1b
	add  c                                           ; $6271: $81
	ld   sp, hl                                      ; $6272: $f9
	adc  a                                           ; $6273: $8f
	call $dffc                                       ; $6274: $cd $fc $df
	ret  z                                           ; $6277: $c8

	cp   b                                           ; $6278: $b8
	ld   d, $13                                      ; $6279: $16 $13
	ld   d, c                                        ; $627b: $51
	and  d                                           ; $627c: $a2
	rra                                              ; $627d: $1f
	dec  d                                           ; $627e: $15
	db   $f4                                         ; $627f: $f4
	rst  $28                                         ; $6280: $ef
	sbc  a                                           ; $6281: $9f
	ld   a, [$a8de]                                  ; $6282: $fa $de $a8
	push bc                                          ; $6285: $c5
	dec  [hl]                                        ; $6286: $35
	rla                                              ; $6287: $17
	ld   de, $4ed1                                   ; $6288: $11 $d1 $4e
	ld   e, $d4                                      ; $628b: $1e $d4
	rst  $38                                         ; $628d: $ff
	xor  a                                           ; $628e: $af
	ld   [$8afc], a                                  ; $628f: $ea $fc $8a
	and  d                                           ; $6292: $a2
	ld   d, c                                        ; $6293: $51
	jr   jr_0e6_62ab                                 ; $6294: $18 $15

	sub  c                                           ; $6296: $91
	and  $1f                                         ; $6297: $e6 $1f
	ld   l, c                                        ; $6299: $69
	ei                                               ; $629a: $fb
	rst  $28                                         ; $629b: $ef
	call z, Call_0e6_7cfb                            ; $629c: $cc $fb $7c
	ld   [hl], c                                     ; $629f: $71
	ld   h, c                                        ; $62a0: $61
	ld   d, e                                        ; $62a1: $53
	dec  e                                           ; $62a2: $1d
	ld   de, $aff1                                   ; $62a3: $11 $f1 $af
	ccf                                              ; $62a6: $3f
	ld   a, [$aeff]                                  ; $62a7: $fa $ff $ae
	jp   hl                                          ; $62aa: $e9


jr_0e6_62ab:
	sbc  h                                           ; $62ab: $9c
	inc  sp                                          ; $62ac: $33
	ld   b, c                                        ; $62ad: $41
	add  c                                           ; $62ae: $81
	dec  de                                          ; $62af: $1b
	add  hl, de                                      ; $62b0: $19
	and  c                                           ; $62b1: $a1
	ld   a, [$dc7f]                                  ; $62b2: $fa $7f $dc
	db   $fc                                         ; $62b5: $fc
	adc  $c7                                         ; $62b6: $ce $c7
	xor  d                                           ; $62b8: $aa
	dec  d                                           ; $62b9: $15
	ld   [de], a                                     ; $62ba: $12
	ld   [hl], c                                     ; $62bb: $71
	and  h                                           ; $62bc: $a4
	rra                                              ; $62bd: $1f
	inc  d                                           ; $62be: $14
	db   $f4                                         ; $62bf: $f4
	rst  JumpTable                                         ; $62c0: $df
	sbc  a                                           ; $62c1: $9f
	ld   a, [$a7dd]                                  ; $62c2: $fa $dd $a7
	push bc                                          ; $62c5: $c5
	dec  d                                           ; $62c6: $15
	rla                                              ; $62c7: $17
	ld   de, $5fe1                                   ; $62c8: $11 $e1 $5f
	rra                                              ; $62cb: $1f
	call nc, $affe                                   ; $62cc: $d4 $fe $af
	jp   c, $8aec                                    ; $62cf: $da $ec $8a

	or   c                                           ; $62d2: $b1
	ld   b, c                                        ; $62d3: $41
	ld   [$6117], sp                                 ; $62d4: $08 $17 $61
	di                                               ; $62d7: $f3
	cpl                                              ; $62d8: $2f
	ld   c, h                                        ; $62d9: $4c
	ld   sp, hl                                      ; $62da: $f9
	rst  $28                                         ; $62db: $ef
	xor  h                                           ; $62dc: $ac
	ld   [$717b], a                                  ; $62dd: $ea $7b $71
	ld   d, c                                        ; $62e0: $51
	ld   [hl], c                                     ; $62e1: $71
	rra                                              ; $62e2: $1f
	ld   [de], a                                     ; $62e3: $12
	pop  af                                          ; $62e4: $f1
	cp   $3f                                         ; $62e5: $fe $3f
	ld   sp, hl                                      ; $62e7: $f9
	cp   $9e                                         ; $62e8: $fe $9e
	ret  z                                           ; $62ea: $c8

	adc  h                                           ; $62eb: $8c
	inc  hl                                          ; $62ec: $23
	ld   hl, $7981                                   ; $62ed: $21 $81 $79
	rra                                              ; $62f0: $1f
	ld   b, c                                        ; $62f1: $41
	db   $f4                                         ; $62f2: $f4
	cp   a                                           ; $62f3: $bf
	sbc  l                                           ; $62f4: $9d
	ld   sp, hl                                      ; $62f5: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62f6: $cf
	sub  a                                           ; $62f7: $97
	or   a                                           ; $62f8: $b7
	dec  d                                           ; $62f9: $15
	ld   d, $11                                      ; $62fa: $16 $11
	pop  af                                          ; $62fc: $f1
	cpl                                              ; $62fd: $2f
	rra                                              ; $62fe: $1f
	ldh  a, [c]                                      ; $62ff: $f2
	rst  $38                                         ; $6300: $ff
	adc  a                                           ; $6301: $8f
	ld   hl, sp-$13                                  ; $6302: $f8 $ed
	ld   a, c                                        ; $6304: $79
	pop  bc                                          ; $6305: $c1
	ld   [hl-], a                                    ; $6306: $32
	ld   a, [de]                                     ; $6307: $1a
	ld   d, $91                                      ; $6308: $16 $91
	db   $f4                                         ; $630a: $f4
	rra                                              ; $630b: $1f
	ld   c, d                                        ; $630c: $4a
	ld   a, [$9cdf]                                  ; $630d: $fa $df $9c
	ld   a, [$817b]                                  ; $6310: $fa $7b $81
	ld   d, c                                        ; $6313: $51
	ld   h, d                                        ; $6314: $62
	rra                                              ; $6315: $1f
	ld   [de], a                                     ; $6316: $12
	pop  af                                          ; $6317: $f1
	rst  $38                                         ; $6318: $ff
	cpl                                              ; $6319: $2f
	ld   sp, hl                                      ; $631a: $f9
	rst  $38                                         ; $631b: $ff
	adc  a                                           ; $631c: $8f
	rst  ToBoot                                         ; $631d: $c7
	sbc  h                                           ; $631e: $9c
	inc  hl                                          ; $631f: $23
	ld   sp, $5b91                                   ; $6320: $31 $91 $5b
	rra                                              ; $6323: $1f
	ld   h, c                                        ; $6324: $61
	push af                                          ; $6325: $f5
	xor  a                                           ; $6326: $af
	xor  l                                           ; $6327: $ad
	ei                                               ; $6328: $fb
	xor  [hl]                                        ; $6329: $ae
	sub  a                                           ; $632a: $97
	xor  b                                           ; $632b: $a8
	dec  d                                           ; $632c: $15
	dec  d                                           ; $632d: $15
	ld   b, c                                        ; $632e: $41
	pop  af                                          ; $632f: $f1
	rra                                              ; $6330: $1f
	dec  de                                          ; $6331: $1b
	ldh  a, [c]                                      ; $6332: $f2
	rst  $38                                         ; $6333: $ff
	sbc  a                                           ; $6334: $9f
	ld   hl, sp-$24                                  ; $6335: $f8 $dc
	add  a                                           ; $6337: $87
	call nz, $1a24                                   ; $6338: $c4 $24 $1a
	ld   [de], a                                     ; $633b: $12
	pop  af                                          ; $633c: $f1
	db   $eb                                         ; $633d: $eb
	rra                                              ; $633e: $1f
	add  [hl]                                        ; $633f: $86
	ei                                               ; $6340: $fb
	cp   a                                           ; $6341: $bf
	ret                                              ; $6342: $c9


	db   $eb                                         ; $6343: $eb
	ld   a, c                                        ; $6344: $79
	or   c                                           ; $6345: $b1
	ld   b, c                                        ; $6346: $41
	ld   b, a                                        ; $6347: $47
	rra                                              ; $6348: $1f
	ld   de, $7ff1                                   ; $6349: $11 $f1 $7f
	ld   e, $f8                                      ; $634c: $1e $f8
	rst  $28                                         ; $634e: $ef
	adc  l                                           ; $634f: $8d
	ret  c                                           ; $6350: $d8

	ld   a, e                                        ; $6351: $7b
	ld   h, c                                        ; $6352: $61
	ld   d, c                                        ; $6353: $51
	and  c                                           ; $6354: $a1
	rra                                              ; $6355: $1f
	add  hl, de                                      ; $6356: $19
	pop  af                                          ; $6357: $f1
	db   $fc                                         ; $6358: $fc
	ld   c, a                                        ; $6359: $4f
	jp   c, $8efd                                    ; $635a: $da $fd $8e

	or   a                                           ; $635d: $b7
	adc  e                                           ; $635e: $8b
	inc  de                                          ; $635f: $13
	ld   [hl+], a                                    ; $6360: $22
	and  c                                           ; $6361: $a1
	or   a                                           ; $6362: $b7
	rra                                              ; $6363: $1f
	ld   hl, $bff3                                   ; $6364: $21 $f3 $bf
	xor  h                                           ; $6367: $ac
	ld   sp, hl                                      ; $6368: $f9
	xor  [hl]                                        ; $6369: $ae
	add  a                                           ; $636a: $87
	cp   b                                           ; $636b: $b8
	dec  d                                           ; $636c: $15
	jr   jr_0e6_6380                                 ; $636d: $18 $11

	pop  af                                          ; $636f: $f1
	ld   e, a                                        ; $6370: $5f
	rra                                              ; $6371: $1f
	ldh  [c], a                                      ; $6372: $e2
	rst  $38                                         ; $6373: $ff
	sbc  a                                           ; $6374: $9f
	rst  $30                                         ; $6375: $f7
	call c, $b378                                    ; $6376: $dc $78 $b3
	inc  hl                                          ; $6379: $23
	ld   a, [de]                                     ; $637a: $1a
	add  hl, de                                      ; $637b: $19
	and  c                                           ; $637c: $a1
	db   $f4                                         ; $637d: $f4
	rra                                              ; $637e: $1f
	ld   c, d                                        ; $637f: $4a

jr_0e6_6380:
	ei                                               ; $6380: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6381: $cf
	xor  c                                           ; $6382: $a9
	jp   hl                                          ; $6383: $e9


	ld   a, d                                        ; $6384: $7a
	sub  c                                           ; $6385: $91
	ld   b, c                                        ; $6386: $41
	ld   [hl], e                                     ; $6387: $73
	rra                                              ; $6388: $1f
	ld   de, $dff1                                   ; $6389: $11 $f1 $df
	cpl                                              ; $638c: $2f
	ld   sp, hl                                      ; $638d: $f9
	rst  $28                                         ; $638e: $ef
	ld   a, l                                        ; $638f: $7d
	ret  z                                           ; $6390: $c8

	ld   a, e                                        ; $6391: $7b
	ld   d, c                                        ; $6392: $51
	ld   sp, $4fb1                                   ; $6393: $31 $b1 $4f
	rra                                              ; $6396: $1f
	pop  bc                                          ; $6397: $c1
	ld   sp, hl                                      ; $6398: $f9
	ld   l, a                                        ; $6399: $6f
	reti                                             ; $639a: $d9


	db   $fc                                         ; $639b: $fc
	adc  [hl]                                        ; $639c: $8e
	xor  b                                           ; $639d: $a8
	adc  e                                           ; $639e: $8b
	inc  hl                                          ; $639f: $23
	dec  d                                           ; $63a0: $15
	ld   [hl], c                                     ; $63a1: $71
	di                                               ; $63a2: $f3
	rra                                              ; $63a3: $1f
	dec  d                                           ; $63a4: $15
	di                                               ; $63a5: $f3
	rst  JumpTable                                         ; $63a6: $df
	xor  e                                           ; $63a7: $ab
	ld   hl, sp-$43                                  ; $63a8: $f8 $bd
	sub  a                                           ; $63aa: $97
	sbc  b                                           ; $63ab: $98
	inc  d                                           ; $63ac: $14
	add  hl, de                                      ; $63ad: $19
	ld   de, $4ff1                                   ; $63ae: $11 $f1 $4f
	rra                                              ; $63b1: $1f
	di                                               ; $63b2: $f3
	rst  $38                                         ; $63b3: $ff
	adc  a                                           ; $63b4: $8f
	rst  $30                                         ; $63b5: $f7
	res  0, a                                        ; $63b6: $cb $87
	or   l                                           ; $63b8: $b5
	ld   [de], a                                     ; $63b9: $12
	add  hl, hl                                      ; $63ba: $29
	rla                                              ; $63bb: $17
	pop  de                                          ; $63bc: $d1
	ei                                               ; $63bd: $fb
	rra                                              ; $63be: $1f
	sub  a                                           ; $63bf: $97
	db   $fd                                         ; $63c0: $fd
	sbc  a                                           ; $63c1: $9f
	cp   b                                           ; $63c2: $b8
	jp   hl                                          ; $63c3: $e9


	add  a                                           ; $63c4: $87
	and  d                                           ; $63c5: $a2
	ld   hl, $1f64                                   ; $63c6: $21 $64 $1f
	ld   de, $6ff1                                   ; $63c9: $11 $f1 $6f
	ld   c, l                                        ; $63cc: $4d
	ei                                               ; $63cd: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63ce: $cf
	adc  e                                           ; $63cf: $8b
	ret  c                                           ; $63d0: $d8

	ld   a, c                                        ; $63d1: $79
	add  c                                           ; $63d2: $81
	ld   hl, $0f91                                   ; $63d3: $21 $91 $0f
	add  hl, de                                      ; $63d6: $19
	pop  af                                          ; $63d7: $f1
	cp   $4f                                         ; $63d8: $fe $4f
	ld   sp, hl                                      ; $63da: $f9
	cp   $7c                                         ; $63db: $fe $7c
	cp   c                                           ; $63dd: $b9
	ld   l, e                                        ; $63de: $6b
	ld   b, c                                        ; $63df: $41
	inc  h                                           ; $63e0: $24
	ld   [hl], c                                     ; $63e1: $71
	ret                                              ; $63e2: $c9


	rra                                              ; $63e3: $1f
	ld   h, c                                        ; $63e4: $61
	rst  $30                                         ; $63e5: $f7
	sbc  a                                           ; $63e6: $9f
	ret                                              ; $63e7: $c9


	ld   a, [$a79d]                                  ; $63e8: $fa $9d $a7
	ld   a, d                                        ; $63eb: $7a
	ld   [de], a                                     ; $63ec: $12
	rla                                              ; $63ed: $17
	ld   de, $1ff1                                   ; $63ee: $11 $f1 $1f
	ld   a, [de]                                     ; $63f1: $1a
	di                                               ; $63f2: $f3
	rst  $28                                         ; $63f3: $ef
	xor  l                                           ; $63f4: $ad
	ld   hl, sp-$45                                  ; $63f5: $f8 $bb
	sub  [hl]                                        ; $63f7: $96
	sbc  b                                           ; $63f8: $98
	ld   [de], a                                     ; $63f9: $12
	add  hl, hl                                      ; $63fa: $29
	inc  de                                          ; $63fb: $13
	pop  af                                          ; $63fc: $f1
	cp   a                                           ; $63fd: $bf
	rra                                              ; $63fe: $1f
	push de                                          ; $63ff: $d5
	rst  $38                                         ; $6400: $ff
	sbc  a                                           ; $6401: $9f
	rst  $20                                         ; $6402: $e7
	jp   z, $b486                                    ; $6403: $ca $86 $b4

	ld   [de], a                                     ; $6406: $12
	ld   d, l                                        ; $6407: $55
	dec  e                                           ; $6408: $1d
	ld   h, c                                        ; $6409: $61
	push af                                          ; $640a: $f5
	rra                                              ; $640b: $1f
	ld   l, c                                        ; $640c: $69
	ei                                               ; $640d: $fb
	xor  a                                           ; $640e: $af
	xor  c                                           ; $640f: $a9
	ret                                              ; $6410: $c9


	ld   [hl], a                                     ; $6411: $77
	and  c                                           ; $6412: $a1
	ld   [de], a                                     ; $6413: $12
	ld   [hl], c                                     ; $6414: $71
	rra                                              ; $6415: $1f
	ld   de, $bff1                                   ; $6416: $11 $f1 $bf
	ld   a, $f9                                      ; $6419: $3e $f9
	rst  JumpTable                                         ; $641b: $df
	ld   a, e                                        ; $641c: $7b
	cp   c                                           ; $641d: $b9
	ld   l, d                                        ; $641e: $6a
	ld   [hl], c                                     ; $641f: $71
	inc  hl                                          ; $6420: $23
	add  c                                           ; $6421: $81
	ld   c, a                                        ; $6422: $4f
	inc  e                                           ; $6423: $1c
	pop  af                                          ; $6424: $f1
	db   $fd                                         ; $6425: $fd
	ld   e, a                                        ; $6426: $5f
	ld   sp, hl                                      ; $6427: $f9
	cp   $8b                                         ; $6428: $fe $8b
	cp   b                                           ; $642a: $b8
	ld   e, e                                        ; $642b: $5b
	ld   sp, $4126                                   ; $642c: $31 $26 $41
	db   $f4                                         ; $642f: $f4
	rra                                              ; $6430: $1f
	inc  sp                                          ; $6431: $33
	push af                                          ; $6432: $f5
	xor  a                                           ; $6433: $af
	cp   d                                           ; $6434: $ba
	ld   a, [$b69c]                                  ; $6435: $fa $9c $b6
	ld   a, e                                        ; $6438: $7b
	ld   [de], a                                     ; $6439: $12
	scf                                              ; $643a: $37
	ld   de, $3ff1                                   ; $643b: $11 $f1 $3f
	dec  e                                           ; $643e: $1d
	di                                               ; $643f: $f3
	rst  $38                                         ; $6440: $ff
	sbc  l                                           ; $6441: $9d
	rst  $30                                         ; $6442: $f7
	res  2, l                                        ; $6443: $cb $95
	sub  a                                           ; $6445: $97
	ld   [de], a                                     ; $6446: $12
	scf                                              ; $6447: $37
	dec  d                                           ; $6448: $15
	pop  hl                                          ; $6449: $e1
	sbc  $1f                                         ; $644a: $de $1f
	push bc                                          ; $644c: $c5
	cp   $8f                                         ; $644d: $fe $8f
	ret  c                                           ; $644f: $d8

	jp   z, $b386                                    ; $6450: $ca $86 $b3

	ld   [de], a                                     ; $6453: $12
	ld   d, h                                        ; $6454: $54
	ld   e, $41                                      ; $6455: $1e $41
	di                                               ; $6457: $f3
	ccf                                              ; $6458: $3f
	ld   e, d                                        ; $6459: $5a
	ei                                               ; $645a: $fb
	xor  a                                           ; $645b: $af
	xor  c                                           ; $645c: $a9
	jp   z, $a168                                    ; $645d: $ca $68 $a1

	ld   [hl+], a                                    ; $6460: $22
	ld   [hl], c                                     ; $6461: $71
	rra                                              ; $6462: $1f
	inc  de                                          ; $6463: $13
	pop  af                                          ; $6464: $f1
	rst  JumpTable                                         ; $6465: $df
	ccf                                              ; $6466: $3f
	ld   hl, sp-$11                                  ; $6467: $f8 $ef
	adc  e                                           ; $6469: $8b
	cp   c                                           ; $646a: $b9
	ld   e, d                                        ; $646b: $5a
	ld   h, c                                        ; $646c: $61
	inc  sp                                          ; $646d: $33
	ld   [hl], c                                     ; $646e: $71
	ld   l, h                                        ; $646f: $6c
	ld   e, $d1                                      ; $6470: $1e $d1
	ld   a, [$d85f]                                  ; $6472: $fa $5f $d8
	db   $fd                                         ; $6475: $fd
	adc  h                                           ; $6476: $8c
	and  a                                           ; $6477: $a7
	ld   l, e                                        ; $6478: $6b
	ld   hl, $4135                                   ; $6479: $21 $35 $41
	db   $d3                                         ; $647c: $d3
	rra                                              ; $647d: $1f
	inc  h                                           ; $647e: $24
	db   $f4                                         ; $647f: $f4
	cp   a                                           ; $6480: $bf
	xor  h                                           ; $6481: $ac
	ld   sp, hl                                      ; $6482: $f9
	xor  e                                           ; $6483: $ab
	and  [hl]                                        ; $6484: $a6
	sbc  d                                           ; $6485: $9a
	ld   [de], a                                     ; $6486: $12
	daa                                              ; $6487: $27
	ld   de, $4ff1                                   ; $6488: $11 $f1 $4f
	dec  e                                           ; $648b: $1d
	di                                               ; $648c: $f3
	rst  $38                                         ; $648d: $ff
	adc  [hl]                                        ; $648e: $8e
	ld   hl, sp-$45                                  ; $648f: $f8 $bb
	add  [hl]                                        ; $6491: $86
	and  l                                           ; $6492: $a5
	inc  de                                          ; $6493: $13
	ld   b, [hl]                                     ; $6494: $46
	add  hl, de                                      ; $6495: $19
	sub  c                                           ; $6496: $91
	ld   hl, sp+$1f                                  ; $6497: $f8 $1f
	add  a                                           ; $6499: $87
	db   $fc                                         ; $649a: $fc
	sbc  a                                           ; $649b: $9f
	cp   c                                           ; $649c: $b9
	jp   c, $a277                                    ; $649d: $da $77 $a2

	inc  de                                          ; $64a0: $13
	ld   h, c                                        ; $64a1: $61
	rra                                              ; $64a2: $1f
	ld   de, $9ff1                                   ; $64a3: $11 $f1 $9f
	ld   a, $f9                                      ; $64a6: $3e $f9

Call_0e6_64a8:
	rst  JumpTable                                         ; $64a8: $df
	sbc  e                                           ; $64a9: $9b
	jp   z, Jump_0e6_716b                            ; $64aa: $ca $6b $71

	inc  sp                                          ; $64ad: $33
	ld   h, c                                        ; $64ae: $61
	ld   e, l                                        ; $64af: $5d
	dec  e                                           ; $64b0: $1d
	pop  de                                          ; $64b1: $d1
	ld   a, [$e85f]                                  ; $64b2: $fa $5f $e8
	db   $fd                                         ; $64b5: $fd
	sbc  l                                           ; $64b6: $9d
	cp   b                                           ; $64b7: $b8
	ld   a, e                                        ; $64b8: $7b
	ld   [hl-], a                                    ; $64b9: $32
	dec  [hl]                                        ; $64ba: $35
	ld   sp, $1fe1                                   ; $64bb: $31 $e1 $1f
	ld   d, $f4                                      ; $64be: $16 $f4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64c0: $cf
	sbc  l                                           ; $64c1: $9d
	ld   sp, hl                                      ; $64c2: $f9
	call z, $9897                                    ; $64c3: $cc $97 $98
	inc  d                                           ; $64c6: $14
	ld   h, $11                                      ; $64c7: $26 $11
	pop  af                                          ; $64c9: $f1
	ld   c, a                                        ; $64ca: $4f
	dec  e                                           ; $64cb: $1d
	di                                               ; $64cc: $f3
	rst  $38                                         ; $64cd: $ff
	sbc  a                                           ; $64ce: $9f
	ret  c                                           ; $64cf: $d8

	db   $db                                         ; $64d0: $db
	sbc  b                                           ; $64d1: $98
	or   [hl]                                        ; $64d2: $b6
	inc  h                                           ; $64d3: $24
	rla                                              ; $64d4: $17
	ld   [de], a                                     ; $64d5: $12
	pop  de                                          ; $64d6: $d1
	adc  [hl]                                        ; $64d7: $8e
	rra                                              ; $64d8: $1f
	and  l                                           ; $64d9: $a5
	db   $fc                                         ; $64da: $fc
	sbc  a                                           ; $64db: $9f
	xor  c                                           ; $64dc: $a9
	jp   z, $c6a8                                    ; $64dd: $ca $a8 $c6

	ld   d, l                                        ; $64e0: $55
	add  hl, de                                      ; $64e1: $19
	ld   hl, $4fe1                                   ; $64e2: $21 $e1 $4f
	inc  e                                           ; $64e5: $1c
	or   h                                           ; $64e6: $b4

jr_0e6_64e7:
	db   $fc                                         ; $64e7: $fc
	xor  [hl]                                        ; $64e8: $ae
	jp   z, $b8ba                                    ; $64e9: $ca $ba $b8

	rst  ToBoot                                         ; $64ec: $c7
	ld   d, a                                        ; $64ed: $57
	rla                                              ; $64ee: $17
	ld   b, c                                        ; $64ef: $41
	pop  de                                          ; $64f0: $d1
	rra                                              ; $64f1: $1f
	jr   jr_0e6_64e7                                 ; $64f2: $18 $f3

	db   $dd                                         ; $64f4: $dd
	sbc  l                                           ; $64f5: $9d
	reti                                             ; $64f6: $d9


	jp   z, $bab8                                    ; $64f7: $ca $b8 $ba

	ld   c, b                                        ; $64fa: $48
	dec  h                                           ; $64fb: $25
	ld   [hl], c                                     ; $64fc: $71
	and  [hl]                                        ; $64fd: $a6
	rra                                              ; $64fe: $1f
	ld   b, h                                        ; $64ff: $44
	db   $f4                                         ; $6500: $f4
	xor  a                                           ; $6501: $af
	adc  h                                           ; $6502: $8c
	reti                                             ; $6503: $d9


	jp   z, $aa99                                    ; $6504: $ca $99 $aa

	ld   e, b                                        ; $6507: $58
	ld   b, h                                        ; $6508: $44
	sub  c                                           ; $6509: $91
	ld   e, e                                        ; $650a: $5b
	dec  de                                          ; $650b: $1b
	sub  c                                           ; $650c: $91
	or   $7f                                         ; $650d: $f6 $7f
	sbc  d                                           ; $650f: $9a
	jp   c, $a9bb                                    ; $6510: $da $bb $a9

	sbc  e                                           ; $6513: $9b
	ld   d, a                                        ; $6514: $57
	ld   d, e                                        ; $6515: $53
	sub  c                                           ; $6516: $91
	ld   c, e                                        ; $6517: $4b
	ld   a, [de]                                     ; $6518: $1a
	and  c                                           ; $6519: $a1
	or   $6e                                         ; $651a: $f6 $6e
	sbc  e                                           ; $651c: $9b
	jp   z, $b9ab                                    ; $651d: $ca $ab $b9

	sbc  h                                           ; $6520: $9c
	ld   h, a                                        ; $6521: $67
	ld   h, d                                        ; $6522: $62
	and  d                                           ; $6523: $a2
	dec  e                                           ; $6524: $1d
	ld   d, $e1                                      ; $6525: $16 $e1
	ret  c                                           ; $6527: $d8

	ld   e, [hl]                                     ; $6528: $5e
	sbc  e                                           ; $6529: $9b
	jp   z, $aaa9                                    ; $652a: $ca $a9 $aa

	adc  h                                           ; $652d: $8c
	ld   [hl], a                                     ; $652e: $77
	add  d                                           ; $652f: $82
	sub  h                                           ; $6530: $94
	ld   e, $13                                      ; $6531: $1e $13
	pop  af                                          ; $6533: $f1
	cp   d                                           ; $6534: $ba
	ld   a, $aa                                      ; $6535: $3e $aa
	jp   z, $aba9                                    ; $6537: $ca $a9 $ab

	ld   a, h                                        ; $653a: $7c
	add  [hl]                                        ; $653b: $86
	sub  d                                           ; $653c: $92
	sub  l                                           ; $653d: $95
	dec  e                                           ; $653e: $1d
	ld   de, $9cf1                                   ; $653f: $11 $f1 $9c
	dec  a                                           ; $6542: $3d
	xor  d                                           ; $6543: $aa
	jp   z, $aaa9                                    ; $6544: $ca $a9 $aa

	adc  h                                           ; $6547: $8c
	add  [hl]                                        ; $6548: $86
	sub  e                                           ; $6549: $93
	sub  l                                           ; $654a: $95
	dec  e                                           ; $654b: $1d
	ld   [de], a                                     ; $654c: $12
	pop  af                                          ; $654d: $f1
	sbc  e                                           ; $654e: $9b
	dec  a                                           ; $654f: $3d
	sbc  c                                           ; $6550: $99
	jp   z, $a9b9                                    ; $6551: $ca $b9 $a9

	adc  h                                           ; $6554: $8c
	add  [hl]                                        ; $6555: $86
	add  e                                           ; $6556: $83
	add  [hl]                                        ; $6557: $86
	inc  e                                           ; $6558: $1c
	ld   sp, $8bf1                                   ; $6559: $31 $f1 $8b
	inc  a                                           ; $655c: $3c
	adc  d                                           ; $655d: $8a
	cp   c                                           ; $655e: $b9
	cp   b                                           ; $655f: $b8
	xor  d                                           ; $6560: $aa
	ld   a, e                                        ; $6561: $7b
	sub  a                                           ; $6562: $97
	sub  e                                           ; $6563: $93
	add  a                                           ; $6564: $87
	dec  de                                          ; $6565: $1b
	ld   d, c                                        ; $6566: $51
	ldh  a, [c]                                      ; $6567: $f2
	ld   a, h                                        ; $6568: $7c
	inc  a                                           ; $6569: $3c
	adc  c                                           ; $656a: $89
	ret                                              ; $656b: $c9


	ret                                              ; $656c: $c9


	xor  d                                           ; $656d: $aa
	ld   a, e                                        ; $656e: $7b
	and  [hl]                                        ; $656f: $a6
	and  h                                           ; $6570: $a4
	ld   a, b                                        ; $6571: $78
	add  hl, de                                      ; $6572: $19
	ld   [hl], c                                     ; $6573: $71
	call nc, $3b4c                                   ; $6574: $d4 $4c $3b
	sbc  b                                           ; $6577: $98
	cp   c                                           ; $6578: $b9
	cp   d                                           ; $6579: $ba
	sbc  d                                           ; $657a: $9a
	adc  d                                           ; $657b: $8a
	and  a                                           ; $657c: $a7
	and  l                                           ; $657d: $a5
	ld   a, d                                        ; $657e: $7a
	jr   @-$6d                                       ; $657f: $18 $91

	add  $3c                                         ; $6581: $c6 $3c
	ld   c, c                                        ; $6583: $49
	xor  b                                           ; $6584: $a8
	cp   c                                           ; $6585: $b9
	cp   c                                           ; $6586: $b9

Jump_0e6_6587:
	xor  d                                           ; $6587: $aa
	adc  d                                           ; $6588: $8a
	and  a                                           ; $6589: $a7
	and  [hl]                                        ; $658a: $a6
	ld   l, d                                        ; $658b: $6a
	ld   h, $a1                                      ; $658c: $26 $a1
	sbc  b                                           ; $658e: $98
	inc  l                                           ; $658f: $2c
	ld   e, b                                        ; $6590: $58
	sbc  b                                           ; $6591: $98
	cp   c                                           ; $6592: $b9
	xor  c                                           ; $6593: $a9
	sbc  e                                           ; $6594: $9b
	sbc  c                                           ; $6595: $99
	or   a                                           ; $6596: $b7

Jump_0e6_6597:
	and  a                                           ; $6597: $a7
	ld   l, d                                        ; $6598: $6a
	ld   d, h                                        ; $6599: $54
	or   e                                           ; $659a: $b3
	ld   e, d                                        ; $659b: $5a
	add  hl, hl                                      ; $659c: $29
	halt                                             ; $659d: $76
	and  a                                           ; $659e: $a7
	cp   c                                           ; $659f: $b9
	sbc  e                                           ; $65a0: $9b
	adc  d                                           ; $65a1: $8a
	xor  c                                           ; $65a2: $a9
	xor  b                                           ; $65a3: $a8
	adc  c                                           ; $65a4: $89
	ld   l, c                                        ; $65a5: $69
	add  h                                           ; $65a6: $84
	adc  b                                           ; $65a7: $88
	jr   c, jr_0e6_660f                              ; $65a8: $38 $65

	add  [hl]                                        ; $65aa: $86
	add  a                                           ; $65ab: $87
	sbc  d                                           ; $65ac: $9a
	adc  d                                           ; $65ad: $8a
	xor  d                                           ; $65ae: $aa
	xor  d                                           ; $65af: $aa
	xor  d                                           ; $65b0: $aa
	sbc  c                                           ; $65b1: $99
	add  a                                           ; $65b2: $87
	adc  b                                           ; $65b3: $88
	ld   e, b                                        ; $65b4: $58
	add  h                                           ; $65b5: $84
	halt                                             ; $65b6: $76
	ld   d, a                                        ; $65b7: $57
	ld   l, b                                        ; $65b8: $68
	adc  c                                           ; $65b9: $89
	xor  b                                           ; $65ba: $a8
	adc  d                                           ; $65bb: $8a
	sbc  c                                           ; $65bc: $99
	xor  d                                           ; $65bd: $aa
	xor  c                                           ; $65be: $a9
	xor  c                                           ; $65bf: $a9
	adc  c                                           ; $65c0: $89
	add  l                                           ; $65c1: $85
	sub  a                                           ; $65c2: $97
	ld   b, a                                        ; $65c3: $47
	ld   h, l                                        ; $65c4: $65
	ld   h, [hl]                                     ; $65c5: $66
	ld   [hl], a                                     ; $65c6: $77
	adc  c                                           ; $65c7: $89
	adc  b                                           ; $65c8: $88
	sbc  c                                           ; $65c9: $99
	xor  d                                           ; $65ca: $aa
	sbc  d                                           ; $65cb: $9a
	xor  c                                           ; $65cc: $a9
	sbc  c                                           ; $65cd: $99
	sbc  b                                           ; $65ce: $98
	ld   [hl], a                                     ; $65cf: $77
	halt                                             ; $65d0: $76
	ld   h, [hl]                                     ; $65d1: $66
	ld   d, l                                        ; $65d2: $55
	ld   h, a                                        ; $65d3: $67
	ld   [hl], a                                     ; $65d4: $77
	sbc  b                                           ; $65d5: $98
	sbc  c                                           ; $65d6: $99
	sbc  d                                           ; $65d7: $9a
	sbc  d                                           ; $65d8: $9a
	xor  d                                           ; $65d9: $aa
	sbc  c                                           ; $65da: $99
	xor  b                                           ; $65db: $a8
	sbc  b                                           ; $65dc: $98
	ld   [hl], a                                     ; $65dd: $77
	ld   h, l                                        ; $65de: $65
	ld   h, l                                        ; $65df: $65
	ld   d, l                                        ; $65e0: $55
	ld   h, a                                        ; $65e1: $67
	ld   a, b                                        ; $65e2: $78
	adc  c                                           ; $65e3: $89
	sbc  d                                           ; $65e4: $9a
	xor  c                                           ; $65e5: $a9
	xor  d                                           ; $65e6: $aa
	xor  d                                           ; $65e7: $aa
	xor  d                                           ; $65e8: $aa
	sbc  c                                           ; $65e9: $99
	add  a                                           ; $65ea: $87
	ld   [hl], a                                     ; $65eb: $77
	ld   h, l                                        ; $65ec: $65
	ld   d, l                                        ; $65ed: $55
	ld   d, [hl]                                     ; $65ee: $56
	ld   [hl], a                                     ; $65ef: $77
	adc  c                                           ; $65f0: $89
	sbc  b                                           ; $65f1: $98
	sbc  c                                           ; $65f2: $99
	sbc  d                                           ; $65f3: $9a
	xor  d                                           ; $65f4: $aa
	xor  d                                           ; $65f5: $aa
	xor  d                                           ; $65f6: $aa
	sbc  c                                           ; $65f7: $99
	halt                                             ; $65f8: $76
	halt                                             ; $65f9: $76
	ld   d, [hl]                                     ; $65fa: $56
	ld   d, l                                        ; $65fb: $55
	ld   h, a                                        ; $65fc: $67
	ld   a, b                                        ; $65fd: $78
	sbc  b                                           ; $65fe: $98
	adc  c                                           ; $65ff: $89
	sbc  d                                           ; $6600: $9a
	xor  d                                           ; $6601: $aa
	cp   d                                           ; $6602: $ba
	xor  d                                           ; $6603: $aa
	sbc  b                                           ; $6604: $98
	sub  a                                           ; $6605: $97
	ld   h, a                                        ; $6606: $67
	ld   h, l                                        ; $6607: $65
	ld   d, l                                        ; $6608: $55
	ld   d, [hl]                                     ; $6609: $56
	ld   [hl], a                                     ; $660a: $77
	ld   a, c                                        ; $660b: $79
	sbc  b                                           ; $660c: $98
	sbc  d                                           ; $660d: $9a
	sbc  d                                           ; $660e: $9a

jr_0e6_660f:
	cp   d                                           ; $660f: $ba
	xor  d                                           ; $6610: $aa
	sbc  c                                           ; $6611: $99
	adc  b                                           ; $6612: $88
	halt                                             ; $6613: $76
	halt                                             ; $6614: $76
	ld   d, l                                        ; $6615: $55
	ld   d, l                                        ; $6616: $55
	ld   h, a                                        ; $6617: $67
	ld   a, b                                        ; $6618: $78
	sbc  c                                           ; $6619: $99
	adc  d                                           ; $661a: $8a
	sbc  c                                           ; $661b: $99
	xor  d                                           ; $661c: $aa
	xor  d                                           ; $661d: $aa
	xor  c                                           ; $661e: $a9
	sbc  b                                           ; $661f: $98
	add  a                                           ; $6620: $87
	ld   h, a                                        ; $6621: $67
	ld   h, l                                        ; $6622: $65
	ld   h, l                                        ; $6623: $65
	ld   d, [hl]                                     ; $6624: $56
	ld   [hl], a                                     ; $6625: $77
	adc  c                                           ; $6626: $89
	adc  c                                           ; $6627: $89
	xor  c                                           ; $6628: $a9
	sbc  d                                           ; $6629: $9a
	cp   d                                           ; $662a: $ba
	xor  d                                           ; $662b: $aa
	sbc  b                                           ; $662c: $98
	add  a                                           ; $662d: $87
	ld   h, [hl]                                     ; $662e: $66
	ld   h, l                                        ; $662f: $65
	ld   d, l                                        ; $6630: $55
	ld   d, l                                        ; $6631: $55
	ld   h, a                                        ; $6632: $67
	adc  c                                           ; $6633: $89
	sbc  c                                           ; $6634: $99
	sbc  c                                           ; $6635: $99
	sbc  c                                           ; $6636: $99
	xor  e                                           ; $6637: $ab
	xor  d                                           ; $6638: $aa
	xor  c                                           ; $6639: $a9
	adc  b                                           ; $663a: $88
	halt                                             ; $663b: $76
	halt                                             ; $663c: $76
	ld   d, l                                        ; $663d: $55
	ld   d, l                                        ; $663e: $55
	ld   h, a                                        ; $663f: $67
	adc  b                                           ; $6640: $88
	sbc  c                                           ; $6641: $99
	sbc  d                                           ; $6642: $9a
	sbc  d                                           ; $6643: $9a
	sbc  e                                           ; $6644: $9b
	xor  d                                           ; $6645: $aa
	xor  c                                           ; $6646: $a9
	adc  c                                           ; $6647: $89
	halt                                             ; $6648: $76
	ld   h, [hl]                                     ; $6649: $66
	ld   d, l                                        ; $664a: $55
	ld   d, l                                        ; $664b: $55
	ld   d, [hl]                                     ; $664c: $56
	ld   [hl], a                                     ; $664d: $77
	sbc  c                                           ; $664e: $99
	adc  c                                           ; $664f: $89
	sbc  c                                           ; $6650: $99
	xor  d                                           ; $6651: $aa
	cp   c                                           ; $6652: $b9
	xor  d                                           ; $6653: $aa
	sbc  b                                           ; $6654: $98
	add  a                                           ; $6655: $87
	ld   h, [hl]                                     ; $6656: $66
	ld   h, l                                        ; $6657: $65
	ld   d, l                                        ; $6658: $55
	ld   d, l                                        ; $6659: $55
	ld   a, b                                        ; $665a: $78
	adc  c                                           ; $665b: $89
	sbc  b                                           ; $665c: $98
	xor  c                                           ; $665d: $a9
	xor  c                                           ; $665e: $a9
	xor  d                                           ; $665f: $aa
	xor  e                                           ; $6660: $ab
	sbc  c                                           ; $6661: $99
	add  a                                           ; $6662: $87
	ld   h, [hl]                                     ; $6663: $66
	ld   [hl], l                                     ; $6664: $75
	ld   d, [hl]                                     ; $6665: $56
	ld   d, l                                        ; $6666: $55
	ld   h, a                                        ; $6667: $67
	ld   a, c                                        ; $6668: $79
	sbc  b                                           ; $6669: $98
	sbc  c                                           ; $666a: $99
	xor  d                                           ; $666b: $aa
	xor  d                                           ; $666c: $aa
	xor  d                                           ; $666d: $aa
	xor  d                                           ; $666e: $aa
	sbc  b                                           ; $666f: $98
	halt                                             ; $6670: $76
	ld   h, [hl]                                     ; $6671: $66
	ld   d, [hl]                                     ; $6672: $56
	ld   h, l                                        ; $6673: $65
	ld   h, a                                        ; $6674: $67
	ld   a, b                                        ; $6675: $78
	sbc  c                                           ; $6676: $99
	adc  d                                           ; $6677: $8a
	sbc  d                                           ; $6678: $9a
	sbc  d                                           ; $6679: $9a
	xor  d                                           ; $667a: $aa
	xor  d                                           ; $667b: $aa
	sbc  b                                           ; $667c: $98
	add  [hl]                                        ; $667d: $86
	ld   h, a                                        ; $667e: $67
	ld   d, l                                        ; $667f: $55
	ld   h, l                                        ; $6680: $65
	ld   d, [hl]                                     ; $6681: $56
	ld   [hl], a                                     ; $6682: $77
	adc  c                                           ; $6683: $89
	adc  c                                           ; $6684: $89
	xor  d                                           ; $6685: $aa
	xor  d                                           ; $6686: $aa
	xor  d                                           ; $6687: $aa
	xor  d                                           ; $6688: $aa
	xor  b                                           ; $6689: $a8
	add  a                                           ; $668a: $87
	ld   h, a                                        ; $668b: $67
	ld   h, l                                        ; $668c: $65
	ld   h, l                                        ; $668d: $65
	ld   d, [hl]                                     ; $668e: $56
	ld   a, b                                        ; $668f: $78
	adc  c                                           ; $6690: $89
	sbc  c                                           ; $6691: $99
	xor  d                                           ; $6692: $aa
	xor  c                                           ; $6693: $a9
	xor  d                                           ; $6694: $aa
	xor  e                                           ; $6695: $ab
	xor  b                                           ; $6696: $a8
	add  a                                           ; $6697: $87
	ld   h, [hl]                                     ; $6698: $66
	ld   [hl], l                                     ; $6699: $75
	ld   h, [hl]                                     ; $669a: $66
	ld   d, [hl]                                     ; $669b: $56
	ld   l, b                                        ; $669c: $68
	adc  b                                           ; $669d: $88
	sbc  b                                           ; $669e: $98
	sbc  d                                           ; $669f: $9a
	xor  d                                           ; $66a0: $aa
	xor  d                                           ; $66a1: $aa
	xor  e                                           ; $66a2: $ab
	xor  c                                           ; $66a3: $a9
	adc  b                                           ; $66a4: $88
	ld   h, [hl]                                     ; $66a5: $66
	halt                                             ; $66a6: $76
	ld   d, [hl]                                     ; $66a7: $56
	ld   d, l                                        ; $66a8: $55
	ld   h, a                                        ; $66a9: $67
	adc  b                                           ; $66aa: $88
	sbc  b                                           ; $66ab: $98
	adc  d                                           ; $66ac: $8a
	xor  d                                           ; $66ad: $aa
	sbc  d                                           ; $66ae: $9a
	xor  d                                           ; $66af: $aa
	cp   c                                           ; $66b0: $b9
	sbc  b                                           ; $66b1: $98
	halt                                             ; $66b2: $76
	halt                                             ; $66b3: $76
	ld   d, [hl]                                     ; $66b4: $56
	ld   h, l                                        ; $66b5: $65
	ld   h, a                                        ; $66b6: $67
	adc  b                                           ; $66b7: $88
	sbc  c                                           ; $66b8: $99
	adc  c                                           ; $66b9: $89
	xor  d                                           ; $66ba: $aa
	xor  d                                           ; $66bb: $aa
	xor  d                                           ; $66bc: $aa
	cp   d                                           ; $66bd: $ba
	sbc  b                                           ; $66be: $98
	halt                                             ; $66bf: $76
	ld   h, a                                        ; $66c0: $67
	ld   h, [hl]                                     ; $66c1: $66
	ld   h, l                                        ; $66c2: $65
	ld   h, [hl]                                     ; $66c3: $66
	adc  b                                           ; $66c4: $88
	sbc  c                                           ; $66c5: $99
	adc  c                                           ; $66c6: $89
	xor  d                                           ; $66c7: $aa
	sbc  d                                           ; $66c8: $9a
	xor  d                                           ; $66c9: $aa
	xor  d                                           ; $66ca: $aa
	sbc  b                                           ; $66cb: $98
	add  [hl]                                        ; $66cc: $86
	ld   h, a                                        ; $66cd: $67
	ld   h, l                                        ; $66ce: $65
	ld   h, l                                        ; $66cf: $65
	ld   h, [hl]                                     ; $66d0: $66
	ld   a, b                                        ; $66d1: $78
	adc  c                                           ; $66d2: $89
	sbc  b                                           ; $66d3: $98
	sbc  d                                           ; $66d4: $9a
	sbc  c                                           ; $66d5: $99
	xor  d                                           ; $66d6: $aa
	xor  d                                           ; $66d7: $aa
	sbc  c                                           ; $66d8: $99
	add  a                                           ; $66d9: $87
	ld   h, a                                        ; $66da: $67
	ld   h, l                                        ; $66db: $65
	ld   h, [hl]                                     ; $66dc: $66
	ld   h, [hl]                                     ; $66dd: $66
	ld   a, b                                        ; $66de: $78
	adc  b                                           ; $66df: $88
	sbc  b                                           ; $66e0: $98
	sbc  d                                           ; $66e1: $9a
	xor  d                                           ; $66e2: $aa
	xor  d                                           ; $66e3: $aa
	xor  d                                           ; $66e4: $aa
	sbc  b                                           ; $66e5: $98
	add  a                                           ; $66e6: $87
	ld   h, [hl]                                     ; $66e7: $66
	ld   [hl], l                                     ; $66e8: $75
	ld   h, [hl]                                     ; $66e9: $66
	ld   d, [hl]                                     ; $66ea: $56
	ld   l, b                                        ; $66eb: $68
	adc  c                                           ; $66ec: $89
	sbc  b                                           ; $66ed: $98
	sbc  c                                           ; $66ee: $99
	xor  d                                           ; $66ef: $aa
	xor  d                                           ; $66f0: $aa
	xor  d                                           ; $66f1: $aa
	sbc  c                                           ; $66f2: $99
	add  a                                           ; $66f3: $87
	ld   h, [hl]                                     ; $66f4: $66
	ld   [hl], l                                     ; $66f5: $75
	ld   h, [hl]                                     ; $66f6: $66
	ld   d, [hl]                                     ; $66f7: $56
	ld   h, a                                        ; $66f8: $67
	adc  c                                           ; $66f9: $89
	sbc  b                                           ; $66fa: $98
	sbc  c                                           ; $66fb: $99
	xor  c                                           ; $66fc: $a9
	sbc  d                                           ; $66fd: $9a
	xor  d                                           ; $66fe: $aa
	sbc  c                                           ; $66ff: $99
	sub  a                                           ; $6700: $97
	ld   h, [hl]                                     ; $6701: $66
	ld   [hl], l                                     ; $6702: $75
	ld   h, [hl]                                     ; $6703: $66
	ld   d, [hl]                                     ; $6704: $56
	ld   h, a                                        ; $6705: $67
	adc  b                                           ; $6706: $88
	sbc  b                                           ; $6707: $98
	adc  c                                           ; $6708: $89
	sbc  d                                           ; $6709: $9a
	sbc  d                                           ; $670a: $9a
	xor  d                                           ; $670b: $aa
	sbc  c                                           ; $670c: $99
	adc  b                                           ; $670d: $88
	ld   d, a                                        ; $670e: $57
	ld   [hl], h                                     ; $670f: $74
	halt                                             ; $6710: $76
	ld   d, a                                        ; $6711: $57
	ld   h, a                                        ; $6712: $67
	adc  b                                           ; $6713: $88
	sbc  b                                           ; $6714: $98
	adc  c                                           ; $6715: $89
	sbc  d                                           ; $6716: $9a
	sbc  d                                           ; $6717: $9a
	cp   d                                           ; $6718: $ba
	xor  b                                           ; $6719: $a8
	adc  b                                           ; $671a: $88
	ld   b, a                                        ; $671b: $47
	sub  h                                           ; $671c: $94
	sub  a                                           ; $671d: $97
	ld   e, b                                        ; $671e: $58
	ld   l, c                                        ; $671f: $69
	adc  b                                           ; $6720: $88
	sub  a                                           ; $6721: $97
	sbc  b                                           ; $6722: $98
	adc  e                                           ; $6723: $8b
	adc  d                                           ; $6724: $8a
	xor  c                                           ; $6725: $a9
	sbc  b                                           ; $6726: $98
	adc  b                                           ; $6727: $88
	ld   b, a                                        ; $6728: $47
	add  e                                           ; $6729: $83
	sub  a                                           ; $672a: $97
	ld   e, c                                        ; $672b: $59
	ld   e, b                                        ; $672c: $58
	adc  b                                           ; $672d: $88
	sbc  b                                           ; $672e: $98
	sbc  b                                           ; $672f: $98
	sbc  e                                           ; $6730: $9b
	sbc  d                                           ; $6731: $9a
	cp   b                                           ; $6732: $b8
	sub  a                                           ; $6733: $97
	adc  b                                           ; $6734: $88
	ld   b, a                                        ; $6735: $47
	add  e                                           ; $6736: $83
	and  a                                           ; $6737: $a7
	ld   e, d                                        ; $6738: $5a
	ld   e, b                                        ; $6739: $58
	adc  c                                           ; $673a: $89
	sbc  b                                           ; $673b: $98
	xor  b                                           ; $673c: $a8
	sbc  e                                           ; $673d: $9b
	adc  d                                           ; $673e: $8a
	xor  c                                           ; $673f: $a9
	sub  a                                           ; $6740: $97
	add  a                                           ; $6741: $87
	add  hl, sp                                      ; $6742: $39
	ld   [hl], h                                     ; $6743: $74
	or   l                                           ; $6744: $b5
	ld   a, d                                        ; $6745: $7a
	ld   e, d                                        ; $6746: $5a
	adc  b                                           ; $6747: $88
	sbc  b                                           ; $6748: $98
	and  a                                           ; $6749: $a7
	sbc  d                                           ; $674a: $9a
	adc  h                                           ; $674b: $8c
	xor  b                                           ; $674c: $a8
	sub  [hl]                                        ; $674d: $96
	sub  [hl]                                        ; $674e: $96
	add  hl, sp                                      ; $674f: $39
	ld   h, h                                        ; $6750: $64
	and  h                                           ; $6751: $a4
	adc  c                                           ; $6752: $89
	ld   e, d                                        ; $6753: $5a
	adc  c                                           ; $6754: $89
	adc  c                                           ; $6755: $89
	sub  a                                           ; $6756: $97
	sbc  d                                           ; $6757: $9a
	adc  h                                           ; $6758: $8c
	sbc  c                                           ; $6759: $99
	sub  [hl]                                        ; $675a: $96
	sub  l                                           ; $675b: $95
	ld   c, d                                        ; $675c: $4a
	ld   b, a                                        ; $675d: $47
	and  h                                           ; $675e: $a4
	and  a                                           ; $675f: $a7
	ld   l, d                                        ; $6760: $6a
	ld   a, d                                        ; $6761: $7a
	adc  c                                           ; $6762: $89
	add  a                                           ; $6763: $87
	xor  b                                           ; $6764: $a8
	xor  h                                           ; $6765: $ac
	adc  c                                           ; $6766: $89
	add  a                                           ; $6767: $87
	sub  e                                           ; $6768: $93
	ld   l, d                                        ; $6769: $6a
	ld   a, [hl+]                                    ; $676a: $2a
	add  h                                           ; $676b: $84
	or   l                                           ; $676c: $b5
	sbc  c                                           ; $676d: $99
	ld   a, c                                        ; $676e: $79
	adc  c                                           ; $676f: $89
	adc  b                                           ; $6770: $88
	xor  b                                           ; $6771: $a8
	cp   h                                           ; $6772: $bc
	adc  d                                           ; $6773: $8a
	ld   [hl], a                                     ; $6774: $77
	add  d                                           ; $6775: $82
	add  a                                           ; $6776: $87
	dec  sp                                          ; $6777: $3b
	ld   d, a                                        ; $6778: $57
	and  h                                           ; $6779: $a4
	xor  c                                           ; $677a: $a9
	sbc  b                                           ; $677b: $98
	sbc  c                                           ; $677c: $99
	ld   a, c                                        ; $677d: $79
	xor  b                                           ; $677e: $a8
	cp   c                                           ; $677f: $b9
	sbc  d                                           ; $6780: $9a
	ld   e, c                                        ; $6781: $59
	ld   d, e                                        ; $6782: $53
	or   e                                           ; $6783: $b3
	ld   l, d                                        ; $6784: $6a
	ld   a, [hl-]                                    ; $6785: $3a
	halt                                             ; $6786: $76
	and  a                                           ; $6787: $a7
	xor  b                                           ; $6788: $a8
	sbc  b                                           ; $6789: $98
	ld   a, d                                        ; $678a: $7a
	adc  d                                           ; $678b: $8a
	ret  z                                           ; $678c: $c8

	sbc  b                                           ; $678d: $98
	ld   l, c                                        ; $678e: $69
	ld   h, $92                                      ; $678f: $26 $92
	or   a                                           ; $6791: $b7
	ld   e, h                                        ; $6792: $5c
	ld   e, b                                        ; $6793: $58
	sbc  b                                           ; $6794: $98
	sbc  b                                           ; $6795: $98
	and  a                                           ; $6796: $a7
	adc  d                                           ; $6797: $8a
	ld   a, e                                        ; $6798: $7b
	cp   b                                           ; $6799: $b8
	and  [hl]                                        ; $679a: $a6
	adc  b                                           ; $679b: $88
	ld   a, [hl+]                                    ; $679c: $2a
	ld   h, e                                        ; $679d: $63
	call nz, Call_0e6_4a99                           ; $679e: $c4 $99 $4a
	sbc  c                                           ; $67a1: $99
	adc  b                                           ; $67a2: $88
	add  a                                           ; $67a3: $87
	sbc  c                                           ; $67a4: $99
	adc  h                                           ; $67a5: $8c
	sbc  c                                           ; $67a6: $99
	and  l                                           ; $67a7: $a5
	and  l                                           ; $67a8: $a5
	inc  a                                           ; $67a9: $3c
	daa                                              ; $67aa: $27
	or   e                                           ; $67ab: $b3
	add  $6b                                         ; $67ac: $c6 $6b
	ld   a, c                                        ; $67ae: $79
	sbc  c                                           ; $67af: $99
	ld   a, b                                        ; $67b0: $78
	xor  b                                           ; $67b1: $a8
	sbc  h                                           ; $67b2: $9c
	adc  c                                           ; $67b3: $89
	halt                                             ; $67b4: $76
	sub  c                                           ; $67b5: $91
	adc  c                                           ; $67b6: $89
	inc  e                                           ; $67b7: $1c
	ld   h, [hl]                                     ; $67b8: $66
	call nz, $899a                                   ; $67b9: $c4 $9a $89
	adc  b                                           ; $67bc: $88
	ld   a, c                                        ; $67bd: $79
	xor  b                                           ; $67be: $a8
	cp   e                                           ; $67bf: $bb
	ld   a, c                                        ; $67c0: $79
	ld   e, b                                        ; $67c1: $58
	ld   h, c                                        ; $67c2: $61
	db   $d3                                         ; $67c3: $d3
	ld   l, h                                        ; $67c4: $6c
	dec  hl                                          ; $67c5: $2b
	ld   [hl], l                                     ; $67c6: $75
	rst  ToBoot                                         ; $67c7: $c7
	adc  b                                           ; $67c8: $88
	sub  a                                           ; $67c9: $97
	adc  d                                           ; $67ca: $8a
	adc  d                                           ; $67cb: $8a
	ret  z                                           ; $67cc: $c8

	sbc  c                                           ; $67cd: $99
	ld   e, d                                        ; $67ce: $5a
	ld   h, $b1                                      ; $67cf: $26 $b1
	rst  ToBoot                                         ; $67d1: $c7
	ld   e, l                                        ; $67d2: $5d
	ld   c, c                                        ; $67d3: $49
	and  a                                           ; $67d4: $a7
	sbc  c                                           ; $67d5: $99
	add  a                                           ; $67d6: $87
	sbc  d                                           ; $67d7: $9a
	sbc  d                                           ; $67d8: $9a
	or   a                                           ; $67d9: $b7
	and  l                                           ; $67da: $a5
	add  a                                           ; $67db: $87
	inc  e                                           ; $67dc: $1c
	ld   b, h                                        ; $67dd: $44
	ldh  [c], a                                      ; $67de: $e2
	xor  c                                           ; $67df: $a9
	ld   c, e                                        ; $67e0: $4b
	add  a                                           ; $67e1: $87
	xor  c                                           ; $67e2: $a9
	ld   a, c                                        ; $67e3: $79
	xor  b                                           ; $67e4: $a8
	xor  h                                           ; $67e5: $ac
	sbc  b                                           ; $67e6: $98
	sub  l                                           ; $67e7: $95
	and  e                                           ; $67e8: $a3
	ld   e, h                                        ; $67e9: $5c
	dec  de                                          ; $67ea: $1b
	sub  e                                           ; $67eb: $93
	call nc, Call_0e6_788b                           ; $67ec: $d4 $8b $78
	xor  b                                           ; $67ef: $a8
	ld   a, c                                        ; $67f0: $79
	sbc  b                                           ; $67f1: $98
	xor  e                                           ; $67f2: $ab
	ld   a, d                                        ; $67f3: $7a
	halt                                             ; $67f4: $76
	sub  c                                           ; $67f5: $91
	or   [hl]                                        ; $67f6: $b6
	cpl                                              ; $67f7: $2f
	add  hl, sp                                      ; $67f8: $39
	and  e                                           ; $67f9: $a3
	ret                                              ; $67fa: $c9


	ld   a, d                                        ; $67fb: $7a
	and  a                                           ; $67fc: $a7
	adc  c                                           ; $67fd: $89
	adc  c                                           ; $67fe: $89
	cp   d                                           ; $67ff: $ba
	ld   a, d                                        ; $6800: $7a
	ld   e, d                                        ; $6801: $5a

jr_0e6_6802:
	ld   b, e                                        ; $6802: $43
	pop  bc                                          ; $6803: $c1
	xor  d                                           ; $6804: $aa
	dec  l                                           ; $6805: $2d
	ld   d, a                                        ; $6806: $57
	or   a                                           ; $6807: $b7
	adc  d                                           ; $6808: $8a
	add  a                                           ; $6809: $87
	xor  c                                           ; $680a: $a9
	xor  d                                           ; $680b: $aa
	cp   b                                           ; $680c: $b8
	sub  a                                           ; $680d: $97
	ld   a, b                                        ; $680e: $78
	dec  e                                           ; $680f: $1d
	ld   b, e                                        ; $6810: $43
	pop  af                                          ; $6811: $f1
	cp   d                                           ; $6812: $ba
	inc  a                                           ; $6813: $3c
	sub  [hl]                                        ; $6814: $96
	xor  d                                           ; $6815: $aa
	ld   e, d                                        ; $6816: $5a
	sbc  c                                           ; $6817: $99
	xor  d                                           ; $6818: $aa
	and  a                                           ; $6819: $a7
	and  l                                           ; $681a: $a5
	and  e                                           ; $681b: $a3
	ld   e, h                                        ; $681c: $5c
	inc  e                                           ; $681d: $1c
	add  e                                           ; $681e: $83
	db   $e4                                         ; $681f: $e4
	ld   a, h                                        ; $6820: $7c
	ld   a, b                                        ; $6821: $78
	and  a                                           ; $6822: $a7
	ld   a, d                                        ; $6823: $7a
	ld   a, d                                        ; $6824: $7a
	sbc  e                                           ; $6825: $9b
	adc  c                                           ; $6826: $89
	ld   [hl], a                                     ; $6827: $77
	add  c                                           ; $6828: $81
	push de                                          ; $6829: $d5
	ccf                                              ; $682a: $3f
	ld   a, [de]                                     ; $682b: $1a
	and  e                                           ; $682c: $a3
	ret                                              ; $682d: $c9


	ld   l, d                                        ; $682e: $6a
	and  l                                           ; $682f: $a5
	cp   b                                           ; $6830: $b8
	sbc  e                                           ; $6831: $9b
	xor  e                                           ; $6832: $ab
	ld   a, b                                        ; $6833: $78
	ld   l, d                                        ; $6834: $6a
	dec  h                                           ; $6835: $25
	pop  bc                                          ; $6836: $c1
	add  sp, $3f                                     ; $6837: $e8 $3f
	jr   c, jr_0e6_6802                              ; $6839: $38 $c7

	ld   a, e                                        ; $683b: $7b
	ld   h, a                                        ; $683c: $67
	or   [hl]                                        ; $683d: $b6
	xor  c                                           ; $683e: $a9
	cp   b                                           ; $683f: $b8
	add  a                                           ; $6840: $87
	ld   l, d                                        ; $6841: $6a
	dec  de                                          ; $6842: $1b
	ld   h, c                                        ; $6843: $61
	ldh  a, [c]                                      ; $6844: $f2
	sbc  e                                           ; $6845: $9b
	dec  sp                                          ; $6846: $3b
	and  [hl]                                        ; $6847: $a6
	sbc  e                                           ; $6848: $9b
	ld   e, c                                        ; $6849: $59
	sbc  b                                           ; $684a: $98
	cp   c                                           ; $684b: $b9
	or   a                                           ; $684c: $b7
	sub  l                                           ; $684d: $95
	sub  l                                           ; $684e: $95
	ld   l, $19                                      ; $684f: $2e $19
	pop  de                                          ; $6851: $d1
	rst  $20                                         ; $6852: $e7
	ld   e, h                                        ; $6853: $5c
	add  [hl]                                        ; $6854: $86
	cp   b                                           ; $6855: $b8
	ld   e, d                                        ; $6856: $5a
	ld   a, d                                        ; $6857: $7a
	sbc  e                                           ; $6858: $9b
	sub  a                                           ; $6859: $97
	sub  l                                           ; $685a: $95
	and  c                                           ; $685b: $a1
	sbc  d                                           ; $685c: $9a
	ld   e, $56                                      ; $685d: $1e $56
	db   $e3                                         ; $685f: $e3
	sbc  e                                           ; $6860: $9b
	ld   l, c                                        ; $6861: $69
	call nz, Call_0e6_6c99                           ; $6862: $c4 $99 $6c

Jump_0e6_6865:
	sbc  h                                           ; $6865: $9c
	sbc  c                                           ; $6866: $99
	ld   h, a                                        ; $6867: $67
	add  c                                           ; $6868: $81
	push bc                                          ; $6869: $c5
	cpl                                              ; $686a: $2f
	ld   a, [de]                                     ; $686b: $1a
	or   e                                           ; $686c: $b3
	cp   e                                           ; $686d: $bb
	ld   l, c                                        ; $686e: $69
	or   h                                           ; $686f: $b4
	cp   b                                           ; $6870: $b8
	sbc  d                                           ; $6871: $9a
	sbc  e                                           ; $6872: $9b
	ld   a, b                                        ; $6873: $78
	ld   e, c                                        ; $6874: $59
	ld   b, h                                        ; $6875: $44
	pop  de                                          ; $6876: $d1
	cp   c                                           ; $6877: $b9
	cpl                                              ; $6878: $2f
	ld   d, [hl]                                     ; $6879: $56
	rst  $10                                         ; $687a: $d7
	ld   l, h                                        ; $687b: $6c
	ld   h, [hl]                                     ; $687c: $66
	add  $b9                                         ; $687d: $c6 $b9
	cp   d                                           ; $687f: $ba
	ld   a, b                                        ; $6880: $78
	ld   l, d                                        ; $6881: $6a
	add  hl, de                                      ; $6882: $19
	and  c                                           ; $6883: $a1
	push af                                          ; $6884: $f5
	ld   e, [hl]                                     ; $6885: $5e
	add  hl, sp                                      ; $6886: $39
	or   [hl]                                        ; $6887: $b6

jr_0e6_6888:
	adc  e                                           ; $6888: $8b
	ld   e, b                                        ; $6889: $58
	and  a                                           ; $688a: $a7
	cp   d                                           ; $688b: $ba
	cp   b                                           ; $688c: $b8
	sub  [hl]                                        ; $688d: $96
	ld   a, b                                        ; $688e: $78
	inc  e                                           ; $688f: $1c
	ld   b, e                                        ; $6890: $43
	pop  af                                          ; $6891: $f1
	cp   d                                           ; $6892: $ba
	dec  sp                                          ; $6893: $3b
	and  [hl]                                        ; $6894: $a6
	xor  d                                           ; $6895: $aa
	ld   c, d                                        ; $6896: $4a
	adc  b                                           ; $6897: $88
	cp   d                                           ; $6898: $ba
	or   a                                           ; $6899: $b7
	sub  l                                           ; $689a: $95
	sub  h                                           ; $689b: $94
	dec  a                                           ; $689c: $3d
	ld   a, [de]                                     ; $689d: $1a
	and  d                                           ; $689e: $a2
	sub  $6d                                         ; $689f: $d6 $6d
	add  [hl]                                        ; $68a1: $86
	or   a                                           ; $68a2: $b7
	ld   l, h                                        ; $68a3: $6c
	ld   l, d                                        ; $68a4: $6a
	xor  e                                           ; $68a5: $ab
	and  a                                           ; $68a6: $a7
	halt                                             ; $68a7: $76
	sub  c                                           ; $68a8: $91
	xor  c                                           ; $68a9: $a9
	rra                                              ; $68aa: $1f
	ld   b, [hl]                                     ; $68ab: $46
	db   $e3                                         ; $68ac: $e3
	xor  e                                           ; $68ad: $ab
	ld   l, c                                        ; $68ae: $69
	or   h                                           ; $68af: $b4
	sbc  d                                           ; $68b0: $9a
	ld   l, h                                        ; $68b1: $6c
	sbc  d                                           ; $68b2: $9a
	add  a                                           ; $68b3: $87
	ld   h, a                                        ; $68b4: $67
	ld   [hl], c                                     ; $68b5: $71
	jp   $1b5f                                       ; $68b6: $c3 $5f $1b


	sub  h                                           ; $68b9: $94
	ret                                              ; $68ba: $c9


	ld   l, d                                        ; $68bb: $6a
	and  h                                           ; $68bc: $a4
	xor  c                                           ; $68bd: $a9
	adc  e                                           ; $68be: $8b
	sbc  d                                           ; $68bf: $9a
	ld   a, b                                        ; $68c0: $78
	ld   l, c                                        ; $68c1: $69
	dec  [hl]                                        ; $68c2: $35
	pop  bc                                          ; $68c3: $c1
	cp   d                                           ; $68c4: $ba
	ld   a, $57                                      ; $68c5: $3e $57
	rst  ToBoot                                         ; $68c7: $c7
	ld   a, e                                        ; $68c8: $7b
	halt                                             ; $68c9: $76
	add  $ab                                         ; $68ca: $c6 $ab
	sbc  c                                           ; $68cc: $99
	ld   [hl], a                                     ; $68cd: $77
	ld   [hl], a                                     ; $68ce: $77
	dec  de                                          ; $68cf: $1b
	ld   d, e                                        ; $68d0: $53
	ldh  [c], a                                      ; $68d1: $e2
	xor  d                                           ; $68d2: $aa
	ld   c, e                                        ; $68d3: $4b
	and  [hl]                                        ; $68d4: $a6
	sbc  e                                           ; $68d5: $9b
	ld   c, d                                        ; $68d6: $4a
	sub  [hl]                                        ; $68d7: $96
	jp   z, Jump_0e6_76a8                            ; $68d8: $ca $a8 $76

	sub  e                                           ; $68db: $93
	ld   e, h                                        ; $68dc: $5c
	dec  de                                          ; $68dd: $1b
	sub  e                                           ; $68de: $93
	db   $e4                                         ; $68df: $e4
	adc  h                                           ; $68e0: $8c
	add  [hl]                                        ; $68e1: $86
	ret  z                                           ; $68e2: $c8

	ld   e, h                                        ; $68e3: $5c
	ld   l, c                                        ; $68e4: $69
	cp   c                                           ; $68e5: $b9
	sub  a                                           ; $68e6: $97
	ld   [hl], a                                     ; $68e7: $77
	ld   [hl], c                                     ; $68e8: $71
	or   l                                           ; $68e9: $b5
	ld   c, a                                        ; $68ea: $4f
	dec  hl                                          ; $68eb: $2b
	sub  h                                           ; $68ec: $94
	cp   d                                           ; $68ed: $ba
	ld   a, b                                        ; $68ee: $78
	or   e                                           ; $68ef: $b3
	cp   c                                           ; $68f0: $b9
	ld   l, l                                        ; $68f1: $6d
	sbc  c                                           ; $68f2: $99
	ld   [hl], a                                     ; $68f3: $77
	ld   a, b                                        ; $68f4: $78
	jr   z, jr_0e6_6888                              ; $68f5: $28 $91

	push de                                          ; $68f7: $d5
	ld   l, l                                        ; $68f8: $6d
	ld   a, [hl-]                                    ; $68f9: $3a
	and  a                                           ; $68fa: $a7
	ld   a, h                                        ; $68fb: $7c
	ld   h, [hl]                                     ; $68fc: $66
	push bc                                          ; $68fd: $c5
	cp   d                                           ; $68fe: $ba
	sbc  b                                           ; $68ff: $98
	ld   [hl], a                                     ; $6900: $77
	ld   [hl], h                                     ; $6901: $74
	ld   c, e                                        ; $6902: $4b
	add  hl, de                                      ; $6903: $19
	and  d                                           ; $6904: $a2
	sub  $7c                                         ; $6905: $d6 $7c
	add  a                                           ; $6907: $87
	xor  d                                           ; $6908: $aa
	ld   c, l                                        ; $6909: $4d
	ld   a, c                                        ; $690a: $79
	ret                                              ; $690b: $c9


	and  a                                           ; $690c: $a7
	ld   [hl], a                                     ; $690d: $77
	ld   [hl], c                                     ; $690e: $71
	and  [hl]                                        ; $690f: $a6
	ld   a, $29                                      ; $6910: $3e $29
	or   h                                           ; $6912: $b4
	cp   d                                           ; $6913: $ba
	ld   [hl], a                                     ; $6914: $77
	call nz, Call_0e6_5d9b                           ; $6915: $c4 $9b $5d
	xor  c                                           ; $6918: $a9
	add  [hl]                                        ; $6919: $86
	ld   a, b                                        ; $691a: $78
	scf                                              ; $691b: $37
	or   c                                           ; $691c: $b1
	rst  $10                                         ; $691d: $d7
	ld   c, l                                        ; $691e: $4d
	ld   c, b                                        ; $691f: $48
	cp   b                                           ; $6920: $b8
	ld   l, h                                        ; $6921: $6c
	ld   [hl], h                                     ; $6922: $74
	push de                                          ; $6923: $d5
	xor  h                                           ; $6924: $ac
	adc  c                                           ; $6925: $89
	ld   h, a                                        ; $6926: $67
	add  l                                           ; $6927: $85
	dec  sp                                          ; $6928: $3b
	daa                                              ; $6929: $27
	jp   nz, Jump_0e6_6cd7                           ; $692a: $c2 $d7 $6c

	and  [hl]                                        ; $692d: $a6
	sbc  e                                           ; $692e: $9b
	dec  a                                           ; $692f: $3d
	sub  [hl]                                        ; $6930: $96
	ret  c                                           ; $6931: $d8

	sub  a                                           ; $6932: $97
	ld   h, a                                        ; $6933: $67
	ld   h, d                                        ; $6934: $62
	and  l                                           ; $6935: $a5
	ld   a, $3b                                      ; $6936: $3e $3b
	and  h                                           ; $6938: $a4
	ret                                              ; $6939: $c9


	ld   a, b                                        ; $693a: $78
	call nz, $5c9b                                   ; $693b: $c4 $9b $5c
	xor  b                                           ; $693e: $a8
	add  [hl]                                        ; $693f: $86
	ld   [hl], a                                     ; $6940: $77
	add  hl, hl                                      ; $6941: $29
	sub  c                                           ; $6942: $91
	push hl                                          ; $6943: $e5
	ld   a, l                                        ; $6944: $7d
	ld   c, d                                        ; $6945: $4a
	cp   b                                           ; $6946: $b8
	ld   a, h                                        ; $6947: $7c
	ld   h, a                                        ; $6948: $67
	push de                                          ; $6949: $d5
	cp   e                                           ; $694a: $bb
	ld   a, c                                        ; $694b: $79
	halt                                             ; $694c: $76
	add  e                                           ; $694d: $83
	ld   e, h                                        ; $694e: $5c
	dec  de                                          ; $694f: $1b
	sub  h                                           ; $6950: $94
	push hl                                          ; $6951: $e5
	adc  e                                           ; $6952: $8b
	add  [hl]                                        ; $6953: $86
	cp   b                                           ; $6954: $b8
	ld   c, [hl]                                     ; $6955: $4e
	ld   l, c                                        ; $6956: $69
	rst  ToBoot                                         ; $6957: $c7
	add  a                                           ; $6958: $87
	ld   l, b                                        ; $6959: $68
	ld   d, h                                        ; $695a: $54
	or   d                                           ; $695b: $b2
	adc  e                                           ; $695c: $8b
	dec  l                                           ; $695d: $2d
	ld   h, [hl]                                     ; $695e: $66

jr_0e6_695f:
	ret                                              ; $695f: $c9


	ld   l, e                                        ; $6960: $6b
	or   e                                           ; $6961: $b3
	rst  $10                                         ; $6962: $d7
	ld   a, l                                        ; $6963: $7d
	ld   a, c                                        ; $6964: $79
	halt                                             ; $6965: $76
	add  [hl]                                        ; $6966: $86
	dec  sp                                          ; $6967: $3b
	ld   b, [hl]                                     ; $6968: $46
	jp   nz, Jump_0e6_5cc8                           ; $6969: $c2 $c8 $5c

	and  a                                           ; $696c: $a7
	sbc  h                                           ; $696d: $9c
	dec  sp                                          ; $696e: $3b
	and  [hl]                                        ; $696f: $a6
	ret  c                                           ; $6970: $d8

	add  a                                           ; $6971: $87
	ld   l, b                                        ; $6972: $68
	ld   h, e                                        ; $6973: $63
	and  l                                           ; $6974: $a5

Jump_0e6_6975:
	ld   e, l                                        ; $6975: $5d
	ld   a, [hl-]                                    ; $6976: $3a
	and  l                                           ; $6977: $a5
	cp   d                                           ; $6978: $ba
	ld   a, c                                        ; $6979: $79
	jp   $5dab                                       ; $697a: $c3 $ab $5d


	adc  b                                           ; $697d: $88
	add  [hl]                                        ; $697e: $86
	ld   [hl], a                                     ; $697f: $77
	ld   a, [hl+]                                    ; $6980: $2a
	ld   [hl], e                                     ; $6981: $73
	db   $e4                                         ; $6982: $e4
	sbc  e                                           ; $6983: $9b
	ld   c, d                                        ; $6984: $4a

Call_0e6_6985:
	xor  b                                           ; $6985: $a8
	ld   a, l                                        ; $6986: $7d
	ld   e, b                                        ; $6987: $58
	push bc                                          ; $6988: $c5
	ret                                              ; $6989: $c9


	ld   a, b                                        ; $698a: $78
	ld   h, a                                        ; $698b: $67
	ld   [hl], d                                     ; $698c: $72
	sbc  b                                           ; $698d: $98
	dec  l                                           ; $698e: $2d
	ld   d, a                                        ; $698f: $57
	or   h                                           ; $6990: $b4
	xor  e                                           ; $6991: $ab
	add  a                                           ; $6992: $87
	push de                                          ; $6993: $d5
	ld   a, l                                        ; $6994: $7d
	ld   e, h                                        ; $6995: $5c
	and  a                                           ; $6996: $a7
	sub  [hl]                                        ; $6997: $96
	ld   l, b                                        ; $6998: $68
	ld   [hl], $a2                                   ; $6999: $36 $a2
	or   a                                           ; $699b: $b7
	ld   e, l                                        ; $699c: $5d
	ld   e, d                                        ; $699d: $5a
	cp   c                                           ; $699e: $b9
	ld   a, h                                        ; $699f: $7c
	halt                                             ; $69a0: $76
	sub  $ab                                         ; $69a1: $d6 $ab
	ld   a, c                                        ; $69a3: $79
	ld   h, [hl]                                     ; $69a4: $66
	add  e                                           ; $69a5: $83
	ld   a, c                                        ; $69a6: $79
	inc  e                                           ; $69a7: $1c
	ld   [hl], l                                     ; $69a8: $75
	call nc, $979b                                   ; $69a9: $d4 $9b $97
	rst  ToBoot                                         ; $69ac: $c7
	ld   l, l                                        ; $69ad: $6d
	ld   e, d                                        ; $69ae: $5a
	rst  ToBoot                                         ; $69af: $c7
	add  [hl]                                        ; $69b0: $86
	ld   l, c                                        ; $69b1: $69
	ld   [hl], $b1                                   ; $69b2: $36 $b1
	cp   b                                           ; $69b4: $b8
	ld   e, h                                        ; $69b5: $5c
	ld   e, c                                        ; $69b6: $59
	xor  b                                           ; $69b7: $a8
	ld   a, h                                        ; $69b8: $7c
	add  l                                           ; $69b9: $85
	sub  $ac                                         ; $69ba: $d6 $ac
	ld   l, b                                        ; $69bc: $68
	ld   h, [hl]                                     ; $69bd: $66
	add  d                                           ; $69be: $82
	adc  d                                           ; $69bf: $8a
	dec  e                                           ; $69c0: $1d
	ld   h, [hl]                                     ; $69c1: $66
	call nc, $97ab                                   ; $69c2: $d4 $ab $97
	sub  $6d                                         ; $69c5: $d6 $6d
	ld   e, d                                        ; $69c7: $5a
	or   [hl]                                        ; $69c8: $b6
	sub  [hl]                                        ; $69c9: $96
	ld   l, b                                        ; $69ca: $68
	jr   c, jr_0e6_695f                              ; $69cb: $38 $92

	sub  $6c                                         ; $69cd: $d6 $6c
	ld   c, d                                        ; $69cf: $4a
	xor  c                                           ; $69d0: $a9
	ld   a, h                                        ; $69d1: $7c
	halt                                             ; $69d2: $76
	push de                                          ; $69d3: $d5
	xor  d                                           ; $69d4: $aa
	ld   l, b                                        ; $69d5: $68
	ld   h, a                                        ; $69d6: $67
	ld   [hl], e                                     ; $69d7: $73
	sbc  c                                           ; $69d8: $99
	dec  l                                           ; $69d9: $2d
	ld   e, b                                        ; $69da: $58
	or   h                                           ; $69db: $b4
	xor  d                                           ; $69dc: $aa
	sub  a                                           ; $69dd: $97
	add  $7d                                         ; $69de: $c6 $7d
	ld   e, e                                        ; $69e0: $5b
	or   [hl]                                        ; $69e1: $b6
	add  [hl]                                        ; $69e2: $86
	halt                                             ; $69e3: $76
	ld   a, [hl-]                                    ; $69e4: $3a
	ld   h, h                                        ; $69e5: $64
	db   $d3                                         ; $69e6: $d3
	xor  d                                           ; $69e7: $aa
	ld   e, e                                        ; $69e8: $5b
	xor  c                                           ; $69e9: $a9
	adc  h                                           ; $69ea: $8c
	ld   e, c                                        ; $69eb: $59
	push bc                                          ; $69ec: $c5
	ret                                              ; $69ed: $c9


	ld   a, b                                        ; $69ee: $78
	ld   d, a                                        ; $69ef: $57
	ld   h, e                                        ; $69f0: $63
	and  l                                           ; $69f1: $a5
	ld   c, l                                        ; $69f2: $4d
	dec  sp                                          ; $69f3: $3b
	and  l                                           ; $69f4: $a5
	ret                                              ; $69f5: $c9


jr_0e6_69f6:
	sbc  c                                           ; $69f6: $99
	push bc                                          ; $69f7: $c5
	xor  e                                           ; $69f8: $ab
	ld   e, e                                        ; $69f9: $5b
	sub  [hl]                                        ; $69fa: $96
	halt                                             ; $69fb: $76
	add  l                                           ; $69fc: $85
	ld   c, h                                        ; $69fd: $4c
	scf                                              ; $69fe: $37
	jp   nz, Jump_0e6_7cd7                           ; $69ff: $c2 $d7 $7c

	adc  b                                           ; $6a02: $88
	sbc  h                                           ; $6a03: $9c
	ld   c, h                                        ; $6a04: $4c
	sub  [hl]                                        ; $6a05: $96
	rst  $10                                         ; $6a06: $d7
	ld   [hl], a                                     ; $6a07: $77
	ld   l, b                                        ; $6a08: $68
	ld   [hl], $b2                                   ; $6a09: $36 $b2
	xor  c                                           ; $6a0b: $a9
	ld   c, l                                        ; $6a0c: $4d
	ld   e, b                                        ; $6a0d: $58
	xor  c                                           ; $6a0e: $a9
	adc  e                                           ; $6a0f: $8b
	and  l                                           ; $6a10: $a5
	rst  $10                                         ; $6a11: $d7
	adc  h                                           ; $6a12: $8c
	ld   [hl], a                                     ; $6a13: $77
	ld   h, [hl]                                     ; $6a14: $66
	add  e                                           ; $6a15: $83
	ld   a, c                                        ; $6a16: $79
	dec  e                                           ; $6a17: $1d
	halt                                             ; $6a18: $76
	call nc, $88ba                                   ; $6a19: $d4 $ba $88
	cp   b                                           ; $6a1c: $b8
	ld   l, l                                        ; $6a1d: $6d
	ld   l, c                                        ; $6a1e: $69
	or   [hl]                                        ; $6a1f: $b6
	ld   h, [hl]                                     ; $6a20: $66
	add  l                                           ; $6a21: $85
	dec  sp                                          ; $6a22: $3b
	ld   d, l                                        ; $6a23: $55
	db   $d3                                         ; $6a24: $d3
	cp   c                                           ; $6a25: $b9
	ld   e, e                                        ; $6a26: $5b
	sbc  b                                           ; $6a27: $98
	sbc  e                                           ; $6a28: $9b
	ld   e, d                                        ; $6a29: $5a
	or   [hl]                                        ; $6a2a: $b6
	ret  z                                           ; $6a2b: $c8

	halt                                             ; $6a2c: $76
	ld   l, b                                        ; $6a2d: $68
	ld   d, h                                        ; $6a2e: $54
	jp   $3d8b                                       ; $6a2f: $c3 $8b $3d


	ld   h, a                                        ; $6a32: $67
	ret  z                                           ; $6a33: $c8

	sbc  d                                           ; $6a34: $9a
	or   l                                           ; $6a35: $b5
	ret                                              ; $6a36: $c9


	ld   a, h                                        ; $6a37: $7c
	ld   [hl], a                                     ; $6a38: $77
	ld   h, a                                        ; $6a39: $67
	add  d                                           ; $6a3a: $82
	adc  c                                           ; $6a3b: $89
	inc  l                                           ; $6a3c: $2c
	ld   h, a                                        ; $6a3d: $67
	call nc, $98aa                                   ; $6a3e: $d4 $aa $98
	cp   b                                           ; $6a41: $b8
	ld   l, l                                        ; $6a42: $6d
	ld   l, d                                        ; $6a43: $6a
	or   [hl]                                        ; $6a44: $b6
	ld   h, [hl]                                     ; $6a45: $66
	add  l                                           ; $6a46: $85
	inc  a                                           ; $6a47: $3c
	ld   b, [hl]                                     ; $6a48: $46
	jp   Jump_0e6_6bc8                               ; $6a49: $c3 $c8 $6b


	adc  c                                           ; $6a4c: $89
	adc  h                                           ; $6a4d: $8c
	ld   e, d                                        ; $6a4e: $5a
	or   [hl]                                        ; $6a4f: $b6
	ret  z                                           ; $6a50: $c8

	ld   h, [hl]                                     ; $6a51: $66
	ld   a, b                                        ; $6a52: $78
	jr   z, jr_0e6_69f6                              ; $6a53: $28 $a1

	rst  ToBoot                                         ; $6a55: $c7
	ld   e, l                                        ; $6a56: $5d

Call_0e6_6a57:
	ld   c, e                                        ; $6a57: $4b
	xor  c                                           ; $6a58: $a9
	adc  d                                           ; $6a59: $8a
	and  [hl]                                        ; $6a5a: $a6
	rst  $10                                         ; $6a5b: $d7
	sbc  d                                           ; $6a5c: $9a
	ld   h, [hl]                                     ; $6a5d: $66
	ld   e, b                                        ; $6a5e: $58
	ld   b, e                                        ; $6a5f: $43
	jp   $3c6c                                       ; $6a60: $c3 $6c $3c


	add  a                                           ; $6a63: $87
	cp   c                                           ; $6a64: $b9
	sbc  d                                           ; $6a65: $9a
	add  $aa                                         ; $6a66: $c6 $aa
	ld   l, d                                        ; $6a68: $6a
	add  [hl]                                        ; $6a69: $86
	ld   d, a                                        ; $6a6a: $57
	ld   [hl], d                                     ; $6a6b: $72
	sbc  c                                           ; $6a6c: $99
	inc  l                                           ; $6a6d: $2c
	ld   h, a                                        ; $6a6e: $67
	or   l                                           ; $6a6f: $b5
	xor  d                                           ; $6a70: $aa
	xor  b                                           ; $6a71: $a8
	ret  z                                           ; $6a72: $c8

	ld   a, h                                        ; $6a73: $7c
	ld   a, c                                        ; $6a74: $79
	and  [hl]                                        ; $6a75: $a6
	ld   d, [hl]                                     ; $6a76: $56
	add  e                                           ; $6a77: $83
	ld   e, e                                        ; $6a78: $5b
	add  hl, hl                                      ; $6a79: $29
	and  l                                           ; $6a7a: $a5
	or   [hl]                                        ; $6a7b: $b6
	sbc  e                                           ; $6a7c: $9b
	xor  c                                           ; $6a7d: $a9
	xor  e                                           ; $6a7e: $ab
	ld   l, h                                        ; $6a7f: $6c
	sub  a                                           ; $6a80: $97
	and  a                                           ; $6a81: $a7
	ld   h, l                                        ; $6a82: $65
	add  l                                           ; $6a83: $85
	ld   a, [hl-]                                    ; $6a84: $3a
	ld   b, [hl]                                     ; $6a85: $46
	or   h                                           ; $6a86: $b4
	cp   b                                           ; $6a87: $b8
	adc  e                                           ; $6a88: $8b
	xor  d                                           ; $6a89: $aa
	sbc  h                                           ; $6a8a: $9c
	ld   a, d                                        ; $6a8b: $7a
	and  a                                           ; $6a8c: $a7
	and  a                                           ; $6a8d: $a7
	ld   h, l                                        ; $6a8e: $65
	halt                                             ; $6a8f: $76
	add  hl, hl                                      ; $6a90: $29
	ld   h, h                                        ; $6a91: $64
	call nz, Call_0e6_7b9a                           ; $6a92: $c4 $9a $7b
	xor  e                                           ; $6a95: $ab
	adc  e                                           ; $6a96: $8b
	sbc  c                                           ; $6a97: $99
	rst  ToBoot                                         ; $6a98: $c7
	xor  c                                           ; $6a99: $a9
	ld   h, l                                        ; $6a9a: $65
	ld   h, a                                        ; $6a9b: $67
	daa                                              ; $6a9c: $27
	add  d                                           ; $6a9d: $82
	or   [hl]                                        ; $6a9e: $b6
	ld   a, e                                        ; $6a9f: $7b
	ld   a, e                                        ; $6aa0: $7b
	sbc  d                                           ; $6aa1: $9a
	sbc  e                                           ; $6aa2: $9b
	xor  c                                           ; $6aa3: $a9
	ret                                              ; $6aa4: $c9


	sbc  b                                           ; $6aa5: $98
	ld   [hl], l                                     ; $6aa6: $75
	ld   e, b                                        ; $6aa7: $58
	ld   [hl], $93                                   ; $6aa8: $36 $93
	add  a                                           ; $6aaa: $87
	ld   l, d                                        ; $6aab: $6a
	ld   a, c                                        ; $6aac: $79

Call_0e6_6aad:
	sbc  e                                           ; $6aad: $9b
	sbc  e                                           ; $6aae: $9b
	xor  b                                           ; $6aaf: $a8
	cp   d                                           ; $6ab0: $ba
	adc  b                                           ; $6ab1: $88
	add  l                                           ; $6ab2: $85
	ld   d, a                                        ; $6ab3: $57
	ld   d, h                                        ; $6ab4: $54
	add  h                                           ; $6ab5: $84
	ld   e, b                                        ; $6ab6: $58
	ld   e, c                                        ; $6ab7: $59
	adc  c                                           ; $6ab8: $89
	xor  d                                           ; $6ab9: $aa
	cp   c                                           ; $6aba: $b9
	jp   z, $98aa                                    ; $6abb: $ca $aa $98

	add  [hl]                                        ; $6abe: $86
	ld   b, a                                        ; $6abf: $47
	ld   h, e                                        ; $6ac0: $63
	add  l                                           ; $6ac1: $85
	ld   c, c                                        ; $6ac2: $49
	ld   e, b                                        ; $6ac3: $58
	adc  b                                           ; $6ac4: $88
	xor  d                                           ; $6ac5: $aa
	cp   e                                           ; $6ac6: $bb
	cp   d                                           ; $6ac7: $ba
	xor  e                                           ; $6ac8: $ab
	xor  c                                           ; $6ac9: $a9
	sub  a                                           ; $6aca: $97
	ld   h, [hl]                                     ; $6acb: $66
	ld   [hl], h                                     ; $6acc: $74
	ld   h, a                                        ; $6acd: $67
	ld   b, a                                        ; $6ace: $47
	ld   h, [hl]                                     ; $6acf: $66
	add  a                                           ; $6ad0: $87
	xor  b                                           ; $6ad1: $a8
	cp   d                                           ; $6ad2: $ba
	cp   d                                           ; $6ad3: $ba
	xor  d                                           ; $6ad4: $aa
	xor  c                                           ; $6ad5: $a9
	adc  b                                           ; $6ad6: $88
	halt                                             ; $6ad7: $76
	halt                                             ; $6ad8: $76
	ld   b, a                                        ; $6ad9: $47
	ld   h, l                                        ; $6ada: $65
	ld   [hl], l                                     ; $6adb: $75
	ld   [hl], a                                     ; $6adc: $77
	adc  b                                           ; $6add: $88
	sbc  d                                           ; $6ade: $9a
	xor  d                                           ; $6adf: $aa
	cp   e                                           ; $6ae0: $bb
	cp   d                                           ; $6ae1: $ba
	sbc  c                                           ; $6ae2: $99
	sub  a                                           ; $6ae3: $97
	ld   h, a                                        ; $6ae4: $67
	ld   [hl], l                                     ; $6ae5: $75
	ld   [hl], l                                     ; $6ae6: $75
	ld   d, [hl]                                     ; $6ae7: $56
	ld   d, a                                        ; $6ae8: $57
	ld   h, a                                        ; $6ae9: $67
	sbc  b                                           ; $6aea: $98
	sbc  c                                           ; $6aeb: $99
	xor  e                                           ; $6aec: $ab
	xor  e                                           ; $6aed: $ab
	xor  d                                           ; $6aee: $aa
	sbc  b                                           ; $6aef: $98
	add  a                                           ; $6af0: $87
	ld   [hl], a                                     ; $6af1: $77
	ld   h, [hl]                                     ; $6af2: $66
	ld   h, l                                        ; $6af3: $65
	ld   h, [hl]                                     ; $6af4: $66
	ld   h, [hl]                                     ; $6af5: $66
	ld   [hl], a                                     ; $6af6: $77
	adc  c                                           ; $6af7: $89
	xor  d                                           ; $6af8: $aa
	sbc  d                                           ; $6af9: $9a
	xor  d                                           ; $6afa: $aa
	sbc  c                                           ; $6afb: $99
	xor  b                                           ; $6afc: $a8
	sub  a                                           ; $6afd: $97
	ld   a, b                                        ; $6afe: $78
	ld   h, a                                        ; $6aff: $67
	halt                                             ; $6b00: $76
	ld   h, [hl]                                     ; $6b01: $66
	ld   h, [hl]                                     ; $6b02: $66
	ld   h, a                                        ; $6b03: $67
	ld   a, c                                        ; $6b04: $79
	adc  c                                           ; $6b05: $89
	xor  d                                           ; $6b06: $aa
	xor  d                                           ; $6b07: $aa
	xor  d                                           ; $6b08: $aa
	xor  c                                           ; $6b09: $a9
	sbc  c                                           ; $6b0a: $99
	adc  b                                           ; $6b0b: $88
	add  a                                           ; $6b0c: $87
	ld   [hl], a                                     ; $6b0d: $77
	ld   h, [hl]                                     ; $6b0e: $66
	ld   h, [hl]                                     ; $6b0f: $66
	ld   h, [hl]                                     ; $6b10: $66
	ld   [hl], a                                     ; $6b11: $77
	adc  c                                           ; $6b12: $89
	sbc  c                                           ; $6b13: $99
	sbc  d                                           ; $6b14: $9a
	xor  d                                           ; $6b15: $aa
	xor  d                                           ; $6b16: $aa
	sbc  c                                           ; $6b17: $99
	adc  c                                           ; $6b18: $89
	adc  b                                           ; $6b19: $88
	add  a                                           ; $6b1a: $87
	ld   [hl], a                                     ; $6b1b: $77
	ld   h, [hl]                                     ; $6b1c: $66
	ld   h, [hl]                                     ; $6b1d: $66
	ld   h, a                                        ; $6b1e: $67
	ld   [hl], a                                     ; $6b1f: $77
	adc  c                                           ; $6b20: $89
	adc  b                                           ; $6b21: $88
	sbc  c                                           ; $6b22: $99
	sbc  c                                           ; $6b23: $99
	xor  c                                           ; $6b24: $a9
	sbc  c                                           ; $6b25: $99
	sbc  c                                           ; $6b26: $99
	sbc  c                                           ; $6b27: $99
	add  a                                           ; $6b28: $87
	ld   [hl], a                                     ; $6b29: $77
	ld   [hl], a                                     ; $6b2a: $77
	ld   h, [hl]                                     ; $6b2b: $66
	ld   h, a                                        ; $6b2c: $67
	ld   [hl], a                                     ; $6b2d: $77
	ld   a, b                                        ; $6b2e: $78
	adc  c                                           ; $6b2f: $89
	adc  c                                           ; $6b30: $89
	sbc  c                                           ; $6b31: $99
	sbc  c                                           ; $6b32: $99
	sbc  c                                           ; $6b33: $99
	sbc  b                                           ; $6b34: $98
	sbc  c                                           ; $6b35: $99
	adc  b                                           ; $6b36: $88
	ld   [hl], a                                     ; $6b37: $77
	ld   [hl], a                                     ; $6b38: $77
	ld   [hl], a                                     ; $6b39: $77
	ld   [hl], a                                     ; $6b3a: $77
	ld   [hl], a                                     ; $6b3b: $77
	ld   a, b                                        ; $6b3c: $78
	adc  c                                           ; $6b3d: $89
	sbc  b                                           ; $6b3e: $98
	adc  c                                           ; $6b3f: $89
	sbc  c                                           ; $6b40: $99
	sbc  c                                           ; $6b41: $99
	adc  b                                           ; $6b42: $88
	sbc  c                                           ; $6b43: $99
	adc  b                                           ; $6b44: $88
	add  a                                           ; $6b45: $87
	ld   [hl], a                                     ; $6b46: $77
	ld   [hl], a                                     ; $6b47: $77
	ld   [hl], a                                     ; $6b48: $77
	ld   [hl], a                                     ; $6b49: $77
	ld   [hl], a                                     ; $6b4a: $77
	adc  b                                           ; $6b4b: $88
	adc  c                                           ; $6b4c: $89
	sbc  c                                           ; $6b4d: $99
	adc  b                                           ; $6b4e: $88
	adc  b                                           ; $6b4f: $88
	adc  b                                           ; $6b50: $88
	sbc  c                                           ; $6b51: $99
	sbc  b                                           ; $6b52: $98
	adc  b                                           ; $6b53: $88
	add  a                                           ; $6b54: $87
	ld   [hl], a                                     ; $6b55: $77
	ld   [hl], a                                     ; $6b56: $77
	ld   [hl], a                                     ; $6b57: $77
	ld   a, b                                        ; $6b58: $78
	adc  b                                           ; $6b59: $88
	adc  b                                           ; $6b5a: $88
	adc  b                                           ; $6b5b: $88
	sbc  c                                           ; $6b5c: $99
	sbc  c                                           ; $6b5d: $99
	sbc  c                                           ; $6b5e: $99
	sbc  c                                           ; $6b5f: $99
	adc  b                                           ; $6b60: $88
	adc  b                                           ; $6b61: $88
	adc  b                                           ; $6b62: $88
	adc  b                                           ; $6b63: $88
	adc  b                                           ; $6b64: $88
	adc  b                                           ; $6b65: $88
	adc  b                                           ; $6b66: $88

Call_0e6_6b67:
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

Jump_0e6_6bc8:
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

Call_0e6_6c99:
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

Jump_0e6_6cd7:
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
	add  a                                           ; $6d3c: $87
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
	adc  c                                           ; $6d4a: $89
	adc  b                                           ; $6d4b: $88
	adc  b                                           ; $6d4c: $88
	adc  b                                           ; $6d4d: $88
	adc  c                                           ; $6d4e: $89
	adc  b                                           ; $6d4f: $88
	adc  b                                           ; $6d50: $88
	adc  b                                           ; $6d51: $88
	adc  b                                           ; $6d52: $88
	adc  b                                           ; $6d53: $88
	adc  b                                           ; $6d54: $88
	adc  b                                           ; $6d55: $88
	add  a                                           ; $6d56: $87
	adc  c                                           ; $6d57: $89
	adc  c                                           ; $6d58: $89
	adc  b                                           ; $6d59: $88
	adc  b                                           ; $6d5a: $88
	adc  b                                           ; $6d5b: $88
	adc  b                                           ; $6d5c: $88
	adc  b                                           ; $6d5d: $88
	sub  a                                           ; $6d5e: $97
	adc  c                                           ; $6d5f: $89
	adc  b                                           ; $6d60: $88
	adc  c                                           ; $6d61: $89
	adc  b                                           ; $6d62: $88
	adc  b                                           ; $6d63: $88
	adc  b                                           ; $6d64: $88
	adc  b                                           ; $6d65: $88
	adc  b                                           ; $6d66: $88
	sbc  b                                           ; $6d67: $98
	sub  a                                           ; $6d68: $97
	adc  b                                           ; $6d69: $88
	adc  b                                           ; $6d6a: $88
	ld   a, c                                        ; $6d6b: $79
	sbc  b                                           ; $6d6c: $98
	adc  c                                           ; $6d6d: $89
	add  a                                           ; $6d6e: $87
	adc  b                                           ; $6d6f: $88
	add  a                                           ; $6d70: $87
	add  a                                           ; $6d71: $87
	ld   a, c                                        ; $6d72: $79
	ld   [hl], a                                     ; $6d73: $77
	sbc  c                                           ; $6d74: $99
	ld   a, b                                        ; $6d75: $78
	sbc  b                                           ; $6d76: $98
	adc  c                                           ; $6d77: $89
	add  a                                           ; $6d78: $87
	adc  b                                           ; $6d79: $88
	ld   [hl], a                                     ; $6d7a: $77
	sbc  b                                           ; $6d7b: $98
	ld   a, b                                        ; $6d7c: $78
	add  a                                           ; $6d7d: $87
	adc  c                                           ; $6d7e: $89
	add  a                                           ; $6d7f: $87
	adc  c                                           ; $6d80: $89
	adc  c                                           ; $6d81: $89
	adc  b                                           ; $6d82: $88
	adc  b                                           ; $6d83: $88
	sbc  b                                           ; $6d84: $98
	adc  b                                           ; $6d85: $88
	adc  b                                           ; $6d86: $88
	adc  b                                           ; $6d87: $88
	ld   a, b                                        ; $6d88: $78
	sub  a                                           ; $6d89: $97
	adc  b                                           ; $6d8a: $88
	sbc  b                                           ; $6d8b: $98
	ld   a, b                                        ; $6d8c: $78
	adc  b                                           ; $6d8d: $88
	sbc  b                                           ; $6d8e: $98
	adc  b                                           ; $6d8f: $88
	adc  b                                           ; $6d90: $88
	adc  b                                           ; $6d91: $88
	adc  c                                           ; $6d92: $89
	adc  b                                           ; $6d93: $88
	sub  a                                           ; $6d94: $97
	add  a                                           ; $6d95: $87
	adc  b                                           ; $6d96: $88
	ld   [hl], a                                     ; $6d97: $77
	add  a                                           ; $6d98: $87
	ld   a, b                                        ; $6d99: $78
	ld   [hl], a                                     ; $6d9a: $77
	sbc  c                                           ; $6d9b: $99
	adc  b                                           ; $6d9c: $88
	sbc  c                                           ; $6d9d: $99
	adc  d                                           ; $6d9e: $8a
	xor  b                                           ; $6d9f: $a8
	xor  c                                           ; $6da0: $a9
	adc  b                                           ; $6da1: $88
	sbc  b                                           ; $6da2: $98
	ld   [hl], a                                     ; $6da3: $77
	ld   h, [hl]                                     ; $6da4: $66
	ld   [hl], a                                     ; $6da5: $77
	halt                                             ; $6da6: $76
	ld   [hl], a                                     ; $6da7: $77
	ld   a, b                                        ; $6da8: $78
	sbc  b                                           ; $6da9: $98
	sbc  d                                           ; $6daa: $9a
	xor  c                                           ; $6dab: $a9
	cp   d                                           ; $6dac: $ba
	sbc  c                                           ; $6dad: $99
	xor  c                                           ; $6dae: $a9
	ld   a, b                                        ; $6daf: $78
	add  [hl]                                        ; $6db0: $86
	ld   h, [hl]                                     ; $6db1: $66
	ld   h, l                                        ; $6db2: $65
	ld   h, [hl]                                     ; $6db3: $66
	ld   h, [hl]                                     ; $6db4: $66
	ld   a, b                                        ; $6db5: $78
	ld   a, b                                        ; $6db6: $78
	xor  d                                           ; $6db7: $aa
	xor  e                                           ; $6db8: $ab
	cp   c                                           ; $6db9: $b9
	xor  d                                           ; $6dba: $aa
	sbc  c                                           ; $6dbb: $99
	sbc  c                                           ; $6dbc: $99
	adc  c                                           ; $6dbd: $89
	halt                                             ; $6dbe: $76
	ld   h, l                                        ; $6dbf: $65
	ld   d, l                                        ; $6dc0: $55
	ld   h, l                                        ; $6dc1: $65
	ld   h, [hl]                                     ; $6dc2: $66
	ld   h, a                                        ; $6dc3: $67
	ld   a, c                                        ; $6dc4: $79
	adc  d                                           ; $6dc5: $8a
	xor  e                                           ; $6dc6: $ab
	cp   e                                           ; $6dc7: $bb
	cp   d                                           ; $6dc8: $ba
	sbc  d                                           ; $6dc9: $9a
	xor  c                                           ; $6dca: $a9
	adc  b                                           ; $6dcb: $88
	add  [hl]                                        ; $6dcc: $86
	ld   h, l                                        ; $6dcd: $65
	ld   b, h                                        ; $6dce: $44
	ld   d, l                                        ; $6dcf: $55
	ld   d, [hl]                                     ; $6dd0: $56
	ld   [hl], a                                     ; $6dd1: $77
	ld   a, c                                        ; $6dd2: $79
	sbc  d                                           ; $6dd3: $9a
	cp   e                                           ; $6dd4: $bb
	cp   d                                           ; $6dd5: $ba
	cp   e                                           ; $6dd6: $bb
	xor  c                                           ; $6dd7: $a9
	sbc  c                                           ; $6dd8: $99
	adc  c                                           ; $6dd9: $89
	halt                                             ; $6dda: $76
	ld   d, h                                        ; $6ddb: $54
	inc  sp                                          ; $6ddc: $33
	ld   h, h                                        ; $6ddd: $64
	ld   d, a                                        ; $6dde: $57
	ld   [hl], a                                     ; $6ddf: $77
	adc  e                                           ; $6de0: $8b
	xor  d                                           ; $6de1: $aa
	call z, $bacb                                    ; $6de2: $cc $cb $ba
	sbc  c                                           ; $6de5: $99
	sbc  b                                           ; $6de6: $98
	sbc  b                                           ; $6de7: $98
	ld   h, l                                        ; $6de8: $65
	ld   d, e                                        ; $6de9: $53
	inc  d                                           ; $6dea: $14
	ld   d, h                                        ; $6deb: $54
	ld   d, a                                        ; $6dec: $57
	add  a                                           ; $6ded: $87
	xor  h                                           ; $6dee: $ac
	xor  h                                           ; $6def: $ac
	db   $dd                                         ; $6df0: $dd
	cp   e                                           ; $6df1: $bb
	cp   c                                           ; $6df2: $b9
	adc  c                                           ; $6df3: $89
	add  a                                           ; $6df4: $87
	ld   [hl], a                                     ; $6df5: $77
	ld   d, h                                        ; $6df6: $54
	ld   [hl+], a                                    ; $6df7: $22
	inc  [hl]                                        ; $6df8: $34
	ld   b, [hl]                                     ; $6df9: $46
	ld   a, b                                        ; $6dfa: $78
	sbc  e                                           ; $6dfb: $9b
	call z, $cbde                                    ; $6dfc: $cc $de $cb
	cp   e                                           ; $6dff: $bb
	sbc  b                                           ; $6e00: $98
	add  a                                           ; $6e01: $87
	ld   [hl], a                                     ; $6e02: $77
	ld   h, l                                        ; $6e03: $65
	ld   [hl-], a                                    ; $6e04: $32
	inc  de                                          ; $6e05: $13
	ld   b, e                                        ; $6e06: $43
	ld   l, b                                        ; $6e07: $68
	sbc  c                                           ; $6e08: $99
	cp   l                                           ; $6e09: $bd
	call $baec                                       ; $6e0a: $cd $ec $ba
	xor  b                                           ; $6e0d: $a8
	adc  b                                           ; $6e0e: $88
	ld   [hl], a                                     ; $6e0f: $77
	ld   h, l                                        ; $6e10: $65
	ld   b, d                                        ; $6e11: $42
	ld   de, $4844                                   ; $6e12: $11 $44 $48
	sbc  c                                           ; $6e15: $99
	cp   l                                           ; $6e16: $bd
	db   $ec                                         ; $6e17: $ec
	sbc  $ca                                         ; $6e18: $de $ca
	cp   c                                           ; $6e1a: $b9
	add  a                                           ; $6e1b: $87
	add  a                                           ; $6e1c: $87
	ld   h, [hl]                                     ; $6e1d: $66
	ld   d, e                                        ; $6e1e: $53
	ld   de, $3734                                   ; $6e1f: $11 $34 $37
	sbc  c                                           ; $6e22: $99
	xor  l                                           ; $6e23: $ad
	db   $fc                                         ; $6e24: $fc
	sbc  $d9                                         ; $6e25: $de $d9
	sbc  d                                           ; $6e27: $9a
	add  a                                           ; $6e28: $87
	ld   a, b                                        ; $6e29: $78
	ld   h, [hl]                                     ; $6e2a: $66
	ld   d, e                                        ; $6e2b: $53
	ld   de, $4624                                   ; $6e2c: $11 $24 $46
	sbc  e                                           ; $6e2f: $9b
	cp   h                                           ; $6e30: $bc
	rst  $38                                         ; $6e31: $ff
	call $89d9                                       ; $6e32: $cd $d9 $89
	and  a                                           ; $6e35: $a7
	ld   l, c                                        ; $6e36: $69
	halt                                             ; $6e37: $76
	ld   d, h                                        ; $6e38: $54
	ld   de, $4624                                   ; $6e39: $11 $24 $46
	xor  h                                           ; $6e3c: $ac
	call z, $cbff                                    ; $6e3d: $cc $ff $cb
	jp   c, $a879                                    ; $6e40: $da $79 $a8

	ld   l, b                                        ; $6e43: $68
	add  [hl]                                        ; $6e44: $86
	ld   b, h                                        ; $6e45: $44
	ld   hl, $5615                                   ; $6e46: $21 $15 $56
	sbc  l                                           ; $6e49: $9d
	call z, $cbff                                    ; $6e4a: $cc $ff $cb
	ret                                              ; $6e4d: $c9


	ld   a, b                                        ; $6e4e: $78
	sbc  b                                           ; $6e4f: $98
	ld   l, b                                        ; $6e50: $68
	add  l                                           ; $6e51: $85
	ld   b, h                                        ; $6e52: $44
	ld   de, $5616                                   ; $6e53: $11 $16 $56
	xor  l                                           ; $6e56: $ad
	call z, $baff                                    ; $6e57: $cc $ff $ba
	ret                                              ; $6e5a: $c9


	ld   e, b                                        ; $6e5b: $58
	cp   b                                           ; $6e5c: $b8
	ld   l, c                                        ; $6e5d: $69
	sub  l                                           ; $6e5e: $95
	inc  sp                                          ; $6e5f: $33
	ld   de, $6716                                   ; $6e60: $11 $16 $67
	adc  $dd                                         ; $6e63: $ce $dd
	rst  $38                                         ; $6e65: $ff
	sbc  d                                           ; $6e66: $9a
	xor  b                                           ; $6e67: $a8
	ld   e, b                                        ; $6e68: $58
	or   a                                           ; $6e69: $b7
	ld   h, a                                        ; $6e6a: $67
	add  e                                           ; $6e6b: $83
	ld   [hl+], a                                    ; $6e6c: $22
	ld   de, $7a38                                   ; $6e6d: $11 $38 $7a
	sbc  $cd                                         ; $6e70: $de $cd
	ei                                               ; $6e72: $fb
	adc  d                                           ; $6e73: $8a
	sbc  b                                           ; $6e74: $98
	ld   a, d                                        ; $6e75: $7a
	and  a                                           ; $6e76: $a7
	ld   a, b                                        ; $6e77: $78
	ld   h, d                                        ; $6e78: $62
	ld   de, $6912                                   ; $6e79: $11 $12 $69
	sbc  [hl]                                        ; $6e7c: $9e
	db   $fc                                         ; $6e7d: $fc
	rst  JumpTable                                         ; $6e7e: $df
	rst  ToBoot                                         ; $6e7f: $c7
	adc  c                                           ; $6e80: $89
	add  a                                           ; $6e81: $87
	xor  e                                           ; $6e82: $ab
	add  [hl]                                        ; $6e83: $86
	ld   a, b                                        ; $6e84: $78
	ld   b, d                                        ; $6e85: $42
	ld   de, $8914                                   ; $6e86: $11 $14 $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e89: $cf
	db   $eb                                         ; $6e8a: $eb
	db   $ed                                         ; $6e8b: $ed
	sub  a                                           ; $6e8c: $97
	adc  c                                           ; $6e8d: $89
	ld   a, c                                        ; $6e8e: $79
	xor  c                                           ; $6e8f: $a9
	add  [hl]                                        ; $6e90: $86
	ld   [hl], l                                     ; $6e91: $75
	ld   [hl-], a                                    ; $6e92: $32
	ld   de, $ac27                                   ; $6e93: $11 $27 $ac
	rst  $28                                         ; $6e96: $ef
	call z, Call_0e6_77d9                            ; $6e97: $cc $d9 $77
	sbc  c                                           ; $6e9a: $99
	sbc  d                                           ; $6e9b: $9a
	xor  b                                           ; $6e9c: $a8
	halt                                             ; $6e9d: $76
	ld   [hl], h                                     ; $6e9e: $74
	ld   hl, $5811                                   ; $6e9f: $21 $11 $58
	cp   [hl]                                        ; $6ea2: $be
	db   $fd                                         ; $6ea3: $fd
	cp   l                                           ; $6ea4: $bd
	xor  b                                           ; $6ea5: $a8
	ld   l, c                                        ; $6ea6: $69
	xor  b                                           ; $6ea7: $a8
	xor  d                                           ; $6ea8: $aa
	sub  [hl]                                        ; $6ea9: $96
	ld   h, a                                        ; $6eaa: $67
	ld   d, h                                        ; $6eab: $54
	ld   de, $8b13                                   ; $6eac: $11 $13 $8b
	rst  JumpTable                                         ; $6eaf: $df
	db   $eb                                         ; $6eb0: $eb
	res  0, a                                        ; $6eb1: $cb $87
	adc  d                                           ; $6eb3: $8a
	sbc  d                                           ; $6eb4: $9a
	xor  d                                           ; $6eb5: $aa
	halt                                             ; $6eb6: $76
	ld   h, [hl]                                     ; $6eb7: $66
	ld   b, d                                        ; $6eb8: $42
	ld   de, $bd28                                   ; $6eb9: $11 $28 $bd
	rst  $28                                         ; $6ebc: $ef
	db   $db                                         ; $6ebd: $db
	xor  c                                           ; $6ebe: $a9
	ld   [hl], a                                     ; $6ebf: $77
	xor  d                                           ; $6ec0: $aa
	cp   d                                           ; $6ec1: $ba
	sbc  b                                           ; $6ec2: $98
	ld   h, [hl]                                     ; $6ec3: $66
	ld   h, [hl]                                     ; $6ec4: $66
	ld   sp, $7a11                                   ; $6ec5: $31 $11 $7a
	sbc  $fc                                         ; $6ec8: $de $fc
	sbc  e                                           ; $6eca: $9b
	sbc  b                                           ; $6ecb: $98
	ld   a, d                                        ; $6ecc: $7a
	cp   d                                           ; $6ecd: $ba
	cp   c                                           ; $6ece: $b9
	add  [hl]                                        ; $6ecf: $86
	ld   h, [hl]                                     ; $6ed0: $66
	ld   d, l                                        ; $6ed1: $55
	ld   hl, $bc15                                   ; $6ed2: $21 $15 $bc
	rst  JumpTable                                         ; $6ed5: $df
	ld   hl, sp-$77                                  ; $6ed6: $f8 $89
	and  a                                           ; $6ed8: $a7
	adc  h                                           ; $6ed9: $8c
	cp   e                                           ; $6eda: $bb
	add  a                                           ; $6edb: $87
	ld   [hl], l                                     ; $6edc: $75
	ld   d, [hl]                                     ; $6edd: $56
	ld   h, d                                        ; $6ede: $62
	ld   de, $de4b                                   ; $6edf: $11 $4b $de
	rst  $38                                         ; $6ee2: $ff
	xor  b                                           ; $6ee3: $a8
	sbc  c                                           ; $6ee4: $99
	ld   a, b                                        ; $6ee5: $78
	cp   l                                           ; $6ee6: $bd
	ret                                              ; $6ee7: $c9


	halt                                             ; $6ee8: $76
	ld   d, l                                        ; $6ee9: $55
	ld   h, a                                        ; $6eea: $67
	ld   b, c                                        ; $6eeb: $41
	inc  de                                          ; $6eec: $13
	xor  l                                           ; $6eed: $ad
	rst  $28                                         ; $6eee: $ef
	ld   [$8898], a                                  ; $6eef: $ea $98 $88
	adc  e                                           ; $6ef2: $8b
	call c, Call_0e6_5596                            ; $6ef3: $dc $96 $55
	ld   h, a                                        ; $6ef6: $67
	ld   [hl], h                                     ; $6ef7: $74
	ld   de, $de3a                                   ; $6ef8: $11 $3a $de
	rst  $38                                         ; $6efb: $ff
	xor  b                                           ; $6efc: $a8
	ld   l, b                                        ; $6efd: $68
	sbc  b                                           ; $6efe: $98
	set  1, b                                        ; $6eff: $cb $c8
	ld   h, l                                        ; $6f01: $65
	ld   d, [hl]                                     ; $6f02: $56
	ld   d, [hl]                                     ; $6f03: $56
	ld   b, c                                        ; $6f04: $41
	inc  d                                           ; $6f05: $14
	call z, $fccd                                    ; $6f06: $cc $cd $fc
	ld   [hl], a                                     ; $6f09: $77
	adc  b                                           ; $6f0a: $88
	ld   a, h                                        ; $6f0b: $7c
	db   $dd                                         ; $6f0c: $dd
	sub  [hl]                                        ; $6f0d: $96
	ld   d, h                                        ; $6f0e: $54
	ld   d, [hl]                                     ; $6f0f: $56
	add  h                                           ; $6f10: $84
	ld   de, $de4c                                   ; $6f11: $11 $4c $de
	cp   $a7                                         ; $6f14: $fe $a7
	ld   l, b                                        ; $6f16: $68
	sbc  c                                           ; $6f17: $99
	cp   h                                           ; $6f18: $bc
	rst  ToBoot                                         ; $6f19: $c7
	ld   d, l                                        ; $6f1a: $55
	ld   d, l                                        ; $6f1b: $55
	ld   d, a                                        ; $6f1c: $57
	ld   sp, $ee16                                   ; $6f1d: $31 $16 $ee
	rst  $28                                         ; $6f20: $ef
	reti                                             ; $6f21: $d9


	ld   h, [hl]                                     ; $6f22: $66
	adc  b                                           ; $6f23: $88
	call z, $64ea                                    ; $6f24: $cc $ea $64
	ld   [hl], $56                                   ; $6f27: $36 $56
	ld   h, e                                        ; $6f29: $63
	ld   de, $ed8e                                   ; $6f2a: $11 $8e $ed
	cp   $75                                         ; $6f2d: $fe $75
	ld   a, c                                        ; $6f2f: $79
	xor  d                                           ; $6f30: $aa
	sbc  $95                                         ; $6f31: $de $95
	inc  h                                           ; $6f33: $24
	ld   h, [hl]                                     ; $6f34: $66
	ld   h, h                                        ; $6f35: $64
	ld   de, $dd5c                                   ; $6f36: $11 $5c $dd
	rst  $38                                         ; $6f39: $ff
	or   [hl]                                        ; $6f3a: $b6
	ld   l, b                                        ; $6f3b: $68
	adc  d                                           ; $6f3c: $8a
	call Call_0e6_44c7                               ; $6f3d: $cd $c7 $44
	ld   d, l                                        ; $6f40: $55
	ld   d, l                                        ; $6f41: $55
	ld   de, $fe1b                                   ; $6f42: $11 $1b $fe
	sbc  $c7                                         ; $6f45: $de $c7
	ld   b, a                                        ; $6f47: $47
	sbc  d                                           ; $6f48: $9a
	cp   h                                           ; $6f49: $bc
	reti                                             ; $6f4a: $d9


	ld   d, e                                        ; $6f4b: $53
	ld   d, a                                        ; $6f4c: $57
	ld   h, [hl]                                     ; $6f4d: $66
	ld   sp, $df16                                   ; $6f4e: $31 $16 $df
	cp   $fa                                         ; $6f51: $fe $fa
	ld   d, l                                        ; $6f53: $55
	ld   l, c                                        ; $6f54: $69
	call z, Call_0e6_72dc                            ; $6f55: $cc $dc $72
	inc  h                                           ; $6f58: $24
	ld   h, [hl]                                     ; $6f59: $66
	ld   b, c                                        ; $6f5a: $41
	dec  d                                           ; $6f5b: $15
	rst  JumpTable                                         ; $6f5c: $df
	db   $dd                                         ; $6f5d: $dd
	db   $eb                                         ; $6f5e: $eb
	halt                                             ; $6f5f: $76
	ld   a, c                                        ; $6f60: $79
	sbc  h                                           ; $6f61: $9c
	call c, $3573                                    ; $6f62: $dc $73 $35
	halt                                             ; $6f65: $76
	ld   b, c                                        ; $6f66: $41
	ld   de, $feaf                                   ; $6f67: $11 $af $fe
	call c, Call_0e6_6985                            ; $6f6a: $dc $85 $69
	cp   e                                           ; $6f6d: $bb
	call z, $3594                                    ; $6f6e: $cc $94 $35
	ld   h, [hl]                                     ; $6f71: $66
	ld   d, d                                        ; $6f72: $52
	ld   de, $ff9e                                   ; $6f73: $11 $9e $ff
	db   $ed                                         ; $6f76: $ed
	add  l                                           ; $6f77: $85
	ld   l, b                                        ; $6f78: $68
	cp   h                                           ; $6f79: $bc
	res  0, h                                        ; $6f7a: $cb $84
	inc  h                                           ; $6f7c: $24
	ld   h, l                                        ; $6f7d: $65
	ld   b, d                                        ; $6f7e: $42
	ld   [de], a                                     ; $6f7f: $12
	xor  a                                           ; $6f80: $af
	db   $fd                                         ; $6f81: $fd
	db   $db                                         ; $6f82: $db
	add  l                                           ; $6f83: $85
	ld   a, c                                        ; $6f84: $79
	call z, Call_0e6_73ca                            ; $6f85: $cc $ca $73
	ld   h, $78                                      ; $6f88: $26 $78
	ld   d, c                                        ; $6f8a: $51
	ld   de, $feaf                                   ; $6f8b: $11 $af $fe
	db   $fd                                         ; $6f8e: $fd
	ld   [hl], a                                     ; $6f8f: $77
	ld   a, d                                        ; $6f90: $7a
	cp   e                                           ; $6f91: $bb
	jp   c, $3672                                    ; $6f92: $da $72 $36

	ld   [hl], l                                     ; $6f95: $75
	ld   sp, $bf12                                   ; $6f96: $31 $12 $bf
	call c, Call_0e6_77fe                            ; $6f99: $dc $fe $77
	adc  d                                           ; $6f9c: $8a
	sbc  e                                           ; $6f9d: $9b
	cp   d                                           ; $6f9e: $ba
	ld   [hl], e                                     ; $6f9f: $73
	dec  [hl]                                        ; $6fa0: $35
	ld   d, h                                        ; $6fa1: $54
	ld   [hl-], a                                    ; $6fa2: $32
	ld   d, $df                                      ; $6fa3: $16 $df
	call Call_0e6_77fa                               ; $6fa5: $cd $fa $77
	sbc  d                                           ; $6fa8: $9a
	sbc  e                                           ; $6fa9: $9b
	xor  d                                           ; $6faa: $aa
	ld   h, d                                        ; $6fab: $62
	ld   b, [hl]                                     ; $6fac: $46
	ld   h, e                                        ; $6fad: $63
	ld   de, $de39                                   ; $6fae: $11 $39 $de
	cp   $c8                                         ; $6fb1: $fe $c8
	adc  b                                           ; $6fb3: $88
	sbc  e                                           ; $6fb4: $9b
	cp   h                                           ; $6fb5: $bc
	sub  a                                           ; $6fb6: $97
	ld   b, e                                        ; $6fb7: $43
	ld   d, [hl]                                     ; $6fb8: $56
	ld   h, e                                        ; $6fb9: $63
	ld   de, $ee5d                                   ; $6fba: $11 $5d $ee
	db   $ed                                         ; $6fbd: $ed
	sub  a                                           ; $6fbe: $97
	sbc  b                                           ; $6fbf: $98
	xor  h                                           ; $6fc0: $ac
	res  0, l                                        ; $6fc1: $cb $85
	inc  de                                          ; $6fc3: $13
	ld   h, a                                        ; $6fc4: $67
	ld   b, c                                        ; $6fc5: $41
	inc  d                                           ; $6fc6: $14
	adc  $dd                                         ; $6fc7: $ce $dd
	db   $ec                                         ; $6fc9: $ec
	ld   [hl], a                                     ; $6fca: $77
	adc  e                                           ; $6fcb: $8b
	jp   z, Jump_0e6_72a9                            ; $6fcc: $ca $a9 $72

	ld   c, c                                        ; $6fcf: $49
	add  e                                           ; $6fd0: $83
	ld   de, $d94d                                   ; $6fd1: $11 $4d $d9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fd4: $cf
	ld   hl, sp+$67                                  ; $6fd5: $f8 $67
	sbc  e                                           ; $6fd7: $9b
	xor  e                                           ; $6fd8: $ab
	cp   c                                           ; $6fd9: $b9
	ld   [hl-], a                                    ; $6fda: $32
	ld   l, b                                        ; $6fdb: $68
	ld   d, c                                        ; $6fdc: $51
	ld   de, $ebaf                                   ; $6fdd: $11 $af $eb
	db   $dd                                         ; $6fe0: $dd
	sub  [hl]                                        ; $6fe1: $96
	ld   a, d                                        ; $6fe2: $7a
	cp   d                                           ; $6fe3: $ba
	sbc  d                                           ; $6fe4: $9a
	sub  h                                           ; $6fe5: $94
	ld   h, $85                                      ; $6fe6: $26 $85
	ld   de, $df16                                   ; $6fe8: $11 $16 $df
	call z, $87eb                                    ; $6feb: $cc $eb $87
	sbc  e                                           ; $6fee: $9b
	sbc  d                                           ; $6fef: $9a
	xor  c                                           ; $6ff0: $a9
	ld   d, e                                        ; $6ff1: $53
	ld   d, a                                        ; $6ff2: $57
	ld   h, d                                        ; $6ff3: $62
	ld   de, $ff6c                                   ; $6ff4: $11 $6c $ff
	call c, $9a97                                    ; $6ff7: $dc $97 $9a
	jp   z, Jump_0e6_75a9                            ; $6ffa: $ca $a9 $75

	dec  h                                           ; $6ffd: $25
	ld   h, a                                        ; $6ffe: $67
	ld   b, c                                        ; $6fff: $41
	dec  d                                           ; $7000: $15
	call z, $febb                                    ; $7001: $cc $bb $fe
	sub  a                                           ; $7004: $97
	ld   a, e                                        ; $7005: $7b
	sbc  d                                           ; $7006: $9a
	sbc  d                                           ; $7007: $9a
	ld   [hl], h                                     ; $7008: $74
	ld   d, a                                        ; $7009: $57
	ld   [hl], e                                     ; $700a: $73
	ld   de, $dc4d                                   ; $700b: $11 $4d $dc
	rst  JumpTable                                         ; $700e: $df
	ret  c                                           ; $700f: $d8

	ld   [hl], a                                     ; $7010: $77
	xor  h                                           ; $7011: $ac
	cp   c                                           ; $7012: $b9
	add  a                                           ; $7013: $87
	inc  [hl]                                        ; $7014: $34
	ld   a, b                                        ; $7015: $78
	ld   b, c                                        ; $7016: $41
	ld   [de], a                                     ; $7017: $12
	cp   l                                           ; $7018: $bd
	call $86ff                                       ; $7019: $cd $ff $86
	ld   a, d                                        ; $701c: $7a
	jp   z, $72aa                                    ; $701d: $ca $aa $72

	ld   [hl], $86                                   ; $7020: $36 $86
	ld   sp, $bb17                                   ; $7022: $31 $17 $bb
	rst  JumpTable                                         ; $7025: $df
	add  sp, $68                                     ; $7026: $e8 $68
	xor  h                                           ; $7028: $ac
	xor  c                                           ; $7029: $a9
	xor  b                                           ; $702a: $a8
	ld   b, e                                        ; $702b: $43
	ld   [hl], a                                     ; $702c: $77
	ld   h, c                                        ; $702d: $61
	ld   de, $cc9d                                   ; $702e: $11 $9d $cc
	sbc  $c9                                         ; $7031: $de $c9
	ld   a, c                                        ; $7033: $79
	cp   d                                           ; $7034: $ba
	xor  c                                           ; $7035: $a9
	sub  h                                           ; $7036: $94
	dec  [hl]                                        ; $7037: $35
	add  [hl]                                        ; $7038: $86
	ld   hl, $d82a                                   ; $7039: $21 $2a $d8
	sbc  a                                           ; $703c: $9f
	ei                                               ; $703d: $fb
	halt                                             ; $703e: $76
	ld   a, e                                        ; $703f: $7b
	cp   h                                           ; $7040: $bc
	sbc  c                                           ; $7041: $99
	ld   d, d                                        ; $7042: $52
	ld   d, [hl]                                     ; $7043: $56
	ld   [hl], e                                     ; $7044: $73
	ld   de, $cc5b                                   ; $7045: $11 $5b $cc
	sbc  $b8                                         ; $7048: $de $b8
	ld   l, c                                        ; $704a: $69
	cp   d                                           ; $704b: $ba
	xor  c                                           ; $704c: $a9
	and  l                                           ; $704d: $a5
	dec  [hl]                                        ; $704e: $35
	ld   a, b                                        ; $704f: $78
	ld   sp, $be14                                   ; $7050: $31 $14 $be
	db   $db                                         ; $7053: $db
	call z, $8b97                                    ; $7054: $cc $97 $8b
	cp   c                                           ; $7057: $b9
	sbc  b                                           ; $7058: $98
	ld   [hl], e                                     ; $7059: $73
	ld   b, a                                        ; $705a: $47
	ld   h, e                                        ; $705b: $63
	ld   de, $ba5d                                   ; $705c: $11 $5d $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $705f: $cf
	push de                                          ; $7060: $d5
	ld   l, c                                        ; $7061: $69
	db   $db                                         ; $7062: $db
	xor  b                                           ; $7063: $a8
	sbc  b                                           ; $7064: $98
	inc  [hl]                                        ; $7065: $34
	ld   h, a                                        ; $7066: $67
	ld   b, c                                        ; $7067: $41
	ld   [de], a                                     ; $7068: $12
	rst  $38                                         ; $7069: $ff
	and  [hl]                                        ; $706a: $a6
	xor  [hl]                                        ; $706b: $ae
	ret                                              ; $706c: $c9


	ld   a, c                                        ; $706d: $79
	jp   z, $8587                                    ; $706e: $ca $87 $85

	ld   h, a                                        ; $7071: $67
	ld   d, e                                        ; $7072: $53
	ld   de, $fd1b                                   ; $7073: $11 $1b $fd
	cp   e                                           ; $7076: $bb
	ret  z                                           ; $7077: $c8

	adc  b                                           ; $7078: $88
	xor  h                                           ; $7079: $ac
	cp   c                                           ; $707a: $b9
	halt                                             ; $707b: $76
	inc  [hl]                                        ; $707c: $34
	sbc  c                                           ; $707d: $99
	ld   h, c                                        ; $707e: $61
	ld   de, $ebbf                                   ; $707f: $11 $bf $eb
	db   $dd                                         ; $7082: $dd
	sub  [hl]                                        ; $7083: $96
	ld   l, d                                        ; $7084: $6a
	db   $dd                                         ; $7085: $dd
	cp   b                                           ; $7086: $b8
	ld   [hl], d                                     ; $7087: $72
	dec  d                                           ; $7088: $15
	sbc  c                                           ; $7089: $99
	ld   sp, $cb18                                   ; $708a: $31 $18 $cb
	rst  JumpTable                                         ; $708d: $df
	ld   a, [$9c76]                                  ; $708e: $fa $76 $9c
	sbc  b                                           ; $7091: $98
	sbc  d                                           ; $7092: $9a
	ld   d, e                                        ; $7093: $53
	ld   b, l                                        ; $7094: $45
	ld   d, d                                        ; $7095: $52
	ld   de, $ce9d                                   ; $7096: $11 $9d $ce
	db   $dd                                         ; $7099: $dd
	sbc  b                                           ; $709a: $98
	ld   a, c                                        ; $709b: $79
	jp   z, $8499                                    ; $709c: $ca $99 $84

	inc  [hl]                                        ; $709f: $34
	ld   d, [hl]                                     ; $70a0: $56
	ld   b, c                                        ; $70a1: $41
	add  hl, de                                      ; $70a2: $19
	res  7, a                                        ; $70a3: $cb $bf
	ld   a, [$ad65]                                  ; $70a5: $fa $65 $ad
	ret                                              ; $70a8: $c9


	sbc  c                                           ; $70a9: $99
	ld   b, e                                        ; $70aa: $43
	ld   d, [hl]                                     ; $70ab: $56
	ld   d, e                                        ; $70ac: $53
	ld   de, $dc8d                                   ; $70ad: $11 $8d $dc
	db   $ed                                         ; $70b0: $ed
	add  a                                           ; $70b1: $87
	ld   a, d                                        ; $70b2: $7a
	db   $db                                         ; $70b3: $db
	adc  b                                           ; $70b4: $88
	ld   [hl], h                                     ; $70b5: $74
	ld   d, a                                        ; $70b6: $57
	ld   [hl], l                                     ; $70b7: $75
	ld   de, $ff18                                   ; $70b8: $11 $18 $ff
	db   $ed                                         ; $70bb: $ed
	xor  b                                           ; $70bc: $a8
	ld   h, a                                        ; $70bd: $67
	cp   l                                           ; $70be: $bd
	ret                                              ; $70bf: $c9


	halt                                             ; $70c0: $76
	ld   b, l                                        ; $70c1: $45
	halt                                             ; $70c2: $76
	ld   b, c                                        ; $70c3: $41
	ld   de, $ed9e                                   ; $70c4: $11 $9e $ed
	db   $db                                         ; $70c7: $db
	adc  b                                           ; $70c8: $88
	sbc  e                                           ; $70c9: $9b
	jp   z, $7498                                    ; $70ca: $ca $98 $74

	ld   d, [hl]                                     ; $70cd: $56
	ld   h, h                                        ; $70ce: $64
	ld   de, $eb3c                                   ; $70cf: $11 $3c $eb
	xor  [hl]                                        ; $70d2: $ae
	ret                                              ; $70d3: $c9


	adc  b                                           ; $70d4: $88
	cp   e                                           ; $70d5: $bb
	cp   b                                           ; $70d6: $b8
	add  [hl]                                        ; $70d7: $86
	ld   b, l                                        ; $70d8: $45
	ld   d, l                                        ; $70d9: $55
	ld   [hl+], a                                    ; $70da: $22
	inc  d                                           ; $70db: $14
	cp   [hl]                                        ; $70dc: $be
	cp   $fa                                         ; $70dd: $fe $fa
	halt                                             ; $70df: $76
	adc  h                                           ; $70e0: $8c
	db   $db                                         ; $70e1: $db
	sub  a                                           ; $70e2: $97
	ld   b, h                                        ; $70e3: $44
	ld   h, [hl]                                     ; $70e4: $66
	ld   b, c                                        ; $70e5: $41
	ld   [de], a                                     ; $70e6: $12
	sbc  h                                           ; $70e7: $9c
	db   $dd                                         ; $70e8: $dd
	db   $fd                                         ; $70e9: $fd
	sbc  b                                           ; $70ea: $98
	ld   l, c                                        ; $70eb: $69
	db   $db                                         ; $70ec: $db
	sub  a                                           ; $70ed: $97
	add  [hl]                                        ; $70ee: $86
	ld   d, l                                        ; $70ef: $55
	ld   [hl-], a                                    ; $70f0: $32
	ld   [de], a                                     ; $70f1: $12
	ld   e, c                                        ; $70f2: $59
	cp   h                                           ; $70f3: $bc
	rst  $28                                         ; $70f4: $ef
	cp   c                                           ; $70f5: $b9
	adc  b                                           ; $70f6: $88
	xor  e                                           ; $70f7: $ab
	cp   b                                           ; $70f8: $b8
	add  [hl]                                        ; $70f9: $86
	ld   d, l                                        ; $70fa: $55
	ld   d, l                                        ; $70fb: $55
	ld   sp, $ac15                                   ; $70fc: $31 $15 $ac
	adc  $fc                                         ; $70ff: $ce $fc
	sub  [hl]                                        ; $7101: $96
	ld   a, e                                        ; $7102: $7b
	cp   e                                           ; $7103: $bb
	sbc  b                                           ; $7104: $98
	ld   d, h                                        ; $7105: $54
	ld   d, a                                        ; $7106: $57
	ld   h, d                                        ; $7107: $62
	ld   de, $ec6c                                   ; $7108: $11 $6c $ec
	call Call_0e6_78ba                               ; $710b: $cd $ba $78
	sbc  d                                           ; $710e: $9a
	xor  d                                           ; $710f: $aa
	sub  [hl]                                        ; $7110: $96
	ld   d, l                                        ; $7111: $55
	ld   d, e                                        ; $7112: $53
	ld   de, $ec2a                                   ; $7113: $11 $2a $ec
	sbc  e                                           ; $7116: $9b
	db   $ec                                         ; $7117: $ec
	and  a                                           ; $7118: $a7
	adc  e                                           ; $7119: $8b
	xor  c                                           ; $711a: $a9
	sub  a                                           ; $711b: $97
	ld   d, l                                        ; $711c: $55
	ld   h, h                                        ; $711d: $64
	ld   hl, $ce15                                   ; $711e: $21 $15 $ce
	call $98ec                                       ; $7121: $cd $ec $98
	sbc  e                                           ; $7124: $9b
	cp   c                                           ; $7125: $b9
	sbc  b                                           ; $7126: $98
	ld   [hl], h                                     ; $7127: $74
	ld   b, h                                        ; $7128: $44
	ld   b, d                                        ; $7129: $42
	ld   [de], a                                     ; $712a: $12
	ld   a, a                                        ; $712b: $7f
	jp   c, $caac                                    ; $712c: $da $ac $ca

	xor  b                                           ; $712f: $a8
	xor  d                                           ; $7130: $aa
	add  a                                           ; $7131: $87
	add  a                                           ; $7132: $87
	halt                                             ; $7133: $76
	ld   b, c                                        ; $7134: $41
	ld   de, $dd39                                   ; $7135: $11 $39 $dd
	rst  JumpTable                                         ; $7138: $df
	ret  z                                           ; $7139: $c8

	ld   h, [hl]                                     ; $713a: $66
	cp   [hl]                                        ; $713b: $be
	ret                                              ; $713c: $c9


	halt                                             ; $713d: $76
	ld   b, l                                        ; $713e: $45
	ld   h, h                                        ; $713f: $64
	ld   sp, $af13                                   ; $7140: $31 $13 $af
	db   $ec                                         ; $7143: $ec
	set  1, d                                        ; $7144: $cb $ca
	sbc  d                                           ; $7146: $9a
	xor  d                                           ; $7147: $aa
	sbc  c                                           ; $7148: $99
	ld   h, l                                        ; $7149: $65
	ld   d, h                                        ; $714a: $54
	ld   hl, $6b23                                   ; $714b: $21 $23 $6b
	db   $fd                                         ; $714e: $fd
	db   $ed                                         ; $714f: $ed
	and  a                                           ; $7150: $a7
	ld   a, c                                        ; $7151: $79
	cp   e                                           ; $7152: $bb
	sbc  c                                           ; $7153: $99
	add  a                                           ; $7154: $87
	ld   d, h                                        ; $7155: $54
	ld   sp, $4712                                   ; $7156: $31 $12 $47
	adc  $ff                                         ; $7159: $ce $ff
	or   a                                           ; $715b: $b7
	ld   l, c                                        ; $715c: $69
	call Call_0e6_77a8                               ; $715d: $cd $a8 $77
	ld   d, l                                        ; $7160: $55
	ld   b, d                                        ; $7161: $42
	ld   de, $df16                                   ; $7162: $11 $16 $df
	db   $db                                         ; $7165: $db
	xor  c                                           ; $7166: $a9
	cp   c                                           ; $7167: $b9
	sbc  c                                           ; $7168: $99
	xor  e                                           ; $7169: $ab
	sub  a                                           ; $716a: $97

Jump_0e6_716b:
	ld   b, h                                        ; $716b: $44
	ld   d, h                                        ; $716c: $54
	ld   de, $ab25                                   ; $716d: $11 $25 $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7170: $cf
	db   $fd                                         ; $7171: $fd
	ld   [hl], h                                     ; $7172: $74
	ld   e, e                                        ; $7173: $5b
	call c, Call_0e6_64a8                            ; $7174: $dc $a8 $64
	ld   b, h                                        ; $7177: $44
	ld   [hl-], a                                    ; $7178: $32
	ld   hl, $ff4b                                   ; $7179: $21 $4b $ff
	db   $fd                                         ; $717c: $fd
	sub  a                                           ; $717d: $97
	adc  d                                           ; $717e: $8a
	res  1, b                                        ; $717f: $cb $88
	add  [hl]                                        ; $7181: $86
	ld   b, h                                        ; $7182: $44
	ld   sp, $3d11                                   ; $7183: $31 $11 $3d
	rst  $38                                         ; $7186: $ff
	xor  d                                           ; $7187: $aa
	cp   h                                           ; $7188: $bc
	cp   c                                           ; $7189: $b9
	xor  d                                           ; $718a: $aa
	cp   d                                           ; $718b: $ba
	add  [hl]                                        ; $718c: $86
	ld   d, l                                        ; $718d: $55
	ld   d, d                                        ; $718e: $52
	ld   de, $ed28                                   ; $718f: $11 $28 $ed
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7192: $cf
	db   $fc                                         ; $7193: $fc
	halt                                             ; $7194: $76
	ld   a, e                                        ; $7195: $7b
	jp   c, Jump_0e6_6597                            ; $7196: $da $97 $65

	ld   b, d                                        ; $7199: $42
	ld   de, $bf14                                   ; $719a: $11 $14 $bf
	db   $fd                                         ; $719d: $fd
	ret                                              ; $719e: $c9


	adc  b                                           ; $719f: $88
	sbc  e                                           ; $71a0: $9b
	res  2, a                                        ; $71a1: $cb $97
	ld   h, l                                        ; $71a3: $65
	ld   d, [hl]                                     ; $71a4: $56
	ld   sp, $6e11                                   ; $71a5: $31 $11 $6e
	db   $fd                                         ; $71a8: $fd
	res  5, d                                        ; $71a9: $cb $aa
	sbc  b                                           ; $71ab: $98
	sbc  e                                           ; $71ac: $9b
	jp   z, Jump_0e6_4574                            ; $71ad: $ca $74 $45

	ld   sp, $5c11                                   ; $71b0: $31 $11 $5c
	cp   $ee                                         ; $71b3: $fe $ee
	or   a                                           ; $71b5: $b7
	ld   a, b                                        ; $71b6: $78
	cp   e                                           ; $71b7: $bb
	cp   b                                           ; $71b8: $b8
	add  a                                           ; $71b9: $87
	ld   d, l                                        ; $71ba: $55
	ld   b, c                                        ; $71bb: $41
	ld   de, $ff27                                   ; $71bc: $11 $27 $ff
	xor  $a8                                         ; $71bf: $ee $a8
	sbc  c                                           ; $71c1: $99
	sbc  d                                           ; $71c2: $9a
	cp   e                                           ; $71c3: $bb
	sub  a                                           ; $71c4: $97
	ld   b, h                                        ; $71c5: $44
	ld   d, e                                        ; $71c6: $53
	ld   de, $ff15                                   ; $71c7: $11 $15 $ff
	call c, $aadb                                    ; $71ca: $dc $db $aa
	adc  d                                           ; $71cd: $8a
	xor  e                                           ; $71ce: $ab
	sub  a                                           ; $71cf: $97
	ld   h, [hl]                                     ; $71d0: $66
	ld   h, h                                        ; $71d1: $64
	ld   de, $bf14                                   ; $71d2: $11 $14 $bf
	rst  $38                                         ; $71d5: $ff
	db   $eb                                         ; $71d6: $eb
	halt                                             ; $71d7: $76
	adc  h                                           ; $71d8: $8c
	jp   z, Jump_0e6_6587                            ; $71d9: $ca $87 $65

	ld   d, l                                        ; $71dc: $55
	ld   [hl-], a                                    ; $71dd: $32
	ld   de, $ff4b                                   ; $71de: $11 $4b $ff
	db   $ec                                         ; $71e1: $ec
	sbc  b                                           ; $71e2: $98
	ld   a, c                                        ; $71e3: $79
	cp   e                                           ; $71e4: $bb
	cp   c                                           ; $71e5: $b9
	halt                                             ; $71e6: $76
	ld   b, e                                        ; $71e7: $43
	ld   hl, $5b12                                   ; $71e8: $21 $12 $5b
	xor  $ff                                         ; $71eb: $ee $ff
	or   a                                           ; $71ed: $b7
	ld   a, b                                        ; $71ee: $78
	xor  e                                           ; $71ef: $ab
	cp   c                                           ; $71f0: $b9
	ld   a, b                                        ; $71f1: $78
	ld   h, [hl]                                     ; $71f2: $66
	ld   b, c                                        ; $71f3: $41
	ld   de, $ff38                                   ; $71f4: $11 $38 $ff
	db   $dd                                         ; $71f7: $dd
	jp   z, $aa87                                    ; $71f8: $ca $87 $aa

	cp   d                                           ; $71fb: $ba
	add  [hl]                                        ; $71fc: $86
	ld   b, l                                        ; $71fd: $45
	ld   d, e                                        ; $71fe: $53
	ld   de, $cf15                                   ; $71ff: $11 $15 $cf
	db   $fd                                         ; $7202: $fd
	res  0, a                                        ; $7203: $cb $87
	adc  e                                           ; $7205: $8b
	cp   d                                           ; $7206: $ba
	add  a                                           ; $7207: $87
	ld   [hl], l                                     ; $7208: $75
	ld   d, h                                        ; $7209: $54
	ld   de, $9f12                                   ; $720a: $11 $12 $9f
	rst  $38                                         ; $720d: $ff
	call c, $8b97                                    ; $720e: $dc $97 $8b
	cp   d                                           ; $7211: $ba
	sub  a                                           ; $7212: $97
	ld   h, l                                        ; $7213: $65
	ld   d, h                                        ; $7214: $54
	ld   hl, $6e11                                   ; $7215: $21 $11 $6e
	cp   $dc                                         ; $7218: $fe $dc
	sbc  c                                           ; $721a: $99
	sbc  c                                           ; $721b: $99
	xor  c                                           ; $721c: $a9
	xor  c                                           ; $721d: $a9
	add  [hl]                                        ; $721e: $86
	ld   b, l                                        ; $721f: $45
	ld   sp, $2a11                                   ; $7220: $31 $11 $2a
	rst  $38                                         ; $7223: $ff
	cp   $b8                                         ; $7224: $fe $b8
	ld   [hl], a                                     ; $7226: $77
	cp   e                                           ; $7227: $bb
	cp   e                                           ; $7228: $bb
	add  a                                           ; $7229: $87
	ld   d, h                                        ; $722a: $54
	ld   [hl-], a                                    ; $722b: $32
	ld   de, $ef16                                   ; $722c: $11 $16 $ef
	rst  $38                                         ; $722f: $ff
	ret  z                                           ; $7230: $c8

	ld   a, b                                        ; $7231: $78
	xor  e                                           ; $7232: $ab
	cp   d                                           ; $7233: $ba
	adc  b                                           ; $7234: $88
	ld   h, l                                        ; $7235: $65
	ld   b, d                                        ; $7236: $42
	ld   de, $bf25                                   ; $7237: $11 $25 $bf
	rst  $38                                         ; $723a: $ff
	db   $db                                         ; $723b: $db
	add  a                                           ; $723c: $87
	sbc  d                                           ; $723d: $9a
	cp   d                                           ; $723e: $ba
	xor  d                                           ; $723f: $aa
	ld   [hl], h                                     ; $7240: $74
	ld   [hl-], a                                    ; $7241: $32
	ld   bc, $9f13                                   ; $7242: $01 $13 $9f
	rst  $38                                         ; $7245: $ff
	ld   [$8b88], a                                  ; $7246: $ea $88 $8b
	cp   e                                           ; $7249: $bb
	xor  b                                           ; $724a: $a8
	ld   [hl], h                                     ; $724b: $74
	ld   d, h                                        ; $724c: $54
	ld   sp, $6f11                                   ; $724d: $31 $11 $6f
	cp   $cb                                         ; $7250: $fe $cb
	cp   e                                           ; $7252: $bb
	sub  a                                           ; $7253: $97
	sbc  d                                           ; $7254: $9a
	cp   e                                           ; $7255: $bb
	add  l                                           ; $7256: $85
	ld   b, h                                        ; $7257: $44
	ld   sp, $5c11                                   ; $7258: $31 $11 $5c
	cp   $ef                                         ; $725b: $fe $ef
	cp   d                                           ; $725d: $ba
	ld   h, [hl]                                     ; $725e: $66
	sbc  d                                           ; $725f: $9a
	ret                                              ; $7260: $c9


	sub  [hl]                                        ; $7261: $96
	ld   d, h                                        ; $7262: $54
	ld   hl, $3911                                   ; $7263: $21 $11 $39
	rst  $38                                         ; $7266: $ff
	db   $db                                         ; $7267: $db
	sbc  c                                           ; $7268: $99
	xor  e                                           ; $7269: $ab
	xor  d                                           ; $726a: $aa
	sbc  b                                           ; $726b: $98
	ld   [hl], a                                     ; $726c: $77
	ld   h, [hl]                                     ; $726d: $66
	ld   d, e                                        ; $726e: $53
	ld   de, $cf14                                   ; $726f: $11 $14 $cf
	rst  $38                                         ; $7272: $ff
	db   $db                                         ; $7273: $db
	adc  b                                           ; $7274: $88
	adc  d                                           ; $7275: $8a
	xor  d                                           ; $7276: $aa
	cp   d                                           ; $7277: $ba
	sub  l                                           ; $7278: $95
	ld   sp, $1411                                   ; $7279: $31 $11 $14
	cp   a                                           ; $727c: $bf
	rst  $38                                         ; $727d: $ff
	db   $db                                         ; $727e: $db
	adc  b                                           ; $727f: $88
	adc  c                                           ; $7280: $89
	xor  d                                           ; $7281: $aa
	xor  b                                           ; $7282: $a8
	ld   [hl], h                                     ; $7283: $74
	ld   b, d                                        ; $7284: $42
	ld   de, $ae15                                   ; $7285: $11 $15 $ae
	call z, $cadf                                    ; $7288: $cc $df $ca
	ld   a, b                                        ; $728b: $78
	adc  b                                           ; $728c: $88
	xor  c                                           ; $728d: $a9
	and  a                                           ; $728e: $a7
	ld   h, e                                        ; $728f: $63
	ld   de, $5e12                                   ; $7290: $11 $12 $5e
	rst  $38                                         ; $7293: $ff
	cp   d                                           ; $7294: $ba
	xor  d                                           ; $7295: $aa
	xor  c                                           ; $7296: $a9
	sbc  b                                           ; $7297: $98
	cp   d                                           ; $7298: $ba
	and  a                                           ; $7299: $a7
	ld   d, h                                        ; $729a: $54
	ld   hl, $4c11                                   ; $729b: $21 $11 $4c
	cp   $ee                                         ; $729e: $fe $ee
	jp   c, $ab87                                    ; $72a0: $da $87 $ab

	xor  c                                           ; $72a3: $a9
	adc  b                                           ; $72a4: $88
	ld   h, l                                        ; $72a5: $65
	ld   sp, $3811                                   ; $72a6: $31 $11 $38

Jump_0e6_72a9:
	xor  $de                                         ; $72a9: $ee $de
	jp   c, $aa87                                    ; $72ab: $da $87 $aa

	sbc  b                                           ; $72ae: $98
	ld   a, b                                        ; $72af: $78
	add  [hl]                                        ; $72b0: $86
	ld   sp, $2511                                   ; $72b1: $31 $11 $25
	cp   a                                           ; $72b4: $bf
	db   $ed                                         ; $72b5: $ed
	call c, $99b9                                    ; $72b6: $dc $b9 $99
	adc  c                                           ; $72b9: $89
	sbc  c                                           ; $72ba: $99
	sub  [hl]                                        ; $72bb: $96
	ld   sp, $1411                                   ; $72bc: $31 $11 $14
	xor  a                                           ; $72bf: $af
	cp   $cb                                         ; $72c0: $fe $cb
	xor  c                                           ; $72c2: $a9
	adc  b                                           ; $72c3: $88
	adc  d                                           ; $72c4: $8a
	cp   d                                           ; $72c5: $ba
	sub  l                                           ; $72c6: $95
	ld   b, d                                        ; $72c7: $42
	ld   de, $7d14                                   ; $72c8: $11 $14 $7d
	sbc  $ed                                         ; $72cb: $de $ed
	jp   z, $a899                                    ; $72cd: $ca $99 $a8

	sbc  c                                           ; $72d0: $99
	sbc  b                                           ; $72d1: $98
	ld   h, l                                        ; $72d2: $65
	ld   de, $6a12                                   ; $72d3: $11 $12 $6a
	xor  $fe                                         ; $72d6: $ee $fe
	jp   c, $ab77                                    ; $72d8: $da $77 $ab

	xor  b                                           ; $72db: $a8

Call_0e6_72dc:
	add  a                                           ; $72dc: $87
	ld   h, l                                        ; $72dd: $65
	ld   hl, $5a12                                   ; $72de: $21 $12 $5a
	db   $dd                                         ; $72e1: $dd
	rst  JumpTable                                         ; $72e2: $df
	db   $eb                                         ; $72e3: $eb
	ld   h, l                                        ; $72e4: $65
	adc  d                                           ; $72e5: $8a
	cp   h                                           ; $72e6: $bc
	xor  b                                           ; $72e7: $a8
	ld   h, h                                        ; $72e8: $64
	ld   hl, $5911                                   ; $72e9: $21 $11 $59
	call $ecef                                       ; $72ec: $cd $ef $ec
	add  a                                           ; $72ef: $87
	adc  c                                           ; $72f0: $89
	sbc  d                                           ; $72f1: $9a
	sbc  c                                           ; $72f2: $99
	add  [hl]                                        ; $72f3: $86
	ld   sp, $4611                                   ; $72f4: $31 $11 $46
	cp   l                                           ; $72f7: $bd
	cp   $ec                                         ; $72f8: $fe $ec
	sbc  b                                           ; $72fa: $98
	adc  c                                           ; $72fb: $89
	sbc  d                                           ; $72fc: $9a
	sbc  d                                           ; $72fd: $9a
	sub  a                                           ; $72fe: $97
	ld   b, c                                        ; $72ff: $41
	ld   de, $9e25                                   ; $7300: $11 $25 $9e
	rst  $38                                         ; $7303: $ff
	db   $ec                                         ; $7304: $ec
	sbc  c                                           ; $7305: $99
	adc  d                                           ; $7306: $8a
	xor  d                                           ; $7307: $aa
	adc  b                                           ; $7308: $88
	add  [hl]                                        ; $7309: $86
	ld   d, c                                        ; $730a: $51
	ld   de, $8c35                                   ; $730b: $11 $35 $8c
	sbc  $ee                                         ; $730e: $de $ee
	jp   z, $8878                                    ; $7310: $ca $78 $88

	xor  d                                           ; $7313: $aa
	and  a                                           ; $7314: $a7
	ld   d, d                                        ; $7315: $52
	ld   de, $7b15                                   ; $7316: $11 $15 $7b
	adc  $ff                                         ; $7319: $ce $ff
	ret  c                                           ; $731b: $d8

	ld   a, b                                        ; $731c: $78
	cp   d                                           ; $731d: $ba
	xor  c                                           ; $731e: $a9
	sbc  b                                           ; $731f: $98
	ld   h, h                                        ; $7320: $64
	ld   de, $7a14                                   ; $7321: $11 $14 $7a
	call $dbef                                       ; $7324: $cd $ef $db
	add  a                                           ; $7327: $87
	sbc  d                                           ; $7328: $9a
	sbc  c                                           ; $7329: $99
	adc  c                                           ; $732a: $89
	ld   h, l                                        ; $732b: $65
	ld   hl, $5811                                   ; $732c: $21 $11 $58
	call $ecdf                                       ; $732f: $cd $df $ec
	xor  b                                           ; $7332: $a8
	adc  b                                           ; $7333: $88
	sbc  d                                           ; $7334: $9a
	xor  d                                           ; $7335: $aa
	add  [hl]                                        ; $7336: $86
	ld   hl, $3611                                   ; $7337: $21 $11 $36
	rst  JumpTable                                         ; $733a: $df
	db   $ec                                         ; $733b: $ec
	cp   h                                           ; $733c: $bc
	cp   c                                           ; $733d: $b9
	adc  c                                           ; $733e: $89
	sbc  e                                           ; $733f: $9b
	xor  d                                           ; $7340: $aa
	ld   [hl], l                                     ; $7341: $75
	ld   b, d                                        ; $7342: $42
	ld   de, $ae24                                   ; $7343: $11 $24 $ae
	db   $dd                                         ; $7346: $dd
	call Call_0e6_76cb                               ; $7347: $cd $cb $76
	ld   a, c                                        ; $734a: $79
	cp   h                                           ; $734b: $bc
	and  [hl]                                        ; $734c: $a6
	ld   b, d                                        ; $734d: $42
	ld   de, $ad15                                   ; $734e: $11 $15 $ad
	call c, $cbce                                    ; $7351: $dc $ce $cb
	adc  b                                           ; $7354: $88
	adc  b                                           ; $7355: $88
	cp   d                                           ; $7356: $ba
	sbc  b                                           ; $7357: $98
	ld   h, e                                        ; $7358: $63
	ld   de, $7b13                                   ; $7359: $11 $13 $7b
	call c, $dcde                                    ; $735c: $dc $de $dc
	sub  a                                           ; $735f: $97
	adc  c                                           ; $7360: $89
	sbc  c                                           ; $7361: $99
	sbc  b                                           ; $7362: $98
	add  [hl]                                        ; $7363: $86
	ld   hl, $5911                                   ; $7364: $21 $11 $59
	call z, $ebdf                                    ; $7367: $cc $df $eb
	sub  a                                           ; $736a: $97
	ld   a, c                                        ; $736b: $79
	xor  d                                           ; $736c: $aa
	sbc  c                                           ; $736d: $99
	add  a                                           ; $736e: $87
	ld   b, c                                        ; $736f: $41
	ld   de, $ad25                                   ; $7370: $11 $25 $ad
	xor  $ec                                         ; $7373: $ee $ec
	cp   c                                           ; $7375: $b9
	ld   a, c                                        ; $7376: $79
	xor  e                                           ; $7377: $ab
	xor  c                                           ; $7378: $a9
	add  a                                           ; $7379: $87
	ld   d, d                                        ; $737a: $52
	ld   de, $8d14                                   ; $737b: $11 $14 $8d
	call c, $dade                                    ; $737e: $dc $de $da
	sbc  c                                           ; $7381: $99
	adc  b                                           ; $7382: $88
	sbc  c                                           ; $7383: $99
	xor  b                                           ; $7384: $a8
	ld   [hl], h                                     ; $7385: $74
	ld   de, $6a12                                   ; $7386: $11 $12 $6a
	xor  $fe                                         ; $7389: $ee $fe
	jp   z, $9a86                                    ; $738b: $ca $86 $9a

	cp   d                                           ; $738e: $ba
	sbc  b                                           ; $738f: $98
	ld   h, [hl]                                     ; $7390: $66
	ld   sp, $2611                                   ; $7391: $31 $11 $26
	cp   l                                           ; $7394: $bd
	rst  JumpTable                                         ; $7395: $df
	db   $fc                                         ; $7396: $fc
	and  a                                           ; $7397: $a7
	adc  b                                           ; $7398: $88
	xor  d                                           ; $7399: $aa
	cp   d                                           ; $739a: $ba
	add  [hl]                                        ; $739b: $86
	ld   hl, $4611                                   ; $739c: $21 $11 $46
	cp   l                                           ; $739f: $bd
	call c, $c9ee                                    ; $73a0: $dc $ee $c9
	ld   a, b                                        ; $73a3: $78
	sbc  d                                           ; $73a4: $9a
	sbc  c                                           ; $73a5: $99
	xor  c                                           ; $73a6: $a9
	ld   h, d                                        ; $73a7: $62
	ld   de, $8b13                                   ; $73a8: $11 $13 $8b
	rst  JumpTable                                         ; $73ab: $df
	cp   $b9                                         ; $73ac: $fe $b9
	ld   h, a                                        ; $73ae: $67
	sbc  d                                           ; $73af: $9a
	cp   d                                           ; $73b0: $ba
	sub  a                                           ; $73b1: $97
	ld   d, h                                        ; $73b2: $54
	ld   de, $6913                                   ; $73b3: $11 $13 $69
	adc  $ee                                         ; $73b6: $ce $ee
	jp   z, $9a99                                    ; $73b8: $ca $99 $9a

	xor  d                                           ; $73bb: $aa
	sbc  c                                           ; $73bc: $99
	ld   [hl], l                                     ; $73bd: $75
	ld   hl, $5711                                   ; $73be: $21 $11 $57
	xor  h                                           ; $73c1: $ac
	sbc  $fb                                         ; $73c2: $de $fb
	sub  a                                           ; $73c4: $97
	ld   a, d                                        ; $73c5: $7a
	cp   e                                           ; $73c6: $bb
	xor  d                                           ; $73c7: $aa
	sub  [hl]                                        ; $73c8: $96
	ld   d, c                                        ; $73c9: $51

Call_0e6_73ca:
	ld   de, $8c14                                   ; $73ca: $11 $14 $8c
	rst  $28                                         ; $73cd: $ef
	db   $ec                                         ; $73ce: $ec
	xor  b                                           ; $73cf: $a8
	ld   a, b                                        ; $73d0: $78
	sbc  d                                           ; $73d1: $9a
	cp   d                                           ; $73d2: $ba
	cp   b                                           ; $73d3: $b8
	ld   h, d                                        ; $73d4: $62
	ld   de, $6a13                                   ; $73d5: $11 $13 $6a
	sbc  $ef                                         ; $73d8: $de $ef
	bit  6, [hl]                                     ; $73da: $cb $76
	adc  d                                           ; $73dc: $8a
	res  4, a                                        ; $73dd: $cb $a7
	ld   h, h                                        ; $73df: $64
	ld   de, $6a11                                   ; $73e0: $11 $11 $6a
	cp   l                                           ; $73e3: $bd
	rst  JumpTable                                         ; $73e4: $df
	db   $eb                                         ; $73e5: $eb
	and  a                                           ; $73e6: $a7
	ld   a, b                                        ; $73e7: $78
	sbc  d                                           ; $73e8: $9a
	xor  c                                           ; $73e9: $a9
	add  a                                           ; $73ea: $87
	ld   b, c                                        ; $73eb: $41
	ld   de, $9c15                                   ; $73ec: $11 $15 $9c
	sbc  $fc                                         ; $73ef: $de $fc
	cp   c                                           ; $73f1: $b9
	ld   a, b                                        ; $73f2: $78
	xor  d                                           ; $73f3: $aa
	cp   d                                           ; $73f4: $ba
	sub  a                                           ; $73f5: $97
	ld   [hl], h                                     ; $73f6: $74
	ld   de, $7b12                                   ; $73f7: $11 $12 $7b
	call $dbdf                                       ; $73fa: $cd $df $db
	halt                                             ; $73fd: $76
	adc  e                                           ; $73fe: $8b
	cp   d                                           ; $73ff: $ba
	adc  b                                           ; $7400: $88
	halt                                             ; $7401: $76
	ld   hl, $5911                                   ; $7402: $21 $11 $59
	cp   l                                           ; $7405: $bd
	adc  $eb                                         ; $7406: $ce $eb
	sbc  b                                           ; $7408: $98
	adc  d                                           ; $7409: $8a
	sbc  d                                           ; $740a: $9a
	xor  d                                           ; $740b: $aa
	sbc  b                                           ; $740c: $98
	ld   b, c                                        ; $740d: $41
	ld   de, $8a15                                   ; $740e: $11 $15 $8a
	rst  $28                                         ; $7411: $ef
	cp   $b8                                         ; $7412: $fe $b8
	ld   l, b                                        ; $7414: $68
	xor  e                                           ; $7415: $ab
	cp   e                                           ; $7416: $bb
	sub  a                                           ; $7417: $97
	ld   d, d                                        ; $7418: $52
	ld   de, $7a13                                   ; $7419: $11 $13 $7a
	adc  $ff                                         ; $741c: $ce $ff
	jp   z, $9a76                                    ; $741e: $ca $76 $9a

	xor  d                                           ; $7421: $aa
	sbc  b                                           ; $7422: $98
	add  [hl]                                        ; $7423: $86
	ld   sp, $4711                                   ; $7424: $31 $11 $47
	xor  e                                           ; $7427: $ab
	sbc  $ed                                         ; $7428: $de $ed
	and  a                                           ; $742a: $a7
	ld   a, b                                        ; $742b: $78
	xor  e                                           ; $742c: $ab
	cp   d                                           ; $742d: $ba
	add  a                                           ; $742e: $87
	ld   b, c                                        ; $742f: $41
	ld   de, $9d14                                   ; $7430: $11 $14 $9d
	xor  $ed                                         ; $7433: $ee $ed
	cp   b                                           ; $7435: $b8
	ld   a, b                                        ; $7436: $78
	xor  d                                           ; $7437: $aa
	sbc  c                                           ; $7438: $99
	xor  b                                           ; $7439: $a8
	ld   [hl], l                                     ; $743a: $75
	ld   de, $5812                                   ; $743b: $11 $12 $58
	cp   h                                           ; $743e: $bc
	sbc  $eb                                         ; $743f: $de $eb
	sub  a                                           ; $7441: $97
	xor  e                                           ; $7442: $ab
	cp   e                                           ; $7443: $bb
	xor  d                                           ; $7444: $aa
	halt                                             ; $7445: $76
	ld   b, c                                        ; $7446: $41
	ld   de, $9b25                                   ; $7447: $11 $25 $9b
	call z, $c9fe                                    ; $744a: $cc $fe $c9
	ld   [hl], a                                     ; $744d: $77
	adc  d                                           ; $744e: $8a
	xor  d                                           ; $744f: $aa
	sbc  c                                           ; $7450: $99
	ld   [hl], h                                     ; $7451: $74
	ld   de, $6913                                   ; $7452: $11 $13 $69
	cp   h                                           ; $7455: $bc
	call $98db                                       ; $7456: $cd $db $98
	adc  d                                           ; $7459: $8a
	xor  e                                           ; $745a: $ab
	xor  c                                           ; $745b: $a9
	halt                                             ; $745c: $76
	ld   sp, $2611                                   ; $745d: $31 $11 $26
	sbc  h                                           ; $7460: $9c
	rst  JumpTable                                         ; $7461: $df
	db   $fd                                         ; $7462: $fd
	xor  b                                           ; $7463: $a8
	adc  b                                           ; $7464: $88
	sbc  d                                           ; $7465: $9a
	xor  c                                           ; $7466: $a9
	sbc  b                                           ; $7467: $98
	ld   h, e                                        ; $7468: $63
	ld   de, $7a14                                   ; $7469: $11 $14 $7a
	call z, $cbed                                    ; $746c: $cc $ed $cb
	sbc  b                                           ; $746f: $98
	adc  c                                           ; $7470: $89
	xor  e                                           ; $7471: $ab
	xor  d                                           ; $7472: $aa
	add  l                                           ; $7473: $85
	ld   hl, $3711                                   ; $7474: $21 $11 $37
	cp   l                                           ; $7477: $bd
	xor  $cb                                         ; $7478: $ee $cb
	xor  b                                           ; $747a: $a8
	sbc  d                                           ; $747b: $9a
	sbc  c                                           ; $747c: $99
	sbc  c                                           ; $747d: $99
	sub  a                                           ; $747e: $97
	ld   h, d                                        ; $747f: $62
	ld   de, $8a14                                   ; $7480: $11 $14 $8a
	cp   l                                           ; $7483: $bd
	db   $ed                                         ; $7484: $ed
	db   $db                                         ; $7485: $db
	sbc  b                                           ; $7486: $98
	adc  c                                           ; $7487: $89
	sbc  d                                           ; $7488: $9a
	sbc  c                                           ; $7489: $99
	ld   [hl], l                                     ; $748a: $75
	ld   de, $5712                                   ; $748b: $11 $12 $57
	sbc  e                                           ; $748e: $9b
	rst  JumpTable                                         ; $748f: $df
	db   $eb                                         ; $7490: $eb
	add  a                                           ; $7491: $87
	ld   a, d                                        ; $7492: $7a
	sbc  e                                           ; $7493: $9b
	sbc  c                                           ; $7494: $99
	add  a                                           ; $7495: $87
	ld   d, c                                        ; $7496: $51
	ld   de, $7b35                                   ; $7497: $11 $35 $7b
	call $b9ee                                       ; $749a: $cd $ee $b9
	adc  c                                           ; $749d: $89
	sbc  b                                           ; $749e: $98
	sbc  d                                           ; $749f: $9a
	xor  c                                           ; $74a0: $a9
	ld   [hl], h                                     ; $74a1: $74
	ld   de, $5712                                   ; $74a2: $11 $12 $57
	sbc  e                                           ; $74a5: $9b
	rst  $28                                         ; $74a6: $ef
	db   $eb                                         ; $74a7: $eb
	sub  a                                           ; $74a8: $97
	sbc  d                                           ; $74a9: $9a
	cp   e                                           ; $74aa: $bb
	xor  c                                           ; $74ab: $a9
	add  [hl]                                        ; $74ac: $86
	ld   b, c                                        ; $74ad: $41
	ld   de, $8b26                                   ; $74ae: $11 $26 $8b
	call $c9fd                                       ; $74b1: $cd $fd $c9
	adc  b                                           ; $74b4: $88
	sbc  d                                           ; $74b5: $9a
	xor  d                                           ; $74b6: $aa
	sbc  b                                           ; $74b7: $98
	ld   h, h                                        ; $74b8: $64
	ld   de, $6812                                   ; $74b9: $11 $12 $68
	cp   h                                           ; $74bc: $bc
	xor  $ca                                         ; $74bd: $ee $ca
	adc  c                                           ; $74bf: $89
	xor  d                                           ; $74c0: $aa
	xor  c                                           ; $74c1: $a9
	sbc  c                                           ; $74c2: $99
	ld   [hl], a                                     ; $74c3: $77
	ld   d, c                                        ; $74c4: $51
	ld   de, $8936                                   ; $74c5: $11 $36 $89
	cp   l                                           ; $74c8: $bd
	db   $ed                                         ; $74c9: $ed
	jp   z, $a989                                    ; $74ca: $ca $89 $a9

	adc  d                                           ; $74cd: $8a
	xor  c                                           ; $74ce: $a9
	add  h                                           ; $74cf: $84
	ld   de, $6913                                   ; $74d0: $11 $13 $69
	xor  e                                           ; $74d3: $ab
	sbc  $fb                                         ; $74d4: $de $fb
	adc  b                                           ; $74d6: $88
	sbc  d                                           ; $74d7: $9a
	xor  c                                           ; $74d8: $a9
	sbc  c                                           ; $74d9: $99
	sbc  b                                           ; $74da: $98
	ld   b, c                                        ; $74db: $41
	ld   de, $8846                                   ; $74dc: $11 $46 $88
	xor  l                                           ; $74df: $ad
	rst  $38                                         ; $74e0: $ff
	ret  z                                           ; $74e1: $c8

	ld   l, c                                        ; $74e2: $69
	cp   d                                           ; $74e3: $ba
	sbc  b                                           ; $74e4: $98
	adc  b                                           ; $74e5: $88
	sub  [hl]                                        ; $74e6: $96
	ld   de, $7813                                   ; $74e7: $11 $13 $78
	sbc  e                                           ; $74ea: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74eb: $cf
	db   $eb                                         ; $74ec: $eb
	add  a                                           ; $74ed: $87
	adc  c                                           ; $74ee: $89
	xor  c                                           ; $74ef: $a9
	xor  d                                           ; $74f0: $aa
	sub  a                                           ; $74f1: $97
	ld   b, c                                        ; $74f2: $41
	ld   de, $7846                                   ; $74f3: $11 $46 $78
	xor  l                                           ; $74f6: $ad
	cp   $ca                                         ; $74f7: $fe $ca
	adc  c                                           ; $74f9: $89
	sbc  b                                           ; $74fa: $98
	sbc  e                                           ; $74fb: $9b
	cp   d                                           ; $74fc: $ba
	add  h                                           ; $74fd: $84
	ld   de, $6913                                   ; $74fe: $11 $13 $69
	xor  d                                           ; $7501: $aa
	adc  $db                                         ; $7502: $ce $db
	sbc  c                                           ; $7504: $99
	sbc  d                                           ; $7505: $9a
	xor  c                                           ; $7506: $a9
	adc  c                                           ; $7507: $89
	adc  c                                           ; $7508: $89
	ld   [hl], e                                     ; $7509: $73
	ld   de, $8a14                                   ; $750a: $11 $14 $8a
	xor  e                                           ; $750d: $ab
	rst  JumpTable                                         ; $750e: $df
	db   $eb                                         ; $750f: $eb
	ld   [hl], a                                     ; $7510: $77
	xor  d                                           ; $7511: $aa
	cp   c                                           ; $7512: $b9
	adc  b                                           ; $7513: $88
	add  a                                           ; $7514: $87
	ld   sp, $4712                                   ; $7515: $31 $12 $47
	adc  c                                           ; $7518: $89
	cp   [hl]                                        ; $7519: $be
	db   $fd                                         ; $751a: $fd
	and  a                                           ; $751b: $a7
	adc  d                                           ; $751c: $8a
	xor  d                                           ; $751d: $aa
	sbc  d                                           ; $751e: $9a
	sbc  c                                           ; $751f: $99
	ld   [hl], e                                     ; $7520: $73
	ld   de, $7814                                   ; $7521: $11 $14 $78
	adc  e                                           ; $7524: $8b
	rst  JumpTable                                         ; $7525: $df
	db   $eb                                         ; $7526: $eb
	sbc  c                                           ; $7527: $99
	xor  d                                           ; $7528: $aa
	sbc  c                                           ; $7529: $99
	sbc  c                                           ; $752a: $99
	xor  b                                           ; $752b: $a8
	ld   h, d                                        ; $752c: $62
	ld   de, $7925                                   ; $752d: $11 $25 $79
	xor  e                                           ; $7530: $ab
	db   $dd                                         ; $7531: $dd
	db   $db                                         ; $7532: $db
	sbc  c                                           ; $7533: $99
	xor  d                                           ; $7534: $aa
	xor  c                                           ; $7535: $a9
	xor  c                                           ; $7536: $a9
	add  [hl]                                        ; $7537: $86
	ld   sp, $3611                                   ; $7538: $31 $11 $36
	xor  e                                           ; $753b: $ab
	call z, $aaeb                                    ; $753c: $cc $eb $aa
	sbc  d                                           ; $753f: $9a
	xor  c                                           ; $7540: $a9
	sbc  c                                           ; $7541: $99
	sbc  b                                           ; $7542: $98
	ld   [hl], e                                     ; $7543: $73
	ld   de, $5723                                   ; $7544: $11 $23 $57
	sbc  e                                           ; $7547: $9b
	xor  $db                                         ; $7548: $ee $db
	sbc  b                                           ; $754a: $98
	sbc  e                                           ; $754b: $9b
	xor  b                                           ; $754c: $a8
	sbc  c                                           ; $754d: $99
	sbc  b                                           ; $754e: $98
	ld   d, c                                        ; $754f: $51
	ld   de, $7935                                   ; $7550: $11 $35 $79
	sbc  h                                           ; $7553: $9c
	rst  $28                                         ; $7554: $ef
	jp   c, $ab89                                    ; $7555: $da $89 $ab

	xor  b                                           ; $7558: $a8
	sbc  d                                           ; $7559: $9a
	and  a                                           ; $755a: $a7
	ld   sp, $4711                                   ; $755b: $31 $11 $47
	adc  c                                           ; $755e: $89
	cp   [hl]                                        ; $755f: $be
	cp   $a7                                         ; $7560: $fe $a7
	ld   a, d                                        ; $7562: $7a
	cp   e                                           ; $7563: $bb
	sbc  c                                           ; $7564: $99
	sbc  c                                           ; $7565: $99
	sub  l                                           ; $7566: $95
	ld   de, $6813                                   ; $7567: $11 $13 $68
	adc  c                                           ; $756a: $89
	xor  l                                           ; $756b: $ad
	db   $ed                                         ; $756c: $ed
	xor  c                                           ; $756d: $a9
	adc  d                                           ; $756e: $8a
	cp   e                                           ; $756f: $bb
	adc  b                                           ; $7570: $88
	adc  c                                           ; $7571: $89
	ld   [hl], e                                     ; $7572: $73
	ld   de, $7913                                   ; $7573: $11 $13 $79
	xor  d                                           ; $7576: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7577: $cf
	db   $ec                                         ; $7578: $ec
	add  a                                           ; $7579: $87
	adc  d                                           ; $757a: $8a
	cp   c                                           ; $757b: $b9
	sbc  b                                           ; $757c: $98
	sbc  b                                           ; $757d: $98
	ld   h, d                                        ; $757e: $62
	ld   de, $7825                                   ; $757f: $11 $25 $78
	sbc  e                                           ; $7582: $9b
	sbc  $cb                                         ; $7583: $de $cb
	sbc  d                                           ; $7585: $9a
	cp   e                                           ; $7586: $bb
	xor  b                                           ; $7587: $a8
	adc  d                                           ; $7588: $8a
	and  a                                           ; $7589: $a7
	ld   sp, $4611                                   ; $758a: $31 $11 $46
	ld   [hl], a                                     ; $758d: $77
	xor  l                                           ; $758e: $ad
	rst  $28                                         ; $758f: $ef
	ret                                              ; $7590: $c9


	ld   a, c                                        ; $7591: $79
	cp   e                                           ; $7592: $bb
	xor  c                                           ; $7593: $a9
	sbc  c                                           ; $7594: $99
	and  a                                           ; $7595: $a7
	ld   sp, $4611                                   ; $7596: $31 $11 $46
	ld   a, b                                        ; $7599: $78
	xor  l                                           ; $759a: $ad
	cp   $b8                                         ; $759b: $fe $b8
	adc  e                                           ; $759d: $8b
	cp   e                                           ; $759e: $bb
	adc  b                                           ; $759f: $88
	sbc  d                                           ; $75a0: $9a
	sub  l                                           ; $75a1: $95
	ld   hl, $5613                                   ; $75a2: $21 $13 $56
	ld   h, a                                        ; $75a5: $67
	cp   a                                           ; $75a6: $bf
	db   $fd                                         ; $75a7: $fd
	xor  b                                           ; $75a8: $a8

Jump_0e6_75a9:
	sbc  d                                           ; $75a9: $9a
	cp   d                                           ; $75aa: $ba
	adc  c                                           ; $75ab: $89
	sbc  d                                           ; $75ac: $9a
	sub  l                                           ; $75ad: $95
	ld   hl, $4612                                   ; $75ae: $21 $12 $46
	ld   a, c                                        ; $75b1: $79
	call $b9ec                                       ; $75b2: $cd $ec $b9
	sbc  d                                           ; $75b5: $9a
	xor  d                                           ; $75b6: $aa
	adc  c                                           ; $75b7: $89
	xor  d                                           ; $75b8: $aa
	sub  l                                           ; $75b9: $95
	ld   hl, $5712                                   ; $75ba: $21 $12 $57
	adc  b                                           ; $75bd: $88
	xor  l                                           ; $75be: $ad
	db   $ed                                         ; $75bf: $ed
	xor  d                                           ; $75c0: $aa
	sbc  e                                           ; $75c1: $9b
	xor  e                                           ; $75c2: $ab
	adc  b                                           ; $75c3: $88
	adc  d                                           ; $75c4: $8a
	sub  a                                           ; $75c5: $97
	ld   sp, $4611                                   ; $75c6: $31 $11 $46
	ld   [hl], a                                     ; $75c9: $77

Call_0e6_75ca:
	xor  [hl]                                        ; $75ca: $ae
	cp   $b9                                         ; $75cb: $fe $b9
	ld   a, d                                        ; $75cd: $7a
	cp   e                                           ; $75ce: $bb
	sbc  b                                           ; $75cf: $98
	adc  c                                           ; $75d0: $89
	and  a                                           ; $75d1: $a7
	ld   sp, $5512                                   ; $75d2: $31 $12 $55
	ld   h, [hl]                                     ; $75d5: $66
	sbc  [hl]                                        ; $75d6: $9e
	rst  $38                                         ; $75d7: $ff
	ret  z                                           ; $75d8: $c8

	ld   a, d                                        ; $75d9: $7a

Call_0e6_75da:
	cp   e                                           ; $75da: $bb
	sbc  b                                           ; $75db: $98
	sbc  d                                           ; $75dc: $9a
	cp   b                                           ; $75dd: $b8
	ld   sp, $3511                                   ; $75de: $31 $11 $35
	ld   [hl], a                                     ; $75e1: $77
	adc  e                                           ; $75e2: $8b
	rst  $38                                         ; $75e3: $ff
	jp   z, $9a99                                    ; $75e4: $ca $99 $9a

	sbc  c                                           ; $75e7: $99
	adc  c                                           ; $75e8: $89
	xor  b                                           ; $75e9: $a8
	ld   d, d                                        ; $75ea: $52
	ld   de, $6635                                   ; $75eb: $11 $35 $66
	adc  e                                           ; $75ee: $8b
	rst  JumpTable                                         ; $75ef: $df
	db   $db                                         ; $75f0: $db
	sbc  c                                           ; $75f1: $99
	sbc  e                                           ; $75f2: $9b
	xor  c                                           ; $75f3: $a9
	adc  c                                           ; $75f4: $89
	cp   d                                           ; $75f5: $ba
	ld   [hl], e                                     ; $75f6: $73
	ld   de, $6714                                   ; $75f7: $11 $14 $67
	adc  d                                           ; $75fa: $8a
	adc  $eb                                         ; $75fb: $ce $eb
	sbc  b                                           ; $75fd: $98
	xor  e                                           ; $75fe: $ab
	cp   c                                           ; $75ff: $b9
	adc  b                                           ; $7600: $88
	adc  d                                           ; $7601: $8a
	add  [hl]                                        ; $7602: $86
	ld   hl, $5613                                   ; $7603: $21 $13 $56
	ld   a, b                                        ; $7606: $78
	xor  h                                           ; $7607: $ac
	db   $ed                                         ; $7608: $ed
	jp   z, $aa9a                                    ; $7609: $ca $9a $aa

	adc  b                                           ; $760c: $88
	sbc  d                                           ; $760d: $9a
	add  a                                           ; $760e: $87
	ld   b, d                                        ; $760f: $42
	ld   de, $7735                                   ; $7610: $11 $35 $77
	sbc  e                                           ; $7613: $9b
	xor  $db                                         ; $7614: $ee $db
	sbc  b                                           ; $7616: $98
	sbc  e                                           ; $7617: $9b
	cp   c                                           ; $7618: $b9
	adc  c                                           ; $7619: $89
	xor  c                                           ; $761a: $a9
	ld   [hl], h                                     ; $761b: $74
	ld   de, $6624                                   ; $761c: $11 $24 $66
	ld   l, b                                        ; $761f: $68
	cp   [hl]                                        ; $7620: $be
	db   $fc                                         ; $7621: $fc
	xor  c                                           ; $7622: $a9
	xor  d                                           ; $7623: $aa

Call_0e6_7624:
	xor  d                                           ; $7624: $aa
	adc  b                                           ; $7625: $88
	sbc  d                                           ; $7626: $9a
	sub  [hl]                                        ; $7627: $96
	ld   b, d                                        ; $7628: $42
	inc  hl                                          ; $7629: $23
	ld   b, l                                        ; $762a: $45
	ld   h, [hl]                                     ; $762b: $66
	sbc  h                                           ; $762c: $9c
	sbc  $db                                         ; $762d: $de $db
	sbc  c                                           ; $762f: $99
	sbc  c                                           ; $7630: $99
	sbc  c                                           ; $7631: $99
	sbc  c                                           ; $7632: $99
	sbc  c                                           ; $7633: $99
	ld   h, h                                        ; $7634: $64
	ld   hl, $5724                                   ; $7635: $21 $24 $57
	adc  d                                           ; $7638: $8a
	cp   l                                           ; $7639: $bd
	db   $ec                                         ; $763a: $ec
	cp   c                                           ; $763b: $b9
	sbc  c                                           ; $763c: $99
	sbc  c                                           ; $763d: $99
	sbc  c                                           ; $763e: $99
	adc  c                                           ; $763f: $89
	sub  a                                           ; $7640: $97
	ld   d, d                                        ; $7641: $52
	ld   de, $7835                                   ; $7642: $11 $35 $78
	adc  d                                           ; $7645: $8a
	adc  $cb                                         ; $7646: $ce $cb
	sbc  b                                           ; $7648: $98
	sbc  c                                           ; $7649: $99
	xor  c                                           ; $764a: $a9
	sbc  c                                           ; $764b: $99
	sbc  c                                           ; $764c: $99
	ld   [hl], l                                     ; $764d: $75
	ld   hl, $5613                                   ; $764e: $21 $13 $56
	ld   a, c                                        ; $7651: $79
	cp   l                                           ; $7652: $bd
	db   $ec                                         ; $7653: $ec
	cp   c                                           ; $7654: $b9
	sbc  b                                           ; $7655: $98
	sbc  c                                           ; $7656: $99
	adc  b                                           ; $7657: $88
	sbc  d                                           ; $7658: $9a
	xor  b                                           ; $7659: $a8
	ld   d, e                                        ; $765a: $53
	ld   [hl+], a                                    ; $765b: $22
	ld   b, l                                        ; $765c: $45
	ld   h, [hl]                                     ; $765d: $66
	ld   a, c                                        ; $765e: $79
	cp   [hl]                                        ; $765f: $be
	call c, $98a9                                    ; $7660: $dc $a9 $98
	sbc  c                                           ; $7663: $99
	sbc  c                                           ; $7664: $99
	xor  c                                           ; $7665: $a9
	add  [hl]                                        ; $7666: $86
	ld   b, d                                        ; $7667: $42
	inc  hl                                          ; $7668: $23
	ld   d, l                                        ; $7669: $55
	ld   h, [hl]                                     ; $766a: $66
	adc  e                                           ; $766b: $8b
	db   $dd                                         ; $766c: $dd
	cp   e                                           ; $766d: $bb
	xor  d                                           ; $766e: $aa
	xor  d                                           ; $766f: $aa
	adc  b                                           ; $7670: $88
	adc  d                                           ; $7671: $8a
	xor  c                                           ; $7672: $a9
	ld   [hl], h                                     ; $7673: $74
	inc  sp                                          ; $7674: $33
	inc  [hl]                                        ; $7675: $34
	ld   d, [hl]                                     ; $7676: $56
	ld   a, c                                        ; $7677: $79
	xor  e                                           ; $7678: $ab
	res  7, e                                        ; $7679: $cb $bb
	sbc  d                                           ; $767b: $9a
	sbc  d                                           ; $767c: $9a
	sbc  b                                           ; $767d: $98
	adc  c                                           ; $767e: $89
	sbc  b                                           ; $767f: $98
	ld   [hl], l                                     ; $7680: $75
	inc  sp                                          ; $7681: $33
	inc  [hl]                                        ; $7682: $34
	ld   d, l                                        ; $7683: $55
	ld   d, a                                        ; $7684: $57
	xor  e                                           ; $7685: $ab
	db   $dd                                         ; $7686: $dd
	jp   z, $9aa9                                    ; $7687: $ca $a9 $9a

	adc  c                                           ; $768a: $89
	sbc  c                                           ; $768b: $99
	xor  c                                           ; $768c: $a9
	ld   h, h                                        ; $768d: $64
	inc  sp                                          ; $768e: $33
	ld   b, h                                        ; $768f: $44
	ld   b, l                                        ; $7690: $45
	ld   l, b                                        ; $7691: $68
	sbc  h                                           ; $7692: $9c
	call z, $aaca                                    ; $7693: $cc $ca $aa
	xor  c                                           ; $7696: $a9
	sbc  c                                           ; $7697: $99
	sbc  c                                           ; $7698: $99
	sbc  b                                           ; $7699: $98
	ld   [hl], l                                     ; $769a: $75
	ld   b, e                                        ; $769b: $43
	inc  sp                                          ; $769c: $33
	ld   d, [hl]                                     ; $769d: $56
	ld   [hl], a                                     ; $769e: $77
	sbc  d                                           ; $769f: $9a
	call z, $a9bb                                    ; $76a0: $cc $bb $a9
	sbc  d                                           ; $76a3: $9a
	sbc  c                                           ; $76a4: $99
	adc  c                                           ; $76a5: $89
	sbc  b                                           ; $76a6: $98
	ld   [hl], l                                     ; $76a7: $75

Jump_0e6_76a8:
	ld   b, e                                        ; $76a8: $43
	ld   b, h                                        ; $76a9: $44
	ld   b, l                                        ; $76aa: $45
	ld   h, a                                        ; $76ab: $67
	sbc  e                                           ; $76ac: $9b
	cp   e                                           ; $76ad: $bb
	cp   e                                           ; $76ae: $bb
	xor  d                                           ; $76af: $aa
	sbc  c                                           ; $76b0: $99
	sbc  c                                           ; $76b1: $99
	adc  c                                           ; $76b2: $89
	sbc  b                                           ; $76b3: $98
	halt                                             ; $76b4: $76
	ld   d, h                                        ; $76b5: $54
	inc  sp                                          ; $76b6: $33
	ld   b, l                                        ; $76b7: $45
	ld   h, a                                        ; $76b8: $67
	sbc  d                                           ; $76b9: $9a
	xor  e                                           ; $76ba: $ab
	call z, $99a9                                    ; $76bb: $cc $a9 $99
	sbc  d                                           ; $76be: $9a
	xor  b                                           ; $76bf: $a8
	sbc  c                                           ; $76c0: $99
	add  a                                           ; $76c1: $87
	ld   d, h                                        ; $76c2: $54
	inc  sp                                          ; $76c3: $33
	ld   b, l                                        ; $76c4: $45
	ld   h, a                                        ; $76c5: $67
	adc  c                                           ; $76c6: $89
	xor  h                                           ; $76c7: $ac
	cp   e                                           ; $76c8: $bb
	xor  c                                           ; $76c9: $a9
	xor  c                                           ; $76ca: $a9

Call_0e6_76cb:
	xor  c                                           ; $76cb: $a9
	sbc  c                                           ; $76cc: $99
	sbc  c                                           ; $76cd: $99
	add  a                                           ; $76ce: $87
	ld   h, h                                        ; $76cf: $64
	ld   b, h                                        ; $76d0: $44
	ld   b, h                                        ; $76d1: $44
	ld   d, [hl]                                     ; $76d2: $56
	ld   a, c                                        ; $76d3: $79
	sbc  d                                           ; $76d4: $9a
	cp   e                                           ; $76d5: $bb
	xor  d                                           ; $76d6: $aa
	xor  c                                           ; $76d7: $a9
	sbc  d                                           ; $76d8: $9a
	xor  c                                           ; $76d9: $a9
	sbc  b                                           ; $76da: $98
	sbc  b                                           ; $76db: $98
	ld   [hl], l                                     ; $76dc: $75
	ld   d, h                                        ; $76dd: $54
	ld   b, h                                        ; $76de: $44
	ld   b, l                                        ; $76df: $45
	ld   l, b                                        ; $76e0: $68
	adc  c                                           ; $76e1: $89
	sbc  d                                           ; $76e2: $9a
	cp   e                                           ; $76e3: $bb
	cp   d                                           ; $76e4: $ba
	xor  d                                           ; $76e5: $aa
	sbc  d                                           ; $76e6: $9a
	sbc  b                                           ; $76e7: $98
	sbc  c                                           ; $76e8: $99
	add  a                                           ; $76e9: $87
	ld   h, l                                        ; $76ea: $65
	ld   b, h                                        ; $76eb: $44
	ld   b, l                                        ; $76ec: $45
	ld   h, a                                        ; $76ed: $67
	adc  b                                           ; $76ee: $88
	xor  d                                           ; $76ef: $aa
	xor  d                                           ; $76f0: $aa
	xor  d                                           ; $76f1: $aa
	xor  c                                           ; $76f2: $a9
	sbc  d                                           ; $76f3: $9a
	sbc  c                                           ; $76f4: $99
	adc  c                                           ; $76f5: $89
	adc  b                                           ; $76f6: $88
	halt                                             ; $76f7: $76
	ld   d, l                                        ; $76f8: $55
	ld   d, l                                        ; $76f9: $55
	ld   d, l                                        ; $76fa: $55
	ld   h, a                                        ; $76fb: $67
	sbc  c                                           ; $76fc: $99
	sbc  d                                           ; $76fd: $9a
	cp   e                                           ; $76fe: $bb
	cp   d                                           ; $76ff: $ba
	sbc  d                                           ; $7700: $9a
	xor  c                                           ; $7701: $a9
	adc  c                                           ; $7702: $89
	adc  b                                           ; $7703: $88
	add  a                                           ; $7704: $87
	ld   h, [hl]                                     ; $7705: $66
	ld   d, l                                        ; $7706: $55
	ld   d, l                                        ; $7707: $55
	ld   d, [hl]                                     ; $7708: $56
	ld   a, b                                        ; $7709: $78
	adc  c                                           ; $770a: $89
	xor  d                                           ; $770b: $aa
	cp   d                                           ; $770c: $ba
	cp   d                                           ; $770d: $ba
	sbc  b                                           ; $770e: $98
	adc  b                                           ; $770f: $88
	adc  c                                           ; $7710: $89
	sbc  b                                           ; $7711: $98
	add  a                                           ; $7712: $87
	ld   h, [hl]                                     ; $7713: $66
	ld   d, l                                        ; $7714: $55
	ld   d, l                                        ; $7715: $55
	ld   h, a                                        ; $7716: $67
	adc  b                                           ; $7717: $88
	sbc  d                                           ; $7718: $9a
	xor  e                                           ; $7719: $ab
	cp   d                                           ; $771a: $ba
	xor  c                                           ; $771b: $a9
	adc  c                                           ; $771c: $89
	sbc  b                                           ; $771d: $98
	adc  b                                           ; $771e: $88
	adc  b                                           ; $771f: $88
	ld   [hl], a                                     ; $7720: $77
	ld   h, [hl]                                     ; $7721: $66
	ld   d, l                                        ; $7722: $55
	ld   d, [hl]                                     ; $7723: $56
	ld   l, b                                        ; $7724: $68
	adc  b                                           ; $7725: $88
	sbc  c                                           ; $7726: $99
	xor  d                                           ; $7727: $aa
	xor  d                                           ; $7728: $aa
	sbc  b                                           ; $7729: $98
	sbc  c                                           ; $772a: $99
	sbc  b                                           ; $772b: $98
	adc  b                                           ; $772c: $88
	adc  b                                           ; $772d: $88
	halt                                             ; $772e: $76
	ld   h, l                                        ; $772f: $65
	ld   h, [hl]                                     ; $7730: $66
	ld   h, [hl]                                     ; $7731: $66
	ld   a, b                                        ; $7732: $78
	sbc  c                                           ; $7733: $99
	sbc  b                                           ; $7734: $98
	sbc  d                                           ; $7735: $9a
	xor  d                                           ; $7736: $aa
	sbc  b                                           ; $7737: $98
	adc  c                                           ; $7738: $89
	sbc  c                                           ; $7739: $99
	adc  b                                           ; $773a: $88
	adc  b                                           ; $773b: $88
	add  a                                           ; $773c: $87
	ld   h, [hl]                                     ; $773d: $66
	ld   h, [hl]                                     ; $773e: $66
	ld   h, a                                        ; $773f: $67
	ld   a, b                                        ; $7740: $78
	sbc  b                                           ; $7741: $98
	adc  b                                           ; $7742: $88
	adc  c                                           ; $7743: $89
	sbc  c                                           ; $7744: $99
	adc  b                                           ; $7745: $88
	sbc  c                                           ; $7746: $99
	adc  c                                           ; $7747: $89
	sbc  b                                           ; $7748: $98
	adc  b                                           ; $7749: $88
	ld   [hl], a                                     ; $774a: $77
	ld   h, [hl]                                     ; $774b: $66
	ld   [hl], a                                     ; $774c: $77
	ld   [hl], a                                     ; $774d: $77
	ld   a, b                                        ; $774e: $78
	sbc  c                                           ; $774f: $99
	adc  c                                           ; $7750: $89
	sbc  b                                           ; $7751: $98
	sbc  c                                           ; $7752: $99
	adc  b                                           ; $7753: $88
	sbc  c                                           ; $7754: $99
	adc  c                                           ; $7755: $89
	adc  b                                           ; $7756: $88
	add  a                                           ; $7757: $87
	add  a                                           ; $7758: $87
	ld   [hl], a                                     ; $7759: $77
	ld   [hl], a                                     ; $775a: $77
	ld   [hl], a                                     ; $775b: $77
	ld   a, b                                        ; $775c: $78
	adc  b                                           ; $775d: $88
	sbc  b                                           ; $775e: $98
	sbc  c                                           ; $775f: $99
	adc  b                                           ; $7760: $88
	adc  c                                           ; $7761: $89
	sbc  b                                           ; $7762: $98
	sbc  c                                           ; $7763: $99
	adc  b                                           ; $7764: $88
	adc  b                                           ; $7765: $88
	add  a                                           ; $7766: $87
	ld   [hl], a                                     ; $7767: $77
	ld   [hl], a                                     ; $7768: $77
	ld   [hl], a                                     ; $7769: $77
	ld   a, b                                        ; $776a: $78
	adc  b                                           ; $776b: $88
	adc  b                                           ; $776c: $88
	adc  c                                           ; $776d: $89
	sbc  b                                           ; $776e: $98
	adc  c                                           ; $776f: $89
	sbc  c                                           ; $7770: $99
	sbc  c                                           ; $7771: $99
	adc  b                                           ; $7772: $88
	adc  b                                           ; $7773: $88
	adc  b                                           ; $7774: $88
	ld   [hl], a                                     ; $7775: $77
	ld   [hl], a                                     ; $7776: $77
	ld   a, b                                        ; $7777: $78
	ld   a, b                                        ; $7778: $78
	adc  b                                           ; $7779: $88
	adc  b                                           ; $777a: $88
	adc  b                                           ; $777b: $88
	adc  c                                           ; $777c: $89
	sbc  c                                           ; $777d: $99
	adc  b                                           ; $777e: $88
	adc  c                                           ; $777f: $89
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

Call_0e6_77a8:
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

Call_0e6_77d9:
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

Call_0e6_77fa:
	adc  b                                           ; $77fa: $88
	adc  b                                           ; $77fb: $88
	adc  b                                           ; $77fc: $88
	adc  b                                           ; $77fd: $88

Call_0e6_77fe:
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

Call_0e6_788b:
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

Call_0e6_7897:
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

Call_0e6_78a7:
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

Call_0e6_78ba:
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
	adc  c                                           ; $78cf: $89
	sbc  b                                           ; $78d0: $98
	adc  b                                           ; $78d1: $88
	adc  b                                           ; $78d2: $88
	adc  b                                           ; $78d3: $88
	adc  b                                           ; $78d4: $88
	adc  b                                           ; $78d5: $88
	adc  b                                           ; $78d6: $88
	adc  b                                           ; $78d7: $88
	adc  b                                           ; $78d8: $88
	adc  b                                           ; $78d9: $88
	adc  c                                           ; $78da: $89
	adc  b                                           ; $78db: $88
	adc  b                                           ; $78dc: $88
	sbc  b                                           ; $78dd: $98
	add  a                                           ; $78de: $87
	ld   a, b                                        ; $78df: $78
	adc  b                                           ; $78e0: $88
	adc  b                                           ; $78e1: $88
	adc  b                                           ; $78e2: $88
	adc  b                                           ; $78e3: $88
	add  a                                           ; $78e4: $87
	ld   a, b                                        ; $78e5: $78
	adc  b                                           ; $78e6: $88
	adc  c                                           ; $78e7: $89
	adc  b                                           ; $78e8: $88
	adc  b                                           ; $78e9: $88
	adc  b                                           ; $78ea: $88
	ld   [hl], a                                     ; $78eb: $77
	adc  c                                           ; $78ec: $89
	sbc  b                                           ; $78ed: $98
	ld   [hl], a                                     ; $78ee: $77
	ld   a, b                                        ; $78ef: $78
	adc  b                                           ; $78f0: $88
	adc  b                                           ; $78f1: $88
	sbc  b                                           ; $78f2: $98
	sbc  c                                           ; $78f3: $99
	add  a                                           ; $78f4: $87
	ld   a, b                                        ; $78f5: $78
	adc  c                                           ; $78f6: $89
	add  a                                           ; $78f7: $87
	ld   a, b                                        ; $78f8: $78
	adc  b                                           ; $78f9: $88
	add  a                                           ; $78fa: $87
	adc  b                                           ; $78fb: $88
	adc  c                                           ; $78fc: $89
	adc  b                                           ; $78fd: $88
	adc  b                                           ; $78fe: $88
	adc  b                                           ; $78ff: $88
	sbc  c                                           ; $7900: $99
	add  a                                           ; $7901: $87
	ld   a, b                                        ; $7902: $78
	adc  b                                           ; $7903: $88
	adc  b                                           ; $7904: $88
	ld   a, b                                        ; $7905: $78
	adc  c                                           ; $7906: $89
	adc  b                                           ; $7907: $88
	adc  c                                           ; $7908: $89
	adc  b                                           ; $7909: $88
	sbc  b                                           ; $790a: $98
	ld   [hl], a                                     ; $790b: $77
	adc  b                                           ; $790c: $88
	adc  b                                           ; $790d: $88
	ld   [hl], a                                     ; $790e: $77
	adc  b                                           ; $790f: $88
	adc  b                                           ; $7910: $88
	ld   [hl], a                                     ; $7911: $77
	ld   a, b                                        ; $7912: $78
	adc  b                                           ; $7913: $88
	add  a                                           ; $7914: $87
	ld   a, b                                        ; $7915: $78
	sbc  d                                           ; $7916: $9a
	adc  b                                           ; $7917: $88
	ld   [hl], a                                     ; $7918: $77
	adc  c                                           ; $7919: $89
	add  a                                           ; $791a: $87
	ld   [hl], a                                     ; $791b: $77
	adc  c                                           ; $791c: $89
	add  a                                           ; $791d: $87
	ld   a, c                                        ; $791e: $79
	sbc  d                                           ; $791f: $9a
	adc  b                                           ; $7920: $88
	ld   [hl], a                                     ; $7921: $77
	sbc  c                                           ; $7922: $99
	sub  a                                           ; $7923: $97
	ld   h, a                                        ; $7924: $67
	adc  b                                           ; $7925: $88
	sub  a                                           ; $7926: $97
	ld   a, b                                        ; $7927: $78
	adc  d                                           ; $7928: $8a
	sbc  c                                           ; $7929: $99
	ld   [hl], a                                     ; $792a: $77
	ld   a, b                                        ; $792b: $78
	sbc  c                                           ; $792c: $99
	ld   [hl], a                                     ; $792d: $77
	ld   a, c                                        ; $792e: $79
	sbc  c                                           ; $792f: $99
	ld   [hl], a                                     ; $7930: $77
	ld   a, b                                        ; $7931: $78
	adc  c                                           ; $7932: $89
	ld   [hl], a                                     ; $7933: $77
	adc  c                                           ; $7934: $89
	sbc  b                                           ; $7935: $98
	adc  b                                           ; $7936: $88
	adc  b                                           ; $7937: $88
	add  a                                           ; $7938: $87
	ld   a, b                                        ; $7939: $78
	adc  b                                           ; $793a: $88
	add  a                                           ; $793b: $87
	adc  b                                           ; $793c: $88
	sbc  c                                           ; $793d: $99
	add  a                                           ; $793e: $87
	adc  c                                           ; $793f: $89
	adc  c                                           ; $7940: $89
	ld   [hl], a                                     ; $7941: $77
	add  a                                           ; $7942: $87
	add  a                                           ; $7943: $87
	ld   [hl], a                                     ; $7944: $77
	adc  c                                           ; $7945: $89
	adc  b                                           ; $7946: $88
	ld   a, b                                        ; $7947: $78
	sbc  d                                           ; $7948: $9a
	sub  a                                           ; $7949: $97
	halt                                             ; $794a: $76
	ld   a, b                                        ; $794b: $78
	adc  b                                           ; $794c: $88
	adc  b                                           ; $794d: $88
	adc  b                                           ; $794e: $88
	sbc  b                                           ; $794f: $98
	ld   a, b                                        ; $7950: $78
	adc  c                                           ; $7951: $89
	adc  b                                           ; $7952: $88
	add  a                                           ; $7953: $87
	add  a                                           ; $7954: $87
	ld   [hl], a                                     ; $7955: $77
	adc  c                                           ; $7956: $89
	adc  b                                           ; $7957: $88
	adc  b                                           ; $7958: $88
	sbc  c                                           ; $7959: $99
	sbc  b                                           ; $795a: $98
	adc  b                                           ; $795b: $88
	adc  b                                           ; $795c: $88
	add  a                                           ; $795d: $87
	add  a                                           ; $795e: $87
	add  a                                           ; $795f: $87
	ld   a, b                                        ; $7960: $78
	adc  c                                           ; $7961: $89
	adc  b                                           ; $7962: $88
	adc  b                                           ; $7963: $88
	sbc  c                                           ; $7964: $99
	adc  b                                           ; $7965: $88
	ld   [hl], a                                     ; $7966: $77
	ld   [hl], a                                     ; $7967: $77
	ld   [hl], a                                     ; $7968: $77
	ld   a, b                                        ; $7969: $78
	sbc  c                                           ; $796a: $99
	sbc  b                                           ; $796b: $98
	adc  b                                           ; $796c: $88
	ld   [hl], a                                     ; $796d: $77
	adc  b                                           ; $796e: $88
	sbc  b                                           ; $796f: $98
	ld   [hl], a                                     ; $7970: $77
	ld   [hl], a                                     ; $7971: $77
	ld   [hl], a                                     ; $7972: $77
	adc  b                                           ; $7973: $88
	adc  c                                           ; $7974: $89
	adc  b                                           ; $7975: $88
	adc  b                                           ; $7976: $88
	sbc  b                                           ; $7977: $98
	add  a                                           ; $7978: $87
	ld   a, b                                        ; $7979: $78
	adc  b                                           ; $797a: $88
	ld   [hl], a                                     ; $797b: $77
	adc  c                                           ; $797c: $89
	xor  b                                           ; $797d: $a8
	add  a                                           ; $797e: $87
	ld   a, c                                        ; $797f: $79
	sbc  d                                           ; $7980: $9a
	add  a                                           ; $7981: $87
	ld   [hl], a                                     ; $7982: $77
	sbc  b                                           ; $7983: $98
	halt                                             ; $7984: $76
	ld   a, b                                        ; $7985: $78
	sbc  d                                           ; $7986: $9a
	sub  a                                           ; $7987: $97
	ld   a, b                                        ; $7988: $78
	sbc  c                                           ; $7989: $99
	xor  b                                           ; $798a: $a8
	ld   [hl], a                                     ; $798b: $77
	ld   a, c                                        ; $798c: $79
	add  a                                           ; $798d: $87
	ld   [hl], a                                     ; $798e: $77
	adc  b                                           ; $798f: $88
	sbc  c                                           ; $7990: $99
	adc  b                                           ; $7991: $88
	ld   [hl], a                                     ; $7992: $77
	adc  c                                           ; $7993: $89
	sbc  c                                           ; $7994: $99
	ld   [hl], a                                     ; $7995: $77
	ld   a, b                                        ; $7996: $78
	adc  b                                           ; $7997: $88
	ld   a, b                                        ; $7998: $78
	adc  c                                           ; $7999: $89
	adc  b                                           ; $799a: $88
	adc  b                                           ; $799b: $88
	adc  b                                           ; $799c: $88
	add  a                                           ; $799d: $87
	ld   a, b                                        ; $799e: $78
	sbc  b                                           ; $799f: $98
	ld   h, a                                        ; $79a0: $67
	adc  c                                           ; $79a1: $89
	xor  c                                           ; $79a2: $a9
	ld   [hl], a                                     ; $79a3: $77
	sbc  c                                           ; $79a4: $99
	sbc  b                                           ; $79a5: $98
	halt                                             ; $79a6: $76
	ld   a, c                                        ; $79a7: $79
	sbc  b                                           ; $79a8: $98
	ld   [hl], a                                     ; $79a9: $77
	adc  b                                           ; $79aa: $88
	sbc  b                                           ; $79ab: $98
	ld   [hl], a                                     ; $79ac: $77
	sbc  c                                           ; $79ad: $99
	sbc  b                                           ; $79ae: $98
	ld   [hl], a                                     ; $79af: $77
	ld   a, c                                        ; $79b0: $79
	ld   a, b                                        ; $79b1: $78
	adc  c                                           ; $79b2: $89
	sbc  b                                           ; $79b3: $98
	add  a                                           ; $79b4: $87
	sbc  c                                           ; $79b5: $99
	adc  c                                           ; $79b6: $89
	adc  c                                           ; $79b7: $89
	adc  b                                           ; $79b8: $88
	add  a                                           ; $79b9: $87
	ld   [hl], a                                     ; $79ba: $77
	adc  c                                           ; $79bb: $89
	adc  c                                           ; $79bc: $89
	adc  b                                           ; $79bd: $88
	ld   a, b                                        ; $79be: $78
	adc  c                                           ; $79bf: $89
	adc  b                                           ; $79c0: $88
	sbc  b                                           ; $79c1: $98
	adc  b                                           ; $79c2: $88
	sub  a                                           ; $79c3: $97
	ld   [hl], a                                     ; $79c4: $77
	sbc  d                                           ; $79c5: $9a
	sbc  b                                           ; $79c6: $98
	ld   a, b                                        ; $79c7: $78
	adc  c                                           ; $79c8: $89
	sbc  b                                           ; $79c9: $98
	add  a                                           ; $79ca: $87
	adc  b                                           ; $79cb: $88
	sbc  b                                           ; $79cc: $98
	ld   h, [hl]                                     ; $79cd: $66
	ld   a, c                                        ; $79ce: $79
	sbc  b                                           ; $79cf: $98
	ld   [hl], a                                     ; $79d0: $77
	sbc  d                                           ; $79d1: $9a
	xor  b                                           ; $79d2: $a8
	ld   [hl], a                                     ; $79d3: $77
	ld   a, b                                        ; $79d4: $78
	ld   a, b                                        ; $79d5: $78
	ld   [hl], a                                     ; $79d6: $77
	ld   a, c                                        ; $79d7: $79
	sbc  c                                           ; $79d8: $99
	sbc  b                                           ; $79d9: $98
	sbc  c                                           ; $79da: $99
	adc  b                                           ; $79db: $88
	ld   [hl], a                                     ; $79dc: $77
	ld   h, a                                        ; $79dd: $67
	ld   a, b                                        ; $79de: $78
	sbc  b                                           ; $79df: $98
	adc  c                                           ; $79e0: $89
	sbc  c                                           ; $79e1: $99
	adc  b                                           ; $79e2: $88
	add  a                                           ; $79e3: $87
	sbc  c                                           ; $79e4: $99
	sub  a                                           ; $79e5: $97
	ld   [hl], a                                     ; $79e6: $77
	ld   a, b                                        ; $79e7: $78
	adc  b                                           ; $79e8: $88
	adc  c                                           ; $79e9: $89
	sbc  c                                           ; $79ea: $99
	xor  c                                           ; $79eb: $a9
	adc  b                                           ; $79ec: $88
	ld   a, b                                        ; $79ed: $78
	ld   [hl], a                                     ; $79ee: $77
	ld   [hl], a                                     ; $79ef: $77
	adc  c                                           ; $79f0: $89
	add  a                                           ; $79f1: $87
	add  a                                           ; $79f2: $87
	adc  c                                           ; $79f3: $89
	adc  b                                           ; $79f4: $88
	adc  c                                           ; $79f5: $89
	adc  b                                           ; $79f6: $88
	halt                                             ; $79f7: $76
	ld   [hl], a                                     ; $79f8: $77
	adc  c                                           ; $79f9: $89
	adc  b                                           ; $79fa: $88
	ld   [hl], a                                     ; $79fb: $77
	ld   a, c                                        ; $79fc: $79
	sbc  d                                           ; $79fd: $9a
	add  a                                           ; $79fe: $87
	ld   [hl], a                                     ; $79ff: $77
	add  a                                           ; $7a00: $87
	halt                                             ; $7a01: $76
	ld   a, b                                        ; $7a02: $78
	sbc  c                                           ; $7a03: $99
	ld   [hl], a                                     ; $7a04: $77
	adc  d                                           ; $7a05: $8a
	xor  c                                           ; $7a06: $a9
	add  a                                           ; $7a07: $87
	ld   [hl], a                                     ; $7a08: $77
	ld   [hl], a                                     ; $7a09: $77
	ld   [hl], a                                     ; $7a0a: $77
	adc  c                                           ; $7a0b: $89
	sbc  b                                           ; $7a0c: $98
	sbc  c                                           ; $7a0d: $99
	adc  c                                           ; $7a0e: $89
	add  a                                           ; $7a0f: $87
	ld   a, b                                        ; $7a10: $78
	sbc  b                                           ; $7a11: $98
	halt                                             ; $7a12: $76
	ld   a, c                                        ; $7a13: $79
	sbc  c                                           ; $7a14: $99
	add  a                                           ; $7a15: $87
	sbc  c                                           ; $7a16: $99
	xor  d                                           ; $7a17: $aa
	add  [hl]                                        ; $7a18: $86
	ld   h, a                                        ; $7a19: $67
	adc  b                                           ; $7a1a: $88
	ld   [hl], a                                     ; $7a1b: $77
	ld   a, b                                        ; $7a1c: $78
	sbc  c                                           ; $7a1d: $99
	sbc  c                                           ; $7a1e: $99
	sbc  c                                           ; $7a1f: $99
	sbc  b                                           ; $7a20: $98
	sub  a                                           ; $7a21: $97
	halt                                             ; $7a22: $76
	ld   l, b                                        ; $7a23: $68
	ld   a, b                                        ; $7a24: $78
	ld   a, c                                        ; $7a25: $79
	adc  b                                           ; $7a26: $88
	adc  b                                           ; $7a27: $88
	sbc  b                                           ; $7a28: $98
	add  a                                           ; $7a29: $87
	ld   a, b                                        ; $7a2a: $78
	ld   [hl], a                                     ; $7a2b: $77
	ld   a, b                                        ; $7a2c: $78
	adc  c                                           ; $7a2d: $89
	add  a                                           ; $7a2e: $87
	adc  b                                           ; $7a2f: $88
	adc  b                                           ; $7a30: $88
	adc  b                                           ; $7a31: $88
	adc  b                                           ; $7a32: $88
	ld   [hl], a                                     ; $7a33: $77
	ld   [hl], a                                     ; $7a34: $77
	ld   a, c                                        ; $7a35: $79
	adc  b                                           ; $7a36: $88
	add  a                                           ; $7a37: $87
	sbc  c                                           ; $7a38: $99
	sbc  c                                           ; $7a39: $99
	add  a                                           ; $7a3a: $87
	ld   a, b                                        ; $7a3b: $78
	ld   [hl], a                                     ; $7a3c: $77
	ld   h, a                                        ; $7a3d: $67
	adc  c                                           ; $7a3e: $89
	and  a                                           ; $7a3f: $a7
	ld   [hl], a                                     ; $7a40: $77
	xor  c                                           ; $7a41: $a9
	adc  c                                           ; $7a42: $89
	ld   a, b                                        ; $7a43: $78
	ld   [hl], a                                     ; $7a44: $77
	add  [hl]                                        ; $7a45: $86
	ld   [hl], a                                     ; $7a46: $77
	sbc  d                                           ; $7a47: $9a
	sbc  c                                           ; $7a48: $99
	ld   a, b                                        ; $7a49: $78
	adc  c                                           ; $7a4a: $89
	add  a                                           ; $7a4b: $87
	sub  a                                           ; $7a4c: $97
	add  a                                           ; $7a4d: $87
	ld   [hl], a                                     ; $7a4e: $77
	ld   a, b                                        ; $7a4f: $78
	ld   a, b                                        ; $7a50: $78
	sbc  c                                           ; $7a51: $99
	xor  d                                           ; $7a52: $aa
	sub  a                                           ; $7a53: $97
	add  a                                           ; $7a54: $87
	ld   [hl], a                                     ; $7a55: $77
	ld   [hl], a                                     ; $7a56: $77
	ld   a, b                                        ; $7a57: $78
	adc  c                                           ; $7a58: $89
	sbc  b                                           ; $7a59: $98
	adc  b                                           ; $7a5a: $88
	sbc  c                                           ; $7a5b: $99
	xor  c                                           ; $7a5c: $a9
	halt                                             ; $7a5d: $76
	ld   h, a                                        ; $7a5e: $67
	adc  b                                           ; $7a5f: $88
	sbc  b                                           ; $7a60: $98
	ld   a, b                                        ; $7a61: $78
	sbc  c                                           ; $7a62: $99
	sbc  b                                           ; $7a63: $98
	ld   a, b                                        ; $7a64: $78
	adc  c                                           ; $7a65: $89
	add  a                                           ; $7a66: $87
	halt                                             ; $7a67: $76
	ld   a, b                                        ; $7a68: $78
	xor  b                                           ; $7a69: $a8
	ld   a, b                                        ; $7a6a: $78
	adc  c                                           ; $7a6b: $89
	sbc  c                                           ; $7a6c: $99
	sbc  b                                           ; $7a6d: $98
	add  a                                           ; $7a6e: $87
	ld   [hl], a                                     ; $7a6f: $77
	add  a                                           ; $7a70: $87
	ld   [hl], a                                     ; $7a71: $77
	adc  d                                           ; $7a72: $8a
	xor  c                                           ; $7a73: $a9
	adc  b                                           ; $7a74: $88
	adc  c                                           ; $7a75: $89
	sub  a                                           ; $7a76: $97
	halt                                             ; $7a77: $76
	ld   [hl], a                                     ; $7a78: $77
	adc  b                                           ; $7a79: $88
	adc  b                                           ; $7a7a: $88
	ld   a, c                                        ; $7a7b: $79
	adc  d                                           ; $7a7c: $8a
	sbc  c                                           ; $7a7d: $99
	sub  a                                           ; $7a7e: $97
	add  a                                           ; $7a7f: $87
	ld   [hl], a                                     ; $7a80: $77
	ld   [hl], a                                     ; $7a81: $77
	adc  c                                           ; $7a82: $89
	sbc  c                                           ; $7a83: $99
	sbc  b                                           ; $7a84: $98
	xor  c                                           ; $7a85: $a9
	sbc  c                                           ; $7a86: $99
	ld   a, b                                        ; $7a87: $78
	ld   [hl], a                                     ; $7a88: $77
	ld   [hl], a                                     ; $7a89: $77
	ld   [hl], a                                     ; $7a8a: $77
	adc  b                                           ; $7a8b: $88
	sbc  c                                           ; $7a8c: $99
	sbc  d                                           ; $7a8d: $9a
	adc  b                                           ; $7a8e: $88
	ld   [hl], a                                     ; $7a8f: $77
	ld   a, b                                        ; $7a90: $78
	add  [hl]                                        ; $7a91: $86
	ld   h, [hl]                                     ; $7a92: $66
	adc  c                                           ; $7a93: $89
	sbc  b                                           ; $7a94: $98
	adc  c                                           ; $7a95: $89
	adc  c                                           ; $7a96: $89
	xor  c                                           ; $7a97: $a9
	halt                                             ; $7a98: $76
	ld   [hl], a                                     ; $7a99: $77
	adc  b                                           ; $7a9a: $88
	ld   h, a                                        ; $7a9b: $67
	ld   a, b                                        ; $7a9c: $78
	xor  c                                           ; $7a9d: $a9
	sbc  b                                           ; $7a9e: $98
	adc  c                                           ; $7a9f: $89
	sbc  c                                           ; $7aa0: $99
	halt                                             ; $7aa1: $76
	ld   h, a                                        ; $7aa2: $67
	ld   a, b                                        ; $7aa3: $78
	adc  b                                           ; $7aa4: $88
	adc  c                                           ; $7aa5: $89
	xor  c                                           ; $7aa6: $a9
	sbc  c                                           ; $7aa7: $99
	sbc  b                                           ; $7aa8: $98
	ld   [hl], a                                     ; $7aa9: $77
	ld   h, a                                        ; $7aaa: $67
	ld   [hl], a                                     ; $7aab: $77
	halt                                             ; $7aac: $76
	adc  c                                           ; $7aad: $89
	xor  c                                           ; $7aae: $a9
	adc  b                                           ; $7aaf: $88
	sbc  c                                           ; $7ab0: $99
	sbc  b                                           ; $7ab1: $98
	halt                                             ; $7ab2: $76
	ld   h, a                                        ; $7ab3: $67
	adc  b                                           ; $7ab4: $88
	adc  b                                           ; $7ab5: $88
	adc  c                                           ; $7ab6: $89
	sbc  d                                           ; $7ab7: $9a
	sbc  b                                           ; $7ab8: $98
	add  a                                           ; $7ab9: $87
	add  a                                           ; $7aba: $87
	add  [hl]                                        ; $7abb: $86
	ld   h, a                                        ; $7abc: $67
	adc  b                                           ; $7abd: $88
	sbc  d                                           ; $7abe: $9a
	sbc  c                                           ; $7abf: $99
	sbc  c                                           ; $7ac0: $99
	ld   [hl], a                                     ; $7ac1: $77
	ld   [hl], a                                     ; $7ac2: $77
	sub  a                                           ; $7ac3: $97
	halt                                             ; $7ac4: $76
	ld   a, b                                        ; $7ac5: $78
	sbc  d                                           ; $7ac6: $9a
	adc  b                                           ; $7ac7: $88
	sbc  c                                           ; $7ac8: $99
	xor  c                                           ; $7ac9: $a9
	halt                                             ; $7aca: $76
	ld   h, a                                        ; $7acb: $67
	add  a                                           ; $7acc: $87
	ld   h, [hl]                                     ; $7acd: $66
	adc  c                                           ; $7ace: $89
	sbc  d                                           ; $7acf: $9a
	sbc  b                                           ; $7ad0: $98
	adc  c                                           ; $7ad1: $89
	sbc  c                                           ; $7ad2: $99
	halt                                             ; $7ad3: $76
	ld   h, a                                        ; $7ad4: $67
	adc  b                                           ; $7ad5: $88
	sbc  b                                           ; $7ad6: $98
	sbc  c                                           ; $7ad7: $99
	xor  d                                           ; $7ad8: $aa
	sbc  c                                           ; $7ad9: $99
	adc  b                                           ; $7ada: $88
	adc  c                                           ; $7adb: $89
	add  a                                           ; $7adc: $87
	ld   d, [hl]                                     ; $7add: $56
	ld   a, c                                        ; $7ade: $79
	xor  d                                           ; $7adf: $aa
	adc  b                                           ; $7ae0: $88
	sbc  c                                           ; $7ae1: $99
	sub  a                                           ; $7ae2: $97
	ld   d, [hl]                                     ; $7ae3: $56
	ld   a, b                                        ; $7ae4: $78
	sub  a                                           ; $7ae5: $97
	ld   h, [hl]                                     ; $7ae6: $66
	adc  c                                           ; $7ae7: $89
	cp   d                                           ; $7ae8: $ba
	sbc  b                                           ; $7ae9: $98
	adc  d                                           ; $7aea: $8a
	adc  b                                           ; $7aeb: $88
	ld   h, [hl]                                     ; $7aec: $66
	ld   [hl], a                                     ; $7aed: $77
	sub  a                                           ; $7aee: $97
	adc  b                                           ; $7aef: $88
	adc  d                                           ; $7af0: $8a
	sbc  c                                           ; $7af1: $99
	sbc  c                                           ; $7af2: $99
	xor  b                                           ; $7af3: $a8
	add  [hl]                                        ; $7af4: $86
	ld   [hl], a                                     ; $7af5: $77
	ld   [hl], a                                     ; $7af6: $77
	ld   h, a                                        ; $7af7: $67
	adc  c                                           ; $7af8: $89
	sbc  c                                           ; $7af9: $99
	add  a                                           ; $7afa: $87
	adc  c                                           ; $7afb: $89
	sbc  b                                           ; $7afc: $98
	ld   [hl], a                                     ; $7afd: $77
	ld   [hl], a                                     ; $7afe: $77
	add  a                                           ; $7aff: $87
	ld   a, b                                        ; $7b00: $78
	sbc  d                                           ; $7b01: $9a
	sbc  c                                           ; $7b02: $99
	adc  b                                           ; $7b03: $88
	adc  b                                           ; $7b04: $88
	add  a                                           ; $7b05: $87
	ld   [hl], a                                     ; $7b06: $77
	ld   [hl], a                                     ; $7b07: $77
	ld   [hl], a                                     ; $7b08: $77
	adc  b                                           ; $7b09: $88
	cp   d                                           ; $7b0a: $ba
	xor  b                                           ; $7b0b: $a8
	adc  c                                           ; $7b0c: $89
	adc  c                                           ; $7b0d: $89
	ld   [hl], a                                     ; $7b0e: $77
	ld   [hl], a                                     ; $7b0f: $77
	add  a                                           ; $7b10: $87
	ld   [hl], a                                     ; $7b11: $77
	adc  d                                           ; $7b12: $8a
	sbc  d                                           ; $7b13: $9a
	sbc  c                                           ; $7b14: $99
	adc  b                                           ; $7b15: $88
	sub  a                                           ; $7b16: $97
	halt                                             ; $7b17: $76
	ld   [hl], a                                     ; $7b18: $77
	ld   a, b                                        ; $7b19: $78
	adc  b                                           ; $7b1a: $88
	adc  c                                           ; $7b1b: $89
	sbc  d                                           ; $7b1c: $9a
	xor  c                                           ; $7b1d: $a9
	adc  c                                           ; $7b1e: $89
	adc  b                                           ; $7b1f: $88
	ld   h, [hl]                                     ; $7b20: $66
	ld   h, a                                        ; $7b21: $67
	sbc  c                                           ; $7b22: $99
	adc  c                                           ; $7b23: $89
	adc  c                                           ; $7b24: $89
	sbc  b                                           ; $7b25: $98
	sbc  b                                           ; $7b26: $98
	sbc  b                                           ; $7b27: $98
	ld   [hl], a                                     ; $7b28: $77
	ld   h, a                                        ; $7b29: $67
	ld   a, b                                        ; $7b2a: $78
	sbc  b                                           ; $7b2b: $98
	adc  c                                           ; $7b2c: $89
	sbc  d                                           ; $7b2d: $9a
	adc  c                                           ; $7b2e: $89
	add  a                                           ; $7b2f: $87
	ld   [hl], a                                     ; $7b30: $77
	halt                                             ; $7b31: $76
	ld   [hl], a                                     ; $7b32: $77
	ld   a, c                                        ; $7b33: $79
	adc  d                                           ; $7b34: $8a
	adc  b                                           ; $7b35: $88
	adc  c                                           ; $7b36: $89
	sbc  c                                           ; $7b37: $99
	add  a                                           ; $7b38: $87
	ld   h, [hl]                                     ; $7b39: $66
	ld   a, b                                        ; $7b3a: $78
	ld   [hl], a                                     ; $7b3b: $77
	ld   a, c                                        ; $7b3c: $79
	sbc  c                                           ; $7b3d: $99
	sbc  b                                           ; $7b3e: $98
	sbc  c                                           ; $7b3f: $99
	sbc  b                                           ; $7b40: $98
	ld   [hl], a                                     ; $7b41: $77
	ld   [hl], a                                     ; $7b42: $77
	ld   [hl], a                                     ; $7b43: $77
	ld   a, b                                        ; $7b44: $78
	sbc  d                                           ; $7b45: $9a
	sbc  c                                           ; $7b46: $99
	ld   [hl], a                                     ; $7b47: $77
	xor  c                                           ; $7b48: $a9
	sub  a                                           ; $7b49: $97
	ld   h, [hl]                                     ; $7b4a: $66
	ld   a, b                                        ; $7b4b: $78
	add  a                                           ; $7b4c: $87
	ld   h, a                                        ; $7b4d: $67
	adc  d                                           ; $7b4e: $8a
	xor  b                                           ; $7b4f: $a8
	adc  b                                           ; $7b50: $88
	sbc  c                                           ; $7b51: $99
	add  [hl]                                        ; $7b52: $86
	ld   h, a                                        ; $7b53: $67
	ld   a, b                                        ; $7b54: $78
	ld   h, a                                        ; $7b55: $67
	adc  c                                           ; $7b56: $89
	sbc  b                                           ; $7b57: $98
	add  a                                           ; $7b58: $87
	sbc  c                                           ; $7b59: $99
	sbc  c                                           ; $7b5a: $99
	ld   [hl], a                                     ; $7b5b: $77
	add  a                                           ; $7b5c: $87
	add  a                                           ; $7b5d: $87
	ld   [hl], a                                     ; $7b5e: $77
	ld   a, d                                        ; $7b5f: $7a
	sbc  d                                           ; $7b60: $9a
	adc  c                                           ; $7b61: $89
	adc  b                                           ; $7b62: $88
	add  a                                           ; $7b63: $87
	halt                                             ; $7b64: $76
	ld   [hl], a                                     ; $7b65: $77
	adc  b                                           ; $7b66: $88
	ld   a, b                                        ; $7b67: $78
	ld   a, c                                        ; $7b68: $79
	sbc  d                                           ; $7b69: $9a
	sbc  b                                           ; $7b6a: $98
	sbc  b                                           ; $7b6b: $98
	sub  a                                           ; $7b6c: $97
	ld   [hl], a                                     ; $7b6d: $77
	ld   [hl], a                                     ; $7b6e: $77
	ld   a, b                                        ; $7b6f: $78
	ld   a, b                                        ; $7b70: $78
	adc  c                                           ; $7b71: $89
	add  a                                           ; $7b72: $87
	adc  b                                           ; $7b73: $88
	xor  c                                           ; $7b74: $a9
	add  [hl]                                        ; $7b75: $86
	ld   h, a                                        ; $7b76: $67
	ld   a, b                                        ; $7b77: $78
	ld   a, b                                        ; $7b78: $78
	adc  b                                           ; $7b79: $88
	xor  c                                           ; $7b7a: $a9
	sbc  b                                           ; $7b7b: $98
	adc  b                                           ; $7b7c: $88
	adc  b                                           ; $7b7d: $88
	ld   [hl], a                                     ; $7b7e: $77
	ld   [hl], a                                     ; $7b7f: $77
	ld   [hl], a                                     ; $7b80: $77
	add  a                                           ; $7b81: $87
	adc  c                                           ; $7b82: $89
	sbc  c                                           ; $7b83: $99
	adc  b                                           ; $7b84: $88
	adc  b                                           ; $7b85: $88
	sub  a                                           ; $7b86: $97
	halt                                             ; $7b87: $76
	ld   [hl], a                                     ; $7b88: $77
	ld   a, b                                        ; $7b89: $78
	ld   a, b                                        ; $7b8a: $78
	sbc  c                                           ; $7b8b: $99
	sbc  b                                           ; $7b8c: $98
	adc  b                                           ; $7b8d: $88
	sbc  c                                           ; $7b8e: $99
	add  a                                           ; $7b8f: $87
	ld   h, [hl]                                     ; $7b90: $66
	ld   a, b                                        ; $7b91: $78
	ld   a, b                                        ; $7b92: $78
	adc  c                                           ; $7b93: $89
	xor  c                                           ; $7b94: $a9
	add  a                                           ; $7b95: $87
	adc  c                                           ; $7b96: $89
	xor  d                                           ; $7b97: $aa
	add  [hl]                                        ; $7b98: $86
	ld   h, a                                        ; $7b99: $67

Call_0e6_7b9a:
	ld   a, b                                        ; $7b9a: $78
	ld   [hl], a                                     ; $7b9b: $77
	adc  c                                           ; $7b9c: $89
	sbc  c                                           ; $7b9d: $99
	sub  a                                           ; $7b9e: $97
	ld   a, c                                        ; $7b9f: $79
	sbc  c                                           ; $7ba0: $99
	add  a                                           ; $7ba1: $87
	ld   h, [hl]                                     ; $7ba2: $66
	ld   h, a                                        ; $7ba3: $67
	ld   a, c                                        ; $7ba4: $79
	adc  d                                           ; $7ba5: $8a
	xor  b                                           ; $7ba6: $a8
	ld   [hl], a                                     ; $7ba7: $77
	adc  c                                           ; $7ba8: $89
	sbc  b                                           ; $7ba9: $98
	ld   a, b                                        ; $7baa: $78
	ld   [hl], a                                     ; $7bab: $77
	ld   [hl], a                                     ; $7bac: $77
	ld   [hl], a                                     ; $7bad: $77
	adc  c                                           ; $7bae: $89
	xor  c                                           ; $7baf: $a9
	sbc  b                                           ; $7bb0: $98
	ld   a, b                                        ; $7bb1: $78
	adc  c                                           ; $7bb2: $89
	add  a                                           ; $7bb3: $87
	ld   h, [hl]                                     ; $7bb4: $66
	ld   a, b                                        ; $7bb5: $78
	adc  b                                           ; $7bb6: $88
	sbc  b                                           ; $7bb7: $98
	sbc  b                                           ; $7bb8: $98
	sbc  c                                           ; $7bb9: $99
	adc  b                                           ; $7bba: $88
	adc  c                                           ; $7bbb: $89
	sub  a                                           ; $7bbc: $97
	halt                                             ; $7bbd: $76
	ld   a, b                                        ; $7bbe: $78
	sbc  d                                           ; $7bbf: $9a
	sbc  c                                           ; $7bc0: $99
	adc  b                                           ; $7bc1: $88
	adc  c                                           ; $7bc2: $89
	adc  b                                           ; $7bc3: $88
	adc  b                                           ; $7bc4: $88
	add  a                                           ; $7bc5: $87
	ld   h, [hl]                                     ; $7bc6: $66
	ld   a, c                                        ; $7bc7: $79
	adc  d                                           ; $7bc8: $8a
	adc  b                                           ; $7bc9: $88
	adc  b                                           ; $7bca: $88
	adc  b                                           ; $7bcb: $88
	adc  b                                           ; $7bcc: $88
	sbc  b                                           ; $7bcd: $98
	ld   [hl], a                                     ; $7bce: $77
	ld   [hl], a                                     ; $7bcf: $77
	ld   a, b                                        ; $7bd0: $78
	adc  b                                           ; $7bd1: $88
	sbc  c                                           ; $7bd2: $99
	add  a                                           ; $7bd3: $87
	ld   a, b                                        ; $7bd4: $78
	sbc  c                                           ; $7bd5: $99
	adc  b                                           ; $7bd6: $88
	ld   [hl], a                                     ; $7bd7: $77
	ld   a, b                                        ; $7bd8: $78
	adc  b                                           ; $7bd9: $88
	add  a                                           ; $7bda: $87
	adc  c                                           ; $7bdb: $89
	sbc  c                                           ; $7bdc: $99
	adc  b                                           ; $7bdd: $88
	ld   a, b                                        ; $7bde: $78
	sbc  c                                           ; $7bdf: $99
	ld   [hl], a                                     ; $7be0: $77
	ld   [hl], a                                     ; $7be1: $77
	add  a                                           ; $7be2: $87
	ld   a, b                                        ; $7be3: $78
	adc  d                                           ; $7be4: $8a
	adc  b                                           ; $7be5: $88
	ld   [hl], a                                     ; $7be6: $77
	adc  d                                           ; $7be7: $8a
	xor  c                                           ; $7be8: $a9
	ld   [hl], a                                     ; $7be9: $77
	ld   [hl], a                                     ; $7bea: $77
	add  a                                           ; $7beb: $87
	adc  b                                           ; $7bec: $88
	sbc  c                                           ; $7bed: $99
	adc  c                                           ; $7bee: $89
	ld   [hl], a                                     ; $7bef: $77
	ld   a, c                                        ; $7bf0: $79
	adc  c                                           ; $7bf1: $89
	sbc  b                                           ; $7bf2: $98
	add  a                                           ; $7bf3: $87
	halt                                             ; $7bf4: $76
	ld   [hl], a                                     ; $7bf5: $77
	adc  c                                           ; $7bf6: $89
	sbc  b                                           ; $7bf7: $98
	ld   [hl], a                                     ; $7bf8: $77
	adc  b                                           ; $7bf9: $88
	sbc  b                                           ; $7bfa: $98
	adc  b                                           ; $7bfb: $88
	adc  b                                           ; $7bfc: $88
	ld   [hl], a                                     ; $7bfd: $77
	ld   [hl], a                                     ; $7bfe: $77
	adc  c                                           ; $7bff: $89
	adc  c                                           ; $7c00: $89
	adc  b                                           ; $7c01: $88
	adc  b                                           ; $7c02: $88
	sbc  b                                           ; $7c03: $98
	sbc  b                                           ; $7c04: $98
	add  a                                           ; $7c05: $87
	ld   [hl], a                                     ; $7c06: $77
	ld   a, b                                        ; $7c07: $78
	ld   a, b                                        ; $7c08: $78
	ld   a, c                                        ; $7c09: $79
	sbc  b                                           ; $7c0a: $98
	adc  b                                           ; $7c0b: $88
	sbc  c                                           ; $7c0c: $99
	sbc  b                                           ; $7c0d: $98
	sub  a                                           ; $7c0e: $97
	halt                                             ; $7c0f: $76
	ld   a, b                                        ; $7c10: $78

Call_0e6_7c11:
	adc  b                                           ; $7c11: $88
	adc  b                                           ; $7c12: $88
	adc  c                                           ; $7c13: $89
	sbc  c                                           ; $7c14: $99
	adc  b                                           ; $7c15: $88
	adc  b                                           ; $7c16: $88
	sub  a                                           ; $7c17: $97
	ld   [hl], a                                     ; $7c18: $77
	ld   a, b                                        ; $7c19: $78
	adc  b                                           ; $7c1a: $88
	adc  b                                           ; $7c1b: $88
	sbc  b                                           ; $7c1c: $98
	sbc  b                                           ; $7c1d: $98
	ld   a, c                                        ; $7c1e: $79
	sbc  c                                           ; $7c1f: $99
	sbc  b                                           ; $7c20: $98
	ld   [hl], a                                     ; $7c21: $77
	ld   [hl], a                                     ; $7c22: $77
	ld   a, b                                        ; $7c23: $78
	adc  b                                           ; $7c24: $88
	sbc  c                                           ; $7c25: $99
	sbc  b                                           ; $7c26: $98
	add  a                                           ; $7c27: $87
	adc  c                                           ; $7c28: $89
	adc  b                                           ; $7c29: $88
	ld   [hl], a                                     ; $7c2a: $77
	ld   [hl], a                                     ; $7c2b: $77
	ld   [hl], a                                     ; $7c2c: $77
	adc  b                                           ; $7c2d: $88
	adc  c                                           ; $7c2e: $89
	adc  c                                           ; $7c2f: $89
	adc  c                                           ; $7c30: $89
	adc  c                                           ; $7c31: $89
	add  a                                           ; $7c32: $87
	add  a                                           ; $7c33: $87
	add  a                                           ; $7c34: $87
	adc  b                                           ; $7c35: $88
	ld   a, c                                        ; $7c36: $79
	adc  b                                           ; $7c37: $88
	adc  b                                           ; $7c38: $88
	adc  b                                           ; $7c39: $88
	sbc  b                                           ; $7c3a: $98
	adc  c                                           ; $7c3b: $89
	sbc  c                                           ; $7c3c: $99
	ld   [hl], a                                     ; $7c3d: $77
	ld   [hl], a                                     ; $7c3e: $77
	adc  b                                           ; $7c3f: $88
	adc  c                                           ; $7c40: $89
	sbc  b                                           ; $7c41: $98
	adc  b                                           ; $7c42: $88
	adc  b                                           ; $7c43: $88
	adc  b                                           ; $7c44: $88
	sbc  c                                           ; $7c45: $99
	sub  a                                           ; $7c46: $97
	halt                                             ; $7c47: $76
	ld   a, b                                        ; $7c48: $78
	adc  b                                           ; $7c49: $88
	sbc  b                                           ; $7c4a: $98
	adc  b                                           ; $7c4b: $88
	adc  b                                           ; $7c4c: $88
	ld   a, b                                        ; $7c4d: $78
	adc  b                                           ; $7c4e: $88
	sbc  b                                           ; $7c4f: $98
	add  a                                           ; $7c50: $87
	ld   [hl], a                                     ; $7c51: $77
	adc  c                                           ; $7c52: $89
	sbc  b                                           ; $7c53: $98
	adc  b                                           ; $7c54: $88
	adc  b                                           ; $7c55: $88
	adc  b                                           ; $7c56: $88
	adc  b                                           ; $7c57: $88
	sbc  c                                           ; $7c58: $99
	add  a                                           ; $7c59: $87
	ld   [hl], a                                     ; $7c5a: $77
	ld   a, b                                        ; $7c5b: $78
	adc  b                                           ; $7c5c: $88
	adc  b                                           ; $7c5d: $88
	adc  b                                           ; $7c5e: $88
	adc  b                                           ; $7c5f: $88
	adc  b                                           ; $7c60: $88
	adc  c                                           ; $7c61: $89
	sbc  b                                           ; $7c62: $98
	add  a                                           ; $7c63: $87
	ld   [hl], a                                     ; $7c64: $77
	ld   a, b                                        ; $7c65: $78
	adc  b                                           ; $7c66: $88
	adc  b                                           ; $7c67: $88
	adc  b                                           ; $7c68: $88
	adc  b                                           ; $7c69: $88
	adc  b                                           ; $7c6a: $88
	sbc  b                                           ; $7c6b: $98
	sbc  b                                           ; $7c6c: $98
	adc  b                                           ; $7c6d: $88
	ld   a, b                                        ; $7c6e: $78
	ld   a, b                                        ; $7c6f: $78
	adc  b                                           ; $7c70: $88
	adc  b                                           ; $7c71: $88
	adc  b                                           ; $7c72: $88
	adc  b                                           ; $7c73: $88
	adc  b                                           ; $7c74: $88
	sbc  b                                           ; $7c75: $98
	adc  b                                           ; $7c76: $88
	adc  b                                           ; $7c77: $88
	adc  b                                           ; $7c78: $88
	adc  b                                           ; $7c79: $88
	adc  b                                           ; $7c7a: $88
	adc  b                                           ; $7c7b: $88
	adc  b                                           ; $7c7c: $88
	adc  b                                           ; $7c7d: $88
	adc  b                                           ; $7c7e: $88
	adc  c                                           ; $7c7f: $89
	sbc  b                                           ; $7c80: $98
	add  a                                           ; $7c81: $87
	adc  b                                           ; $7c82: $88
	adc  b                                           ; $7c83: $88
	adc  b                                           ; $7c84: $88
	adc  b                                           ; $7c85: $88
	adc  b                                           ; $7c86: $88
	adc  b                                           ; $7c87: $88
	adc  b                                           ; $7c88: $88
	sbc  c                                           ; $7c89: $99
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

Jump_0e6_7cd7:
	adc  b                                           ; $7cd7: $88
	adc  b                                           ; $7cd8: $88
	adc  b                                           ; $7cd9: $88
	adc  b                                           ; $7cda: $88
	adc  b                                           ; $7cdb: $88

Call_0e6_7cdc:
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

Call_0e6_7cfb:
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
	ld   [hl], a                                     ; $7e5b: $77
	ld   a, b                                        ; $7e5c: $78
	adc  b                                           ; $7e5d: $88
	adc  c                                           ; $7e5e: $89
	sbc  c                                           ; $7e5f: $99
	sbc  c                                           ; $7e60: $99
	adc  b                                           ; $7e61: $88
	adc  b                                           ; $7e62: $88
	adc  b                                           ; $7e63: $88
	add  a                                           ; $7e64: $87
	ld   [hl], a                                     ; $7e65: $77
	ld   [hl], a                                     ; $7e66: $77
	ld   a, b                                        ; $7e67: $78
	sbc  b                                           ; $7e68: $98
	adc  b                                           ; $7e69: $88
	adc  b                                           ; $7e6a: $88
	adc  c                                           ; $7e6b: $89
	adc  b                                           ; $7e6c: $88
	adc  b                                           ; $7e6d: $88
	ld   [hl], a                                     ; $7e6e: $77
	halt                                             ; $7e6f: $76
	ld   h, a                                        ; $7e70: $67
	ld   a, b                                        ; $7e71: $78
	sbc  b                                           ; $7e72: $98
	adc  c                                           ; $7e73: $89
	sbc  c                                           ; $7e74: $99
	sbc  c                                           ; $7e75: $99
	adc  b                                           ; $7e76: $88
	adc  b                                           ; $7e77: $88
	ld   [hl], a                                     ; $7e78: $77
	ld   h, [hl]                                     ; $7e79: $66
	ld   h, a                                        ; $7e7a: $67
	adc  b                                           ; $7e7b: $88
	sbc  c                                           ; $7e7c: $99
	adc  c                                           ; $7e7d: $89
	sbc  d                                           ; $7e7e: $9a
	sbc  b                                           ; $7e7f: $98
	adc  b                                           ; $7e80: $88
	add  a                                           ; $7e81: $87
	halt                                             ; $7e82: $76
	ld   h, l                                        ; $7e83: $65
	ld   h, a                                        ; $7e84: $67
	adc  c                                           ; $7e85: $89
	sbc  c                                           ; $7e86: $99
	adc  c                                           ; $7e87: $89
	xor  d                                           ; $7e88: $aa
	sbc  b                                           ; $7e89: $98
	adc  c                                           ; $7e8a: $89
	add  a                                           ; $7e8b: $87
	ld   h, l                                        ; $7e8c: $65
	ld   d, l                                        ; $7e8d: $55
	ld   h, a                                        ; $7e8e: $67
	sbc  c                                           ; $7e8f: $99
	sbc  c                                           ; $7e90: $99
	adc  c                                           ; $7e91: $89
	sbc  c                                           ; $7e92: $99
	sbc  c                                           ; $7e93: $99
	sbc  c                                           ; $7e94: $99
	add  a                                           ; $7e95: $87
	ld   h, l                                        ; $7e96: $65
	ld   d, l                                        ; $7e97: $55
	ld   a, b                                        ; $7e98: $78
	adc  c                                           ; $7e99: $89
	adc  b                                           ; $7e9a: $88
	sbc  c                                           ; $7e9b: $99
	sbc  c                                           ; $7e9c: $99
	adc  c                                           ; $7e9d: $89
	adc  c                                           ; $7e9e: $89
	add  a                                           ; $7e9f: $87
	ld   d, l                                        ; $7ea0: $55
	ld   d, [hl]                                     ; $7ea1: $56
	ld   a, b                                        ; $7ea2: $78
	sbc  c                                           ; $7ea3: $99
	adc  b                                           ; $7ea4: $88
	sbc  c                                           ; $7ea5: $99
	xor  c                                           ; $7ea6: $a9
	adc  c                                           ; $7ea7: $89
	sbc  c                                           ; $7ea8: $99
	ld   [hl], l                                     ; $7ea9: $75
	ld   d, l                                        ; $7eaa: $55
	ld   h, a                                        ; $7eab: $67
	adc  c                                           ; $7eac: $89
	sbc  c                                           ; $7ead: $99
	adc  c                                           ; $7eae: $89
	xor  d                                           ; $7eaf: $aa
	sbc  b                                           ; $7eb0: $98
	sbc  c                                           ; $7eb1: $99
	sbc  b                                           ; $7eb2: $98
	ld   h, l                                        ; $7eb3: $65
	ld   b, l                                        ; $7eb4: $45
	ld   l, b                                        ; $7eb5: $68
	adc  c                                           ; $7eb6: $89
	adc  c                                           ; $7eb7: $89
	sbc  d                                           ; $7eb8: $9a
	xor  d                                           ; $7eb9: $aa
	adc  c                                           ; $7eba: $89
	sbc  c                                           ; $7ebb: $99
	add  a                                           ; $7ebc: $87
	ld   d, h                                        ; $7ebd: $54
	ld   d, [hl]                                     ; $7ebe: $56
	ld   a, c                                        ; $7ebf: $79
	sbc  c                                           ; $7ec0: $99
	sbc  c                                           ; $7ec1: $99
	sbc  d                                           ; $7ec2: $9a
	xor  b                                           ; $7ec3: $a8
	adc  c                                           ; $7ec4: $89
	xor  c                                           ; $7ec5: $a9
	add  l                                           ; $7ec6: $85
	ld   b, h                                        ; $7ec7: $44
	ld   d, a                                        ; $7ec8: $57
	sbc  c                                           ; $7ec9: $99
	sbc  b                                           ; $7eca: $98
	sbc  c                                           ; $7ecb: $99
	xor  d                                           ; $7ecc: $aa
	xor  c                                           ; $7ecd: $a9
	adc  c                                           ; $7ece: $89
	sbc  b                                           ; $7ecf: $98
	ld   h, l                                        ; $7ed0: $65
	ld   b, h                                        ; $7ed1: $44
	ld   h, a                                        ; $7ed2: $67
	sbc  c                                           ; $7ed3: $99
	sbc  b                                           ; $7ed4: $98
	sbc  d                                           ; $7ed5: $9a
	xor  c                                           ; $7ed6: $a9
	adc  b                                           ; $7ed7: $88
	sbc  d                                           ; $7ed8: $9a
	sub  a                                           ; $7ed9: $97
	ld   d, h                                        ; $7eda: $54
	ld   b, l                                        ; $7edb: $45
	ld   a, b                                        ; $7edc: $78
	xor  c                                           ; $7edd: $a9
	adc  c                                           ; $7ede: $89
	xor  d                                           ; $7edf: $aa
	xor  c                                           ; $7ee0: $a9
	sbc  c                                           ; $7ee1: $99
	xor  d                                           ; $7ee2: $aa
	add  [hl]                                        ; $7ee3: $86
	ld   b, h                                        ; $7ee4: $44
	ld   d, [hl]                                     ; $7ee5: $56
	sbc  d                                           ; $7ee6: $9a
	xor  c                                           ; $7ee7: $a9
	sbc  c                                           ; $7ee8: $99
	sbc  c                                           ; $7ee9: $99
	sbc  b                                           ; $7eea: $98
	sbc  c                                           ; $7eeb: $99
	sbc  c                                           ; $7eec: $99
	ld   h, h                                        ; $7eed: $64
	ld   b, l                                        ; $7eee: $45
	ld   l, b                                        ; $7eef: $68
	sbc  d                                           ; $7ef0: $9a
	sbc  c                                           ; $7ef1: $99
	adc  c                                           ; $7ef2: $89
	xor  d                                           ; $7ef3: $aa
	adc  c                                           ; $7ef4: $89
	sbc  d                                           ; $7ef5: $9a
	sub  a                                           ; $7ef6: $97
	ld   d, h                                        ; $7ef7: $54
	ld   b, [hl]                                     ; $7ef8: $46
	adc  d                                           ; $7ef9: $8a
	xor  c                                           ; $7efa: $a9
	sbc  c                                           ; $7efb: $99
	xor  c                                           ; $7efc: $a9
	sbc  b                                           ; $7efd: $98
	sbc  c                                           ; $7efe: $99
	xor  d                                           ; $7eff: $aa
	ld   [hl], l                                     ; $7f00: $75
	ld   b, h                                        ; $7f01: $44
	ld   d, a                                        ; $7f02: $57
	sbc  d                                           ; $7f03: $9a
	sbc  c                                           ; $7f04: $99
	sbc  d                                           ; $7f05: $9a
	xor  d                                           ; $7f06: $aa
	sbc  c                                           ; $7f07: $99
	sbc  d                                           ; $7f08: $9a
	xor  b                                           ; $7f09: $a8
	ld   d, h                                        ; $7f0a: $54
	dec  [hl]                                        ; $7f0b: $35
	ld   l, c                                        ; $7f0c: $69
	xor  c                                           ; $7f0d: $a9
	sbc  b                                           ; $7f0e: $98
	sbc  c                                           ; $7f0f: $99
	xor  d                                           ; $7f10: $aa
	sbc  d                                           ; $7f11: $9a
	sbc  d                                           ; $7f12: $9a
	add  [hl]                                        ; $7f13: $86
	ld   b, e                                        ; $7f14: $43
	ld   b, [hl]                                     ; $7f15: $46
	sbc  c                                           ; $7f16: $99
	xor  c                                           ; $7f17: $a9
	adc  c                                           ; $7f18: $89
	sbc  e                                           ; $7f19: $9b
	xor  c                                           ; $7f1a: $a9
	sbc  c                                           ; $7f1b: $99
	xor  c                                           ; $7f1c: $a9
	ld   h, l                                        ; $7f1d: $65
	inc  [hl]                                        ; $7f1e: $34
	ld   d, a                                        ; $7f1f: $57
	xor  c                                           ; $7f20: $a9
	xor  b                                           ; $7f21: $a8
	sbc  c                                           ; $7f22: $99
	xor  d                                           ; $7f23: $aa
	adc  c                                           ; $7f24: $89
	xor  e                                           ; $7f25: $ab
	and  a                                           ; $7f26: $a7
	ld   b, e                                        ; $7f27: $43
	dec  [hl]                                        ; $7f28: $35
	ld   a, d                                        ; $7f29: $7a
	xor  d                                           ; $7f2a: $aa
	sbc  b                                           ; $7f2b: $98
	sbc  c                                           ; $7f2c: $99
	xor  c                                           ; $7f2d: $a9
	adc  d                                           ; $7f2e: $8a
	xor  e                                           ; $7f2f: $ab
	add  l                                           ; $7f30: $85
	inc  sp                                          ; $7f31: $33
	ld   b, [hl]                                     ; $7f32: $46
	sbc  d                                           ; $7f33: $9a
	xor  b                                           ; $7f34: $a8
	adc  c                                           ; $7f35: $89
	xor  d                                           ; $7f36: $aa
	xor  c                                           ; $7f37: $a9
	sbc  d                                           ; $7f38: $9a
	xor  c                                           ; $7f39: $a9
	ld   h, h                                        ; $7f3a: $64
	inc  h                                           ; $7f3b: $24
	ld   e, b                                        ; $7f3c: $58
	sbc  d                                           ; $7f3d: $9a
	sbc  b                                           ; $7f3e: $98
	sbc  c                                           ; $7f3f: $99
	cp   d                                           ; $7f40: $ba
	adc  b                                           ; $7f41: $88
	sbc  c                                           ; $7f42: $99
	cp   b                                           ; $7f43: $b8
	ld   d, e                                        ; $7f44: $53
	dec  [hl]                                        ; $7f45: $35
	ld   l, c                                        ; $7f46: $69
	sbc  d                                           ; $7f47: $9a
	sub  a                                           ; $7f48: $97
	sbc  d                                           ; $7f49: $9a
	cp   d                                           ; $7f4a: $ba
	adc  c                                           ; $7f4b: $89
	adc  d                                           ; $7f4c: $8a
	sub  a                                           ; $7f4d: $97
	ld   b, d                                        ; $7f4e: $42
	dec  [hl]                                        ; $7f4f: $35
	ld   a, c                                        ; $7f50: $79
	xor  c                                           ; $7f51: $a9
	adc  c                                           ; $7f52: $89
	xor  d                                           ; $7f53: $aa
	cp   c                                           ; $7f54: $b9
	adc  c                                           ; $7f55: $89
	sbc  e                                           ; $7f56: $9b
	sub  [hl]                                        ; $7f57: $96
	ld   [hl-], a                                    ; $7f58: $32
	ld   b, [hl]                                     ; $7f59: $46
	sbc  d                                           ; $7f5a: $9a
	xor  b                                           ; $7f5b: $a8
	ld   a, c                                        ; $7f5c: $79
	xor  h                                           ; $7f5d: $ac
	cp   b                                           ; $7f5e: $b8
	adc  b                                           ; $7f5f: $88
	xor  d                                           ; $7f60: $aa
	add  [hl]                                        ; $7f61: $86
	ld   [hl-], a                                    ; $7f62: $32
	ld   b, [hl]                                     ; $7f63: $46
	sbc  c                                           ; $7f64: $99
	xor  b                                           ; $7f65: $a8
	adc  c                                           ; $7f66: $89
	cp   h                                           ; $7f67: $bc
	xor  b                                           ; $7f68: $a8
	adc  c                                           ; $7f69: $89
	xor  d                                           ; $7f6a: $aa
	ld   [hl], l                                     ; $7f6b: $75
	inc  hl                                          ; $7f6c: $23
	ld   d, a                                        ; $7f6d: $57
	sbc  d                                           ; $7f6e: $9a
	sbc  b                                           ; $7f6f: $98
	adc  d                                           ; $7f70: $8a
	cp   e                                           ; $7f71: $bb
	xor  b                                           ; $7f72: $a8
	sbc  c                                           ; $7f73: $99
	xor  c                                           ; $7f74: $a9
	ld   h, h                                        ; $7f75: $64
	inc  h                                           ; $7f76: $24
	ld   e, b                                        ; $7f77: $58
	xor  d                                           ; $7f78: $aa
	sbc  b                                           ; $7f79: $98
	sbc  e                                           ; $7f7a: $9b
	res  3, b                                        ; $7f7b: $cb $98
	sbc  c                                           ; $7f7d: $99
	cp   b                                           ; $7f7e: $b8
	ld   d, e                                        ; $7f7f: $53
	inc  h                                           ; $7f80: $24
	ld   l, c                                        ; $7f81: $69
	sbc  d                                           ; $7f82: $9a
	adc  b                                           ; $7f83: $88
	sbc  d                                           ; $7f84: $9a
	res  1, b                                        ; $7f85: $cb $88
	adc  d                                           ; $7f87: $8a
	and  a                                           ; $7f88: $a7
	ld   d, d                                        ; $7f89: $52
	dec  [hl]                                        ; $7f8a: $35
	ld   a, c                                        ; $7f8b: $79
	xor  c                                           ; $7f8c: $a9
	adc  c                                           ; $7f8d: $89
	xor  e                                           ; $7f8e: $ab
	cp   d                                           ; $7f8f: $ba
	adc  b                                           ; $7f90: $88
	sbc  e                                           ; $7f91: $9b
	and  [hl]                                        ; $7f92: $a6
	ld   b, d                                        ; $7f93: $42
	dec  [hl]                                        ; $7f94: $35
	adc  c                                           ; $7f95: $89
	xor  c                                           ; $7f96: $a9
	adc  c                                           ; $7f97: $89
	cp   e                                           ; $7f98: $bb
	ret                                              ; $7f99: $c9


	adc  b                                           ; $7f9a: $88
	xor  e                                           ; $7f9b: $ab
	add  [hl]                                        ; $7f9c: $86
	ld   [hl-], a                                    ; $7f9d: $32
	ld   b, [hl]                                     ; $7f9e: $46
	adc  c                                           ; $7f9f: $89
	xor  c                                           ; $7fa0: $a9
	adc  c                                           ; $7fa1: $89
	cp   h                                           ; $7fa2: $bc
	cp   b                                           ; $7fa3: $b8
	adc  c                                           ; $7fa4: $89
	xor  e                                           ; $7fa5: $ab
	add  l                                           ; $7fa6: $85
	ld   [hl+], a                                    ; $7fa7: $22
	ld   b, [hl]                                     ; $7fa8: $46
	xor  c                                           ; $7fa9: $a9
	xor  c                                           ; $7faa: $a9
	adc  d                                           ; $7fab: $8a
	cp   h                                           ; $7fac: $bc
	xor  b                                           ; $7fad: $a8
	adc  b                                           ; $7fae: $88
	xor  d                                           ; $7faf: $aa
	ld   [hl], h                                     ; $7fb0: $74
	ld   [hl+], a                                    ; $7fb1: $22
	ld   d, a                                        ; $7fb2: $57
	sbc  d                                           ; $7fb3: $9a
	xor  b                                           ; $7fb4: $a8
	sbc  d                                           ; $7fb5: $9a
	cp   h                                           ; $7fb6: $bc
	and  a                                           ; $7fb7: $a7
	adc  c                                           ; $7fb8: $89
	xor  c                                           ; $7fb9: $a9
	ld   [hl], h                                     ; $7fba: $74
	inc  de                                          ; $7fbb: $13
	ld   e, b                                        ; $7fbc: $58
	xor  c                                           ; $7fbd: $a9
	sbc  b                                           ; $7fbe: $98
	sbc  d                                           ; $7fbf: $9a
	res  3, b                                        ; $7fc0: $cb $98
	adc  d                                           ; $7fc2: $8a
	cp   c                                           ; $7fc3: $b9
	ld   h, e                                        ; $7fc4: $63
	inc  hl                                          ; $7fc5: $23
	ld   e, b                                        ; $7fc6: $58
	sbc  c                                           ; $7fc7: $99
	sbc  b                                           ; $7fc8: $98
	sbc  e                                           ; $7fc9: $9b
	res  3, b                                        ; $7fca: $cb $98
	sbc  d                                           ; $7fcc: $9a
	xor  b                                           ; $7fcd: $a8
	ld   d, d                                        ; $7fce: $52
	inc  h                                           ; $7fcf: $24
	ld   l, d                                        ; $7fd0: $6a
	sbc  c                                           ; $7fd1: $99
	sbc  b                                           ; $7fd2: $98
	xor  e                                           ; $7fd3: $ab
	db   $db                                         ; $7fd4: $db
	add  a                                           ; $7fd5: $87
	sbc  d                                           ; $7fd6: $9a
	cp   b                                           ; $7fd7: $b8
	ld   d, d                                        ; $7fd8: $52
	inc  h                                           ; $7fd9: $24
	ld   a, c                                        ; $7fda: $79
	xor  d                                           ; $7fdb: $aa
	adc  b                                           ; $7fdc: $88
	xor  e                                           ; $7fdd: $ab
	res  0, a                                        ; $7fde: $cb $87
	adc  d                                           ; $7fe0: $8a
	and  a                                           ; $7fe1: $a7
	ld   b, d                                        ; $7fe2: $42
	inc  h                                           ; $7fe3: $24
	ld   a, c                                        ; $7fe4: $79
	xor  d                                           ; $7fe5: $aa
	adc  b                                           ; $7fe6: $88
	cp   h                                           ; $7fe7: $bc
	jp   c, $9a77                                    ; $7fe8: $da $77 $9a

	and  a                                           ; $7feb: $a7
	ld   b, c                                        ; $7fec: $41
	inc  h                                           ; $7fed: $24
	ld   a, d                                        ; $7fee: $7a
	sbc  c                                           ; $7fef: $99
	adc  b                                           ; $7ff0: $88
	xor  h                                           ; $7ff1: $ac
	reti                                             ; $7ff2: $d9


	ld   [hl], a                                     ; $7ff3: $77
	adc  e                                           ; $7ff4: $8b
	sub  a                                           ; $7ff5: $97
	ld   b, c                                        ; $7ff6: $41
	inc  h                                           ; $7ff7: $24
	adc  d                                           ; $7ff8: $8a
	sbc  c                                           ; $7ff9: $99
	adc  c                                           ; $7ffa: $89
	cp   h                                           ; $7ffb: $bc
	jp   z, $9b77                                    ; $7ffc: $ca $77 $9b

	and  [hl]                                        ; $7fff: $a6
