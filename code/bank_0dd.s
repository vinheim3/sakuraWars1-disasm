; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0dd", ROMX[$4000], BANK[$dd]

	ld   h, c                                        ; $4000: $61
	ld   d, $a5                                      ; $4001: $16 $a5
	ld   b, c                                        ; $4003: $41
	ld   e, l                                        ; $4004: $5d
	sbc  d                                           ; $4005: $9a
	ld   b, l                                        ; $4006: $45
	adc  d                                           ; $4007: $8a
	ld   a, [$8fef]                                  ; $4008: $fa $ef $8f
	ld   [hl], d                                     ; $400b: $72
	ld   sp, $7536                                   ; $400c: $31 $36 $75
	ld   d, [hl]                                     ; $400f: $56
	sbc  c                                           ; $4010: $99
	ld   a, c                                        ; $4011: $79
	add  l                                           ; $4012: $85
	cp   a                                           ; $4013: $bf
	sbc  l                                           ; $4014: $9d
	ld   [$33f5], a                                  ; $4015: $ea $f5 $33
	ld   a, [de]                                     ; $4018: $1a
	ld   h, e                                        ; $4019: $63
	ld   h, e                                        ; $401a: $63
	adc  e                                           ; $401b: $8b
	ld   b, l                                        ; $401c: $45
	ld   a, c                                        ; $401d: $79
	db   $db                                         ; $401e: $db
	ld   l, h                                        ; $401f: $6c
	cp   $f9                                         ; $4020: $fe $f9
	inc  de                                          ; $4022: $13
	ld   d, [hl]                                     ; $4023: $56
	ld   d, h                                        ; $4024: $54
	inc  [hl]                                        ; $4025: $34
	ld   b, a                                        ; $4026: $47
	sub  $39                                         ; $4027: $d6 $39
	xor  c                                           ; $4029: $a9
	cp   d                                           ; $402a: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $402b: $cf
	add  [hl]                                        ; $402c: $86
	and  h                                           ; $402d: $a4
	rst  ToBoot                                         ; $402e: $c7
	inc  de                                          ; $402f: $13
	jr   c, jr_0dd_40a5                              ; $4030: $38 $73

	ld   c, c                                        ; $4032: $49
	ld   [hl], l                                     ; $4033: $75
	sbc  c                                           ; $4034: $99
	cp   [hl]                                        ; $4035: $be
	adc  $d8                                         ; $4036: $ce $d8

jr_0dd_4038:
	ret  z                                           ; $4038: $c8

	ld   [hl-], a                                    ; $4039: $32
	ld   e, c                                        ; $403a: $59
	ld   d, d                                        ; $403b: $52
	rla                                              ; $403c: $17
	reti                                             ; $403d: $d9


	inc  hl                                          ; $403e: $23
	ld   a, e                                        ; $403f: $7b
	db   $fc                                         ; $4040: $fc
	xor  e                                           ; $4041: $ab
	xor  b                                           ; $4042: $a8
	xor  e                                           ; $4043: $ab
	sub  [hl]                                        ; $4044: $96
	ld   sp, $5947                                   ; $4045: $31 $47 $59
	ld   [hl], l                                     ; $4048: $75
	ld   c, c                                        ; $4049: $49
	ld   a, [$fe1a]                                  ; $404a: $fa $1a $fe
	pop  af                                          ; $404d: $f1
	ld   e, a                                        ; $404e: $5f
	cp   h                                           ; $404f: $bc
	ld   de, $6957                                   ; $4050: $11 $57 $69
	sbc  c                                           ; $4053: $99
	ld   [hl], c                                     ; $4054: $71
	sub  a                                           ; $4055: $97
	sbc  a                                           ; $4056: $9f
	ld   l, a                                        ; $4057: $6f
	ldh  a, [c]                                      ; $4058: $f2
	cp   b                                           ; $4059: $b8
	add  hl, sp                                      ; $405a: $39
	ld   hl, $5da6                                   ; $405b: $21 $a6 $5d
	ld   a, e                                        ; $405e: $7b
	add  c                                           ; $405f: $81
	ld   c, e                                        ; $4060: $4b
	rst  $38                                         ; $4061: $ff
	db   $e3                                         ; $4062: $e3
	ld   [hl], $ad                                   ; $4063: $36 $ad
	halt                                             ; $4065: $76
	ld   sp, $a959                                   ; $4066: $31 $59 $a9
	ld   h, h                                        ; $4069: $64
	jr   c, jr_0dd_4038                              ; $406a: $38 $cc

	jp   hl                                          ; $406c: $e9


	ld   l, c                                        ; $406d: $69
	ld   a, l                                        ; $406e: $7d
	add  $64                                         ; $406f: $c6 $64
	dec  d                                           ; $4071: $15
	cp   b                                           ; $4072: $b8
	ld   h, [hl]                                     ; $4073: $66
	xor  h                                           ; $4074: $ac
	ld   [hl], h                                     ; $4075: $74
	dec  hl                                          ; $4076: $2b
	rst  $38                                         ; $4077: $ff
	or   l                                           ; $4078: $b5
	ld   l, b                                        ; $4079: $68
	ld   h, [hl]                                     ; $407a: $66
	ld   a, b                                        ; $407b: $78
	ld   [hl], h                                     ; $407c: $74
	ld   l, d                                        ; $407d: $6a
	ld   a, b                                        ; $407e: $78
	ld   h, e                                        ; $407f: $63
	cp   h                                           ; $4080: $bc
	ld   a, e                                        ; $4081: $7b
	cp   l                                           ; $4082: $bd
	push af                                          ; $4083: $f5
	inc  d                                           ; $4084: $14
	inc  e                                           ; $4085: $1c
	ld   a, [$1a71]                                  ; $4086: $fa $71 $1a
	ld   sp, hl                                      ; $4089: $f9
	add  e                                           ; $408a: $83
	ld   e, l                                        ; $408b: $5d
	call z, Call_0dd_77da                            ; $408c: $cc $da $77
	ld   c, c                                        ; $408f: $49
	add  l                                           ; $4090: $85
	and  a                                           ; $4091: $a7
	ld   e, d                                        ; $4092: $5a
	ld   b, l                                        ; $4093: $45
	and  $77                                         ; $4094: $e6 $77
	dec  e                                           ; $4096: $1d
	cp   $c4                                         ; $4097: $fe $c4
	ld   h, [hl]                                     ; $4099: $66
	ld   l, c                                        ; $409a: $69
	ld   [hl], a                                     ; $409b: $77
	ld   d, [hl]                                     ; $409c: $56
	adc  h                                           ; $409d: $8c
	or   h                                           ; $409e: $b4
	inc  [hl]                                        ; $409f: $34
	xor  h                                           ; $40a0: $ac
	cp   d                                           ; $40a1: $ba
	db   $eb                                         ; $40a2: $eb
	ld   e, b                                        ; $40a3: $58
	ld   c, b                                        ; $40a4: $48

jr_0dd_40a5:
	and  h                                           ; $40a5: $a4
	ld   a, b                                        ; $40a6: $78
	xor  b                                           ; $40a7: $a8
	ld   d, a                                        ; $40a8: $57
	adc  c                                           ; $40a9: $89
	add  [hl]                                        ; $40aa: $86
	adc  h                                           ; $40ab: $8c
	sbc  $74                                         ; $40ac: $de $74
	ld   h, $9a                                      ; $40ae: $26 $9a
	rst  $10                                         ; $40b0: $d7
	add  [hl]                                        ; $40b1: $86
	ld   b, a                                        ; $40b2: $47
	ld   d, a                                        ; $40b3: $57
	call z, $8a79                                    ; $40b4: $cc $79 $8a
	and  h                                           ; $40b7: $a4
	and  a                                           ; $40b8: $a7
	ld   a, b                                        ; $40b9: $78
	ld   l, l                                        ; $40ba: $6d
	add  $41                                         ; $40bb: $c6 $41
	ld   a, a                                        ; $40bd: $7f
	or   a                                           ; $40be: $b7
	ld   d, e                                        ; $40bf: $53
	rst  $28                                         ; $40c0: $ef
	sbc  c                                           ; $40c1: $99
	inc  hl                                          ; $40c2: $23
	cp   h                                           ; $40c3: $bc
	and  a                                           ; $40c4: $a7
	dec  [hl]                                        ; $40c5: $35
	jp   c, Jump_0dd_5b65                            ; $40c6: $da $65 $5b

	or   e                                           ; $40c9: $b3
	adc  h                                           ; $40ca: $8c
	sbc  l                                           ; $40cb: $9d
	ld   [hl], c                                     ; $40cc: $71
	sub  l                                           ; $40cd: $95
	adc  l                                           ; $40ce: $8d
	ld   l, e                                        ; $40cf: $6b
	and  e                                           ; $40d0: $a3
	add  a                                           ; $40d1: $87
	adc  e                                           ; $40d2: $8b
	ld   [hl], a                                     ; $40d3: $77
	sbc  h                                           ; $40d4: $9c
	sub  [hl]                                        ; $40d5: $96
	ld   h, l                                        ; $40d6: $65
	cp   h                                           ; $40d7: $bc
	add  [hl]                                        ; $40d8: $86
	ld   d, [hl]                                     ; $40d9: $56
	cp   e                                           ; $40da: $bb
	sbc  c                                           ; $40db: $99
	and  [hl]                                        ; $40dc: $a6
	ld   h, [hl]                                     ; $40dd: $66
	ld   a, c                                        ; $40de: $79
	ld   a, c                                        ; $40df: $79
	sbc  c                                           ; $40e0: $99
	add  l                                           ; $40e1: $85
	ld   d, a                                        ; $40e2: $57
	cp   b                                           ; $40e3: $b8
	adc  b                                           ; $40e4: $88
	sbc  [hl]                                        ; $40e5: $9e
	add  l                                           ; $40e6: $85
	ld   [hl], a                                     ; $40e7: $77
	call $7557                                       ; $40e8: $cd $57 $75
	jp   z, $8668                                    ; $40eb: $ca $68 $86

	xor  c                                           ; $40ee: $a9
	ld   e, e                                        ; $40ef: $5b
	ld   [hl], l                                     ; $40f0: $75
	cp   b                                           ; $40f1: $b8
	adc  h                                           ; $40f2: $8c
	ld   h, l                                        ; $40f3: $65
	sub  l                                           ; $40f4: $95
	xor  h                                           ; $40f5: $ac
	ld   h, a                                        ; $40f6: $67
	ld   h, [hl]                                     ; $40f7: $66
	xor  d                                           ; $40f8: $aa
	ld   a, d                                        ; $40f9: $7a
	ld   h, l                                        ; $40fa: $65
	add  a                                           ; $40fb: $87
	xor  [hl]                                        ; $40fc: $ae
	add  [hl]                                        ; $40fd: $86
	ld   [hl], h                                     ; $40fe: $74
	ld   a, d                                        ; $40ff: $7a
	adc  b                                           ; $4100: $88
	and  l                                           ; $4101: $a5
	ld   a, d                                        ; $4102: $7a
	adc  c                                           ; $4103: $89
	ld   d, l                                        ; $4104: $55
	ld   a, b                                        ; $4105: $78
	cp   c                                           ; $4106: $b9
	sub  a                                           ; $4107: $97
	ld   h, [hl]                                     ; $4108: $66
	adc  e                                           ; $4109: $8b
	sub  a                                           ; $410a: $97
	ld   b, l                                        ; $410b: $45
	xor  h                                           ; $410c: $ac
	sub  [hl]                                        ; $410d: $96
	ld   h, [hl]                                     ; $410e: $66
	sbc  e                                           ; $410f: $9b
	adc  b                                           ; $4110: $88
	ld   d, a                                        ; $4111: $57
	sub  a                                           ; $4112: $97
	sbc  c                                           ; $4113: $99
	xor  b                                           ; $4114: $a8
	ld   [hl], a                                     ; $4115: $77
	ld   l, b                                        ; $4116: $68
	adc  b                                           ; $4117: $88
	sub  a                                           ; $4118: $97
	sbc  c                                           ; $4119: $99
	halt                                             ; $411a: $76
	ld   d, a                                        ; $411b: $57
	sbc  c                                           ; $411c: $99
	ld   h, a                                        ; $411d: $67
	adc  c                                           ; $411e: $89
	and  a                                           ; $411f: $a7
	ld   a, b                                        ; $4120: $78
	ld   a, b                                        ; $4121: $78
	xor  c                                           ; $4122: $a9
	sbc  c                                           ; $4123: $99
	ld   h, a                                        ; $4124: $67
	adc  d                                           ; $4125: $8a
	sub  a                                           ; $4126: $97
	ld   b, l                                        ; $4127: $45
	sbc  h                                           ; $4128: $9c
	xor  b                                           ; $4129: $a8
	ld   d, [hl]                                     ; $412a: $56
	adc  c                                           ; $412b: $89
	sbc  b                                           ; $412c: $98
	ld   h, a                                        ; $412d: $67
	xor  b                                           ; $412e: $a8
	ld   [hl], l                                     ; $412f: $75
	ld   a, e                                        ; $4130: $7b
	cp   c                                           ; $4131: $b9
	ld   d, l                                        ; $4132: $55
	adc  c                                           ; $4133: $89
	adc  c                                           ; $4134: $89
	ld   h, a                                        ; $4135: $67
	adc  b                                           ; $4136: $88
	add  a                                           ; $4137: $87
	adc  b                                           ; $4138: $88
	sub  a                                           ; $4139: $97
	ld   a, d                                        ; $413a: $7a
	sbc  b                                           ; $413b: $98
	ld   h, l                                        ; $413c: $65
	ld   a, d                                        ; $413d: $7a
	xor  c                                           ; $413e: $a9
	halt                                             ; $413f: $76
	ld   [hl], a                                     ; $4140: $77
	sbc  b                                           ; $4141: $98
	add  [hl]                                        ; $4142: $86
	ld   l, c                                        ; $4143: $69
	sbc  l                                           ; $4144: $9d
	and  [hl]                                        ; $4145: $a6
	ld   d, h                                        ; $4146: $54
	sbc  l                                           ; $4147: $9d
	xor  b                                           ; $4148: $a8
	ld   d, l                                        ; $4149: $55
	sbc  e                                           ; $414a: $9b
	and  a                                           ; $414b: $a7
	ld   h, l                                        ; $414c: $65
	sbc  e                                           ; $414d: $9b
	sbc  c                                           ; $414e: $99
	halt                                             ; $414f: $76
	sbc  c                                           ; $4150: $99
	sbc  b                                           ; $4151: $98
	ld   l, b                                        ; $4152: $68
	adc  b                                           ; $4153: $88
	add  [hl]                                        ; $4154: $86
	ld   l, c                                        ; $4155: $69
	sbc  c                                           ; $4156: $99
	add  [hl]                                        ; $4157: $86
	ld   a, c                                        ; $4158: $79
	sbc  c                                           ; $4159: $99
	halt                                             ; $415a: $76
	ld   a, c                                        ; $415b: $79
	add  a                                           ; $415c: $87
	ld   [hl], a                                     ; $415d: $77
	ld   a, b                                        ; $415e: $78
	sbc  c                                           ; $415f: $99
	add  a                                           ; $4160: $87
	ld   a, b                                        ; $4161: $78
	xor  b                                           ; $4162: $a8
	adc  c                                           ; $4163: $89
	ld   a, b                                        ; $4164: $78
	adc  c                                           ; $4165: $89
	adc  c                                           ; $4166: $89
	halt                                             ; $4167: $76
	ld   [hl], a                                     ; $4168: $77
	adc  c                                           ; $4169: $89
	adc  b                                           ; $416a: $88
	ld   [hl], a                                     ; $416b: $77
	ld   a, b                                        ; $416c: $78
	sbc  b                                           ; $416d: $98
	ld   [hl], a                                     ; $416e: $77
	adc  d                                           ; $416f: $8a
	adc  b                                           ; $4170: $88
	ld   h, a                                        ; $4171: $67
	adc  b                                           ; $4172: $88
	adc  b                                           ; $4173: $88
	sbc  c                                           ; $4174: $99
	add  a                                           ; $4175: $87
	ld   [hl], a                                     ; $4176: $77
	adc  b                                           ; $4177: $88
	sbc  d                                           ; $4178: $9a
	sbc  b                                           ; $4179: $98
	ld   a, b                                        ; $417a: $78
	add  a                                           ; $417b: $87
	ld   [hl], a                                     ; $417c: $77
	sbc  b                                           ; $417d: $98
	sbc  b                                           ; $417e: $98
	ld   a, b                                        ; $417f: $78
	ld   a, c                                        ; $4180: $79
	adc  c                                           ; $4181: $89
	sbc  b                                           ; $4182: $98
	adc  b                                           ; $4183: $88
	sbc  b                                           ; $4184: $98
	sbc  b                                           ; $4185: $98
	ld   a, b                                        ; $4186: $78
	adc  b                                           ; $4187: $88
	sbc  b                                           ; $4188: $98
	ld   [hl], a                                     ; $4189: $77
	ld   a, c                                        ; $418a: $79
	xor  b                                           ; $418b: $a8
	adc  b                                           ; $418c: $88
	ld   a, c                                        ; $418d: $79
	sbc  c                                           ; $418e: $99
	add  a                                           ; $418f: $87
	ld   a, b                                        ; $4190: $78
	sbc  c                                           ; $4191: $99
	sbc  b                                           ; $4192: $98
	adc  c                                           ; $4193: $89
	add  a                                           ; $4194: $87
	sbc  b                                           ; $4195: $98
	adc  b                                           ; $4196: $88
	ld   a, c                                        ; $4197: $79
	add  a                                           ; $4198: $87
	sbc  b                                           ; $4199: $98
	ld   a, b                                        ; $419a: $78
	ld   a, b                                        ; $419b: $78
	sbc  c                                           ; $419c: $99
	adc  c                                           ; $419d: $89
	adc  b                                           ; $419e: $88
	add  a                                           ; $419f: $87
	adc  b                                           ; $41a0: $88
	sbc  b                                           ; $41a1: $98
	adc  b                                           ; $41a2: $88
	adc  c                                           ; $41a3: $89
	sbc  c                                           ; $41a4: $99
	adc  b                                           ; $41a5: $88
	adc  b                                           ; $41a6: $88
	ld   a, b                                        ; $41a7: $78
	ld   a, c                                        ; $41a8: $79
	adc  c                                           ; $41a9: $89
	sub  a                                           ; $41aa: $97
	add  a                                           ; $41ab: $87
	adc  b                                           ; $41ac: $88
	adc  b                                           ; $41ad: $88
	ld   a, c                                        ; $41ae: $79
	adc  b                                           ; $41af: $88
	adc  b                                           ; $41b0: $88
	sbc  b                                           ; $41b1: $98
	sbc  c                                           ; $41b2: $99
	adc  b                                           ; $41b3: $88
	adc  b                                           ; $41b4: $88
	sbc  b                                           ; $41b5: $98
	adc  b                                           ; $41b6: $88
	adc  b                                           ; $41b7: $88
	adc  c                                           ; $41b8: $89

Call_0dd_41b9:
	adc  c                                           ; $41b9: $89
	sbc  c                                           ; $41ba: $99
	adc  b                                           ; $41bb: $88
	adc  b                                           ; $41bc: $88
	sbc  b                                           ; $41bd: $98
	add  a                                           ; $41be: $87
	ld   a, b                                        ; $41bf: $78
	adc  b                                           ; $41c0: $88
	adc  c                                           ; $41c1: $89
	adc  c                                           ; $41c2: $89
	adc  b                                           ; $41c3: $88
	adc  c                                           ; $41c4: $89
	adc  c                                           ; $41c5: $89
	add  a                                           ; $41c6: $87
	ld   a, b                                        ; $41c7: $78
	adc  c                                           ; $41c8: $89
	adc  b                                           ; $41c9: $88
	ld   a, b                                        ; $41ca: $78
	adc  c                                           ; $41cb: $89
	adc  b                                           ; $41cc: $88
	adc  b                                           ; $41cd: $88
	adc  b                                           ; $41ce: $88
	ld   a, b                                        ; $41cf: $78
	adc  b                                           ; $41d0: $88
	sbc  b                                           ; $41d1: $98
	adc  b                                           ; $41d2: $88
	adc  b                                           ; $41d3: $88
	sbc  b                                           ; $41d4: $98
	adc  b                                           ; $41d5: $88
	adc  b                                           ; $41d6: $88
	adc  b                                           ; $41d7: $88
	ld   a, b                                        ; $41d8: $78
	adc  b                                           ; $41d9: $88

Call_0dd_41da:
	adc  b                                           ; $41da: $88
	adc  b                                           ; $41db: $88
	sbc  b                                           ; $41dc: $98
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
	ld   de, $1111                                   ; $41f8: $11 $11 $11
	ld   de, $1111                                   ; $41fb: $11 $11 $11
	ld   de, $1111                                   ; $41fe: $11 $11 $11
	ld   de, $1111                                   ; $4201: $11 $11 $11
	ld   de, $1111                                   ; $4204: $11 $11 $11
	ld   de, $1111                                   ; $4207: $11 $11 $11
	ld   de, $1111                                   ; $420a: $11 $11 $11
	ld   de, $1111                                   ; $420d: $11 $11 $11
	ld   de, $1111                                   ; $4210: $11 $11 $11
	ld   de, $1111                                   ; $4213: $11 $11 $11
	ld   de, $1111                                   ; $4216: $11 $11 $11
	ld   de, $1111                                   ; $4219: $11 $11 $11
	ld   de, $1111                                   ; $421c: $11 $11 $11
	ld   de, $1111                                   ; $421f: $11 $11 $11
	nop                                              ; $4222: $00
	ld   c, b                                        ; $4223: $48
	ld   de, $1111                                   ; $4224: $11 $11 $11
	ld   de, $1111                                   ; $4227: $11 $11 $11
	ld   de, $1111                                   ; $422a: $11 $11 $11
	ld   de, $5413                                   ; $422d: $11 $13 $54
	ld   d, h                                        ; $4230: $54
	ld   d, h                                        ; $4231: $54
	ld   b, c                                        ; $4232: $41
	rra                                              ; $4233: $1f
	rst  $38                                         ; $4234: $ff
	pop  af                                          ; $4235: $f1
	ld   de, $1511                                   ; $4236: $11 $11 $15
	add  c                                           ; $4239: $81
	ld   de, $df1c                                   ; $423a: $11 $1c $df
	sbc  h                                           ; $423d: $9c
	sbc  $e1                                         ; $423e: $de $e1
	ld   de, $1111                                   ; $4240: $11 $11 $11
	ld   de, $1111                                   ; $4243: $11 $11 $11
	ld   de, $1111                                   ; $4246: $11 $11 $11
	ld   de, $1111                                   ; $4249: $11 $11 $11
	ld   de, $5411                                   ; $424c: $11 $11 $54
	ld   b, h                                        ; $424f: $44
	ld   [hl], l                                     ; $4250: $75
	ld   de, $5454                                   ; $4251: $11 $54 $54
	ld   h, a                                        ; $4254: $67
	ld   [hl], d                                     ; $4255: $72
	ld   de, $1111                                   ; $4256: $11 $11 $11
	ld   de, $1112                                   ; $4259: $11 $12 $11
	ld   [de], a                                     ; $425c: $12
	ld   de, $1111                                   ; $425d: $11 $11 $11
	ld   h, [hl]                                     ; $4260: $66
	halt                                             ; $4261: $76
	ld   d, l                                        ; $4262: $55
	ld   de, $8888                                   ; $4263: $11 $88 $88
	adc  b                                           ; $4266: $88
	adc  b                                           ; $4267: $88
	ld   a, b                                        ; $4268: $78
	add  a                                           ; $4269: $87
	add  a                                           ; $426a: $87
	ld   [hl], a                                     ; $426b: $77
	ld   [hl], a                                     ; $426c: $77
	ld   a, b                                        ; $426d: $78
	ld   a, b                                        ; $426e: $78
	adc  b                                           ; $426f: $88
	adc  b                                           ; $4270: $88
	sbc  c                                           ; $4271: $99
	sbc  c                                           ; $4272: $99
	sbc  b                                           ; $4273: $98
	adc  b                                           ; $4274: $88
	adc  c                                           ; $4275: $89
	adc  c                                           ; $4276: $89
	sbc  b                                           ; $4277: $98
	adc  b                                           ; $4278: $88
	adc  b                                           ; $4279: $88
	add  a                                           ; $427a: $87
	ld   [hl], a                                     ; $427b: $77
	ld   [hl], a                                     ; $427c: $77
	ld   [hl], a                                     ; $427d: $77
	ld   [hl], a                                     ; $427e: $77
	ld   h, [hl]                                     ; $427f: $66
	ld   h, [hl]                                     ; $4280: $66
	ld   h, [hl]                                     ; $4281: $66
	ld   h, [hl]                                     ; $4282: $66
	ld   h, a                                        ; $4283: $67
	adc  d                                           ; $4284: $8a

Jump_0dd_4285:
	cp   h                                           ; $4285: $bc

Jump_0dd_4286:
	cp   d                                           ; $4286: $ba
	sbc  b                                           ; $4287: $98
	sbc  c                                           ; $4288: $99
	sbc  c                                           ; $4289: $99
	sbc  c                                           ; $428a: $99
	adc  c                                           ; $428b: $89
	adc  b                                           ; $428c: $88
	ld   [hl], a                                     ; $428d: $77
	ld   [hl], a                                     ; $428e: $77
	ld   a, b                                        ; $428f: $78
	adc  b                                           ; $4290: $88
	halt                                             ; $4291: $76
	ld   h, l                                        ; $4292: $65
	ld   d, l                                        ; $4293: $55
	ld   d, e                                        ; $4294: $53
	ld   de, $ff1c                                   ; $4295: $11 $1c $ff
	cp   $21                                         ; $4298: $fe $21
	inc  de                                          ; $429a: $13
	sbc  l                                           ; $429b: $9d
	ret                                              ; $429c: $c9


	adc  b                                           ; $429d: $88
	xor  [hl]                                        ; $429e: $ae
	jp   z, Jump_0dd_4764                            ; $429f: $ca $64 $47

	xor  d                                           ; $42a2: $aa
	sub  a                                           ; $42a3: $97
	ld   d, [hl]                                     ; $42a4: $56
	adc  d                                           ; $42a5: $8a
	xor  d                                           ; $42a6: $aa
	ld   [hl], l                                     ; $42a7: $75
	ld   h, a                                        ; $42a8: $67
	sbc  e                                           ; $42a9: $9b
	cp   b                                           ; $42aa: $b8
	ld   [hl], a                                     ; $42ab: $77
	adc  c                                           ; $42ac: $89
	cp   c                                           ; $42ad: $b9
	sub  a                                           ; $42ae: $97
	ld   a, b                                        ; $42af: $78
	sbc  c                                           ; $42b0: $99
	add  a                                           ; $42b1: $87
	ld   h, l                                        ; $42b2: $65
	ld   h, a                                        ; $42b3: $67
	adc  b                                           ; $42b4: $88
	add  a                                           ; $42b5: $87
	ld   h, a                                        ; $42b6: $67
	adc  c                                           ; $42b7: $89
	sbc  d                                           ; $42b8: $9a
	adc  b                                           ; $42b9: $88
	ld   a, b                                        ; $42ba: $78
	adc  c                                           ; $42bb: $89
	sbc  c                                           ; $42bc: $99
	adc  b                                           ; $42bd: $88
	sbc  c                                           ; $42be: $99
	sbc  c                                           ; $42bf: $99
	sbc  b                                           ; $42c0: $98
	ld   [hl], a                                     ; $42c1: $77
	ld   [hl], a                                     ; $42c2: $77
	halt                                             ; $42c3: $76
	ld   h, [hl]                                     ; $42c4: $66
	ld   [hl], a                                     ; $42c5: $77
	ld   h, l                                        ; $42c6: $65
	ld   hl, $1411                                   ; $42c7: $21 $11 $14
	rst  $38                                         ; $42ca: $ff
	rst  $38                                         ; $42cb: $ff
	pop  de                                          ; $42cc: $d1
	ld   de, $ff19                                   ; $42cd: $11 $19 $ff
	call z, $caaa                                    ; $42d0: $cc $aa $ca
	sub  a                                           ; $42d3: $97
	ld   h, a                                        ; $42d4: $67
	xor  e                                           ; $42d5: $ab
	cp   c                                           ; $42d6: $b9
	ld   [hl], l                                     ; $42d7: $75
	ld   d, a                                        ; $42d8: $57
	sbc  d                                           ; $42d9: $9a
	sub  l                                           ; $42da: $95
	ld   de, $1f11                                   ; $42db: $11 $11 $1f
	rst  $38                                         ; $42de: $ff
	rst  $38                                         ; $42df: $ff
	ld   de, $8f11                                   ; $42e0: $11 $11 $8f
	ld   a, [$cfdd]                                  ; $42e3: $fa $dd $cf
	rst  $20                                         ; $42e6: $e7
	ld   b, e                                        ; $42e7: $43
	ld   e, e                                        ; $42e8: $5b
	rst  $38                                         ; $42e9: $ff
	and  [hl]                                        ; $42ea: $a6
	ld   de, $9669                                   ; $42eb: $11 $69 $96
	ld   de, $1f11                                   ; $42ee: $11 $11 $1f
	rst  $38                                         ; $42f1: $ff
	rst  $38                                         ; $42f2: $ff
	ld   de, $af11                                   ; $42f3: $11 $11 $af
	cp   $df                                         ; $42f6: $fe $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42f8: $cf
	di                                               ; $42f9: $f3
	ld   de, $ff1c                                   ; $42fa: $11 $1c $ff
	rst  $10                                         ; $42fd: $d7
	ld   de, $a959                                   ; $42fe: $11 $59 $a9
	ld   de, $1611                                   ; $4301: $11 $11 $16
	rst  $38                                         ; $4304: $ff
	rst  $38                                         ; $4305: $ff
	ld   de, $4f11                                   ; $4306: $11 $11 $4f
	rst  $38                                         ; $4309: $ff
	xor  a                                           ; $430a: $af
	rst  $38                                         ; $430b: $ff
	rst  $30                                         ; $430c: $f7
	ld   de, $ff1a                                   ; $430d: $11 $1a $ff
	rst  $20                                         ; $4310: $e7
	ld   de, $9a29                                   ; $4311: $11 $29 $9a
	ld   sp, $1111                                   ; $4314: $31 $11 $11
	rst  $38                                         ; $4317: $ff
	rst  $38                                         ; $4318: $ff
	ld   d, c                                        ; $4319: $51
	ld   de, $ff1f                                   ; $431a: $11 $1f $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $431d: $cf
	db   $fd                                         ; $431e: $fd
	db   $fc                                         ; $431f: $fc
	ld   de, $ff27                                   ; $4320: $11 $27 $ff
	rst  $30                                         ; $4323: $f7
	ld   sp, $971a                                   ; $4324: $31 $1a $97
	ld   sp, $1111                                   ; $4327: $31 $11 $11
	rst  $38                                         ; $432a: $ff
	rst  $38                                         ; $432b: $ff
	pop  hl                                          ; $432c: $e1
	ld   de, $ff1f                                   ; $432d: $11 $1f $ff
	rst  $38                                         ; $4330: $ff
	ld   a, [$11fd]                                  ; $4331: $fa $fd $11
	scf                                              ; $4334: $37
	rst  $38                                         ; $4335: $ff
	rst  $30                                         ; $4336: $f7
	ld   b, c                                        ; $4337: $41
	ld   a, [de]                                     ; $4338: $1a
	and  [hl]                                        ; $4339: $a6
	ld   sp, $1111                                   ; $433a: $31 $11 $11
	rst  $38                                         ; $433d: $ff
	rst  $38                                         ; $433e: $ff
	pop  af                                          ; $433f: $f1
	ld   de, $ff1f                                   ; $4340: $11 $1f $ff
	rst  $38                                         ; $4343: $ff
	ld   sp, hl                                      ; $4344: $f9
	db   $fc                                         ; $4345: $fc
	ld   de, $ff39                                   ; $4346: $11 $39 $ff
	ld   hl, sp+$41                                  ; $4349: $f8 $41
	rla                                              ; $434b: $17
	or   h                                           ; $434c: $b4
	ld   hl, $1111                                   ; $434d: $21 $11 $11
	rst  $38                                         ; $4350: $ff
	rst  $38                                         ; $4351: $ff
	pop  af                                          ; $4352: $f1
	ld   de, $ff1f                                   ; $4353: $11 $1f $ff
	db   $fd                                         ; $4356: $fd
	ld   [$31ed], a                                  ; $4357: $ea $ed $31
	add  hl, sp                                      ; $435a: $39
	rst  $38                                         ; $435b: $ff
	ld   sp, hl                                      ; $435c: $f9
	ld   d, c                                        ; $435d: $51
	inc  d                                           ; $435e: $14
	sub  h                                           ; $435f: $94
	ld   de, $1111                                   ; $4360: $11 $11 $11
	rst  $38                                         ; $4363: $ff
	rst  $38                                         ; $4364: $ff
	pop  af                                          ; $4365: $f1
	ld   de, $ff1c                                   ; $4366: $11 $1c $ff
	db   $fc                                         ; $4369: $fc
	ret  c                                           ; $436a: $d8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $436b: $cf
	ld   h, c                                        ; $436c: $61
	add  hl, sp                                      ; $436d: $39
	rst  $38                                         ; $436e: $ff
	db   $fc                                         ; $436f: $fc
	ld   sp, $9411                                   ; $4370: $31 $11 $94
	ld   [hl-], a                                    ; $4373: $32
	ld   de, rAUD1LEN                                   ; $4374: $11 $11 $ff
	rst  $38                                         ; $4377: $ff
	pop  af                                          ; $4378: $f1
	ld   de, $ff1e                                   ; $4379: $11 $1e $ff
	ei                                               ; $437c: $fb
	ret  c                                           ; $437d: $d8

	rst  JumpTable                                         ; $437e: $df
	ld   h, c                                        ; $437f: $61
	ld   c, d                                        ; $4380: $4a
	rst  $38                                         ; $4381: $ff
	ld   sp, hl                                      ; $4382: $f9
	ld   de, $8511                                   ; $4383: $11 $11 $85
	ld   h, c                                        ; $4386: $61
	ld   de, rAUD1LEN                                   ; $4387: $11 $11 $ff
	rst  $38                                         ; $438a: $ff
	pop  af                                          ; $438b: $f1
	ld   de, $ff1f                                   ; $438c: $11 $1f $ff
	set  1, c                                        ; $438f: $cb $c9
	cp   $31                                         ; $4391: $fe $31
	ld   l, l                                        ; $4393: $6d
	rst  $38                                         ; $4394: $ff
	db   $f4                                         ; $4395: $f4

Jump_0dd_4396:
	ld   de, $8a13                                   ; $4396: $11 $13 $8a
	ld   [hl], c                                     ; $4399: $71
	ld   de, $ff19                                   ; $439a: $11 $19 $ff
	rst  $38                                         ; $439d: $ff
	ld   de, $9f11                                   ; $439e: $11 $11 $9f
	rst  $38                                         ; $43a1: $ff
	sbc  l                                           ; $43a2: $9d
	xor  a                                           ; $43a3: $af
	or   $13                                         ; $43a4: $f6 $13
	cp   a                                           ; $43a6: $bf
	rst  $38                                         ; $43a7: $ff
	ld   h, c                                        ; $43a8: $61
	ld   de, $a81a                                   ; $43a9: $11 $1a $a8
	ld   de, $1f11                                   ; $43ac: $11 $11 $1f
	rst  $38                                         ; $43af: $ff
	pop  af                                          ; $43b0: $f1
	ld   de, rAUD1ENV                                   ; $43b1: $11 $12 $ff
	ld   sp, hl                                      ; $43b4: $f9
	cp   h                                           ; $43b5: $bc
	rst  $38                                         ; $43b6: $ff
	sub  c                                           ; $43b7: $91
	ld   a, [hl-]                                    ; $43b8: $3a
	rst  $38                                         ; $43b9: $ff
	ld   hl, sp+$11                                  ; $43ba: $f8 $11
	ld   de, $829a                                   ; $43bc: $11 $9a $82
	ld   de, rAUD1LEN                                   ; $43bf: $11 $11 $ff
	rst  $38                                         ; $43c2: $ff
	ld   de, $1f11                                   ; $43c3: $11 $11 $1f
	rst  $38                                         ; $43c6: $ff
	ld   a, d                                        ; $43c7: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43c8: $cf
	db   $fc                                         ; $43c9: $fc
	ld   [de], a                                     ; $43ca: $12
	cp   a                                           ; $43cb: $bf
	rst  $38                                         ; $43cc: $ff
	add  c                                           ; $43cd: $81
	ld   de, $a817                                   ; $43ce: $11 $17 $a8
	ld   de, $1f11                                   ; $43d1: $11 $11 $1f
	rst  $38                                         ; $43d4: $ff
	pop  af                                          ; $43d5: $f1
	ld   de, rAUD1LEN                                   ; $43d6: $11 $11 $ff
	rst  $20                                         ; $43d9: $e7
	cp   e                                           ; $43da: $bb
	rst  $38                                         ; $43db: $ff
	pop  bc                                          ; $43dc: $c1
	add  hl, sp                                      ; $43dd: $39
	rst  $38                                         ; $43de: $ff
	ld   hl, sp+$11                                  ; $43df: $f8 $11
	ld   de, $8279                                   ; $43e1: $11 $79 $82
	ld   de, rAUD1LEN                                   ; $43e4: $11 $11 $ff
	rst  $38                                         ; $43e7: $ff
	ld   de, $2f11                                   ; $43e8: $11 $11 $2f
	cp   $6d                                         ; $43eb: $fe $6d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43ed: $cf
	ei                                               ; $43ee: $fb
	inc  de                                          ; $43ef: $13
	xor  a                                           ; $43f0: $af
	rst  $38                                         ; $43f1: $ff
	ld   h, c                                        ; $43f2: $61
	ld   de, $a817                                   ; $43f3: $11 $17 $a8
	ld   de, $af11                                   ; $43f6: $11 $11 $af
	rst  $38                                         ; $43f9: $ff
	pop  af                                          ; $43fa: $f1
	ld   de, $ff19                                   ; $43fb: $11 $19 $ff
	and  a                                           ; $43fe: $a7
	xor  $ff                                         ; $43ff: $ee $ff
	ld   h, c                                        ; $4401: $61
	ld   l, e                                        ; $4402: $6b
	rst  $38                                         ; $4403: $ff
	di                                               ; $4404: $f3
	ld   de, $7711                                   ; $4405: $11 $11 $77
	ld   d, c                                        ; $4408: $51
	ld   de, $ff1f                                   ; $4409: $11 $1f $ff
	rst  $38                                         ; $440c: $ff
	ld   de, rAUD1LEN                                   ; $440d: $11 $11 $ff
	push af                                          ; $4410: $f5
	xor  a                                           ; $4411: $af
	rst  $38                                         ; $4412: $ff
	pop  af                                          ; $4413: $f1
	add  hl, de                                      ; $4414: $19
	rst  $28                                         ; $4415: $ef
	db   $fc                                         ; $4416: $fc
	ld   de, $3911                                   ; $4417: $11 $11 $39
	ld   h, e                                        ; $441a: $63
	ld   de, rAUD1LEN                                   ; $441b: $11 $11 $ff
	rst  $38                                         ; $441e: $ff
	ld   de, $1f11                                   ; $441f: $11 $11 $1f
	db   $fc                                         ; $4422: $fc
	ld   c, a                                        ; $4423: $4f
	rst  $38                                         ; $4424: $ff
	ei                                               ; $4425: $fb
	inc  de                                          ; $4426: $13
	xor  a                                           ; $4427: $af
	rst  $38                                         ; $4428: $ff
	ld   d, c                                        ; $4429: $51
	ld   de, $6315                                   ; $442a: $11 $15 $63
	ld   de, rAUD1LEN                                   ; $442d: $11 $11 $ff
	rst  $38                                         ; $4430: $ff
	pop  af                                          ; $4431: $f1
	ld   de, $ff1c                                   ; $4432: $11 $1c $ff
	ld   e, d                                        ; $4435: $5a
	rst  $38                                         ; $4436: $ff
	rst  $38                                         ; $4437: $ff
	ld   de, $ff9e                                   ; $4438: $11 $9e $ff
	or   c                                           ; $443b: $b1
	ld   de, $5412                                   ; $443c: $11 $12 $54
	ld   hl, $1f11                                   ; $443f: $21 $11 $1f
	rst  $38                                         ; $4442: $ff
	pop  af                                          ; $4443: $f1
	ld   de, rAUD1LEN                                   ; $4444: $11 $11 $ff
	add  h                                           ; $4447: $84
	rst  $38                                         ; $4448: $ff
	rst  $38                                         ; $4449: $ff
	add  c                                           ; $444a: $81
	ld   l, h                                        ; $444b: $6c
	rst  $38                                         ; $444c: $ff
	pop  af                                          ; $444d: $f1
	ld   de, $5511                                   ; $444e: $11 $11 $55
	ld   sp, $1f11                                   ; $4451: $31 $11 $1f
	rst  $38                                         ; $4454: $ff
	rst  $38                                         ; $4455: $ff
	ld   de, rAUD1LEN                                   ; $4456: $11 $11 $ff
	pop  de                                          ; $4459: $d1
	cp   a                                           ; $445a: $bf
	rst  $38                                         ; $445b: $ff
	pop  af                                          ; $445c: $f1
	ld   a, [hl+]                                    ; $445d: $2a
	rst  $38                                         ; $445e: $ff
	push af                                          ; $445f: $f5
	ld   de, $2511                                   ; $4460: $11 $11 $25
	ld   hl, $1911                                   ; $4463: $21 $11 $19
	rst  $38                                         ; $4466: $ff
	rst  $38                                         ; $4467: $ff
	ld   de, $9f11                                   ; $4468: $11 $11 $9f
	pop  af                                          ; $446b: $f1
	ld   l, a                                        ; $446c: $6f
	rst  $38                                         ; $446d: $ff
	db   $f4                                         ; $446e: $f4
	ld   a, [de]                                     ; $446f: $1a
	rst  $28                                         ; $4470: $ef
	ld   hl, sp+$11                                  ; $4471: $f8 $11
	ld   de, $1113                                   ; $4473: $11 $13 $11
	ld   de, rAUD1ENV                                   ; $4476: $11 $12 $ff
	rst  $38                                         ; $4479: $ff
	ld   de, $6f11                                   ; $447a: $11 $11 $6f
	pop  af                                          ; $447d: $f1
	ccf                                              ; $447e: $3f
	rst  $38                                         ; $447f: $ff
	or   $1a                                         ; $4480: $f6 $1a
	rst  $38                                         ; $4482: $ff
	ld   a, [$1111]                                  ; $4483: $fa $11 $11
	ld   [de], a                                     ; $4486: $12
	ld   de, $1111                                   ; $4487: $11 $11 $11
	rst  $38                                         ; $448a: $ff
	rst  $38                                         ; $448b: $ff
	ld   de, $4f11                                   ; $448c: $11 $11 $4f
	ldh  a, [c]                                      ; $448f: $f2
	ccf                                              ; $4490: $3f
	rst  $38                                         ; $4491: $ff
	rst  $30                                         ; $4492: $f7
	ld   c, e                                        ; $4493: $4b
	rst  $38                                         ; $4494: $ff
	ld   sp, hl                                      ; $4495: $f9
	ld   de, $1111                                   ; $4496: $11 $11 $11
	ld   de, $1111                                   ; $4499: $11 $11 $11
	rst  $38                                         ; $449c: $ff
	rst  $38                                         ; $449d: $ff
	ld   b, c                                        ; $449e: $41
	ld   de, $f22f                                   ; $449f: $11 $2f $f2
	ld   c, a                                        ; $44a2: $4f
	rst  $38                                         ; $44a3: $ff
	ld   hl, sp+$6b                                  ; $44a4: $f8 $6b
	rst  $38                                         ; $44a6: $ff
	ld   sp, hl                                      ; $44a7: $f9
	ld   de, $1111                                   ; $44a8: $11 $11 $11
	ld   de, $1111                                   ; $44ab: $11 $11 $11
	rst  $38                                         ; $44ae: $ff
	rst  $38                                         ; $44af: $ff
	ld   de, $4e11                                   ; $44b0: $11 $11 $4e
	or   c                                           ; $44b3: $b1
	adc  a                                           ; $44b4: $8f
	rst  $38                                         ; $44b5: $ff
	rst  $30                                         ; $44b6: $f7
	adc  a                                           ; $44b7: $8f
	rst  $38                                         ; $44b8: $ff
	or   $11                                         ; $44b9: $f6 $11
	ld   de, $1311                                   ; $44bb: $11 $11 $13
	ld   de, $ff1f                                   ; $44be: $11 $1f $ff
	rst  $38                                         ; $44c1: $ff
	ld   de, $6d11                                   ; $44c2: $11 $11 $6d
	ld   d, c                                        ; $44c5: $51
	rst  $38                                         ; $44c6: $ff
	rst  $38                                         ; $44c7: $ff
	or   a                                           ; $44c8: $b7
	rst  JumpTable                                         ; $44c9: $df
	rst  $38                                         ; $44ca: $ff
	jp   nz, $1111                                   ; $44cb: $c2 $11 $11

	ld   de, $1113                                   ; $44ce: $11 $13 $11
	ld   e, a                                        ; $44d1: $5f
	rst  $38                                         ; $44d2: $ff
	pop  af                                          ; $44d3: $f1
	ld   de, $9611                                   ; $44d4: $11 $11 $96
	ld   e, $ff                                      ; $44d7: $1e $ff
	db   $fc                                         ; $44d9: $fc
	adc  l                                           ; $44da: $8d
	rst  $38                                         ; $44db: $ff
	db   $fc                                         ; $44dc: $fc
	ld   sp, $1111                                   ; $44dd: $31 $11 $11
	ld   de, $1811                                   ; $44e0: $11 $11 $18
	rst  $38                                         ; $44e3: $ff
	rst  $38                                         ; $44e4: $ff
	ld   d, c                                        ; $44e5: $51
	ld   de, $3214                                   ; $44e6: $11 $14 $32
	rst  $38                                         ; $44e9: $ff
	cp   $a9                                         ; $44ea: $fe $a9
	rst  $38                                         ; $44ec: $ff
	cp   $95                                         ; $44ed: $fe $95
	ld   sp, $1111                                   ; $44ef: $31 $11 $11
	ld   de, rAUD1LEN                                   ; $44f2: $11 $11 $ff
	rst  $38                                         ; $44f5: $ff
	push af                                          ; $44f6: $f5
	ld   hl, $2111                                   ; $44f7: $21 $11 $21
	ld   l, a                                        ; $44fa: $6f
	rst  $38                                         ; $44fb: $ff
	jp   c, $ffcf                                    ; $44fc: $da $cf $ff

	rst  ToBoot                                         ; $44ff: $c7
	ld   b, d                                        ; $4500: $42
	ld   de, $1111                                   ; $4501: $11 $11 $11
	ld   de, $ff9f                                   ; $4504: $11 $9f $ff
	db   $fc                                         ; $4507: $fc
	sub  [hl]                                        ; $4508: $96
	ld   b, c                                        ; $4509: $41
	ld   hl, $ef2d                                   ; $450a: $21 $2d $ef
	db   $dd                                         ; $450d: $dd
	rst  $28                                         ; $450e: $ef
	cp   $d9                                         ; $450f: $fe $d9
	ld   [hl], l                                     ; $4511: $75
	ld   de, $1111                                   ; $4512: $11 $11 $11
	ld   de, $ff6f                                   ; $4515: $11 $6f $ff
	rst  $38                                         ; $4518: $ff
	db   $fc                                         ; $4519: $fc
	ld   h, c                                        ; $451a: $61
	ld   de, $cd2b                                   ; $451b: $11 $2b $cd
	cp   h                                           ; $451e: $bc
	rst  $38                                         ; $451f: $ff
	cp   $d9                                         ; $4520: $fe $d9
	ld   h, [hl]                                     ; $4522: $66
	ld   de, $1111                                   ; $4523: $11 $11 $11
	ld   de, $ffbf                                   ; $4526: $11 $bf $ff
	rst  $38                                         ; $4529: $ff
	rst  $38                                         ; $452a: $ff
	add  e                                           ; $452b: $83
	ld   de, $ba5a                                   ; $452c: $11 $5a $ba
	adc  h                                           ; $452f: $8c
	rst  $38                                         ; $4530: $ff
	rst  $38                                         ; $4531: $ff
	ld   [$1174], a                                  ; $4532: $ea $74 $11
	ld   de, $1711                                   ; $4535: $11 $11 $17
	rst  $38                                         ; $4538: $ff
	rst  $38                                         ; $4539: $ff
	rst  $38                                         ; $453a: $ff
	ld   [$2375], a                                  ; $453b: $ea $75 $23
	ld   e, c                                        ; $453e: $59
	adc  c                                           ; $453f: $89
	cp   l                                           ; $4540: $bd
	rst  $38                                         ; $4541: $ff
	db   $ed                                         ; $4542: $ed
	call c, $1171                                    ; $4543: $dc $71 $11
	ld   de, $5b11                                   ; $4546: $11 $11 $5b
	rst  $38                                         ; $4549: $ff
	rst  $38                                         ; $454a: $ff
	rst  $38                                         ; $454b: $ff
	or   [hl]                                        ; $454c: $b6
	ld   b, d                                        ; $454d: $42
	ld   e, b                                        ; $454e: $58
	add  a                                           ; $454f: $87
	ld   a, d                                        ; $4550: $7a
	cp   [hl]                                        ; $4551: $be
	call $b6de                                       ; $4552: $cd $de $b6
	ld   de, $1111                                   ; $4555: $11 $11 $11
	dec  d                                           ; $4558: $15
	xor  a                                           ; $4559: $af
	rst  $38                                         ; $455a: $ff
	rst  $38                                         ; $455b: $ff
	db   $fc                                         ; $455c: $fc
	and  l                                           ; $455d: $a5
	halt                                             ; $455e: $76
	ld   b, [hl]                                     ; $455f: $46
	ld   l, c                                        ; $4560: $69
	xor  h                                           ; $4561: $ac
	xor  c                                           ; $4562: $a9
	call $51b8                                       ; $4563: $cd $b8 $51
	ld   de, $1311                                   ; $4566: $11 $11 $13
	ld   d, a                                        ; $4569: $57
	xor  a                                           ; $456a: $af
	rst  $38                                         ; $456b: $ff
	cp   $dd                                         ; $456c: $fe $dd
	xor  c                                           ; $456e: $a9
	add  a                                           ; $456f: $87
	ld   b, [hl]                                     ; $4570: $46
	ld   a, b                                        ; $4571: $78
	xor  b                                           ; $4572: $a8
	cp   e                                           ; $4573: $bb
	xor  b                                           ; $4574: $a8
	ld   d, d                                        ; $4575: $52
	ld   [hl-], a                                    ; $4576: $32
	ld   de, $5913                                   ; $4577: $11 $13 $59
	adc  c                                           ; $457a: $89
	rst  $38                                         ; $457b: $ff
	rst  JumpTable                                         ; $457c: $df
	db   $dd                                         ; $457d: $dd
	db   $fc                                         ; $457e: $fc
	sbc  d                                           ; $457f: $9a
	cp   b                                           ; $4580: $b8
	sub  a                                           ; $4581: $97
	ld   b, [hl]                                     ; $4582: $46
	adc  c                                           ; $4583: $89
	sbc  b                                           ; $4584: $98
	ld   b, h                                        ; $4585: $44
	ld   d, h                                        ; $4586: $54
	ld   hl, $6715                                   ; $4587: $21 $15 $67
	adc  c                                           ; $458a: $89
	xor  h                                           ; $458b: $ac
	jp   c, $bdbb                                    ; $458c: $da $bb $bd

	db   $db                                         ; $458f: $db
	xor  b                                           ; $4590: $a8
	adc  b                                           ; $4591: $88
	sub  a                                           ; $4592: $97
	ld   l, b                                        ; $4593: $68
	ld   [hl], a                                     ; $4594: $77
	ld   d, h                                        ; $4595: $54
	ld   d, [hl]                                     ; $4596: $56
	ld   h, h                                        ; $4597: $64
	inc  [hl]                                        ; $4598: $34
	ld   [hl], a                                     ; $4599: $77
	halt                                             ; $459a: $76
	ld   a, b                                        ; $459b: $78
	sbc  c                                           ; $459c: $99
	adc  d                                           ; $459d: $8a
	sbc  c                                           ; $459e: $99
	xor  c                                           ; $459f: $a9
	adc  d                                           ; $45a0: $8a
	xor  c                                           ; $45a1: $a9
	sub  a                                           ; $45a2: $97
	ld   d, [hl]                                     ; $45a3: $56
	ld   h, [hl]                                     ; $45a4: $66
	ld   h, l                                        ; $45a5: $65
	ld   [hl], a                                     ; $45a6: $77
	ld   l, b                                        ; $45a7: $68
	add  a                                           ; $45a8: $87
	ld   a, b                                        ; $45a9: $78
	sbc  b                                           ; $45aa: $98
	adc  c                                           ; $45ab: $89
	add  a                                           ; $45ac: $87
	sbc  c                                           ; $45ad: $99
	sbc  c                                           ; $45ae: $99
	sbc  c                                           ; $45af: $99
	sbc  d                                           ; $45b0: $9a
	sbc  c                                           ; $45b1: $99
	sbc  c                                           ; $45b2: $99
	sbc  b                                           ; $45b3: $98
	adc  b                                           ; $45b4: $88
	ld   a, b                                        ; $45b5: $78
	adc  c                                           ; $45b6: $89
	adc  c                                           ; $45b7: $89
	xor  c                                           ; $45b8: $a9
	xor  e                                           ; $45b9: $ab
	xor  c                                           ; $45ba: $a9
	sbc  c                                           ; $45bb: $99
	sbc  b                                           ; $45bc: $98
	ld   [hl], a                                     ; $45bd: $77
	adc  c                                           ; $45be: $89
	sbc  b                                           ; $45bf: $98
	sbc  c                                           ; $45c0: $99
	xor  c                                           ; $45c1: $a9
	xor  c                                           ; $45c2: $a9
	sbc  c                                           ; $45c3: $99
	adc  c                                           ; $45c4: $89
	add  a                                           ; $45c5: $87
	ld   [hl], a                                     ; $45c6: $77
	ld   a, b                                        ; $45c7: $78
	adc  b                                           ; $45c8: $88
	adc  c                                           ; $45c9: $89
	xor  c                                           ; $45ca: $a9
	adc  c                                           ; $45cb: $89
	adc  b                                           ; $45cc: $88
	adc  b                                           ; $45cd: $88
	adc  b                                           ; $45ce: $88
	adc  b                                           ; $45cf: $88
	sbc  c                                           ; $45d0: $99
	adc  b                                           ; $45d1: $88
	sbc  c                                           ; $45d2: $99
	sbc  c                                           ; $45d3: $99
	sbc  b                                           ; $45d4: $98
	adc  b                                           ; $45d5: $88
	add  a                                           ; $45d6: $87
	ld   [hl], a                                     ; $45d7: $77
	ld   [hl], a                                     ; $45d8: $77
	ld   a, b                                        ; $45d9: $78
	adc  b                                           ; $45da: $88
	sbc  c                                           ; $45db: $99
	adc  b                                           ; $45dc: $88
	add  a                                           ; $45dd: $87
	ld   [hl], a                                     ; $45de: $77
	ld   a, b                                        ; $45df: $78
	adc  b                                           ; $45e0: $88
	adc  c                                           ; $45e1: $89
	sbc  c                                           ; $45e2: $99
	adc  c                                           ; $45e3: $89
	sbc  c                                           ; $45e4: $99
	adc  b                                           ; $45e5: $88
	adc  b                                           ; $45e6: $88
	adc  b                                           ; $45e7: $88
	ld   [hl], a                                     ; $45e8: $77
	ld   [hl], a                                     ; $45e9: $77
	ld   a, b                                        ; $45ea: $78
	adc  b                                           ; $45eb: $88
	adc  b                                           ; $45ec: $88
	sbc  c                                           ; $45ed: $99
	adc  b                                           ; $45ee: $88
	ld   [hl], a                                     ; $45ef: $77
	ld   a, b                                        ; $45f0: $78
	adc  b                                           ; $45f1: $88
	adc  b                                           ; $45f2: $88
	adc  c                                           ; $45f3: $89
	adc  b                                           ; $45f4: $88
	adc  b                                           ; $45f5: $88
	adc  b                                           ; $45f6: $88
	adc  b                                           ; $45f7: $88
	adc  b                                           ; $45f8: $88
	adc  b                                           ; $45f9: $88
	ld   [hl], a                                     ; $45fa: $77
	ld   [hl], a                                     ; $45fb: $77
	adc  b                                           ; $45fc: $88
	adc  b                                           ; $45fd: $88
	adc  b                                           ; $45fe: $88
	sbc  b                                           ; $45ff: $98
	adc  b                                           ; $4600: $88
	adc  b                                           ; $4601: $88
	add  a                                           ; $4602: $87
	ld   a, b                                        ; $4603: $78
	adc  b                                           ; $4604: $88
	adc  b                                           ; $4605: $88
	adc  b                                           ; $4606: $88
	adc  b                                           ; $4607: $88
	adc  b                                           ; $4608: $88
	adc  b                                           ; $4609: $88
	adc  b                                           ; $460a: $88
	add  a                                           ; $460b: $87
	ld   [hl], a                                     ; $460c: $77
	ld   a, b                                        ; $460d: $78
	adc  b                                           ; $460e: $88
	adc  b                                           ; $460f: $88
	adc  b                                           ; $4610: $88
	adc  b                                           ; $4611: $88
	adc  b                                           ; $4612: $88
	adc  b                                           ; $4613: $88
	adc  b                                           ; $4614: $88
	ld   a, b                                        ; $4615: $78
	adc  b                                           ; $4616: $88
	adc  b                                           ; $4617: $88
	adc  b                                           ; $4618: $88
	adc  b                                           ; $4619: $88
	adc  b                                           ; $461a: $88
	adc  b                                           ; $461b: $88
	adc  b                                           ; $461c: $88
	ld   [hl], a                                     ; $461d: $77
	ld   [hl], a                                     ; $461e: $77
	adc  b                                           ; $461f: $88
	adc  b                                           ; $4620: $88
	adc  b                                           ; $4621: $88
	adc  b                                           ; $4622: $88
	adc  b                                           ; $4623: $88
	adc  b                                           ; $4624: $88
	ld   [hl], a                                     ; $4625: $77
	ld   a, b                                        ; $4626: $78
	adc  b                                           ; $4627: $88
	adc  b                                           ; $4628: $88
	adc  b                                           ; $4629: $88
	adc  b                                           ; $462a: $88
	adc  b                                           ; $462b: $88
	adc  b                                           ; $462c: $88
	adc  b                                           ; $462d: $88
	ld   [hl], a                                     ; $462e: $77
	add  a                                           ; $462f: $87
	adc  b                                           ; $4630: $88
	adc  b                                           ; $4631: $88
	sbc  b                                           ; $4632: $98
	adc  b                                           ; $4633: $88
	adc  b                                           ; $4634: $88
	adc  b                                           ; $4635: $88
	adc  b                                           ; $4636: $88
	adc  b                                           ; $4637: $88
	adc  b                                           ; $4638: $88
	adc  b                                           ; $4639: $88
	adc  b                                           ; $463a: $88
	adc  c                                           ; $463b: $89
	adc  b                                           ; $463c: $88
	adc  b                                           ; $463d: $88
	adc  b                                           ; $463e: $88
	adc  b                                           ; $463f: $88
	ld   [hl], a                                     ; $4640: $77
	adc  b                                           ; $4641: $88
	adc  b                                           ; $4642: $88
	adc  b                                           ; $4643: $88
	sbc  c                                           ; $4644: $99
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
	adc  b                                           ; $4675: $88
	adc  b                                           ; $4676: $88
	sbc  c                                           ; $4677: $99
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
	sbc  c                                           ; $4688: $99
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

Jump_0dd_4764:
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

jr_0dd_47c2:
	adc  b                                           ; $47c2: $88
	adc  b                                           ; $47c3: $88
	adc  b                                           ; $47c4: $88
	adc  b                                           ; $47c5: $88
	adc  b                                           ; $47c6: $88

Call_0dd_47c7:
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
	sbc  b                                           ; $47eb: $98
	sub  a                                           ; $47ec: $97
	sbc  d                                           ; $47ed: $9a
	ld   a, b                                        ; $47ee: $78
	adc  b                                           ; $47ef: $88
	ld   [hl], a                                     ; $47f0: $77
	ld   a, b                                        ; $47f1: $78
	add  a                                           ; $47f2: $87
	ld   [hl], a                                     ; $47f3: $77
	adc  b                                           ; $47f4: $88
	adc  c                                           ; $47f5: $89
	adc  c                                           ; $47f6: $89
	sbc  c                                           ; $47f7: $99
	sbc  c                                           ; $47f8: $99
	sbc  c                                           ; $47f9: $99
	xor  c                                           ; $47fa: $a9
	ld   a, b                                        ; $47fb: $78
	cp   d                                           ; $47fc: $ba
	ld   [hl], a                                     ; $47fd: $77
	adc  c                                           ; $47fe: $89
	sub  a                                           ; $47ff: $97
	ld   l, c                                        ; $4800: $69
	sub  [hl]                                        ; $4801: $96
	ld   h, [hl]                                     ; $4802: $66
	ld   a, b                                        ; $4803: $78
	xor  l                                           ; $4804: $ad
	db   $ec                                         ; $4805: $ec
	xor  e                                           ; $4806: $ab
	xor  b                                           ; $4807: $a8
	ld   l, c                                        ; $4808: $69
	jp   z, Jump_0dd_6777                            ; $4809: $ca $77 $67

	ld   d, h                                        ; $480c: $54
	ld   h, a                                        ; $480d: $67
	ld   h, l                                        ; $480e: $65
	ld   a, d                                        ; $480f: $7a
	jp   z, $ba68                                    ; $4810: $ca $68 $ba

	ld   h, l                                        ; $4813: $65
	ld   a, h                                        ; $4814: $7c
	ret                                              ; $4815: $c9


	ld   h, a                                        ; $4816: $67
	sbc  c                                           ; $4817: $99
	ld   b, c                                        ; $4818: $41
	jr   c, jr_0dd_47c2                              ; $4819: $38 $a7

	ld   h, a                                        ; $481b: $67
	xor  d                                           ; $481c: $aa
	and  a                                           ; $481d: $a7
	ld   d, a                                        ; $481e: $57
	sbc  b                                           ; $481f: $98
	ld   b, e                                        ; $4820: $43
	ld   [hl], $64                                   ; $4821: $36 $64
	ld   b, [hl]                                     ; $4823: $46
	xor  d                                           ; $4824: $aa
	sub  a                                           ; $4825: $97
	sbc  b                                           ; $4826: $98
	cp   c                                           ; $4827: $b9
	ld   l, b                                        ; $4828: $68
	add  [hl]                                        ; $4829: $86
	ld   [hl], a                                     ; $482a: $77
	ld   b, e                                        ; $482b: $43
	ld   b, e                                        ; $482c: $43
	ld   b, l                                        ; $482d: $45
	inc  sp                                          ; $482e: $33
	ld   d, l                                        ; $482f: $55
	ld   d, h                                        ; $4830: $54
	ld   b, [hl]                                     ; $4831: $46
	sbc  c                                           ; $4832: $99
	adc  b                                           ; $4833: $88
	sbc  d                                           ; $4834: $9a
	cp   b                                           ; $4835: $b8
	ld   a, b                                        ; $4836: $78
	sbc  b                                           ; $4837: $98
	ld   [hl], l                                     ; $4838: $75
	ld   b, [hl]                                     ; $4839: $46
	halt                                             ; $483a: $76
	ld   b, l                                        ; $483b: $45
	ld   l, c                                        ; $483c: $69
	sbc  b                                           ; $483d: $98
	ld   a, b                                        ; $483e: $78
	sbc  d                                           ; $483f: $9a
	sub  a                                           ; $4840: $97
	ld   a, b                                        ; $4841: $78
	sbc  c                                           ; $4842: $99
	ld   h, h                                        ; $4843: $64
	ld   b, a                                        ; $4844: $47
	ld   [hl], a                                     ; $4845: $77
	ld   b, l                                        ; $4846: $45
	ld   a, c                                        ; $4847: $79
	and  a                                           ; $4848: $a7
	ld   a, c                                        ; $4849: $79
	cp   e                                           ; $484a: $bb
	xor  c                                           ; $484b: $a9
	sbc  d                                           ; $484c: $9a
	cp   e                                           ; $484d: $bb
	xor  c                                           ; $484e: $a9
	cp   e                                           ; $484f: $bb
	sub  a                                           ; $4850: $97
	ld   a, b                                        ; $4851: $78
	xor  e                                           ; $4852: $ab
	sbc  b                                           ; $4853: $98
	sbc  e                                           ; $4854: $9b
	sbc  c                                           ; $4855: $99
	adc  b                                           ; $4856: $88
	add  a                                           ; $4857: $87
	halt                                             ; $4858: $76
	add  [hl]                                        ; $4859: $86
	ld   h, l                                        ; $485a: $65
	ld   b, h                                        ; $485b: $44
	ld   [hl], $69                                   ; $485c: $36 $69
	add  a                                           ; $485e: $87
	xor  b                                           ; $485f: $a8
	sbc  b                                           ; $4860: $98
	sbc  c                                           ; $4861: $99
	xor  d                                           ; $4862: $aa
	sbc  d                                           ; $4863: $9a
	sbc  d                                           ; $4864: $9a
	xor  c                                           ; $4865: $a9
	sbc  c                                           ; $4866: $99
	sbc  c                                           ; $4867: $99
	sbc  d                                           ; $4868: $9a
	adc  b                                           ; $4869: $88
	adc  b                                           ; $486a: $88
	sbc  c                                           ; $486b: $99
	ld   [hl], a                                     ; $486c: $77
	adc  b                                           ; $486d: $88
	halt                                             ; $486e: $76
	ld   h, [hl]                                     ; $486f: $66
	ld   h, [hl]                                     ; $4870: $66
	ld   d, [hl]                                     ; $4871: $56
	ld   h, [hl]                                     ; $4872: $66
	ld   d, l                                        ; $4873: $55
	ld   d, [hl]                                     ; $4874: $56
	ld   h, a                                        ; $4875: $67
	ld   [hl], a                                     ; $4876: $77
	adc  c                                           ; $4877: $89
	xor  e                                           ; $4878: $ab
	call c, $dedd                                    ; $4879: $dc $dd $de
	call c, $ccdd                                    ; $487c: $dc $dd $cc
	xor  d                                           ; $487f: $aa
	sbc  c                                           ; $4880: $99
	add  a                                           ; $4881: $87
	ld   d, h                                        ; $4882: $54
	ld   [hl-], a                                    ; $4883: $32
	ld   de, $1111                                   ; $4884: $11 $11 $11
	ld   de, $6914                                   ; $4887: $11 $14 $69
	cp   l                                           ; $488a: $bd
	rst  $38                                         ; $488b: $ff
	rst  $38                                         ; $488c: $ff
	rst  $38                                         ; $488d: $ff
	rst  $38                                         ; $488e: $ff
	rst  $38                                         ; $488f: $ff
	res  3, b                                        ; $4890: $cb $98
	ld   h, [hl]                                     ; $4892: $66
	ld   b, l                                        ; $4893: $45
	ld   h, a                                        ; $4894: $67
	halt                                             ; $4895: $76
	ld   h, l                                        ; $4896: $65
	ld   d, h                                        ; $4897: $54
	ld   de, $1111                                   ; $4898: $11 $11 $11
	ld   de, $9e24                                   ; $489b: $11 $24 $9e
	rst  $38                                         ; $489e: $ff
	rst  $38                                         ; $489f: $ff
	rst  $38                                         ; $48a0: $ff
	rst  $38                                         ; $48a1: $ff
	rst  $38                                         ; $48a2: $ff
	jp   hl                                          ; $48a3: $e9


	ld   [hl], l                                     ; $48a4: $75
	ld   b, d                                        ; $48a5: $42
	dec  [hl]                                        ; $48a6: $35
	ld   b, [hl]                                     ; $48a7: $46
	ld   a, c                                        ; $48a8: $79
	sbc  b                                           ; $48a9: $98
	ld   h, l                                        ; $48aa: $65
	ld   b, c                                        ; $48ab: $41
	ld   de, $1111                                   ; $48ac: $11 $11 $11
	ld   [de], a                                     ; $48af: $12
	ld   c, b                                        ; $48b0: $48
	rst  $38                                         ; $48b1: $ff
	rst  $38                                         ; $48b2: $ff
	rst  $38                                         ; $48b3: $ff
	rst  $38                                         ; $48b4: $ff
	rst  $38                                         ; $48b5: $ff
	ei                                               ; $48b6: $fb
	add  a                                           ; $48b7: $87
	ld   d, e                                        ; $48b8: $53
	inc  hl                                          ; $48b9: $23
	dec  [hl]                                        ; $48ba: $35
	sbc  e                                           ; $48bb: $9b
	cp   c                                           ; $48bc: $b9
	add  [hl]                                        ; $48bd: $86
	ld   d, e                                        ; $48be: $53
	ld   de, $1111                                   ; $48bf: $11 $11 $11
	ld   de, $af35                                   ; $48c2: $11 $35 $af
	rst  $38                                         ; $48c5: $ff
	rst  $38                                         ; $48c6: $ff
	rst  $38                                         ; $48c7: $ff
	rst  $38                                         ; $48c8: $ff
	db   $fc                                         ; $48c9: $fc
	ld   [hl], l                                     ; $48ca: $75
	ld   d, l                                        ; $48cb: $55
	ld   b, e                                        ; $48cc: $43
	ld   b, h                                        ; $48cd: $44
	ld   a, e                                        ; $48ce: $7b
	call z, Call_0dd_55a7                            ; $48cf: $cc $a7 $55
	ld   hl, $1111                                   ; $48d2: $21 $11 $11
	ld   de, $7c47                                   ; $48d5: $11 $47 $7c
	rst  $38                                         ; $48d8: $ff
	rst  $38                                         ; $48d9: $ff
	rst  $38                                         ; $48da: $ff
	rst  $38                                         ; $48db: $ff
	rst  $38                                         ; $48dc: $ff
	add  $44                                         ; $48dd: $c6 $44
	ld   b, l                                        ; $48df: $45
	ld   b, [hl]                                     ; $48e0: $46
	ld   l, c                                        ; $48e1: $69
	call Call_0dd_75c9                               ; $48e2: $cd $c9 $75
	ld   b, c                                        ; $48e5: $41
	ld   de, $1111                                   ; $48e6: $11 $11 $11
	inc  d                                           ; $48e9: $14
	ld   e, d                                        ; $48ea: $5a
	rst  $38                                         ; $48eb: $ff
	rst  $38                                         ; $48ec: $ff
	rst  $38                                         ; $48ed: $ff
	rst  $38                                         ; $48ee: $ff
	rst  $38                                         ; $48ef: $ff
	rst  $10                                         ; $48f0: $d7
	ld   d, h                                        ; $48f1: $54
	ld   d, [hl]                                     ; $48f2: $56
	ld   d, l                                        ; $48f3: $55
	ld   l, c                                        ; $48f4: $69
	adc  $da                                         ; $48f5: $ce $da
	ld   [hl], a                                     ; $48f7: $77
	ld   d, h                                        ; $48f8: $54
	ld   hl, $1111                                   ; $48f9: $21 $11 $11
	ld   [de], a                                     ; $48fc: $12
	ld   b, l                                        ; $48fd: $45
	cp   a                                           ; $48fe: $bf
	rst  $38                                         ; $48ff: $ff
	rst  $38                                         ; $4900: $ff
	rst  $38                                         ; $4901: $ff
	rst  $38                                         ; $4902: $ff
	ei                                               ; $4903: $fb
	ld   h, h                                        ; $4904: $64
	ld   d, a                                        ; $4905: $57
	adc  b                                           ; $4906: $88
	ld   [hl], a                                     ; $4907: $77
	sbc  h                                           ; $4908: $9c
	xor  $a7                                         ; $4909: $ee $a7
	ld   b, e                                        ; $490b: $43
	ld   hl, $1111                                   ; $490c: $21 $11 $11
	ld   de, $9d48                                   ; $490f: $11 $48 $9d
	rst  $38                                         ; $4912: $ff
	rst  $38                                         ; $4913: $ff
	rst  $38                                         ; $4914: $ff
	rst  $28                                         ; $4915: $ef
	xor  $a7                                         ; $4916: $ee $a7
	ld   d, l                                        ; $4918: $55
	ld   l, c                                        ; $4919: $69
	sbc  c                                           ; $491a: $99
	cp   h                                           ; $491b: $bc
	sbc  $da                                         ; $491c: $de $da
	ld   h, h                                        ; $491e: $64
	ld   hl, $1111                                   ; $491f: $21 $11 $11
	ld   de, $aa14                                   ; $4922: $11 $14 $aa
	rst  JumpTable                                         ; $4925: $df
	rst  $38                                         ; $4926: $ff
	rst  $38                                         ; $4927: $ff
	rst  $38                                         ; $4928: $ff
	db   $ec                                         ; $4929: $ec
	cp   c                                           ; $492a: $b9
	add  a                                           ; $492b: $87
	sbc  b                                           ; $492c: $98
	sbc  d                                           ; $492d: $9a
	sbc  d                                           ; $492e: $9a
	call $85cc                                       ; $492f: $cd $cc $85
	ld   b, d                                        ; $4932: $42
	ld   de, $1111                                   ; $4933: $11 $11 $11
	ld   de, $cf59                                   ; $4936: $11 $59 $cf
	rst  $38                                         ; $4939: $ff
	rst  $38                                         ; $493a: $ff
	cp   $ed                                         ; $493b: $fe $ed
	db   $ec                                         ; $493d: $ec
	xor  c                                           ; $493e: $a9
	ld   a, c                                        ; $493f: $79
	adc  e                                           ; $4940: $8b
	cp   d                                           ; $4941: $ba
	cp   e                                           ; $4942: $bb
	cp   h                                           ; $4943: $bc
	cp   b                                           ; $4944: $b8
	ld   b, e                                        ; $4945: $43
	ld   de, $1111                                   ; $4946: $11 $11 $11
	ld   de, $8c25                                   ; $4949: $11 $25 $8c
	rst  $38                                         ; $494c: $ff
	rst  $38                                         ; $494d: $ff
	call c, $ffbd                                    ; $494e: $dc $bd $ff
	ret  c                                           ; $4951: $d8

	ld   h, [hl]                                     ; $4952: $66
	sbc  d                                           ; $4953: $9a
	cp   e                                           ; $4954: $bb
	sbc  e                                           ; $4955: $9b
	xor  h                                           ; $4956: $ac
	bit  6, e                                        ; $4957: $cb $73
	ld   de, $1111                                   ; $4959: $11 $11 $11
	ld   de, $9d11                                   ; $495c: $11 $11 $9d
	rst  JumpTable                                         ; $495f: $df
	db   $fc                                         ; $4960: $fc
	cp   [hl]                                        ; $4961: $be
	db   $ed                                         ; $4962: $ed
	db   $fd                                         ; $4963: $fd
	xor  d                                           ; $4964: $aa
	sbc  c                                           ; $4965: $99
	sbc  e                                           ; $4966: $9b
	xor  c                                           ; $4967: $a9
	cp   d                                           ; $4968: $ba
	cp   h                                           ; $4969: $bc
	cp   b                                           ; $496a: $b8
	ld   d, e                                        ; $496b: $53
	ld   [hl+], a                                    ; $496c: $22
	ld   sp, $1111                                   ; $496d: $31 $11 $11
	inc  de                                          ; $4970: $13
	ld   e, d                                        ; $4971: $5a
	call z, $ddcc                                    ; $4972: $cc $cc $dd
	rst  $38                                         ; $4975: $ff
	cp   e                                           ; $4976: $bb
	xor  h                                           ; $4977: $ac
	xor  $c9                                         ; $4978: $ee $c9
	ld   a, b                                        ; $497a: $78
	xor  h                                           ; $497b: $ac
	db   $dd                                         ; $497c: $dd
	sub  [hl]                                        ; $497d: $96
	ld   d, h                                        ; $497e: $54
	ld   b, h                                        ; $497f: $44
	ld   sp, $1111                                   ; $4980: $31 $11 $11
	ld   [de], a                                     ; $4983: $12
	ld   d, [hl]                                     ; $4984: $56
	ld   l, e                                        ; $4985: $6b
	set  5, l                                        ; $4986: $cb $ed
	res  7, h                                        ; $4988: $cb $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $498a: $cf
	db   $db                                         ; $498b: $db
	cp   b                                           ; $498c: $b8
	xor  e                                           ; $498d: $ab
	xor  e                                           ; $498e: $ab
	cp   d                                           ; $498f: $ba
	sbc  b                                           ; $4990: $98
	halt                                             ; $4991: $76
	ld   h, h                                        ; $4992: $64
	ld   hl, $1111                                   ; $4993: $21 $11 $11
	ld   de, $7b35                                   ; $4996: $11 $35 $7b
	res  5, e                                        ; $4999: $cb $ab
	cp   h                                           ; $499b: $bc
	rst  $38                                         ; $499c: $ff
	db   $db                                         ; $499d: $db
	xor  d                                           ; $499e: $aa
	xor  e                                           ; $499f: $ab
	cp   e                                           ; $49a0: $bb
	cp   c                                           ; $49a1: $b9
	cp   e                                           ; $49a2: $bb
	xor  b                                           ; $49a3: $a8
	ld   [hl], l                                     ; $49a4: $75
	dec  [hl]                                        ; $49a5: $35
	ld   d, h                                        ; $49a6: $54
	ld   b, c                                        ; $49a7: $41
	ld   de, $5613                                   ; $49a8: $11 $13 $56
	adc  c                                           ; $49ab: $89
	xor  h                                           ; $49ac: $ac
	call c, $9bba                                    ; $49ad: $dc $ba $9b
	call $9adc                                       ; $49b0: $cd $dc $9a
	cp   d                                           ; $49b3: $ba
	jp   z, $8899                                    ; $49b4: $ca $99 $88

	halt                                             ; $49b7: $76
	ld   d, e                                        ; $49b8: $53
	ld   b, e                                        ; $49b9: $43
	inc  sp                                          ; $49ba: $33
	ld   [hl+], a                                    ; $49bb: $22
	ld   [hl+], a                                    ; $49bc: $22
	ld   b, a                                        ; $49bd: $47
	add  a                                           ; $49be: $87
	ld   a, b                                        ; $49bf: $78
	sbc  e                                           ; $49c0: $9b
	call z, $dbbc                                    ; $49c1: $cc $bc $db
	adc  $bb                                         ; $49c4: $ce $bb
	cp   d                                           ; $49c6: $ba
	sbc  b                                           ; $49c7: $98
	sub  a                                           ; $49c8: $97
	ld   [hl], a                                     ; $49c9: $77
	ld   d, l                                        ; $49ca: $55
	ld   d, l                                        ; $49cb: $55
	ld   b, l                                        ; $49cc: $45
	ld   d, e                                        ; $49cd: $53
	ld   [hl-], a                                    ; $49ce: $32
	inc  de                                          ; $49cf: $13
	ld   h, a                                        ; $49d0: $67
	add  a                                           ; $49d1: $87
	ld   b, a                                        ; $49d2: $47
	cp   d                                           ; $49d3: $ba
	call z, $beb8                                    ; $49d4: $cc $b8 $be
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49d7: $cf
	and  a                                           ; $49d8: $a7
	adc  c                                           ; $49d9: $89
	sbc  c                                           ; $49da: $99
	xor  b                                           ; $49db: $a8
	ld   d, a                                        ; $49dc: $57
	ld   h, [hl]                                     ; $49dd: $66
	add  a                                           ; $49de: $87
	ld   d, l                                        ; $49df: $55
	ld   b, d                                        ; $49e0: $42
	dec  [hl]                                        ; $49e1: $35
	ld   d, a                                        ; $49e2: $57
	ld   h, h                                        ; $49e3: $64
	ld   d, h                                        ; $49e4: $54
	ld   e, b                                        ; $49e5: $58
	jp   z, $9b9b                                    ; $49e6: $ca $9b $9b

	db   $dd                                         ; $49e9: $dd
	res  5, c                                        ; $49ea: $cb $a9
	sbc  e                                           ; $49ec: $9b
	xor  e                                           ; $49ed: $ab
	and  a                                           ; $49ee: $a7
	ld   h, h                                        ; $49ef: $64
	ld   h, a                                        ; $49f0: $67
	adc  b                                           ; $49f1: $88
	ld   [hl], l                                     ; $49f2: $75
	ld   b, e                                        ; $49f3: $43
	ld   b, l                                        ; $49f4: $45
	ld   h, [hl]                                     ; $49f5: $66
	halt                                             ; $49f6: $76
	ld   d, a                                        ; $49f7: $57
	ld   a, b                                        ; $49f8: $78
	xor  c                                           ; $49f9: $a9
	xor  e                                           ; $49fa: $ab
	cp   c                                           ; $49fb: $b9
	sbc  e                                           ; $49fc: $9b
	xor  h                                           ; $49fd: $ac
	cp   d                                           ; $49fe: $ba
	sbc  c                                           ; $49ff: $99
	xor  c                                           ; $4a00: $a9
	and  a                                           ; $4a01: $a7
	ld   h, [hl]                                     ; $4a02: $66
	ld   h, a                                        ; $4a03: $67
	adc  b                                           ; $4a04: $88
	ld   h, l                                        ; $4a05: $65
	ld   b, h                                        ; $4a06: $44
	ld   d, a                                        ; $4a07: $57
	ld   [hl], l                                     ; $4a08: $75
	ld   d, [hl]                                     ; $4a09: $56
	ld   d, a                                        ; $4a0a: $57
	xor  c                                           ; $4a0b: $a9
	sbc  b                                           ; $4a0c: $98
	ld   a, d                                        ; $4a0d: $7a
	xor  e                                           ; $4a0e: $ab
	cp   e                                           ; $4a0f: $bb
	or   a                                           ; $4a10: $b7
	xor  h                                           ; $4a11: $ac
	xor  l                                           ; $4a12: $ad
	cp   b                                           ; $4a13: $b8
	ld   [hl], a                                     ; $4a14: $77
	halt                                             ; $4a15: $76
	adc  b                                           ; $4a16: $88
	ld   h, a                                        ; $4a17: $67
	halt                                             ; $4a18: $76
	ld   h, [hl]                                     ; $4a19: $66
	ld   h, l                                        ; $4a1a: $65
	ld   a, b                                        ; $4a1b: $78
	ld   [hl], a                                     ; $4a1c: $77
	ld   [hl], a                                     ; $4a1d: $77
	ld   l, c                                        ; $4a1e: $69
	add  a                                           ; $4a1f: $87
	adc  b                                           ; $4a20: $88
	sbc  d                                           ; $4a21: $9a
	cp   c                                           ; $4a22: $b9
	sbc  d                                           ; $4a23: $9a
	adc  b                                           ; $4a24: $88
	xor  d                                           ; $4a25: $aa
	xor  h                                           ; $4a26: $ac
	sbc  b                                           ; $4a27: $98
	halt                                             ; $4a28: $76
	ld   h, a                                        ; $4a29: $67
	sub  a                                           ; $4a2a: $97
	halt                                             ; $4a2b: $76
	ld   d, a                                        ; $4a2c: $57
	ld   [hl], a                                     ; $4a2d: $77
	adc  b                                           ; $4a2e: $88
	ld   h, l                                        ; $4a2f: $65
	ld   h, [hl]                                     ; $4a30: $66
	ld   a, d                                        ; $4a31: $7a
	add  a                                           ; $4a32: $87
	add  a                                           ; $4a33: $87
	sbc  d                                           ; $4a34: $9a
	xor  b                                           ; $4a35: $a8
	ld   [hl], a                                     ; $4a36: $77
	xor  l                                           ; $4a37: $ad
	db   $db                                         ; $4a38: $db
	adc  b                                           ; $4a39: $88
	sbc  c                                           ; $4a3a: $99
	and  a                                           ; $4a3b: $a7
	ld   h, [hl]                                     ; $4a3c: $66
	ld   a, b                                        ; $4a3d: $78
	adc  c                                           ; $4a3e: $89
	ld   h, l                                        ; $4a3f: $65
	ld   d, [hl]                                     ; $4a40: $56
	ld   a, b                                        ; $4a41: $78
	halt                                             ; $4a42: $76
	adc  c                                           ; $4a43: $89
	sbc  b                                           ; $4a44: $98
	ld   h, a                                        ; $4a45: $67
	adc  c                                           ; $4a46: $89
	xor  c                                           ; $4a47: $a9
	sub  a                                           ; $4a48: $97
	adc  c                                           ; $4a49: $89
	sbc  d                                           ; $4a4a: $9a
	xor  b                                           ; $4a4b: $a8
	sbc  d                                           ; $4a4c: $9a
	sbc  b                                           ; $4a4d: $98
	adc  b                                           ; $4a4e: $88
	add  a                                           ; $4a4f: $87
	adc  b                                           ; $4a50: $88
	adc  b                                           ; $4a51: $88
	ld   a, b                                        ; $4a52: $78
	ld   a, b                                        ; $4a53: $78
	ld   [hl], l                                     ; $4a54: $75
	ld   h, a                                        ; $4a55: $67
	sub  a                                           ; $4a56: $97
	ld   h, a                                        ; $4a57: $67
	ld   a, d                                        ; $4a58: $7a
	adc  b                                           ; $4a59: $88
	add  a                                           ; $4a5a: $87
	adc  d                                           ; $4a5b: $8a
	xor  d                                           ; $4a5c: $aa
	xor  b                                           ; $4a5d: $a8
	ld   a, d                                        ; $4a5e: $7a
	cp   b                                           ; $4a5f: $b8
	adc  b                                           ; $4a60: $88
	ld   h, a                                        ; $4a61: $67
	xor  b                                           ; $4a62: $a8
	ld   l, c                                        ; $4a63: $69
	add  a                                           ; $4a64: $87
	sbc  b                                           ; $4a65: $98
	ld   a, b                                        ; $4a66: $78
	add  [hl]                                        ; $4a67: $86
	ld   h, a                                        ; $4a68: $67
	ld   d, [hl]                                     ; $4a69: $56
	adc  b                                           ; $4a6a: $88
	add  a                                           ; $4a6b: $87
	ld   a, b                                        ; $4a6c: $78
	sbc  b                                           ; $4a6d: $98
	adc  d                                           ; $4a6e: $8a
	xor  b                                           ; $4a6f: $a8
	sbc  b                                           ; $4a70: $98
	ld   [hl], a                                     ; $4a71: $77
	sbc  c                                           ; $4a72: $99
	sbc  c                                           ; $4a73: $99
	sbc  c                                           ; $4a74: $99
	adc  b                                           ; $4a75: $88
	sbc  b                                           ; $4a76: $98
	ld   [hl], a                                     ; $4a77: $77
	sbc  d                                           ; $4a78: $9a
	add  a                                           ; $4a79: $87
	ld   h, [hl]                                     ; $4a7a: $66
	adc  d                                           ; $4a7b: $8a
	add  a                                           ; $4a7c: $87
	ld   h, [hl]                                     ; $4a7d: $66
	adc  c                                           ; $4a7e: $89
	adc  b                                           ; $4a7f: $88
	ld   [hl], a                                     ; $4a80: $77
	sbc  b                                           ; $4a81: $98
	adc  d                                           ; $4a82: $8a
	adc  b                                           ; $4a83: $88
	adc  c                                           ; $4a84: $89
	ld   [hl], a                                     ; $4a85: $77
	add  a                                           ; $4a86: $87
	adc  c                                           ; $4a87: $89
	halt                                             ; $4a88: $76
	ld   a, b                                        ; $4a89: $78
	ld   a, c                                        ; $4a8a: $79
	add  a                                           ; $4a8b: $87
	sbc  c                                           ; $4a8c: $99
	adc  c                                           ; $4a8d: $89
	add  a                                           ; $4a8e: $87
	halt                                             ; $4a8f: $76
	ld   [hl], a                                     ; $4a90: $77
	xor  b                                           ; $4a91: $a8
	ld   l, b                                        ; $4a92: $68
	ld   a, b                                        ; $4a93: $78
	sbc  b                                           ; $4a94: $98
	sbc  b                                           ; $4a95: $98
	ld   l, b                                        ; $4a96: $68
	xor  d                                           ; $4a97: $aa
	adc  d                                           ; $4a98: $8a
	ld   [hl], a                                     ; $4a99: $77
	add  l                                           ; $4a9a: $85
	ld   a, b                                        ; $4a9b: $78
	adc  c                                           ; $4a9c: $89
	adc  c                                           ; $4a9d: $89
	sbc  b                                           ; $4a9e: $98
	adc  c                                           ; $4a9f: $89
	sbc  b                                           ; $4aa0: $98
	halt                                             ; $4aa1: $76
	ld   a, d                                        ; $4aa2: $7a
	and  a                                           ; $4aa3: $a7
	ld   [hl], l                                     ; $4aa4: $75
	ld   l, c                                        ; $4aa5: $69
	sbc  b                                           ; $4aa6: $98
	or   a                                           ; $4aa7: $b7
	ld   a, c                                        ; $4aa8: $79
	adc  c                                           ; $4aa9: $89
	sub  a                                           ; $4aaa: $97
	adc  d                                           ; $4aab: $8a
	ld   [hl], a                                     ; $4aac: $77
	adc  b                                           ; $4aad: $88
	adc  b                                           ; $4aae: $88
	halt                                             ; $4aaf: $76
	ld   a, c                                        ; $4ab0: $79
	xor  c                                           ; $4ab1: $a9
	sub  a                                           ; $4ab2: $97
	ld   a, c                                        ; $4ab3: $79
	add  a                                           ; $4ab4: $87
	sbc  c                                           ; $4ab5: $99
	ld   a, b                                        ; $4ab6: $78
	ld   h, l                                        ; $4ab7: $65
	ld   h, a                                        ; $4ab8: $67
	adc  b                                           ; $4ab9: $88
	add  a                                           ; $4aba: $87
	ld   [hl], a                                     ; $4abb: $77
	sbc  b                                           ; $4abc: $98
	adc  b                                           ; $4abd: $88
	ld   a, c                                        ; $4abe: $79
	ld   a, b                                        ; $4abf: $78
	adc  c                                           ; $4ac0: $89
	add  [hl]                                        ; $4ac1: $86
	ld   h, a                                        ; $4ac2: $67
	sbc  b                                           ; $4ac3: $98
	ld   [hl], a                                     ; $4ac4: $77
	ld   l, b                                        ; $4ac5: $68
	sbc  b                                           ; $4ac6: $98
	sbc  b                                           ; $4ac7: $98
	ld   a, c                                        ; $4ac8: $79
	sub  a                                           ; $4ac9: $97
	adc  c                                           ; $4aca: $89
	adc  c                                           ; $4acb: $89
	add  a                                           ; $4acc: $87
	ld   l, b                                        ; $4acd: $68
	adc  c                                           ; $4ace: $89
	cp   b                                           ; $4acf: $b8
	ld   h, a                                        ; $4ad0: $67
	ld   a, b                                        ; $4ad1: $78
	sub  a                                           ; $4ad2: $97
	ld   h, a                                        ; $4ad3: $67
	sbc  b                                           ; $4ad4: $98
	adc  c                                           ; $4ad5: $89
	sbc  b                                           ; $4ad6: $98
	add  [hl]                                        ; $4ad7: $86
	add  a                                           ; $4ad8: $87
	adc  c                                           ; $4ad9: $89
	sbc  c                                           ; $4ada: $99
	ld   a, c                                        ; $4adb: $79
	add  a                                           ; $4adc: $87
	sbc  b                                           ; $4add: $98
	adc  b                                           ; $4ade: $88
	ld   h, a                                        ; $4adf: $67
	cp   d                                           ; $4ae0: $ba
	ld   a, b                                        ; $4ae1: $78
	add  a                                           ; $4ae2: $87
	cp   d                                           ; $4ae3: $ba
	ld   h, a                                        ; $4ae4: $67
	sub  a                                           ; $4ae5: $97
	sbc  c                                           ; $4ae6: $99
	ld   l, c                                        ; $4ae7: $69
	and  [hl]                                        ; $4ae8: $a6
	ld   a, c                                        ; $4ae9: $79
	sbc  c                                           ; $4aea: $99
	sub  a                                           ; $4aeb: $97
	ld   a, c                                        ; $4aec: $79
	add  a                                           ; $4aed: $87
	sbc  b                                           ; $4aee: $98
	sbc  c                                           ; $4aef: $99
	ld   a, b                                        ; $4af0: $78
	sbc  b                                           ; $4af1: $98
	adc  b                                           ; $4af2: $88
	ld   [hl], a                                     ; $4af3: $77
	sbc  c                                           ; $4af4: $99
	add  a                                           ; $4af5: $87
	ld   [hl], a                                     ; $4af6: $77
	sbc  c                                           ; $4af7: $99
	sbc  b                                           ; $4af8: $98
	xor  e                                           ; $4af9: $ab
	sub  a                                           ; $4afa: $97
	ld   d, l                                        ; $4afb: $55
	adc  d                                           ; $4afc: $8a
	xor  c                                           ; $4afd: $a9
	sbc  c                                           ; $4afe: $99
	adc  b                                           ; $4aff: $88
	sub  a                                           ; $4b00: $97
	adc  d                                           ; $4b01: $8a
	sbc  c                                           ; $4b02: $99
	adc  b                                           ; $4b03: $88
	ld   a, c                                        ; $4b04: $79
	sub  a                                           ; $4b05: $97
	sub  [hl]                                        ; $4b06: $96
	ld   a, c                                        ; $4b07: $79
	xor  c                                           ; $4b08: $a9
	ld   a, b                                        ; $4b09: $78
	ld   a, c                                        ; $4b0a: $79
	sbc  b                                           ; $4b0b: $98
	sub  [hl]                                        ; $4b0c: $96
	ld   a, d                                        ; $4b0d: $7a
	sbc  b                                           ; $4b0e: $98
	adc  b                                           ; $4b0f: $88
	sbc  b                                           ; $4b10: $98
	adc  b                                           ; $4b11: $88
	ld   a, c                                        ; $4b12: $79
	sbc  b                                           ; $4b13: $98
	sub  [hl]                                        ; $4b14: $96
	sbc  d                                           ; $4b15: $9a
	xor  b                                           ; $4b16: $a8
	adc  c                                           ; $4b17: $89
	adc  c                                           ; $4b18: $89
	ld   a, b                                        ; $4b19: $78
	sbc  b                                           ; $4b1a: $98
	adc  b                                           ; $4b1b: $88
	add  a                                           ; $4b1c: $87
	adc  b                                           ; $4b1d: $88
	sbc  b                                           ; $4b1e: $98
	sbc  d                                           ; $4b1f: $9a
	sub  a                                           ; $4b20: $97
	ld   a, b                                        ; $4b21: $78
	adc  c                                           ; $4b22: $89
	adc  b                                           ; $4b23: $88
	sbc  c                                           ; $4b24: $99
	add  a                                           ; $4b25: $87
	ld   a, b                                        ; $4b26: $78
	adc  b                                           ; $4b27: $88
	adc  b                                           ; $4b28: $88
	adc  b                                           ; $4b29: $88
	sub  a                                           ; $4b2a: $97
	sbc  b                                           ; $4b2b: $98
	adc  c                                           ; $4b2c: $89
	add  [hl]                                        ; $4b2d: $86
	ld   a, c                                        ; $4b2e: $79
	sbc  b                                           ; $4b2f: $98
	ld   a, c                                        ; $4b30: $79
	sbc  c                                           ; $4b31: $99
	sbc  b                                           ; $4b32: $98
	sub  a                                           ; $4b33: $97
	adc  c                                           ; $4b34: $89
	ld   [hl], a                                     ; $4b35: $77
	adc  c                                           ; $4b36: $89
	adc  b                                           ; $4b37: $88
	ld   a, c                                        ; $4b38: $79
	sub  a                                           ; $4b39: $97
	ld   a, b                                        ; $4b3a: $78
	add  [hl]                                        ; $4b3b: $86
	xor  c                                           ; $4b3c: $a9
	ld   a, c                                        ; $4b3d: $79
	ld   [hl], a                                     ; $4b3e: $77
	sbc  b                                           ; $4b3f: $98
	ld   l, c                                        ; $4b40: $69
	sbc  b                                           ; $4b41: $98
	ld   [hl], a                                     ; $4b42: $77
	sub  a                                           ; $4b43: $97
	ld   [hl], a                                     ; $4b44: $77
	sbc  c                                           ; $4b45: $99
	adc  b                                           ; $4b46: $88
	add  a                                           ; $4b47: $87
	sbc  b                                           ; $4b48: $98
	ld   a, b                                        ; $4b49: $78
	ld   a, c                                        ; $4b4a: $79
	sbc  b                                           ; $4b4b: $98
	add  a                                           ; $4b4c: $87
	adc  b                                           ; $4b4d: $88
	sbc  b                                           ; $4b4e: $98
	ld   [hl], a                                     ; $4b4f: $77
	sbc  c                                           ; $4b50: $99
	adc  b                                           ; $4b51: $88
	add  a                                           ; $4b52: $87
	sbc  c                                           ; $4b53: $99
	add  a                                           ; $4b54: $87
	ld   a, b                                        ; $4b55: $78
	adc  c                                           ; $4b56: $89
	ld   [hl], a                                     ; $4b57: $77
	adc  b                                           ; $4b58: $88
	adc  c                                           ; $4b59: $89
	adc  b                                           ; $4b5a: $88
	adc  c                                           ; $4b5b: $89
	adc  b                                           ; $4b5c: $88
	adc  c                                           ; $4b5d: $89
	sbc  b                                           ; $4b5e: $98
	sbc  c                                           ; $4b5f: $99
	sbc  c                                           ; $4b60: $99
	sbc  b                                           ; $4b61: $98
	adc  b                                           ; $4b62: $88
	adc  b                                           ; $4b63: $88
	adc  b                                           ; $4b64: $88
	adc  b                                           ; $4b65: $88
	sbc  b                                           ; $4b66: $98
	add  a                                           ; $4b67: $87
	sbc  b                                           ; $4b68: $98
	ld   a, c                                        ; $4b69: $79
	adc  c                                           ; $4b6a: $89
	adc  b                                           ; $4b6b: $88
	ld   [hl], a                                     ; $4b6c: $77
	sbc  c                                           ; $4b6d: $99
	sub  a                                           ; $4b6e: $97
	adc  b                                           ; $4b6f: $88
	sbc  b                                           ; $4b70: $98
	sbc  c                                           ; $4b71: $99
	sbc  b                                           ; $4b72: $98
	add  a                                           ; $4b73: $87
	adc  b                                           ; $4b74: $88
	sbc  c                                           ; $4b75: $99
	adc  b                                           ; $4b76: $88
	ld   [hl], a                                     ; $4b77: $77
	add  a                                           ; $4b78: $87
	ld   a, b                                        ; $4b79: $78
	adc  b                                           ; $4b7a: $88
	add  a                                           ; $4b7b: $87
	ld   [hl], a                                     ; $4b7c: $77
	adc  b                                           ; $4b7d: $88
	add  a                                           ; $4b7e: $87
	ld   [hl], a                                     ; $4b7f: $77
	adc  b                                           ; $4b80: $88
	ld   [hl], a                                     ; $4b81: $77
	ld   a, b                                        ; $4b82: $78
	ld   [hl], a                                     ; $4b83: $77
	ld   a, b                                        ; $4b84: $78
	ld   [hl], a                                     ; $4b85: $77
	ld   [hl], a                                     ; $4b86: $77
	ld   [hl], a                                     ; $4b87: $77
	add  a                                           ; $4b88: $87
	ld   [hl], a                                     ; $4b89: $77
	ld   a, b                                        ; $4b8a: $78
	add  a                                           ; $4b8b: $87
	ld   [hl], a                                     ; $4b8c: $77
	ld   [hl], a                                     ; $4b8d: $77
	ld   [hl], a                                     ; $4b8e: $77
	ld   [hl], a                                     ; $4b8f: $77
	adc  b                                           ; $4b90: $88
	ld   [hl], a                                     ; $4b91: $77
	ld   [hl], a                                     ; $4b92: $77
	ld   [hl], a                                     ; $4b93: $77
	ld   [hl], a                                     ; $4b94: $77
	ld   [hl], a                                     ; $4b95: $77
	ld   [hl], a                                     ; $4b96: $77
	ld   [hl], a                                     ; $4b97: $77
	ld   [hl], a                                     ; $4b98: $77
	ld   [hl], a                                     ; $4b99: $77
	ld   [hl], a                                     ; $4b9a: $77
	ld   [hl], a                                     ; $4b9b: $77
	ld   a, b                                        ; $4b9c: $78
	ld   [hl], a                                     ; $4b9d: $77
	ld   [hl], a                                     ; $4b9e: $77
	ld   [hl], a                                     ; $4b9f: $77
	ld   [hl], a                                     ; $4ba0: $77
	ld   [hl], a                                     ; $4ba1: $77
	ld   [hl], a                                     ; $4ba2: $77
	ld   [hl], a                                     ; $4ba3: $77
	ld   [hl], a                                     ; $4ba4: $77
	ld   [hl], a                                     ; $4ba5: $77
	ld   [hl], a                                     ; $4ba6: $77
	ld   [hl], a                                     ; $4ba7: $77
	sub  a                                           ; $4ba8: $97
	ld   [hl], a                                     ; $4ba9: $77
	ld   [hl], a                                     ; $4baa: $77
	halt                                             ; $4bab: $76
	ld   a, b                                        ; $4bac: $78
	ld   [hl], a                                     ; $4bad: $77
	ld   [hl], a                                     ; $4bae: $77
	ld   [hl], a                                     ; $4baf: $77
	ld   [hl], a                                     ; $4bb0: $77
	ld   [hl], a                                     ; $4bb1: $77
	ld   [hl], a                                     ; $4bb2: $77
	ld   [hl], a                                     ; $4bb3: $77
	ld   [hl], a                                     ; $4bb4: $77
	ld   [hl], a                                     ; $4bb5: $77
	ld   [hl], a                                     ; $4bb6: $77
	ld   h, a                                        ; $4bb7: $67
	ld   [hl], a                                     ; $4bb8: $77
	ld   [hl], a                                     ; $4bb9: $77
	ld   a, b                                        ; $4bba: $78
	add  [hl]                                        ; $4bbb: $86
	ld   [hl], a                                     ; $4bbc: $77
	ld   [hl], a                                     ; $4bbd: $77
	ld   [hl], a                                     ; $4bbe: $77
	adc  b                                           ; $4bbf: $88
	ld   [hl], a                                     ; $4bc0: $77
	ld   [hl], a                                     ; $4bc1: $77
	ld   [hl], a                                     ; $4bc2: $77
	ld   [hl], a                                     ; $4bc3: $77
	ld   a, b                                        ; $4bc4: $78
	ld   [hl], a                                     ; $4bc5: $77
	ld   [hl], a                                     ; $4bc6: $77
	ld   [hl], a                                     ; $4bc7: $77
	ld   [hl], a                                     ; $4bc8: $77
	ld   [hl], a                                     ; $4bc9: $77
	ld   [hl], a                                     ; $4bca: $77
	ld   [hl], a                                     ; $4bcb: $77
	adc  b                                           ; $4bcc: $88
	ld   [hl], a                                     ; $4bcd: $77
	ld   [hl], a                                     ; $4bce: $77
	ld   [hl], a                                     ; $4bcf: $77
	ld   a, b                                        ; $4bd0: $78
	ld   a, b                                        ; $4bd1: $78
	ld   [hl], a                                     ; $4bd2: $77
	ld   a, b                                        ; $4bd3: $78
	add  a                                           ; $4bd4: $87
	add  a                                           ; $4bd5: $87
	adc  b                                           ; $4bd6: $88
	adc  b                                           ; $4bd7: $88
	ld   a, b                                        ; $4bd8: $78
	add  a                                           ; $4bd9: $87
	ld   a, b                                        ; $4bda: $78
	adc  b                                           ; $4bdb: $88
	ld   [hl], a                                     ; $4bdc: $77
	add  a                                           ; $4bdd: $87
	add  a                                           ; $4bde: $87
	ld   a, b                                        ; $4bdf: $78
	adc  b                                           ; $4be0: $88
	ld   [hl], a                                     ; $4be1: $77
	adc  b                                           ; $4be2: $88
	adc  b                                           ; $4be3: $88
	adc  b                                           ; $4be4: $88
	ld   a, b                                        ; $4be5: $78
	adc  b                                           ; $4be6: $88
	adc  b                                           ; $4be7: $88
	adc  b                                           ; $4be8: $88
	add  a                                           ; $4be9: $87
	adc  c                                           ; $4bea: $89
	adc  b                                           ; $4beb: $88
	add  a                                           ; $4bec: $87
	sbc  b                                           ; $4bed: $98
	adc  b                                           ; $4bee: $88
	adc  b                                           ; $4bef: $88
	add  a                                           ; $4bf0: $87
	adc  b                                           ; $4bf1: $88
	adc  b                                           ; $4bf2: $88
	add  a                                           ; $4bf3: $87
	adc  c                                           ; $4bf4: $89
	adc  c                                           ; $4bf5: $89
	adc  b                                           ; $4bf6: $88
	sbc  b                                           ; $4bf7: $98
	ld   a, b                                        ; $4bf8: $78
	adc  b                                           ; $4bf9: $88
	adc  b                                           ; $4bfa: $88
	sbc  b                                           ; $4bfb: $98
	adc  b                                           ; $4bfc: $88
	ld   a, b                                        ; $4bfd: $78
	adc  b                                           ; $4bfe: $88
	sbc  b                                           ; $4bff: $98
	adc  c                                           ; $4c00: $89
	adc  b                                           ; $4c01: $88
	adc  b                                           ; $4c02: $88
	adc  b                                           ; $4c03: $88
	adc  b                                           ; $4c04: $88
	adc  c                                           ; $4c05: $89
	adc  b                                           ; $4c06: $88
	adc  b                                           ; $4c07: $88
	sbc  b                                           ; $4c08: $98
	adc  b                                           ; $4c09: $88
	adc  c                                           ; $4c0a: $89
	adc  b                                           ; $4c0b: $88
	add  a                                           ; $4c0c: $87
	adc  b                                           ; $4c0d: $88
	adc  b                                           ; $4c0e: $88
	adc  c                                           ; $4c0f: $89
	sbc  b                                           ; $4c10: $98
	adc  c                                           ; $4c11: $89
	sbc  b                                           ; $4c12: $98
	sbc  b                                           ; $4c13: $98
	sbc  b                                           ; $4c14: $98
	adc  b                                           ; $4c15: $88
	adc  c                                           ; $4c16: $89
	adc  b                                           ; $4c17: $88
	adc  c                                           ; $4c18: $89
	adc  c                                           ; $4c19: $89
	adc  c                                           ; $4c1a: $89
	sbc  b                                           ; $4c1b: $98
	adc  b                                           ; $4c1c: $88
	adc  c                                           ; $4c1d: $89
	sbc  c                                           ; $4c1e: $99
	adc  b                                           ; $4c1f: $88
	sbc  c                                           ; $4c20: $99
	adc  b                                           ; $4c21: $88
	sbc  c                                           ; $4c22: $99
	adc  b                                           ; $4c23: $88
	sbc  c                                           ; $4c24: $99
	adc  b                                           ; $4c25: $88
	adc  b                                           ; $4c26: $88
	sbc  c                                           ; $4c27: $99
	adc  c                                           ; $4c28: $89
	adc  c                                           ; $4c29: $89
	adc  c                                           ; $4c2a: $89
	add  a                                           ; $4c2b: $87
	sbc  c                                           ; $4c2c: $99
	sbc  c                                           ; $4c2d: $99
	adc  c                                           ; $4c2e: $89
	adc  b                                           ; $4c2f: $88
	adc  c                                           ; $4c30: $89
	sbc  c                                           ; $4c31: $99
	adc  c                                           ; $4c32: $89
	sbc  b                                           ; $4c33: $98
	adc  c                                           ; $4c34: $89
	sbc  c                                           ; $4c35: $99
	sbc  b                                           ; $4c36: $98
	adc  c                                           ; $4c37: $89
	adc  b                                           ; $4c38: $88
	sbc  b                                           ; $4c39: $98
	sbc  c                                           ; $4c3a: $99
	adc  c                                           ; $4c3b: $89
	adc  b                                           ; $4c3c: $88
	adc  c                                           ; $4c3d: $89
	sbc  c                                           ; $4c3e: $99
	sbc  c                                           ; $4c3f: $99
	adc  b                                           ; $4c40: $88
	sbc  c                                           ; $4c41: $99
	adc  b                                           ; $4c42: $88
	adc  c                                           ; $4c43: $89
	adc  b                                           ; $4c44: $88
	adc  b                                           ; $4c45: $88
	sbc  c                                           ; $4c46: $99
	sbc  b                                           ; $4c47: $98
	add  a                                           ; $4c48: $87
	sbc  b                                           ; $4c49: $98
	sbc  c                                           ; $4c4a: $99
	sbc  b                                           ; $4c4b: $98
	adc  c                                           ; $4c4c: $89
	adc  c                                           ; $4c4d: $89
	adc  b                                           ; $4c4e: $88
	sbc  c                                           ; $4c4f: $99
	adc  c                                           ; $4c50: $89
	adc  c                                           ; $4c51: $89
	sbc  c                                           ; $4c52: $99
	sbc  b                                           ; $4c53: $98
	sbc  b                                           ; $4c54: $98
	adc  c                                           ; $4c55: $89
	sbc  b                                           ; $4c56: $98
	adc  b                                           ; $4c57: $88
	adc  b                                           ; $4c58: $88
	adc  c                                           ; $4c59: $89
	adc  c                                           ; $4c5a: $89
	sbc  b                                           ; $4c5b: $98
	adc  b                                           ; $4c5c: $88
	adc  b                                           ; $4c5d: $88
	sbc  c                                           ; $4c5e: $99
	adc  b                                           ; $4c5f: $88
	sub  a                                           ; $4c60: $97
	adc  b                                           ; $4c61: $88
	adc  c                                           ; $4c62: $89
	sbc  b                                           ; $4c63: $98
	adc  b                                           ; $4c64: $88
	adc  b                                           ; $4c65: $88
	adc  b                                           ; $4c66: $88
	adc  b                                           ; $4c67: $88
	adc  c                                           ; $4c68: $89
	sbc  b                                           ; $4c69: $98
	adc  b                                           ; $4c6a: $88
	adc  b                                           ; $4c6b: $88
	sbc  b                                           ; $4c6c: $98
	add  a                                           ; $4c6d: $87
	sbc  b                                           ; $4c6e: $98
	ld   a, b                                        ; $4c6f: $78
	sbc  b                                           ; $4c70: $98
	adc  b                                           ; $4c71: $88
	adc  b                                           ; $4c72: $88
	sbc  b                                           ; $4c73: $98
	adc  b                                           ; $4c74: $88
	adc  b                                           ; $4c75: $88
	adc  c                                           ; $4c76: $89
	adc  b                                           ; $4c77: $88
	adc  b                                           ; $4c78: $88
	sbc  b                                           ; $4c79: $98
	sbc  b                                           ; $4c7a: $98
	adc  c                                           ; $4c7b: $89
	ld   a, b                                        ; $4c7c: $78
	add  a                                           ; $4c7d: $87
	sbc  b                                           ; $4c7e: $98
	adc  b                                           ; $4c7f: $88
	adc  b                                           ; $4c80: $88
	adc  b                                           ; $4c81: $88
	adc  b                                           ; $4c82: $88
	adc  b                                           ; $4c83: $88
	sbc  b                                           ; $4c84: $98
	adc  c                                           ; $4c85: $89
	adc  b                                           ; $4c86: $88
	sbc  b                                           ; $4c87: $98
	adc  c                                           ; $4c88: $89
	sbc  b                                           ; $4c89: $98
	adc  b                                           ; $4c8a: $88
	adc  b                                           ; $4c8b: $88
	adc  b                                           ; $4c8c: $88
	sbc  b                                           ; $4c8d: $98
	adc  c                                           ; $4c8e: $89
	adc  b                                           ; $4c8f: $88
	adc  b                                           ; $4c90: $88
	sbc  b                                           ; $4c91: $98
	adc  b                                           ; $4c92: $88
	adc  b                                           ; $4c93: $88
	sbc  b                                           ; $4c94: $98
	adc  b                                           ; $4c95: $88
	sbc  c                                           ; $4c96: $99
	adc  b                                           ; $4c97: $88
	adc  b                                           ; $4c98: $88
	sbc  b                                           ; $4c99: $98
	ld   a, c                                        ; $4c9a: $79
	adc  b                                           ; $4c9b: $88
	adc  b                                           ; $4c9c: $88
	sbc  c                                           ; $4c9d: $99
	adc  b                                           ; $4c9e: $88
	adc  b                                           ; $4c9f: $88
	adc  b                                           ; $4ca0: $88
	adc  b                                           ; $4ca1: $88
	adc  c                                           ; $4ca2: $89
	ld   a, c                                        ; $4ca3: $79
	adc  b                                           ; $4ca4: $88
	sbc  b                                           ; $4ca5: $98
	adc  b                                           ; $4ca6: $88
	adc  c                                           ; $4ca7: $89
	adc  b                                           ; $4ca8: $88
	adc  b                                           ; $4ca9: $88
	adc  b                                           ; $4caa: $88
	adc  b                                           ; $4cab: $88
	adc  b                                           ; $4cac: $88
	sbc  c                                           ; $4cad: $99
	adc  b                                           ; $4cae: $88
	adc  b                                           ; $4caf: $88
	adc  c                                           ; $4cb0: $89
	adc  b                                           ; $4cb1: $88
	sbc  b                                           ; $4cb2: $98
	ld   a, c                                        ; $4cb3: $79
	adc  b                                           ; $4cb4: $88
	adc  b                                           ; $4cb5: $88
	adc  c                                           ; $4cb6: $89
	adc  b                                           ; $4cb7: $88
	ld   a, c                                        ; $4cb8: $79
	adc  b                                           ; $4cb9: $88
	sbc  c                                           ; $4cba: $99
	adc  b                                           ; $4cbb: $88
	adc  b                                           ; $4cbc: $88
	adc  b                                           ; $4cbd: $88
	adc  b                                           ; $4cbe: $88
	adc  c                                           ; $4cbf: $89
	sbc  b                                           ; $4cc0: $98
	sbc  b                                           ; $4cc1: $98
	ld   a, b                                        ; $4cc2: $78
	adc  b                                           ; $4cc3: $88
	sbc  b                                           ; $4cc4: $98
	ld   a, c                                        ; $4cc5: $79
	adc  b                                           ; $4cc6: $88
	add  a                                           ; $4cc7: $87
	sbc  c                                           ; $4cc8: $99
	add  a                                           ; $4cc9: $87
	adc  c                                           ; $4cca: $89
	adc  c                                           ; $4ccb: $89
	adc  c                                           ; $4ccc: $89
	adc  c                                           ; $4ccd: $89
	adc  b                                           ; $4cce: $88
	adc  c                                           ; $4ccf: $89
	sbc  b                                           ; $4cd0: $98
	adc  b                                           ; $4cd1: $88
	adc  b                                           ; $4cd2: $88
	adc  c                                           ; $4cd3: $89
	adc  b                                           ; $4cd4: $88
	adc  b                                           ; $4cd5: $88
	sbc  b                                           ; $4cd6: $98
	sbc  b                                           ; $4cd7: $98
	adc  b                                           ; $4cd8: $88
	sbc  c                                           ; $4cd9: $99
	sbc  c                                           ; $4cda: $99
	adc  b                                           ; $4cdb: $88
	adc  b                                           ; $4cdc: $88
	adc  b                                           ; $4cdd: $88
	xor  b                                           ; $4cde: $a8
	adc  b                                           ; $4cdf: $88
	adc  b                                           ; $4ce0: $88
	adc  b                                           ; $4ce1: $88
	sbc  b                                           ; $4ce2: $98
	sbc  c                                           ; $4ce3: $99
	adc  c                                           ; $4ce4: $89
	adc  b                                           ; $4ce5: $88
	sbc  b                                           ; $4ce6: $98
	adc  b                                           ; $4ce7: $88
	sbc  b                                           ; $4ce8: $98
	adc  c                                           ; $4ce9: $89
	sbc  b                                           ; $4cea: $98
	adc  b                                           ; $4ceb: $88
	adc  c                                           ; $4cec: $89
	adc  b                                           ; $4ced: $88
	adc  b                                           ; $4cee: $88
	sbc  b                                           ; $4cef: $98
	adc  b                                           ; $4cf0: $88
	adc  b                                           ; $4cf1: $88
	adc  b                                           ; $4cf2: $88
	sbc  c                                           ; $4cf3: $99
	adc  b                                           ; $4cf4: $88
	adc  c                                           ; $4cf5: $89
	adc  c                                           ; $4cf6: $89
	adc  b                                           ; $4cf7: $88
	adc  b                                           ; $4cf8: $88
	adc  b                                           ; $4cf9: $88
	adc  b                                           ; $4cfa: $88
	sbc  c                                           ; $4cfb: $99
	sbc  c                                           ; $4cfc: $99
	sbc  b                                           ; $4cfd: $98
	adc  c                                           ; $4cfe: $89
	sbc  b                                           ; $4cff: $98
	sbc  b                                           ; $4d00: $98
	adc  b                                           ; $4d01: $88
	ld   a, c                                        ; $4d02: $79
	adc  c                                           ; $4d03: $89
	adc  b                                           ; $4d04: $88
	adc  c                                           ; $4d05: $89
	sbc  c                                           ; $4d06: $99
	adc  b                                           ; $4d07: $88
	adc  b                                           ; $4d08: $88
	adc  c                                           ; $4d09: $89
	adc  c                                           ; $4d0a: $89
	sbc  b                                           ; $4d0b: $98
	adc  c                                           ; $4d0c: $89
	sbc  c                                           ; $4d0d: $99
	adc  b                                           ; $4d0e: $88
	adc  c                                           ; $4d0f: $89
	adc  c                                           ; $4d10: $89
	sbc  b                                           ; $4d11: $98
	adc  b                                           ; $4d12: $88
	add  a                                           ; $4d13: $87
	adc  c                                           ; $4d14: $89
	sub  a                                           ; $4d15: $97
	adc  c                                           ; $4d16: $89
	adc  c                                           ; $4d17: $89
	adc  c                                           ; $4d18: $89
	adc  b                                           ; $4d19: $88
	sbc  b                                           ; $4d1a: $98
	adc  b                                           ; $4d1b: $88
	sub  a                                           ; $4d1c: $97
	sbc  b                                           ; $4d1d: $98
	adc  b                                           ; $4d1e: $88
	adc  b                                           ; $4d1f: $88
	sbc  b                                           ; $4d20: $98
	sbc  b                                           ; $4d21: $98
	adc  c                                           ; $4d22: $89
	adc  c                                           ; $4d23: $89
	adc  c                                           ; $4d24: $89
	sbc  b                                           ; $4d25: $98
	adc  b                                           ; $4d26: $88
	sbc  c                                           ; $4d27: $99
	sbc  b                                           ; $4d28: $98
	sbc  c                                           ; $4d29: $99
	sbc  c                                           ; $4d2a: $99
	add  a                                           ; $4d2b: $87
	sbc  c                                           ; $4d2c: $99
	add  a                                           ; $4d2d: $87
	sbc  c                                           ; $4d2e: $99
	adc  b                                           ; $4d2f: $88
	adc  c                                           ; $4d30: $89
	sbc  c                                           ; $4d31: $99
	ld   a, b                                        ; $4d32: $78
	sbc  c                                           ; $4d33: $99
	ld   a, b                                        ; $4d34: $78
	sbc  c                                           ; $4d35: $99
	adc  b                                           ; $4d36: $88
	adc  b                                           ; $4d37: $88
	add  a                                           ; $4d38: $87
	adc  c                                           ; $4d39: $89
	adc  b                                           ; $4d3a: $88
	add  a                                           ; $4d3b: $87
	sbc  c                                           ; $4d3c: $99
	adc  b                                           ; $4d3d: $88
	ld   a, b                                        ; $4d3e: $78
	adc  b                                           ; $4d3f: $88
	adc  c                                           ; $4d40: $89
	adc  b                                           ; $4d41: $88
	add  a                                           ; $4d42: $87
	adc  b                                           ; $4d43: $88
	adc  c                                           ; $4d44: $89
	sbc  b                                           ; $4d45: $98
	adc  b                                           ; $4d46: $88
	ld   a, b                                        ; $4d47: $78
	adc  b                                           ; $4d48: $88
	adc  b                                           ; $4d49: $88
	adc  c                                           ; $4d4a: $89
	adc  b                                           ; $4d4b: $88
	add  a                                           ; $4d4c: $87
	adc  c                                           ; $4d4d: $89
	adc  b                                           ; $4d4e: $88
	sbc  b                                           ; $4d4f: $98
	adc  c                                           ; $4d50: $89
	adc  b                                           ; $4d51: $88
	adc  c                                           ; $4d52: $89
	adc  b                                           ; $4d53: $88
	adc  c                                           ; $4d54: $89
	ld   a, c                                        ; $4d55: $79
	add  a                                           ; $4d56: $87
	adc  b                                           ; $4d57: $88
	adc  b                                           ; $4d58: $88
	ld   a, b                                        ; $4d59: $78
	xor  b                                           ; $4d5a: $a8
	adc  b                                           ; $4d5b: $88
	sbc  b                                           ; $4d5c: $98
	sbc  c                                           ; $4d5d: $99
	ld   a, c                                        ; $4d5e: $79
	adc  b                                           ; $4d5f: $88
	adc  b                                           ; $4d60: $88
	add  a                                           ; $4d61: $87
	adc  b                                           ; $4d62: $88
	adc  b                                           ; $4d63: $88
	adc  b                                           ; $4d64: $88
	adc  b                                           ; $4d65: $88
	adc  b                                           ; $4d66: $88
	adc  c                                           ; $4d67: $89
	adc  c                                           ; $4d68: $89
	add  a                                           ; $4d69: $87
	sbc  b                                           ; $4d6a: $98
	adc  c                                           ; $4d6b: $89
	adc  b                                           ; $4d6c: $88
	adc  c                                           ; $4d6d: $89
	add  a                                           ; $4d6e: $87
	sbc  b                                           ; $4d6f: $98
	sbc  b                                           ; $4d70: $98
	adc  b                                           ; $4d71: $88
	adc  b                                           ; $4d72: $88
	add  a                                           ; $4d73: $87
	adc  c                                           ; $4d74: $89
	ld   a, b                                        ; $4d75: $78
	adc  b                                           ; $4d76: $88
	ld   a, b                                        ; $4d77: $78
	adc  b                                           ; $4d78: $88
	sbc  b                                           ; $4d79: $98
	adc  b                                           ; $4d7a: $88
	ld   a, c                                        ; $4d7b: $79
	adc  c                                           ; $4d7c: $89
	add  a                                           ; $4d7d: $87
	sbc  c                                           ; $4d7e: $99
	ld   [hl], a                                     ; $4d7f: $77
	sbc  c                                           ; $4d80: $99
	adc  b                                           ; $4d81: $88
	ld   a, d                                        ; $4d82: $7a
	sub  a                                           ; $4d83: $97
	adc  b                                           ; $4d84: $88
	adc  c                                           ; $4d85: $89
	ld   [hl], a                                     ; $4d86: $77
	adc  b                                           ; $4d87: $88
	adc  b                                           ; $4d88: $88
	sbc  b                                           ; $4d89: $98
	add  a                                           ; $4d8a: $87
	adc  b                                           ; $4d8b: $88
	sub  a                                           ; $4d8c: $97
	adc  d                                           ; $4d8d: $8a
	add  a                                           ; $4d8e: $87
	ld   a, c                                        ; $4d8f: $79
	adc  b                                           ; $4d90: $88
	sub  a                                           ; $4d91: $97
	ld   a, c                                        ; $4d92: $79
	sub  a                                           ; $4d93: $97
	adc  b                                           ; $4d94: $88
	ld   a, b                                        ; $4d95: $78
	adc  b                                           ; $4d96: $88
	adc  b                                           ; $4d97: $88
	sbc  c                                           ; $4d98: $99
	ld   a, b                                        ; $4d99: $78
	add  a                                           ; $4d9a: $87
	adc  c                                           ; $4d9b: $89
	ld   [hl], a                                     ; $4d9c: $77
	sbc  b                                           ; $4d9d: $98
	adc  b                                           ; $4d9e: $88
	sbc  b                                           ; $4d9f: $98
	ld   [hl], a                                     ; $4da0: $77
	sub  a                                           ; $4da1: $97
	ld   a, c                                        ; $4da2: $79
	ld   a, c                                        ; $4da3: $79
	ld   a, b                                        ; $4da4: $78
	sbc  b                                           ; $4da5: $98
	ld   [hl], a                                     ; $4da6: $77
	and  a                                           ; $4da7: $a7
	adc  b                                           ; $4da8: $88
	add  a                                           ; $4da9: $87
	ld   [hl], a                                     ; $4daa: $77
	sbc  b                                           ; $4dab: $98
	adc  c                                           ; $4dac: $89
	ld   a, b                                        ; $4dad: $78
	sbc  b                                           ; $4dae: $98
	ld   a, b                                        ; $4daf: $78
	adc  c                                           ; $4db0: $89
	add  a                                           ; $4db1: $87
	add  a                                           ; $4db2: $87
	sub  a                                           ; $4db3: $97
	add  a                                           ; $4db4: $87
	adc  b                                           ; $4db5: $88
	adc  c                                           ; $4db6: $89
	ld   a, c                                        ; $4db7: $79
	adc  b                                           ; $4db8: $88
	add  a                                           ; $4db9: $87
	ld   a, b                                        ; $4dba: $78
	add  a                                           ; $4dbb: $87
	ld   a, b                                        ; $4dbc: $78
	sbc  b                                           ; $4dbd: $98
	ld   [hl], a                                     ; $4dbe: $77
	sbc  b                                           ; $4dbf: $98
	sbc  b                                           ; $4dc0: $98
	ld   [hl], a                                     ; $4dc1: $77
	ld   a, c                                        ; $4dc2: $79
	add  a                                           ; $4dc3: $87
	adc  b                                           ; $4dc4: $88
	ld   a, b                                        ; $4dc5: $78
	ld   [hl], a                                     ; $4dc6: $77
	add  a                                           ; $4dc7: $87
	adc  b                                           ; $4dc8: $88
	sub  a                                           ; $4dc9: $97
	add  a                                           ; $4dca: $87
	adc  b                                           ; $4dcb: $88
	ld   [hl], a                                     ; $4dcc: $77
	adc  b                                           ; $4dcd: $88
	add  a                                           ; $4dce: $87
	ld   a, b                                        ; $4dcf: $78
	add  a                                           ; $4dd0: $87
	adc  c                                           ; $4dd1: $89
	ld   a, b                                        ; $4dd2: $78
	ld   [hl], a                                     ; $4dd3: $77
	ld   a, b                                        ; $4dd4: $78
	add  a                                           ; $4dd5: $87
	adc  b                                           ; $4dd6: $88
	sub  a                                           ; $4dd7: $97
	ld   [hl], a                                     ; $4dd8: $77
	adc  b                                           ; $4dd9: $88
	ld   a, b                                        ; $4dda: $78
	add  a                                           ; $4ddb: $87
	ld   [hl], a                                     ; $4ddc: $77
	ld   [hl], a                                     ; $4ddd: $77
	ld   [hl], a                                     ; $4dde: $77
	ld   [hl], a                                     ; $4ddf: $77
	ld   [hl], a                                     ; $4de0: $77
	add  a                                           ; $4de1: $87
	ld   a, b                                        ; $4de2: $78
	adc  b                                           ; $4de3: $88
	ld   a, c                                        ; $4de4: $79
	sub  a                                           ; $4de5: $97
	add  a                                           ; $4de6: $87
	ld   [hl], a                                     ; $4de7: $77
	add  a                                           ; $4de8: $87
	ld   [hl], a                                     ; $4de9: $77
	ld   a, b                                        ; $4dea: $78
	ld   a, b                                        ; $4deb: $78
	ld   [hl], a                                     ; $4dec: $77
	add  a                                           ; $4ded: $87
	adc  c                                           ; $4dee: $89
	ld   [hl], a                                     ; $4def: $77
	add  a                                           ; $4df0: $87
	add  a                                           ; $4df1: $87
	ld   [hl], a                                     ; $4df2: $77
	ld   [hl], a                                     ; $4df3: $77
	adc  b                                           ; $4df4: $88
	ld   h, a                                        ; $4df5: $67
	ld   a, b                                        ; $4df6: $78
	sub  a                                           ; $4df7: $97
	ld   [hl], a                                     ; $4df8: $77
	add  a                                           ; $4df9: $87
	ld   a, b                                        ; $4dfa: $78
	add  a                                           ; $4dfb: $87
	adc  c                                           ; $4dfc: $89
	add  a                                           ; $4dfd: $87
	ld   [hl], a                                     ; $4dfe: $77
	ld   a, b                                        ; $4dff: $78
	ld   [hl], a                                     ; $4e00: $77
	add  a                                           ; $4e01: $87
	ld   [hl], a                                     ; $4e02: $77
	ld   [hl], a                                     ; $4e03: $77
	add  a                                           ; $4e04: $87
	ld   [hl], a                                     ; $4e05: $77
	sbc  b                                           ; $4e06: $98
	ld   a, b                                        ; $4e07: $78
	adc  b                                           ; $4e08: $88
	adc  b                                           ; $4e09: $88
	ld   [hl], a                                     ; $4e0a: $77
	ld   [hl], a                                     ; $4e0b: $77
	ld   [hl], a                                     ; $4e0c: $77
	ld   [hl], a                                     ; $4e0d: $77
	halt                                             ; $4e0e: $76
	add  a                                           ; $4e0f: $87
	ld   a, b                                        ; $4e10: $78
	ld   a, b                                        ; $4e11: $78
	adc  b                                           ; $4e12: $88
	adc  b                                           ; $4e13: $88
	ld   a, c                                        ; $4e14: $79
	add  a                                           ; $4e15: $87
	add  a                                           ; $4e16: $87
	ld   [hl], a                                     ; $4e17: $77
	ld   h, a                                        ; $4e18: $67
	ld   [hl], a                                     ; $4e19: $77
	ld   [hl], a                                     ; $4e1a: $77
	ld   a, b                                        ; $4e1b: $78
	sub  a                                           ; $4e1c: $97
	ld   a, b                                        ; $4e1d: $78
	add  a                                           ; $4e1e: $87
	add  a                                           ; $4e1f: $87
	ld   a, c                                        ; $4e20: $79
	halt                                             ; $4e21: $76
	adc  b                                           ; $4e22: $88
	ld   [hl], a                                     ; $4e23: $77
	ld   [hl], a                                     ; $4e24: $77
	ld   [hl], a                                     ; $4e25: $77
	ld   a, b                                        ; $4e26: $78
	ld   [hl], a                                     ; $4e27: $77
	ld   [hl], a                                     ; $4e28: $77
	adc  b                                           ; $4e29: $88
	adc  b                                           ; $4e2a: $88
	ld   [hl], a                                     ; $4e2b: $77
	adc  b                                           ; $4e2c: $88
	add  a                                           ; $4e2d: $87
	ld   [hl], a                                     ; $4e2e: $77
	adc  c                                           ; $4e2f: $89
	ld   [hl], a                                     ; $4e30: $77
	ld   a, b                                        ; $4e31: $78
	ld   [hl], a                                     ; $4e32: $77
	adc  b                                           ; $4e33: $88
	ld   [hl], a                                     ; $4e34: $77
	sub  a                                           ; $4e35: $97
	ld   [hl], a                                     ; $4e36: $77
	adc  c                                           ; $4e37: $89
	ld   a, b                                        ; $4e38: $78
	sub  a                                           ; $4e39: $97
	add  a                                           ; $4e3a: $87
	ld   a, b                                        ; $4e3b: $78
	ld   [hl], a                                     ; $4e3c: $77
	ld   [hl], a                                     ; $4e3d: $77
	ld   a, b                                        ; $4e3e: $78
	ld   [hl], a                                     ; $4e3f: $77
	ld   [hl], a                                     ; $4e40: $77
	sbc  b                                           ; $4e41: $98
	adc  b                                           ; $4e42: $88
	sub  a                                           ; $4e43: $97
	ld   a, b                                        ; $4e44: $78
	add  a                                           ; $4e45: $87
	ld   a, b                                        ; $4e46: $78
	ld   [hl], a                                     ; $4e47: $77
	ld   a, b                                        ; $4e48: $78
	ld   [hl], a                                     ; $4e49: $77
	add  a                                           ; $4e4a: $87
	adc  b                                           ; $4e4b: $88
	add  a                                           ; $4e4c: $87
	ld   a, b                                        ; $4e4d: $78
	add  a                                           ; $4e4e: $87
	add  a                                           ; $4e4f: $87
	ld   [hl], a                                     ; $4e50: $77
	ld   a, b                                        ; $4e51: $78
	add  a                                           ; $4e52: $87
	ld   a, b                                        ; $4e53: $78
	ld   a, c                                        ; $4e54: $79
	add  [hl]                                        ; $4e55: $86
	ld   a, b                                        ; $4e56: $78
	sbc  b                                           ; $4e57: $98
	ld   h, a                                        ; $4e58: $67
	adc  b                                           ; $4e59: $88
	ld   [hl], a                                     ; $4e5a: $77
	add  a                                           ; $4e5b: $87
	adc  b                                           ; $4e5c: $88
	add  a                                           ; $4e5d: $87
	ld   a, b                                        ; $4e5e: $78
	adc  c                                           ; $4e5f: $89
	add  a                                           ; $4e60: $87
	ld   l, b                                        ; $4e61: $68
	add  a                                           ; $4e62: $87
	add  a                                           ; $4e63: $87
	ld   a, b                                        ; $4e64: $78
	sub  a                                           ; $4e65: $97
	sbc  b                                           ; $4e66: $98
	ld   l, b                                        ; $4e67: $68
	adc  b                                           ; $4e68: $88
	ld   a, b                                        ; $4e69: $78
	ld   [hl], a                                     ; $4e6a: $77
	ld   a, b                                        ; $4e6b: $78
	sbc  c                                           ; $4e6c: $99
	ld   [hl], a                                     ; $4e6d: $77
	add  a                                           ; $4e6e: $87
	sbc  b                                           ; $4e6f: $98
	ld   h, a                                        ; $4e70: $67
	sub  a                                           ; $4e71: $97
	ld   a, b                                        ; $4e72: $78
	ld   a, c                                        ; $4e73: $79
	ld   [hl], a                                     ; $4e74: $77
	adc  c                                           ; $4e75: $89
	sbc  b                                           ; $4e76: $98
	adc  b                                           ; $4e77: $88
	add  a                                           ; $4e78: $87
	add  a                                           ; $4e79: $87
	ld   a, b                                        ; $4e7a: $78
	ld   h, a                                        ; $4e7b: $67
	sbc  b                                           ; $4e7c: $98
	adc  b                                           ; $4e7d: $88
	add  a                                           ; $4e7e: $87
	adc  b                                           ; $4e7f: $88
	ld   [hl], a                                     ; $4e80: $77
	adc  b                                           ; $4e81: $88
	halt                                             ; $4e82: $76
	ld   a, c                                        ; $4e83: $79
	sbc  b                                           ; $4e84: $98
	ld   a, b                                        ; $4e85: $78
	add  a                                           ; $4e86: $87
	adc  b                                           ; $4e87: $88
	adc  c                                           ; $4e88: $89
	ld   [hl], a                                     ; $4e89: $77
	ld   l, b                                        ; $4e8a: $68
	adc  c                                           ; $4e8b: $89
	add  [hl]                                        ; $4e8c: $86
	sbc  b                                           ; $4e8d: $98
	adc  c                                           ; $4e8e: $89
	add  a                                           ; $4e8f: $87
	adc  b                                           ; $4e90: $88
	adc  c                                           ; $4e91: $89
	ld   [hl], l                                     ; $4e92: $75
	ld   a, b                                        ; $4e93: $78
	adc  b                                           ; $4e94: $88
	adc  c                                           ; $4e95: $89
	sub  a                                           ; $4e96: $97
	ld   l, b                                        ; $4e97: $68
	sbc  c                                           ; $4e98: $99
	ld   [hl], a                                     ; $4e99: $77
	add  a                                           ; $4e9a: $87
	halt                                             ; $4e9b: $76
	ld   a, b                                        ; $4e9c: $78
	adc  c                                           ; $4e9d: $89
	add  a                                           ; $4e9e: $87
	ld   [hl], a                                     ; $4e9f: $77
	adc  d                                           ; $4ea0: $8a
	adc  c                                           ; $4ea1: $89
	and  a                                           ; $4ea2: $a7
	ld   a, b                                        ; $4ea3: $78
	ld   a, b                                        ; $4ea4: $78
	ld   [hl], a                                     ; $4ea5: $77
	ld   a, b                                        ; $4ea6: $78
	add  a                                           ; $4ea7: $87
	adc  b                                           ; $4ea8: $88
	adc  c                                           ; $4ea9: $89
	adc  b                                           ; $4eaa: $88
	adc  c                                           ; $4eab: $89
	adc  b                                           ; $4eac: $88
	ld   [hl], a                                     ; $4ead: $77
	sub  a                                           ; $4eae: $97
	ld   [hl], a                                     ; $4eaf: $77
	ld   [hl], a                                     ; $4eb0: $77
	adc  c                                           ; $4eb1: $89
	adc  b                                           ; $4eb2: $88
	ld   [hl], a                                     ; $4eb3: $77
	ld   a, b                                        ; $4eb4: $78
	adc  b                                           ; $4eb5: $88
	add  a                                           ; $4eb6: $87
	ld   [hl], a                                     ; $4eb7: $77
	add  a                                           ; $4eb8: $87
	adc  c                                           ; $4eb9: $89
	adc  b                                           ; $4eba: $88
	adc  b                                           ; $4ebb: $88
	ld   a, b                                        ; $4ebc: $78
	ld   a, b                                        ; $4ebd: $78
	sbc  b                                           ; $4ebe: $98
	ld   [hl], a                                     ; $4ebf: $77
	adc  c                                           ; $4ec0: $89
	sbc  b                                           ; $4ec1: $98
	ld   [hl], a                                     ; $4ec2: $77
	ld   a, b                                        ; $4ec3: $78
	adc  b                                           ; $4ec4: $88
	adc  b                                           ; $4ec5: $88
	adc  b                                           ; $4ec6: $88
	ld   a, c                                        ; $4ec7: $79
	add  a                                           ; $4ec8: $87
	adc  b                                           ; $4ec9: $88
	adc  c                                           ; $4eca: $89
	adc  b                                           ; $4ecb: $88
	add  a                                           ; $4ecc: $87
	adc  b                                           ; $4ecd: $88
	sbc  b                                           ; $4ece: $98
	adc  c                                           ; $4ecf: $89
	adc  b                                           ; $4ed0: $88
	ld   a, b                                        ; $4ed1: $78
	adc  b                                           ; $4ed2: $88
	adc  b                                           ; $4ed3: $88
	adc  b                                           ; $4ed4: $88
	adc  b                                           ; $4ed5: $88
	adc  b                                           ; $4ed6: $88
	sbc  c                                           ; $4ed7: $99
	sbc  b                                           ; $4ed8: $98
	adc  b                                           ; $4ed9: $88
	adc  b                                           ; $4eda: $88
	adc  b                                           ; $4edb: $88
	sbc  c                                           ; $4edc: $99
	sbc  b                                           ; $4edd: $98
	adc  b                                           ; $4ede: $88
	adc  b                                           ; $4edf: $88
	adc  b                                           ; $4ee0: $88
	sbc  b                                           ; $4ee1: $98
	adc  c                                           ; $4ee2: $89
	adc  b                                           ; $4ee3: $88
	adc  b                                           ; $4ee4: $88
	adc  b                                           ; $4ee5: $88
	adc  b                                           ; $4ee6: $88
	adc  b                                           ; $4ee7: $88
	sbc  b                                           ; $4ee8: $98
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
	adc  c                                           ; $50d5: $89
	xor  c                                           ; $50d6: $a9
	adc  c                                           ; $50d7: $89
	add  a                                           ; $50d8: $87
	ld   a, b                                        ; $50d9: $78
	sbc  c                                           ; $50da: $99
	sbc  c                                           ; $50db: $99
	halt                                             ; $50dc: $76
	ld   d, a                                        ; $50dd: $57
	xor  h                                           ; $50de: $ac
	jp   c, Jump_0dd_4764                            ; $50df: $da $64 $47

	cp   h                                           ; $50e2: $bc
	ret  z                                           ; $50e3: $c8

	ld   d, h                                        ; $50e4: $54
	ld   b, l                                        ; $50e5: $45
	ld   a, e                                        ; $50e6: $7b
	sbc  c                                           ; $50e7: $99
	ld   h, h                                        ; $50e8: $64
	ld   d, [hl]                                     ; $50e9: $56
	xor  e                                           ; $50ea: $ab
	cp   c                                           ; $50eb: $b9
	ld   h, l                                        ; $50ec: $65
	ld   d, a                                        ; $50ed: $57
	sbc  d                                           ; $50ee: $9a
	sub  a                                           ; $50ef: $97
	ld   h, [hl]                                     ; $50f0: $66
	adc  e                                           ; $50f1: $8b
	xor  $95                                         ; $50f2: $ee $95
	ld   [hl+], a                                    ; $50f4: $22
	ld   e, d                                        ; $50f5: $5a
	db   $dd                                         ; $50f6: $dd
	or   [hl]                                        ; $50f7: $b6
	ld   hl, $ad27                                   ; $50f8: $21 $27 $ad
	ret                                              ; $50fb: $c9


	ld   h, e                                        ; $50fc: $63
	ld   b, l                                        ; $50fd: $45
	sbc  d                                           ; $50fe: $9a
	xor  d                                           ; $50ff: $aa
	halt                                             ; $5100: $76
	ld   d, a                                        ; $5101: $57
	adc  c                                           ; $5102: $89
	cp   c                                           ; $5103: $b9
	add  a                                           ; $5104: $87
	ld   a, b                                        ; $5105: $78
	adc  c                                           ; $5106: $89
	sbc  c                                           ; $5107: $99
	ld   [hl], l                                     ; $5108: $75
	ld   d, l                                        ; $5109: $55
	ld   a, c                                        ; $510a: $79
	sbc  c                                           ; $510b: $99
	add  a                                           ; $510c: $87
	ld   a, d                                        ; $510d: $7a
	rst  JumpTable                                         ; $510e: $df
	db   $eb                                         ; $510f: $eb
	ld   h, d                                        ; $5110: $62
	inc  de                                          ; $5111: $13

Jump_0dd_5112:
	sbc  [hl]                                        ; $5112: $9e
	ei                                               ; $5113: $fb
	ld   b, c                                        ; $5114: $41
	ld   de, $ff8f                                   ; $5115: $11 $8f $ff
	add  h                                           ; $5118: $84
	dec  d                                           ; $5119: $15
	xor  a                                           ; $511a: $af
	db   $fd                                         ; $511b: $fd
	and  l                                           ; $511c: $a5
	dec  [hl]                                        ; $511d: $35
	ld   a, e                                        ; $511e: $7b
	cp   e                                           ; $511f: $bb
	adc  d                                           ; $5120: $8a
	call z, Call_0dd_41da                            ; $5121: $cc $da $41
	ld   de, $7615                                   ; $5124: $11 $15 $76
	ld   de, $1811                                   ; $5127: $11 $11 $18
	sbc  $db                                         ; $512a: $de $db
	ld   [hl], a                                     ; $512c: $77
	xor  [hl]                                        ; $512d: $ae
	rst  $38                                         ; $512e: $ff
	rst  $38                                         ; $512f: $ff
	db   $eb                                         ; $5130: $eb
	xor  e                                           ; $5131: $ab
	rst  JumpTable                                         ; $5132: $df
	db   $fc                                         ; $5133: $fc
	sub  h                                           ; $5134: $94
	ld   [hl+], a                                    ; $5135: $22
	dec  [hl]                                        ; $5136: $35
	ld   b, c                                        ; $5137: $41
	ld   de, $1111                                   ; $5138: $11 $11 $11
	ld   l, c                                        ; $513b: $69
	add  [hl]                                        ; $513c: $86
	dec  [hl]                                        ; $513d: $35
	sbc  [hl]                                        ; $513e: $9e
	rst  $38                                         ; $513f: $ff
	rst  $38                                         ; $5140: $ff
	cp   $78                                         ; $5141: $fe $78
	sbc  d                                           ; $5143: $9a
	db   $db                                         ; $5144: $db
	sub  h                                           ; $5145: $94
	inc  hl                                          ; $5146: $23
	ld   c, d                                        ; $5147: $4a
	rst  $38                                         ; $5148: $ff
	rst  $38                                         ; $5149: $ff
	ei                                               ; $514a: $fb
	ld   d, c                                        ; $514b: $51
	ld   de, $1111                                   ; $514c: $11 $11 $11
	ld   de, $1611                                   ; $514f: $11 $11 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5152: $cf
	rst  $38                                         ; $5153: $ff
	rst  $38                                         ; $5154: $ff
	rst  $38                                         ; $5155: $ff
	cp   $b7                                         ; $5156: $fe $b7
	ld   [hl], h                                     ; $5158: $74
	ld   sp, $1411                                   ; $5159: $31 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $515c: $cf
	rst  $38                                         ; $515d: $ff
	rst  $38                                         ; $515e: $ff
	jp   hl                                          ; $515f: $e9


	ld   de, $1111                                   ; $5160: $11 $11 $11
	ld   de, $1111                                   ; $5163: $11 $11 $11
	ld   a, [hl]                                     ; $5166: $7e
	rst  $38                                         ; $5167: $ff
	rst  $38                                         ; $5168: $ff
	rst  $38                                         ; $5169: $ff
	rst  $38                                         ; $516a: $ff
	ret                                              ; $516b: $c9


	inc  hl                                          ; $516c: $23
	ld   de, $1111                                   ; $516d: $11 $11 $11
	ld   c, [hl]                                     ; $5170: $4e
	rst  $38                                         ; $5171: $ff
	rst  $38                                         ; $5172: $ff
	cp   $61                                         ; $5173: $fe $61
	ld   de, $1111                                   ; $5175: $11 $11 $11
	ld   de, $4c11                                   ; $5178: $11 $11 $4c
	rst  $38                                         ; $517b: $ff
	rst  $38                                         ; $517c: $ff
	rst  $38                                         ; $517d: $ff
	rst  $38                                         ; $517e: $ff
	rst  $30                                         ; $517f: $f7
	ld   hl, $1111                                   ; $5180: $21 $11 $11
	ld   de, $ff7f                                   ; $5183: $11 $7f $ff
	rst  $38                                         ; $5186: $ff
	rst  $38                                         ; $5187: $ff
	or   $11                                         ; $5188: $f6 $11
	ld   de, $1111                                   ; $518a: $11 $11 $11
	ld   de, $ff3d                                   ; $518d: $11 $3d $ff
	rst  $38                                         ; $5190: $ff
	rst  $38                                         ; $5191: $ff
	rst  $38                                         ; $5192: $ff
	rst  $38                                         ; $5193: $ff
	ld   [hl], c                                     ; $5194: $71
	ld   de, $1111                                   ; $5195: $11 $11 $11
	dec  de                                          ; $5198: $1b
	rst  $38                                         ; $5199: $ff
	rst  $38                                         ; $519a: $ff
	rst  $38                                         ; $519b: $ff
	rst  $38                                         ; $519c: $ff
	or   h                                           ; $519d: $b4
	ld   de, $1111                                   ; $519e: $11 $11 $11
	ld   de, $ef11                                   ; $51a1: $11 $11 $ef
	rst  $38                                         ; $51a4: $ff
	rst  $38                                         ; $51a5: $ff
	rst  $38                                         ; $51a6: $ff
	rst  $38                                         ; $51a7: $ff
	rst  $38                                         ; $51a8: $ff
	ld   b, c                                        ; $51a9: $41
	ld   de, $1111                                   ; $51aa: $11 $11 $11
	ccf                                              ; $51ad: $3f
	rst  $38                                         ; $51ae: $ff
	rst  $38                                         ; $51af: $ff
	rst  $38                                         ; $51b0: $ff
	rst  $38                                         ; $51b1: $ff
	ld   [hl], c                                     ; $51b2: $71
	ld   de, $1111                                   ; $51b3: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $51b6: $11 $11 $ff
	rst  $38                                         ; $51b9: $ff
	rst  $38                                         ; $51ba: $ff
	rst  $38                                         ; $51bb: $ff
	rst  $38                                         ; $51bc: $ff
	db   $fc                                         ; $51bd: $fc
	ld   sp, $1111                                   ; $51be: $31 $11 $11
	ld   de, $ff1f                                   ; $51c1: $11 $1f $ff
	rst  $38                                         ; $51c4: $ff
	rst  $38                                         ; $51c5: $ff
	rst  $38                                         ; $51c6: $ff
	ld   h, c                                        ; $51c7: $61
	ld   de, $1111                                   ; $51c8: $11 $11 $11
	ld   de, $5f11                                   ; $51cb: $11 $11 $5f
	rst  $38                                         ; $51ce: $ff
	rst  $38                                         ; $51cf: $ff
	rst  $38                                         ; $51d0: $ff
	rst  $38                                         ; $51d1: $ff
	add  sp, $21                                     ; $51d2: $e8 $21
	ld   de, $1111                                   ; $51d4: $11 $11 $11
	ld   d, $ff                                      ; $51d7: $16 $ff
	rst  $38                                         ; $51d9: $ff
	rst  $38                                         ; $51da: $ff
	rst  $38                                         ; $51db: $ff
	or   c                                           ; $51dc: $b1
	ld   de, $1111                                   ; $51dd: $11 $11 $11
	ld   de, $1711                                   ; $51e0: $11 $11 $17
	rst  $38                                         ; $51e3: $ff
	rst  $38                                         ; $51e4: $ff
	rst  $38                                         ; $51e5: $ff
	rst  $38                                         ; $51e6: $ff
	push hl                                          ; $51e7: $e5
	ld   de, $1111                                   ; $51e8: $11 $11 $11
	ld   de, $5f11                                   ; $51eb: $11 $11 $5f
	rst  $38                                         ; $51ee: $ff
	rst  $38                                         ; $51ef: $ff
	rst  $38                                         ; $51f0: $ff
	ld   a, [$1111]                                  ; $51f1: $fa $11 $11
	ld   de, $1111                                   ; $51f4: $11 $11 $11
	ld   de, $ff4f                                   ; $51f7: $11 $4f $ff
	rst  $38                                         ; $51fa: $ff
	rst  $38                                         ; $51fb: $ff
	ld   sp, hl                                      ; $51fc: $f9
	ld   de, $1111                                   ; $51fd: $11 $11 $11
	ld   de, $1411                                   ; $5200: $11 $11 $14
	rst  $38                                         ; $5203: $ff
	rst  $38                                         ; $5204: $ff
	rst  $38                                         ; $5205: $ff
	rst  $38                                         ; $5206: $ff
	ld   [hl], c                                     ; $5207: $71
	ld   de, $1111                                   ; $5208: $11 $11 $11
	ld   de, $1511                                   ; $520b: $11 $11 $15
	rst  $38                                         ; $520e: $ff
	rst  $38                                         ; $520f: $ff
	rst  $38                                         ; $5210: $ff
	rst  $38                                         ; $5211: $ff
	ld   h, c                                        ; $5212: $61
	ld   de, $1111                                   ; $5213: $11 $11 $11
	ld   de, $6f11                                   ; $5216: $11 $11 $6f
	rst  $38                                         ; $5219: $ff
	rst  $38                                         ; $521a: $ff
	rst  $38                                         ; $521b: $ff
	rst  $30                                         ; $521c: $f7
	ld   de, $1111                                   ; $521d: $11 $11 $11
	ld   de, $1111                                   ; $5220: $11 $11 $11
	adc  a                                           ; $5223: $8f
	rst  $38                                         ; $5224: $ff
	rst  $38                                         ; $5225: $ff
	rst  $38                                         ; $5226: $ff
	db   $e3                                         ; $5227: $e3
	ld   de, $1111                                   ; $5228: $11 $11 $11
	ld   de, $1911                                   ; $522b: $11 $11 $19
	rst  $38                                         ; $522e: $ff
	rst  $38                                         ; $522f: $ff
	rst  $38                                         ; $5230: $ff
	rst  $38                                         ; $5231: $ff
	ld   de, $1111                                   ; $5232: $11 $11 $11
	ld   de, $1111                                   ; $5235: $11 $11 $11
	rra                                              ; $5238: $1f
	rst  $38                                         ; $5239: $ff
	rst  $38                                         ; $523a: $ff
	rst  $38                                         ; $523b: $ff
	push af                                          ; $523c: $f5
	ld   de, $1111                                   ; $523d: $11 $11 $11
	ld   de, $1511                                   ; $5240: $11 $11 $15
	rst  $38                                         ; $5243: $ff
	rst  $38                                         ; $5244: $ff
	rst  $38                                         ; $5245: $ff
	rst  $38                                         ; $5246: $ff
	ld   hl, $1111                                   ; $5247: $21 $11 $11
	ld   de, $1111                                   ; $524a: $11 $11 $11
	rra                                              ; $524d: $1f
	rst  $38                                         ; $524e: $ff
	rst  $38                                         ; $524f: $ff
	rst  $38                                         ; $5250: $ff
	di                                               ; $5251: $f3
	ld   de, $1111                                   ; $5252: $11 $11 $11
	ld   de, $1711                                   ; $5255: $11 $11 $17
	rst  $38                                         ; $5258: $ff
	rst  $38                                         ; $5259: $ff
	rst  $38                                         ; $525a: $ff
	ld   a, [$1111]                                  ; $525b: $fa $11 $11
	ld   de, $1111                                   ; $525e: $11 $11 $11
	ld   de, $ffaf                                   ; $5261: $11 $af $ff
	rst  $38                                         ; $5264: $ff
	rst  $38                                         ; $5265: $ff
	ld   d, c                                        ; $5266: $51
	ld   de, $1111                                   ; $5267: $11 $11 $11
	ld   de, $4f11                                   ; $526a: $11 $11 $4f
	rst  $38                                         ; $526d: $ff
	rst  $38                                         ; $526e: $ff
	rst  $38                                         ; $526f: $ff
	and  c                                           ; $5270: $a1
	ld   de, $1111                                   ; $5271: $11 $11 $11
	ld   de, $1d11                                   ; $5274: $11 $11 $1d
	rst  $38                                         ; $5277: $ff
	rst  $38                                         ; $5278: $ff
	rst  $38                                         ; $5279: $ff
	ldh  [c], a                                      ; $527a: $e2
	ld   de, $1111                                   ; $527b: $11 $11 $11
	ld   de, $1c11                                   ; $527e: $11 $11 $1c
	rst  $38                                         ; $5281: $ff
	rst  $38                                         ; $5282: $ff
	rst  $38                                         ; $5283: $ff
	pop  hl                                          ; $5284: $e1
	ld   de, $1111                                   ; $5285: $11 $11 $11
	ld   de, $1a11                                   ; $5288: $11 $11 $1a
	rst  $38                                         ; $528b: $ff
	rst  $38                                         ; $528c: $ff
	rst  $38                                         ; $528d: $ff
	ldh  [c], a                                      ; $528e: $e2
	ld   de, $1111                                   ; $528f: $11 $11 $11
	ld   de, $1f11                                   ; $5292: $11 $11 $1f
	rst  $38                                         ; $5295: $ff
	rst  $38                                         ; $5296: $ff
	rst  $38                                         ; $5297: $ff
	add  c                                           ; $5298: $81
	ld   de, $1111                                   ; $5299: $11 $11 $11
	ld   de, $2f11                                   ; $529c: $11 $11 $2f
	rst  $38                                         ; $529f: $ff
	rst  $38                                         ; $52a0: $ff
	rst  $38                                         ; $52a1: $ff
	ld   h, c                                        ; $52a2: $61
	ld   de, $1111                                   ; $52a3: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $52a6: $11 $11 $ff
	rst  $38                                         ; $52a9: $ff
	rst  $38                                         ; $52aa: $ff
	rst  $30                                         ; $52ab: $f7
	ld   de, $1111                                   ; $52ac: $11 $11 $11
	ld   de, $1d11                                   ; $52af: $11 $11 $1d
	rst  $38                                         ; $52b2: $ff
	rst  $38                                         ; $52b3: $ff
	rst  $38                                         ; $52b4: $ff
	rst  $10                                         ; $52b5: $d7
	ld   d, h                                        ; $52b6: $54
	ld   sp, $1111                                   ; $52b7: $31 $11 $11
	ld   de, $ffff                                   ; $52ba: $11 $ff $ff
	rst  $38                                         ; $52bd: $ff
	rst  $30                                         ; $52be: $f7
	ld   bc, $1111                                   ; $52bf: $01 $11 $11
	ld   de, $1f11                                   ; $52c2: $11 $11 $1f
	rst  $38                                         ; $52c5: $ff
	rst  $38                                         ; $52c6: $ff
	rst  $38                                         ; $52c7: $ff
	call c, Call_0dd_41b9                            ; $52c8: $dc $b9 $41
	ld   de, $1f11                                   ; $52cb: $11 $11 $1f
	rst  $38                                         ; $52ce: $ff
	rst  $38                                         ; $52cf: $ff
	rst  $38                                         ; $52d0: $ff
	ld   [hl], h                                     ; $52d1: $74
	ld   d, e                                        ; $52d2: $53
	ld   de, $1111                                   ; $52d3: $11 $11 $11
	dec  e                                           ; $52d6: $1d
	rst  $38                                         ; $52d7: $ff
	rst  $38                                         ; $52d8: $ff
	rst  $38                                         ; $52d9: $ff
	rst  $38                                         ; $52da: $ff
	db   $fc                                         ; $52db: $fc
	and  c                                           ; $52dc: $a1
	ld   de, $1e11                                   ; $52dd: $11 $11 $1e
	rst  $38                                         ; $52e0: $ff
	rst  $38                                         ; $52e1: $ff
	add  sp, $42                                     ; $52e2: $e8 $42
	ld   b, c                                        ; $52e4: $41
	ld   de, $1211                                   ; $52e5: $11 $11 $12
	cp   a                                           ; $52e8: $bf
	rst  $38                                         ; $52e9: $ff
	rst  $38                                         ; $52ea: $ff
	rst  $38                                         ; $52eb: $ff
	rst  $38                                         ; $52ec: $ff
	and  a                                           ; $52ed: $a7
	ld   de, $2a11                                   ; $52ee: $11 $11 $2a
	rst  $38                                         ; $52f1: $ff
	rst  $38                                         ; $52f2: $ff
	call nz, $1132                                   ; $52f3: $c4 $32 $11
	ld   de, $1911                                   ; $52f6: $11 $11 $19
	rst  $38                                         ; $52f9: $ff
	rst  $38                                         ; $52fa: $ff
	rst  $38                                         ; $52fb: $ff
	rst  $38                                         ; $52fc: $ff
	rst  $38                                         ; $52fd: $ff
	add  h                                           ; $52fe: $84
	ld   de, $8f11                                   ; $52ff: $11 $11 $8f
	rst  $38                                         ; $5302: $ff
	cp   $93                                         ; $5303: $fe $93
	ld   h, [hl]                                     ; $5305: $66
	ld   b, c                                        ; $5306: $41
	ld   de, $1f11                                   ; $5307: $11 $11 $1f
	rst  $38                                         ; $530a: $ff
	rst  $38                                         ; $530b: $ff
	db   $fd                                         ; $530c: $fd
	rst  $38                                         ; $530d: $ff
	rst  $38                                         ; $530e: $ff
	ld   [hl], c                                     ; $530f: $71
	ld   de, rAUD1HIGH                                   ; $5310: $11 $14 $ff
	rst  $38                                         ; $5313: $ff
	ld   b, e                                        ; $5314: $43
	ld   d, [hl]                                     ; $5315: $56
	call c, $1121                                    ; $5316: $dc $21 $11
	ld   de, $ffff                                   ; $5319: $11 $ff $ff
	adc  b                                           ; $531c: $88
	xor  a                                           ; $531d: $af
	rst  $38                                         ; $531e: $ff
	or   $11                                         ; $531f: $f6 $11
	inc  de                                          ; $5321: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5322: $cf
	ld   hl, sp+$61                                  ; $5323: $f8 $61
	add  hl, de                                      ; $5325: $19
	xor  d                                           ; $5326: $aa
	ld   sp, $1411                                   ; $5327: $31 $11 $14
	rst  $38                                         ; $532a: $ff
	rst  $38                                         ; $532b: $ff
	add  [hl]                                        ; $532c: $86
	cp   a                                           ; $532d: $bf
	rst  $38                                         ; $532e: $ff
	push af                                          ; $532f: $f5
	ld   de, $ff17                                   ; $5330: $11 $17 $ff
	db   $e4                                         ; $5333: $e4
	ld   hl, $8129                                   ; $5334: $21 $29 $81
	ld   de, $8f11                                   ; $5337: $11 $11 $8f
	rst  $38                                         ; $533a: $ff
	di                                               ; $533b: $f3
	ld   a, a                                        ; $533c: $7f
	rst  $38                                         ; $533d: $ff
	rst  $38                                         ; $533e: $ff
	ld   de, $de12                                   ; $533f: $11 $12 $de
	db   $d3                                         ; $5342: $d3
	ld   [de], a                                     ; $5343: $12
	rla                                              ; $5344: $17
	or   c                                           ; $5345: $b1
	ld   de, $9f11                                   ; $5346: $11 $11 $9f
	rst  $38                                         ; $5349: $ff
	db   $f4                                         ; $534a: $f4
	rst  JumpTable                                         ; $534b: $df
	rst  $38                                         ; $534c: $ff
	cp   e                                           ; $534d: $bb
	ld   de, $f69c                                   ; $534e: $11 $9c $f6
	ld   hl, $8716                                   ; $5351: $21 $16 $87
	ld   de, $8f11                                   ; $5354: $11 $11 $8f
	rst  $38                                         ; $5357: $ff
	call nc, $ff4f                                   ; $5358: $d4 $4f $ff
	ld   hl, sp+$51                                  ; $535b: $f8 $51
	sbc  a                                           ; $535d: $9f
	ei                                               ; $535e: $fb
	ld   de, $5211                                   ; $535f: $11 $11 $52
	ld   de, $8f11                                   ; $5362: $11 $11 $8f
	rst  $38                                         ; $5365: $ff
	ld   a, [$ffff]                                  ; $5366: $fa $ff $ff
	pop  af                                          ; $5369: $f1
	jr   c, @+$01                                    ; $536a: $38 $ff

	pop  bc                                          ; $536c: $c1
	ld   de, $1114                                   ; $536d: $11 $14 $11
	ld   de, $ff1f                                   ; $5370: $11 $1f $ff
	ei                                               ; $5373: $fb
	rst  JumpTable                                         ; $5374: $df
	rst  $38                                         ; $5375: $ff
	or   $15                                         ; $5376: $f6 $15
	rst  $38                                         ; $5378: $ff
	rst  $30                                         ; $5379: $f7
	ld   de, $1113                                   ; $537a: $11 $13 $11
	ld   de, $ff1d                                   ; $537d: $11 $1d $ff
	db   $fc                                         ; $5380: $fc
	rst  $38                                         ; $5381: $ff
	rst  $38                                         ; $5382: $ff
	rst  $30                                         ; $5383: $f7
	inc  l                                           ; $5384: $2c
	rst  $38                                         ; $5385: $ff

Jump_0dd_5386:
	and  c                                           ; $5386: $a1
	ld   de, $1111                                   ; $5387: $11 $11 $11
	ld   de, $ff8f                                   ; $538a: $11 $8f $ff
	rst  JumpTable                                         ; $538d: $df
	rst  $38                                         ; $538e: $ff
	rst  $38                                         ; $538f: $ff
	add  [hl]                                        ; $5390: $86
	rst  $38                                         ; $5391: $ff
	ld   a, [$1111]                                  ; $5392: $fa $11 $11
	ld   de, $1a11                                   ; $5395: $11 $11 $1a
	rst  $38                                         ; $5398: $ff
	call $ffff                                       ; $5399: $cd $ff $ff
	add  sp, -$11                                    ; $539c: $e8 $ef
	db   $fd                                         ; $539e: $fd
	ld   sp, $1111                                   ; $539f: $31 $11 $11
	ld   de, $cd18                                   ; $53a2: $11 $18 $cd
	rst  JumpTable                                         ; $53a5: $df
	rst  $38                                         ; $53a6: $ff
	rst  $38                                         ; $53a7: $ff
	db   $fd                                         ; $53a8: $fd
	rst  $38                                         ; $53a9: $ff
	ei                                               ; $53aa: $fb
	ld   h, [hl]                                     ; $53ab: $66
	ld   b, c                                        ; $53ac: $41
	ld   de, $1511                                   ; $53ad: $11 $11 $15
	ld   e, c                                        ; $53b0: $59
	rst  JumpTable                                         ; $53b1: $df
	rst  $38                                         ; $53b2: $ff
	cp   $ff                                         ; $53b3: $fe $ff
	rst  $38                                         ; $53b5: $ff
	ei                                               ; $53b6: $fb
	and  a                                           ; $53b7: $a7
	ld   de, $1111                                   ; $53b8: $11 $11 $11
	ld   [de], a                                     ; $53bb: $12
	ld   e, d                                        ; $53bc: $5a
	rst  $38                                         ; $53bd: $ff
	rst  $38                                         ; $53be: $ff
	rst  $38                                         ; $53bf: $ff
	rst  $38                                         ; $53c0: $ff
	rst  $38                                         ; $53c1: $ff
	db   $eb                                         ; $53c2: $eb
	and  [hl]                                        ; $53c3: $a6
	ld   de, $1111                                   ; $53c4: $11 $11 $11
	ld   de, $ed4c                                   ; $53c7: $11 $4c $ed
	rst  $38                                         ; $53ca: $ff
	rst  $38                                         ; $53cb: $ff
	cp   $ff                                         ; $53cc: $fe $ff
	jp   z, $1187                                    ; $53ce: $ca $87 $11

	ld   de, $2311                                   ; $53d1: $11 $11 $23
	adc  l                                           ; $53d4: $8d
	cp   h                                           ; $53d5: $bc
	db   $dd                                         ; $53d6: $dd
	rst  $38                                         ; $53d7: $ff
	rst  $38                                         ; $53d8: $ff
	db   $dd                                         ; $53d9: $dd
	xor  e                                           ; $53da: $ab
	ld   h, e                                        ; $53db: $63
	ld   de, $1221                                   ; $53dc: $11 $21 $12
	ld   b, a                                        ; $53df: $47
	ld   [hl], a                                     ; $53e0: $77
	adc  h                                           ; $53e1: $8c
	db   $ec                                         ; $53e2: $ec
	call z, $dbef                                    ; $53e3: $cc $ef $db
	ret                                              ; $53e6: $c9


	ld   h, [hl]                                     ; $53e7: $66
	ld   [de], a                                     ; $53e8: $12
	ld   b, c                                        ; $53e9: $41
	inc  de                                          ; $53ea: $13
	ld   h, [hl]                                     ; $53eb: $66
	sub  e                                           ; $53ec: $93
	ld   l, h                                        ; $53ed: $6c
	sbc  h                                           ; $53ee: $9c
	xor  d                                           ; $53ef: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53f0: $cf
	sbc  c                                           ; $53f1: $99
	cp   c                                           ; $53f2: $b9
	sbc  b                                           ; $53f3: $98
	ld   b, h                                        ; $53f4: $44
	ld   h, e                                        ; $53f5: $63
	inc  [hl]                                        ; $53f6: $34
	ld   [hl], $65                                   ; $53f7: $36 $65
	ld   e, b                                        ; $53f9: $58
	ld   a, c                                        ; $53fa: $79
	set  3, e                                        ; $53fb: $cb $db
	xor  e                                           ; $53fd: $ab
	xor  c                                           ; $53fe: $a9
	sub  [hl]                                        ; $53ff: $96
	ld   d, a                                        ; $5400: $57
	ld   d, h                                        ; $5401: $54
	ld   l, b                                        ; $5402: $68
	ld   h, a                                        ; $5403: $67
	add  [hl]                                        ; $5404: $86
	xor  d                                           ; $5405: $aa
	sbc  d                                           ; $5406: $9a
	xor  d                                           ; $5407: $aa
	adc  c                                           ; $5408: $89
	sbc  b                                           ; $5409: $98
	add  $5b                                         ; $540a: $c6 $5b
	ld   c, c                                        ; $540c: $49
	sbc  b                                           ; $540d: $98
	add  a                                           ; $540e: $87
	and  h                                           ; $540f: $a4
	and  [hl]                                        ; $5410: $a6
	ld   a, c                                        ; $5411: $79
	ld   l, d                                        ; $5412: $6a
	ld   a, c                                        ; $5413: $79
	ld   a, c                                        ; $5414: $79
	add  [hl]                                        ; $5415: $86
	xor  b                                           ; $5416: $a8
	ld   a, e                                        ; $5417: $7b
	add  a                                           ; $5418: $87
	or   a                                           ; $5419: $b7
	sub  a                                           ; $541a: $97
	adc  b                                           ; $541b: $88
	sbc  c                                           ; $541c: $99
	ld   c, c                                        ; $541d: $49
	adc  c                                           ; $541e: $89
	and  [hl]                                        ; $541f: $a6
	sbc  e                                           ; $5420: $9b
	xor  c                                           ; $5421: $a9
	sbc  b                                           ; $5422: $98
	ld   a, b                                        ; $5423: $78
	halt                                             ; $5424: $76
	sbc  b                                           ; $5425: $98
	add  [hl]                                        ; $5426: $86
	adc  e                                           ; $5427: $8b
	xor  c                                           ; $5428: $a9
	sbc  b                                           ; $5429: $98
	xor  c                                           ; $542a: $a9
	sbc  d                                           ; $542b: $9a
	ld   a, d                                        ; $542c: $7a
	ld   l, c                                        ; $542d: $69
	sbc  b                                           ; $542e: $98
	sbc  b                                           ; $542f: $98
	sub  [hl]                                        ; $5430: $96
	sbc  b                                           ; $5431: $98
	add  a                                           ; $5432: $87
	adc  b                                           ; $5433: $88
	adc  c                                           ; $5434: $89
	sbc  b                                           ; $5435: $98
	adc  c                                           ; $5436: $89
	adc  c                                           ; $5437: $89
	sbc  b                                           ; $5438: $98
	sbc  c                                           ; $5439: $99
	add  a                                           ; $543a: $87
	sbc  c                                           ; $543b: $99
	add  a                                           ; $543c: $87
	ld   a, b                                        ; $543d: $78
	sub  a                                           ; $543e: $97
	xor  b                                           ; $543f: $a8
	xor  b                                           ; $5440: $a8
	adc  c                                           ; $5441: $89
	sbc  c                                           ; $5442: $99
	ld   a, b                                        ; $5443: $78
	adc  c                                           ; $5444: $89
	adc  c                                           ; $5445: $89
	adc  b                                           ; $5446: $88
	add  a                                           ; $5447: $87
	sub  a                                           ; $5448: $97
	sbc  b                                           ; $5449: $98
	ld   [hl], a                                     ; $544a: $77
	adc  b                                           ; $544b: $88
	sbc  c                                           ; $544c: $99
	adc  c                                           ; $544d: $89
	adc  b                                           ; $544e: $88
	adc  c                                           ; $544f: $89
	ld   a, d                                        ; $5450: $7a
	sub  a                                           ; $5451: $97
	sub  a                                           ; $5452: $97
	sub  a                                           ; $5453: $97
	add  [hl]                                        ; $5454: $86
	adc  b                                           ; $5455: $88
	ld   l, b                                        ; $5456: $68
	adc  c                                           ; $5457: $89
	ld   a, b                                        ; $5458: $78
	adc  b                                           ; $5459: $88
	adc  b                                           ; $545a: $88
	sbc  b                                           ; $545b: $98
	adc  b                                           ; $545c: $88
	sbc  b                                           ; $545d: $98
	ld   [hl], a                                     ; $545e: $77
	add  a                                           ; $545f: $87
	add  [hl]                                        ; $5460: $86
	ld   a, b                                        ; $5461: $78
	ld   a, b                                        ; $5462: $78
	ld   a, b                                        ; $5463: $78
	ld   a, d                                        ; $5464: $7a
	ld   a, c                                        ; $5465: $79
	sbc  b                                           ; $5466: $98
	sub  a                                           ; $5467: $97
	sbc  b                                           ; $5468: $98
	sub  a                                           ; $5469: $97
	ld   a, b                                        ; $546a: $78
	ld   a, b                                        ; $546b: $78
	add  a                                           ; $546c: $87
	add  [hl]                                        ; $546d: $86
	ld   a, b                                        ; $546e: $78
	ld   [hl], a                                     ; $546f: $77
	add  a                                           ; $5470: $87
	adc  b                                           ; $5471: $88
	adc  b                                           ; $5472: $88
	ld   a, b                                        ; $5473: $78
	adc  c                                           ; $5474: $89
	adc  c                                           ; $5475: $89

Jump_0dd_5476:
	add  a                                           ; $5476: $87
	add  a                                           ; $5477: $87
	adc  b                                           ; $5478: $88
	sbc  b                                           ; $5479: $98
	adc  c                                           ; $547a: $89
	ld   a, b                                        ; $547b: $78
	ld   a, b                                        ; $547c: $78
	adc  b                                           ; $547d: $88
	ld   a, b                                        ; $547e: $78
	add  a                                           ; $547f: $87
	add  a                                           ; $5480: $87
	adc  b                                           ; $5481: $88
	ld   a, b                                        ; $5482: $78
	add  a                                           ; $5483: $87
	adc  b                                           ; $5484: $88
	ld   a, c                                        ; $5485: $79
	adc  b                                           ; $5486: $88
	adc  b                                           ; $5487: $88
	ld   [hl], a                                     ; $5488: $77
	ld   [hl], a                                     ; $5489: $77
	adc  b                                           ; $548a: $88
	ld   a, b                                        ; $548b: $78
	sub  a                                           ; $548c: $97
	sbc  b                                           ; $548d: $98
	ld   [hl], a                                     ; $548e: $77
	sub  a                                           ; $548f: $97
	adc  b                                           ; $5490: $88
	ld   a, b                                        ; $5491: $78
	ld   a, b                                        ; $5492: $78
	adc  c                                           ; $5493: $89
	sbc  c                                           ; $5494: $99
	adc  b                                           ; $5495: $88
	add  a                                           ; $5496: $87
	ld   a, b                                        ; $5497: $78
	add  a                                           ; $5498: $87
	adc  b                                           ; $5499: $88
	ld   a, b                                        ; $549a: $78
	ld   a, b                                        ; $549b: $78
	adc  b                                           ; $549c: $88
	ld   a, b                                        ; $549d: $78
	adc  b                                           ; $549e: $88
	add  a                                           ; $549f: $87
	adc  b                                           ; $54a0: $88
	adc  b                                           ; $54a1: $88
	add  a                                           ; $54a2: $87
	add  a                                           ; $54a3: $87
	add  a                                           ; $54a4: $87
	adc  b                                           ; $54a5: $88
	ld   a, b                                        ; $54a6: $78
	ld   a, b                                        ; $54a7: $78
	adc  c                                           ; $54a8: $89
	add  a                                           ; $54a9: $87
	sub  a                                           ; $54aa: $97
	sub  a                                           ; $54ab: $97
	and  a                                           ; $54ac: $a7
	sbc  b                                           ; $54ad: $98
	ld   a, b                                        ; $54ae: $78
	ld   a, b                                        ; $54af: $78
	ld   a, c                                        ; $54b0: $79
	add  a                                           ; $54b1: $87
	add  a                                           ; $54b2: $87
	sbc  c                                           ; $54b3: $99
	ld   a, b                                        ; $54b4: $78
	adc  b                                           ; $54b5: $88
	sub  a                                           ; $54b6: $97
	sub  a                                           ; $54b7: $97
	adc  b                                           ; $54b8: $88
	ld   a, c                                        ; $54b9: $79
	ld   a, c                                        ; $54ba: $79
	ld   [hl], a                                     ; $54bb: $77
	add  a                                           ; $54bc: $87
	ld   [hl], a                                     ; $54bd: $77
	adc  b                                           ; $54be: $88
	add  a                                           ; $54bf: $87
	sub  a                                           ; $54c0: $97
	adc  c                                           ; $54c1: $89
	adc  c                                           ; $54c2: $89
	ld   a, b                                        ; $54c3: $78
	ld   a, b                                        ; $54c4: $78
	adc  b                                           ; $54c5: $88
	sub  a                                           ; $54c6: $97
	add  a                                           ; $54c7: $87
	ld   [hl], a                                     ; $54c8: $77
	ld   a, b                                        ; $54c9: $78
	adc  b                                           ; $54ca: $88
	adc  b                                           ; $54cb: $88
	ld   a, b                                        ; $54cc: $78
	ld   a, b                                        ; $54cd: $78
	add  a                                           ; $54ce: $87
	add  a                                           ; $54cf: $87
	sbc  b                                           ; $54d0: $98
	adc  b                                           ; $54d1: $88
	adc  c                                           ; $54d2: $89
	adc  b                                           ; $54d3: $88
	ld   a, c                                        ; $54d4: $79
	adc  b                                           ; $54d5: $88
	ld   [hl], a                                     ; $54d6: $77
	sub  [hl]                                        ; $54d7: $96
	sbc  b                                           ; $54d8: $98
	ld   a, b                                        ; $54d9: $78
	ld   a, b                                        ; $54da: $78
	adc  b                                           ; $54db: $88
	ld   a, b                                        ; $54dc: $78
	adc  b                                           ; $54dd: $88
	adc  b                                           ; $54de: $88
	add  a                                           ; $54df: $87
	sub  a                                           ; $54e0: $97
	adc  c                                           ; $54e1: $89
	adc  b                                           ; $54e2: $88
	ld   a, b                                        ; $54e3: $78
	adc  b                                           ; $54e4: $88
	ld   a, c                                        ; $54e5: $79
	add  a                                           ; $54e6: $87
	adc  c                                           ; $54e7: $89
	ld   a, b                                        ; $54e8: $78
	sub  a                                           ; $54e9: $97
	sub  [hl]                                        ; $54ea: $96
	sbc  b                                           ; $54eb: $98
	ld   a, c                                        ; $54ec: $79
	ld   a, b                                        ; $54ed: $78
	ld   a, b                                        ; $54ee: $78
	adc  b                                           ; $54ef: $88
	sbc  b                                           ; $54f0: $98
	adc  b                                           ; $54f1: $88
	adc  b                                           ; $54f2: $88
	ld   a, b                                        ; $54f3: $78
	add  a                                           ; $54f4: $87
	adc  b                                           ; $54f5: $88
	ld   a, b                                        ; $54f6: $78
	sbc  b                                           ; $54f7: $98
	add  a                                           ; $54f8: $87
	adc  b                                           ; $54f9: $88
	adc  b                                           ; $54fa: $88
	adc  c                                           ; $54fb: $89
	ld   a, b                                        ; $54fc: $78
	sub  a                                           ; $54fd: $97
	sub  a                                           ; $54fe: $97
	adc  b                                           ; $54ff: $88
	adc  c                                           ; $5500: $89
	adc  b                                           ; $5501: $88
	ld   a, b                                        ; $5502: $78
	adc  b                                           ; $5503: $88
	sbc  b                                           ; $5504: $98
	ld   a, b                                        ; $5505: $78
	adc  b                                           ; $5506: $88
	sub  a                                           ; $5507: $97
	sub  a                                           ; $5508: $97
	sbc  b                                           ; $5509: $98
	ld   a, c                                        ; $550a: $79
	ld   a, b                                        ; $550b: $78
	adc  b                                           ; $550c: $88
	adc  b                                           ; $550d: $88
	sbc  b                                           ; $550e: $98
	ld   a, b                                        ; $550f: $78
	add  a                                           ; $5510: $87
	adc  b                                           ; $5511: $88
	sbc  c                                           ; $5512: $99
	ld   a, b                                        ; $5513: $78
	adc  b                                           ; $5514: $88
	adc  b                                           ; $5515: $88
	add  a                                           ; $5516: $87
	sub  a                                           ; $5517: $97
	adc  c                                           ; $5518: $89
	ld   a, b                                        ; $5519: $78
	sbc  b                                           ; $551a: $98
	ld   a, b                                        ; $551b: $78
	sub  a                                           ; $551c: $97
	add  a                                           ; $551d: $87
	sbc  b                                           ; $551e: $98
	ld   a, c                                        ; $551f: $79
	adc  b                                           ; $5520: $88
	ld   a, d                                        ; $5521: $7a
	ld   a, b                                        ; $5522: $78
	sub  a                                           ; $5523: $97
	sbc  b                                           ; $5524: $98
	add  a                                           ; $5525: $87
	adc  b                                           ; $5526: $88
	sub  a                                           ; $5527: $97
	adc  c                                           ; $5528: $89
	adc  c                                           ; $5529: $89
	adc  c                                           ; $552a: $89
	sub  a                                           ; $552b: $97
	adc  b                                           ; $552c: $88
	adc  b                                           ; $552d: $88
	ld   a, c                                        ; $552e: $79
	ld   a, c                                        ; $552f: $79
	sub  a                                           ; $5530: $97
	add  a                                           ; $5531: $87
	adc  b                                           ; $5532: $88
	adc  c                                           ; $5533: $89
	ld   a, c                                        ; $5534: $79
	sub  a                                           ; $5535: $97
	sub  a                                           ; $5536: $97
	sbc  b                                           ; $5537: $98
	ld   a, c                                        ; $5538: $79
	sub  a                                           ; $5539: $97
	ld   a, b                                        ; $553a: $78
	sbc  c                                           ; $553b: $99
	ld   a, c                                        ; $553c: $79
	add  a                                           ; $553d: $87
	adc  b                                           ; $553e: $88
	sub  a                                           ; $553f: $97
	sbc  b                                           ; $5540: $98
	adc  b                                           ; $5541: $88
	ld   a, c                                        ; $5542: $79
	adc  b                                           ; $5543: $88
	adc  b                                           ; $5544: $88
	ld   a, b                                        ; $5545: $78
	ld   a, b                                        ; $5546: $78
	adc  b                                           ; $5547: $88
	sub  [hl]                                        ; $5548: $96
	sbc  c                                           ; $5549: $99
	ld   a, c                                        ; $554a: $79
	ld   a, c                                        ; $554b: $79
	adc  b                                           ; $554c: $88
	ld   a, b                                        ; $554d: $78
	adc  c                                           ; $554e: $89
	ld   a, c                                        ; $554f: $79
	sub  a                                           ; $5550: $97
	sub  a                                           ; $5551: $97
	sbc  b                                           ; $5552: $98
	ld   a, c                                        ; $5553: $79
	add  a                                           ; $5554: $87
	sbc  b                                           ; $5555: $98
	ld   a, b                                        ; $5556: $78
	adc  b                                           ; $5557: $88
	ld   a, b                                        ; $5558: $78
	sbc  b                                           ; $5559: $98
	adc  b                                           ; $555a: $88
	sbc  b                                           ; $555b: $98
	sub  a                                           ; $555c: $97
	adc  b                                           ; $555d: $88
	add  a                                           ; $555e: $87
	adc  b                                           ; $555f: $88
	adc  c                                           ; $5560: $89
	ld   a, c                                        ; $5561: $79
	sub  a                                           ; $5562: $97
	sub  a                                           ; $5563: $97
	adc  b                                           ; $5564: $88
	ld   [hl], a                                     ; $5565: $77
	sbc  d                                           ; $5566: $9a
	adc  b                                           ; $5567: $88
	ld   a, c                                        ; $5568: $79
	ld   l, c                                        ; $5569: $69
	ld   a, c                                        ; $556a: $79
	sub  l                                           ; $556b: $95
	or   l                                           ; $556c: $b5
	or   a                                           ; $556d: $b7
	sbc  b                                           ; $556e: $98
	ld   a, e                                        ; $556f: $7b
	ld   l, c                                        ; $5570: $69
	ld   a, b                                        ; $5571: $78
	ld   a, b                                        ; $5572: $78
	adc  c                                           ; $5573: $89
	sub  a                                           ; $5574: $97
	adc  c                                           ; $5575: $89
	sub  [hl]                                        ; $5576: $96
	and  a                                           ; $5577: $a7
	add  a                                           ; $5578: $87
	ld   a, c                                        ; $5579: $79
	adc  c                                           ; $557a: $89
	ld   a, b                                        ; $557b: $78
	adc  b                                           ; $557c: $88
	ld   a, b                                        ; $557d: $78
	ld   a, c                                        ; $557e: $79
	ld   [hl], a                                     ; $557f: $77
	add  a                                           ; $5580: $87
	xor  b                                           ; $5581: $a8
	sbc  b                                           ; $5582: $98
	adc  c                                           ; $5583: $89
	ld   l, b                                        ; $5584: $68
	sub  a                                           ; $5585: $97
	adc  b                                           ; $5586: $88
	sub  [hl]                                        ; $5587: $96
	and  a                                           ; $5588: $a7
	adc  b                                           ; $5589: $88
	adc  b                                           ; $558a: $88
	ld   l, c                                        ; $558b: $69
	ld   a, c                                        ; $558c: $79
	add  a                                           ; $558d: $87
	sbc  c                                           ; $558e: $99
	ld   [hl], a                                     ; $558f: $77
	sub  a                                           ; $5590: $97
	adc  b                                           ; $5591: $88
	ld   a, c                                        ; $5592: $79
	adc  b                                           ; $5593: $88
	sub  a                                           ; $5594: $97
	ld   a, c                                        ; $5595: $79
	sub  a                                           ; $5596: $97
	ld   a, c                                        ; $5597: $79
	ld   a, b                                        ; $5598: $78
	add  a                                           ; $5599: $87
	sub  a                                           ; $559a: $97
	ld   a, b                                        ; $559b: $78
	adc  b                                           ; $559c: $88
	ld   [hl], a                                     ; $559d: $77
	sub  [hl]                                        ; $559e: $96
	sbc  b                                           ; $559f: $98
	ld   a, c                                        ; $55a0: $79
	adc  b                                           ; $55a1: $88
	ld   a, c                                        ; $55a2: $79
	halt                                             ; $55a3: $76
	sub  a                                           ; $55a4: $97
	adc  b                                           ; $55a5: $88
	ld   a, b                                        ; $55a6: $78

Call_0dd_55a7:
	sub  a                                           ; $55a7: $97
	adc  b                                           ; $55a8: $88
	adc  b                                           ; $55a9: $88
	add  a                                           ; $55aa: $87
	adc  b                                           ; $55ab: $88
	ld   a, b                                        ; $55ac: $78
	adc  b                                           ; $55ad: $88
	adc  b                                           ; $55ae: $88
	add  a                                           ; $55af: $87
	ld   a, c                                        ; $55b0: $79
	add  a                                           ; $55b1: $87
	sub  a                                           ; $55b2: $97
	sub  a                                           ; $55b3: $97
	sub  a                                           ; $55b4: $97
	ld   a, d                                        ; $55b5: $7a
	ld   a, e                                        ; $55b6: $7b
	ld   l, c                                        ; $55b7: $69
	add  a                                           ; $55b8: $87
	adc  b                                           ; $55b9: $88
	and  l                                           ; $55ba: $a5
	and  a                                           ; $55bb: $a7
	add  a                                           ; $55bc: $87
	add  a                                           ; $55bd: $87
	adc  c                                           ; $55be: $89
	ld   l, d                                        ; $55bf: $6a
	ld   l, b                                        ; $55c0: $68
	ld   a, c                                        ; $55c1: $79
	ld   a, c                                        ; $55c2: $79
	sub  [hl]                                        ; $55c3: $96
	and  [hl]                                        ; $55c4: $a6
	sub  a                                           ; $55c5: $97
	sbc  b                                           ; $55c6: $98
	ld   a, b                                        ; $55c7: $78
	ld   a, c                                        ; $55c8: $79
	ld   a, d                                        ; $55c9: $7a
	ld   a, c                                        ; $55ca: $79
	ld   h, a                                        ; $55cb: $67
	and  [hl]                                        ; $55cc: $a6
	adc  b                                           ; $55cd: $88
	ld   a, b                                        ; $55ce: $78
	and  [hl]                                        ; $55cf: $a6
	sbc  b                                           ; $55d0: $98
	sub  a                                           ; $55d1: $97
	ld   a, d                                        ; $55d2: $7a
	ld   e, d                                        ; $55d3: $5a
	ld   e, c                                        ; $55d4: $59
	adc  c                                           ; $55d5: $89
	add  a                                           ; $55d6: $87
	and  l                                           ; $55d7: $a5
	sub  [hl]                                        ; $55d8: $96
	cp   b                                           ; $55d9: $b8
	ld   a, c                                        ; $55da: $79
	sbc  d                                           ; $55db: $9a
	ld   e, b                                        ; $55dc: $58
	ld   a, d                                        ; $55dd: $7a
	halt                                             ; $55de: $76
	and  a                                           ; $55df: $a7
	add  a                                           ; $55e0: $87
	sbc  b                                           ; $55e1: $98
	ld   l, c                                        ; $55e2: $69
	ld   a, d                                        ; $55e3: $7a
	adc  b                                           ; $55e4: $88
	adc  b                                           ; $55e5: $88
	add  [hl]                                        ; $55e6: $86
	adc  c                                           ; $55e7: $89
	or   l                                           ; $55e8: $b5
	adc  d                                           ; $55e9: $8a
	ld   l, c                                        ; $55ea: $69
	ld   e, e                                        ; $55eb: $5b
	ld   [hl], a                                     ; $55ec: $77
	sub  [hl]                                        ; $55ed: $96
	and  [hl]                                        ; $55ee: $a6
	add  a                                           ; $55ef: $87
	sub  a                                           ; $55f0: $97
	adc  c                                           ; $55f1: $89
	ld   a, d                                        ; $55f2: $7a
	ld   a, b                                        ; $55f3: $78
	sub  a                                           ; $55f4: $97
	adc  b                                           ; $55f5: $88
	ld   a, c                                        ; $55f6: $79
	ld   a, c                                        ; $55f7: $79
	add  a                                           ; $55f8: $87
	sbc  c                                           ; $55f9: $99
	xor  c                                           ; $55fa: $a9
	ld   [hl], a                                     ; $55fb: $77
	sub  [hl]                                        ; $55fc: $96
	adc  c                                           ; $55fd: $89
	adc  c                                           ; $55fe: $89
	add  a                                           ; $55ff: $87
	ld   l, d                                        ; $5600: $6a
	sub  [hl]                                        ; $5601: $96
	adc  e                                           ; $5602: $8b
	sbc  b                                           ; $5603: $98
	add  a                                           ; $5604: $87
	and  a                                           ; $5605: $a7
	adc  b                                           ; $5606: $88
	or   [hl]                                        ; $5607: $b6
	ld   l, c                                        ; $5608: $69
	ld   a, b                                        ; $5609: $78
	ld   e, b                                        ; $560a: $58
	xor  e                                           ; $560b: $ab
	halt                                             ; $560c: $76
	add  $97                                         ; $560d: $c6 $97
	sbc  c                                           ; $560f: $99
	ld   a, b                                        ; $5610: $78
	adc  d                                           ; $5611: $8a
	ld   h, a                                        ; $5612: $67
	adc  b                                           ; $5613: $88
	add  a                                           ; $5614: $87
	adc  c                                           ; $5615: $89
	add  a                                           ; $5616: $87
	sbc  b                                           ; $5617: $98
	sbc  b                                           ; $5618: $98
	sub  [hl]                                        ; $5619: $96
	adc  b                                           ; $561a: $88
	ld   e, c                                        ; $561b: $59
	ld   l, d                                        ; $561c: $6a
	ld   a, e                                        ; $561d: $7b
	add  [hl]                                        ; $561e: $86
	push bc                                          ; $561f: $c5
	sub  [hl]                                        ; $5620: $96
	xor  b                                           ; $5621: $a8
	sbc  d                                           ; $5622: $9a
	ld   c, e                                        ; $5623: $4b
	ld   a, b                                        ; $5624: $78
	ld   a, c                                        ; $5625: $79
	add  a                                           ; $5626: $87
	and  h                                           ; $5627: $a4
	cp   b                                           ; $5628: $b8
	adc  b                                           ; $5629: $88
	ld   l, d                                        ; $562a: $6a
	ld   a, c                                        ; $562b: $79
	ld   a, c                                        ; $562c: $79
	sub  [hl]                                        ; $562d: $96
	sbc  c                                           ; $562e: $99
	and  [hl]                                        ; $562f: $a6
	sbc  b                                           ; $5630: $98
	ld   l, c                                        ; $5631: $69
	ld   a, c                                        ; $5632: $79
	sbc  c                                           ; $5633: $99
	ld   a, b                                        ; $5634: $78
	and  a                                           ; $5635: $a7
	add  l                                           ; $5636: $85
	cp   b                                           ; $5637: $b8
	ld   a, b                                        ; $5638: $78
	adc  c                                           ; $5639: $89
	add  a                                           ; $563a: $87
	ld   a, d                                        ; $563b: $7a
	ld   [hl], a                                     ; $563c: $77
	adc  d                                           ; $563d: $8a
	ld   l, d                                        ; $563e: $6a
	add  a                                           ; $563f: $87
	or   h                                           ; $5640: $b4
	sub  a                                           ; $5641: $97
	sub  [hl]                                        ; $5642: $96
	adc  c                                           ; $5643: $89
	ld   a, d                                        ; $5644: $7a
	ld   l, d                                        ; $5645: $6a
	ld   a, d                                        ; $5646: $7a
	ld   h, a                                        ; $5647: $67
	sbc  b                                           ; $5648: $98
	sub  [hl]                                        ; $5649: $96
	and  [hl]                                        ; $564a: $a6
	sub  a                                           ; $564b: $97
	adc  d                                           ; $564c: $8a
	adc  c                                           ; $564d: $89
	ld   a, c                                        ; $564e: $79
	ld   l, d                                        ; $564f: $6a
	ld   e, c                                        ; $5650: $59
	xor  b                                           ; $5651: $a8
	add  a                                           ; $5652: $87
	or   [hl]                                        ; $5653: $b6
	sbc  b                                           ; $5654: $98
	ld   a, c                                        ; $5655: $79
	add  [hl]                                        ; $5656: $86
	adc  d                                           ; $5657: $8a
	ld   l, b                                        ; $5658: $68
	ld   l, e                                        ; $5659: $6b
	ld   [hl], a                                     ; $565a: $77
	sub  a                                           ; $565b: $97
	and  [hl]                                        ; $565c: $a6
	sbc  c                                           ; $565d: $99
	and  [hl]                                        ; $565e: $a6
	ld   l, e                                        ; $565f: $6b
	ld   a, b                                        ; $5660: $78
	ld   a, c                                        ; $5661: $79
	sbc  b                                           ; $5662: $98
	add  [hl]                                        ; $5663: $86
	sbc  b                                           ; $5664: $98
	ld   [hl], a                                     ; $5665: $77
	adc  b                                           ; $5666: $88
	add  a                                           ; $5667: $87
	adc  c                                           ; $5668: $89
	and  a                                           ; $5669: $a7
	adc  c                                           ; $566a: $89
	sub  a                                           ; $566b: $97
	ld   a, c                                        ; $566c: $79
	sbc  d                                           ; $566d: $9a
	ld   d, a                                        ; $566e: $57
	cp   c                                           ; $566f: $b9
	ld   e, b                                        ; $5670: $58
	and  a                                           ; $5671: $a7
	ld   a, c                                        ; $5672: $79
	sbc  b                                           ; $5673: $98
	or   l                                           ; $5674: $b5
	sbc  d                                           ; $5675: $9a
	ld   d, [hl]                                     ; $5676: $56
	or   a                                           ; $5677: $b7
	ld   a, [hl-]                                    ; $5678: $3a
	sub  a                                           ; $5679: $97
	adc  c                                           ; $567a: $89
	ld   [hl], a                                     ; $567b: $77
	push bc                                          ; $567c: $c5
	adc  e                                           ; $567d: $8b
	ld   h, [hl]                                     ; $567e: $66
	or   a                                           ; $567f: $b7
	ld   c, h                                        ; $5680: $4c
	ld   [hl], a                                     ; $5681: $77
	sbc  b                                           ; $5682: $98
	adc  b                                           ; $5683: $88
	add  l                                           ; $5684: $85
	cp   d                                           ; $5685: $ba
	ld   a, b                                        ; $5686: $78
	ld   a, c                                        ; $5687: $79
	ld   h, a                                        ; $5688: $67
	ld   a, c                                        ; $5689: $79
	halt                                             ; $568a: $76
	sub  [hl]                                        ; $568b: $96
	sbc  b                                           ; $568c: $98
	ld   l, d                                        ; $568d: $6a
	add  [hl]                                        ; $568e: $86
	sbc  e                                           ; $568f: $9b
	ld   c, b                                        ; $5690: $48
	and  l                                           ; $5691: $a5
	sbc  b                                           ; $5692: $98
	ld   l, c                                        ; $5693: $69
	sub  [hl]                                        ; $5694: $96
	adc  e                                           ; $5695: $8b
	halt                                             ; $5696: $76
	adc  e                                           ; $5697: $8b
	add  [hl]                                        ; $5698: $86
	sbc  c                                           ; $5699: $99
	add  a                                           ; $569a: $87
	ld   e, c                                        ; $569b: $59
	sub  [hl]                                        ; $569c: $96
	ld   h, a                                        ; $569d: $67
	xor  b                                           ; $569e: $a8
	ld   e, c                                        ; $569f: $59
	and  a                                           ; $56a0: $a7
	ld   a, d                                        ; $56a1: $7a
	ret  z                                           ; $56a2: $c8

	ld   a, d                                        ; $56a3: $7a
	sbc  b                                           ; $56a4: $98
	add  a                                           ; $56a5: $87
	adc  b                                           ; $56a6: $88
	ld   h, h                                        ; $56a7: $64
	add  a                                           ; $56a8: $87
	ld   d, [hl]                                     ; $56a9: $56
	ld   a, d                                        ; $56aa: $7a
	sub  [hl]                                        ; $56ab: $96
	sbc  d                                           ; $56ac: $9a
	cp   d                                           ; $56ad: $ba
	adc  d                                           ; $56ae: $8a
	jp   c, $8657                                    ; $56af: $da $57 $86

	dec  [hl]                                        ; $56b2: $35
	ld   d, l                                        ; $56b3: $55
	ld   b, [hl]                                     ; $56b4: $46
	ld   [hl], a                                     ; $56b5: $77
	sbc  b                                           ; $56b6: $98
	db   $db                                         ; $56b7: $db
	xor  [hl]                                        ; $56b8: $ae
	db   $dd                                         ; $56b9: $dd
	sbc  d                                           ; $56ba: $9a
	xor  c                                           ; $56bb: $a9
	ld   b, h                                        ; $56bc: $44
	ld   [hl-], a                                    ; $56bd: $32
	ld   sp, $6413                                   ; $56be: $31 $13 $64
	ld   l, d                                        ; $56c1: $6a
	cp   a                                           ; $56c2: $bf
	rst  JumpTable                                         ; $56c3: $df
	rst  $38                                         ; $56c4: $ff
	cp   $ea                                         ; $56c5: $fe $ea
	ld   sp, $1111                                   ; $56c7: $31 $11 $11
	ld   de, $4911                                   ; $56ca: $11 $11 $49
	call z, $ffff                                    ; $56cd: $cc $ff $ff
	rst  $38                                         ; $56d0: $ff
	db   $fc                                         ; $56d1: $fc
	ld   b, c                                        ; $56d2: $41
	ld   sp, $1111                                   ; $56d3: $31 $11 $11
	ld   de, $9c13                                   ; $56d6: $11 $13 $9c

Jump_0dd_56d9:
	rst  $38                                         ; $56d9: $ff
	rst  $38                                         ; $56da: $ff
	rst  $38                                         ; $56db: $ff
	cp   $a4                                         ; $56dc: $fe $a4
	ld   sp, $1111                                   ; $56de: $31 $11 $11
	ld   de, $4b11                                   ; $56e1: $11 $11 $4b
	rst  $38                                         ; $56e4: $ff
	rst  $38                                         ; $56e5: $ff
	rst  $38                                         ; $56e6: $ff
	rst  $38                                         ; $56e7: $ff
	push af                                          ; $56e8: $f5
	ld   [hl+], a                                    ; $56e9: $22
	ld   de, $1111                                   ; $56ea: $11 $11 $11
	ld   de, $ff3a                                   ; $56ed: $11 $3a $ff
	rst  $38                                         ; $56f0: $ff
	rst  $38                                         ; $56f1: $ff
	rst  $38                                         ; $56f2: $ff
	rst  $30                                         ; $56f3: $f7
	ld   b, e                                        ; $56f4: $43
	ld   de, $1111                                   ; $56f5: $11 $11 $11
	ld   de, $cf18                                   ; $56f8: $11 $18 $cf
	rst  $38                                         ; $56fb: $ff
	rst  $38                                         ; $56fc: $ff
	rst  $38                                         ; $56fd: $ff
	ld   sp, hl                                      ; $56fe: $f9
	dec  [hl]                                        ; $56ff: $35
	ld   de, $1111                                   ; $5700: $11 $11 $11
	ld   de, $af15                                   ; $5703: $11 $15 $af
	rst  $38                                         ; $5706: $ff
	rst  $38                                         ; $5707: $ff
	rst  $38                                         ; $5708: $ff
	ei                                               ; $5709: $fb
	ld   d, l                                        ; $570a: $55
	ld   de, $1111                                   ; $570b: $11 $11 $11
	ld   de, $bf14                                   ; $570e: $11 $14 $bf
	rst  $38                                         ; $5711: $ff
	rst  $38                                         ; $5712: $ff
	rst  $38                                         ; $5713: $ff
	db   $fd                                         ; $5714: $fd
	ld   d, l                                        ; $5715: $55
	ld   de, $1111                                   ; $5716: $11 $11 $11
	ld   de, $8f12                                   ; $5719: $11 $12 $8f
	rst  $38                                         ; $571c: $ff
	rst  $38                                         ; $571d: $ff
	rst  $38                                         ; $571e: $ff
	rst  $38                                         ; $571f: $ff
	ld   [hl], d                                     ; $5720: $72
	ld   hl, $1111                                   ; $5721: $21 $11 $11
	ld   de, $8e11                                   ; $5724: $11 $11 $8e
	rst  $38                                         ; $5727: $ff
	rst  $38                                         ; $5728: $ff
	rst  $38                                         ; $5729: $ff
	rst  $38                                         ; $572a: $ff
	and  c                                           ; $572b: $a1
	ld   sp, $1111                                   ; $572c: $31 $11 $11
	ld   de, $9b11                                   ; $572f: $11 $11 $9b
	rst  $38                                         ; $5732: $ff
	rst  $38                                         ; $5733: $ff
	rst  $38                                         ; $5734: $ff
	rst  $38                                         ; $5735: $ff
	jp   $1121                                       ; $5736: $c3 $21 $11


	ld   de, $1111                                   ; $5739: $11 $11 $11
	ld   e, e                                        ; $573c: $5b
	rst  $38                                         ; $573d: $ff
	rst  $38                                         ; $573e: $ff
	rst  $38                                         ; $573f: $ff
	rst  $38                                         ; $5740: $ff
	push af                                          ; $5741: $f5
	ld   de, $1111                                   ; $5742: $11 $11 $11
	ld   de, $1811                                   ; $5745: $11 $11 $18
	rst  $28                                         ; $5748: $ef
	rst  $38                                         ; $5749: $ff
	rst  $38                                         ; $574a: $ff
	rst  $38                                         ; $574b: $ff
	ld   sp, hl                                      ; $574c: $f9
	ld   hl, $1111                                   ; $574d: $21 $11 $11
	ld   de, $1511                                   ; $5750: $11 $11 $15
	xor  a                                           ; $5753: $af
	rst  $38                                         ; $5754: $ff
	rst  $38                                         ; $5755: $ff
	rst  $38                                         ; $5756: $ff
	db   $fd                                         ; $5757: $fd
	ld   d, d                                        ; $5758: $52
	ld   de, $1111                                   ; $5759: $11 $11 $11
	ld   de, $9d11                                   ; $575c: $11 $11 $9d
	rst  $38                                         ; $575f: $ff
	rst  $38                                         ; $5760: $ff
	rst  $38                                         ; $5761: $ff
	rst  $38                                         ; $5762: $ff
	or   e                                           ; $5763: $b3
	ld   de, $1111                                   ; $5764: $11 $11 $11
	ld   de, $4911                                   ; $5767: $11 $11 $49
	rst  $38                                         ; $576a: $ff
	rst  $38                                         ; $576b: $ff
	rst  $38                                         ; $576c: $ff
	rst  $38                                         ; $576d: $ff
	ld   sp, hl                                      ; $576e: $f9
	ld   hl, $1111                                   ; $576f: $21 $11 $11
	ld   de, $1511                                   ; $5772: $11 $11 $15
	sbc  a                                           ; $5775: $9f
	rst  $38                                         ; $5776: $ff
	rst  $38                                         ; $5777: $ff
	rst  $38                                         ; $5778: $ff
	rst  $38                                         ; $5779: $ff
	add  h                                           ; $577a: $84
	ld   de, $1111                                   ; $577b: $11 $11 $11
	ld   de, $2c11                                   ; $577e: $11 $11 $2c
	rst  $38                                         ; $5781: $ff
	rst  $38                                         ; $5782: $ff
	rst  $38                                         ; $5783: $ff
	rst  $38                                         ; $5784: $ff
	ld   a, [$1111]                                  ; $5785: $fa $11 $11
	ld   de, $1111                                   ; $5788: $11 $11 $11
	ld   d, $af                                      ; $578b: $16 $af
	rst  $38                                         ; $578d: $ff
	rst  $38                                         ; $578e: $ff
	rst  $38                                         ; $578f: $ff
	db   $fc                                         ; $5790: $fc
	add  e                                           ; $5791: $83
	ld   de, $1111                                   ; $5792: $11 $11 $11
	ld   de, $5611                                   ; $5795: $11 $11 $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5798: $cf
	rst  $38                                         ; $5799: $ff
	rst  $38                                         ; $579a: $ff
	rst  $38                                         ; $579b: $ff
	db   $eb                                         ; $579c: $eb
	ld   h, h                                        ; $579d: $64
	ld   [de], a                                     ; $579e: $12
	ld   de, $1111                                   ; $579f: $11 $11 $11
	ld   de, $df59                                   ; $57a2: $11 $59 $df
	rst  $38                                         ; $57a5: $ff
	rst  $38                                         ; $57a6: $ff
	rst  $38                                         ; $57a7: $ff
	db   $db                                         ; $57a8: $db
	ld   [hl], l                                     ; $57a9: $75
	ld   d, e                                        ; $57aa: $53
	ld   sp, $1111                                   ; $57ab: $31 $11 $11
	ld   de, $9d37                                   ; $57ae: $11 $37 $9d
	rst  $38                                         ; $57b1: $ff
	rst  $38                                         ; $57b2: $ff
	cp   $eb                                         ; $57b3: $fe $eb
	adc  c                                           ; $57b5: $89
	sub  a                                           ; $57b6: $97
	ld   [hl], h                                     ; $57b7: $74
	ld   hl, $1111                                   ; $57b8: $21 $11 $11
	inc  hl                                          ; $57bb: $23
	ld   e, b                                        ; $57bc: $58
	xor  l                                           ; $57bd: $ad
	db   $dd                                         ; $57be: $dd
	rst  $28                                         ; $57bf: $ef
	db   $fd                                         ; $57c0: $fd
	db   $db                                         ; $57c1: $db
	xor  d                                           ; $57c2: $aa
	sbc  b                                           ; $57c3: $98
	ld   [hl], l                                     ; $57c4: $75
	inc  sp                                          ; $57c5: $33
	ld   [de], a                                     ; $57c6: $12
	ld   sp, $6735                                   ; $57c7: $31 $35 $67
	xor  d                                           ; $57ca: $aa
	cp   h                                           ; $57cb: $bc
	call z, $dbcd                                    ; $57cc: $cc $cd $db
	sbc  e                                           ; $57cf: $9b
	xor  c                                           ; $57d0: $a9
	add  a                                           ; $57d1: $87
	ld   h, [hl]                                     ; $57d2: $66
	ld   d, h                                        ; $57d3: $54
	ld   d, l                                        ; $57d4: $55
	ld   d, l                                        ; $57d5: $55
	ld   d, [hl]                                     ; $57d6: $56
	ld   a, b                                        ; $57d7: $78
	sbc  d                                           ; $57d8: $9a
	xor  e                                           ; $57d9: $ab
	xor  d                                           ; $57da: $aa
	sbc  d                                           ; $57db: $9a
	xor  d                                           ; $57dc: $aa
	sbc  c                                           ; $57dd: $99
	sbc  c                                           ; $57de: $99
	adc  b                                           ; $57df: $88
	adc  c                                           ; $57e0: $89
	adc  b                                           ; $57e1: $88
	add  a                                           ; $57e2: $87
	ld   [hl], a                                     ; $57e3: $77
	ld   h, [hl]                                     ; $57e4: $66
	ld   h, a                                        ; $57e5: $67
	ld   [hl], a                                     ; $57e6: $77
	ld   [hl], a                                     ; $57e7: $77
	adc  b                                           ; $57e8: $88
	adc  c                                           ; $57e9: $89
	adc  c                                           ; $57ea: $89
	xor  c                                           ; $57eb: $a9
	xor  d                                           ; $57ec: $aa
	xor  d                                           ; $57ed: $aa
	xor  c                                           ; $57ee: $a9
	xor  d                                           ; $57ef: $aa
	sbc  b                                           ; $57f0: $98
	add  a                                           ; $57f1: $87
	halt                                             ; $57f2: $76
	ld   h, [hl]                                     ; $57f3: $66
	ld   d, l                                        ; $57f4: $55
	ld   d, [hl]                                     ; $57f5: $56
	ld   h, a                                        ; $57f6: $67
	ld   a, b                                        ; $57f7: $78
	sbc  c                                           ; $57f8: $99
	sbc  c                                           ; $57f9: $99
	xor  e                                           ; $57fa: $ab
	cp   e                                           ; $57fb: $bb
	cp   c                                           ; $57fc: $b9
	xor  c                                           ; $57fd: $a9
	sbc  c                                           ; $57fe: $99
	add  a                                           ; $57ff: $87
	ld   [hl], a                                     ; $5800: $77
	ld   [hl], a                                     ; $5801: $77
	halt                                             ; $5802: $76
	ld   h, a                                        ; $5803: $67
	ld   [hl], a                                     ; $5804: $77
	ld   a, b                                        ; $5805: $78
	sbc  b                                           ; $5806: $98
	adc  c                                           ; $5807: $89
	sbc  c                                           ; $5808: $99
	adc  b                                           ; $5809: $88
	sbc  c                                           ; $580a: $99
	sbc  c                                           ; $580b: $99
	adc  b                                           ; $580c: $88
	adc  b                                           ; $580d: $88
	adc  b                                           ; $580e: $88
	sbc  b                                           ; $580f: $98
	sbc  c                                           ; $5810: $99
	sbc  c                                           ; $5811: $99
	adc  b                                           ; $5812: $88
	ld   [hl], a                                     ; $5813: $77
	ld   [hl], a                                     ; $5814: $77
	ld   [hl], a                                     ; $5815: $77
	ld   [hl], a                                     ; $5816: $77
	ld   h, [hl]                                     ; $5817: $66
	ld   h, a                                        ; $5818: $67
	ld   a, b                                        ; $5819: $78
	adc  b                                           ; $581a: $88
	sbc  c                                           ; $581b: $99
	adc  c                                           ; $581c: $89
	sbc  c                                           ; $581d: $99
	sbc  d                                           ; $581e: $9a
	xor  c                                           ; $581f: $a9
	sbc  b                                           ; $5820: $98
	ld   [hl], a                                     ; $5821: $77
	ld   [hl], a                                     ; $5822: $77
	ld   [hl], a                                     ; $5823: $77
	ld   [hl], a                                     ; $5824: $77
	ld   h, [hl]                                     ; $5825: $66
	ld   h, [hl]                                     ; $5826: $66
	ld   h, a                                        ; $5827: $67
	sbc  c                                           ; $5828: $99
	sbc  d                                           ; $5829: $9a
	sbc  c                                           ; $582a: $99
	adc  c                                           ; $582b: $89
	adc  b                                           ; $582c: $88
	sbc  c                                           ; $582d: $99
	sbc  b                                           ; $582e: $98
	sbc  b                                           ; $582f: $98
	sbc  b                                           ; $5830: $98
	adc  b                                           ; $5831: $88
	ld   a, b                                        ; $5832: $78
	adc  b                                           ; $5833: $88
	sbc  b                                           ; $5834: $98
	adc  b                                           ; $5835: $88
	add  a                                           ; $5836: $87
	ld   [hl], a                                     ; $5837: $77
	ld   h, a                                        ; $5838: $67
	ld   [hl], a                                     ; $5839: $77
	ld   a, b                                        ; $583a: $78
	ld   a, b                                        ; $583b: $78
	add  a                                           ; $583c: $87
	adc  b                                           ; $583d: $88
	sbc  b                                           ; $583e: $98
	sbc  c                                           ; $583f: $99
	xor  c                                           ; $5840: $a9
	sbc  c                                           ; $5841: $99
	sbc  b                                           ; $5842: $98
	adc  c                                           ; $5843: $89
	add  a                                           ; $5844: $87
	ld   [hl], a                                     ; $5845: $77
	ld   [hl], a                                     ; $5846: $77
	ld   [hl], a                                     ; $5847: $77
	ld   [hl], a                                     ; $5848: $77
	ld   [hl], a                                     ; $5849: $77
	ld   [hl], a                                     ; $584a: $77
	ld   a, b                                        ; $584b: $78
	ld   [hl], a                                     ; $584c: $77
	adc  b                                           ; $584d: $88
	adc  b                                           ; $584e: $88
	sbc  c                                           ; $584f: $99
	sbc  c                                           ; $5850: $99
	sbc  d                                           ; $5851: $9a
	xor  d                                           ; $5852: $aa
	ld   [hl], a                                     ; $5853: $77
	add  a                                           ; $5854: $87
	ld   [hl], a                                     ; $5855: $77
	ld   a, e                                        ; $5856: $7b
	rst  ToBoot                                         ; $5857: $c7
	xor  e                                           ; $5858: $ab
	ld   b, a                                        ; $5859: $47
	ld   h, h                                        ; $585a: $64
	ld   l, b                                        ; $585b: $68
	ld   h, a                                        ; $585c: $67
	halt                                             ; $585d: $76
	ld   [hl], a                                     ; $585e: $77
	halt                                             ; $585f: $76
	sbc  b                                           ; $5860: $98
	adc  d                                           ; $5861: $8a
	xor  d                                           ; $5862: $aa
	sbc  c                                           ; $5863: $99
	ld   a, c                                        ; $5864: $79
	xor  b                                           ; $5865: $a8
	xor  d                                           ; $5866: $aa
	adc  b                                           ; $5867: $88
	sbc  c                                           ; $5868: $99
	sbc  b                                           ; $5869: $98
	adc  c                                           ; $586a: $89
	add  [hl]                                        ; $586b: $86
	ld   a, b                                        ; $586c: $78
	halt                                             ; $586d: $76
	ld   h, [hl]                                     ; $586e: $66
	ld   [hl], a                                     ; $586f: $77
	ld   h, a                                        ; $5870: $67
	ld   a, d                                        ; $5871: $7a
	ret  c                                           ; $5872: $d8

	ld   a, d                                        ; $5873: $7a
	sub  [hl]                                        ; $5874: $96
	ld   h, [hl]                                     ; $5875: $66
	ld   l, d                                        ; $5876: $6a
	sbc  l                                           ; $5877: $9d
	rst  $38                                         ; $5878: $ff
	sbc  e                                           ; $5879: $9b
	sub  l                                           ; $587a: $95
	ld   b, c                                        ; $587b: $41
	jr   @+$75                                       ; $587c: $18 $73

	inc  de                                          ; $587e: $13
	ld   d, h                                        ; $587f: $54
	ld   b, e                                        ; $5880: $43
	ld   a, d                                        ; $5881: $7a
	sub  a                                           ; $5882: $97
	sbc  d                                           ; $5883: $9a
	xor  e                                           ; $5884: $ab
	adc  c                                           ; $5885: $89
	xor  d                                           ; $5886: $aa
	xor  b                                           ; $5887: $a8
	sbc  b                                           ; $5888: $98
	adc  c                                           ; $5889: $89
	sub  [hl]                                        ; $588a: $96
	ld   d, [hl]                                     ; $588b: $56
	adc  b                                           ; $588c: $88
	ld   b, l                                        ; $588d: $45
	adc  d                                           ; $588e: $8a
	or   l                                           ; $588f: $b5
	ld   e, b                                        ; $5890: $58
	adc  b                                           ; $5891: $88
	ld   b, [hl]                                     ; $5892: $46
	xor  b                                           ; $5893: $a8
	halt                                             ; $5894: $76
	sbc  d                                           ; $5895: $9a
	adc  d                                           ; $5896: $8a
	sbc  b                                           ; $5897: $98
	xor  b                                           ; $5898: $a8
	ld   l, c                                        ; $5899: $69
	ld   [hl], l                                     ; $589a: $75
	ld   b, h                                        ; $589b: $44
	ld   d, e                                        ; $589c: $53
	ld   [hl-], a                                    ; $589d: $32
	ld   [hl], $54                                   ; $589e: $36 $54
	ld   d, a                                        ; $58a0: $57
	sbc  c                                           ; $58a1: $99
	adc  d                                           ; $58a2: $8a
	cp   e                                           ; $58a3: $bb
	xor  c                                           ; $58a4: $a9
	db   $dd                                         ; $58a5: $dd
	xor  b                                           ; $58a6: $a8
	sbc  e                                           ; $58a7: $9b
	adc  b                                           ; $58a8: $88
	ld   b, l                                        ; $58a9: $45
	add  h                                           ; $58aa: $84
	ld   de, $1132                                   ; $58ab: $11 $32 $11
	ld   [de], a                                     ; $58ae: $12
	add  [hl]                                        ; $58af: $86
	add  hl, sp                                      ; $58b0: $39
	rst  $38                                         ; $58b1: $ff
	db   $fd                                         ; $58b2: $fd
	rst  $38                                         ; $58b3: $ff
	cp   $ef                                         ; $58b4: $fe $ef
	db   $fd                                         ; $58b6: $fd
	ld   h, h                                        ; $58b7: $64
	ld   b, e                                        ; $58b8: $43
	ld   de, $1111                                   ; $58b9: $11 $11 $11
	ld   de, $9d26                                   ; $58bc: $11 $26 $9d
	rst  $38                                         ; $58bf: $ff
	rst  $38                                         ; $58c0: $ff
	rst  $38                                         ; $58c1: $ff
	rst  $38                                         ; $58c2: $ff
	rst  $38                                         ; $58c3: $ff
	db   $fc                                         ; $58c4: $fc
	ld   h, c                                        ; $58c5: $61
	ld   de, $1111                                   ; $58c6: $11 $11 $11
	ld   de, $bf12                                   ; $58c9: $11 $12 $bf
	rst  $38                                         ; $58cc: $ff
	rst  $38                                         ; $58cd: $ff
	rst  $38                                         ; $58ce: $ff
	rst  $38                                         ; $58cf: $ff
	rst  $38                                         ; $58d0: $ff
	ei                                               ; $58d1: $fb
	ld   d, c                                        ; $58d2: $51
	ld   de, $1111                                   ; $58d3: $11 $11 $11
	ld   de, $af13                                   ; $58d6: $11 $13 $af
	rst  $38                                         ; $58d9: $ff
	rst  $38                                         ; $58da: $ff
	rst  $38                                         ; $58db: $ff
	rst  $38                                         ; $58dc: $ff
	rst  $38                                         ; $58dd: $ff
	db   $fc                                         ; $58de: $fc
	ld   b, c                                        ; $58df: $41
	ld   de, $1111                                   ; $58e0: $11 $11 $11
	ld   de, $8f36                                   ; $58e3: $11 $36 $8f
	rst  $38                                         ; $58e6: $ff
	rst  $38                                         ; $58e7: $ff
	rst  $38                                         ; $58e8: $ff
	rst  $38                                         ; $58e9: $ff
	rst  $38                                         ; $58ea: $ff
	db   $fd                                         ; $58eb: $fd
	ld   [hl], c                                     ; $58ec: $71
	ld   de, $1111                                   ; $58ed: $11 $11 $11
	ld   de, $af15                                   ; $58f0: $11 $15 $af
	rst  $38                                         ; $58f3: $ff
	rst  $38                                         ; $58f4: $ff
	rst  $38                                         ; $58f5: $ff
	rst  $38                                         ; $58f6: $ff
	rst  $38                                         ; $58f7: $ff
	rst  $38                                         ; $58f8: $ff
	ld   [hl], c                                     ; $58f9: $71
	ld   de, $1111                                   ; $58fa: $11 $11 $11
	ld   de, $7f17                                   ; $58fd: $11 $17 $7f
	rst  $38                                         ; $5900: $ff
	rst  $38                                         ; $5901: $ff
	rst  $38                                         ; $5902: $ff
	rst  $38                                         ; $5903: $ff
	rst  $38                                         ; $5904: $ff
	rst  $38                                         ; $5905: $ff
	or   d                                           ; $5906: $b2
	ld   de, $1111                                   ; $5907: $11 $11 $11
	ld   de, $ec15                                   ; $590a: $11 $15 $ec
	rst  $38                                         ; $590d: $ff
	rst  $38                                         ; $590e: $ff
	rst  $38                                         ; $590f: $ff
	rst  $38                                         ; $5910: $ff
	rst  $38                                         ; $5911: $ff
	rst  $38                                         ; $5912: $ff
	push bc                                          ; $5913: $c5
	ld   hl, $1111                                   ; $5914: $21 $11 $11
	ld   de, $a914                                   ; $5917: $11 $14 $a9
	rst  $38                                         ; $591a: $ff
	rst  $38                                         ; $591b: $ff
	rst  $38                                         ; $591c: $ff
	rst  $38                                         ; $591d: $ff
	rst  $38                                         ; $591e: $ff
	rst  $38                                         ; $591f: $ff
	ret                                              ; $5920: $c9


	ld   d, d                                        ; $5921: $52
	ld   de, $1111                                   ; $5922: $11 $11 $11
	ld   de, $afa8                                   ; $5925: $11 $a8 $af
	rst  $38                                         ; $5928: $ff
	rst  $38                                         ; $5929: $ff
	rst  $38                                         ; $592a: $ff
	cp   $ff                                         ; $592b: $fe $ff
	ei                                               ; $592d: $fb
	inc  sp                                          ; $592e: $33
	ld   hl, $1111                                   ; $592f: $21 $11 $11
	ld   de, $cc1c                                   ; $5932: $11 $1c $cc
	rst  $38                                         ; $5935: $ff
	rst  $38                                         ; $5936: $ff
	rst  $38                                         ; $5937: $ff
	rst  $38                                         ; $5938: $ff
	call $83ff                                       ; $5939: $cd $ff $83
	ld   hl, $1111                                   ; $593c: $21 $11 $11
	ld   de, $a415                                   ; $593f: $11 $15 $a4
	rst  $38                                         ; $5942: $ff
	rst  $38                                         ; $5943: $ff
	rst  $38                                         ; $5944: $ff
	rst  $38                                         ; $5945: $ff
	rst  JumpTable                                         ; $5946: $df
	rst  $38                                         ; $5947: $ff
	cp   d                                           ; $5948: $ba
	and  a                                           ; $5949: $a7
	ld   de, $1111                                   ; $594a: $11 $11 $11
	ld   de, $4f56                                   ; $594d: $11 $56 $4f
	rst  $38                                         ; $5950: $ff
	rst  $38                                         ; $5951: $ff
	rst  $38                                         ; $5952: $ff
	ld   a, [$fdff]                                  ; $5953: $fa $ff $fd
	adc  d                                           ; $5956: $8a
	ld   [hl], c                                     ; $5957: $71
	ld   de, $1111                                   ; $5958: $11 $11 $11
	inc  d                                           ; $595b: $14
	reti                                             ; $595c: $d9


	xor  a                                           ; $595d: $af
	rst  $38                                         ; $595e: $ff
	rst  $38                                         ; $595f: $ff
	rst  $38                                         ; $5960: $ff
	db   $fc                                         ; $5961: $fc
	rst  $38                                         ; $5962: $ff
	db   $fd                                         ; $5963: $fd
	ld   h, h                                        ; $5964: $64
	ld   hl, $1111                                   ; $5965: $21 $11 $11
	ld   de, $431e                                   ; $5968: $11 $1e $43
	rst  $38                                         ; $596b: $ff
	rst  $38                                         ; $596c: $ff
	rst  $38                                         ; $596d: $ff
	rst  $38                                         ; $596e: $ff
	sbc  a                                           ; $596f: $9f
	rst  $38                                         ; $5970: $ff
	add  sp, $24                                     ; $5971: $e8 $24
	ld   de, $1111                                   ; $5973: $11 $11 $11
	ld   de, $5bbf                                   ; $5976: $11 $bf $5b
	rst  $38                                         ; $5979: $ff
	rst  $38                                         ; $597a: $ff
	rst  $38                                         ; $597b: $ff
	db   $fd                                         ; $597c: $fd
	cp   a                                           ; $597d: $bf
	rst  $38                                         ; $597e: $ff
	or   e                                           ; $597f: $b3
	ld   hl, $1111                                   ; $5980: $21 $11 $11
	ld   de, $a613                                   ; $5983: $11 $13 $a6
	cp   a                                           ; $5986: $bf
	db   $fd                                         ; $5987: $fd
	rst  $38                                         ; $5988: $ff
	rst  $38                                         ; $5989: $ff
	rst  $28                                         ; $598a: $ef
	rst  $38                                         ; $598b: $ff
	db   $ec                                         ; $598c: $ec
	rst  $30                                         ; $598d: $f7
	ld   de, $1111                                   ; $598e: $11 $11 $11
	ld   de, $3b28                                   ; $5991: $11 $28 $3b
	rst  $38                                         ; $5994: $ff
	cp   $ff                                         ; $5995: $fe $ff
	ei                                               ; $5997: $fb
	xor  a                                           ; $5998: $af
	rst  $38                                         ; $5999: $ff
	cp   c                                           ; $599a: $b9
	or   h                                           ; $599b: $b4
	ld   de, $1111                                   ; $599c: $11 $11 $11
	ld   de, $3fd5                                   ; $599f: $11 $d5 $3f
	rst  $38                                         ; $59a2: $ff
	rst  $38                                         ; $59a3: $ff
	rst  $38                                         ; $59a4: $ff
	ei                                               ; $59a5: $fb
	rst  $38                                         ; $59a6: $ff
	rst  $38                                         ; $59a7: $ff
	or   [hl]                                        ; $59a8: $b6
	ld   hl, $1111                                   ; $59a9: $21 $11 $11
	ld   de, $a216                                   ; $59ac: $11 $16 $a2
	rst  $28                                         ; $59af: $ef
	ld   sp, hl                                      ; $59b0: $f9
	rst  $38                                         ; $59b1: $ff
	cp   $9f                                         ; $59b2: $fe $9f
	rst  $38                                         ; $59b4: $ff
	adc  h                                           ; $59b5: $8c
	or   $11                                         ; $59b6: $f6 $11
	ld   de, $1111                                   ; $59b8: $11 $11 $11
	ld   e, l                                        ; $59bb: $5d
	inc  h                                           ; $59bc: $24
	rst  $38                                         ; $59bd: $ff
	cp   $bf                                         ; $59be: $fe $bf
	db   $fc                                         ; $59c0: $fc
	sbc  a                                           ; $59c1: $9f
	rst  $38                                         ; $59c2: $ff
	cp   b                                           ; $59c3: $b8
	ld   d, h                                        ; $59c4: $54
	ld   de, $1111                                   ; $59c5: $11 $11 $11
	ld   de, $5fb8                                   ; $59c8: $11 $b8 $5f
	rst  $38                                         ; $59cb: $ff
	cp   $ff                                         ; $59cc: $fe $ff
	add  $ff                                         ; $59ce: $c6 $ff
	db   $fd                                         ; $59d0: $fd
	sbc  h                                           ; $59d1: $9c
	ld   d, c                                        ; $59d2: $51
	ld   de, $1111                                   ; $59d3: $11 $11 $11
	dec  de                                          ; $59d6: $1b
	sub  h                                           ; $59d7: $94
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59d8: $cf
	rst  $38                                         ; $59d9: $ff
	db   $eb                                         ; $59da: $eb
	rst  $38                                         ; $59db: $ff
	ret  c                                           ; $59dc: $d8

	rst  $38                                         ; $59dd: $ff
	rst  $30                                         ; $59de: $f7
	sbc  c                                           ; $59df: $99
	ld   de, $1111                                   ; $59e0: $11 $11 $11
	ld   de, $8f67                                   ; $59e3: $11 $67 $8f
	sbc  h                                           ; $59e6: $9c
	rst  $38                                         ; $59e7: $ff
	cp   $fe                                         ; $59e8: $fe $fe
	rst  JumpTable                                         ; $59ea: $df
	rst  $38                                         ; $59eb: $ff
	res  0, c                                        ; $59ec: $cb $81
	ld   de, $1111                                   ; $59ee: $11 $11 $11
	ld   d, $b3                                      ; $59f1: $16 $b3
	ld   l, h                                        ; $59f3: $6c
	rst  $38                                         ; $59f4: $ff
	ld   a, e                                        ; $59f5: $7b
	rst  $38                                         ; $59f6: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59f7: $cf
	rst  $38                                         ; $59f8: $ff
	cp   $6a                                         ; $59f9: $fe $6a
	ld   b, c                                        ; $59fb: $41
	ld   de, $1111                                   ; $59fc: $11 $11 $11
	dec  h                                           ; $59ff: $25
	adc  d                                           ; $5a00: $8a
	cp   e                                           ; $5a01: $bb
	cp   $bf                                         ; $5a02: $fe $bf
	ld   sp, hl                                      ; $5a04: $f9
	cp   a                                           ; $5a05: $bf
	db   $fd                                         ; $5a06: $fd
	db   $fc                                         ; $5a07: $fc
	or   e                                           ; $5a08: $b3
	ld   de, $1111                                   ; $5a09: $11 $11 $11
	ld   [de], a                                     ; $5a0c: $12
	ld   [hl-], a                                    ; $5a0d: $32
	rst  JumpTable                                         ; $5a0e: $df
	adc  l                                           ; $5a0f: $8d
	db   $fd                                         ; $5a10: $fd
	rst  $38                                         ; $5a11: $ff
	ei                                               ; $5a12: $fb
	rst  $38                                         ; $5a13: $ff
	db   $db                                         ; $5a14: $db
	xor  e                                           ; $5a15: $ab
	ld   sp, $1111                                   ; $5a16: $31 $11 $11
	ld   de, $6519                                   ; $5a19: $11 $19 $65
	xor  l                                           ; $5a1c: $ad
	ld   a, [$ffef]                                  ; $5a1d: $fa $ef $ff
	xor  e                                           ; $5a20: $ab
	rst  $38                                         ; $5a21: $ff
	xor  a                                           ; $5a22: $af
	or   [hl]                                        ; $5a23: $b6
	ld   de, $1112                                   ; $5a24: $11 $12 $11
	inc  d                                           ; $5a27: $14
	ld   b, h                                        ; $5a28: $44
	cp   a                                           ; $5a29: $bf
	cp   d                                           ; $5a2a: $ba
	db   $fd                                         ; $5a2b: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a2c: $cf
	ld   sp, hl                                      ; $5a2d: $f9
	rst  $38                                         ; $5a2e: $ff
	db   $db                                         ; $5a2f: $db
	rst  $10                                         ; $5a30: $d7
	ld   hl, $3114                                   ; $5a31: $21 $14 $31
	ld   [de], a                                     ; $5a34: $12
	ld   b, e                                        ; $5a35: $43

jr_0dd_5a36:
	ld   a, [hl-]                                    ; $5a36: $3a
	cp   $bc                                         ; $5a37: $fe $bc
	cp   a                                           ; $5a39: $bf
	ld   a, [$fc9f]                                  ; $5a3a: $fa $9f $fc
	db   $dd                                         ; $5a3d: $dd
	sub  [hl]                                        ; $5a3e: $96
	ld   de, $1111                                   ; $5a3f: $11 $11 $11
	inc  de                                          ; $5a42: $13
	ld   a, h                                        ; $5a43: $7c
	add  hl, sp                                      ; $5a44: $39
	ei                                               ; $5a45: $fb
	sbc  a                                           ; $5a46: $9f
	cp   $ef                                         ; $5a47: $fe $ef
	rst  JumpTable                                         ; $5a49: $df
	add  sp, -$09                                    ; $5a4a: $e8 $f7
	ld   de, $1113                                   ; $5a4c: $11 $13 $11
	inc  de                                          ; $5a4f: $13
	ld   b, h                                        ; $5a50: $44
	ld   e, c                                        ; $5a51: $59
	db   $ed                                         ; $5a52: $ed
	db   $db                                         ; $5a53: $db
	rst  $28                                         ; $5a54: $ef
	ld   sp, hl                                      ; $5a55: $f9
	rst  $38                                         ; $5a56: $ff
	ld   [$71a9], a                                  ; $5a57: $ea $a9 $71
	ld   de, $1111                                   ; $5a5a: $11 $11 $11
	ld   b, d                                        ; $5a5d: $42
	ld   e, d                                        ; $5a5e: $5a
	jp   z, $feaf                                    ; $5a5f: $ca $af $fe

	sbc  [hl]                                        ; $5a62: $9e
	rst  $38                                         ; $5a63: $ff
	ld   a, a                                        ; $5a64: $7f
	ei                                               ; $5a65: $fb
	ld   d, c                                        ; $5a66: $51
	inc  de                                          ; $5a67: $13
	ld   de, $3116                                   ; $5a68: $11 $16 $31
	ld   e, h                                        ; $5a6b: $5c
	ret  c                                           ; $5a6c: $d8

	ld   c, [hl]                                     ; $5a6d: $4e
	cp   $af                                         ; $5a6e: $fe $af
	rst  $38                                         ; $5a70: $ff
	cp   c                                           ; $5a71: $b9
	rst  $38                                         ; $5a72: $ff
	ld   [hl], c                                     ; $5a73: $71
	rla                                              ; $5a74: $17
	ld   de, $3111                                   ; $5a75: $11 $11 $31
	jr   z, jr_0dd_5a36                              ; $5a78: $28 $bc

	adc  e                                           ; $5a7a: $8b
	rst  $38                                         ; $5a7b: $ff
	db   $ec                                         ; $5a7c: $ec
	cp   $ff                                         ; $5a7d: $fe $ff
	ld   l, l                                        ; $5a7f: $6d
	jp   nz, Jump_0dd_5112                           ; $5a80: $c2 $12 $51

	ld   de, $3822                                   ; $5a83: $11 $22 $38
	xor  b                                           ; $5a86: $a8
	db   $eb                                         ; $5a87: $eb
	xor  a                                           ; $5a88: $af
	rst  $38                                         ; $5a89: $ff
	db   $fc                                         ; $5a8a: $fc
	rst  $38                                         ; $5a8b: $ff
	sbc  e                                           ; $5a8c: $9b
	sub  e                                           ; $5a8d: $93
	ld   [de], a                                     ; $5a8e: $12
	ld   hl, $2111                                   ; $5a8f: $21 $11 $21
	ld   e, c                                        ; $5a92: $59
	ld   l, c                                        ; $5a93: $69
	sbc  $de                                         ; $5a94: $de $de
	rst  JumpTable                                         ; $5a96: $df
	cp   $ce                                         ; $5a97: $fe $ce
	db   $eb                                         ; $5a99: $eb
	ld   [hl], e                                     ; $5a9a: $73
	ld   [hl+], a                                    ; $5a9b: $22
	ld   [de], a                                     ; $5a9c: $12
	ld   [hl+], a                                    ; $5a9d: $22
	ld   [de], a                                     ; $5a9e: $12
	ld   [hl], l                                     ; $5a9f: $75
	ld   a, d                                        ; $5aa0: $7a
	adc  e                                           ; $5aa1: $8b
	rst  $38                                         ; $5aa2: $ff
	sbc  h                                           ; $5aa3: $9c
	cp   $8d                                         ; $5aa4: $fe $8d
	db   $ec                                         ; $5aa6: $ec
	ld   [hl], c                                     ; $5aa7: $71
	scf                                              ; $5aa8: $37
	ld   hl, $1622                                   ; $5aa9: $21 $22 $16
	ld   [hl], e                                     ; $5aac: $73
	ld   l, h                                        ; $5aad: $6c
	sbc  h                                           ; $5aae: $9c
	sbc  $fe                                         ; $5aaf: $de $fe
	ld   [$bdce], a                                  ; $5ab1: $ea $ce $bd
	ld   d, d                                        ; $5ab4: $52
	ld   d, h                                        ; $5ab5: $54
	ld   de, $4522                                   ; $5ab6: $11 $22 $45
	ld   [hl], $98                                   ; $5ab9: $36 $98
	jp   c, $fe7f                                    ; $5abb: $da $7f $fe

	call z, $b6fc                                    ; $5abe: $cc $fc $b6
	scf                                              ; $5ac1: $37
	ld   b, l                                        ; $5ac2: $45
	ld   de, $2167                                   ; $5ac3: $11 $67 $21
	ld   e, d                                        ; $5ac6: $5a
	and  h                                           ; $5ac7: $a4
	sbc  a                                           ; $5ac8: $9f
	db   $eb                                         ; $5ac9: $eb
	db   $db                                         ; $5aca: $db
	rst  $38                                         ; $5acb: $ff
	ld   [hl], a                                     ; $5acc: $77
	add  sp, $51                                     ; $5acd: $e8 $51
	ld   e, c                                        ; $5acf: $59
	ld   hl, $4357                                   ; $5ad0: $21 $57 $43
	ld   b, a                                        ; $5ad3: $47
	add  $7f                                         ; $5ad4: $c6 $7f
	ret  c                                           ; $5ad6: $d8

	sbc  a                                           ; $5ad7: $9f
	ld   sp, hl                                      ; $5ad8: $f9
	xor  e                                           ; $5ad9: $ab
	or   [hl]                                        ; $5ada: $b6
	ld   b, l                                        ; $5adb: $45
	ld   b, h                                        ; $5adc: $44
	scf                                              ; $5add: $37
	ld   d, d                                        ; $5ade: $52
	ld   b, h                                        ; $5adf: $44
	sbc  b                                           ; $5ae0: $98
	ld   c, b                                        ; $5ae1: $48
	db   $fc                                         ; $5ae2: $fc
	xor  b                                           ; $5ae3: $a8
	cp   $9b                                         ; $5ae4: $fe $9b
	adc  h                                           ; $5ae6: $8c
	ld   [hl], l                                     ; $5ae7: $75
	ld   [hl], e                                     ; $5ae8: $73
	ld   [hl], l                                     ; $5ae9: $75
	ld   b, [hl]                                     ; $5aea: $46
	ld   b, e                                        ; $5aeb: $43
	ld   c, b                                        ; $5aec: $48
	ld   [hl], e                                     ; $5aed: $73
	adc  h                                           ; $5aee: $8c
	ret                                              ; $5aef: $c9


	sbc  h                                           ; $5af0: $9c
	db   $ec                                         ; $5af1: $ec
	and  a                                           ; $5af2: $a7
	db   $ec                                         ; $5af3: $ec
	add  hl, sp                                      ; $5af4: $39
	and  a                                           ; $5af5: $a7
	ld   b, d                                        ; $5af6: $42
	ld   h, l                                        ; $5af7: $65
	ld   h, h                                        ; $5af8: $64
	ld   b, a                                        ; $5af9: $47
	ld   l, c                                        ; $5afa: $69
	sub  a                                           ; $5afb: $97
	xor  e                                           ; $5afc: $ab
	db   $db                                         ; $5afd: $db
	ld   l, e                                        ; $5afe: $6b
	cp   l                                           ; $5aff: $bd
	and  h                                           ; $5b00: $a4
	sbc  h                                           ; $5b01: $9c
	ld   h, h                                        ; $5b02: $64
	ld   a, b                                        ; $5b03: $78
	ld   b, e                                        ; $5b04: $43
	ld   b, a                                        ; $5b05: $47
	add  l                                           ; $5b06: $85
	ld   l, b                                        ; $5b07: $68
	adc  b                                           ; $5b08: $88
	ld   a, c                                        ; $5b09: $79
	cp   e                                           ; $5b0a: $bb
	sbc  d                                           ; $5b0b: $9a
	ld   a, [$a34c]                                  ; $5b0c: $fa $4c $a3
	ld   [hl], l                                     ; $5b0f: $75
	add  [hl]                                        ; $5b10: $86
	ld   h, [hl]                                     ; $5b11: $66
	ld   h, [hl]                                     ; $5b12: $66
	ld   [hl], $8b                                   ; $5b13: $36 $8b
	ld   h, a                                        ; $5b15: $67
	res  4, l                                        ; $5b16: $cb $a5
	sbc  l                                           ; $5b18: $9d
	ld   [hl], h                                     ; $5b19: $74
	ret                                              ; $5b1a: $c9


	ld   a, c                                        ; $5b1b: $79
	halt                                             ; $5b1c: $76
	sub  [hl]                                        ; $5b1d: $96
	add  hl, hl                                      ; $5b1e: $29
	add  [hl]                                        ; $5b1f: $86
	ld   [hl], l                                     ; $5b20: $75
	ld   a, e                                        ; $5b21: $7b
	ld   h, l                                        ; $5b22: $65
	ret                                              ; $5b23: $c9


	ld   a, b                                        ; $5b24: $78
	sbc  c                                           ; $5b25: $99
	or   l                                           ; $5b26: $b5
	adc  h                                           ; $5b27: $8c
	ld   a, d                                        ; $5b28: $7a

jr_0dd_5b29:
	ld   [hl], a                                     ; $5b29: $77
	sub  a                                           ; $5b2a: $97
	ld   b, [hl]                                     ; $5b2b: $46
	or   [hl]                                        ; $5b2c: $b6
	ld   e, c                                        ; $5b2d: $59
	and  [hl]                                        ; $5b2e: $a6
	adc  c                                           ; $5b2f: $89
	sub  h                                           ; $5b30: $94
	sbc  h                                           ; $5b31: $9c
	ld   l, b                                        ; $5b32: $68
	sbc  e                                           ; $5b33: $9b
	add  [hl]                                        ; $5b34: $86
	ld   l, c                                        ; $5b35: $69
	and  l                                           ; $5b36: $a5
	ld   l, e                                        ; $5b37: $6b
	and  h                                           ; $5b38: $a4
	ld   l, d                                        ; $5b39: $6a
	add  l                                           ; $5b3a: $85
	ld   e, c                                        ; $5b3b: $59
	cp   b                                           ; $5b3c: $b8
	ld   e, c                                        ; $5b3d: $59
	rst  ToBoot                                         ; $5b3e: $c7
	ld   c, c                                        ; $5b3f: $49
	cp   c                                           ; $5b40: $b9
	ld   l, c                                        ; $5b41: $69
	cp   c                                           ; $5b42: $b9
	add  a                                           ; $5b43: $87
	sub  a                                           ; $5b44: $97
	ld   [hl], a                                     ; $5b45: $77
	halt                                             ; $5b46: $76
	sub  a                                           ; $5b47: $97
	ld   a, d                                        ; $5b48: $7a
	ld   e, b                                        ; $5b49: $58
	sub  [hl]                                        ; $5b4a: $96
	adc  e                                           ; $5b4b: $8b
	ld   c, d                                        ; $5b4c: $4a
	db   $e3                                         ; $5b4d: $e3
	sbc  e                                           ; $5b4e: $9b
	ld   [hl], a                                     ; $5b4f: $77
	sbc  c                                           ; $5b50: $99
	ld   l, b                                        ; $5b51: $68
	add  a                                           ; $5b52: $87
	sbc  b                                           ; $5b53: $98
	ld   e, d                                        ; $5b54: $5a
	sub  a                                           ; $5b55: $97
	sub  a                                           ; $5b56: $97
	ret                                              ; $5b57: $c9


	ld   h, [hl]                                     ; $5b58: $66
	cp   e                                           ; $5b59: $bb
	ld   l, c                                        ; $5b5a: $69
	sbc  b                                           ; $5b5b: $98
	adc  c                                           ; $5b5c: $89
	ld   l, d                                        ; $5b5d: $6a
	ld   a, c                                        ; $5b5e: $79
	ld   [hl], h                                     ; $5b5f: $74
	or   a                                           ; $5b60: $b7
	and  a                                           ; $5b61: $a7
	xor  d                                           ; $5b62: $aa
	xor  d                                           ; $5b63: $aa
	adc  c                                           ; $5b64: $89

Jump_0dd_5b65:
	ld   a, c                                        ; $5b65: $79
	ld   [hl], a                                     ; $5b66: $77
	ld   l, d                                        ; $5b67: $6a
	or   a                                           ; $5b68: $b7
	ld   h, a                                        ; $5b69: $67
	push bc                                          ; $5b6a: $c5
	sbc  e                                           ; $5b6b: $9b
	ld   e, h                                        ; $5b6c: $5c
	ld   a, c                                        ; $5b6d: $79
	or   [hl]                                        ; $5b6e: $b6
	adc  c                                           ; $5b6f: $89
	or   d                                           ; $5b70: $b2
	sbc  h                                           ; $5b71: $9c
	ld   e, e                                        ; $5b72: $5b
	ld   l, b                                        ; $5b73: $68
	or   [hl]                                        ; $5b74: $b6
	add  a                                           ; $5b75: $87
	rst  ToBoot                                         ; $5b76: $c7
	sbc  c                                           ; $5b77: $99
	ld   a, d                                        ; $5b78: $7a
	ld   l, e                                        ; $5b79: $6b
	ld   c, c                                        ; $5b7a: $49
	or   l                                           ; $5b7b: $b5
	add  [hl]                                        ; $5b7c: $86
	sbc  e                                           ; $5b7d: $9b
	ld   [hl], l                                     ; $5b7e: $75
	xor  h                                           ; $5b7f: $ac
	and  l                                           ; $5b80: $a5
	ld   e, h                                        ; $5b81: $5c
	ld   a, b                                        ; $5b82: $78
	ld   h, a                                        ; $5b83: $67
	xor  c                                           ; $5b84: $a9
	ld   [hl], a                                     ; $5b85: $77
	cp   b                                           ; $5b86: $b8
	halt                                             ; $5b87: $76
	xor  c                                           ; $5b88: $a9
	ld   [hl], l                                     ; $5b89: $75
	xor  l                                           ; $5b8a: $ad
	ld   c, c                                        ; $5b8b: $49
	ld   a, d                                        ; $5b8c: $7a
	and  d                                           ; $5b8d: $a2
	sbc  d                                           ; $5b8e: $9a
	and  e                                           ; $5b8f: $a3
	ld   a, e                                        ; $5b90: $7b
	and  l                                           ; $5b91: $a5
	ld   a, e                                        ; $5b92: $7b
	ld   a, c                                        ; $5b93: $79
	ld   c, h                                        ; $5b94: $4c
	add  a                                           ; $5b95: $87
	ld   e, b                                        ; $5b96: $58
	jp   $c994                                       ; $5b97: $c3 $94 $c9


	ld   d, [hl]                                     ; $5b9a: $56
	xor  h                                           ; $5b9b: $ac
	jr   c, jr_0dd_5b29                              ; $5b9c: $38 $8b

	ld   l, c                                        ; $5b9e: $69
	ld   a, d                                        ; $5b9f: $7a
	or   e                                           ; $5ba0: $b3
	or   [hl]                                        ; $5ba1: $b6
	sub  a                                           ; $5ba2: $97
	sbc  c                                           ; $5ba3: $99
	ld   h, a                                        ; $5ba4: $67
	sub  a                                           ; $5ba5: $97
	sbc  b                                           ; $5ba6: $98
	ld   c, h                                        ; $5ba7: $4c
	ld   l, b                                        ; $5ba8: $68
	ld   l, e                                        ; $5ba9: $6b
	ld   h, [hl]                                     ; $5baa: $66
	or   l                                           ; $5bab: $b5
	adc  b                                           ; $5bac: $88
	ld   a, c                                        ; $5bad: $79
	add  l                                           ; $5bae: $85
	and  a                                           ; $5baf: $a7
	sub  h                                           ; $5bb0: $94
	cp   c                                           ; $5bb1: $b9
	dec  hl                                          ; $5bb2: $2b
	ld   a, d                                        ; $5bb3: $7a
	ld   h, a                                        ; $5bb4: $67
	ld   a, d                                        ; $5bb5: $7a
	halt                                             ; $5bb6: $76
	ld   a, d                                        ; $5bb7: $7a
	ld   [hl], l                                     ; $5bb8: $75
	or   e                                           ; $5bb9: $b3
	cp   b                                           ; $5bba: $b8
	ld   h, a                                        ; $5bbb: $67
	and  a                                           ; $5bbc: $a7
	ld   l, c                                        ; $5bbd: $69
	ld   d, a                                        ; $5bbe: $57
	sbc  e                                           ; $5bbf: $9b
	add  hl, sp                                      ; $5bc0: $39
	sbc  c                                           ; $5bc1: $99
	halt                                             ; $5bc2: $76
	and  [hl]                                        ; $5bc3: $a6
	or   [hl]                                        ; $5bc4: $b6
	sbc  c                                           ; $5bc5: $99
	halt                                             ; $5bc6: $76
	xor  b                                           ; $5bc7: $a8
	ld   e, d                                        ; $5bc8: $5a
	ld   [hl], a                                     ; $5bc9: $77
	ld   l, d                                        ; $5bca: $6a
	ld   e, b                                        ; $5bcb: $58
	sub  a                                           ; $5bcc: $97
	add  [hl]                                        ; $5bcd: $86
	sub  a                                           ; $5bce: $97
	add  [hl]                                        ; $5bcf: $86
	and  [hl]                                        ; $5bd0: $a6
	adc  d                                           ; $5bd1: $8a
	ld   e, b                                        ; $5bd2: $58
	adc  c                                           ; $5bd3: $89
	ld   l, b                                        ; $5bd4: $68
	ld   h, a                                        ; $5bd5: $67
	add  a                                           ; $5bd6: $87
	ld   [hl], a                                     ; $5bd7: $77
	sub  a                                           ; $5bd8: $97
	sub  [hl]                                        ; $5bd9: $96
	sbc  b                                           ; $5bda: $98
	ld   a, b                                        ; $5bdb: $78
	add  a                                           ; $5bdc: $87
	ld   a, c                                        ; $5bdd: $79
	sbc  b                                           ; $5bde: $98
	ld   [hl], a                                     ; $5bdf: $77
	ld   a, b                                        ; $5be0: $78
	ld   l, d                                        ; $5be1: $6a
	ld   l, b                                        ; $5be2: $68
	sub  [hl]                                        ; $5be3: $96
	sub  a                                           ; $5be4: $97
	add  a                                           ; $5be5: $87
	sub  [hl]                                        ; $5be6: $96
	and  a                                           ; $5be7: $a7
	adc  c                                           ; $5be8: $89
	ld   e, c                                        ; $5be9: $59
	ld   a, b                                        ; $5bea: $78
	ld   l, d                                        ; $5beb: $6a
	ld   l, b                                        ; $5bec: $68
	ld   [hl], l                                     ; $5bed: $75
	sub  a                                           ; $5bee: $97
	sub  a                                           ; $5bef: $97
	adc  d                                           ; $5bf0: $8a
	adc  b                                           ; $5bf1: $88
	add  a                                           ; $5bf2: $87
	sbc  b                                           ; $5bf3: $98
	ld   a, c                                        ; $5bf4: $79
	sub  a                                           ; $5bf5: $97
	ld   l, d                                        ; $5bf6: $6a
	ld   e, d                                        ; $5bf7: $5a
	add  l                                           ; $5bf8: $85
	sub  a                                           ; $5bf9: $97
	add  a                                           ; $5bfa: $87
	ld   a, b                                        ; $5bfb: $78
	ld   a, c                                        ; $5bfc: $79
	ld   e, d                                        ; $5bfd: $5a
	ld   [hl], a                                     ; $5bfe: $77
	ld   a, c                                        ; $5bff: $79
	add  a                                           ; $5c00: $87
	sub  [hl]                                        ; $5c01: $96
	and  l                                           ; $5c02: $a5
	sub  a                                           ; $5c03: $97
	ld   a, c                                        ; $5c04: $79
	ld   l, d                                        ; $5c05: $6a
	ld   l, d                                        ; $5c06: $6a
	ld   l, c                                        ; $5c07: $69
	sub  [hl]                                        ; $5c08: $96
	adc  b                                           ; $5c09: $88
	ld   [hl], a                                     ; $5c0a: $77
	add  [hl]                                        ; $5c0b: $86
	and  [hl]                                        ; $5c0c: $a6
	ld   a, c                                        ; $5c0d: $79
	ld   [hl], a                                     ; $5c0e: $77
	ld   a, c                                        ; $5c0f: $79
	ld   a, b                                        ; $5c10: $78
	ld   a, b                                        ; $5c11: $78
	sub  a                                           ; $5c12: $97
	ld   a, b                                        ; $5c13: $78
	add  [hl]                                        ; $5c14: $86
	adc  b                                           ; $5c15: $88
	ld   a, c                                        ; $5c16: $79
	add  a                                           ; $5c17: $87
	add  a                                           ; $5c18: $87
	adc  b                                           ; $5c19: $88
	add  a                                           ; $5c1a: $87
	add  a                                           ; $5c1b: $87
	ld   a, b                                        ; $5c1c: $78
	ld   a, c                                        ; $5c1d: $79
	ld   a, c                                        ; $5c1e: $79
	ld   l, c                                        ; $5c1f: $69
	adc  c                                           ; $5c20: $89
	ld   [hl], a                                     ; $5c21: $77
	add  a                                           ; $5c22: $87
	add  a                                           ; $5c23: $87
	and  [hl]                                        ; $5c24: $a6
	sub  a                                           ; $5c25: $97
	sbc  b                                           ; $5c26: $98
	ld   a, c                                        ; $5c27: $79
	ld   a, b                                        ; $5c28: $78
	adc  c                                           ; $5c29: $89
	ld   a, c                                        ; $5c2a: $79
	ld   l, b                                        ; $5c2b: $68
	sub  a                                           ; $5c2c: $97
	ld   a, b                                        ; $5c2d: $78
	sub  [hl]                                        ; $5c2e: $96
	add  a                                           ; $5c2f: $87
	ld   a, d                                        ; $5c30: $7a
	ld   [hl], a                                     ; $5c31: $77
	sub  a                                           ; $5c32: $97
	ld   a, c                                        ; $5c33: $79
	ld   a, c                                        ; $5c34: $79
	sub  [hl]                                        ; $5c35: $96
	sub  a                                           ; $5c36: $97
	adc  b                                           ; $5c37: $88
	ld   a, c                                        ; $5c38: $79
	ld   a, d                                        ; $5c39: $7a
	ld   l, b                                        ; $5c3a: $68
	adc  b                                           ; $5c3b: $88
	add  a                                           ; $5c3c: $87
	sub  a                                           ; $5c3d: $97
	add  a                                           ; $5c3e: $87
	sbc  b                                           ; $5c3f: $98
	ld   a, b                                        ; $5c40: $78
	ld   a, c                                        ; $5c41: $79
	ld   a, b                                        ; $5c42: $78
	ld   a, c                                        ; $5c43: $79
	ld   a, c                                        ; $5c44: $79
	add  a                                           ; $5c45: $87
	sub  [hl]                                        ; $5c46: $96
	and  a                                           ; $5c47: $a7
	adc  b                                           ; $5c48: $88
	ld   a, c                                        ; $5c49: $79
	ld   a, d                                        ; $5c4a: $7a
	ld   a, b                                        ; $5c4b: $78
	sub  a                                           ; $5c4c: $97
	sbc  b                                           ; $5c4d: $98
	adc  c                                           ; $5c4e: $89
	ld   a, b                                        ; $5c4f: $78
	ld   a, b                                        ; $5c50: $78
	adc  c                                           ; $5c51: $89
	ld   [hl], a                                     ; $5c52: $77
	sub  a                                           ; $5c53: $97
	adc  b                                           ; $5c54: $88
	sbc  b                                           ; $5c55: $98
	ld   a, b                                        ; $5c56: $78
	ld   a, b                                        ; $5c57: $78
	adc  b                                           ; $5c58: $88
	adc  c                                           ; $5c59: $89
	add  a                                           ; $5c5a: $87
	sbc  b                                           ; $5c5b: $98
	sub  [hl]                                        ; $5c5c: $96
	and  a                                           ; $5c5d: $a7
	adc  c                                           ; $5c5e: $89
	ld   a, c                                        ; $5c5f: $79
	ld   a, c                                        ; $5c60: $79
	ld   a, c                                        ; $5c61: $79
	ld   a, c                                        ; $5c62: $79
	ld   a, b                                        ; $5c63: $78
	sub  a                                           ; $5c64: $97
	sub  a                                           ; $5c65: $97
	and  [hl]                                        ; $5c66: $a6
	sbc  b                                           ; $5c67: $98
	adc  c                                           ; $5c68: $89
	ld   a, c                                        ; $5c69: $79
	ld   a, c                                        ; $5c6a: $79
	ld   a, d                                        ; $5c6b: $7a
	ld   [hl], a                                     ; $5c6c: $77
	adc  b                                           ; $5c6d: $88
	adc  b                                           ; $5c6e: $88
	add  a                                           ; $5c6f: $87
	sub  a                                           ; $5c70: $97
	adc  b                                           ; $5c71: $88
	adc  b                                           ; $5c72: $88
	adc  b                                           ; $5c73: $88
	ld   a, c                                        ; $5c74: $79
	adc  b                                           ; $5c75: $88
	add  a                                           ; $5c76: $87
	sbc  c                                           ; $5c77: $99
	adc  b                                           ; $5c78: $88
	adc  c                                           ; $5c79: $89
	adc  b                                           ; $5c7a: $88
	adc  b                                           ; $5c7b: $88
	adc  b                                           ; $5c7c: $88
	adc  b                                           ; $5c7d: $88
	sub  a                                           ; $5c7e: $97
	sbc  b                                           ; $5c7f: $98
	ld   a, d                                        ; $5c80: $7a
	ld   l, b                                        ; $5c81: $68
	sub  [hl]                                        ; $5c82: $96
	and  a                                           ; $5c83: $a7
	adc  b                                           ; $5c84: $88
	ld   a, c                                        ; $5c85: $79
	ld   a, b                                        ; $5c86: $78
	ld   a, b                                        ; $5c87: $78
	adc  b                                           ; $5c88: $88
	ld   a, c                                        ; $5c89: $79
	add  a                                           ; $5c8a: $87
	add  a                                           ; $5c8b: $87
	add  [hl]                                        ; $5c8c: $86
	and  [hl]                                        ; $5c8d: $a6
	sbc  b                                           ; $5c8e: $98
	ld   a, c                                        ; $5c8f: $79
	ld   a, c                                        ; $5c90: $79
	ld   l, c                                        ; $5c91: $69
	ld   l, b                                        ; $5c92: $68
	sub  a                                           ; $5c93: $97
	sub  a                                           ; $5c94: $97
	and  a                                           ; $5c95: $a7
	adc  b                                           ; $5c96: $88
	adc  c                                           ; $5c97: $89
	ld   a, c                                        ; $5c98: $79
	adc  b                                           ; $5c99: $88
	adc  b                                           ; $5c9a: $88
	adc  b                                           ; $5c9b: $88
	ld   a, b                                        ; $5c9c: $78
	sbc  c                                           ; $5c9d: $99
	add  a                                           ; $5c9e: $87
	sub  a                                           ; $5c9f: $97
	sub  a                                           ; $5ca0: $97
	sbc  d                                           ; $5ca1: $9a
	ld   l, c                                        ; $5ca2: $69
	ld   a, c                                        ; $5ca3: $79
	add  a                                           ; $5ca4: $87
	and  [hl]                                        ; $5ca5: $a6
	adc  b                                           ; $5ca6: $88
	ld   a, b                                        ; $5ca7: $78
	ld   a, b                                        ; $5ca8: $78
	sbc  b                                           ; $5ca9: $98
	add  a                                           ; $5caa: $87
	sbc  b                                           ; $5cab: $98
	adc  c                                           ; $5cac: $89
	adc  c                                           ; $5cad: $89
	ld   a, b                                        ; $5cae: $78
	ld   a, b                                        ; $5caf: $78
	add  a                                           ; $5cb0: $87
	sub  a                                           ; $5cb1: $97
	xor  b                                           ; $5cb2: $a8
	ld   l, c                                        ; $5cb3: $69
	ld   a, b                                        ; $5cb4: $78
	sub  a                                           ; $5cb5: $97
	sbc  b                                           ; $5cb6: $98
	adc  b                                           ; $5cb7: $88
	adc  b                                           ; $5cb8: $88
	ld   a, b                                        ; $5cb9: $78
	adc  b                                           ; $5cba: $88
	adc  b                                           ; $5cbb: $88
	sbc  b                                           ; $5cbc: $98
	ld   a, b                                        ; $5cbd: $78
	ld   a, c                                        ; $5cbe: $79
	adc  b                                           ; $5cbf: $88
	sub  a                                           ; $5cc0: $97
	add  a                                           ; $5cc1: $87
	adc  b                                           ; $5cc2: $88
	ld   a, b                                        ; $5cc3: $78
	adc  c                                           ; $5cc4: $89
	adc  b                                           ; $5cc5: $88
	sub  a                                           ; $5cc6: $97
	adc  b                                           ; $5cc7: $88
	sbc  b                                           ; $5cc8: $98
	adc  c                                           ; $5cc9: $89
	adc  c                                           ; $5cca: $89
	add  a                                           ; $5ccb: $87
	add  a                                           ; $5ccc: $87
	adc  b                                           ; $5ccd: $88
	adc  c                                           ; $5cce: $89
	adc  c                                           ; $5ccf: $89
	ld   a, c                                        ; $5cd0: $79
	adc  c                                           ; $5cd1: $89
	adc  b                                           ; $5cd2: $88
	sub  a                                           ; $5cd3: $97
	sbc  b                                           ; $5cd4: $98
	adc  b                                           ; $5cd5: $88
	adc  b                                           ; $5cd6: $88
	add  a                                           ; $5cd7: $87
	sbc  b                                           ; $5cd8: $98
	adc  b                                           ; $5cd9: $88
	sbc  c                                           ; $5cda: $99
	ld   a, b                                        ; $5cdb: $78
	adc  b                                           ; $5cdc: $88
	adc  b                                           ; $5cdd: $88
	adc  b                                           ; $5cde: $88
	adc  b                                           ; $5cdf: $88
	adc  b                                           ; $5ce0: $88
	sub  a                                           ; $5ce1: $97
	adc  c                                           ; $5ce2: $89
	ld   a, b                                        ; $5ce3: $78
	adc  b                                           ; $5ce4: $88
	adc  b                                           ; $5ce5: $88
	sub  a                                           ; $5ce6: $97
	adc  b                                           ; $5ce7: $88
	adc  c                                           ; $5ce8: $89
	adc  b                                           ; $5ce9: $88
	adc  b                                           ; $5cea: $88
	adc  b                                           ; $5ceb: $88
	adc  b                                           ; $5cec: $88
	adc  c                                           ; $5ced: $89
	adc  b                                           ; $5cee: $88
	adc  b                                           ; $5cef: $88
	sbc  b                                           ; $5cf0: $98
	sbc  b                                           ; $5cf1: $98
	adc  b                                           ; $5cf2: $88
	sbc  b                                           ; $5cf3: $98
	adc  b                                           ; $5cf4: $88
	adc  c                                           ; $5cf5: $89
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
	sbc  b                                           ; $5d09: $98
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
	sbc  b                                           ; $5e77: $98
	adc  c                                           ; $5e78: $89
	sbc  c                                           ; $5e79: $99
	adc  b                                           ; $5e7a: $88
	ld   a, b                                        ; $5e7b: $78
	add  a                                           ; $5e7c: $87
	ld   a, b                                        ; $5e7d: $78
	add  a                                           ; $5e7e: $87
	ld   [hl], a                                     ; $5e7f: $77
	adc  b                                           ; $5e80: $88
	adc  b                                           ; $5e81: $88
	adc  b                                           ; $5e82: $88
	adc  b                                           ; $5e83: $88
	adc  b                                           ; $5e84: $88
	ld   a, b                                        ; $5e85: $78
	add  a                                           ; $5e86: $87
	ld   [hl], a                                     ; $5e87: $77
	sbc  d                                           ; $5e88: $9a
	sbc  b                                           ; $5e89: $98
	sbc  b                                           ; $5e8a: $98
	adc  c                                           ; $5e8b: $89
	adc  c                                           ; $5e8c: $89
	sbc  d                                           ; $5e8d: $9a
	xor  c                                           ; $5e8e: $a9
	halt                                             ; $5e8f: $76
	ld   h, [hl]                                     ; $5e90: $66
	ld   h, [hl]                                     ; $5e91: $66
	ld   [hl], a                                     ; $5e92: $77
	ld   h, l                                        ; $5e93: $65
	ld   h, [hl]                                     ; $5e94: $66
	ld   [hl], a                                     ; $5e95: $77
	ld   a, b                                        ; $5e96: $78
	sbc  e                                           ; $5e97: $9b
	or   a                                           ; $5e98: $b7
	adc  c                                           ; $5e99: $89
	adc  c                                           ; $5e9a: $89
	sbc  b                                           ; $5e9b: $98
	sbc  b                                           ; $5e9c: $98
	ld   h, [hl]                                     ; $5e9d: $66
	adc  c                                           ; $5e9e: $89
	sub  [hl]                                        ; $5e9f: $96
	ld   h, [hl]                                     ; $5ea0: $66
	add  a                                           ; $5ea1: $87
	sbc  e                                           ; $5ea2: $9b
	cp   $54                                         ; $5ea3: $fe $54
	ld   a, b                                        ; $5ea5: $78
	ld   a, c                                        ; $5ea6: $79
	adc  c                                           ; $5ea7: $89
	xor  c                                           ; $5ea8: $a9
	halt                                             ; $5ea9: $76
	ld   a, l                                        ; $5eaa: $7d
	ld   hl, sp+$5b                                  ; $5eab: $f8 $5b
	add  l                                           ; $5ead: $85
	inc  [hl]                                        ; $5eae: $34
	ld   a, b                                        ; $5eaf: $78
	ld   h, l                                        ; $5eb0: $65
	ld   d, h                                        ; $5eb1: $54
	sbc  h                                           ; $5eb2: $9c
	and  l                                           ; $5eb3: $a5
	ld   e, d                                        ; $5eb4: $5a
	xor  h                                           ; $5eb5: $ac
	call $b5ff                                       ; $5eb6: $cd $ff $b5
	ld   h, l                                        ; $5eb9: $65
	ld   sp, $a415                                   ; $5eba: $31 $15 $a4
	ld   de, $7637                                   ; $5ebd: $11 $37 $76
	ld   l, e                                        ; $5ec0: $6b
	jp   c, $edac                                    ; $5ec1: $da $ac $ed

	call c, Call_0dd_64c9                            ; $5ec4: $dc $c9 $64
	ld   h, [hl]                                     ; $5ec7: $66
	ld   h, $77                                      ; $5ec8: $26 $77
	ld   h, e                                        ; $5eca: $63
	ld   b, a                                        ; $5ecb: $47
	and  l                                           ; $5ecc: $a5
	ld   d, a                                        ; $5ecd: $57
	sbc  e                                           ; $5ece: $9b
	sub  a                                           ; $5ecf: $97
	ld   e, c                                        ; $5ed0: $59
	and  [hl]                                        ; $5ed1: $a6
	ld   d, [hl]                                     ; $5ed2: $56
	ld   [hl], a                                     ; $5ed3: $77
	ld   d, d                                        ; $5ed4: $52
	ld   b, a                                        ; $5ed5: $47
	ld   [hl], l                                     ; $5ed6: $75
	ld   l, b                                        ; $5ed7: $68
	sbc  c                                           ; $5ed8: $99
	adc  c                                           ; $5ed9: $89
	sbc  d                                           ; $5eda: $9a
	add  a                                           ; $5edb: $87
	adc  b                                           ; $5edc: $88
	halt                                             ; $5edd: $76
	ld   h, [hl]                                     ; $5ede: $66
	ld   h, [hl]                                     ; $5edf: $66
	halt                                             ; $5ee0: $76
	ld   h, l                                        ; $5ee1: $65
	ld   d, [hl]                                     ; $5ee2: $56
	ld   [hl], a                                     ; $5ee3: $77
	ld   a, b                                        ; $5ee4: $78
	adc  c                                           ; $5ee5: $89
	adc  c                                           ; $5ee6: $89
	sbc  c                                           ; $5ee7: $99
	sbc  c                                           ; $5ee8: $99
	adc  b                                           ; $5ee9: $88
	xor  e                                           ; $5eea: $ab
	sbc  b                                           ; $5eeb: $98
	adc  c                                           ; $5eec: $89
	adc  c                                           ; $5eed: $89
	ld   [hl], l                                     ; $5eee: $75
	ld   b, [hl]                                     ; $5eef: $46

jr_0dd_5ef0:
	ld   h, l                                        ; $5ef0: $65
	inc  sp                                          ; $5ef1: $33
	ld   h, l                                        ; $5ef2: $65
	ld   b, h                                        ; $5ef3: $44
	ld   l, c                                        ; $5ef4: $69
	xor  d                                           ; $5ef5: $aa
	sbc  e                                           ; $5ef6: $9b
	db   $dd                                         ; $5ef7: $dd
	set  3, [hl]                                     ; $5ef8: $cb $de
	db   $ed                                         ; $5efa: $ed
	jp   c, $96cc                                    ; $5efb: $da $cc $96

	ld   h, l                                        ; $5efe: $65
	inc  sp                                          ; $5eff: $33
	ld   de, $1111                                   ; $5f00: $11 $11 $11
	ld   de, $bf47                                   ; $5f03: $11 $47 $bf
	rst  $38                                         ; $5f06: $ff
	rst  $38                                         ; $5f07: $ff
	rst  $38                                         ; $5f08: $ff
	rst  $38                                         ; $5f09: $ff
	rst  $38                                         ; $5f0a: $ff
	rst  $38                                         ; $5f0b: $ff
	ld   [$1194], a                                  ; $5f0c: $ea $94 $11
	ld   de, $1111                                   ; $5f0f: $11 $11 $11
	inc  de                                          ; $5f12: $13
	ld   e, a                                        ; $5f13: $5f
	rst  $38                                         ; $5f14: $ff
	rst  $38                                         ; $5f15: $ff
	rst  $38                                         ; $5f16: $ff
	db   $fc                                         ; $5f17: $fc
	rst  $38                                         ; $5f18: $ff
	rst  $38                                         ; $5f19: $ff
	sbc  $9a                                         ; $5f1a: $de $9a
	add  h                                           ; $5f1c: $84
	ld   b, d                                        ; $5f1d: $42
	ld   de, $1111                                   ; $5f1e: $11 $11 $11
	scf                                              ; $5f21: $37
	ld   l, a                                        ; $5f22: $6f
	rst  $38                                         ; $5f23: $ff
	rst  $38                                         ; $5f24: $ff
	rst  $38                                         ; $5f25: $ff
	ld   sp, hl                                      ; $5f26: $f9
	cp   a                                           ; $5f27: $bf
	rst  $38                                         ; $5f28: $ff
	ret                                              ; $5f29: $c9


	ld   l, c                                        ; $5f2a: $69
	ld   d, e                                        ; $5f2b: $53
	ld   b, h                                        ; $5f2c: $44
	ld   de, $1111                                   ; $5f2d: $11 $11 $11
	rla                                              ; $5f30: $17
	adc  a                                           ; $5f31: $8f
	rst  $38                                         ; $5f32: $ff
	rst  $38                                         ; $5f33: $ff
	rst  $38                                         ; $5f34: $ff
	ld   a, [$fecf]                                  ; $5f35: $fa $cf $fe
	jp   c, $5388                                    ; $5f38: $da $88 $53

	ld   d, h                                        ; $5f3b: $54
	ld   de, $1111                                   ; $5f3c: $11 $11 $11
	jr   jr_0dd_5ef0                                 ; $5f3f: $18 $af

	rst  $38                                         ; $5f41: $ff
	rst  $38                                         ; $5f42: $ff
	ei                                               ; $5f43: $fb
	db   $ec                                         ; $5f44: $ec
	cp   a                                           ; $5f45: $bf
	rst  $38                                         ; $5f46: $ff
	db   $ec                                         ; $5f47: $ec
	ld   d, l                                        ; $5f48: $55
	halt                                             ; $5f49: $76
	ld   d, h                                        ; $5f4a: $54
	ld   de, $1111                                   ; $5f4b: $11 $11 $11
	ld   e, $bf                                      ; $5f4e: $1e $bf
	rst  $38                                         ; $5f50: $ff
	rst  $38                                         ; $5f51: $ff
	ld   sp, hl                                      ; $5f52: $f9
	jp   c, $ffbf                                    ; $5f53: $da $bf $ff

	reti                                             ; $5f56: $d9


	ld   a, c                                        ; $5f57: $79
	ld   [hl], a                                     ; $5f58: $77
	ld   h, h                                        ; $5f59: $64
	ld   de, $1111                                   ; $5f5a: $11 $11 $11
	dec  e                                           ; $5f5d: $1d
	adc  a                                           ; $5f5e: $8f
	rst  $38                                         ; $5f5f: $ff
	rst  $38                                         ; $5f60: $ff
	push af                                          ; $5f61: $f5
	or   l                                           ; $5f62: $b5
	adc  a                                           ; $5f63: $8f
	rst  $38                                         ; $5f64: $ff
	ld   hl, sp+$4a                                  ; $5f65: $f8 $4a
	adc  b                                           ; $5f67: $88
	sub  e                                           ; $5f68: $93
	ld   de, $1111                                   ; $5f69: $11 $11 $11
	rra                                              ; $5f6c: $1f
	rst  $38                                         ; $5f6d: $ff
	rst  $38                                         ; $5f6e: $ff
	rst  $38                                         ; $5f6f: $ff
	or   l                                           ; $5f70: $b5
	sub  l                                           ; $5f71: $95
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f72: $cf
	rst  $38                                         ; $5f73: $ff
	db   $fc                                         ; $5f74: $fc
	add  l                                           ; $5f75: $85
	ld   h, $c7                                      ; $5f76: $26 $c7
	ld   de, $1111                                   ; $5f78: $11 $11 $11
	inc  e                                           ; $5f7b: $1c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f7c: $cf
	rst  $38                                         ; $5f7d: $ff
	rst  $38                                         ; $5f7e: $ff
	jp   hl                                          ; $5f7f: $e9


	ld   b, e                                        ; $5f80: $43
	sbc  a                                           ; $5f81: $9f
	rst  $38                                         ; $5f82: $ff
	db   $dd                                         ; $5f83: $dd
	rst  ToBoot                                         ; $5f84: $c7
	ld   d, h                                        ; $5f85: $54
	ld   a, b                                        ; $5f86: $78
	ld   de, $1111                                   ; $5f87: $11 $11 $11
	ld   e, $df                                      ; $5f8a: $1e $df
	rst  $38                                         ; $5f8c: $ff
	rst  $38                                         ; $5f8d: $ff
	or   $41                                         ; $5f8e: $f6 $41
	ld   a, a                                        ; $5f90: $7f
	rst  $38                                         ; $5f91: $ff
	cp   $76                                         ; $5f92: $fe $76
	ld   b, h                                        ; $5f94: $44
	cp   c                                           ; $5f95: $b9
	ld   sp, $1111                                   ; $5f96: $31 $11 $11
	dec  e                                           ; $5f99: $1d
	rst  $38                                         ; $5f9a: $ff
	rst  $38                                         ; $5f9b: $ff
	rst  $38                                         ; $5f9c: $ff
	rst  $30                                         ; $5f9d: $f7
	ld   b, c                                        ; $5f9e: $41
	adc  a                                           ; $5f9f: $8f
	rst  $38                                         ; $5fa0: $ff
	jp   z, Jump_0dd_649b                            ; $5fa1: $ca $9b $64

	halt                                             ; $5fa4: $76
	ld   de, $1111                                   ; $5fa5: $11 $11 $11
	rra                                              ; $5fa8: $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fa9: $cf
	rst  $38                                         ; $5faa: $ff
	rst  $38                                         ; $5fab: $ff
	add  h                                           ; $5fac: $84
	ld   b, e                                        ; $5fad: $43
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fae: $cf
	rst  $38                                         ; $5faf: $ff
	call z, $9877                                    ; $5fb0: $cc $77 $98
	add  [hl]                                        ; $5fb3: $86
	ld   de, $1111                                   ; $5fb4: $11 $11 $11
	rra                                              ; $5fb7: $1f
	rst  JumpTable                                         ; $5fb8: $df
	rst  $38                                         ; $5fb9: $ff
	rst  $38                                         ; $5fba: $ff
	db   $d3                                         ; $5fbb: $d3
	ld   [hl+], a                                    ; $5fbc: $22
	cp   a                                           ; $5fbd: $bf
	rst  $38                                         ; $5fbe: $ff
	ld   a, [$7669]                                  ; $5fbf: $fa $69 $76
	or   [hl]                                        ; $5fc2: $b6
	ld   de, $1111                                   ; $5fc3: $11 $11 $11
	rra                                              ; $5fc6: $1f
	rst  $38                                         ; $5fc7: $ff
	rst  $38                                         ; $5fc8: $ff
	rst  $38                                         ; $5fc9: $ff
	push af                                          ; $5fca: $f5
	ld   de, $ffef                                   ; $5fcb: $11 $ef $ff
	call c, Call_0dd_47c7                            ; $5fce: $dc $c7 $47
	cp   d                                           ; $5fd1: $ba
	ld   hl, $1111                                   ; $5fd2: $21 $11 $11
	ld   e, $df                                      ; $5fd5: $1e $df
	rst  $38                                         ; $5fd7: $ff
	rst  $38                                         ; $5fd8: $ff
	and  c                                           ; $5fd9: $a1
	ld   l, d                                        ; $5fda: $6a
	adc  [hl]                                        ; $5fdb: $8e
	rst  $38                                         ; $5fdc: $ff
	or   $5b                                         ; $5fdd: $f6 $5b
	cp   d                                           ; $5fdf: $ba
	or   h                                           ; $5fe0: $b4
	ld   de, $1111                                   ; $5fe1: $11 $11 $11
	rra                                              ; $5fe4: $1f
	rst  $38                                         ; $5fe5: $ff
	rst  $38                                         ; $5fe6: $ff
	rst  $38                                         ; $5fe7: $ff
	jp   nz, $8f47                                   ; $5fe8: $c2 $47 $8f

	rst  $38                                         ; $5feb: $ff
	db   $fd                                         ; $5fec: $fd
	or   [hl]                                        ; $5fed: $b6
	ld   d, a                                        ; $5fee: $57
	halt                                             ; $5fef: $76
	ld   de, $1111                                   ; $5ff0: $11 $11 $11
	dec  de                                          ; $5ff3: $1b
	rst  JumpTable                                         ; $5ff4: $df
	rst  $38                                         ; $5ff5: $ff
	rst  $38                                         ; $5ff6: $ff
	ldh  a, [c]                                      ; $5ff7: $f2
	inc  de                                          ; $5ff8: $13
	rst  JumpTable                                         ; $5ff9: $df
	rst  $38                                         ; $5ffa: $ff
	db   $eb                                         ; $5ffb: $eb
	xor  c                                           ; $5ffc: $a9
	ld   [hl], $e9                                   ; $5ffd: $36 $e9
	ld   de, $1111                                   ; $5fff: $11 $11 $11
	dec  d                                           ; $6002: $15
	rst  $38                                         ; $6003: $ff
	rst  $38                                         ; $6004: $ff
	rst  $38                                         ; $6005: $ff
	or   $11                                         ; $6006: $f6 $11
	xor  a                                           ; $6008: $af
	rst  $38                                         ; $6009: $ff
	ei                                               ; $600a: $fb
	cp   c                                           ; $600b: $b9
	ld   h, [hl]                                     ; $600c: $66
	ld   l, h                                        ; $600d: $6c
	ld   [hl], c                                     ; $600e: $71
	ld   de, $1311                                   ; $600f: $11 $11 $13
	rst  $38                                         ; $6012: $ff
	rst  $38                                         ; $6013: $ff
	rst  $38                                         ; $6014: $ff
	ei                                               ; $6015: $fb
	ld   d, h                                        ; $6016: $54
	ld   l, e                                        ; $6017: $6b
	rst  $38                                         ; $6018: $ff
	db   $fc                                         ; $6019: $fc
	adc  c                                           ; $601a: $89
	sub  a                                           ; $601b: $97
	ld   a, c                                        ; $601c: $79
	ld   [hl], c                                     ; $601d: $71
	ld   de, $1511                                   ; $601e: $11 $11 $15
	cp   h                                           ; $6021: $bc
	rst  $38                                         ; $6022: $ff
	rst  $38                                         ; $6023: $ff
	or   $19                                         ; $6024: $f6 $19
	xor  c                                           ; $6026: $a9
	rst  $38                                         ; $6027: $ff
	ei                                               ; $6028: $fb
	sbc  c                                           ; $6029: $99
	ld   l, b                                        ; $602a: $68
	ld   [hl], a                                     ; $602b: $77
	sub  d                                           ; $602c: $92
	ld   de, $1111                                   ; $602d: $11 $11 $11
	cp   h                                           ; $6030: $bc
	rst  $38                                         ; $6031: $ff
	rst  $38                                         ; $6032: $ff
	db   $fc                                         ; $6033: $fc
	ld   b, e                                        ; $6034: $43
	adc  $ff                                         ; $6035: $ce $ff
	rst  $38                                         ; $6037: $ff
	add  sp, $35                                     ; $6038: $e8 $35
	sbc  c                                           ; $603a: $99
	ld   [hl], d                                     ; $603b: $72
	ld   de, $1111                                   ; $603c: $11 $11 $11
	xor  a                                           ; $603f: $af
	rst  $38                                         ; $6040: $ff
	rst  $38                                         ; $6041: $ff
	cp   $71                                         ; $6042: $fe $71
	ld   l, a                                        ; $6044: $6f
	rst  $38                                         ; $6045: $ff
	db   $fc                                         ; $6046: $fc
	cp   d                                           ; $6047: $ba
	sub  h                                           ; $6048: $94
	ld   c, b                                        ; $6049: $48
	or   [hl]                                        ; $604a: $b6
	ld   de, $1111                                   ; $604b: $11 $11 $11
	add  hl, de                                      ; $604e: $19
	rst  $38                                         ; $604f: $ff
	rst  $38                                         ; $6050: $ff
	rst  $38                                         ; $6051: $ff
	ei                                               ; $6052: $fb
	ld   b, [hl]                                     ; $6053: $46
	rst  $38                                         ; $6054: $ff
	db   $fc                                         ; $6055: $fc
	ld   a, b                                        ; $6056: $78
	cp   b                                           ; $6057: $b8
	ld   d, [hl]                                     ; $6058: $56
	adc  c                                           ; $6059: $89
	ld   sp, $1111                                   ; $605a: $31 $11 $11
	ld   a, [de]                                     ; $605d: $1a
	ld   l, a                                        ; $605e: $6f
	rst  $38                                         ; $605f: $ff
	rst  $38                                         ; $6060: $ff
	sbc  b                                           ; $6061: $98
	set  3, a                                        ; $6062: $cb $df
	rst  $38                                         ; $6064: $ff
	ret                                              ; $6065: $c9


	ld   l, b                                        ; $6066: $68
	add  a                                           ; $6067: $87
	ld   h, l                                        ; $6068: $65
	ld   sp, $1111                                   ; $6069: $31 $11 $11
	dec  d                                           ; $606c: $15
	sbc  $ff                                         ; $606d: $de $ff
	rst  $38                                         ; $606f: $ff
	ld   sp, hl                                      ; $6070: $f9
	ld   l, l                                        ; $6071: $6d
	rst  $38                                         ; $6072: $ff
	rst  $38                                         ; $6073: $ff
	db   $db                                         ; $6074: $db
	and  l                                           ; $6075: $a5
	ld   b, [hl]                                     ; $6076: $46
	ld   a, b                                        ; $6077: $78
	ld   [hl], d                                     ; $6078: $72
	ld   de, $1111                                   ; $6079: $11 $11 $11
	ld   a, l                                        ; $607c: $7d
	rst  $38                                         ; $607d: $ff
	rst  $38                                         ; $607e: $ff
	rst  $38                                         ; $607f: $ff
	ret  c                                           ; $6080: $d8

	sbc  a                                           ; $6081: $9f
	rst  $38                                         ; $6082: $ff
	call c, Call_0dd_73a9                            ; $6083: $dc $a9 $73
	ld   e, d                                        ; $6086: $5a
	and  e                                           ; $6087: $a3
	ld   de, $1111                                   ; $6088: $11 $11 $11
	ld   d, $df                                      ; $608b: $16 $df
	rst  $38                                         ; $608d: $ff
	rst  $38                                         ; $608e: $ff
	ld   a, [$ffaf]                                  ; $608f: $fa $af $ff
	ei                                               ; $6092: $fb
	sbc  e                                           ; $6093: $9b
	add  l                                           ; $6094: $85
	daa                                              ; $6095: $27
	add  [hl]                                        ; $6096: $86
	ld   b, c                                        ; $6097: $41
	ld   de, $1311                                   ; $6098: $11 $11 $13
	ld   e, h                                        ; $609b: $5c
	rst  $38                                         ; $609c: $ff
	rst  $38                                         ; $609d: $ff
	rst  $38                                         ; $609e: $ff
	adc  $ff                                         ; $609f: $ce $ff
	rst  $38                                         ; $60a1: $ff
	call c, $5397                                    ; $60a2: $dc $97 $53
	ld   e, b                                        ; $60a5: $58
	ld   d, c                                        ; $60a6: $51
	ld   de, $1111                                   ; $60a7: $11 $11 $11
	ld   b, h                                        ; $60aa: $44
	sbc  a                                           ; $60ab: $9f
	rst  $38                                         ; $60ac: $ff
	rst  $38                                         ; $60ad: $ff
	cp   $ff                                         ; $60ae: $fe $ff
	rst  $38                                         ; $60b0: $ff
	db   $ed                                         ; $60b1: $ed
	ret                                              ; $60b2: $c9


	add  h                                           ; $60b3: $84
	ld   d, [hl]                                     ; $60b4: $56
	ld   [hl], l                                     ; $60b5: $75
	ld   de, $1111                                   ; $60b6: $11 $11 $11
	inc  d                                           ; $60b9: $14
	ld   c, d                                        ; $60ba: $4a
	db   $ec                                         ; $60bb: $ec
	rst  $38                                         ; $60bc: $ff
	rst  $38                                         ; $60bd: $ff
	db   $fd                                         ; $60be: $fd
	rst  $38                                         ; $60bf: $ff
	rst  $38                                         ; $60c0: $ff
	xor  $cb                                         ; $60c1: $ee $cb
	halt                                             ; $60c3: $76
	halt                                             ; $60c4: $76
	ld   b, c                                        ; $60c5: $41
	ld   de, $1111                                   ; $60c6: $11 $11 $11
	ld   [hl+], a                                    ; $60c9: $22
	adc  l                                           ; $60ca: $8d
	rst  JumpTable                                         ; $60cb: $df
	rst  $38                                         ; $60cc: $ff
	db   $fd                                         ; $60cd: $fd
	rst  JumpTable                                         ; $60ce: $df
	rst  $38                                         ; $60cf: $ff
	cp   $de                                         ; $60d0: $fe $de
	jp   z, Jump_0dd_7676                            ; $60d2: $ca $76 $76

	ld   d, d                                        ; $60d5: $52
	ld   de, $1111                                   ; $60d6: $11 $11 $11
	inc  h                                           ; $60d9: $24
	adc  d                                           ; $60da: $8a
	rst  JumpTable                                         ; $60db: $df
	rst  $38                                         ; $60dc: $ff
	xor  $ef                                         ; $60dd: $ee $ef
	rst  $38                                         ; $60df: $ff
	db   $fd                                         ; $60e0: $fd
	db   $dd                                         ; $60e1: $dd
	cp   c                                           ; $60e2: $b9
	adc  c                                           ; $60e3: $89
	adc  b                                           ; $60e4: $88
	ld   d, d                                        ; $60e5: $52
	ld   de, $1111                                   ; $60e6: $11 $11 $11
	inc  hl                                          ; $60e9: $23
	halt                                             ; $60ea: $76
	sbc  l                                           ; $60eb: $9d
	xor  h                                           ; $60ec: $ac
	cp   h                                           ; $60ed: $bc
	sbc  $ff                                         ; $60ee: $de $ff
	cp   $fe                                         ; $60f0: $fe $fe
	call c, $baab                                    ; $60f2: $dc $ab $ba
	sub  [hl]                                        ; $60f5: $96
	ld   d, e                                        ; $60f6: $53
	ld   de, $1211                                   ; $60f7: $11 $11 $12
	ld   [hl+], a                                    ; $60fa: $22
	inc  [hl]                                        ; $60fb: $34
	ld   b, h                                        ; $60fc: $44
	ld   h, a                                        ; $60fd: $67
	xor  e                                           ; $60fe: $ab
	adc  $ff                                         ; $60ff: $ce $ff
	rst  $38                                         ; $6101: $ff
	rst  $38                                         ; $6102: $ff
	rst  $38                                         ; $6103: $ff
	rst  $38                                         ; $6104: $ff
	call c, Call_0dd_64a8                            ; $6105: $dc $a8 $64
	ld   [hl+], a                                    ; $6108: $22
	ld   de, $1111                                   ; $6109: $11 $11 $11
	ld   de, $2411                                   ; $610c: $11 $11 $24
	ld   a, c                                        ; $610f: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6110: $cf
	rst  $38                                         ; $6111: $ff
	rst  $38                                         ; $6112: $ff
	rst  $38                                         ; $6113: $ff
	rst  $38                                         ; $6114: $ff
	rst  $38                                         ; $6115: $ff
	db   $eb                                         ; $6116: $eb
	sub  a                                           ; $6117: $97
	ld   d, h                                        ; $6118: $54
	ld   hl, $1111                                   ; $6119: $21 $11 $11
	ld   de, $1111                                   ; $611c: $11 $11 $11
	inc  h                                           ; $611f: $24
	ld   a, d                                        ; $6120: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6121: $cf
	rst  $38                                         ; $6122: $ff
	rst  $38                                         ; $6123: $ff
	rst  $38                                         ; $6124: $ff
	rst  $38                                         ; $6125: $ff
	rst  $38                                         ; $6126: $ff
	db   $fc                                         ; $6127: $fc
	xor  c                                           ; $6128: $a9
	ld   h, e                                        ; $6129: $63
	ld   hl, $1111                                   ; $612a: $21 $11 $11
	ld   de, $1111                                   ; $612d: $11 $11 $11
	inc  de                                          ; $6130: $13
	ld   l, c                                        ; $6131: $69
	cp   [hl]                                        ; $6132: $be
	rst  $38                                         ; $6133: $ff
	rst  $38                                         ; $6134: $ff
	rst  $38                                         ; $6135: $ff
	rst  $38                                         ; $6136: $ff
	rst  $38                                         ; $6137: $ff
	db   $fd                                         ; $6138: $fd
	cp   c                                           ; $6139: $b9
	ld   [hl], h                                     ; $613a: $74
	ld   hl, $1111                                   ; $613b: $21 $11 $11
	ld   de, $1111                                   ; $613e: $11 $11 $11
	ld   [de], a                                     ; $6141: $12
	ld   b, a                                        ; $6142: $47
	sbc  l                                           ; $6143: $9d
	rst  $38                                         ; $6144: $ff
	rst  $38                                         ; $6145: $ff
	rst  $38                                         ; $6146: $ff
	rst  $38                                         ; $6147: $ff
	rst  $38                                         ; $6148: $ff
	cp   $ca                                         ; $6149: $fe $ca
	add  [hl]                                        ; $614b: $86
	ld   sp, $1111                                   ; $614c: $31 $11 $11
	ld   de, $1111                                   ; $614f: $11 $11 $11
	ld   de, $9b25                                   ; $6152: $11 $25 $9b
	rst  $28                                         ; $6155: $ef
	rst  $38                                         ; $6156: $ff
	rst  $38                                         ; $6157: $ff
	rst  $38                                         ; $6158: $ff
	rst  $38                                         ; $6159: $ff
	rst  $38                                         ; $615a: $ff
	db   $db                                         ; $615b: $db
	and  a                                           ; $615c: $a7
	ld   d, e                                        ; $615d: $53
	ld   de, $1111                                   ; $615e: $11 $11 $11
	ld   de, $1111                                   ; $6161: $11 $11 $11
	inc  h                                           ; $6164: $24
	adc  d                                           ; $6165: $8a
	rst  JumpTable                                         ; $6166: $df
	rst  $38                                         ; $6167: $ff
	rst  $38                                         ; $6168: $ff
	rst  $38                                         ; $6169: $ff
	rst  $38                                         ; $616a: $ff
	rst  $38                                         ; $616b: $ff
	db   $fd                                         ; $616c: $fd
	ret                                              ; $616d: $c9


	ld   h, h                                        ; $616e: $64
	ld   hl, $1111                                   ; $616f: $21 $11 $11
	ld   de, $1111                                   ; $6172: $11 $11 $11
	ld   [de], a                                     ; $6175: $12
	ld   e, b                                        ; $6176: $58
	adc  $ff                                         ; $6177: $ce $ff
	rst  $38                                         ; $6179: $ff
	rst  $38                                         ; $617a: $ff
	rst  $38                                         ; $617b: $ff
	rst  $38                                         ; $617c: $ff
	rst  $38                                         ; $617d: $ff
	jp   c, $2174                                    ; $617e: $da $74 $21

	ld   de, $1111                                   ; $6181: $11 $11 $11
	ld   de, $1111                                   ; $6184: $11 $11 $11
	ld   [hl], $ad                                   ; $6187: $36 $ad

Jump_0dd_6189:
	rst  $38                                         ; $6189: $ff
	rst  $38                                         ; $618a: $ff
	rst  $38                                         ; $618b: $ff
	rst  $38                                         ; $618c: $ff
	rst  $38                                         ; $618d: $ff
	rst  $38                                         ; $618e: $ff
	db   $ec                                         ; $618f: $ec
	sub  [hl]                                        ; $6190: $96
	ld   b, d                                        ; $6191: $42
	ld   de, $1111                                   ; $6192: $11 $11 $11
	ld   de, $1111                                   ; $6195: $11 $11 $11
	inc  d                                           ; $6198: $14
	ld   a, d                                        ; $6199: $7a
	rst  JumpTable                                         ; $619a: $df
	rst  $38                                         ; $619b: $ff
	rst  $38                                         ; $619c: $ff
	rst  $38                                         ; $619d: $ff
	rst  $38                                         ; $619e: $ff
	rst  $38                                         ; $619f: $ff
	cp   $c8                                         ; $61a0: $fe $c8
	ld   h, h                                        ; $61a2: $64
	ld   hl, $1111                                   ; $61a3: $21 $11 $11
	ld   de, $1111                                   ; $61a6: $11 $11 $11
	ld   [de], a                                     ; $61a9: $12
	ld   e, b                                        ; $61aa: $58
	cp   [hl]                                        ; $61ab: $be
	rst  $38                                         ; $61ac: $ff
	rst  $38                                         ; $61ad: $ff
	rst  $38                                         ; $61ae: $ff
	rst  $38                                         ; $61af: $ff
	rst  $38                                         ; $61b0: $ff
	rst  $38                                         ; $61b1: $ff
	db   $eb                                         ; $61b2: $eb
	sub  [hl]                                        ; $61b3: $96
	ld   sp, $1111                                   ; $61b4: $31 $11 $11
	ld   de, $1111                                   ; $61b7: $11 $11 $11
	ld   de, $8c25                                   ; $61ba: $11 $25 $8c
	rst  $38                                         ; $61bd: $ff
	rst  $38                                         ; $61be: $ff
	rst  $38                                         ; $61bf: $ff
	rst  $38                                         ; $61c0: $ff
	rst  $38                                         ; $61c1: $ff
	rst  $38                                         ; $61c2: $ff
	db   $fd                                         ; $61c3: $fd
	xor  b                                           ; $61c4: $a8
	ld   d, e                                        ; $61c5: $53
	ld   de, $1111                                   ; $61c6: $11 $11 $11
	ld   de, $1111                                   ; $61c9: $11 $11 $11
	ld   [de], a                                     ; $61cc: $12
	ld   e, b                                        ; $61cd: $58
	cp   a                                           ; $61ce: $bf
	rst  $38                                         ; $61cf: $ff
	rst  $38                                         ; $61d0: $ff
	rst  $38                                         ; $61d1: $ff
	rst  $38                                         ; $61d2: $ff
	rst  $38                                         ; $61d3: $ff
	rst  $38                                         ; $61d4: $ff
	db   $db                                         ; $61d5: $db
	add  [hl]                                        ; $61d6: $86
	ld   sp, $1111                                   ; $61d7: $31 $11 $11
	ld   de, $1111                                   ; $61da: $11 $11 $11
	ld   de, $8b25                                   ; $61dd: $11 $25 $8b
	rst  $28                                         ; $61e0: $ef
	rst  $38                                         ; $61e1: $ff
	rst  $38                                         ; $61e2: $ff
	rst  $38                                         ; $61e3: $ff
	rst  $38                                         ; $61e4: $ff
	rst  $38                                         ; $61e5: $ff
	cp   $b8                                         ; $61e6: $fe $b8
	ld   h, h                                        ; $61e8: $64
	ld   hl, $1111                                   ; $61e9: $21 $11 $11
	ld   de, $1111                                   ; $61ec: $11 $11 $11
	ld   de, $9d47                                   ; $61ef: $11 $47 $9d
	rst  $38                                         ; $61f2: $ff
	rst  $38                                         ; $61f3: $ff
	rst  $38                                         ; $61f4: $ff
	rst  $38                                         ; $61f5: $ff
	rst  $38                                         ; $61f6: $ff
	rst  $38                                         ; $61f7: $ff
	db   $fc                                         ; $61f8: $fc
	sub  a                                           ; $61f9: $97
	ld   d, e                                        ; $61fa: $53
	ld   de, $1111                                   ; $61fb: $11 $11 $11
	ld   de, $1111                                   ; $61fe: $11 $11 $11
	ld   [de], a                                     ; $6201: $12
	ld   e, c                                        ; $6202: $59
	cp   a                                           ; $6203: $bf
	rst  $38                                         ; $6204: $ff
	rst  $38                                         ; $6205: $ff
	rst  $38                                         ; $6206: $ff
	rst  $38                                         ; $6207: $ff
	rst  $38                                         ; $6208: $ff
	rst  $38                                         ; $6209: $ff
	db   $eb                                         ; $620a: $eb
	add  [hl]                                        ; $620b: $86
	ld   b, d                                        ; $620c: $42
	ld   de, $1111                                   ; $620d: $11 $11 $11
	ld   de, $1111                                   ; $6210: $11 $11 $11
	inc  d                                           ; $6213: $14
	ld   a, e                                        ; $6214: $7b
	rst  JumpTable                                         ; $6215: $df
	rst  $38                                         ; $6216: $ff
	rst  $38                                         ; $6217: $ff
	rst  $38                                         ; $6218: $ff
	rst  $38                                         ; $6219: $ff
	rst  $38                                         ; $621a: $ff
	rst  $38                                         ; $621b: $ff
	call z, $11b4                                    ; $621c: $cc $b4 $11
	ld   de, $1111                                   ; $621f: $11 $11 $11
	ld   de, $1511                                   ; $6222: $11 $11 $15
	sbc  l                                           ; $6225: $9d
	rst  $38                                         ; $6226: $ff
	rst  $38                                         ; $6227: $ff
	rst  $38                                         ; $6228: $ff
	rst  $38                                         ; $6229: $ff
	rst  $38                                         ; $622a: $ff
	rst  $38                                         ; $622b: $ff
	and  a                                           ; $622c: $a7
	ld   d, e                                        ; $622d: $53
	ld   de, $1111                                   ; $622e: $11 $11 $11
	ld   de, $1211                                   ; $6231: $11 $11 $12
	dec  [hl]                                        ; $6234: $35
	xor  d                                           ; $6235: $aa
	rst  $28                                         ; $6236: $ef
	rst  $38                                         ; $6237: $ff
	rst  $38                                         ; $6238: $ff
	rst  $38                                         ; $6239: $ff
	rst  $38                                         ; $623a: $ff
	rst  $38                                         ; $623b: $ff
	db   $eb                                         ; $623c: $eb
	ld   [hl], l                                     ; $623d: $75
	ld   b, c                                        ; $623e: $41
	ld   de, $1111                                   ; $623f: $11 $11 $11
	ld   de, $1511                                   ; $6242: $11 $11 $15
	ld   a, d                                        ; $6245: $7a
	sbc  $ff                                         ; $6246: $de $ff
	rst  $38                                         ; $6248: $ff
	rst  $38                                         ; $6249: $ff
	rst  $38                                         ; $624a: $ff
	rst  $38                                         ; $624b: $ff
	rst  $38                                         ; $624c: $ff
	reti                                             ; $624d: $d9


	ld   h, h                                        ; $624e: $64
	ld   hl, $1111                                   ; $624f: $21 $11 $11
	ld   de, $1111                                   ; $6252: $11 $11 $11
	ld   c, c                                        ; $6255: $49
	sbc  l                                           ; $6256: $9d
	rst  $38                                         ; $6257: $ff
	rst  $38                                         ; $6258: $ff
	rst  $38                                         ; $6259: $ff
	rst  $38                                         ; $625a: $ff
	rst  $38                                         ; $625b: $ff
	rst  $38                                         ; $625c: $ff
	cp   $b8                                         ; $625d: $fe $b8
	ld   d, h                                        ; $625f: $54
	ld   de, $1111                                   ; $6260: $11 $11 $11
	ld   de, $1411                                   ; $6263: $11 $11 $14
	ld   a, d                                        ; $6266: $7a
	rst  $28                                         ; $6267: $ef
	rst  $38                                         ; $6268: $ff
	rst  $38                                         ; $6269: $ff
	rst  $38                                         ; $626a: $ff
	rst  $38                                         ; $626b: $ff
	rst  $38                                         ; $626c: $ff
	rst  $38                                         ; $626d: $ff
	ld   [$3274], a                                  ; $626e: $ea $74 $32
	ld   de, $1111                                   ; $6271: $11 $11 $11
	ld   de, $5911                                   ; $6274: $11 $11 $59
	cp   [hl]                                        ; $6277: $be
	rst  $38                                         ; $6278: $ff
	rst  $38                                         ; $6279: $ff
	rst  $38                                         ; $627a: $ff
	rst  $38                                         ; $627b: $ff
	rst  $38                                         ; $627c: $ff
	rst  $38                                         ; $627d: $ff
	db   $ed                                         ; $627e: $ed
	and  a                                           ; $627f: $a7
	ld   b, d                                        ; $6280: $42
	ld   de, $1111                                   ; $6281: $11 $11 $11
	ld   de, $3511                                   ; $6284: $11 $11 $35
	sbc  d                                           ; $6287: $9a
	rst  $38                                         ; $6288: $ff
	rst  $38                                         ; $6289: $ff
	rst  $38                                         ; $628a: $ff
	rst  $38                                         ; $628b: $ff
	rst  $38                                         ; $628c: $ff
	rst  $38                                         ; $628d: $ff
	cp   $db                                         ; $628e: $fe $db
	ld   [hl], h                                     ; $6290: $74
	ld   hl, $1111                                   ; $6291: $21 $11 $11
	ld   de, $1311                                   ; $6294: $11 $11 $13
	ld   e, c                                        ; $6297: $59
	xor  a                                           ; $6298: $af
	rst  $38                                         ; $6299: $ff
	rst  $38                                         ; $629a: $ff
	rst  $38                                         ; $629b: $ff
	rst  $38                                         ; $629c: $ff
	rst  $38                                         ; $629d: $ff
	rst  $38                                         ; $629e: $ff
	cp   $c8                                         ; $629f: $fe $c8
	ld   b, d                                        ; $62a1: $42
	ld   de, $1111                                   ; $62a2: $11 $11 $11
	ld   de, $2611                                   ; $62a5: $11 $11 $26
	xor  e                                           ; $62a8: $ab
	rst  $28                                         ; $62a9: $ef
	rst  $38                                         ; $62aa: $ff
	rst  $38                                         ; $62ab: $ff
	rst  $38                                         ; $62ac: $ff
	rst  $38                                         ; $62ad: $ff
	rst  $38                                         ; $62ae: $ff
	cp   $cc                                         ; $62af: $fe $cc
	or   [hl]                                        ; $62b1: $b6
	ld   sp, $1111                                   ; $62b2: $31 $11 $11
	ld   de, $1111                                   ; $62b5: $11 $11 $11
	ld   l, d                                        ; $62b8: $6a
	cp   h                                           ; $62b9: $bc
	rst  $38                                         ; $62ba: $ff
	rst  $38                                         ; $62bb: $ff
	rst  $38                                         ; $62bc: $ff
	rst  $38                                         ; $62bd: $ff
	rst  $38                                         ; $62be: $ff
	rst  $38                                         ; $62bf: $ff
	db   $ec                                         ; $62c0: $ec
	cp   d                                           ; $62c1: $ba
	ld   [hl], e                                     ; $62c2: $73
	ld   de, $1111                                   ; $62c3: $11 $11 $11
	ld   de, $2711                                   ; $62c6: $11 $11 $27
	xor  h                                           ; $62c9: $ac
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62ca: $cf
	rst  $38                                         ; $62cb: $ff
	rst  $38                                         ; $62cc: $ff
	rst  $38                                         ; $62cd: $ff
	rst  $38                                         ; $62ce: $ff
	rst  $38                                         ; $62cf: $ff
	db   $fd                                         ; $62d0: $fd
	cp   d                                           ; $62d1: $ba
	cp   c                                           ; $62d2: $b9
	ld   b, c                                        ; $62d3: $41
	ld   de, $1111                                   ; $62d4: $11 $11 $11
	ld   de, $6c11                                   ; $62d7: $11 $11 $6c
	call c, $ffff                                    ; $62da: $dc $ff $ff
	rst  $38                                         ; $62dd: $ff
	rst  $38                                         ; $62de: $ff
	rst  $38                                         ; $62df: $ff
	rst  $38                                         ; $62e0: $ff
	db   $db                                         ; $62e1: $db
	xor  h                                           ; $62e2: $ac
	and  [hl]                                        ; $62e3: $a6
	ld   sp, $1111                                   ; $62e4: $31 $11 $11
	ld   de, $1511                                   ; $62e7: $11 $11 $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62ea: $cf
	rst  JumpTable                                         ; $62eb: $df
	rst  $38                                         ; $62ec: $ff
	rst  $38                                         ; $62ed: $ff
	rst  $38                                         ; $62ee: $ff
	rst  $38                                         ; $62ef: $ff
	rst  $38                                         ; $62f0: $ff
	cp   $c9                                         ; $62f1: $fe $c9
	cp   d                                           ; $62f3: $ba
	add  l                                           ; $62f4: $85
	ld   de, $1111                                   ; $62f5: $11 $11 $11
	ld   de, $4b11                                   ; $62f8: $11 $11 $4b
	rst  $38                                         ; $62fb: $ff
	rst  JumpTable                                         ; $62fc: $df
	rst  $38                                         ; $62fd: $ff
	rst  $38                                         ; $62fe: $ff
	rst  $38                                         ; $62ff: $ff
	rst  $38                                         ; $6300: $ff
	rst  $38                                         ; $6301: $ff
	ei                                               ; $6302: $fb
	xor  c                                           ; $6303: $a9
	xor  c                                           ; $6304: $a9
	ld   h, d                                        ; $6305: $62
	ld   de, $1111                                   ; $6306: $11 $11 $11
	ld   de, $af13                                   ; $6309: $11 $13 $af
	cp   $ff                                         ; $630c: $fe $ff
	rst  $38                                         ; $630e: $ff
	rst  $38                                         ; $630f: $ff
	rst  $38                                         ; $6310: $ff
	rst  $38                                         ; $6311: $ff
	rst  $38                                         ; $6312: $ff
	reti                                             ; $6313: $d9


	sbc  d                                           ; $6314: $9a
	adc  b                                           ; $6315: $88
	ld   b, c                                        ; $6316: $41
	ld   de, $1111                                   ; $6317: $11 $11 $11
	ld   de, $ff18                                   ; $631a: $11 $18 $ff
	rst  $38                                         ; $631d: $ff
	rst  $38                                         ; $631e: $ff
	rst  $38                                         ; $631f: $ff
	rst  $38                                         ; $6320: $ff
	rst  $38                                         ; $6321: $ff
	rst  $38                                         ; $6322: $ff
	rst  $38                                         ; $6323: $ff
	cp   b                                           ; $6324: $b8
	sub  a                                           ; $6325: $97
	add  [hl]                                        ; $6326: $86
	ld   de, $1111                                   ; $6327: $11 $11 $11
	ld   de, $5d11                                   ; $632a: $11 $11 $5d
	rst  $38                                         ; $632d: $ff
	rst  $38                                         ; $632e: $ff
	rst  $38                                         ; $632f: $ff
	rst  $38                                         ; $6330: $ff
	rst  $38                                         ; $6331: $ff
	rst  $38                                         ; $6332: $ff
	rst  $38                                         ; $6333: $ff
	call c, $8799                                    ; $6334: $dc $99 $87
	ld   d, c                                        ; $6337: $51
	ld   de, $1111                                   ; $6338: $11 $11 $11
	ld   de, $df16                                   ; $633b: $11 $16 $df
	rst  $38                                         ; $633e: $ff
	rst  $38                                         ; $633f: $ff
	rst  $38                                         ; $6340: $ff
	rst  $38                                         ; $6341: $ff
	rst  $38                                         ; $6342: $ff
	rst  $38                                         ; $6343: $ff
	rst  $38                                         ; $6344: $ff
	jp   z, $8688                                    ; $6345: $ca $88 $86

	ld   sp, $1111                                   ; $6348: $31 $11 $11
	ld   de, $5b11                                   ; $634b: $11 $11 $5b
	rst  $38                                         ; $634e: $ff
	rst  $38                                         ; $634f: $ff
	rst  $38                                         ; $6350: $ff
	rst  $38                                         ; $6351: $ff
	rst  $38                                         ; $6352: $ff
	rst  $38                                         ; $6353: $ff
	rst  $38                                         ; $6354: $ff
	db   $fc                                         ; $6355: $fc
	xor  c                                           ; $6356: $a9
	xor  b                                           ; $6357: $a8
	ld   h, e                                        ; $6358: $63
	ld   de, $1111                                   ; $6359: $11 $11 $11
	ld   de, $9f12                                   ; $635c: $11 $12 $9f
	rst  $38                                         ; $635f: $ff
	rst  $38                                         ; $6360: $ff
	rst  $38                                         ; $6361: $ff
	rst  $38                                         ; $6362: $ff
	rst  $38                                         ; $6363: $ff
	rst  $38                                         ; $6364: $ff
	rst  $38                                         ; $6365: $ff
	db   $db                                         ; $6366: $db
	xor  b                                           ; $6367: $a8
	halt                                             ; $6368: $76
	ld   b, c                                        ; $6369: $41
	ld   de, $1111                                   ; $636a: $11 $11 $11
	ld   de, $ef28                                   ; $636d: $11 $28 $ef
	rst  $38                                         ; $6370: $ff
	rst  $38                                         ; $6371: $ff
	rst  $38                                         ; $6372: $ff
	rst  $28                                         ; $6373: $ef
	rst  $38                                         ; $6374: $ff
	rst  $38                                         ; $6375: $ff
	db   $fd                                         ; $6376: $fd
	cp   d                                           ; $6377: $ba
	sbc  c                                           ; $6378: $99
	ld   [hl], h                                     ; $6379: $74
	ld   hl, $1111                                   ; $637a: $21 $11 $11
	ld   de, $7e11                                   ; $637d: $11 $11 $7e
	rst  $38                                         ; $6380: $ff
	rst  $38                                         ; $6381: $ff
	rst  $38                                         ; $6382: $ff
	rst  $38                                         ; $6383: $ff
	rst  $28                                         ; $6384: $ef
	rst  $38                                         ; $6385: $ff
	rst  $38                                         ; $6386: $ff
	ei                                               ; $6387: $fb
	xor  c                                           ; $6388: $a9
	xor  c                                           ; $6389: $a9
	ld   d, e                                        ; $638a: $53
	ld   de, $1111                                   ; $638b: $11 $11 $11
	ld   de, $af15                                   ; $638e: $11 $15 $af
	rst  $38                                         ; $6391: $ff
	rst  $38                                         ; $6392: $ff
	rst  $38                                         ; $6393: $ff
	cp   $ff                                         ; $6394: $fe $ff
	rst  $38                                         ; $6396: $ff
	rst  $38                                         ; $6397: $ff
	res  5, c                                        ; $6398: $cb $a9
	and  a                                           ; $639a: $a7
	ld   b, d                                        ; $639b: $42
	ld   de, $1111                                   ; $639c: $11 $11 $11
	ld   de, $ef28                                   ; $639f: $11 $28 $ef
	rst  $28                                         ; $63a2: $ef
	rst  $38                                         ; $63a3: $ff
	rst  $38                                         ; $63a4: $ff
	xor  $ff                                         ; $63a5: $ee $ff
	rst  $38                                         ; $63a7: $ff
	db   $fd                                         ; $63a8: $fd
	cp   d                                           ; $63a9: $ba
	sbc  c                                           ; $63aa: $99
	sub  l                                           ; $63ab: $95
	ld   sp, $1111                                   ; $63ac: $31 $11 $11
	ld   de, $5b11                                   ; $63af: $11 $11 $5b
	rst  $28                                         ; $63b2: $ef
	rst  $38                                         ; $63b3: $ff
	rst  $38                                         ; $63b4: $ff
	rst  $38                                         ; $63b5: $ff
	rst  $28                                         ; $63b6: $ef
	rst  $38                                         ; $63b7: $ff
	rst  $38                                         ; $63b8: $ff
	db   $ec                                         ; $63b9: $ec
	xor  c                                           ; $63ba: $a9
	sbc  c                                           ; $63bb: $99
	ld   h, h                                        ; $63bc: $64
	ld   hl, $1111                                   ; $63bd: $21 $11 $11
	ld   de, $ad14                                   ; $63c0: $11 $14 $ad
	xor  $ff                                         ; $63c3: $ee $ff
	rst  $38                                         ; $63c5: $ff
	cp   $ef                                         ; $63c6: $fe $ef
	rst  $38                                         ; $63c8: $ff
	rst  $38                                         ; $63c9: $ff
	res  3, c                                        ; $63ca: $cb $99
	sbc  b                                           ; $63cc: $98
	ld   d, d                                        ; $63cd: $52
	ld   de, $1111                                   ; $63ce: $11 $11 $11
	ld   de, $cf07                                   ; $63d1: $11 $07 $cf
	adc  $ff                                         ; $63d4: $ce $ff
	rst  $38                                         ; $63d6: $ff
	cp   $ff                                         ; $63d7: $fe $ff
	rst  $38                                         ; $63d9: $ff
	cp   $c9                                         ; $63da: $fe $c9
	xor  d                                           ; $63dc: $aa
	sub  [hl]                                        ; $63dd: $96
	ld   sp, $1111                                   ; $63de: $31 $11 $11
	ld   de, $5b11                                   ; $63e1: $11 $11 $5b
	db   $ec                                         ; $63e4: $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63e5: $cf
	rst  $38                                         ; $63e6: $ff
	rst  $38                                         ; $63e7: $ff
	cp   $ff                                         ; $63e8: $fe $ff
	rst  $38                                         ; $63ea: $ff
	ei                                               ; $63eb: $fb
	sbc  c                                           ; $63ec: $99
	cp   d                                           ; $63ed: $ba
	add  h                                           ; $63ee: $84
	ld   de, $1111                                   ; $63ef: $11 $11 $11
	ld   de, $7c11                                   ; $63f2: $11 $11 $7c
	call c, $ffef                                    ; $63f5: $dc $ef $ff
	rst  $38                                         ; $63f8: $ff
	rst  $28                                         ; $63f9: $ef
	rst  $38                                         ; $63fa: $ff
	rst  $38                                         ; $63fb: $ff
	call c, $b8ba                                    ; $63fc: $dc $ba $b8
	ld   d, e                                        ; $63ff: $53
	ld   de, $1111                                   ; $6400: $11 $11 $11
	ld   de, $7b15                                   ; $6403: $11 $15 $7b
	call $ffff                                       ; $6406: $cd $ff $ff
	db   $fd                                         ; $6409: $fd
	rst  $38                                         ; $640a: $ff
	rst  $38                                         ; $640b: $ff
	db   $fd                                         ; $640c: $fd
	call z, $96bb                                    ; $640d: $cc $bb $96
	ld   b, d                                        ; $6410: $42
	ld   [hl+], a                                    ; $6411: $22
	ld   de, $1111                                   ; $6412: $11 $11 $11
	ld   d, $8a                                      ; $6415: $16 $8a
	cp   [hl]                                        ; $6417: $be
	rst  $38                                         ; $6418: $ff
	rst  $38                                         ; $6419: $ff
	xor  $ff                                         ; $641a: $ee $ff
	rst  $38                                         ; $641c: $ff
	db   $fc                                         ; $641d: $fc
	call Call_0dd_64ba                               ; $641e: $cd $ba $64
	inc  sp                                          ; $6421: $33
	ld   sp, $1111                                   ; $6422: $31 $11 $11
	ld   de, $7945                                   ; $6425: $11 $45 $79
	rst  JumpTable                                         ; $6428: $df
	rst  $38                                         ; $6429: $ff
	cp   $ef                                         ; $642a: $fe $ef
	rst  $38                                         ; $642c: $ff
	rst  $38                                         ; $642d: $ff
	db   $dd                                         ; $642e: $dd
	xor  $a7                                         ; $642f: $ee $a7
	ld   d, h                                        ; $6431: $54
	ld   b, h                                        ; $6432: $44
	ld   hl, $1111                                   ; $6433: $21 $11 $11
	ld   de, $9c36                                   ; $6436: $11 $36 $9c
	rst  $28                                         ; $6439: $ef
	rst  $38                                         ; $643a: $ff
	rst  $38                                         ; $643b: $ff
	rst  $38                                         ; $643c: $ff
	rst  $38                                         ; $643d: $ff
	rst  $38                                         ; $643e: $ff
	xor  $db                                         ; $643f: $ee $db
	add  a                                           ; $6441: $87
	ld   h, h                                        ; $6442: $64
	inc  sp                                          ; $6443: $33
	ld   de, $1111                                   ; $6444: $11 $11 $11
	ld   de, $ac37                                   ; $6447: $11 $37 $ac
	rst  $38                                         ; $644a: $ff
	rst  $38                                         ; $644b: $ff
	rst  $38                                         ; $644c: $ff
	rst  $38                                         ; $644d: $ff
	rst  $38                                         ; $644e: $ff
	rst  $38                                         ; $644f: $ff
	rst  $28                                         ; $6450: $ef
	jp   z, Jump_0dd_6476                            ; $6451: $ca $76 $64

	ld   [hl-], a                                    ; $6454: $32
	ld   de, $1111                                   ; $6455: $11 $11 $11
	ld   de, $bc59                                   ; $6458: $11 $59 $bc
	rst  $38                                         ; $645b: $ff
	rst  $38                                         ; $645c: $ff
	rst  $38                                         ; $645d: $ff
	rst  $38                                         ; $645e: $ff
	rst  $38                                         ; $645f: $ff
	cp   $dd                                         ; $6460: $fe $dd
	jp   z, Jump_0dd_5476                            ; $6462: $ca $76 $54

	ld   sp, $1111                                   ; $6465: $31 $11 $11
	ld   de, $5812                                   ; $6468: $11 $12 $58
	cp   [hl]                                        ; $646b: $be
	rst  $38                                         ; $646c: $ff
	rst  $38                                         ; $646d: $ff
	rst  $38                                         ; $646e: $ff
	rst  $38                                         ; $646f: $ff
	rst  $38                                         ; $6470: $ff
	rst  $38                                         ; $6471: $ff
	db   $ed                                         ; $6472: $ed
	cp   b                                           ; $6473: $b8
	halt                                             ; $6474: $76
	ld   d, e                                        ; $6475: $53

Jump_0dd_6476:
	ld   hl, $1111                                   ; $6476: $21 $11 $11
	ld   de, $5813                                   ; $6479: $11 $13 $58
	cp   l                                           ; $647c: $bd
	rst  $38                                         ; $647d: $ff
	rst  $38                                         ; $647e: $ff
	rst  $38                                         ; $647f: $ff
	rst  $38                                         ; $6480: $ff
	rst  $38                                         ; $6481: $ff
	rst  $38                                         ; $6482: $ff
	db   $ed                                         ; $6483: $ed
	sub  a                                           ; $6484: $97
	halt                                             ; $6485: $76
	ld   b, d                                        ; $6486: $42
	ld   de, $1111                                   ; $6487: $11 $11 $11
	ld   de, $6813                                   ; $648a: $11 $13 $68
	xor  a                                           ; $648d: $af
	cp   $ff                                         ; $648e: $fe $ff
	rst  $38                                         ; $6490: $ff
	rst  $38                                         ; $6491: $ff
	rst  $38                                         ; $6492: $ff
	rst  $38                                         ; $6493: $ff
	db   $db                                         ; $6494: $db
	sbc  c                                           ; $6495: $99
	add  l                                           ; $6496: $85
	ld   [hl-], a                                    ; $6497: $32
	ld   de, $1111                                   ; $6498: $11 $11 $11

Jump_0dd_649b:
	ld   de, $6811                                   ; $649b: $11 $11 $68
	cp   [hl]                                        ; $649e: $be
	xor  $ff                                         ; $649f: $ee $ff
	rst  $38                                         ; $64a1: $ff
	rst  $38                                         ; $64a2: $ff
	rst  $38                                         ; $64a3: $ff
	rst  $38                                         ; $64a4: $ff
	db   $db                                         ; $64a5: $db
	sbc  b                                           ; $64a6: $98
	ld   h, h                                        ; $64a7: $64

Call_0dd_64a8:
	ld   [hl-], a                                    ; $64a8: $32
	ld   de, $1111                                   ; $64a9: $11 $11 $11
	ld   de, $7803                                   ; $64ac: $11 $03 $78
	xor  h                                           ; $64af: $ac
	sbc  $ff                                         ; $64b0: $de $ff
	rst  $38                                         ; $64b2: $ff
	rst  $38                                         ; $64b3: $ff
	rst  $38                                         ; $64b4: $ff
	rst  $38                                         ; $64b5: $ff
	db   $eb                                         ; $64b6: $eb
	sub  a                                           ; $64b7: $97
	ld   h, h                                        ; $64b8: $64
	ld   [hl-], a                                    ; $64b9: $32

Call_0dd_64ba:
	ld   de, $1111                                   ; $64ba: $11 $11 $11
	ld   de, $5713                                   ; $64bd: $11 $13 $57
	xor  h                                           ; $64c0: $ac
	sbc  $ff                                         ; $64c1: $de $ff
	rst  $38                                         ; $64c3: $ff
	rst  $38                                         ; $64c4: $ff
	rst  $38                                         ; $64c5: $ff
	rst  $38                                         ; $64c6: $ff
	db   $ec                                         ; $64c7: $ec
	xor  b                                           ; $64c8: $a8

Call_0dd_64c9:
	ld   h, h                                        ; $64c9: $64
	ld   hl, $1111                                   ; $64ca: $21 $11 $11
	ld   de, $1311                                   ; $64cd: $11 $11 $13
	ld   d, a                                        ; $64d0: $57
	sbc  d                                           ; $64d1: $9a
	sbc  $ff                                         ; $64d2: $de $ff
	rst  $38                                         ; $64d4: $ff
	rst  $38                                         ; $64d5: $ff
	rst  $38                                         ; $64d6: $ff
	rst  $38                                         ; $64d7: $ff
	db   $db                                         ; $64d8: $db
	sub  a                                           ; $64d9: $97
	ld   d, e                                        ; $64da: $53
	ld   [hl+], a                                    ; $64db: $22
	ld   de, $1111                                   ; $64dc: $11 $11 $11
	ld   de, $4624                                   ; $64df: $11 $24 $46
	ld   a, b                                        ; $64e2: $78
	sbc  e                                           ; $64e3: $9b
	adc  $ff                                         ; $64e4: $ce $ff
	rst  $38                                         ; $64e6: $ff
	rst  $38                                         ; $64e7: $ff
	rst  $38                                         ; $64e8: $ff
	db   $ed                                         ; $64e9: $ed
	res  7, d                                        ; $64ea: $cb $ba
	adc  b                                           ; $64ec: $88
	halt                                             ; $64ed: $76
	ld   d, h                                        ; $64ee: $54
	ld   [hl-], a                                    ; $64ef: $32
	ld   de, $1111                                   ; $64f0: $11 $11 $11
	ld   de, $4613                                   ; $64f3: $11 $13 $46
	sbc  e                                           ; $64f6: $9b
	rst  JumpTable                                         ; $64f7: $df
	rst  $38                                         ; $64f8: $ff
	rst  $38                                         ; $64f9: $ff
	rst  $38                                         ; $64fa: $ff
	rst  $38                                         ; $64fb: $ff
	rst  $38                                         ; $64fc: $ff
	res  3, c                                        ; $64fd: $cb $99
	ld   [hl], l                                     ; $64ff: $75
	ld   b, d                                        ; $6500: $42
	ld   bc, $1111                                   ; $6501: $01 $11 $11
	ld   de, $1211                                   ; $6504: $11 $11 $12
	ld   b, a                                        ; $6507: $47
	xor  e                                           ; $6508: $ab
	rst  JumpTable                                         ; $6509: $df
	rst  $38                                         ; $650a: $ff
	rst  $38                                         ; $650b: $ff
	rst  $38                                         ; $650c: $ff
	rst  $38                                         ; $650d: $ff
	cp   $ca                                         ; $650e: $fe $ca
	xor  b                                           ; $6510: $a8
	ld   h, l                                        ; $6511: $65
	ld   sp, $1111                                   ; $6512: $31 $11 $11
	ld   de, $1111                                   ; $6515: $11 $11 $11
	inc  de                                          ; $6518: $13
	ld   b, a                                        ; $6519: $47
	sbc  e                                           ; $651a: $9b
	rst  JumpTable                                         ; $651b: $df
	rst  $38                                         ; $651c: $ff
	rst  $38                                         ; $651d: $ff
	rst  $38                                         ; $651e: $ff
	rst  $38                                         ; $651f: $ff
	cp   $cb                                         ; $6520: $fe $cb
	sbc  b                                           ; $6522: $98
	ld   h, l                                        ; $6523: $65
	ld   [hl-], a                                    ; $6524: $32
	ld   de, $1111                                   ; $6525: $11 $11 $11
	ld   de, $1211                                   ; $6528: $11 $11 $12
	ld   b, [hl]                                     ; $652b: $46
	adc  e                                           ; $652c: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $652d: $cf
	rst  $38                                         ; $652e: $ff
	rst  $38                                         ; $652f: $ff
	rst  $38                                         ; $6530: $ff
	rst  $38                                         ; $6531: $ff
	rst  $38                                         ; $6532: $ff
	db   $eb                                         ; $6533: $eb
	xor  c                                           ; $6534: $a9
	ld   [hl], l                                     ; $6535: $75
	ld   b, d                                        ; $6536: $42
	ld   de, $1111                                   ; $6537: $11 $11 $11
	ld   de, $1111                                   ; $653a: $11 $11 $11
	dec  [hl]                                        ; $653d: $35
	adc  e                                           ; $653e: $8b
	sbc  $ff                                         ; $653f: $de $ff
	rst  $38                                         ; $6541: $ff
	rst  $38                                         ; $6542: $ff
	rst  $38                                         ; $6543: $ff
	rst  $38                                         ; $6544: $ff
	db   $ec                                         ; $6545: $ec
	xor  c                                           ; $6546: $a9
	halt                                             ; $6547: $76
	ld   b, d                                        ; $6548: $42
	ld   de, $1111                                   ; $6549: $11 $11 $11
	ld   de, $1111                                   ; $654c: $11 $11 $11
	inc  h                                           ; $654f: $24
	ld   a, c                                        ; $6550: $79
	cp   l                                           ; $6551: $bd
	rst  $38                                         ; $6552: $ff
	rst  $38                                         ; $6553: $ff
	rst  $38                                         ; $6554: $ff
	rst  $38                                         ; $6555: $ff
	rst  $38                                         ; $6556: $ff
	db   $fd                                         ; $6557: $fd
	jp   z, $5397                                    ; $6558: $ca $97 $53

	ld   hl, $1111                                   ; $655b: $21 $11 $11
	ld   de, $1111                                   ; $655e: $11 $11 $11
	inc  h                                           ; $6561: $24
	ld   l, b                                        ; $6562: $68
	xor  l                                           ; $6563: $ad
	rst  $38                                         ; $6564: $ff
	rst  $38                                         ; $6565: $ff
	rst  $38                                         ; $6566: $ff
	rst  $38                                         ; $6567: $ff
	rst  $38                                         ; $6568: $ff
	db   $fd                                         ; $6569: $fd
	res  0, a                                        ; $656a: $cb $87
	ld   d, h                                        ; $656c: $54
	ld   hl, $1111                                   ; $656d: $21 $11 $11
	ld   de, $1111                                   ; $6570: $11 $11 $11
	inc  de                                          ; $6573: $13
	ld   e, b                                        ; $6574: $58
	xor  h                                           ; $6575: $ac
	rst  $38                                         ; $6576: $ff
	rst  $38                                         ; $6577: $ff
	rst  $38                                         ; $6578: $ff
	rst  $38                                         ; $6579: $ff
	rst  $38                                         ; $657a: $ff
	cp   $da                                         ; $657b: $fe $da
	sub  a                                           ; $657d: $97
	ld   h, h                                        ; $657e: $64
	ld   hl, $1111                                   ; $657f: $21 $11 $11
	ld   de, $1111                                   ; $6582: $11 $11 $11
	inc  de                                          ; $6585: $13
	ld   d, a                                        ; $6586: $57
	xor  h                                           ; $6587: $ac
	rst  $38                                         ; $6588: $ff
	rst  $38                                         ; $6589: $ff
	rst  $38                                         ; $658a: $ff
	rst  $38                                         ; $658b: $ff
	rst  $38                                         ; $658c: $ff
	rst  $38                                         ; $658d: $ff
	db   $db                                         ; $658e: $db
	xor  b                                           ; $658f: $a8
	ld   h, l                                        ; $6590: $65
	ld   sp, $1111                                   ; $6591: $31 $11 $11
	ld   de, $1111                                   ; $6594: $11 $11 $11
	ld   [de], a                                     ; $6597: $12
	ld   b, [hl]                                     ; $6598: $46
	sbc  e                                           ; $6599: $9b
	rst  $28                                         ; $659a: $ef
	rst  $38                                         ; $659b: $ff
	rst  $38                                         ; $659c: $ff
	rst  $38                                         ; $659d: $ff
	rst  $38                                         ; $659e: $ff
	rst  $38                                         ; $659f: $ff
	call c, Call_0dd_65a9                            ; $65a0: $dc $a9 $65
	ld   sp, $1111                                   ; $65a3: $31 $11 $11
	ld   de, $1111                                   ; $65a6: $11 $11 $11

Call_0dd_65a9:
	ld   [de], a                                     ; $65a9: $12
	ld   b, [hl]                                     ; $65aa: $46
	sbc  h                                           ; $65ab: $9c
	rst  JumpTable                                         ; $65ac: $df
	rst  $38                                         ; $65ad: $ff
	rst  $38                                         ; $65ae: $ff
	rst  $38                                         ; $65af: $ff
	rst  $38                                         ; $65b0: $ff
	rst  $38                                         ; $65b1: $ff
	db   $eb                                         ; $65b2: $eb
	xor  b                                           ; $65b3: $a8
	ld   h, l                                        ; $65b4: $65
	ld   sp, $1111                                   ; $65b5: $31 $11 $11
	ld   de, $1111                                   ; $65b8: $11 $11 $11
	ld   de, $8b35                                   ; $65bb: $11 $35 $8b
	rst  JumpTable                                         ; $65be: $df
	rst  $38                                         ; $65bf: $ff
	rst  $38                                         ; $65c0: $ff
	rst  $38                                         ; $65c1: $ff
	rst  $38                                         ; $65c2: $ff
	rst  $38                                         ; $65c3: $ff
	db   $ed                                         ; $65c4: $ed
	cp   c                                           ; $65c5: $b9
	ld   [hl], l                                     ; $65c6: $75
	ld   b, d                                        ; $65c7: $42
	ld   de, $1111                                   ; $65c8: $11 $11 $11
	ld   de, $1111                                   ; $65cb: $11 $11 $11
	dec  [hl]                                        ; $65ce: $35
	adc  e                                           ; $65cf: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65d0: $cf
	rst  $38                                         ; $65d1: $ff
	rst  $38                                         ; $65d2: $ff
	rst  $38                                         ; $65d3: $ff
	rst  $38                                         ; $65d4: $ff
	rst  $38                                         ; $65d5: $ff
	db   $fc                                         ; $65d6: $fc
	xor  c                                           ; $65d7: $a9
	ld   [hl], l                                     ; $65d8: $75
	ld   b, d                                        ; $65d9: $42
	ld   de, $1111                                   ; $65da: $11 $11 $11
	ld   de, $1111                                   ; $65dd: $11 $11 $11
	dec  h                                           ; $65e0: $25
	ld   a, d                                        ; $65e1: $7a
	sbc  $ff                                         ; $65e2: $de $ff
	rst  $38                                         ; $65e4: $ff
	rst  $38                                         ; $65e5: $ff
	rst  $38                                         ; $65e6: $ff
	rst  $38                                         ; $65e7: $ff
	db   $fd                                         ; $65e8: $fd
	cp   d                                           ; $65e9: $ba
	add  [hl]                                        ; $65ea: $86
	ld   b, d                                        ; $65eb: $42
	ld   bc, $1111                                   ; $65ec: $01 $11 $11
	ld   de, $1111                                   ; $65ef: $11 $11 $11
	inc  h                                           ; $65f2: $24
	ld   l, c                                        ; $65f3: $69
	cp   [hl]                                        ; $65f4: $be
	rst  $38                                         ; $65f5: $ff
	rst  $38                                         ; $65f6: $ff
	rst  $38                                         ; $65f7: $ff
	rst  $38                                         ; $65f8: $ff
	rst  $38                                         ; $65f9: $ff
	cp   $ba                                         ; $65fa: $fe $ba
	sub  a                                           ; $65fc: $97
	ld   d, e                                        ; $65fd: $53
	ld   de, $1111                                   ; $65fe: $11 $11 $11
	ld   de, $1111                                   ; $6601: $11 $11 $11
	inc  de                                          ; $6604: $13
	ld   l, c                                        ; $6605: $69
	cp   [hl]                                        ; $6606: $be
	rst  $38                                         ; $6607: $ff
	rst  $38                                         ; $6608: $ff
	rst  $38                                         ; $6609: $ff
	rst  $38                                         ; $660a: $ff
	rst  $38                                         ; $660b: $ff
	cp   $db                                         ; $660c: $fe $db
	sub  a                                           ; $660e: $97
	ld   d, h                                        ; $660f: $54
	ld   hl, $1111                                   ; $6610: $21 $11 $11
	ld   de, $1111                                   ; $6613: $11 $11 $11
	inc  de                                          ; $6616: $13
	ld   d, a                                        ; $6617: $57
	sbc  l                                           ; $6618: $9d
	rst  $28                                         ; $6619: $ef
	rst  $38                                         ; $661a: $ff
	rst  $38                                         ; $661b: $ff
	rst  $38                                         ; $661c: $ff
	rst  $38                                         ; $661d: $ff
	rst  $38                                         ; $661e: $ff
	db   $db                                         ; $661f: $db
	xor  b                                           ; $6620: $a8
	ld   h, h                                        ; $6621: $64
	ld   sp, $1111                                   ; $6622: $31 $11 $11
	ld   de, $1111                                   ; $6625: $11 $11 $11
	ld   [de], a                                     ; $6628: $12
	ld   d, a                                        ; $6629: $57
	sbc  h                                           ; $662a: $9c
	rst  $38                                         ; $662b: $ff
	rst  $38                                         ; $662c: $ff
	rst  $38                                         ; $662d: $ff
	rst  $38                                         ; $662e: $ff
	rst  $38                                         ; $662f: $ff
	rst  $38                                         ; $6630: $ff
	db   $db                                         ; $6631: $db
	sub  a                                           ; $6632: $97
	ld   h, h                                        ; $6633: $64
	ld   hl, $1111                                   ; $6634: $21 $11 $11
	ld   de, $1111                                   ; $6637: $11 $11 $11
	ld   [de], a                                     ; $663a: $12
	ld   d, a                                        ; $663b: $57
	xor  l                                           ; $663c: $ad
	rst  $38                                         ; $663d: $ff
	rst  $38                                         ; $663e: $ff
	rst  $38                                         ; $663f: $ff
	rst  $38                                         ; $6640: $ff
	rst  $38                                         ; $6641: $ff
	db   $fd                                         ; $6642: $fd
	cp   c                                           ; $6643: $b9
	halt                                             ; $6644: $76
	ld   d, e                                        ; $6645: $53
	ld   hl, $1111                                   ; $6646: $21 $11 $11
	ld   de, $1111                                   ; $6649: $11 $11 $11
	inc  de                                          ; $664c: $13
	ld   d, a                                        ; $664d: $57
	sbc  l                                           ; $664e: $9d
	rst  $38                                         ; $664f: $ff
	rst  $38                                         ; $6650: $ff
	rst  $38                                         ; $6651: $ff
	rst  $38                                         ; $6652: $ff
	rst  $38                                         ; $6653: $ff
	cp   $ca                                         ; $6654: $fe $ca
	halt                                             ; $6656: $76
	ld   d, e                                        ; $6657: $53
	ld   hl, $1111                                   ; $6658: $21 $11 $11
	ld   de, $1111                                   ; $665b: $11 $11 $11
	inc  de                                          ; $665e: $13
	ld   d, a                                        ; $665f: $57
	sbc  h                                           ; $6660: $9c
	rst  $28                                         ; $6661: $ef
	rst  $38                                         ; $6662: $ff
	rst  $38                                         ; $6663: $ff
	rst  $38                                         ; $6664: $ff
	rst  $38                                         ; $6665: $ff
	db   $fd                                         ; $6666: $fd
	ret                                              ; $6667: $c9


	halt                                             ; $6668: $76
	ld   d, e                                        ; $6669: $53
	ld   de, $1111                                   ; $666a: $11 $11 $11
	ld   de, $1111                                   ; $666d: $11 $11 $11
	inc  d                                           ; $6670: $14
	ld   d, a                                        ; $6671: $57
	sbc  l                                           ; $6672: $9d
	rst  $38                                         ; $6673: $ff
	rst  $38                                         ; $6674: $ff
	rst  $38                                         ; $6675: $ff
	rst  $38                                         ; $6676: $ff
	rst  $38                                         ; $6677: $ff
	cp   $c9                                         ; $6678: $fe $c9
	halt                                             ; $667a: $76
	ld   d, e                                        ; $667b: $53
	ld   de, $1111                                   ; $667c: $11 $11 $11
	ld   de, $1111                                   ; $667f: $11 $11 $11
	inc  d                                           ; $6682: $14
	ld   h, a                                        ; $6683: $67
	xor  l                                           ; $6684: $ad
	rst  $38                                         ; $6685: $ff
	rst  $38                                         ; $6686: $ff
	rst  $38                                         ; $6687: $ff
	rst  $38                                         ; $6688: $ff
	rst  $38                                         ; $6689: $ff
	db   $fd                                         ; $668a: $fd
	cp   c                                           ; $668b: $b9
	halt                                             ; $668c: $76
	ld   d, e                                        ; $668d: $53
	ld   hl, $1111                                   ; $668e: $21 $11 $11
	ld   de, $1111                                   ; $6691: $11 $11 $11
	inc  d                                           ; $6694: $14
	ld   d, a                                        ; $6695: $57
	xor  h                                           ; $6696: $ac
	rst  $28                                         ; $6697: $ef
	rst  $38                                         ; $6698: $ff
	rst  $38                                         ; $6699: $ff
	rst  $38                                         ; $669a: $ff
	rst  $38                                         ; $669b: $ff
	cp   $ba                                         ; $669c: $fe $ba
	ld   [hl], l                                     ; $669e: $75
	ld   d, h                                        ; $669f: $54
	ld   de, $1111                                   ; $66a0: $11 $11 $11
	ld   de, $1111                                   ; $66a3: $11 $11 $11
	inc  h                                           ; $66a6: $24
	ld   l, b                                        ; $66a7: $68

Call_0dd_66a8:
	xor  l                                           ; $66a8: $ad
	rst  $38                                         ; $66a9: $ff
	rst  $38                                         ; $66aa: $ff
	rst  $38                                         ; $66ab: $ff
	rst  $38                                         ; $66ac: $ff
	rst  $38                                         ; $66ad: $ff
	db   $fd                                         ; $66ae: $fd
	cp   c                                           ; $66af: $b9
	ld   [hl], l                                     ; $66b0: $75
	ld   b, e                                        ; $66b1: $43
	ld   hl, $1111                                   ; $66b2: $21 $11 $11
	ld   de, $1111                                   ; $66b5: $11 $11 $11
	inc  [hl]                                        ; $66b8: $34
	ld   l, c                                        ; $66b9: $69
	cp   l                                           ; $66ba: $bd
	rst  $38                                         ; $66bb: $ff
	rst  $38                                         ; $66bc: $ff
	rst  $38                                         ; $66bd: $ff
	rst  $38                                         ; $66be: $ff
	rst  $38                                         ; $66bf: $ff
	db   $fd                                         ; $66c0: $fd
	xor  c                                           ; $66c1: $a9
	ld   [hl], l                                     ; $66c2: $75
	ld   b, e                                        ; $66c3: $43
	ld   de, $1111                                   ; $66c4: $11 $11 $11
	ld   de, $1111                                   ; $66c7: $11 $11 $11
	ld   b, l                                        ; $66ca: $45
	ld   l, c                                        ; $66cb: $69
	adc  $ff                                         ; $66cc: $ce $ff
	rst  $38                                         ; $66ce: $ff
	rst  $38                                         ; $66cf: $ff
	rst  $38                                         ; $66d0: $ff
	rst  $38                                         ; $66d1: $ff
	db   $fc                                         ; $66d2: $fc
	xor  b                                           ; $66d3: $a8
	ld   [hl], l                                     ; $66d4: $75
	ld   b, d                                        ; $66d5: $42
	ld   de, $1111                                   ; $66d6: $11 $11 $11
	ld   de, $1211                                   ; $66d9: $11 $11 $12
	ld   b, l                                        ; $66dc: $45
	ld   a, d                                        ; $66dd: $7a
	sbc  $ff                                         ; $66de: $de $ff
	rst  $38                                         ; $66e0: $ff
	rst  $38                                         ; $66e1: $ff
	rst  $38                                         ; $66e2: $ff
	rst  $38                                         ; $66e3: $ff
	db   $ed                                         ; $66e4: $ed
	xor  b                                           ; $66e5: $a8
	ld   h, l                                        ; $66e6: $65
	ld   [hl-], a                                    ; $66e7: $32
	ld   de, $1111                                   ; $66e8: $11 $11 $11
	ld   de, $1211                                   ; $66eb: $11 $11 $12
	ld   d, l                                        ; $66ee: $55
	adc  e                                           ; $66ef: $8b
	rst  $28                                         ; $66f0: $ef
	rst  $38                                         ; $66f1: $ff
	rst  $38                                         ; $66f2: $ff
	rst  $38                                         ; $66f3: $ff
	rst  $38                                         ; $66f4: $ff
	rst  $38                                         ; $66f5: $ff
	db   $ec                                         ; $66f6: $ec
	and  a                                           ; $66f7: $a7
	ld   d, h                                        ; $66f8: $54
	ld   hl, $1111                                   ; $66f9: $21 $11 $11
	ld   de, $1111                                   ; $66fc: $11 $11 $11
	inc  de                                          ; $66ff: $13
	ld   d, a                                        ; $6700: $57
	sbc  h                                           ; $6701: $9c
	rst  $38                                         ; $6702: $ff
	rst  $38                                         ; $6703: $ff
	rst  $38                                         ; $6704: $ff
	rst  $38                                         ; $6705: $ff
	rst  $38                                         ; $6706: $ff
	rst  $38                                         ; $6707: $ff
	db   $db                                         ; $6708: $db
	add  [hl]                                        ; $6709: $86
	ld   b, e                                        ; $670a: $43
	ld   hl, $1111                                   ; $670b: $21 $11 $11
	ld   de, $1111                                   ; $670e: $11 $11 $11
	inc  d                                           ; $6711: $14
	ld   l, b                                        ; $6712: $68
	xor  l                                           ; $6713: $ad
	rst  $38                                         ; $6714: $ff
	rst  $38                                         ; $6715: $ff
	rst  $38                                         ; $6716: $ff
	rst  $38                                         ; $6717: $ff
	rst  $38                                         ; $6718: $ff
	rst  $38                                         ; $6719: $ff
	cp   c                                           ; $671a: $b9
	ld   [hl], l                                     ; $671b: $75
	ld   [hl-], a                                    ; $671c: $32
	ld   de, $1111                                   ; $671d: $11 $11 $11
	ld   de, $1111                                   ; $6720: $11 $11 $11
	dec  [hl]                                        ; $6723: $35
	ld   a, e                                        ; $6724: $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6725: $cf
	rst  $38                                         ; $6726: $ff
	rst  $38                                         ; $6727: $ff
	rst  $38                                         ; $6728: $ff
	rst  $38                                         ; $6729: $ff
	rst  $38                                         ; $672a: $ff
	db   $fc                                         ; $672b: $fc
	cp   b                                           ; $672c: $b8
	ld   d, h                                        ; $672d: $54
	ld   sp, $1111                                   ; $672e: $31 $11 $11
	ld   de, $1111                                   ; $6731: $11 $11 $11
	ld   de, $9b57                                   ; $6734: $11 $57 $9b
	rst  $38                                         ; $6737: $ff
	rst  $38                                         ; $6738: $ff
	rst  $38                                         ; $6739: $ff
	rst  $38                                         ; $673a: $ff
	rst  $38                                         ; $673b: $ff
	rst  $38                                         ; $673c: $ff
	db   $ec                                         ; $673d: $ec
	add  [hl]                                        ; $673e: $86
	ld   d, e                                        ; $673f: $53
	ld   de, $1111                                   ; $6740: $11 $11 $11
	ld   de, $1111                                   ; $6743: $11 $11 $11
	ld   d, $68                                      ; $6746: $16 $68
	adc  $ff                                         ; $6748: $ce $ff
	rst  $38                                         ; $674a: $ff
	rst  $38                                         ; $674b: $ff
	rst  $38                                         ; $674c: $ff
	rst  $38                                         ; $674d: $ff
	db   $fd                                         ; $674e: $fd
	cp   c                                           ; $674f: $b9
	ld   h, l                                        ; $6750: $65
	ld   hl, $1111                                   ; $6751: $21 $11 $11
	ld   de, $1111                                   ; $6754: $11 $11 $11
	ld   de, $8b57                                   ; $6757: $11 $57 $8b
	rst  $28                                         ; $675a: $ef
	rst  $38                                         ; $675b: $ff
	rst  $38                                         ; $675c: $ff
	rst  $38                                         ; $675d: $ff
	rst  $38                                         ; $675e: $ff
	rst  $38                                         ; $675f: $ff
	db   $ec                                         ; $6760: $ec
	add  a                                           ; $6761: $87
	ld   d, e                                        ; $6762: $53
	ld   de, $1111                                   ; $6763: $11 $11 $11
	ld   de, $1111                                   ; $6766: $11 $11 $11
	inc  d                                           ; $6769: $14
	ld   a, b                                        ; $676a: $78
	cp   [hl]                                        ; $676b: $be
	rst  $38                                         ; $676c: $ff
	rst  $38                                         ; $676d: $ff
	rst  $38                                         ; $676e: $ff
	rst  $38                                         ; $676f: $ff
	rst  $38                                         ; $6770: $ff
	rst  $38                                         ; $6771: $ff
	ret                                              ; $6772: $c9


	ld   h, l                                        ; $6773: $65
	ld   sp, $1111                                   ; $6774: $31 $11 $11

Jump_0dd_6777:
	ld   de, $1111                                   ; $6777: $11 $11 $11
	ld   de, $8c56                                   ; $677a: $11 $56 $8c
	rst  $28                                         ; $677d: $ef
	rst  $38                                         ; $677e: $ff
	rst  $38                                         ; $677f: $ff
	rst  $38                                         ; $6780: $ff
	rst  $38                                         ; $6781: $ff
	rst  $38                                         ; $6782: $ff
	ei                                               ; $6783: $fb
	sub  a                                           ; $6784: $97
	ld   d, e                                        ; $6785: $53
	ld   de, $1111                                   ; $6786: $11 $11 $11
	ld   de, $1111                                   ; $6789: $11 $11 $11
	dec  d                                           ; $678c: $15
	ld   [hl], a                                     ; $678d: $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $678e: $cf
	rst  $38                                         ; $678f: $ff
	rst  $38                                         ; $6790: $ff
	rst  $38                                         ; $6791: $ff
	rst  $38                                         ; $6792: $ff
	rst  $38                                         ; $6793: $ff
	cp   $b9                                         ; $6794: $fe $b9
	ld   [hl], h                                     ; $6796: $74
	ld   sp, $1111                                   ; $6797: $31 $11 $11
	ld   de, $1111                                   ; $679a: $11 $11 $11
	ld   bc, $8b47                                   ; $679d: $01 $47 $8b
	rst  $38                                         ; $67a0: $ff
	rst  $38                                         ; $67a1: $ff
	rst  $38                                         ; $67a2: $ff
	rst  $38                                         ; $67a3: $ff
	rst  $38                                         ; $67a4: $ff
	rst  $38                                         ; $67a5: $ff
	db   $eb                                         ; $67a6: $eb
	add  a                                           ; $67a7: $87
	ld   d, e                                        ; $67a8: $53
	ld   de, $1111                                   ; $67a9: $11 $11 $11
	ld   de, $1111                                   ; $67ac: $11 $11 $11
	inc  d                                           ; $67af: $14
	ld   a, b                                        ; $67b0: $78
	xor  a                                           ; $67b1: $af
	rst  $38                                         ; $67b2: $ff
	rst  $38                                         ; $67b3: $ff
	rst  $38                                         ; $67b4: $ff
	rst  $38                                         ; $67b5: $ff
	rst  $38                                         ; $67b6: $ff
	rst  $38                                         ; $67b7: $ff
	ret  z                                           ; $67b8: $c8

	ld   h, l                                        ; $67b9: $65
	ld   hl, $1111                                   ; $67ba: $21 $11 $11
	ld   de, $1111                                   ; $67bd: $11 $11 $11
	ld   de, $9c57                                   ; $67c0: $11 $57 $9c
	rst  $28                                         ; $67c3: $ef
	rst  $38                                         ; $67c4: $ff
	rst  $38                                         ; $67c5: $ff
	rst  $38                                         ; $67c6: $ff
	rst  $38                                         ; $67c7: $ff
	rst  $38                                         ; $67c8: $ff
	db   $db                                         ; $67c9: $db
	add  [hl]                                        ; $67ca: $86
	ld   d, d                                        ; $67cb: $52
	ld   de, $1111                                   ; $67cc: $11 $11 $11
	ld   de, $0111                                   ; $67cf: $11 $11 $01
	dec  d                                           ; $67d2: $15
	ld   a, c                                        ; $67d3: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67d4: $cf
	rst  $38                                         ; $67d5: $ff
	rst  $38                                         ; $67d6: $ff
	rst  $38                                         ; $67d7: $ff
	rst  $38                                         ; $67d8: $ff
	rst  $38                                         ; $67d9: $ff
	cp   $b8                                         ; $67da: $fe $b8
	ld   h, l                                        ; $67dc: $65
	ld   hl, $1111                                   ; $67dd: $21 $11 $11
	ld   de, $1111                                   ; $67e0: $11 $11 $11
	ld   de, $9b67                                   ; $67e3: $11 $67 $9b
	rst  $38                                         ; $67e6: $ff
	rst  $38                                         ; $67e7: $ff
	rst  $38                                         ; $67e8: $ff
	rst  $38                                         ; $67e9: $ff
	rst  $38                                         ; $67ea: $ff
	rst  $38                                         ; $67eb: $ff
	ld   [$4276], a                                  ; $67ec: $ea $76 $42
	ld   bc, $1111                                   ; $67ef: $01 $11 $11
	ld   de, $1111                                   ; $67f2: $11 $11 $11
	ld   h, $69                                      ; $67f5: $26 $69
	adc  $ff                                         ; $67f7: $ce $ff
	rst  $38                                         ; $67f9: $ff
	rst  $38                                         ; $67fa: $ff
	rst  $38                                         ; $67fb: $ff
	rst  $38                                         ; $67fc: $ff
	db   $fd                                         ; $67fd: $fd
	and  a                                           ; $67fe: $a7
	ld   h, h                                        ; $67ff: $64
	ld   hl, $1111                                   ; $6800: $21 $11 $11
	ld   de, $1211                                   ; $6803: $11 $11 $12
	ld   [bc], a                                     ; $6806: $02
	ld   h, a                                        ; $6807: $67
	sbc  h                                           ; $6808: $9c
	rst  $38                                         ; $6809: $ff
	rst  $38                                         ; $680a: $ff
	rst  $38                                         ; $680b: $ff
	rst  $38                                         ; $680c: $ff
	rst  $38                                         ; $680d: $ff
	cp   $da                                         ; $680e: $fe $da
	halt                                             ; $6810: $76
	ld   b, d                                        ; $6811: $42
	ld   de, $1111                                   ; $6812: $11 $11 $11
	ld   de, $2111                                   ; $6815: $11 $11 $21
	daa                                              ; $6818: $27
	ld   a, d                                        ; $6819: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $681a: $cf
	rst  $38                                         ; $681b: $ff
	rst  $38                                         ; $681c: $ff
	rst  $38                                         ; $681d: $ff
	rst  $38                                         ; $681e: $ff
	rst  $38                                         ; $681f: $ff
	db   $fc                                         ; $6820: $fc
	and  a                                           ; $6821: $a7
	ld   h, h                                        ; $6822: $64
	ld   de, $1111                                   ; $6823: $11 $11 $11
	ld   de, $1311                                   ; $6826: $11 $11 $13
	ld   [de], a                                     ; $6829: $12
	ld   a, b                                        ; $682a: $78
	sbc  h                                           ; $682b: $9c
	rst  $38                                         ; $682c: $ff
	rst  $38                                         ; $682d: $ff
	rst  $38                                         ; $682e: $ff
	rst  $38                                         ; $682f: $ff
	rst  $38                                         ; $6830: $ff
	cp   $b9                                         ; $6831: $fe $b9
	ld   [hl], l                                     ; $6833: $75
	ld   b, c                                        ; $6834: $41
	ld   de, $1111                                   ; $6835: $11 $11 $11
	ld   de, $2111                                   ; $6838: $11 $11 $21
	ld   d, a                                        ; $683b: $57
	adc  h                                           ; $683c: $8c
	rst  $28                                         ; $683d: $ef
	rst  $38                                         ; $683e: $ff
	rst  $38                                         ; $683f: $ff
	rst  $38                                         ; $6840: $ff
	rst  $38                                         ; $6841: $ff
	rst  $38                                         ; $6842: $ff
	ld   [$5387], a                                  ; $6843: $ea $87 $53
	ld   hl, $1111                                   ; $6846: $21 $11 $11
	ld   de, $1211                                   ; $6849: $11 $11 $12
	dec  d                                           ; $684c: $15
	ld   a, b                                        ; $684d: $78
	cp   [hl]                                        ; $684e: $be
	rst  $38                                         ; $684f: $ff
	rst  $38                                         ; $6850: $ff
	rst  $38                                         ; $6851: $ff
	rst  $38                                         ; $6852: $ff
	rst  $38                                         ; $6853: $ff
	cp   $b8                                         ; $6854: $fe $b8
	ld   h, l                                        ; $6856: $65
	ld   sp, $1111                                   ; $6857: $31 $11 $11
	ld   de, $1111                                   ; $685a: $11 $11 $11
	ld   hl, $8c68                                   ; $685d: $21 $68 $8c
	rst  $38                                         ; $6860: $ff
	rst  $38                                         ; $6861: $ff
	rst  $38                                         ; $6862: $ff
	rst  $38                                         ; $6863: $ff
	rst  $38                                         ; $6864: $ff
	rst  $38                                         ; $6865: $ff
	jp   c, Jump_0dd_4286                            ; $6866: $da $86 $42

	ld   de, $1111                                   ; $6869: $11 $11 $11
	ld   de, $2211                                   ; $686c: $11 $11 $22
	scf                                              ; $686f: $37
	adc  c                                           ; $6870: $89
	rst  JumpTable                                         ; $6871: $df
	rst  $38                                         ; $6872: $ff
	rst  $38                                         ; $6873: $ff
	rst  $38                                         ; $6874: $ff
	rst  $38                                         ; $6875: $ff
	rst  $38                                         ; $6876: $ff
	db   $ec                                         ; $6877: $ec
	sub  a                                           ; $6878: $97
	ld   d, e                                        ; $6879: $53
	ld   hl, $1111                                   ; $687a: $21 $11 $11
	ld   de, $1211                                   ; $687d: $11 $11 $12
	dec  h                                           ; $6880: $25
	ld   a, b                                        ; $6881: $78
	cp   a                                           ; $6882: $bf
	rst  $38                                         ; $6883: $ff
	rst  $38                                         ; $6884: $ff
	rst  $38                                         ; $6885: $ff
	rst  $38                                         ; $6886: $ff
	rst  $38                                         ; $6887: $ff
	db   $fd                                         ; $6888: $fd
	cp   b                                           ; $6889: $b8
	ld   [hl], h                                     ; $688a: $74
	ld   [hl-], a                                    ; $688b: $32
	ld   de, $1111                                   ; $688c: $11 $11 $11
	ld   de, $2212                                   ; $688f: $11 $12 $22
	ld   a, b                                        ; $6892: $78
	adc  l                                           ; $6893: $8d
	rst  $38                                         ; $6894: $ff
	rst  $38                                         ; $6895: $ff
	rst  $38                                         ; $6896: $ff
	rst  $38                                         ; $6897: $ff
	rst  $38                                         ; $6898: $ff
	cp   $c9                                         ; $6899: $fe $c9
	halt                                             ; $689b: $76
	ld   b, d                                        ; $689c: $42
	ld   bc, $1111                                   ; $689d: $01 $11 $11
	ld   de, $3211                                   ; $68a0: $11 $11 $32
	ld   b, a                                        ; $68a3: $47
	adc  e                                           ; $68a4: $8b
	rst  JumpTable                                         ; $68a5: $df
	rst  $38                                         ; $68a6: $ff
	rst  $38                                         ; $68a7: $ff
	rst  $38                                         ; $68a8: $ff
	rst  $38                                         ; $68a9: $ff
	cp   $db                                         ; $68aa: $fe $db
	add  a                                           ; $68ac: $87
	ld   d, h                                        ; $68ad: $54
	ld   hl, $1111                                   ; $68ae: $21 $11 $11
	ld   de, $1311                                   ; $68b1: $11 $11 $13
	dec  [hl]                                        ; $68b4: $35
	ld   a, c                                        ; $68b5: $79
	adc  $ff                                         ; $68b6: $ce $ff
	rst  $38                                         ; $68b8: $ff
	rst  $38                                         ; $68b9: $ff
	rst  $38                                         ; $68ba: $ff
	rst  $38                                         ; $68bb: $ff
	db   $ec                                         ; $68bc: $ec
	xor  b                                           ; $68bd: $a8
	ld   h, l                                        ; $68be: $65
	ld   sp, $1111                                   ; $68bf: $31 $11 $11
	ld   de, $1211                                   ; $68c2: $11 $11 $12
	dec  h                                           ; $68c5: $25
	ld   l, b                                        ; $68c6: $68
	cp   e                                           ; $68c7: $bb
	rst  $28                                         ; $68c8: $ef
	rst  $38                                         ; $68c9: $ff
	rst  $38                                         ; $68ca: $ff
	rst  $38                                         ; $68cb: $ff
	rst  $38                                         ; $68cc: $ff
	db   $fd                                         ; $68cd: $fd
	xor  d                                           ; $68ce: $aa
	ld   h, l                                        ; $68cf: $65
	ld   b, d                                        ; $68d0: $42
	ld   de, $1111                                   ; $68d1: $11 $11 $11
	ld   de, $4211                                   ; $68d4: $11 $11 $42
	ld   e, b                                        ; $68d7: $58
	sbc  h                                           ; $68d8: $9c
	rst  JumpTable                                         ; $68d9: $df
	rst  $38                                         ; $68da: $ff
	rst  $38                                         ; $68db: $ff
	rst  $38                                         ; $68dc: $ff
	rst  $38                                         ; $68dd: $ff
	rst  $38                                         ; $68de: $ff
	jp   c, Jump_0dd_5386                            ; $68df: $da $86 $53

	ld   de, $1111                                   ; $68e2: $11 $11 $11
	ld   de, $3311                                   ; $68e5: $11 $11 $33
	ld   b, a                                        ; $68e8: $47
	sbc  e                                           ; $68e9: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68ea: $cf
	rst  $38                                         ; $68eb: $ff
	rst  $38                                         ; $68ec: $ff
	rst  $38                                         ; $68ed: $ff
	rst  $38                                         ; $68ee: $ff
	rst  $38                                         ; $68ef: $ff
	res  2, [hl]                                     ; $68f0: $cb $96
	ld   d, h                                        ; $68f2: $54
	ld   de, $1111                                   ; $68f3: $11 $11 $11
	ld   de, $2311                                   ; $68f6: $11 $11 $23
	ld   b, a                                        ; $68f9: $47
	sbc  d                                           ; $68fa: $9a
	adc  $ff                                         ; $68fb: $ce $ff
	rst  $38                                         ; $68fd: $ff
	rst  $38                                         ; $68fe: $ff
	rst  $38                                         ; $68ff: $ff
	rst  $38                                         ; $6900: $ff
	jp   z, $5397                                    ; $6901: $ca $97 $53

	ld   de, $1111                                   ; $6904: $11 $11 $11
	ld   de, $3311                                   ; $6907: $11 $11 $33
	ld   d, a                                        ; $690a: $57
	sbc  e                                           ; $690b: $9b
	cp   a                                           ; $690c: $bf
	rst  $38                                         ; $690d: $ff
	rst  $38                                         ; $690e: $ff
	rst  $38                                         ; $690f: $ff
	rst  $38                                         ; $6910: $ff
	rst  $38                                         ; $6911: $ff
	jp   z, $5396                                    ; $6912: $ca $96 $53

	ld   de, $1111                                   ; $6915: $11 $11 $11
	ld   de, $3411                                   ; $6918: $11 $11 $34
	ld   h, a                                        ; $691b: $67
	sbc  e                                           ; $691c: $9b
	rst  JumpTable                                         ; $691d: $df
	rst  $38                                         ; $691e: $ff
	rst  $38                                         ; $691f: $ff
	rst  $38                                         ; $6920: $ff
	rst  $38                                         ; $6921: $ff
	xor  $b9                                         ; $6922: $ee $b9
	add  [hl]                                        ; $6924: $86
	ld   b, d                                        ; $6925: $42
	ld   de, $1111                                   ; $6926: $11 $11 $11
	ld   de, $4413                                   ; $6929: $11 $13 $44
	ld   a, c                                        ; $692c: $79
	xor  e                                           ; $692d: $ab
	rst  $28                                         ; $692e: $ef
	rst  $38                                         ; $692f: $ff
	rst  $38                                         ; $6930: $ff
	rst  $38                                         ; $6931: $ff
	rst  $38                                         ; $6932: $ff
	db   $ec                                         ; $6933: $ec
	xor  c                                           ; $6934: $a9
	ld   h, l                                        ; $6935: $65
	ld   sp, $1111                                   ; $6936: $31 $11 $11
	ld   de, $2311                                   ; $6939: $11 $11 $23
	ld   d, a                                        ; $693c: $57
	ld   a, d                                        ; $693d: $7a
	cp   [hl]                                        ; $693e: $be
	rst  $38                                         ; $693f: $ff
	rst  $38                                         ; $6940: $ff
	rst  $38                                         ; $6941: $ff
	rst  $38                                         ; $6942: $ff
	cp   $da                                         ; $6943: $fe $da
	sub  [hl]                                        ; $6945: $96
	ld   d, e                                        ; $6946: $53
	ld   de, $1111                                   ; $6947: $11 $11 $11
	ld   de, $4511                                   ; $694a: $11 $11 $45
	ld   l, c                                        ; $694d: $69
	xor  h                                           ; $694e: $ac
	sbc  $ff                                         ; $694f: $de $ff
	rst  $38                                         ; $6951: $ff
	rst  $38                                         ; $6952: $ff
	rst  $38                                         ; $6953: $ff
	db   $ec                                         ; $6954: $ec
	cp   c                                           ; $6955: $b9
	ld   h, l                                        ; $6956: $65
	ld   [hl-], a                                    ; $6957: $32
	ld   de, $1111                                   ; $6958: $11 $11 $11
	ld   de, $5723                                   ; $695b: $11 $23 $57
	ld   a, e                                        ; $695e: $7b
	call z, $ffff                                    ; $695f: $cc $ff $ff
	rst  $38                                         ; $6962: $ff
	rst  $38                                         ; $6963: $ff
	db   $ed                                         ; $6964: $ed
	ret                                              ; $6965: $c9


	add  [hl]                                        ; $6966: $86
	ld   b, d                                        ; $6967: $42
	ld   de, $1111                                   ; $6968: $11 $11 $11
	ld   de, $4614                                   ; $696b: $11 $14 $46
	adc  c                                           ; $696e: $89
	cp   h                                           ; $696f: $bc
	rst  $28                                         ; $6970: $ef
	rst  $38                                         ; $6971: $ff
	rst  $38                                         ; $6972: $ff
	rst  $38                                         ; $6973: $ff
	cp   $ca                                         ; $6974: $fe $ca
	sub  [hl]                                        ; $6976: $96
	ld   b, e                                        ; $6977: $43
	ld   de, $1111                                   ; $6978: $11 $11 $11
	ld   de, $5514                                   ; $697b: $11 $14 $55
	ld   a, e                                        ; $697e: $7b
	cp   e                                           ; $697f: $bb
	rst  $38                                         ; $6980: $ff
	rst  $38                                         ; $6981: $ff
	rst  $38                                         ; $6982: $ff
	rst  $38                                         ; $6983: $ff
	xor  $c9                                         ; $6984: $ee $c9
	add  [hl]                                        ; $6986: $86
	ld   b, d                                        ; $6987: $42
	ld   hl, $1111                                   ; $6988: $21 $11 $11
	ld   de, $5624                                   ; $698b: $11 $24 $56
	ld   a, d                                        ; $698e: $7a
	cp   h                                           ; $698f: $bc
	rst  $38                                         ; $6990: $ff
	rst  $38                                         ; $6991: $ff
	rst  $38                                         ; $6992: $ff
	rst  $38                                         ; $6993: $ff
	db   $ed                                         ; $6994: $ed
	cp   c                                           ; $6995: $b9
	add  [hl]                                        ; $6996: $86
	inc  sp                                          ; $6997: $33
	ld   de, $1111                                   ; $6998: $11 $11 $11
	ld   de, $5734                                   ; $699b: $11 $34 $57
	sbc  d                                           ; $699e: $9a
	adc  $ff                                         ; $699f: $ce $ff
	rst  $38                                         ; $69a1: $ff
	rst  $38                                         ; $69a2: $ff
	rst  $38                                         ; $69a3: $ff
	db   $ec                                         ; $69a4: $ec
	xor  b                                           ; $69a5: $a8
	ld   [hl], h                                     ; $69a6: $74
	ld   sp, $1111                                   ; $69a7: $31 $11 $11
	ld   de, $3513                                   ; $69aa: $11 $13 $35
	ld   a, b                                        ; $69ad: $78
	sbc  h                                           ; $69ae: $9c
	rst  $28                                         ; $69af: $ef
	rst  $38                                         ; $69b0: $ff
	rst  $38                                         ; $69b1: $ff
	rst  $38                                         ; $69b2: $ff
	db   $ed                                         ; $69b3: $ed
	jp   z, Jump_0dd_4396                            ; $69b4: $ca $96 $43

	ld   de, $1111                                   ; $69b7: $11 $11 $11
	ld   de, $5834                                   ; $69ba: $11 $34 $58
	sbc  d                                           ; $69bd: $9a
	sbc  $ff                                         ; $69be: $de $ff
	rst  $38                                         ; $69c0: $ff
	rst  $38                                         ; $69c1: $ff
	cp   $cb                                         ; $69c2: $fe $cb
	add  a                                           ; $69c4: $87
	ld   b, e                                        ; $69c5: $43
	ld   hl, $1111                                   ; $69c6: $21 $11 $11
	ld   de, $6734                                   ; $69c9: $11 $34 $67
	adc  e                                           ; $69cc: $8b
	cp   [hl]                                        ; $69cd: $be
	rst  $38                                         ; $69ce: $ff
	rst  $38                                         ; $69cf: $ff
	rst  $38                                         ; $69d0: $ff
	cp   $cb                                         ; $69d1: $fe $cb
	sub  a                                           ; $69d3: $97
	ld   d, e                                        ; $69d4: $53
	ld   hl, $1111                                   ; $69d5: $21 $11 $11
	ld   de, $6834                                   ; $69d8: $11 $34 $68
	sbc  e                                           ; $69db: $9b
	sbc  $ff                                         ; $69dc: $de $ff
	rst  $38                                         ; $69de: $ff
	rst  $38                                         ; $69df: $ff
	cp   $ca                                         ; $69e0: $fe $ca
	ld   [hl], l                                     ; $69e2: $75
	ld   b, d                                        ; $69e3: $42
	ld   de, $1111                                   ; $69e4: $11 $11 $11
	ld   [de], a                                     ; $69e7: $12
	ld   b, l                                        ; $69e8: $45
	ld   l, d                                        ; $69e9: $6a
	xor  h                                           ; $69ea: $ac
	rst  $38                                         ; $69eb: $ff
	rst  $38                                         ; $69ec: $ff
	rst  $38                                         ; $69ed: $ff
	rst  $38                                         ; $69ee: $ff
	db   $ed                                         ; $69ef: $ed
	sub  a                                           ; $69f0: $97
	ld   h, h                                        ; $69f1: $64
	ld   hl, $1111                                   ; $69f2: $21 $11 $11
	ld   de, $5724                                   ; $69f5: $11 $24 $57
	adc  d                                           ; $69f8: $8a
	sbc  $ff                                         ; $69f9: $de $ff
	rst  $38                                         ; $69fb: $ff
	rst  $38                                         ; $69fc: $ff
	cp   $d8                                         ; $69fd: $fe $d8
	ld   [hl], l                                     ; $69ff: $75
	ld   [hl+], a                                    ; $6a00: $22
	ld   de, $1111                                   ; $6a01: $11 $11 $11
	inc  de                                          ; $6a04: $13
	ld   b, [hl]                                     ; $6a05: $46
	ld   a, c                                        ; $6a06: $79
	cp   l                                           ; $6a07: $bd
	rst  $38                                         ; $6a08: $ff
	rst  $38                                         ; $6a09: $ff
	rst  $38                                         ; $6a0a: $ff
	db   $fd                                         ; $6a0b: $fd
	jp   c, $3387                                    ; $6a0c: $da $87 $33

	ld   de, $1111                                   ; $6a0f: $11 $11 $11
	ld   [de], a                                     ; $6a12: $12
	dec  [hl]                                        ; $6a13: $35
	ld   a, c                                        ; $6a14: $79
	cp   h                                           ; $6a15: $bc
	rst  $38                                         ; $6a16: $ff
	rst  $38                                         ; $6a17: $ff
	rst  $38                                         ; $6a18: $ff
	cp   $ea                                         ; $6a19: $fe $ea
	add  a                                           ; $6a1b: $87
	ld   b, e                                        ; $6a1c: $43
	ld   de, $1111                                   ; $6a1d: $11 $11 $11
	ld   de, $6846                                   ; $6a20: $11 $46 $68
	call z, $ffef                                    ; $6a23: $cc $ef $ff
	rst  $38                                         ; $6a26: $ff
	rst  $38                                         ; $6a27: $ff
	jp   c, $3495                                    ; $6a28: $da $95 $34

	ld   de, $1111                                   ; $6a2b: $11 $11 $11
	ld   [bc], a                                     ; $6a2e: $02
	ld   b, l                                        ; $6a2f: $45
	ld   a, d                                        ; $6a30: $7a
	call c, $ffff                                    ; $6a31: $dc $ff $ff
	rst  $38                                         ; $6a34: $ff
	db   $fd                                         ; $6a35: $fd
	reti                                             ; $6a36: $d9


	ld   [hl], l                                     ; $6a37: $75
	ld   [hl-], a                                    ; $6a38: $32
	ld   de, $1111                                   ; $6a39: $11 $11 $11
	inc  de                                          ; $6a3c: $13
	ld   b, [hl]                                     ; $6a3d: $46
	adc  h                                           ; $6a3e: $8c
	rst  JumpTable                                         ; $6a3f: $df
	rst  $38                                         ; $6a40: $ff
	rst  $38                                         ; $6a41: $ff
	rst  $38                                         ; $6a42: $ff
	db   $fd                                         ; $6a43: $fd
	cp   b                                           ; $6a44: $b8
	ld   h, e                                        ; $6a45: $63
	ld   de, $1111                                   ; $6a46: $11 $11 $11
	ld   de, $5823                                   ; $6a49: $11 $23 $58
	cp   h                                           ; $6a4c: $bc
	rst  $38                                         ; $6a4d: $ff
	rst  $38                                         ; $6a4e: $ff
	rst  $38                                         ; $6a4f: $ff
	rst  $38                                         ; $6a50: $ff
	jp   c, Jump_0dd_4285                            ; $6a51: $da $85 $42

	ld   de, $1111                                   ; $6a54: $11 $11 $11
	ld   [bc], a                                     ; $6a57: $02
	ld   [hl], $8a                                   ; $6a58: $36 $8a
	rst  JumpTable                                         ; $6a5a: $df
	rst  $38                                         ; $6a5b: $ff
	rst  $38                                         ; $6a5c: $ff
	rst  $38                                         ; $6a5d: $ff
	db   $fc                                         ; $6a5e: $fc
	sbc  b                                           ; $6a5f: $98
	ld   d, e                                        ; $6a60: $53
	ld   de, $1111                                   ; $6a61: $11 $11 $11
	ld   [de], a                                     ; $6a64: $12
	inc  sp                                          ; $6a65: $33
	ld   a, h                                        ; $6a66: $7c
	call z, $ffff                                    ; $6a67: $cc $ff $ff
	rst  $38                                         ; $6a6a: $ff
	cp   $b9                                         ; $6a6b: $fe $b9
	ld   d, h                                        ; $6a6d: $54
	ld   hl, $1111                                   ; $6a6e: $21 $11 $11
	ld   de, $7a23                                   ; $6a71: $11 $23 $7a
	cp   l                                           ; $6a74: $bd
	rst  $38                                         ; $6a75: $ff
	rst  $38                                         ; $6a76: $ff
	rst  $38                                         ; $6a77: $ff
	db   $fc                                         ; $6a78: $fc
	cp   c                                           ; $6a79: $b9
	ld   d, h                                        ; $6a7a: $54
	ld   sp, $1111                                   ; $6a7b: $31 $11 $11
	ld   de, $7924                                   ; $6a7e: $11 $24 $79
	cp   [hl]                                        ; $6a81: $be
	rst  $38                                         ; $6a82: $ff
	rst  $38                                         ; $6a83: $ff
	rst  $38                                         ; $6a84: $ff
	ei                                               ; $6a85: $fb
	xor  c                                           ; $6a86: $a9
	ld   d, e                                        ; $6a87: $53
	ld   sp, $1111                                   ; $6a88: $31 $11 $11
	ld   de, $7826                                   ; $6a8b: $11 $26 $78
	rst  $28                                         ; $6a8e: $ef
	rst  $28                                         ; $6a8f: $ef
	rst  $38                                         ; $6a90: $ff
	rst  $38                                         ; $6a91: $ff
	db   $fc                                         ; $6a92: $fc
	and  a                                           ; $6a93: $a7
	ld   d, h                                        ; $6a94: $54
	ld   de, $1111                                   ; $6a95: $11 $11 $11
	ld   [de], a                                     ; $6a98: $12
	ld   h, $9a                                      ; $6a99: $26 $9a
	rst  $28                                         ; $6a9b: $ef
	rst  $38                                         ; $6a9c: $ff
	rst  $38                                         ; $6a9d: $ff
	rst  $38                                         ; $6a9e: $ff
	res  0, l                                        ; $6a9f: $cb $85
	ld   h, e                                        ; $6aa1: $63
	ld   de, $1111                                   ; $6aa2: $11 $11 $11
	ld   hl, $ab49                                   ; $6aa5: $21 $49 $ab
	rst  $38                                         ; $6aa8: $ff
	rst  $38                                         ; $6aa9: $ff
	rst  $38                                         ; $6aaa: $ff
	db   $fd                                         ; $6aab: $fd
	cp   h                                           ; $6aac: $bc
	halt                                             ; $6aad: $76
	ld   b, c                                        ; $6aae: $41
	ld   de, $1111                                   ; $6aaf: $11 $11 $11
	ld   h, $78                                      ; $6ab2: $26 $78
	rst  JumpTable                                         ; $6ab4: $df
	rst  $28                                         ; $6ab5: $ef
	rst  $38                                         ; $6ab6: $ff
	rst  $38                                         ; $6ab7: $ff
	db   $eb                                         ; $6ab8: $eb
	or   [hl]                                        ; $6ab9: $b6
	ld   d, [hl]                                     ; $6aba: $56
	ld   de, $1121                                   ; $6abb: $11 $21 $11
	ld   [de], a                                     ; $6abe: $12
	ld   b, a                                        ; $6abf: $47
	sbc  [hl]                                        ; $6ac0: $9e
	db   $ec                                         ; $6ac1: $ec
	rst  $38                                         ; $6ac2: $ff
	rst  $28                                         ; $6ac3: $ef
	db   $fc                                         ; $6ac4: $fc
	cp   c                                           ; $6ac5: $b9
	halt                                             ; $6ac6: $76
	ld   b, d                                        ; $6ac7: $42
	ld   de, $1211                                   ; $6ac8: $11 $11 $12
	inc  [hl]                                        ; $6acb: $34
	sbc  c                                           ; $6acc: $99
	adc  $ff                                         ; $6acd: $ce $ff
	rst  $38                                         ; $6acf: $ff
	cp   $db                                         ; $6ad0: $fe $db
	adc  b                                           ; $6ad2: $88
	ld   h, e                                        ; $6ad3: $63
	ld   hl, $1111                                   ; $6ad4: $21 $11 $11
	ld   b, h                                        ; $6ad7: $44
	ld   e, b                                        ; $6ad8: $58
	xor  l                                           ; $6ad9: $ad
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ada: $cf
	rst  $38                                         ; $6adb: $ff
	db   $fd                                         ; $6adc: $fd
	call c, Call_0dd_7697                            ; $6add: $dc $97 $76
	ld   de, $1211                                   ; $6ae0: $11 $11 $12
	inc  [hl]                                        ; $6ae3: $34
	ld   a, c                                        ; $6ae4: $79
	adc  h                                           ; $6ae5: $8c
	xor  $ef                                         ; $6ae6: $ee $ef
	db   $fd                                         ; $6ae8: $fd
	call z, Call_0dd_66a8                            ; $6ae9: $cc $a8 $66
	ld   b, d                                        ; $6aec: $42
	ld   hl, $2521                                   ; $6aed: $21 $21 $25
	ld   d, a                                        ; $6af0: $57
	cp   c                                           ; $6af1: $b9
	cp   a                                           ; $6af2: $bf
	sbc  $fd                                         ; $6af3: $de $fd
	call z, $95a9                                    ; $6af5: $cc $a9 $95
	inc  sp                                          ; $6af8: $33
	ld   hl, $3513                                   ; $6af9: $21 $13 $35
	add  [hl]                                        ; $6afc: $86
	xor  l                                           ; $6afd: $ad
	xor  l                                           ; $6afe: $ad
	rst  $38                                         ; $6aff: $ff
	adc  $eb                                         ; $6b00: $ce $eb
	sbc  b                                           ; $6b02: $98
	ld   h, [hl]                                     ; $6b03: $66
	ld   b, c                                        ; $6b04: $41
	ld   [hl-], a                                    ; $6b05: $32
	ld   de, $5845                                   ; $6b06: $11 $45 $58
	cp   e                                           ; $6b09: $bb
	xor  [hl]                                        ; $6b0a: $ae
	db   $fd                                         ; $6b0b: $fd
	sbc  $db                                         ; $6b0c: $de $db
	adc  c                                           ; $6b0e: $89
	add  h                                           ; $6b0f: $84
	ld   d, d                                        ; $6b10: $52
	ld   [hl+], a                                    ; $6b11: $22
	inc  de                                          ; $6b12: $13
	dec  [hl]                                        ; $6b13: $35
	ld   d, a                                        ; $6b14: $57
	ld   [$ec9f], a                                  ; $6b15: $ea $9f $ec
	cp   [hl]                                        ; $6b18: $be
	ld   [$96b8], a                                  ; $6b19: $ea $b8 $96
	dec  h                                           ; $6b1c: $25
	ld   sp, $4115                                   ; $6b1d: $31 $15 $41
	ld   a, h                                        ; $6b20: $7c
	ld   a, c                                        ; $6b21: $79
	db   $fc                                         ; $6b22: $fc
	db   $dd                                         ; $6b23: $dd
	adc  $bb                                         ; $6b24: $ce $bb
	sbc  c                                           ; $6b26: $99
	ld   [hl], e                                     ; $6b27: $73
	ld   h, h                                        ; $6b28: $64
	inc  h                                           ; $6b29: $24
	inc  sp                                          ; $6b2a: $33
	ld   b, [hl]                                     ; $6b2b: $46
	ld   l, b                                        ; $6b2c: $68
	xor  e                                           ; $6b2d: $ab
	call $acec                                       ; $6b2e: $cd $ec $ac
	cp   c                                           ; $6b31: $b9
	add  a                                           ; $6b32: $87
	ld   [hl], h                                     ; $6b33: $74
	ld   b, h                                        ; $6b34: $44
	ld   d, h                                        ; $6b35: $54
	inc  h                                           ; $6b36: $24
	adc  b                                           ; $6b37: $88
	ld   c, c                                        ; $6b38: $49
	res  3, e                                        ; $6b39: $cb $9b
	db   $ec                                         ; $6b3b: $ec
	xor  d                                           ; $6b3c: $aa
	ret                                              ; $6b3d: $c9


	halt                                             ; $6b3e: $76
	add  a                                           ; $6b3f: $87
	inc  [hl]                                        ; $6b40: $34
	ld   b, l                                        ; $6b41: $45
	inc  [hl]                                        ; $6b42: $34
	ld   h, a                                        ; $6b43: $67
	adc  d                                           ; $6b44: $8a
	xor  d                                           ; $6b45: $aa
	ld   [$ca9e], a                                  ; $6b46: $ea $9e $ca
	xor  d                                           ; $6b49: $aa
	add  a                                           ; $6b4a: $87
	ld   h, h                                        ; $6b4b: $64
	ld   h, h                                        ; $6b4c: $64
	ld   b, l                                        ; $6b4d: $45
	ld   d, a                                        ; $6b4e: $57
	ld   c, b                                        ; $6b4f: $48
	add  a                                           ; $6b50: $87
	cp   d                                           ; $6b51: $ba
	res  5, h                                        ; $6b52: $cb $ac
	adc  e                                           ; $6b54: $8b
	sub  l                                           ; $6b55: $95
	or   a                                           ; $6b56: $b7
	ld   [hl], $75                                   ; $6b57: $36 $75
	dec  [hl]                                        ; $6b59: $35
	ld   h, a                                        ; $6b5a: $67
	ld   l, b                                        ; $6b5b: $68
	sbc  c                                           ; $6b5c: $99
	reti                                             ; $6b5d: $d9


	sbc  h                                           ; $6b5e: $9c
	ret  z                                           ; $6b5f: $c8

	xor  e                                           ; $6b60: $ab
	adc  b                                           ; $6b61: $88
	ld   l, b                                        ; $6b62: $68
	ld   [hl], e                                     ; $6b63: $73
	ld   h, [hl]                                     ; $6b64: $66
	ld   h, e                                        ; $6b65: $63
	ld   e, d                                        ; $6b66: $5a
	ld   l, c                                        ; $6b67: $69
	ld   a, d                                        ; $6b68: $7a
	rst  ToBoot                                         ; $6b69: $c7
	sbc  [hl]                                        ; $6b6a: $9e
	cp   c                                           ; $6b6b: $b9
	xor  e                                           ; $6b6c: $ab
	ld   [hl], h                                     ; $6b6d: $74
	adc  d                                           ; $6b6e: $8a
	ld   d, c                                        ; $6b6f: $51
	sbc  c                                           ; $6b70: $99
	dec  d                                           ; $6b71: $15
	xor  b                                           ; $6b72: $a8
	ld   a, b                                        ; $6b73: $78
	xor  e                                           ; $6b74: $ab
	sbc  b                                           ; $6b75: $98
	xor  e                                           ; $6b76: $ab
	sbc  c                                           ; $6b77: $99
	sbc  b                                           ; $6b78: $98
	sub  a                                           ; $6b79: $97
	sub  a                                           ; $6b7a: $97
	add  hl, sp                                      ; $6b7b: $39
	ld   d, e                                        ; $6b7c: $53
	ld   a, b                                        ; $6b7d: $78
	sub  [hl]                                        ; $6b7e: $96
	adc  d                                           ; $6b7f: $8a
	sub  [hl]                                        ; $6b80: $96
	xor  e                                           ; $6b81: $ab
	xor  c                                           ; $6b82: $a9
	ld   a, h                                        ; $6b83: $7c
	and  l                                           ; $6b84: $a5
	ld   a, l                                        ; $6b85: $7d
	ld   h, e                                        ; $6b86: $63
	sub  a                                           ; $6b87: $97
	ld   d, l                                        ; $6b88: $55
	ld   l, e                                        ; $6b89: $6b
	add  h                                           ; $6b8a: $84
	sbc  h                                           ; $6b8b: $9c
	halt                                             ; $6b8c: $76
	sbc  l                                           ; $6b8d: $9d
	or   l                                           ; $6b8e: $b5
	cp   e                                           ; $6b8f: $bb
	ld   h, [hl]                                     ; $6b90: $66
	ld   a, b                                        ; $6b91: $78
	sub  l                                           ; $6b92: $95
	dec  a                                           ; $6b93: $3d
	ld   [hl], h                                     ; $6b94: $74
	xor  b                                           ; $6b95: $a8
	and  [hl]                                        ; $6b96: $a6
	ld   a, c                                        ; $6b97: $79
	or   a                                           ; $6b98: $b7
	ld   l, e                                        ; $6b99: $6b
	ld   a, c                                        ; $6b9a: $79
	adc  b                                           ; $6b9b: $88
	sub  [hl]                                        ; $6b9c: $96
	and  [hl]                                        ; $6b9d: $a6
	ld   a, d                                        ; $6b9e: $7a
	ld   e, c                                        ; $6b9f: $59
	ld   [hl], a                                     ; $6ba0: $77
	sub  [hl]                                        ; $6ba1: $96
	sbc  c                                           ; $6ba2: $99
	ld   a, b                                        ; $6ba3: $78
	adc  d                                           ; $6ba4: $8a
	sub  [hl]                                        ; $6ba5: $96
	bit  4, a                                        ; $6ba6: $cb $67
	xor  c                                           ; $6ba8: $a9
	ld   [hl], a                                     ; $6ba9: $77
	ld   a, b                                        ; $6baa: $78
	ld   h, [hl]                                     ; $6bab: $66
	xor  b                                           ; $6bac: $a8
	ld   a, c                                        ; $6bad: $79
	adc  c                                           ; $6bae: $89
	ld   h, a                                        ; $6baf: $67
	ret  z                                           ; $6bb0: $c8

	adc  c                                           ; $6bb1: $89
	adc  b                                           ; $6bb2: $88
	sub  a                                           ; $6bb3: $97
	ld   a, b                                        ; $6bb4: $78
	ld   a, b                                        ; $6bb5: $78
	adc  c                                           ; $6bb6: $89
	ld   h, l                                        ; $6bb7: $65
	and  a                                           ; $6bb8: $a7
	ld   [hl], a                                     ; $6bb9: $77
	adc  c                                           ; $6bba: $89
	sub  [hl]                                        ; $6bbb: $96
	ld   a, e                                        ; $6bbc: $7b
	ld   [hl], a                                     ; $6bbd: $77
	ld   a, c                                        ; $6bbe: $79
	or   l                                           ; $6bbf: $b5
	adc  e                                           ; $6bc0: $8b
	ld   h, h                                        ; $6bc1: $64
	adc  d                                           ; $6bc2: $8a
	ld   h, [hl]                                     ; $6bc3: $66
	adc  c                                           ; $6bc4: $89
	add  [hl]                                        ; $6bc5: $86
	ld   [hl], a                                     ; $6bc6: $77
	cp   d                                           ; $6bc7: $ba
	ld   c, d                                        ; $6bc8: $4a
	or   l                                           ; $6bc9: $b5
	adc  c                                           ; $6bca: $89
	add  a                                           ; $6bcb: $87
	ld   e, c                                        ; $6bcc: $59
	or   l                                           ; $6bcd: $b5
	ld   a, h                                        ; $6bce: $7c
	and  e                                           ; $6bcf: $a3
	ld   l, [hl]                                     ; $6bd0: $6e
	and  e                                           ; $6bd1: $a3
	ld   l, [hl]                                     ; $6bd2: $6e
	add  l                                           ; $6bd3: $85
	xor  b                                           ; $6bd4: $a8
	sub  [hl]                                        ; $6bd5: $96
	adc  c                                           ; $6bd6: $89
	halt                                             ; $6bd7: $76
	adc  d                                           ; $6bd8: $8a
	ld   l, c                                        ; $6bd9: $69
	ld   e, b                                        ; $6bda: $58
	and  [hl]                                        ; $6bdb: $a6
	add  l                                           ; $6bdc: $85
	sbc  c                                           ; $6bdd: $99
	ld   a, b                                        ; $6bde: $78
	adc  d                                           ; $6bdf: $8a
	ld   a, d                                        ; $6be0: $7a
	add  a                                           ; $6be1: $87
	sbc  d                                           ; $6be2: $9a
	sub  h                                           ; $6be3: $94
	ld   a, b                                        ; $6be4: $78
	ld   a, c                                        ; $6be5: $79
	sbc  b                                           ; $6be6: $98
	and  [hl]                                        ; $6be7: $a6
	ld   l, c                                        ; $6be8: $69
	ld   a, c                                        ; $6be9: $79
	ld   [hl], a                                     ; $6bea: $77
	xor  b                                           ; $6beb: $a8
	add  a                                           ; $6bec: $87
	ld   a, c                                        ; $6bed: $79
	adc  b                                           ; $6bee: $88
	ld   a, b                                        ; $6bef: $78
	add  [hl]                                        ; $6bf0: $86
	ld   [hl], a                                     ; $6bf1: $77
	xor  d                                           ; $6bf2: $aa
	adc  b                                           ; $6bf3: $88
	ld   h, a                                        ; $6bf4: $67
	ld   l, c                                        ; $6bf5: $69
	sub  l                                           ; $6bf6: $95
	sbc  e                                           ; $6bf7: $9b
	sub  l                                           ; $6bf8: $95
	xor  d                                           ; $6bf9: $aa
	ld   [hl], l                                     ; $6bfa: $75
	ld   a, h                                        ; $6bfb: $7c
	add  a                                           ; $6bfc: $87
	ld   l, d                                        ; $6bfd: $6a
	sub  [hl]                                        ; $6bfe: $96
	add  a                                           ; $6bff: $87
	and  [hl]                                        ; $6c00: $a6
	ld   l, e                                        ; $6c01: $6b
	add  a                                           ; $6c02: $87
	adc  c                                           ; $6c03: $89
	halt                                             ; $6c04: $76
	adc  c                                           ; $6c05: $89
	ld   l, c                                        ; $6c06: $69
	sub  a                                           ; $6c07: $97
	ld   [hl], a                                     ; $6c08: $77
	ld   [hl], a                                     ; $6c09: $77
	halt                                             ; $6c0a: $76
	adc  c                                           ; $6c0b: $89
	ld   l, b                                        ; $6c0c: $68
	add  a                                           ; $6c0d: $87
	sbc  d                                           ; $6c0e: $9a
	add  l                                           ; $6c0f: $85
	xor  c                                           ; $6c10: $a9
	ld   l, c                                        ; $6c11: $69
	sub  a                                           ; $6c12: $97
	sbc  d                                           ; $6c13: $9a
	ld   e, b                                        ; $6c14: $58
	and  [hl]                                        ; $6c15: $a6
	ld   l, c                                        ; $6c16: $69
	sub  a                                           ; $6c17: $97
	add  [hl]                                        ; $6c18: $86
	sbc  d                                           ; $6c19: $9a
	ld   c, c                                        ; $6c1a: $49
	or   [hl]                                        ; $6c1b: $b6
	ld   a, c                                        ; $6c1c: $79
	ld   a, d                                        ; $6c1d: $7a
	halt                                             ; $6c1e: $76
	xor  d                                           ; $6c1f: $aa
	ld   a, c                                        ; $6c20: $79
	add  [hl]                                        ; $6c21: $86
	sbc  c                                           ; $6c22: $99
	ld   a, b                                        ; $6c23: $78
	ld   [hl], a                                     ; $6c24: $77
	or   l                                           ; $6c25: $b5
	sbc  d                                           ; $6c26: $9a
	ld   a, c                                        ; $6c27: $79
	ld   a, c                                        ; $6c28: $79
	xor  c                                           ; $6c29: $a9
	ld   e, c                                        ; $6c2a: $59
	or   l                                           ; $6c2b: $b5
	ld   l, e                                        ; $6c2c: $6b
	add  l                                           ; $6c2d: $85
	sub  a                                           ; $6c2e: $97
	add  [hl]                                        ; $6c2f: $86
	ld   l, e                                        ; $6c30: $6b
	adc  c                                           ; $6c31: $89
	ld   h, a                                        ; $6c32: $67
	sub  [hl]                                        ; $6c33: $96
	sub  a                                           ; $6c34: $97
	sbc  b                                           ; $6c35: $98
	ld   l, c                                        ; $6c36: $69
	ld   h, a                                        ; $6c37: $67
	adc  b                                           ; $6c38: $88
	adc  c                                           ; $6c39: $89
	ld   a, b                                        ; $6c3a: $78
	sub  a                                           ; $6c3b: $97
	adc  c                                           ; $6c3c: $89
	add  a                                           ; $6c3d: $87
	ld   h, a                                        ; $6c3e: $67
	adc  b                                           ; $6c3f: $88
	add  a                                           ; $6c40: $87
	ld   a, b                                        ; $6c41: $78
	ld   [hl], a                                     ; $6c42: $77
	sub  a                                           ; $6c43: $97
	ld   a, c                                        ; $6c44: $79
	sub  a                                           ; $6c45: $97
	ld   a, d                                        ; $6c46: $7a
	sub  a                                           ; $6c47: $97
	ld   l, c                                        ; $6c48: $69
	sub  [hl]                                        ; $6c49: $96
	adc  c                                           ; $6c4a: $89
	add  a                                           ; $6c4b: $87
	ld   a, c                                        ; $6c4c: $79
	adc  b                                           ; $6c4d: $88
	adc  b                                           ; $6c4e: $88
	add  a                                           ; $6c4f: $87
	adc  d                                           ; $6c50: $8a
	halt                                             ; $6c51: $76
	ld   a, c                                        ; $6c52: $79
	sub  [hl]                                        ; $6c53: $96
	sbc  c                                           ; $6c54: $99
	ld   [hl], a                                     ; $6c55: $77
	ld   a, b                                        ; $6c56: $78
	ld   a, b                                        ; $6c57: $78
	adc  c                                           ; $6c58: $89
	sub  a                                           ; $6c59: $97
	adc  b                                           ; $6c5a: $88
	sbc  b                                           ; $6c5b: $98
	adc  b                                           ; $6c5c: $88
	ld   [hl], a                                     ; $6c5d: $77
	sbc  b                                           ; $6c5e: $98
	add  [hl]                                        ; $6c5f: $86
	sbc  d                                           ; $6c60: $9a
	ld   h, [hl]                                     ; $6c61: $66
	xor  d                                           ; $6c62: $aa
	add  [hl]                                        ; $6c63: $86
	adc  d                                           ; $6c64: $8a
	ld   [hl], a                                     ; $6c65: $77
	adc  c                                           ; $6c66: $89
	ld   l, b                                        ; $6c67: $68
	xor  b                                           ; $6c68: $a8
	ld   [hl], a                                     ; $6c69: $77
	sbc  b                                           ; $6c6a: $98
	ld   h, [hl]                                     ; $6c6b: $66
	xor  c                                           ; $6c6c: $a9
	ld   [hl], a                                     ; $6c6d: $77
	ld   a, e                                        ; $6c6e: $7b
	ld   h, [hl]                                     ; $6c6f: $66
	sbc  c                                           ; $6c70: $99
	ld   [hl], a                                     ; $6c71: $77
	adc  c                                           ; $6c72: $89
	ld   [hl], a                                     ; $6c73: $77
	sbc  b                                           ; $6c74: $98
	ld   [hl], a                                     ; $6c75: $77
	adc  b                                           ; $6c76: $88
	halt                                             ; $6c77: $76
	adc  c                                           ; $6c78: $89
	ld   l, b                                        ; $6c79: $68
	adc  c                                           ; $6c7a: $89
	add  a                                           ; $6c7b: $87
	adc  c                                           ; $6c7c: $89
	add  [hl]                                        ; $6c7d: $86
	adc  c                                           ; $6c7e: $89
	add  [hl]                                        ; $6c7f: $86
	adc  c                                           ; $6c80: $89
	add  [hl]                                        ; $6c81: $86
	adc  d                                           ; $6c82: $8a
	halt                                             ; $6c83: $76
	adc  b                                           ; $6c84: $88
	add  a                                           ; $6c85: $87
	adc  c                                           ; $6c86: $89
	ld   [hl], a                                     ; $6c87: $77
	sbc  c                                           ; $6c88: $99
	ld   [hl], a                                     ; $6c89: $77
	sbc  b                                           ; $6c8a: $98
	adc  b                                           ; $6c8b: $88
	sbc  b                                           ; $6c8c: $98
	ld   [hl], a                                     ; $6c8d: $77
	adc  b                                           ; $6c8e: $88
	adc  b                                           ; $6c8f: $88
	adc  b                                           ; $6c90: $88
	ld   [hl], a                                     ; $6c91: $77
	adc  b                                           ; $6c92: $88
	add  a                                           ; $6c93: $87
	adc  b                                           ; $6c94: $88
	adc  b                                           ; $6c95: $88
	ld   [hl], a                                     ; $6c96: $77
	sub  a                                           ; $6c97: $97
	ld   a, c                                        ; $6c98: $79
	adc  c                                           ; $6c99: $89
	add  [hl]                                        ; $6c9a: $86
	adc  b                                           ; $6c9b: $88
	adc  c                                           ; $6c9c: $89
	ld   a, b                                        ; $6c9d: $78
	sbc  b                                           ; $6c9e: $98
	adc  c                                           ; $6c9f: $89
	add  a                                           ; $6ca0: $87
	adc  b                                           ; $6ca1: $88
	adc  b                                           ; $6ca2: $88
	ld   [hl], a                                     ; $6ca3: $77
	add  a                                           ; $6ca4: $87
	ld   a, b                                        ; $6ca5: $78
	adc  b                                           ; $6ca6: $88
	adc  b                                           ; $6ca7: $88
	sbc  b                                           ; $6ca8: $98
	adc  b                                           ; $6ca9: $88
	adc  c                                           ; $6caa: $89
	add  a                                           ; $6cab: $87
	ld   a, c                                        ; $6cac: $79
	add  a                                           ; $6cad: $87
	ld   a, c                                        ; $6cae: $79
	sub  a                                           ; $6caf: $97
	ld   l, c                                        ; $6cb0: $69
	add  a                                           ; $6cb1: $87
	ld   [hl], a                                     ; $6cb2: $77
	sbc  c                                           ; $6cb3: $99
	ld   a, b                                        ; $6cb4: $78
	sub  a                                           ; $6cb5: $97
	ld   a, c                                        ; $6cb6: $79
	sbc  b                                           ; $6cb7: $98
	ld   a, b                                        ; $6cb8: $78
	xor  c                                           ; $6cb9: $a9
	ld   [hl], a                                     ; $6cba: $77
	sbc  b                                           ; $6cbb: $98
	ld   [hl], a                                     ; $6cbc: $77
	adc  c                                           ; $6cbd: $89
	ld   [hl], a                                     ; $6cbe: $77
	adc  b                                           ; $6cbf: $88
	adc  b                                           ; $6cc0: $88
	sbc  b                                           ; $6cc1: $98
	adc  b                                           ; $6cc2: $88
	adc  b                                           ; $6cc3: $88
	sbc  b                                           ; $6cc4: $98
	ld   a, b                                        ; $6cc5: $78
	add  a                                           ; $6cc6: $87
	adc  b                                           ; $6cc7: $88
	ld   [hl], a                                     ; $6cc8: $77
	ld   a, b                                        ; $6cc9: $78
	adc  b                                           ; $6cca: $88
	sbc  b                                           ; $6ccb: $98
	ld   a, b                                        ; $6ccc: $78
	sbc  c                                           ; $6ccd: $99
	add  a                                           ; $6cce: $87
	sbc  b                                           ; $6ccf: $98
	add  a                                           ; $6cd0: $87
	adc  b                                           ; $6cd1: $88
	add  a                                           ; $6cd2: $87
	ld   a, b                                        ; $6cd3: $78
	adc  b                                           ; $6cd4: $88
	adc  c                                           ; $6cd5: $89
	sbc  b                                           ; $6cd6: $98
	ld   a, b                                        ; $6cd7: $78
	adc  b                                           ; $6cd8: $88
	add  a                                           ; $6cd9: $87
	adc  c                                           ; $6cda: $89
	adc  b                                           ; $6cdb: $88
	adc  b                                           ; $6cdc: $88
	adc  b                                           ; $6cdd: $88
	adc  c                                           ; $6cde: $89
	adc  b                                           ; $6cdf: $88
	adc  b                                           ; $6ce0: $88
	adc  b                                           ; $6ce1: $88
	sbc  b                                           ; $6ce2: $98
	adc  b                                           ; $6ce3: $88
	adc  b                                           ; $6ce4: $88
	add  a                                           ; $6ce5: $87
	add  a                                           ; $6ce6: $87
	adc  b                                           ; $6ce7: $88
	ld   a, b                                        ; $6ce8: $78
	adc  b                                           ; $6ce9: $88
	adc  b                                           ; $6cea: $88
	adc  c                                           ; $6ceb: $89
	adc  b                                           ; $6cec: $88
	adc  c                                           ; $6ced: $89
	adc  b                                           ; $6cee: $88
	adc  b                                           ; $6cef: $88
	adc  b                                           ; $6cf0: $88
	ld   a, b                                        ; $6cf1: $78
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
	add  a                                           ; $6cfc: $87
	adc  b                                           ; $6cfd: $88
	adc  c                                           ; $6cfe: $89
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
	ld   de, $4800                                   ; $6d8d: $11 $00 $48
	ld   de, $1111                                   ; $6d90: $11 $11 $11
	ld   de, $1111                                   ; $6d93: $11 $11 $11
	ld   de, $1111                                   ; $6d96: $11 $11 $11
	ld   de, $5413                                   ; $6d99: $11 $13 $54
	ld   d, h                                        ; $6d9c: $54
	ld   d, h                                        ; $6d9d: $54
	ld   b, c                                        ; $6d9e: $41
	rra                                              ; $6d9f: $1f
	rst  $38                                         ; $6da0: $ff
	pop  af                                          ; $6da1: $f1
	ld   de, $1411                                   ; $6da2: $11 $11 $14
	sub  c                                           ; $6da5: $91
	ld   de, $df1c                                   ; $6da6: $11 $1c $df
	sbc  h                                           ; $6da9: $9c
	rst  JumpTable                                         ; $6daa: $df
	sub  c                                           ; $6dab: $91
	ld   de, $1111                                   ; $6dac: $11 $11 $11
	ld   de, $1111                                   ; $6daf: $11 $11 $11
	ld   de, $1111                                   ; $6db2: $11 $11 $11
	ld   de, $1111                                   ; $6db5: $11 $11 $11
	ld   de, $5411                                   ; $6db8: $11 $11 $54
	ld   b, h                                        ; $6dbb: $44
	add  h                                           ; $6dbc: $84
	ld   de, $5454                                   ; $6dbd: $11 $54 $54
	ld   h, a                                        ; $6dc0: $67
	ld   [hl], d                                     ; $6dc1: $72
	ld   de, $1111                                   ; $6dc2: $11 $11 $11
	ld   de, $1112                                   ; $6dc5: $11 $12 $11
	ld   [de], a                                     ; $6dc8: $12
	ld   de, $1111                                   ; $6dc9: $11 $11 $11
	ld   h, [hl]                                     ; $6dcc: $66
	halt                                             ; $6dcd: $76
	ld   h, h                                        ; $6dce: $64
	ld   de, $8888                                   ; $6dcf: $11 $88 $88
	adc  b                                           ; $6dd2: $88
	adc  b                                           ; $6dd3: $88
	add  a                                           ; $6dd4: $87
	ld   [hl], a                                     ; $6dd5: $77
	ld   [hl], a                                     ; $6dd6: $77
	ld   h, [hl]                                     ; $6dd7: $66
	ld   h, l                                        ; $6dd8: $65
	ld   d, l                                        ; $6dd9: $55
	ld   l, b                                        ; $6dda: $68
	adc  d                                           ; $6ddb: $8a
	db   $db                                         ; $6ddc: $db
	call z, $8798                                    ; $6ddd: $cc $98 $87
	ld   [hl], a                                     ; $6de0: $77
	halt                                             ; $6de1: $76
	ld   d, [hl]                                     ; $6de2: $56
	ld   d, [hl]                                     ; $6de3: $56
	ld   a, b                                        ; $6de4: $78
	cp   l                                           ; $6de5: $bd
	xor  $db                                         ; $6de6: $ee $db
	sbc  b                                           ; $6de8: $98
	halt                                             ; $6de9: $76
	ld   [hl], a                                     ; $6dea: $77
	ld   h, l                                        ; $6deb: $65
	ld   d, h                                        ; $6dec: $54
	ld   b, l                                        ; $6ded: $45
	ld   a, b                                        ; $6dee: $78
	cp   e                                           ; $6def: $bb
	cp   e                                           ; $6df0: $bb
	xor  c                                           ; $6df1: $a9
	halt                                             ; $6df2: $76
	ld   h, a                                        ; $6df3: $67
	adc  c                                           ; $6df4: $89
	sbc  c                                           ; $6df5: $99
	sbc  b                                           ; $6df6: $98
	sbc  c                                           ; $6df7: $99
	xor  d                                           ; $6df8: $aa
	cp   d                                           ; $6df9: $ba
	sbc  b                                           ; $6dfa: $98
	ld   h, l                                        ; $6dfb: $65
	ld   b, h                                        ; $6dfc: $44
	ld   b, h                                        ; $6dfd: $44
	ld   b, h                                        ; $6dfe: $44
	ld   d, l                                        ; $6dff: $55
	ld   d, [hl]                                     ; $6e00: $56
	ld   h, a                                        ; $6e01: $67
	ld   [hl], a                                     ; $6e02: $77
	ld   [hl], a                                     ; $6e03: $77
	sbc  d                                           ; $6e04: $9a
	cp   e                                           ; $6e05: $bb
	cp   e                                           ; $6e06: $bb
	xor  b                                           ; $6e07: $a8
	ld   [hl], a                                     ; $6e08: $77
	adc  c                                           ; $6e09: $89
	sbc  d                                           ; $6e0a: $9a
	cp   d                                           ; $6e0b: $ba
	xor  d                                           ; $6e0c: $aa
	xor  d                                           ; $6e0d: $aa
	cp   e                                           ; $6e0e: $bb
	cp   l                                           ; $6e0f: $bd
	cp   e                                           ; $6e10: $bb
	sub  a                                           ; $6e11: $97
	ld   h, [hl]                                     ; $6e12: $66
	ld   h, [hl]                                     ; $6e13: $66
	ld   h, l                                        ; $6e14: $65
	ld   d, e                                        ; $6e15: $53
	ld   hl, $1111                                   ; $6e16: $21 $11 $11
	ld   c, c                                        ; $6e19: $49
	rst  $28                                         ; $6e1a: $ef
	rst  $38                                         ; $6e1b: $ff
	ei                                               ; $6e1c: $fb
	halt                                             ; $6e1d: $76
	ld   b, a                                        ; $6e1e: $47
	ld   a, b                                        ; $6e1f: $78
	ld   [hl], e                                     ; $6e20: $73
	ld   sp, $df2a                                   ; $6e21: $31 $2a $df
	rst  $38                                         ; $6e24: $ff
	rst  $38                                         ; $6e25: $ff
	add  $24                                         ; $6e26: $c6 $24
	ld   b, [hl]                                     ; $6e28: $46
	ld   [hl], h                                     ; $6e29: $74
	ld   de, $1111                                   ; $6e2a: $11 $11 $11
	ld   de, $ffcf                                   ; $6e2d: $11 $cf $ff
	rst  $38                                         ; $6e30: $ff
	ei                                               ; $6e31: $fb
	ld   a, d                                        ; $6e32: $7a
	ld   d, a                                        ; $6e33: $57
	ld   d, d                                        ; $6e34: $52
	ld   de, $1f11                                   ; $6e35: $11 $11 $1f
	rst  $38                                         ; $6e38: $ff
	rst  $38                                         ; $6e39: $ff
	rst  $38                                         ; $6e3a: $ff
	rst  $20                                         ; $6e3b: $e7
	ld   h, $57                                      ; $6e3c: $26 $57
	and  h                                           ; $6e3e: $a4
	ld   de, $1111                                   ; $6e3f: $11 $11 $11
	ld   de, $ff1b                                   ; $6e42: $11 $1b $ff
	rst  $38                                         ; $6e45: $ff
	rst  $38                                         ; $6e46: $ff
	db   $eb                                         ; $6e47: $eb
	and  h                                           ; $6e48: $a4
	ld   h, d                                        ; $6e49: $62
	ld   de, $1411                                   ; $6e4a: $11 $11 $14
	rst  $38                                         ; $6e4d: $ff
	rst  $38                                         ; $6e4e: $ff
	rst  $38                                         ; $6e4f: $ff
	cp   $a6                                         ; $6e50: $fe $a6
	sub  [hl]                                        ; $6e52: $96
	halt                                             ; $6e53: $76
	ld   de, $1111                                   ; $6e54: $11 $11 $11
	ld   de, $ff16                                   ; $6e57: $11 $16 $ff
	rst  $38                                         ; $6e5a: $ff
	rst  $38                                         ; $6e5b: $ff
	ld   sp, hl                                      ; $6e5c: $f9
	and  h                                           ; $6e5d: $a4
	dec  d                                           ; $6e5e: $15
	inc  d                                           ; $6e5f: $14
	ld   de, $8f11                                   ; $6e60: $11 $11 $8f
	rst  $38                                         ; $6e63: $ff
	rst  $38                                         ; $6e64: $ff
	rst  $38                                         ; $6e65: $ff
	and  c                                           ; $6e66: $a1
	ld   de, $3117                                   ; $6e67: $11 $17 $31
	ld   de, $1111                                   ; $6e6a: $11 $11 $11
	rra                                              ; $6e6d: $1f
	rst  $38                                         ; $6e6e: $ff
	rst  $38                                         ; $6e6f: $ff
	rst  $38                                         ; $6e70: $ff
	or   d                                           ; $6e71: $b2
	add  a                                           ; $6e72: $87
	ld   l, c                                        ; $6e73: $69
	ld   de, $1311                                   ; $6e74: $11 $11 $13
	rst  $38                                         ; $6e77: $ff
	rst  $38                                         ; $6e78: $ff
	rst  $38                                         ; $6e79: $ff
	ldh  a, [c]                                      ; $6e7a: $f2
	ld   de, $a838                                   ; $6e7b: $11 $38 $a8
	ld   de, $1111                                   ; $6e7e: $11 $11 $11
	ld   d, $ff                                      ; $6e81: $16 $ff
	rst  $38                                         ; $6e83: $ff
	rst  $38                                         ; $6e84: $ff
	ld   a, [$865b]                                  ; $6e85: $fa $5b $86
	ld   sp, $1311                                   ; $6e88: $31 $11 $13
	xor  a                                           ; $6e8b: $af
	rst  $38                                         ; $6e8c: $ff
	rst  $38                                         ; $6e8d: $ff
	ld   a, [$1611]                                  ; $6e8e: $fa $11 $16
	adc  b                                           ; $6e91: $88
	ld   sp, $1111                                   ; $6e92: $31 $11 $11
	ld   de, $ffff                                   ; $6e95: $11 $ff $ff
	rst  $38                                         ; $6e98: $ff
	ld   a, [$5727]                                  ; $6e99: $fa $27 $57
	ld   d, c                                        ; $6e9c: $51
	ld   de, $7f11                                   ; $6e9d: $11 $11 $7f
	rst  $38                                         ; $6ea0: $ff
	rst  $38                                         ; $6ea1: $ff
	di                                               ; $6ea2: $f3
	ld   de, $dc1b                                   ; $6ea3: $11 $1b $dc
	ld   b, c                                        ; $6ea6: $41
	ld   de, $1311                                   ; $6ea7: $11 $11 $13
	rst  $38                                         ; $6eaa: $ff
	rst  $38                                         ; $6eab: $ff
	rst  $38                                         ; $6eac: $ff
	di                                               ; $6ead: $f3
	ld   a, [hl-]                                    ; $6eae: $3a
	ld   l, d                                        ; $6eaf: $6a
	ld   sp, $1211                                   ; $6eb0: $31 $11 $12
	rst  $38                                         ; $6eb3: $ff
	rst  $38                                         ; $6eb4: $ff
	rst  $38                                         ; $6eb5: $ff
	ld   h, c                                        ; $6eb6: $61
	ld   de, $fa9f                                   ; $6eb7: $11 $9f $fa
	ld   de, $1111                                   ; $6eba: $11 $11 $11
	rra                                              ; $6ebd: $1f
	rst  $38                                         ; $6ebe: $ff
	rst  $38                                         ; $6ebf: $ff
	rst  $38                                         ; $6ec0: $ff
	ld   b, [hl]                                     ; $6ec1: $46
	ret  c                                           ; $6ec2: $d8

	sub  e                                           ; $6ec3: $93
	ld   de, $3f11                                   ; $6ec4: $11 $11 $3f
	rst  $38                                         ; $6ec7: $ff
	rst  $38                                         ; $6ec8: $ff
	di                                               ; $6ec9: $f3
	ld   de, $ff1d                                   ; $6eca: $11 $1d $ff
	sub  c                                           ; $6ecd: $91
	ld   de, $1711                                   ; $6ece: $11 $11 $17
	rst  $38                                         ; $6ed1: $ff
	rst  $38                                         ; $6ed2: $ff
	rst  $38                                         ; $6ed3: $ff
	pop  de                                          ; $6ed4: $d1
	cp   [hl]                                        ; $6ed5: $be
	sbc  b                                           ; $6ed6: $98
	ld   de, $1a11                                   ; $6ed7: $11 $11 $1a
	rst  $38                                         ; $6eda: $ff
	rst  $38                                         ; $6edb: $ff
	or   $11                                         ; $6edc: $f6 $11
	ld   a, [de]                                     ; $6ede: $1a
	rst  $38                                         ; $6edf: $ff
	pop  de                                          ; $6ee0: $d1
	ld   de, $1111                                   ; $6ee1: $11 $11 $11
	rst  $38                                         ; $6ee4: $ff
	rst  $38                                         ; $6ee5: $ff
	rst  $38                                         ; $6ee6: $ff
	ldh  a, [c]                                      ; $6ee7: $f2
	cp   a                                           ; $6ee8: $bf
	ld   a, c                                        ; $6ee9: $79
	ld   de, $1611                                   ; $6eea: $11 $11 $16
	rst  $38                                         ; $6eed: $ff
	rst  $38                                         ; $6eee: $ff
	ld   hl, sp+$11                                  ; $6eef: $f8 $11
	jr   @+$01                                       ; $6ef1: $18 $ff

	pop  de                                          ; $6ef3: $d1
	ld   de, $1111                                   ; $6ef4: $11 $11 $11
	rst  $38                                         ; $6ef7: $ff
	rst  $38                                         ; $6ef8: $ff
	db   $fd                                         ; $6ef9: $fd
	ldh  a, [c]                                      ; $6efa: $f2
	xor  a                                           ; $6efb: $af
	sub  a                                           ; $6efc: $97
	ld   de, $1711                                   ; $6efd: $11 $11 $17
	rst  $38                                         ; $6f00: $ff
	rst  $38                                         ; $6f01: $ff
	di                                               ; $6f02: $f3
	ld   de, $ff1c                                   ; $6f03: $11 $1c $ff
	and  c                                           ; $6f06: $a1
	ld   de, $1b11                                   ; $6f07: $11 $11 $1b
	rst  $38                                         ; $6f0a: $ff
	rst  $38                                         ; $6f0b: $ff
	rst  JumpTable                                         ; $6f0c: $df
	db   $d3                                         ; $6f0d: $d3
	rst  $38                                         ; $6f0e: $ff
	add  c                                           ; $6f0f: $81
	ld   de, $1f11                                   ; $6f10: $11 $11 $1f
	rst  $38                                         ; $6f13: $ff
	rst  $38                                         ; $6f14: $ff
	pop  af                                          ; $6f15: $f1
	ld   de, $ff3f                                   ; $6f16: $11 $3f $ff
	ld   sp, $1111                                   ; $6f19: $31 $11 $11
	rra                                              ; $6f1c: $1f
	rst  $38                                         ; $6f1d: $ff
	rst  $38                                         ; $6f1e: $ff
	rst  JumpTable                                         ; $6f1f: $df
	inc  e                                           ; $6f20: $1c
	db   $fd                                         ; $6f21: $fd
	ld   d, c                                        ; $6f22: $51
	ld   de, $cf11                                   ; $6f23: $11 $11 $cf
	rst  $38                                         ; $6f26: $ff
	rst  $38                                         ; $6f27: $ff
	ld   de, $ff16                                   ; $6f28: $11 $16 $ff
	pop  hl                                          ; $6f2b: $e1
	ld   de, $1211                                   ; $6f2c: $11 $11 $12
	rst  $38                                         ; $6f2f: $ff
	rst  $38                                         ; $6f30: $ff
	rst  $38                                         ; $6f31: $ff
	call nc, $c1ff                                   ; $6f32: $d4 $ff $c1
	ld   de, $7f11                                   ; $6f35: $11 $11 $7f
	rst  $38                                         ; $6f38: $ff
	rst  $38                                         ; $6f39: $ff
	ld   [hl], c                                     ; $6f3a: $71
	dec  d                                           ; $6f3b: $15
	rst  JumpTable                                         ; $6f3c: $df
	push af                                          ; $6f3d: $f5
	ld   de, $1111                                   ; $6f3e: $11 $11 $11
	rst  $38                                         ; $6f41: $ff
	rst  $38                                         ; $6f42: $ff
	rst  $38                                         ; $6f43: $ff
	ldh  [c], a                                      ; $6f44: $e2
	rst  $38                                         ; $6f45: $ff
	or   e                                           ; $6f46: $b3
	ld   de, $6f11                                   ; $6f47: $11 $11 $6f
	rst  $38                                         ; $6f4a: $ff
	rst  $38                                         ; $6f4b: $ff
	ld   [hl], c                                     ; $6f4c: $71
	ld   d, $cf                                      ; $6f4d: $16 $cf
	pop  af                                          ; $6f4f: $f1
	ld   de, $1311                                   ; $6f50: $11 $11 $13
	rst  $38                                         ; $6f53: $ff
	rst  $38                                         ; $6f54: $ff
	rst  $38                                         ; $6f55: $ff
	push de                                          ; $6f56: $d5
	db   $fd                                         ; $6f57: $fd
	ld   [hl], c                                     ; $6f58: $71
	ld   de, $bf11                                   ; $6f59: $11 $11 $bf
	rst  $38                                         ; $6f5c: $ff
	rst  $38                                         ; $6f5d: $ff
	ld   b, c                                        ; $6f5e: $41
	inc  l                                           ; $6f5f: $2c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f60: $cf
	sub  c                                           ; $6f61: $91
	ld   de, $1f11                                   ; $6f62: $11 $11 $1f
	rst  $38                                         ; $6f65: $ff
	rst  $38                                         ; $6f66: $ff
	rst  $38                                         ; $6f67: $ff
	ld   c, a                                        ; $6f68: $4f
	rst  $30                                         ; $6f69: $f7
	ld   de, $1f11                                   ; $6f6a: $11 $11 $1f
	rst  $38                                         ; $6f6d: $ff
	rst  $38                                         ; $6f6e: $ff
	rst  $30                                         ; $6f6f: $f7
	ld   d, $fa                                      ; $6f70: $16 $fa
	rst  $10                                         ; $6f72: $d7
	ld   de, $1111                                   ; $6f73: $11 $11 $11
	rst  $38                                         ; $6f76: $ff
	rst  $38                                         ; $6f77: $ff
	rst  $38                                         ; $6f78: $ff
	ld   sp, hl                                      ; $6f79: $f9
	rst  $38                                         ; $6f7a: $ff
	ld   b, c                                        ; $6f7b: $41
	ld   de, $ff16                                   ; $6f7c: $11 $16 $ff
	rst  $38                                         ; $6f7f: $ff
	rst  $38                                         ; $6f80: $ff
	add  d                                           ; $6f81: $82
	cp   a                                           ; $6f82: $bf
	sbc  h                                           ; $6f83: $9c
	ld   hl, $1111                                   ; $6f84: $21 $11 $11
	ld   l, a                                        ; $6f87: $6f
	rst  $38                                         ; $6f88: $ff
	db   $fd                                         ; $6f89: $fd
	rst  $38                                         ; $6f8a: $ff
	rst  $38                                         ; $6f8b: $ff
	pop  af                                          ; $6f8c: $f1
	ld   de, rAUD1LEN                                   ; $6f8d: $11 $11 $ff
	rst  $38                                         ; $6f90: $ff
	db   $fc                                         ; $6f91: $fc
	ld   hl, sp+$5f                                  ; $6f92: $f8 $5f
	sub  l                                           ; $6f94: $95
	sub  c                                           ; $6f95: $91
	ld   de, $1f11                                   ; $6f96: $11 $11 $1f
	rst  $38                                         ; $6f99: $ff
	db   $fd                                         ; $6f9a: $fd
	rst  $38                                         ; $6f9b: $ff
	rst  $38                                         ; $6f9c: $ff
	db   $f4                                         ; $6f9d: $f4
	ld   de, rAUD1LEN                                   ; $6f9e: $11 $11 $ff
	rst  $38                                         ; $6fa1: $ff
	db   $fc                                         ; $6fa2: $fc
	cp   $5c                                         ; $6fa3: $fe $5c
	sub  l                                           ; $6fa5: $95
	sub  c                                           ; $6fa6: $91
	ld   de, $1f11                                   ; $6fa7: $11 $11 $1f
	rst  $38                                         ; $6faa: $ff
	db   $fc                                         ; $6fab: $fc
	rst  $38                                         ; $6fac: $ff
	rst  $38                                         ; $6fad: $ff
	pop  af                                          ; $6fae: $f1
	ld   de, $e713                                   ; $6faf: $11 $13 $e7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fb2: $cf
	rst  $38                                         ; $6fb3: $ff
	db   $fc                                         ; $6fb4: $fc
	jr   c, jr_0dd_700f                              ; $6fb5: $38 $58

	or   c                                           ; $6fb7: $b1
	ld   de, $cf11                                   ; $6fb8: $11 $11 $cf
	rst  $38                                         ; $6fbb: $ff
	ld   l, h                                        ; $6fbc: $6c
	rst  $38                                         ; $6fbd: $ff
	rst  $38                                         ; $6fbe: $ff
	pop  bc                                          ; $6fbf: $c1
	rla                                              ; $6fc0: $17
	ld   c, a                                        ; $6fc1: $4f
	ld   d, c                                        ; $6fc2: $51
	ld   c, [hl]                                     ; $6fc3: $4e
	rst  $38                                         ; $6fc4: $ff
	pop  af                                          ; $6fc5: $f1
	daa                                              ; $6fc6: $27
	xor  l                                           ; $6fc7: $ad
	and  c                                           ; $6fc8: $a1
	ld   de, rAUD1HIGH                                   ; $6fc9: $11 $14 $ff
	or   $4f                                         ; $6fcc: $f6 $4f
	rst  $38                                         ; $6fce: $ff
	cp   $15                                         ; $6fcf: $fe $15
	rst  $38                                         ; $6fd1: $ff
	db   $e4                                         ; $6fd2: $e4
	ld   de, $e9ef                                   ; $6fd3: $11 $ef $e9
	ld   de, $d87d                                   ; $6fd6: $11 $7d $d8
	ld   de, $4e11                                   ; $6fd9: $11 $11 $4e
	rst  $28                                         ; $6fdc: $ef
	ld   l, b                                        ; $6fdd: $68
	rst  $38                                         ; $6fde: $ff
	rst  $38                                         ; $6fdf: $ff
	rst  $30                                         ; $6fe0: $f7
	rst  $28                                         ; $6fe1: $ef
	db   $fc                                         ; $6fe2: $fc
	ld   sp, $c96d                                   ; $6fe3: $31 $6d $c9
	ld   b, c                                        ; $6fe6: $41
	dec  [hl]                                        ; $6fe7: $35
	ld   h, [hl]                                     ; $6fe8: $66
	ld   sp, $1211                                   ; $6fe9: $31 $11 $12
	ld   c, l                                        ; $6fec: $4d
	cp   c                                           ; $6fed: $b9
	rst  $38                                         ; $6fee: $ff
	rst  $38                                         ; $6fef: $ff
	rst  $38                                         ; $6ff0: $ff
	rst  $28                                         ; $6ff1: $ef
	rst  $38                                         ; $6ff2: $ff
	xor  b                                           ; $6ff3: $a8
	ld   [hl], a                                     ; $6ff4: $77
	ld   a, b                                        ; $6ff5: $78
	ld   h, l                                        ; $6ff6: $65
	ld   d, e                                        ; $6ff7: $53
	ld   [hl-], a                                    ; $6ff8: $32
	ld   hl, $1111                                   ; $6ff9: $21 $11 $11
	add  hl, hl                                      ; $6ffc: $29
	adc  c                                           ; $6ffd: $89
	xor  l                                           ; $6ffe: $ad
	rst  $38                                         ; $6fff: $ff
	cp   $fe                                         ; $7000: $fe $fe
	rst  $38                                         ; $7002: $ff
	db   $ec                                         ; $7003: $ec
	sbc  b                                           ; $7004: $98
	ld   [hl], a                                     ; $7005: $77
	ld   d, l                                        ; $7006: $55
	ld   d, [hl]                                     ; $7007: $56
	ld   d, h                                        ; $7008: $54
	ld   b, e                                        ; $7009: $43
	ld   hl, $2502                                   ; $700a: $21 $02 $25
	ld   h, l                                        ; $700d: $65
	ld   h, a                                        ; $700e: $67

jr_0dd_700f:
	adc  d                                           ; $700f: $8a
	cp   e                                           ; $7010: $bb
	call z, $ecdf                                    ; $7011: $cc $df $ec
	cp   e                                           ; $7014: $bb
	sbc  b                                           ; $7015: $98
	ld   h, [hl]                                     ; $7016: $66
	ld   [hl], a                                     ; $7017: $77
	ld   a, c                                        ; $7018: $79
	add  a                                           ; $7019: $87
	ld   [hl], a                                     ; $701a: $77
	halt                                             ; $701b: $76
	ld   [hl], a                                     ; $701c: $77
	ld   [hl], a                                     ; $701d: $77
	ld   d, h                                        ; $701e: $54
	ld   b, h                                        ; $701f: $44
	ld   b, l                                        ; $7020: $45
	ld   h, [hl]                                     ; $7021: $66
	ld   a, b                                        ; $7022: $78
	sbc  d                                           ; $7023: $9a
	xor  d                                           ; $7024: $aa
	cp   e                                           ; $7025: $bb
	sbc  c                                           ; $7026: $99
	sbc  c                                           ; $7027: $99
	adc  c                                           ; $7028: $89
	sbc  d                                           ; $7029: $9a
	xor  e                                           ; $702a: $ab
	xor  d                                           ; $702b: $aa
	sbc  c                                           ; $702c: $99
	sbc  c                                           ; $702d: $99
	adc  b                                           ; $702e: $88
	halt                                             ; $702f: $76
	halt                                             ; $7030: $76
	ld   h, [hl]                                     ; $7031: $66
	ld   [hl], a                                     ; $7032: $77
	ld   a, b                                        ; $7033: $78
	adc  b                                           ; $7034: $88
	sbc  b                                           ; $7035: $98
	adc  c                                           ; $7036: $89
	adc  b                                           ; $7037: $88
	add  a                                           ; $7038: $87
	ld   h, [hl]                                     ; $7039: $66
	ld   a, b                                        ; $703a: $78
	sbc  d                                           ; $703b: $9a
	sbc  c                                           ; $703c: $99
	sbc  c                                           ; $703d: $99
	sbc  c                                           ; $703e: $99
	sbc  b                                           ; $703f: $98
	adc  b                                           ; $7040: $88
	sbc  b                                           ; $7041: $98
	adc  b                                           ; $7042: $88
	adc  c                                           ; $7043: $89
	sbc  c                                           ; $7044: $99
	sbc  c                                           ; $7045: $99
	adc  b                                           ; $7046: $88
	sbc  b                                           ; $7047: $98
	add  a                                           ; $7048: $87
	ld   [hl], a                                     ; $7049: $77
	ld   h, [hl]                                     ; $704a: $66
	ld   a, b                                        ; $704b: $78
	adc  b                                           ; $704c: $88
	adc  b                                           ; $704d: $88
	sbc  c                                           ; $704e: $99
	adc  c                                           ; $704f: $89
	add  a                                           ; $7050: $87
	ld   a, b                                        ; $7051: $78
	adc  b                                           ; $7052: $88
	adc  b                                           ; $7053: $88
	sbc  c                                           ; $7054: $99
	xor  d                                           ; $7055: $aa
	sbc  c                                           ; $7056: $99
	sbc  b                                           ; $7057: $98
	sbc  b                                           ; $7058: $98
	add  a                                           ; $7059: $87
	halt                                             ; $705a: $76
	ld   [hl], a                                     ; $705b: $77
	adc  b                                           ; $705c: $88
	adc  b                                           ; $705d: $88
	adc  b                                           ; $705e: $88
	sbc  b                                           ; $705f: $98
	sbc  b                                           ; $7060: $98
	ld   [hl], a                                     ; $7061: $77
	ld   a, b                                        ; $7062: $78
	add  a                                           ; $7063: $87
	ld   a, b                                        ; $7064: $78
	adc  c                                           ; $7065: $89
	sbc  c                                           ; $7066: $99
	adc  c                                           ; $7067: $89
	sbc  b                                           ; $7068: $98
	adc  c                                           ; $7069: $89
	add  a                                           ; $706a: $87
	ld   [hl], a                                     ; $706b: $77
	ld   [hl], a                                     ; $706c: $77
	adc  b                                           ; $706d: $88
	ld   a, b                                        ; $706e: $78
	adc  c                                           ; $706f: $89
	adc  b                                           ; $7070: $88
	adc  b                                           ; $7071: $88
	adc  b                                           ; $7072: $88
	adc  b                                           ; $7073: $88
	ld   [hl], a                                     ; $7074: $77
	ld   [hl], a                                     ; $7075: $77
	sbc  b                                           ; $7076: $98
	sbc  b                                           ; $7077: $98
	adc  b                                           ; $7078: $88
	adc  b                                           ; $7079: $88
	adc  c                                           ; $707a: $89
	sbc  b                                           ; $707b: $98
	ld   a, b                                        ; $707c: $78
	adc  b                                           ; $707d: $88
	add  a                                           ; $707e: $87
	ld   a, b                                        ; $707f: $78
	sbc  c                                           ; $7080: $99
	adc  c                                           ; $7081: $89
	adc  b                                           ; $7082: $88
	adc  c                                           ; $7083: $89
	sbc  b                                           ; $7084: $98
	ld   [hl], a                                     ; $7085: $77
	ld   a, b                                        ; $7086: $78
	adc  b                                           ; $7087: $88
	adc  b                                           ; $7088: $88
	ld   a, b                                        ; $7089: $78
	adc  b                                           ; $708a: $88
	adc  b                                           ; $708b: $88
	adc  b                                           ; $708c: $88
	adc  b                                           ; $708d: $88
	adc  b                                           ; $708e: $88
	ld   [hl], a                                     ; $708f: $77
	ld   a, b                                        ; $7090: $78
	adc  b                                           ; $7091: $88
	adc  b                                           ; $7092: $88
	adc  c                                           ; $7093: $89
	adc  b                                           ; $7094: $88
	sbc  b                                           ; $7095: $98
	adc  b                                           ; $7096: $88
	adc  b                                           ; $7097: $88
	adc  b                                           ; $7098: $88
	ld   [hl], a                                     ; $7099: $77
	ld   a, b                                        ; $709a: $78
	adc  b                                           ; $709b: $88
	adc  b                                           ; $709c: $88
	adc  b                                           ; $709d: $88
	adc  b                                           ; $709e: $88
	adc  b                                           ; $709f: $88
	ld   a, b                                        ; $70a0: $78
	adc  b                                           ; $70a1: $88
	add  a                                           ; $70a2: $87
	ld   a, b                                        ; $70a3: $78
	adc  c                                           ; $70a4: $89
	adc  b                                           ; $70a5: $88
	adc  b                                           ; $70a6: $88
	adc  b                                           ; $70a7: $88
	adc  b                                           ; $70a8: $88
	adc  b                                           ; $70a9: $88
	adc  b                                           ; $70aa: $88
	adc  b                                           ; $70ab: $88
	adc  b                                           ; $70ac: $88
	adc  b                                           ; $70ad: $88
	adc  c                                           ; $70ae: $89
	adc  b                                           ; $70af: $88
	add  a                                           ; $70b0: $87
	adc  b                                           ; $70b1: $88
	adc  b                                           ; $70b2: $88
	ld   [hl], a                                     ; $70b3: $77
	ld   a, b                                        ; $70b4: $78
	adc  b                                           ; $70b5: $88
	adc  b                                           ; $70b6: $88
	sbc  b                                           ; $70b7: $98
	adc  c                                           ; $70b8: $89
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
	ld   [hl], a                                     ; $70c4: $77
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
	sbc  b                                           ; $7208: $98
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
	adc  c                                           ; $721b: $89
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
	adc  c                                           ; $722f: $89
	adc  b                                           ; $7230: $88
	sbc  b                                           ; $7231: $98
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
	ld   a, b                                        ; $7240: $78
	add  a                                           ; $7241: $87
	sbc  c                                           ; $7242: $99
	adc  b                                           ; $7243: $88
	adc  b                                           ; $7244: $88
	sbc  b                                           ; $7245: $98
	adc  b                                           ; $7246: $88
	adc  b                                           ; $7247: $88
	adc  c                                           ; $7248: $89
	adc  b                                           ; $7249: $88
	sbc  b                                           ; $724a: $98
	adc  b                                           ; $724b: $88
	adc  b                                           ; $724c: $88
	adc  b                                           ; $724d: $88
	adc  c                                           ; $724e: $89
	adc  b                                           ; $724f: $88
	adc  b                                           ; $7250: $88
	sbc  b                                           ; $7251: $98
	adc  b                                           ; $7252: $88
	adc  c                                           ; $7253: $89
	adc  b                                           ; $7254: $88
	adc  b                                           ; $7255: $88
	add  a                                           ; $7256: $87
	adc  b                                           ; $7257: $88
	adc  b                                           ; $7258: $88
	adc  c                                           ; $7259: $89
	sbc  b                                           ; $725a: $98
	adc  b                                           ; $725b: $88
	adc  b                                           ; $725c: $88
	adc  b                                           ; $725d: $88
	sbc  b                                           ; $725e: $98
	adc  c                                           ; $725f: $89
	adc  b                                           ; $7260: $88
	adc  b                                           ; $7261: $88
	adc  b                                           ; $7262: $88
	sbc  b                                           ; $7263: $98
	adc  b                                           ; $7264: $88
	adc  b                                           ; $7265: $88
	adc  b                                           ; $7266: $88
	adc  b                                           ; $7267: $88
	adc  b                                           ; $7268: $88
	adc  b                                           ; $7269: $88
	adc  b                                           ; $726a: $88
	sbc  c                                           ; $726b: $99
	adc  b                                           ; $726c: $88
	adc  b                                           ; $726d: $88
	sbc  c                                           ; $726e: $99
	add  a                                           ; $726f: $87
	adc  c                                           ; $7270: $89
	adc  b                                           ; $7271: $88
	sbc  c                                           ; $7272: $99
	adc  b                                           ; $7273: $88
	adc  b                                           ; $7274: $88
	adc  b                                           ; $7275: $88
	adc  c                                           ; $7276: $89
	adc  b                                           ; $7277: $88
	adc  b                                           ; $7278: $88
	adc  b                                           ; $7279: $88
	adc  b                                           ; $727a: $88
	adc  b                                           ; $727b: $88
	adc  b                                           ; $727c: $88
	adc  b                                           ; $727d: $88
	adc  c                                           ; $727e: $89
	adc  b                                           ; $727f: $88
	sbc  b                                           ; $7280: $98
	adc  b                                           ; $7281: $88
	adc  c                                           ; $7282: $89
	adc  b                                           ; $7283: $88
	adc  b                                           ; $7284: $88
	adc  b                                           ; $7285: $88
	adc  b                                           ; $7286: $88
	adc  b                                           ; $7287: $88
	adc  b                                           ; $7288: $88
	sbc  b                                           ; $7289: $98
	adc  b                                           ; $728a: $88
	adc  b                                           ; $728b: $88
	adc  b                                           ; $728c: $88
	adc  b                                           ; $728d: $88
	sbc  b                                           ; $728e: $98
	adc  c                                           ; $728f: $89
	adc  b                                           ; $7290: $88
	adc  c                                           ; $7291: $89
	adc  b                                           ; $7292: $88
	sbc  b                                           ; $7293: $98
	adc  b                                           ; $7294: $88
	adc  c                                           ; $7295: $89
	adc  b                                           ; $7296: $88
	adc  b                                           ; $7297: $88
	adc  b                                           ; $7298: $88
	adc  b                                           ; $7299: $88
	adc  b                                           ; $729a: $88
	sbc  b                                           ; $729b: $98
	adc  b                                           ; $729c: $88
	adc  c                                           ; $729d: $89
	adc  b                                           ; $729e: $88
	sbc  b                                           ; $729f: $98
	adc  b                                           ; $72a0: $88
	adc  b                                           ; $72a1: $88
	ld   a, b                                        ; $72a2: $78
	sbc  b                                           ; $72a3: $98
	adc  b                                           ; $72a4: $88
	add  a                                           ; $72a5: $87
	adc  b                                           ; $72a6: $88
	ld   a, b                                        ; $72a7: $78
	adc  b                                           ; $72a8: $88
	adc  b                                           ; $72a9: $88
	sbc  b                                           ; $72aa: $98
	adc  c                                           ; $72ab: $89
	adc  b                                           ; $72ac: $88
	adc  b                                           ; $72ad: $88
	sbc  b                                           ; $72ae: $98
	adc  b                                           ; $72af: $88
	adc  b                                           ; $72b0: $88
	adc  c                                           ; $72b1: $89
	ld   [hl], a                                     ; $72b2: $77
	adc  b                                           ; $72b3: $88
	add  a                                           ; $72b4: $87
	ld   a, b                                        ; $72b5: $78
	sbc  c                                           ; $72b6: $99
	adc  b                                           ; $72b7: $88
	adc  b                                           ; $72b8: $88
	adc  b                                           ; $72b9: $88
	ld   a, b                                        ; $72ba: $78
	adc  b                                           ; $72bb: $88
	ld   a, b                                        ; $72bc: $78
	ld   a, b                                        ; $72bd: $78
	sub  a                                           ; $72be: $97
	sbc  c                                           ; $72bf: $99
	adc  b                                           ; $72c0: $88
	add  a                                           ; $72c1: $87
	adc  b                                           ; $72c2: $88
	adc  b                                           ; $72c3: $88
	ld   a, b                                        ; $72c4: $78
	adc  b                                           ; $72c5: $88
	add  a                                           ; $72c6: $87
	ld   a, b                                        ; $72c7: $78
	ld   [hl], a                                     ; $72c8: $77
	adc  c                                           ; $72c9: $89
	add  a                                           ; $72ca: $87
	sbc  b                                           ; $72cb: $98
	adc  b                                           ; $72cc: $88
	adc  b                                           ; $72cd: $88
	ld   a, b                                        ; $72ce: $78
	adc  b                                           ; $72cf: $88
	ld   a, b                                        ; $72d0: $78
	ld   [hl], a                                     ; $72d1: $77
	ld   [hl], a                                     ; $72d2: $77
	adc  c                                           ; $72d3: $89
	add  a                                           ; $72d4: $87
	adc  c                                           ; $72d5: $89
	sbc  b                                           ; $72d6: $98
	ld   a, c                                        ; $72d7: $79
	add  a                                           ; $72d8: $87
	adc  c                                           ; $72d9: $89
	add  a                                           ; $72da: $87
	ld   a, b                                        ; $72db: $78
	adc  c                                           ; $72dc: $89
	add  a                                           ; $72dd: $87
	adc  b                                           ; $72de: $88
	adc  b                                           ; $72df: $88
	adc  b                                           ; $72e0: $88
	ld   [hl], a                                     ; $72e1: $77
	sbc  b                                           ; $72e2: $98
	adc  b                                           ; $72e3: $88
	add  a                                           ; $72e4: $87
	ld   a, c                                        ; $72e5: $79
	ld   [hl], a                                     ; $72e6: $77
	adc  b                                           ; $72e7: $88
	ld   a, c                                        ; $72e8: $79
	add  a                                           ; $72e9: $87
	adc  b                                           ; $72ea: $88
	adc  b                                           ; $72eb: $88
	ld   a, b                                        ; $72ec: $78
	sbc  b                                           ; $72ed: $98
	ld   a, b                                        ; $72ee: $78
	adc  c                                           ; $72ef: $89
	add  a                                           ; $72f0: $87
	ld   [hl], a                                     ; $72f1: $77
	adc  b                                           ; $72f2: $88
	sbc  b                                           ; $72f3: $98
	ld   a, c                                        ; $72f4: $79
	add  a                                           ; $72f5: $87
	adc  c                                           ; $72f6: $89
	sbc  c                                           ; $72f7: $99
	add  a                                           ; $72f8: $87
	adc  b                                           ; $72f9: $88
	adc  b                                           ; $72fa: $88
	adc  b                                           ; $72fb: $88
	ld   a, c                                        ; $72fc: $79
	add  a                                           ; $72fd: $87
	adc  b                                           ; $72fe: $88
	sub  a                                           ; $72ff: $97
	ld   a, b                                        ; $7300: $78
	sbc  b                                           ; $7301: $98
	add  a                                           ; $7302: $87
	ld   a, b                                        ; $7303: $78
	adc  b                                           ; $7304: $88
	ld   a, b                                        ; $7305: $78
	sbc  b                                           ; $7306: $98
	add  a                                           ; $7307: $87
	adc  c                                           ; $7308: $89
	adc  b                                           ; $7309: $88
	adc  b                                           ; $730a: $88
	adc  c                                           ; $730b: $89
	ld   a, b                                        ; $730c: $78
	adc  b                                           ; $730d: $88
	ld   a, b                                        ; $730e: $78
	sub  a                                           ; $730f: $97
	adc  b                                           ; $7310: $88
	adc  b                                           ; $7311: $88
	adc  b                                           ; $7312: $88
	add  a                                           ; $7313: $87
	adc  b                                           ; $7314: $88
	adc  b                                           ; $7315: $88
	add  a                                           ; $7316: $87
	adc  b                                           ; $7317: $88
	adc  b                                           ; $7318: $88
	adc  b                                           ; $7319: $88
	add  a                                           ; $731a: $87
	ld   a, c                                        ; $731b: $79
	adc  b                                           ; $731c: $88
	ld   a, b                                        ; $731d: $78
	adc  b                                           ; $731e: $88
	add  a                                           ; $731f: $87
	adc  b                                           ; $7320: $88
	adc  b                                           ; $7321: $88
	adc  b                                           ; $7322: $88
	adc  b                                           ; $7323: $88
	adc  b                                           ; $7324: $88
	add  a                                           ; $7325: $87
	ld   a, b                                        ; $7326: $78
	adc  c                                           ; $7327: $89
	adc  c                                           ; $7328: $89
	adc  b                                           ; $7329: $88
	ld   [hl], a                                     ; $732a: $77
	ld   a, b                                        ; $732b: $78
	adc  b                                           ; $732c: $88
	sbc  b                                           ; $732d: $98
	add  a                                           ; $732e: $87
	ld   a, b                                        ; $732f: $78
	sbc  b                                           ; $7330: $98
	adc  b                                           ; $7331: $88
	adc  b                                           ; $7332: $88
	adc  b                                           ; $7333: $88
	adc  c                                           ; $7334: $89
	sbc  c                                           ; $7335: $99
	adc  b                                           ; $7336: $88
	adc  b                                           ; $7337: $88
	adc  b                                           ; $7338: $88
	adc  b                                           ; $7339: $88
	sbc  c                                           ; $733a: $99
	adc  b                                           ; $733b: $88
	adc  b                                           ; $733c: $88
	adc  b                                           ; $733d: $88
	adc  b                                           ; $733e: $88
	adc  c                                           ; $733f: $89
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

Call_0dd_73a9:
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

jr_0dd_744b:
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
	adc  c                                           ; $745a: $89
	sbc  b                                           ; $745b: $98
	ld   [hl], a                                     ; $745c: $77
	adc  c                                           ; $745d: $89
	add  [hl]                                        ; $745e: $86
	ld   a, c                                        ; $745f: $79
	cp   c                                           ; $7460: $b9
	ld   h, l                                        ; $7461: $65
	adc  h                                           ; $7462: $8c
	and  [hl]                                        ; $7463: $a6
	ld   e, b                                        ; $7464: $58
	ret                                              ; $7465: $c9


	ld   d, [hl]                                     ; $7466: $56
	xor  e                                           ; $7467: $ab
	ld   d, h                                        ; $7468: $54
	adc  d                                           ; $7469: $8a
	add  l                                           ; $746a: $85
	ld   a, h                                        ; $746b: $7c
	or   l                                           ; $746c: $b5
	jr   c, jr_0dd_744b                              ; $746d: $38 $dc

	add  h                                           ; $746f: $84
	ld   a, l                                        ; $7470: $7d
	push bc                                          ; $7471: $c5
	ld   e, e                                        ; $7472: $5b
	or   h                                           ; $7473: $b4
	add  hl, hl                                      ; $7474: $29
	ret  c                                           ; $7475: $d8

	inc  d                                           ; $7476: $14
	cp   h                                           ; $7477: $bc
	ld   h, h                                        ; $7478: $64
	xor  h                                           ; $7479: $ac
	add  e                                           ; $747a: $83
	ld   l, a                                        ; $747b: $6f
	ld   sp, hl                                      ; $747c: $f9
	dec  d                                           ; $747d: $15
	reti                                             ; $747e: $d9


	ld   [hl], $b6                                   ; $747f: $36 $b6
	ld   de, $3299                                   ; $7481: $11 $99 $32
	xor  [hl]                                        ; $7484: $ae
	ld   d, d                                        ; $7485: $52
	xor  h                                           ; $7486: $ac
	ld   [hl], a                                     ; $7487: $77
	rst  $28                                         ; $7488: $ef
	add  $58                                         ; $7489: $c6 $58
	ld   h, e                                        ; $748b: $63
	ld   h, a                                        ; $748c: $67
	halt                                             ; $748d: $76
	ld   b, e                                        ; $748e: $43
	inc  [hl]                                        ; $748f: $34
	ld   e, b                                        ; $7490: $58
	ld   [hl], a                                     ; $7491: $77
	sbc  d                                           ; $7492: $9a
	sbc  c                                           ; $7493: $99
	adc  b                                           ; $7494: $88
	sbc  c                                           ; $7495: $99
	ld   h, [hl]                                     ; $7496: $66
	adc  c                                           ; $7497: $89
	and  a                                           ; $7498: $a7
	ld   l, b                                        ; $7499: $68
	and  a                                           ; $749a: $a7
	ld   h, a                                        ; $749b: $67
	xor  d                                           ; $749c: $aa
	sbc  b                                           ; $749d: $98
	ld   a, b                                        ; $749e: $78
	xor  d                                           ; $749f: $aa
	sbc  c                                           ; $74a0: $99
	adc  c                                           ; $74a1: $89
	halt                                             ; $74a2: $76
	ld   h, a                                        ; $74a3: $67
	ld   [hl], l                                     ; $74a4: $75
	ld   d, [hl]                                     ; $74a5: $56
	halt                                             ; $74a6: $76
	ld   h, a                                        ; $74a7: $67
	sbc  d                                           ; $74a8: $9a
	xor  b                                           ; $74a9: $a8
	cp   d                                           ; $74aa: $ba
	adc  b                                           ; $74ab: $88
	xor  c                                           ; $74ac: $a9
	ld   a, b                                        ; $74ad: $78
	ld   [hl], a                                     ; $74ae: $77
	sbc  c                                           ; $74af: $99
	halt                                             ; $74b0: $76
	adc  d                                           ; $74b1: $8a
	and  [hl]                                        ; $74b2: $a6
	adc  h                                           ; $74b3: $8c
	or   a                                           ; $74b4: $b7
	ld   d, [hl]                                     ; $74b5: $56
	ld   [hl], a                                     ; $74b6: $77
	ld   h, l                                        ; $74b7: $65
	ld   l, c                                        ; $74b8: $69
	ld   [hl], l                                     ; $74b9: $75
	ld   e, c                                        ; $74ba: $59
	and  a                                           ; $74bb: $a7
	ld   l, d                                        ; $74bc: $6a
	reti                                             ; $74bd: $d9


	ld   l, b                                        ; $74be: $68
	call z, $bf98                                    ; $74bf: $cc $98 $bf
	ret  z                                           ; $74c2: $c8

	adc  d                                           ; $74c3: $8a
	sub  a                                           ; $74c4: $97
	ld   h, l                                        ; $74c5: $65
	ld   h, l                                        ; $74c6: $65
	ld   b, c                                        ; $74c7: $41
	inc  hl                                          ; $74c8: $23
	ld   de, $3414                                   ; $74c9: $11 $14 $34
	adc  l                                           ; $74cc: $8d
	set  7, a                                        ; $74cd: $cb $ff
	rst  $38                                         ; $74cf: $ff
	rst  $28                                         ; $74d0: $ef
	rst  $38                                         ; $74d1: $ff
	cp   h                                           ; $74d2: $bc
	cp   d                                           ; $74d3: $ba
	ld   [hl], a                                     ; $74d4: $77
	ld   d, a                                        ; $74d5: $57
	sub  h                                           ; $74d6: $94
	inc  sp                                          ; $74d7: $33
	ld   b, e                                        ; $74d8: $43
	ld   de, $1112                                   ; $74d9: $11 $12 $11
	ld   e, a                                        ; $74dc: $5f
	call z, $ffff                                    ; $74dd: $cc $ff $ff
	rst  $28                                         ; $74e0: $ef
	rst  $38                                         ; $74e1: $ff
	set  3, d                                        ; $74e2: $cb $da
	sub  e                                           ; $74e4: $93
	ld   c, c                                        ; $74e5: $49
	ld   h, h                                        ; $74e6: $64
	dec  [hl]                                        ; $74e7: $35
	inc  sp                                          ; $74e8: $33
	ld   de, $3411                                   ; $74e9: $11 $11 $34
	jr   @+$01                                       ; $74ec: $18 $ff

	rst  $38                                         ; $74ee: $ff
	rst  JumpTable                                         ; $74ef: $df
	db   $fd                                         ; $74f0: $fd
	xor  a                                           ; $74f1: $af
	db   $fc                                         ; $74f2: $fc
	or   l                                           ; $74f3: $b5
	ld   c, d                                        ; $74f4: $4a
	ld   d, e                                        ; $74f5: $53
	ld   a, d                                        ; $74f6: $7a
	halt                                             ; $74f7: $76
	ld   d, d                                        ; $74f8: $52
	ld   de, $1811                                   ; $74f9: $11 $11 $18
	rla                                              ; $74fc: $17
	rst  $38                                         ; $74fd: $ff
	rst  $38                                         ; $74fe: $ff
	db   $fd                                         ; $74ff: $fd
	db   $fd                                         ; $7500: $fd
	call c, $b6fd                                    ; $7501: $dc $fd $b6
	inc  h                                           ; $7504: $24
	ld   h, a                                        ; $7505: $67
	ld   c, c                                        ; $7506: $49
	cp   d                                           ; $7507: $ba
	ld   b, c                                        ; $7508: $41
	ld   de, $1711                                   ; $7509: $11 $11 $17
	dec  a                                           ; $750c: $3d
	rst  $38                                         ; $750d: $ff
	rst  $38                                         ; $750e: $ff
	ret                                              ; $750f: $c9


	rst  $38                                         ; $7510: $ff
	cp   l                                           ; $7511: $bd
	db   $ec                                         ; $7512: $ec
	pop  hl                                          ; $7513: $e1
	dec  d                                           ; $7514: $15
	sbc  b                                           ; $7515: $98
	ld   a, d                                        ; $7516: $7a
	adc  d                                           ; $7517: $8a
	ld   hl, $1111                                   ; $7518: $21 $11 $11
	add  $4f                                         ; $751b: $c6 $4f
	rst  $38                                         ; $751d: $ff
	rst  $38                                         ; $751e: $ff
	cp   d                                           ; $751f: $ba
	jp   z, $c6ef                                    ; $7520: $ca $ef $c6

	ld   [hl], l                                     ; $7523: $75
	ld   h, $8a                                      ; $7524: $26 $8a
	cp   h                                           ; $7526: $bc
	sub  e                                           ; $7527: $93
	ld   de, $1711                                   ; $7528: $11 $11 $17
	ret  z                                           ; $752b: $c8

	rst  $38                                         ; $752c: $ff
	rst  $38                                         ; $752d: $ff
	rst  $20                                         ; $752e: $e7
	cp   $5b                                         ; $752f: $fe $5b
	cp   $74                                         ; $7531: $fe $74
	ld   d, a                                        ; $7533: $57
	ld   d, a                                        ; $7534: $57
	ld   a, [hl]                                     ; $7535: $7e
	rst  $30                                         ; $7536: $f7
	ld   de, $1111                                   ; $7537: $11 $11 $11
	ld   e, l                                        ; $753a: $5d
	sbc  a                                           ; $753b: $9f
	rst  $38                                         ; $753c: $ff
	rst  $38                                         ; $753d: $ff
	ld   a, c                                        ; $753e: $79
	adc  b                                           ; $753f: $88
	rst  JumpTable                                         ; $7540: $df
	rst  ToBoot                                         ; $7541: $c7
	sub  e                                           ; $7542: $93
	ld   b, [hl]                                     ; $7543: $46
	adc  e                                           ; $7544: $8b
	rst  $38                                         ; $7545: $ff
	sub  c                                           ; $7546: $91
	ld   de, $1711                                   ; $7547: $11 $11 $17
	ld   hl, sp-$01                                  ; $754a: $f8 $ff
	rst  $38                                         ; $754c: $ff
	ldh  a, [c]                                      ; $754d: $f2
	ld   c, [hl]                                     ; $754e: $4e
	jp   c, Jump_0dd_79fe                            ; $754f: $da $fe $79

	ld   d, c                                        ; $7552: $51
	ld   c, d                                        ; $7553: $4a
	rst  $38                                         ; $7554: $ff
	reti                                             ; $7555: $d9


	ld   de, $1111                                   ; $7556: $11 $11 $11
	cp   a                                           ; $7559: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $755a: $cf
	rst  $38                                         ; $755b: $ff
	ei                                               ; $755c: $fb
	and  l                                           ; $755d: $a5
	ld   a, a                                        ; $755e: $7f
	sbc  $f9                                         ; $755f: $de $f9
	ld   [hl-], a                                    ; $7561: $32
	ld   a, b                                        ; $7562: $78
	sbc  a                                           ; $7563: $9f
	db   $fc                                         ; $7564: $fc
	and  c                                           ; $7565: $a1
	ld   de, $1711                                   ; $7566: $11 $11 $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7569: $cf
	rst  $38                                         ; $756a: $ff
	db   $fd                                         ; $756b: $fd
	ld   l, a                                        ; $756c: $6f
	sub  c                                           ; $756d: $91
	xor  a                                           ; $756e: $af
	db   $fd                                         ; $756f: $fd
	ld   h, d                                        ; $7570: $62
	ld   e, c                                        ; $7571: $59
	ld   l, c                                        ; $7572: $69
	rst  $28                                         ; $7573: $ef
	push af                                          ; $7574: $f5
	ld   de, $1111                                   ; $7575: $11 $11 $11
	cp   a                                           ; $7578: $bf
	rst  $38                                         ; $7579: $ff
	rst  $38                                         ; $757a: $ff
	ld   sp, hl                                      ; $757b: $f9
	add  hl, de                                      ; $757c: $19
	cp   b                                           ; $757d: $b8
	rst  $38                                         ; $757e: $ff
	push bc                                          ; $757f: $c5
	ld   d, a                                        ; $7580: $57
	and  a                                           ; $7581: $a7
	sbc  a                                           ; $7582: $9f
	ld   a, [$1141]                                  ; $7583: $fa $41 $11
	ld   de, $f91f                                   ; $7586: $11 $1f $f9
	rst  $38                                         ; $7589: $ff
	rst  $38                                         ; $758a: $ff
	push af                                          ; $758b: $f5
	daa                                              ; $758c: $27
	db   $eb                                         ; $758d: $eb
	db   $fc                                         ; $758e: $fc
	ld   a, [hl+]                                    ; $758f: $2a
	or   l                                           ; $7590: $b5
	ld   c, d                                        ; $7591: $4a
	rst  $38                                         ; $7592: $ff
	sub  c                                           ; $7593: $91
	ld   de, $1111                                   ; $7594: $11 $11 $11
	rst  $38                                         ; $7597: $ff
	rst  $38                                         ; $7598: $ff
	rst  $38                                         ; $7599: $ff
	ldh  a, [c]                                      ; $759a: $f2
	dec  de                                          ; $759b: $1b
	xor  d                                           ; $759c: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $759d: $cf
	rst  $30                                         ; $759e: $f7
	ld   sp, $eb7e                                   ; $759f: $31 $7e $eb
	sbc  $31                                         ; $75a2: $de $31
	ld   de, $3f11                                   ; $75a4: $11 $11 $3f
	rst  $28                                         ; $75a7: $ef
	rst  $38                                         ; $75a8: $ff
	rst  $38                                         ; $75a9: $ff
	inc  d                                           ; $75aa: $14
	db   $f4                                         ; $75ab: $f4
	ld   a, a                                        ; $75ac: $7f
	db   $fc                                         ; $75ad: $fc
	ld   sp, $4bac                                   ; $75ae: $31 $ac $4b
	db   $fc                                         ; $75b1: $fc
	sub  c                                           ; $75b2: $91
	ld   de, $1f11                                   ; $75b3: $11 $11 $1f
	ld   hl, sp-$01                                  ; $75b6: $f8 $ff
	rst  $38                                         ; $75b8: $ff
	sub  c                                           ; $75b9: $91
	ld   a, [hl-]                                    ; $75ba: $3a
	adc  l                                           ; $75bb: $8d
	cp   $65                                         ; $75bc: $fe $65
	jr   c, @-$37                                    ; $75be: $38 $c7

	rst  $28                                         ; $75c0: $ef
	db   $e3                                         ; $75c1: $e3
	ld   de, $1111                                   ; $75c2: $11 $11 $11
	rst  $38                                         ; $75c5: $ff
	rst  $38                                         ; $75c6: $ff
	rst  $38                                         ; $75c7: $ff
	db   $f4                                         ; $75c8: $f4

Call_0dd_75c9:
	ld   e, $f4                                      ; $75c9: $1e $f4
	sbc  a                                           ; $75cb: $9f
	call nz, $ac76                                   ; $75cc: $c4 $76 $ac
	xor  h                                           ; $75cf: $ac
	add  sp, $11                                     ; $75d0: $e8 $11
	ld   de, $8f11                                   ; $75d2: $11 $11 $8f
	rst  $38                                         ; $75d5: $ff
	rst  $38                                         ; $75d6: $ff
	rst  $38                                         ; $75d7: $ff
	or   l                                           ; $75d8: $b5
	ld   d, a                                        ; $75d9: $57
	sbc  a                                           ; $75da: $9f
	ld   sp, hl                                      ; $75db: $f9
	and  [hl]                                        ; $75dc: $a6
	ld   e, e                                        ; $75dd: $5b
	adc  b                                           ; $75de: $88
	rst  $38                                         ; $75df: $ff
	ld   d, c                                        ; $75e0: $51
	ld   de, $1f11                                   ; $75e1: $11 $11 $1f
	rst  $38                                         ; $75e4: $ff
	rst  $38                                         ; $75e5: $ff
	rst  $38                                         ; $75e6: $ff
	db   $e4                                         ; $75e7: $e4
	inc  de                                          ; $75e8: $13
	rst  $38                                         ; $75e9: $ff
	cp   d                                           ; $75ea: $ba
	halt                                             ; $75eb: $76
	ld   d, l                                        ; $75ec: $55
	adc  l                                           ; $75ed: $8d
	db   $fc                                         ; $75ee: $fc
	sub  c                                           ; $75ef: $91
	ld   de, $1f11                                   ; $75f0: $11 $11 $1f
	rst  $38                                         ; $75f3: $ff
	rst  $38                                         ; $75f4: $ff
	rst  $38                                         ; $75f5: $ff
	pop  bc                                          ; $75f6: $c1
	ld   l, d                                        ; $75f7: $6a
	xor  h                                           ; $75f8: $ac
	cp   l                                           ; $75f9: $bd
	ret                                              ; $75fa: $c9


	ld   [hl+], a                                    ; $75fb: $22
	xor  [hl]                                        ; $75fc: $ae
	db   $db                                         ; $75fd: $db
	sub  l                                           ; $75fe: $95
	ld   de, $1211                                   ; $75ff: $11 $11 $12
	db   $fd                                         ; $7602: $fd
	rst  $38                                         ; $7603: $ff
	rst  $38                                         ; $7604: $ff
	ld   a, [$4a96]                                  ; $7605: $fa $96 $4a
	db   $fd                                         ; $7608: $fd
	ld   [hl], a                                     ; $7609: $77
	sub  a                                           ; $760a: $97
	ld   h, a                                        ; $760b: $67
	cp   l                                           ; $760c: $bd
	db   $db                                         ; $760d: $db
	ld   de, $1111                                   ; $760e: $11 $11 $11
	cp   a                                           ; $7611: $bf
	rst  $38                                         ; $7612: $ff
	rst  $38                                         ; $7613: $ff
	rst  $38                                         ; $7614: $ff
	ld   sp, $9aaa                                   ; $7615: $31 $aa $9a
	jp   z, $5967                                    ; $7618: $ca $67 $59

	sbc  d                                           ; $761b: $9a
	db   $fd                                         ; $761c: $fd
	ld   b, c                                        ; $761d: $41
	ld   de, $1e11                                   ; $761e: $11 $11 $1e
	adc  a                                           ; $7621: $8f
	rst  $38                                         ; $7622: $ff
	rst  $38                                         ; $7623: $ff
	ldh  a, [c]                                      ; $7624: $f2
	ld   l, h                                        ; $7625: $6c
	xor  h                                           ; $7626: $ac
	and  a                                           ; $7627: $a7
	sbc  c                                           ; $7628: $99
	inc  h                                           ; $7629: $24
	xor  d                                           ; $762a: $aa
	call $11a7                                       ; $762b: $cd $a7 $11
	ld   de, $a717                                   ; $762e: $11 $17 $a7
	rst  $38                                         ; $7631: $ff
	rst  $38                                         ; $7632: $ff
	ei                                               ; $7633: $fb
	cp   c                                           ; $7634: $b9
	ld   a, c                                        ; $7635: $79
	cp   d                                           ; $7636: $ba
	sub  l                                           ; $7637: $95
	ld   b, [hl]                                     ; $7638: $46
	sbc  b                                           ; $7639: $98
	xor  h                                           ; $763a: $ac
	ret                                              ; $763b: $c9


	ld   d, c                                        ; $763c: $51
	ld   de, $6811                                   ; $763d: $11 $11 $68
	ld   c, a                                        ; $7640: $4f
	rst  $38                                         ; $7641: $ff
	rst  $38                                         ; $7642: $ff
	call z, $9ba6                                    ; $7643: $cc $a6 $9b
	xor  c                                           ; $7646: $a9
	ld   d, e                                        ; $7647: $53
	ld   c, c                                        ; $7648: $49
	add  a                                           ; $7649: $87
	cp   [hl]                                        ; $764a: $be
	and  a                                           ; $764b: $a7
	ld   sp, $1211                                   ; $764c: $31 $11 $12
	ld   h, d                                        ; $764f: $62
	rst  $38                                         ; $7650: $ff
	rst  $38                                         ; $7651: $ff
	db   $fd                                         ; $7652: $fd
	ld   a, [$e85c]                                  ; $7653: $fa $5c $e8
	sbc  b                                           ; $7656: $98
	ld   d, [hl]                                     ; $7657: $56
	halt                                             ; $7658: $76
	adc  e                                           ; $7659: $8b
	xor  c                                           ; $765a: $a9
	xor  b                                           ; $765b: $a8
	ld   hl, $1811                                   ; $765c: $21 $11 $18
	ld   [de], a                                     ; $765f: $12
	rst  $38                                         ; $7660: $ff
	rst  $38                                         ; $7661: $ff
	rst  $38                                         ; $7662: $ff
	ld   [$fa7a], a                                  ; $7663: $ea $7a $fa
	ld   a, d                                        ; $7666: $7a
	adc  c                                           ; $7667: $89
	and  a                                           ; $7668: $a7
	adc  [hl]                                        ; $7669: $8e
	cp   d                                           ; $766a: $ba
	add  $21                                         ; $766b: $c6 $21
	ld   de, $7114                                   ; $766d: $11 $14 $71
	ld   a, e                                        ; $7670: $7b
	cp   l                                           ; $7671: $bd
	db   $ec                                         ; $7672: $ec
	call c, $dd9b                                    ; $7673: $dc $9b $dd

Jump_0dd_7676:
	jp   z, $aaba                                    ; $7676: $ca $ba $aa

	xor  e                                           ; $7679: $ab
	xor  d                                           ; $767a: $aa
	add  a                                           ; $767b: $87
	ld   d, l                                        ; $767c: $55
	ld   de, $5611                                   ; $767d: $11 $11 $56
	inc  h                                           ; $7680: $24
	ld   a, b                                        ; $7681: $78
	adc  c                                           ; $7682: $89
	sbc  e                                           ; $7683: $9b
	db   $ec                                         ; $7684: $ec
	adc  e                                           ; $7685: $8b
	db   $fd                                         ; $7686: $fd
	call z, $b9de                                    ; $7687: $cc $de $b9
	xor  [hl]                                        ; $768a: $ae
	ld   [hl], e                                     ; $768b: $73
	sub  l                                           ; $768c: $95
	ld   d, e                                        ; $768d: $53
	inc  hl                                          ; $768e: $23
	ld   de, $1245                                   ; $768f: $11 $45 $12
	ld   l, c                                        ; $7692: $69
	adc  c                                           ; $7693: $89
	xor  [hl]                                        ; $7694: $ae
	ei                                               ; $7695: $fb
	xor  l                                           ; $7696: $ad

Call_0dd_7697:
	cp   $ec                                         ; $7697: $fe $ec
	db   $ed                                         ; $7699: $ed
	cp   c                                           ; $769a: $b9
	ld   [hl], a                                     ; $769b: $77
	ld   d, [hl]                                     ; $769c: $56
	ld   h, [hl]                                     ; $769d: $66
	ld   b, h                                        ; $769e: $44
	ld   hl, $3411                                   ; $769f: $21 $11 $34
	inc  d                                           ; $76a2: $14
	sbc  d                                           ; $76a3: $9a
	cp   e                                           ; $76a4: $bb
	rst  JumpTable                                         ; $76a5: $df
	db   $ec                                         ; $76a6: $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76a7: $cf
	rst  $38                                         ; $76a8: $ff
	db   $dd                                         ; $76a9: $dd
	cp   d                                           ; $76aa: $ba
	add  a                                           ; $76ab: $87
	sbc  b                                           ; $76ac: $98
	ld   h, [hl]                                     ; $76ad: $66
	ld   h, l                                        ; $76ae: $65
	ld   sp, $1111                                   ; $76af: $31 $11 $11
	ld   h, e                                        ; $76b2: $63
	add  hl, hl                                      ; $76b3: $29
	xor  $ff                                         ; $76b4: $ee $ff
	rst  $38                                         ; $76b6: $ff
	db   $fc                                         ; $76b7: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76b8: $cf
	db   $eb                                         ; $76b9: $eb

Jump_0dd_76ba:
	jp   z, Jump_0dd_76ba                            ; $76ba: $ca $ba $76

	add  a                                           ; $76bd: $87
	ld   h, h                                        ; $76be: $64
	ld   [hl-], a                                    ; $76bf: $32
	ld   de, $1611                                   ; $76c0: $11 $11 $16
	inc  [hl]                                        ; $76c3: $34
	sbc  a                                           ; $76c4: $9f
	rst  $38                                         ; $76c5: $ff
	rst  $38                                         ; $76c6: $ff
	db   $fd                                         ; $76c7: $fd
	call c, $dcfe                                    ; $76c8: $dc $fe $dc
	sbc  d                                           ; $76cb: $9a
	sbc  c                                           ; $76cc: $99
	ld   l, c                                        ; $76cd: $69
	ld   d, l                                        ; $76ce: $55
	ld   d, h                                        ; $76cf: $54
	ld   de, $1111                                   ; $76d0: $11 $11 $11
	ld   [hl], e                                     ; $76d3: $73
	ld   a, l                                        ; $76d4: $7d
	rst  $38                                         ; $76d5: $ff
	rst  $38                                         ; $76d6: $ff
	rst  $38                                         ; $76d7: $ff
	db   $db                                         ; $76d8: $db
	rst  JumpTable                                         ; $76d9: $df
	sbc  $99                                         ; $76da: $de $99
	adc  b                                           ; $76dc: $88
	ld   [hl], a                                     ; $76dd: $77
	ld   [hl], h                                     ; $76de: $74
	ld   h, l                                        ; $76df: $65
	ld   hl, $1111                                   ; $76e0: $21 $11 $11
	ld   h, d                                        ; $76e3: $62
	ld   c, [hl]                                     ; $76e4: $4e
	rst  $38                                         ; $76e5: $ff
	rst  $38                                         ; $76e6: $ff
	rst  $38                                         ; $76e7: $ff
	set  3, a                                        ; $76e8: $cb $df
	call z, $a7a7                                    ; $76ea: $cc $a7 $a7
	halt                                             ; $76ed: $76
	add  l                                           ; $76ee: $85
	halt                                             ; $76ef: $76
	ld   de, $1111                                   ; $76f0: $11 $11 $11
	ld   b, h                                        ; $76f3: $44
	ld   c, l                                        ; $76f4: $4d
	rst  $38                                         ; $76f5: $ff
	rst  $38                                         ; $76f6: $ff
	rst  $38                                         ; $76f7: $ff
	call z, $dbfd                                    ; $76f8: $cc $fd $db
	xor  b                                           ; $76fb: $a8
	halt                                             ; $76fc: $76
	ld   l, d                                        ; $76fd: $6a
	ld   h, [hl]                                     ; $76fe: $66
	ld   h, [hl]                                     ; $76ff: $66
	ld   sp, $1111                                   ; $7700: $31 $11 $11
	ld   h, c                                        ; $7703: $61
	ld   a, $ff                                      ; $7704: $3e $ff
	rst  $38                                         ; $7706: $ff
	rst  $38                                         ; $7707: $ff
	set  5, a                                        ; $7708: $cb $ef
	cp   c                                           ; $770a: $b9
	xor  c                                           ; $770b: $a9
	sub  l                                           ; $770c: $95
	ld   l, c                                        ; $770d: $69
	add  [hl]                                        ; $770e: $86
	ld   d, [hl]                                     ; $770f: $56
	ld   sp, $1111                                   ; $7710: $31 $11 $11
	ld   [hl], c                                     ; $7713: $71
	inc  l                                           ; $7714: $2c
	rst  $38                                         ; $7715: $ff
	rst  $38                                         ; $7716: $ff
	rst  $38                                         ; $7717: $ff
	db   $ec                                         ; $7718: $ec
	rst  $28                                         ; $7719: $ef
	reti                                             ; $771a: $d9


	add  a                                           ; $771b: $87
	add  l                                           ; $771c: $85
	ld   h, [hl]                                     ; $771d: $66
	sub  a                                           ; $771e: $97
	ld   d, h                                        ; $771f: $54
	ld   de, $1211                                   ; $7720: $11 $11 $12
	ld   b, c                                        ; $7723: $41

jr_0dd_7724:
	ld   a, a                                        ; $7724: $7f
	rst  $38                                         ; $7725: $ff
	rst  $38                                         ; $7726: $ff
	rst  $38                                         ; $7727: $ff
	db   $fc                                         ; $7728: $fc
	rst  $28                                         ; $7729: $ef
	cp   d                                           ; $772a: $ba
	ld   h, a                                        ; $772b: $67
	ld   h, a                                        ; $772c: $67
	ld   h, h                                        ; $772d: $64
	sub  l                                           ; $772e: $95
	ld   d, c                                        ; $772f: $51
	ld   de, $1311                                   ; $7730: $11 $11 $13
	jr   jr_0dd_7724                                 ; $7733: $18 $ef

	rst  $38                                         ; $7735: $ff
	rst  $38                                         ; $7736: $ff
	db   $fd                                         ; $7737: $fd
	rst  $38                                         ; $7738: $ff
	ei                                               ; $7739: $fb
	rst  ToBoot                                         ; $773a: $c7
	halt                                             ; $773b: $76
	ld   d, l                                        ; $773c: $55
	ld   b, a                                        ; $773d: $47
	ld   b, l                                        ; $773e: $45
	ld   sp, $1111                                   ; $773f: $31 $11 $11
	ld   d, c                                        ; $7742: $51
	ld   a, $ff                                      ; $7743: $3e $ff
	rst  $38                                         ; $7745: $ff
	rst  $38                                         ; $7746: $ff
	db   $ed                                         ; $7747: $ed
	rst  $38                                         ; $7748: $ff
	ret                                              ; $7749: $c9


	halt                                             ; $774a: $76
	ld   h, l                                        ; $774b: $65
	ld   b, h                                        ; $774c: $44
	ld   [hl], h                                     ; $774d: $74
	ld   b, d                                        ; $774e: $42
	ld   de, $1311                                   ; $774f: $11 $11 $13
	dec  d                                           ; $7752: $15
	rst  $38                                         ; $7753: $ff
	rst  $38                                         ; $7754: $ff
	rst  $38                                         ; $7755: $ff
	cp   $df                                         ; $7756: $fe $df
	db   $fc                                         ; $7758: $fc
	and  l                                           ; $7759: $a5
	ld   h, a                                        ; $775a: $67
	ld   sp, $2337                                   ; $775b: $31 $37 $23
	ld   hl, $1411                                   ; $775e: $21 $11 $14
	ld   de, $ffaf                                   ; $7761: $11 $af $ff
	rst  $38                                         ; $7764: $ff
	rst  $38                                         ; $7765: $ff
	rst  $28                                         ; $7766: $ef
	rst  $38                                         ; $7767: $ff
	xor  d                                           ; $7768: $aa
	sub  [hl]                                        ; $7769: $96
	ld   [de], a                                     ; $776a: $12
	inc  h                                           ; $776b: $24
	ld   sp, $1111                                   ; $776c: $31 $11 $11
	inc  d                                           ; $776f: $14
	ld   hl, $ff8f                                   ; $7770: $21 $8f $ff
	rst  $38                                         ; $7773: $ff
	rst  $38                                         ; $7774: $ff
	rst  $28                                         ; $7775: $ef
	rst  $38                                         ; $7776: $ff
	adc  e                                           ; $7777: $8b
	and  l                                           ; $7778: $a5
	ld   [de], a                                     ; $7779: $12
	inc  hl                                          ; $777a: $23
	ld   de, $1131                                   ; $777b: $11 $31 $11
	ld   d, $11                                      ; $777e: $16 $11
	xor  [hl]                                        ; $7780: $ae
	rst  $38                                         ; $7781: $ff
	rst  $38                                         ; $7782: $ff
	rst  $38                                         ; $7783: $ff
	xor  [hl]                                        ; $7784: $ae
	rst  $38                                         ; $7785: $ff
	add  sp, $69                                     ; $7786: $e8 $69
	ld   d, c                                        ; $7788: $51
	ld   de, $1111                                   ; $7789: $11 $11 $11
	ld   de, $1712                                   ; $778c: $11 $12 $17
	sbc  $ff                                         ; $778f: $de $ff
	rst  $38                                         ; $7791: $ff
	rst  $38                                         ; $7792: $ff
	rst  $38                                         ; $7793: $ff
	xor  $ea                                         ; $7794: $ee $ea
	ld   d, l                                        ; $7796: $55
	ld   b, c                                        ; $7797: $41
	ld   de, $1111                                   ; $7798: $11 $11 $11
	ld   de, $1556                                   ; $779b: $11 $56 $15
	rst  $28                                         ; $779e: $ef
	rst  $38                                         ; $779f: $ff
	rst  $38                                         ; $77a0: $ff
	rst  $38                                         ; $77a1: $ff
	cp   a                                           ; $77a2: $bf
	rst  $38                                         ; $77a3: $ff
	or   l                                           ; $77a4: $b5
	add  [hl]                                        ; $77a5: $86
	ld   de, $1111                                   ; $77a6: $11 $11 $11
	ld   de, $6115                                   ; $77a9: $11 $15 $61
	ld   l, a                                        ; $77ac: $6f
	rst  $38                                         ; $77ad: $ff
	rst  $38                                         ; $77ae: $ff
	ei                                               ; $77af: $fb
	xor  a                                           ; $77b0: $af
	rst  $38                                         ; $77b1: $ff
	adc  [hl]                                        ; $77b2: $8e
	xor  e                                           ; $77b3: $ab
	ld   hl, $1121                                   ; $77b4: $21 $21 $11
	ld   de, $3511                                   ; $77b7: $11 $11 $35
	ld   d, $ff                                      ; $77ba: $16 $ff
	rst  $38                                         ; $77bc: $ff
	rst  $38                                         ; $77bd: $ff
	call z, $fdff                                    ; $77be: $cc $ff $fd
	cp   d                                           ; $77c1: $ba
	pop  bc                                          ; $77c2: $c1
	ld   de, $1111                                   ; $77c3: $11 $11 $11
	ld   de, $4114                                   ; $77c6: $11 $14 $41
	adc  a                                           ; $77c9: $8f
	rst  $38                                         ; $77ca: $ff
	db   $fd                                         ; $77cb: $fd
	rst  $38                                         ; $77cc: $ff
	db   $fd                                         ; $77cd: $fd
	rst  $38                                         ; $77ce: $ff
	jp   c, Jump_0dd_6189                            ; $77cf: $da $89 $61

	ld   de, $1111                                   ; $77d2: $11 $11 $11
	ld   de, $9b31                                   ; $77d5: $11 $31 $9b
	rst  $38                                         ; $77d8: $ff
	rst  JumpTable                                         ; $77d9: $df

Call_0dd_77da:
	rst  $38                                         ; $77da: $ff
	sbc  a                                           ; $77db: $9f
	rst  $38                                         ; $77dc: $ff
	db   $ed                                         ; $77dd: $ed
	cp   d                                           ; $77de: $ba
	add  c                                           ; $77df: $81
	ld   de, $1111                                   ; $77e0: $11 $11 $11
	ld   de, $1b62                                   ; $77e3: $11 $62 $1b
	rst  $38                                         ; $77e6: $ff
	rst  $38                                         ; $77e7: $ff
	rst  $38                                         ; $77e8: $ff
	ld   sp, hl                                      ; $77e9: $f9
	rst  $38                                         ; $77ea: $ff
	cp   $99                                         ; $77eb: $fe $99
	or   a                                           ; $77ed: $b7
	ld   de, $1111                                   ; $77ee: $11 $11 $11
	ld   de, $1c61                                   ; $77f1: $11 $61 $1c
	cp   l                                           ; $77f4: $bd
	rst  $38                                         ; $77f5: $ff
	rst  $38                                         ; $77f6: $ff
	db   $dd                                         ; $77f7: $dd
	rst  $38                                         ; $77f8: $ff
	sbc  a                                           ; $77f9: $9f
	ld   a, [$2374]                                  ; $77fa: $fa $74 $23
	ld   de, $1111                                   ; $77fd: $11 $11 $11
	ld   b, l                                        ; $7800: $45
	dec  d                                           ; $7801: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7802: $cf
	rst  $38                                         ; $7803: $ff
	rst  JumpTable                                         ; $7804: $df
	db   $fc                                         ; $7805: $fc
	rst  $38                                         ; $7806: $ff
	db   $fd                                         ; $7807: $fd
	sbc  d                                           ; $7808: $9a
	jp   z, $1111                                    ; $7809: $ca $11 $11

	ld   de, $4511                                   ; $780c: $11 $11 $45
	inc  d                                           ; $780f: $14
	call c, $ffff                                    ; $7810: $dc $ff $ff
	cp   $cf                                         ; $7813: $fe $cf
	rst  $38                                         ; $7815: $ff
	db   $db                                         ; $7816: $db
	adc  d                                           ; $7817: $8a
	ld   hl, $1111                                   ; $7818: $21 $11 $11
	ld   de, $1545                                   ; $781b: $11 $45 $15
	xor  h                                           ; $781e: $ac
	xor  l                                           ; $781f: $ad
	rst  $28                                         ; $7820: $ef
	db   $fd                                         ; $7821: $fd
	rst  $38                                         ; $7822: $ff
	cp   $cc                                         ; $7823: $fe $cc
	ret  z                                           ; $7825: $c8

	ld   sp, $0111                                   ; $7826: $31 $11 $01
	ld   de, $4216                                   ; $7829: $11 $16 $42
	adc  l                                           ; $782c: $8d
	cp   d                                           ; $782d: $ba
	cp   e                                           ; $782e: $bb
	rst  $38                                         ; $782f: $ff
	sbc  l                                           ; $7830: $9d
	rst  $38                                         ; $7831: $ff
	add  sp, $7c                                     ; $7832: $e8 $7c
	or   c                                           ; $7834: $b1
	inc  de                                          ; $7835: $13
	ld   sp, $1711                                   ; $7836: $31 $11 $17
	ld   [hl-], a                                    ; $7839: $32
	ld   a, e                                        ; $783a: $7b
	xor  e                                           ; $783b: $ab
	xor  [hl]                                        ; $783c: $ae
	xor  $ed                                         ; $783d: $ee $ed
	cp   $ec                                         ; $783f: $fe $ec
	adc  d                                           ; $7841: $8a
	ld   h, [hl]                                     ; $7842: $66
	inc  sp                                          ; $7843: $33
	inc  de                                          ; $7844: $13
	ld   hl, $4413                                   ; $7845: $21 $13 $44
	ld   a, c                                        ; $7848: $79
	add  a                                           ; $7849: $87
	xor  [hl]                                        ; $784a: $ae
	call c, $ffbe                                    ; $784b: $dc $be $ff
	jp   z, Jump_0dd_56d9                            ; $784e: $ca $d9 $56

	ld   d, h                                        ; $7851: $54
	ld   d, e                                        ; $7852: $53
	inc  sp                                          ; $7853: $33
	ld   [de], a                                     ; $7854: $12
	ld   [hl], l                                     ; $7855: $75
	ld   [hl], $9b                                   ; $7856: $36 $9b
	sub  a                                           ; $7858: $97
	xor  a                                           ; $7859: $af
	db   $dd                                         ; $785a: $dd
	xor  e                                           ; $785b: $ab
	cp   $77                                         ; $785c: $fe $77
	ret  c                                           ; $785e: $d8

	add  e                                           ; $785f: $83
	ld   c, c                                        ; $7860: $49
	ld   b, e                                        ; $7861: $43
	ld   d, h                                        ; $7862: $54
	dec  d                                           ; $7863: $15
	ld   e, b                                        ; $7864: $58
	ld   [hl], l                                     ; $7865: $75
	ld   e, d                                        ; $7866: $5a
	ret  z                                           ; $7867: $c8

	cp   e                                           ; $7868: $bb
	ret                                              ; $7869: $c9


	xor  d                                           ; $786a: $aa
	call z, $7a8a                                    ; $786b: $cc $8a $7a
	ld   h, [hl]                                     ; $786e: $66
	ld   [hl], a                                     ; $786f: $77
	ld   h, h                                        ; $7870: $64
	ld   h, h                                        ; $7871: $64
	ld   h, l                                        ; $7872: $65
	add  l                                           ; $7873: $85
	ld   d, a                                        ; $7874: $57
	adc  c                                           ; $7875: $89
	ld   a, d                                        ; $7876: $7a
	xor  b                                           ; $7877: $a8
	adc  d                                           ; $7878: $8a
	sbc  c                                           ; $7879: $99
	xor  d                                           ; $787a: $aa
	xor  c                                           ; $787b: $a9
	cp   c                                           ; $787c: $b9
	adc  c                                           ; $787d: $89
	halt                                             ; $787e: $76
	ld   l, c                                        ; $787f: $69
	ld   [hl], a                                     ; $7880: $77
	ld   h, l                                        ; $7881: $65
	halt                                             ; $7882: $76
	ld   h, a                                        ; $7883: $67
	adc  c                                           ; $7884: $89
	adc  c                                           ; $7885: $89
	adc  b                                           ; $7886: $88
	adc  c                                           ; $7887: $89
	ld   a, b                                        ; $7888: $78
	xor  d                                           ; $7889: $aa
	cp   b                                           ; $788a: $b8
	adc  c                                           ; $788b: $89
	and  a                                           ; $788c: $a7
	adc  c                                           ; $788d: $89
	sbc  c                                           ; $788e: $99
	sub  [hl]                                        ; $788f: $96
	ld   h, a                                        ; $7890: $67
	adc  b                                           ; $7891: $88
	ld   a, c                                        ; $7892: $79
	sbc  c                                           ; $7893: $99
	adc  c                                           ; $7894: $89
	adc  b                                           ; $7895: $88
	sbc  b                                           ; $7896: $98
	sbc  c                                           ; $7897: $99
	adc  c                                           ; $7898: $89
	sub  a                                           ; $7899: $97
	adc  b                                           ; $789a: $88
	ld   [hl], a                                     ; $789b: $77
	adc  b                                           ; $789c: $88
	sub  [hl]                                        ; $789d: $96
	ld   a, c                                        ; $789e: $79
	adc  b                                           ; $789f: $88
	adc  b                                           ; $78a0: $88
	sbc  b                                           ; $78a1: $98
	adc  c                                           ; $78a2: $89
	xor  d                                           ; $78a3: $aa
	sbc  c                                           ; $78a4: $99
	adc  c                                           ; $78a5: $89
	adc  b                                           ; $78a6: $88

Call_0dd_78a7:
	add  a                                           ; $78a7: $87
	add  a                                           ; $78a8: $87
	ld   [hl], a                                     ; $78a9: $77
	ld   a, b                                        ; $78aa: $78
	adc  b                                           ; $78ab: $88
	ld   [hl], a                                     ; $78ac: $77
	adc  b                                           ; $78ad: $88
	ld   a, b                                        ; $78ae: $78
	sbc  c                                           ; $78af: $99
	sbc  b                                           ; $78b0: $98
	sbc  c                                           ; $78b1: $99
	ld   a, b                                        ; $78b2: $78
	sbc  c                                           ; $78b3: $99
	sbc  b                                           ; $78b4: $98
	adc  b                                           ; $78b5: $88
	add  a                                           ; $78b6: $87
	ld   a, b                                        ; $78b7: $78
	ld   [hl], a                                     ; $78b8: $77
	ld   [hl], a                                     ; $78b9: $77
	ld   a, b                                        ; $78ba: $78
	ld   [hl], a                                     ; $78bb: $77
	ld   a, c                                        ; $78bc: $79
	sbc  b                                           ; $78bd: $98
	sbc  b                                           ; $78be: $98
	adc  c                                           ; $78bf: $89
	adc  b                                           ; $78c0: $88
	sbc  c                                           ; $78c1: $99
	adc  c                                           ; $78c2: $89
	ld   [hl], a                                     ; $78c3: $77
	sub  a                                           ; $78c4: $97
	ld   [hl], a                                     ; $78c5: $77
	ld   [hl], a                                     ; $78c6: $77
	add  a                                           ; $78c7: $87
	ld   h, a                                        ; $78c8: $67
	ld   a, b                                        ; $78c9: $78
	add  a                                           ; $78ca: $87
	adc  b                                           ; $78cb: $88
	adc  c                                           ; $78cc: $89
	adc  b                                           ; $78cd: $88
	sbc  c                                           ; $78ce: $99
	adc  b                                           ; $78cf: $88
	ld   [hl], a                                     ; $78d0: $77
	adc  b                                           ; $78d1: $88
	adc  b                                           ; $78d2: $88
	adc  b                                           ; $78d3: $88
	ld   [hl], a                                     ; $78d4: $77
	add  a                                           ; $78d5: $87
	ld   [hl], a                                     ; $78d6: $77
	ld   [hl], a                                     ; $78d7: $77
	ld   [hl], a                                     ; $78d8: $77
	adc  c                                           ; $78d9: $89
	sbc  b                                           ; $78da: $98
	sbc  c                                           ; $78db: $99
	adc  b                                           ; $78dc: $88
	adc  c                                           ; $78dd: $89
	sbc  b                                           ; $78de: $98
	adc  b                                           ; $78df: $88
	adc  b                                           ; $78e0: $88
	add  a                                           ; $78e1: $87
	adc  b                                           ; $78e2: $88
	ld   [hl], a                                     ; $78e3: $77
	ld   [hl], a                                     ; $78e4: $77
	ld   [hl], a                                     ; $78e5: $77
	ld   [hl], a                                     ; $78e6: $77
	adc  b                                           ; $78e7: $88
	adc  c                                           ; $78e8: $89
	adc  b                                           ; $78e9: $88
	adc  b                                           ; $78ea: $88
	adc  b                                           ; $78eb: $88
	adc  b                                           ; $78ec: $88
	adc  b                                           ; $78ed: $88
	add  a                                           ; $78ee: $87
	adc  b                                           ; $78ef: $88
	add  a                                           ; $78f0: $87
	ld   a, b                                        ; $78f1: $78
	ld   a, b                                        ; $78f2: $78
	ld   [hl], a                                     ; $78f3: $77
	ld   [hl], a                                     ; $78f4: $77
	adc  b                                           ; $78f5: $88
	ld   a, b                                        ; $78f6: $78
	adc  b                                           ; $78f7: $88
	adc  b                                           ; $78f8: $88
	adc  b                                           ; $78f9: $88
	adc  b                                           ; $78fa: $88
	adc  b                                           ; $78fb: $88
	adc  c                                           ; $78fc: $89
	adc  b                                           ; $78fd: $88
	add  a                                           ; $78fe: $87
	adc  b                                           ; $78ff: $88
	ld   a, b                                        ; $7900: $78
	ld   [hl], a                                     ; $7901: $77
	add  a                                           ; $7902: $87
	ld   [hl], a                                     ; $7903: $77
	add  a                                           ; $7904: $87
	adc  b                                           ; $7905: $88
	adc  c                                           ; $7906: $89
	adc  b                                           ; $7907: $88
	adc  b                                           ; $7908: $88
	adc  b                                           ; $7909: $88
	add  a                                           ; $790a: $87
	adc  c                                           ; $790b: $89
	adc  b                                           ; $790c: $88
	ld   [hl], a                                     ; $790d: $77
	ld   a, b                                        ; $790e: $78
	ld   [hl], a                                     ; $790f: $77
	add  a                                           ; $7910: $87
	ld   a, b                                        ; $7911: $78
	adc  b                                           ; $7912: $88
	adc  b                                           ; $7913: $88
	add  a                                           ; $7914: $87
	adc  c                                           ; $7915: $89
	sbc  b                                           ; $7916: $98
	adc  b                                           ; $7917: $88
	adc  b                                           ; $7918: $88
	adc  c                                           ; $7919: $89
	ld   [hl], a                                     ; $791a: $77
	sbc  b                                           ; $791b: $98
	ld   a, b                                        ; $791c: $78
	adc  c                                           ; $791d: $89
	add  a                                           ; $791e: $87
	adc  b                                           ; $791f: $88
	adc  b                                           ; $7920: $88
	ld   [hl], a                                     ; $7921: $77
	sbc  c                                           ; $7922: $99
	adc  b                                           ; $7923: $88
	adc  b                                           ; $7924: $88
	adc  b                                           ; $7925: $88
	adc  b                                           ; $7926: $88
	adc  c                                           ; $7927: $89
	sbc  b                                           ; $7928: $98
	ld   a, b                                        ; $7929: $78
	adc  b                                           ; $792a: $88
	adc  b                                           ; $792b: $88
	ld   a, c                                        ; $792c: $79
	adc  b                                           ; $792d: $88
	sbc  b                                           ; $792e: $98
	adc  b                                           ; $792f: $88
	adc  b                                           ; $7930: $88
	sbc  b                                           ; $7931: $98
	adc  b                                           ; $7932: $88
	ld   a, b                                        ; $7933: $78
	sbc  b                                           ; $7934: $98
	adc  b                                           ; $7935: $88
	adc  b                                           ; $7936: $88
	adc  b                                           ; $7937: $88
	add  a                                           ; $7938: $87
	adc  b                                           ; $7939: $88
	add  a                                           ; $793a: $87
	ld   a, c                                        ; $793b: $79
	adc  b                                           ; $793c: $88
	adc  b                                           ; $793d: $88
	adc  b                                           ; $793e: $88
	adc  b                                           ; $793f: $88
	adc  c                                           ; $7940: $89
	adc  b                                           ; $7941: $88
	adc  c                                           ; $7942: $89
	sbc  b                                           ; $7943: $98
	sbc  b                                           ; $7944: $98
	adc  b                                           ; $7945: $88
	adc  b                                           ; $7946: $88
	add  a                                           ; $7947: $87
	adc  c                                           ; $7948: $89
	adc  b                                           ; $7949: $88
	adc  b                                           ; $794a: $88
	adc  b                                           ; $794b: $88
	adc  b                                           ; $794c: $88
	adc  b                                           ; $794d: $88
	sbc  b                                           ; $794e: $98
	adc  c                                           ; $794f: $89
	ld   a, b                                        ; $7950: $78
	sbc  b                                           ; $7951: $98
	adc  b                                           ; $7952: $88
	sbc  b                                           ; $7953: $98
	adc  b                                           ; $7954: $88
	adc  c                                           ; $7955: $89
	adc  b                                           ; $7956: $88
	adc  b                                           ; $7957: $88
	adc  b                                           ; $7958: $88
	ld   a, b                                        ; $7959: $78
	adc  b                                           ; $795a: $88
	sbc  c                                           ; $795b: $99
	adc  b                                           ; $795c: $88
	adc  b                                           ; $795d: $88
	sbc  b                                           ; $795e: $98
	adc  c                                           ; $795f: $89
	adc  b                                           ; $7960: $88
	adc  b                                           ; $7961: $88
	ld   a, b                                        ; $7962: $78
	sbc  b                                           ; $7963: $98
	sbc  b                                           ; $7964: $98
	adc  b                                           ; $7965: $88
	adc  b                                           ; $7966: $88
	sbc  b                                           ; $7967: $98
	adc  c                                           ; $7968: $89
	adc  b                                           ; $7969: $88
	adc  c                                           ; $796a: $89
	adc  b                                           ; $796b: $88
	adc  b                                           ; $796c: $88
	adc  b                                           ; $796d: $88
	sbc  b                                           ; $796e: $98
	adc  b                                           ; $796f: $88
	adc  b                                           ; $7970: $88
	adc  b                                           ; $7971: $88
	adc  b                                           ; $7972: $88
	sbc  b                                           ; $7973: $98
	sbc  b                                           ; $7974: $98
	adc  c                                           ; $7975: $89
	adc  b                                           ; $7976: $88
	sbc  c                                           ; $7977: $99
	adc  b                                           ; $7978: $88
	ld   a, b                                        ; $7979: $78
	adc  b                                           ; $797a: $88
	adc  b                                           ; $797b: $88
	adc  b                                           ; $797c: $88
	adc  b                                           ; $797d: $88
	sbc  b                                           ; $797e: $98
	adc  b                                           ; $797f: $88
	adc  c                                           ; $7980: $89
	ld   [hl], a                                     ; $7981: $77
	adc  b                                           ; $7982: $88
	sbc  b                                           ; $7983: $98
	sbc  c                                           ; $7984: $99
	adc  b                                           ; $7985: $88
	adc  b                                           ; $7986: $88
	adc  b                                           ; $7987: $88
	adc  c                                           ; $7988: $89
	adc  c                                           ; $7989: $89
	ld   a, c                                        ; $798a: $79
	adc  b                                           ; $798b: $88
	sbc  b                                           ; $798c: $98
	adc  c                                           ; $798d: $89
	sub  a                                           ; $798e: $97
	sbc  b                                           ; $798f: $98
	ld   a, b                                        ; $7990: $78
	adc  b                                           ; $7991: $88
	adc  b                                           ; $7992: $88
	adc  c                                           ; $7993: $89
	adc  b                                           ; $7994: $88
	sbc  b                                           ; $7995: $98
	adc  c                                           ; $7996: $89
	adc  b                                           ; $7997: $88
	adc  b                                           ; $7998: $88
	adc  b                                           ; $7999: $88
	adc  c                                           ; $799a: $89
	adc  b                                           ; $799b: $88
	adc  b                                           ; $799c: $88
	sbc  b                                           ; $799d: $98
	ld   [hl], a                                     ; $799e: $77
	sbc  c                                           ; $799f: $99
	ld   [hl], a                                     ; $79a0: $77
	adc  b                                           ; $79a1: $88
	sbc  b                                           ; $79a2: $98
	adc  c                                           ; $79a3: $89
	sbc  b                                           ; $79a4: $98
	ld   a, b                                        ; $79a5: $78
	adc  b                                           ; $79a6: $88
	adc  b                                           ; $79a7: $88
	adc  b                                           ; $79a8: $88
	adc  b                                           ; $79a9: $88
	adc  b                                           ; $79aa: $88
	adc  b                                           ; $79ab: $88
	sbc  b                                           ; $79ac: $98
	adc  c                                           ; $79ad: $89
	sbc  b                                           ; $79ae: $98
	add  a                                           ; $79af: $87
	adc  b                                           ; $79b0: $88
	add  a                                           ; $79b1: $87
	adc  b                                           ; $79b2: $88
	adc  c                                           ; $79b3: $89
	ld   [hl], a                                     ; $79b4: $77
	adc  b                                           ; $79b5: $88
	adc  c                                           ; $79b6: $89
	sbc  c                                           ; $79b7: $99
	adc  c                                           ; $79b8: $89
	ld   [hl], a                                     ; $79b9: $77
	sbc  c                                           ; $79ba: $99
	adc  b                                           ; $79bb: $88
	adc  c                                           ; $79bc: $89
	add  [hl]                                        ; $79bd: $86
	ld   a, b                                        ; $79be: $78
	sbc  b                                           ; $79bf: $98
	adc  b                                           ; $79c0: $88
	sbc  b                                           ; $79c1: $98
	adc  b                                           ; $79c2: $88
	adc  c                                           ; $79c3: $89
	adc  b                                           ; $79c4: $88
	sbc  b                                           ; $79c5: $98
	ld   a, b                                        ; $79c6: $78
	adc  b                                           ; $79c7: $88
	adc  b                                           ; $79c8: $88
	adc  c                                           ; $79c9: $89
	ld   a, b                                        ; $79ca: $78
	sub  a                                           ; $79cb: $97
	adc  b                                           ; $79cc: $88
	ld   a, c                                        ; $79cd: $79
	sbc  c                                           ; $79ce: $99
	ld   a, b                                        ; $79cf: $78
	adc  b                                           ; $79d0: $88
	sbc  b                                           ; $79d1: $98
	sbc  b                                           ; $79d2: $98
	ld   a, b                                        ; $79d3: $78
	sub  a                                           ; $79d4: $97
	sbc  b                                           ; $79d5: $98
	adc  b                                           ; $79d6: $88
	ld   a, b                                        ; $79d7: $78
	adc  c                                           ; $79d8: $89
	sbc  c                                           ; $79d9: $99
	ld   [hl], a                                     ; $79da: $77
	adc  b                                           ; $79db: $88
	adc  b                                           ; $79dc: $88
	sbc  b                                           ; $79dd: $98
	adc  b                                           ; $79de: $88
	ld   [hl], a                                     ; $79df: $77
	adc  b                                           ; $79e0: $88
	sbc  b                                           ; $79e1: $98
	adc  b                                           ; $79e2: $88
	sbc  b                                           ; $79e3: $98
	ld   a, b                                        ; $79e4: $78
	adc  b                                           ; $79e5: $88
	adc  c                                           ; $79e6: $89
	add  a                                           ; $79e7: $87
	sbc  c                                           ; $79e8: $99
	ld   l, b                                        ; $79e9: $68
	sub  a                                           ; $79ea: $97
	ld   a, b                                        ; $79eb: $78
	ld   [hl], a                                     ; $79ec: $77
	sbc  c                                           ; $79ed: $99
	adc  c                                           ; $79ee: $89
	add  a                                           ; $79ef: $87
	adc  c                                           ; $79f0: $89
	add  a                                           ; $79f1: $87
	ld   a, c                                        ; $79f2: $79
	ld   [hl], a                                     ; $79f3: $77
	add  a                                           ; $79f4: $87
	sbc  b                                           ; $79f5: $98
	ld   a, b                                        ; $79f6: $78
	sub  a                                           ; $79f7: $97
	adc  b                                           ; $79f8: $88
	adc  b                                           ; $79f9: $88
	sbc  b                                           ; $79fa: $98
	sbc  b                                           ; $79fb: $98
	ld   a, b                                        ; $79fc: $78
	adc  b                                           ; $79fd: $88

Jump_0dd_79fe:
	sub  a                                           ; $79fe: $97
	ld   a, b                                        ; $79ff: $78
	ld   l, b                                        ; $7a00: $68
	and  a                                           ; $7a01: $a7
	ld   l, c                                        ; $7a02: $69
	adc  b                                           ; $7a03: $88
	add  a                                           ; $7a04: $87
	sbc  d                                           ; $7a05: $9a
	add  [hl]                                        ; $7a06: $86
	sbc  b                                           ; $7a07: $98
	ld   a, b                                        ; $7a08: $78
	ld   a, b                                        ; $7a09: $78
	xor  b                                           ; $7a0a: $a8
	sbc  b                                           ; $7a0b: $98
	sbc  b                                           ; $7a0c: $98
	sbc  d                                           ; $7a0d: $9a
	halt                                             ; $7a0e: $76
	sub  a                                           ; $7a0f: $97
	ld   [hl], a                                     ; $7a10: $77
	sbc  c                                           ; $7a11: $99
	ld   a, c                                        ; $7a12: $79
	ld   a, b                                        ; $7a13: $78
	ld   a, c                                        ; $7a14: $79
	cp   c                                           ; $7a15: $b9
	sub  a                                           ; $7a16: $97
	adc  b                                           ; $7a17: $88
	ld   a, c                                        ; $7a18: $79
	xor  l                                           ; $7a19: $ad
	or   e                                           ; $7a1a: $b3
	ld   l, h                                        ; $7a1b: $6c
	xor  b                                           ; $7a1c: $a8
	ld   h, a                                        ; $7a1d: $67
	sbc  b                                           ; $7a1e: $98
	adc  c                                           ; $7a1f: $89
	sbc  c                                           ; $7a20: $99
	sub  [hl]                                        ; $7a21: $96
	ld   [hl], a                                     ; $7a22: $77
	ld   l, b                                        ; $7a23: $68
	add  a                                           ; $7a24: $87
	adc  c                                           ; $7a25: $89
	ld   a, c                                        ; $7a26: $79
	sub  a                                           ; $7a27: $97
	ld   a, c                                        ; $7a28: $79
	add  a                                           ; $7a29: $87
	sbc  d                                           ; $7a2a: $9a
	sbc  b                                           ; $7a2b: $98
	and  [hl]                                        ; $7a2c: $a6
	ld   e, d                                        ; $7a2d: $5a
	sub  a                                           ; $7a2e: $97
	ld   a, c                                        ; $7a2f: $79
	adc  d                                           ; $7a30: $8a
	add  [hl]                                        ; $7a31: $86
	ld   a, c                                        ; $7a32: $79
	add  [hl]                                        ; $7a33: $86
	add  a                                           ; $7a34: $87
	xor  c                                           ; $7a35: $a9
	ld   h, a                                        ; $7a36: $67
	adc  d                                           ; $7a37: $8a
	cp   h                                           ; $7a38: $bc
	ld   h, a                                        ; $7a39: $67
	xor  c                                           ; $7a3a: $a9
	ld   [hl], l                                     ; $7a3b: $75
	sbc  c                                           ; $7a3c: $99
	sub  a                                           ; $7a3d: $97
	ld   d, a                                        ; $7a3e: $57
	halt                                             ; $7a3f: $76
	ld   [hl], $a9                                   ; $7a40: $36 $a9
	ld   [hl], a                                     ; $7a42: $77
	ld   a, c                                        ; $7a43: $79
	ld   [hl], l                                     ; $7a44: $75
	xor  d                                           ; $7a45: $aa
	adc  b                                           ; $7a46: $88
	sub  [hl]                                        ; $7a47: $96
	ld   [hl], a                                     ; $7a48: $77
	ld   a, b                                        ; $7a49: $78
	ld   b, [hl]                                     ; $7a4a: $46
	adc  d                                           ; $7a4b: $8a
	halt                                             ; $7a4c: $76
	ld   a, c                                        ; $7a4d: $79
	jp   z, $b967                                    ; $7a4e: $ca $67 $b9

	ld   h, l                                        ; $7a51: $65
	ld   a, b                                        ; $7a52: $78
	halt                                             ; $7a53: $76
	ld   a, d                                        ; $7a54: $7a
	ld   b, a                                        ; $7a55: $47
	sbc  b                                           ; $7a56: $98
	sbc  b                                           ; $7a57: $98
	ld   d, l                                        ; $7a58: $55
	and  l                                           ; $7a59: $a5
	ld   b, [hl]                                     ; $7a5a: $46
	ld   d, a                                        ; $7a5b: $57
	add  [hl]                                        ; $7a5c: $86
	ld   l, b                                        ; $7a5d: $68
	adc  d                                           ; $7a5e: $8a
	and  a                                           ; $7a5f: $a7
	sbc  e                                           ; $7a60: $9b
	or   a                                           ; $7a61: $b7
	ld   a, h                                        ; $7a62: $7c
	cp   c                                           ; $7a63: $b9
	adc  d                                           ; $7a64: $8a
	cp   c                                           ; $7a65: $b9
	sbc  c                                           ; $7a66: $99
	add  h                                           ; $7a67: $84
	ld   [hl], $41                                   ; $7a68: $36 $41
	ld   de, $1311                                   ; $7a6a: $11 $11 $13
	ld   l, c                                        ; $7a6d: $69
	rst  $38                                         ; $7a6e: $ff
	rst  $38                                         ; $7a6f: $ff
	cp   $de                                         ; $7a70: $fe $de
	cp   l                                           ; $7a72: $bd
	rst  JumpTable                                         ; $7a73: $df
	rst  $38                                         ; $7a74: $ff
	cp   b                                           ; $7a75: $b8
	ld   b, c                                        ; $7a76: $41
	ld   de, $1111                                   ; $7a77: $11 $11 $11
	ld   de, $bf87                                   ; $7a7a: $11 $87 $bf
	rst  $38                                         ; $7a7d: $ff
	rst  $38                                         ; $7a7e: $ff
	db   $ec                                         ; $7a7f: $ec
	sbc  b                                           ; $7a80: $98
	rst  $28                                         ; $7a81: $ef
	db   $fc                                         ; $7a82: $fc
	reti                                             ; $7a83: $d9


	sub  a                                           ; $7a84: $97
	ld   hl, $1111                                   ; $7a85: $21 $11 $11
	ld   de, $ff6b                                   ; $7a88: $11 $6b $ff
	rst  $38                                         ; $7a8b: $ff
	rst  $38                                         ; $7a8c: $ff
	and  e                                           ; $7a8d: $a3
	ld   e, h                                        ; $7a8e: $5c
	cp   a                                           ; $7a8f: $bf
	cp   $ba                                         ; $7a90: $fe $ba
	ld   b, e                                        ; $7a92: $43
	or   e                                           ; $7a93: $b3
	ld   hl, $1111                                   ; $7a94: $21 $11 $11
	dec  de                                          ; $7a97: $1b
	cp   a                                           ; $7a98: $bf
	rst  $38                                         ; $7a99: $ff
	rst  $38                                         ; $7a9a: $ff
	push af                                          ; $7a9b: $f5

jr_0dd_7a9c:
	jr   c, jr_0dd_7a9c                              ; $7a9c: $38 $fe

	db   $ed                                         ; $7a9e: $ed
	db   $fc                                         ; $7a9f: $fc
	ld   sp, $9947                                   ; $7aa0: $31 $47 $99
	ld   de, $1111                                   ; $7aa3: $11 $11 $11
	ld   [hl], l                                     ; $7aa6: $75
	rst  $38                                         ; $7aa7: $ff
	rst  $38                                         ; $7aa8: $ff
	rst  $38                                         ; $7aa9: $ff
	ld   [hl], a                                     ; $7aaa: $77
	ld   a, [de]                                     ; $7aab: $1a
	rst  $38                                         ; $7aac: $ff
	db   $fc                                         ; $7aad: $fc
	and  h                                           ; $7aae: $a4
	ld   h, c                                        ; $7aaf: $61
	ld   l, b                                        ; $7ab0: $68
	add  e                                           ; $7ab1: $83
	ld   de, $1a11                                   ; $7ab2: $11 $11 $1a
	ei                                               ; $7ab5: $fb
	rst  $38                                         ; $7ab6: $ff
	rst  $38                                         ; $7ab7: $ff
	db   $f4                                         ; $7ab8: $f4
	rla                                              ; $7ab9: $17
	sbc  l                                           ; $7aba: $9d
	rst  $38                                         ; $7abb: $ff
	res  0, c                                        ; $7abc: $cb $81
	ld   b, h                                        ; $7abe: $44
	sbc  h                                           ; $7abf: $9c
	sub  c                                           ; $7ac0: $91
	ld   de, $1f11                                   ; $7ac1: $11 $11 $1f
	rst  $28                                         ; $7ac4: $ef
	rst  $38                                         ; $7ac5: $ff
	rst  $38                                         ; $7ac6: $ff
	pop  hl                                          ; $7ac7: $e1
	ld   [hl-], a                                    ; $7ac8: $32
	rst  $28                                         ; $7ac9: $ef
	rst  $38                                         ; $7aca: $ff
	adc  c                                           ; $7acb: $89
	ld   h, $1a                                      ; $7acc: $26 $1a
	db   $ed                                         ; $7ace: $ed
	ld   [hl], c                                     ; $7acf: $71
	ld   de, $1f11                                   ; $7ad0: $11 $11 $1f
	rst  $38                                         ; $7ad3: $ff
	rst  $38                                         ; $7ad4: $ff
	rst  $38                                         ; $7ad5: $ff
	add  c                                           ; $7ad6: $81
	dec  h                                           ; $7ad7: $25
	rst  $38                                         ; $7ad8: $ff
	db   $fd                                         ; $7ad9: $fd
	and  l                                           ; $7ada: $a5
	ld   d, [hl]                                     ; $7adb: $56
	ld   e, l                                        ; $7adc: $5d
	cp   l                                           ; $7add: $bd
	ld   sp, $1111                                   ; $7ade: $31 $11 $11
	cp   a                                           ; $7ae1: $bf
	rst  $38                                         ; $7ae2: $ff
	rst  $38                                         ; $7ae3: $ff
	rst  $38                                         ; $7ae4: $ff
	ld   hl, $ff48                                   ; $7ae5: $21 $48 $ff
	ld   a, [$4375]                                  ; $7ae8: $fa $75 $43
	ld   l, a                                        ; $7aeb: $6f
	db   $dd                                         ; $7aec: $dd
	ld   de, $1111                                   ; $7aed: $11 $11 $11
	rst  $38                                         ; $7af0: $ff
	rst  $38                                         ; $7af1: $ff
	rst  $38                                         ; $7af2: $ff
	rst  $38                                         ; $7af3: $ff
	ld   de, $ff28                                   ; $7af4: $11 $28 $ff
	ld   hl, sp-$7b                                  ; $7af7: $f8 $85
	inc  h                                           ; $7af9: $24
	adc  [hl]                                        ; $7afa: $8e
	db   $ed                                         ; $7afb: $ed
	ld   sp, $1111                                   ; $7afc: $31 $11 $11
	rst  $38                                         ; $7aff: $ff
	rst  $38                                         ; $7b00: $ff
	rst  $38                                         ; $7b01: $ff
	cp   $31                                         ; $7b02: $fe $31
	rla                                              ; $7b04: $17
	rst  $38                                         ; $7b05: $ff
	ei                                               ; $7b06: $fb
	ld   h, l                                        ; $7b07: $65
	dec  d                                           ; $7b08: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b09: $cf
	ei                                               ; $7b0a: $fb
	ld   de, $1111                                   ; $7b0b: $11 $11 $11
	sbc  a                                           ; $7b0e: $9f
	rst  $38                                         ; $7b0f: $ff
	rst  $38                                         ; $7b10: $ff
	rst  $38                                         ; $7b11: $ff
	ld   sp, $df36                                   ; $7b12: $31 $36 $df
	db   $fd                                         ; $7b15: $fd
	ld   [hl], a                                     ; $7b16: $77
	inc  [hl]                                        ; $7b17: $34
	sbc  a                                           ; $7b18: $9f
	cp   $21                                         ; $7b19: $fe $21
	ld   de, $6f11                                   ; $7b1b: $11 $11 $6f
	rst  $38                                         ; $7b1e: $ff
	rst  $38                                         ; $7b1f: $ff
	rst  $38                                         ; $7b20: $ff
	ld   b, c                                        ; $7b21: $41
	inc  de                                          ; $7b22: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b23: $cf
	ld   a, [$6585]                                  ; $7b24: $fa $85 $65
	ld   a, [hl]                                     ; $7b27: $7e
	rst  $28                                         ; $7b28: $ef
	ld   [hl], c                                     ; $7b29: $71
	ld   de, $1f11                                   ; $7b2a: $11 $11 $1f
	rst  $38                                         ; $7b2d: $ff
	rst  $38                                         ; $7b2e: $ff
	rst  $38                                         ; $7b2f: $ff
	or   c                                           ; $7b30: $b1
	inc  de                                          ; $7b31: $13
	xor  a                                           ; $7b32: $af
	cp   $67                                         ; $7b33: $fe $67
	ld   b, [hl]                                     ; $7b35: $46
	ld   a, [hl]                                     ; $7b36: $7e
	rst  $38                                         ; $7b37: $ff
	or   c                                           ; $7b38: $b1
	ld   de, $1f11                                   ; $7b39: $11 $11 $1f
	rst  $38                                         ; $7b3c: $ff
	rst  $38                                         ; $7b3d: $ff
	rst  $38                                         ; $7b3e: $ff
	ldh  [c], a                                      ; $7b3f: $e2
	ld   de, $ff6c                                   ; $7b40: $11 $6c $ff
	ld   [hl], a                                     ; $7b43: $77
	ld   h, [hl]                                     ; $7b44: $66
	ld   l, h                                        ; $7b45: $6c
	rst  $38                                         ; $7b46: $ff
	db   $d3                                         ; $7b47: $d3
	ld   de, $1611                                   ; $7b48: $11 $11 $16
	rst  $38                                         ; $7b4b: $ff
	rst  $38                                         ; $7b4c: $ff
	rst  $38                                         ; $7b4d: $ff
	ld   a, [$5911]                                  ; $7b4e: $fa $11 $59
	rst  $28                                         ; $7b51: $ef
	add  l                                           ; $7b52: $85
	ld   d, a                                        ; $7b53: $57
	sbc  d                                           ; $7b54: $9a
	rst  $38                                         ; $7b55: $ff
	add  sp, $11                                     ; $7b56: $e8 $11
	ld   de, rAUD1LEN                                   ; $7b58: $11 $11 $ff
	rst  $38                                         ; $7b5b: $ff
	rst  $38                                         ; $7b5c: $ff
	rst  $38                                         ; $7b5d: $ff
	ld   h, d                                        ; $7b5e: $62
	scf                                              ; $7b5f: $37
	cp   [hl]                                        ; $7b60: $be
	call nz, $ab45                                   ; $7b61: $c4 $45 $ab
	rst  $28                                         ; $7b64: $ef
	db   $fc                                         ; $7b65: $fc
	ld   b, c                                        ; $7b66: $41
	ld   de, $1f11                                   ; $7b67: $11 $11 $1f
	rst  $38                                         ; $7b6a: $ff
	rst  $38                                         ; $7b6b: $ff
	rst  $38                                         ; $7b6c: $ff
	ld   hl, sp+$43                                  ; $7b6d: $f8 $43
	ld   a, d                                        ; $7b6f: $7a
	ret  c                                           ; $7b70: $d8

	inc  sp                                          ; $7b71: $33
	ld   e, d                                        ; $7b72: $5a
	rst  JumpTable                                         ; $7b73: $df
	rst  $28                                         ; $7b74: $ef
	call nz, $1111                                   ; $7b75: $c4 $11 $11
	ld   de, $ffef                                   ; $7b78: $11 $ef $ff
	rst  $38                                         ; $7b7b: $ff
	rst  $38                                         ; $7b7c: $ff
	or   a                                           ; $7b7d: $b7
	ld   a, b                                        ; $7b7e: $78
	cp   e                                           ; $7b7f: $bb
	ld   h, e                                        ; $7b80: $63
	inc  h                                           ; $7b81: $24
	sbc  d                                           ; $7b82: $9a
	db   $ed                                         ; $7b83: $ed
	db   $ec                                         ; $7b84: $ec
	ld   h, c                                        ; $7b85: $61
	ld   de, $1b11                                   ; $7b86: $11 $11 $1b
	rst  $38                                         ; $7b89: $ff
	rst  $38                                         ; $7b8a: $ff
	rst  $38                                         ; $7b8b: $ff
	rst  $38                                         ; $7b8c: $ff
	cp   d                                           ; $7b8d: $ba
	xor  e                                           ; $7b8e: $ab
	or   a                                           ; $7b8f: $b7
	ld   b, c                                        ; $7b90: $41
	daa                                              ; $7b91: $27
	sbc  e                                           ; $7b92: $9b
	cp   e                                           ; $7b93: $bb
	or   a                                           ; $7b94: $b7
	ld   sp, $1111                                   ; $7b95: $31 $11 $11
	adc  e                                           ; $7b98: $8b
	rst  $38                                         ; $7b99: $ff
	rst  $38                                         ; $7b9a: $ff
	rst  $38                                         ; $7b9b: $ff
	cp   $b9                                         ; $7b9c: $fe $b9
	call c, $35c7                                    ; $7b9e: $dc $c7 $35
	ld   l, c                                        ; $7ba1: $69
	sbc  e                                           ; $7ba2: $9b
	xor  c                                           ; $7ba3: $a9
	add  h                                           ; $7ba4: $84
	ld   de, $1411                                   ; $7ba5: $11 $11 $14
	ld   l, e                                        ; $7ba8: $6b
	cp   d                                           ; $7ba9: $ba
	call c, $fdff                                    ; $7baa: $dc $ff $fd
	xor  h                                           ; $7bad: $ac
	call $98a7                                       ; $7bae: $cd $a7 $98
	xor  d                                           ; $7bb1: $aa
	cp   d                                           ; $7bb2: $ba
	sbc  c                                           ; $7bb3: $99
	ld   [hl], l                                     ; $7bb4: $75
	ld   de, $1511                                   ; $7bb5: $11 $11 $15
	add  a                                           ; $7bb8: $87
	ld   b, l                                        ; $7bb9: $45
	ld   d, a                                        ; $7bba: $57
	cp   e                                           ; $7bbb: $bb
	res  7, l                                        ; $7bbc: $cb $bd
	sbc  $cd                                         ; $7bbe: $de $cd
	xor  $fe                                         ; $7bc0: $ee $fe
	db   $fd                                         ; $7bc2: $fd
	cp   c                                           ; $7bc3: $b9
	halt                                             ; $7bc4: $76
	ld   sp, $1411                                   ; $7bc5: $31 $11 $14
	ld   sp, $1111                                   ; $7bc8: $31 $11 $11
	ld   b, [hl]                                     ; $7bcb: $46
	adc  b                                           ; $7bcc: $88
	cp   l                                           ; $7bcd: $bd
	rst  $38                                         ; $7bce: $ff
	rst  $38                                         ; $7bcf: $ff
	rst  $38                                         ; $7bd0: $ff
	rst  $38                                         ; $7bd1: $ff
	rst  $38                                         ; $7bd2: $ff
	db   $ec                                         ; $7bd3: $ec
	sub  [hl]                                        ; $7bd4: $96
	ld   sp, $1211                                   ; $7bd5: $31 $11 $12
	ld   de, $1111                                   ; $7bd8: $11 $11 $11
	ld   [de], a                                     ; $7bdb: $12
	ld   b, [hl]                                     ; $7bdc: $46
	sbc  h                                           ; $7bdd: $9c
	rst  $38                                         ; $7bde: $ff
	rst  $38                                         ; $7bdf: $ff
	rst  $38                                         ; $7be0: $ff
	rst  $38                                         ; $7be1: $ff
	rst  $38                                         ; $7be2: $ff
	cp   $a8                                         ; $7be3: $fe $a8
	ld   d, e                                        ; $7be5: $53
	ld   de, $1111                                   ; $7be6: $11 $11 $11
	ld   de, $1111                                   ; $7be9: $11 $11 $11
	inc  h                                           ; $7bec: $24
	ld   a, e                                        ; $7bed: $7b
	rst  JumpTable                                         ; $7bee: $df
	rst  $38                                         ; $7bef: $ff
	rst  $38                                         ; $7bf0: $ff
	rst  $38                                         ; $7bf1: $ff
	rst  $38                                         ; $7bf2: $ff
	rst  $38                                         ; $7bf3: $ff
	jp   c, $5286                                    ; $7bf4: $da $86 $52

	ld   de, $1111                                   ; $7bf7: $11 $11 $11
	ld   de, $1211                                   ; $7bfa: $11 $11 $12
	ld   [hl], $9d                                   ; $7bfd: $36 $9d
	rst  $38                                         ; $7bff: $ff
	rst  $38                                         ; $7c00: $ff
	rst  $38                                         ; $7c01: $ff
	rst  $38                                         ; $7c02: $ff
	rst  $38                                         ; $7c03: $ff
	rst  $38                                         ; $7c04: $ff
	ret                                              ; $7c05: $c9


	add  l                                           ; $7c06: $85
	ld   hl, $1111                                   ; $7c07: $21 $11 $11
	ld   de, $1111                                   ; $7c0a: $11 $11 $11
	inc  bc                                          ; $7c0d: $03
	ld   l, b                                        ; $7c0e: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c0f: $cf
	rst  $38                                         ; $7c10: $ff
	rst  $38                                         ; $7c11: $ff
	rst  $38                                         ; $7c12: $ff
	rst  $38                                         ; $7c13: $ff
	rst  $38                                         ; $7c14: $ff
	db   $fd                                         ; $7c15: $fd
	and  a                                           ; $7c16: $a7
	ld   d, e                                        ; $7c17: $53
	ld   de, $1111                                   ; $7c18: $11 $11 $11
	ld   de, $1111                                   ; $7c1b: $11 $11 $11
	dec  h                                           ; $7c1e: $25
	ld   a, e                                        ; $7c1f: $7b
	rst  $28                                         ; $7c20: $ef
	rst  $38                                         ; $7c21: $ff
	rst  $38                                         ; $7c22: $ff
	rst  $38                                         ; $7c23: $ff
	rst  $38                                         ; $7c24: $ff
	rst  $38                                         ; $7c25: $ff
	db   $db                                         ; $7c26: $db
	sub  [hl]                                        ; $7c27: $96
	ld   d, d                                        ; $7c28: $52
	ld   de, $1111                                   ; $7c29: $11 $11 $11
	ld   de, $1111                                   ; $7c2c: $11 $11 $11
	dec  [hl]                                        ; $7c2f: $35
	adc  h                                           ; $7c30: $8c
	rst  $38                                         ; $7c31: $ff
	rst  $38                                         ; $7c32: $ff
	rst  $38                                         ; $7c33: $ff
	rst  $38                                         ; $7c34: $ff
	rst  $38                                         ; $7c35: $ff
	rst  $38                                         ; $7c36: $ff
	cp   c                                           ; $7c37: $b9
	halt                                             ; $7c38: $76
	ld   b, c                                        ; $7c39: $41
	ld   de, $1111                                   ; $7c3a: $11 $11 $11
	ld   de, $1111                                   ; $7c3d: $11 $11 $11
	ld   b, a                                        ; $7c40: $47
	cp   a                                           ; $7c41: $bf
	rst  $38                                         ; $7c42: $ff
	rst  $38                                         ; $7c43: $ff
	rst  $38                                         ; $7c44: $ff
	rst  $38                                         ; $7c45: $ff
	rst  $38                                         ; $7c46: $ff
	db   $fd                                         ; $7c47: $fd
	cp   c                                           ; $7c48: $b9
	ld   [hl], l                                     ; $7c49: $75
	ld   hl, $1111                                   ; $7c4a: $21 $11 $11
	ld   de, $1111                                   ; $7c4d: $11 $11 $11
	inc  de                                          ; $7c50: $13
	ld   l, d                                        ; $7c51: $6a
	rst  $28                                         ; $7c52: $ef
	rst  $38                                         ; $7c53: $ff
	rst  $38                                         ; $7c54: $ff
	rst  $38                                         ; $7c55: $ff
	rst  $38                                         ; $7c56: $ff
	rst  $38                                         ; $7c57: $ff
	db   $ec                                         ; $7c58: $ec
	sbc  b                                           ; $7c59: $98
	ld   h, e                                        ; $7c5a: $63
	ld   de, $1111                                   ; $7c5b: $11 $11 $11
	ld   de, $1111                                   ; $7c5e: $11 $11 $11
	dec  [hl]                                        ; $7c61: $35
	sbc  h                                           ; $7c62: $9c
	rst  $38                                         ; $7c63: $ff
	rst  $38                                         ; $7c64: $ff
	rst  $38                                         ; $7c65: $ff
	rst  $38                                         ; $7c66: $ff
	rst  $38                                         ; $7c67: $ff
	cp   $cb                                         ; $7c68: $fe $cb
	add  [hl]                                        ; $7c6a: $86
	ld   b, c                                        ; $7c6b: $41
	ld   de, $1111                                   ; $7c6c: $11 $11 $11
	ld   de, $1211                                   ; $7c6f: $11 $11 $12
	ld   d, a                                        ; $7c72: $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c73: $cf
	rst  $38                                         ; $7c74: $ff
	rst  $38                                         ; $7c75: $ff
	rst  $38                                         ; $7c76: $ff
	rst  $38                                         ; $7c77: $ff
	rst  $38                                         ; $7c78: $ff
	db   $fc                                         ; $7c79: $fc
	xor  b                                           ; $7c7a: $a8
	ld   h, h                                        ; $7c7b: $64
	ld   de, $1111                                   ; $7c7c: $11 $11 $11
	ld   de, $1111                                   ; $7c7f: $11 $11 $11
	dec  h                                           ; $7c82: $25
	adc  h                                           ; $7c83: $8c
	rst  $38                                         ; $7c84: $ff
	rst  $38                                         ; $7c85: $ff
	rst  $38                                         ; $7c86: $ff
	rst  $38                                         ; $7c87: $ff
	rst  $38                                         ; $7c88: $ff
	rst  $38                                         ; $7c89: $ff
	reti                                             ; $7c8a: $d9


	ld   [hl], l                                     ; $7c8b: $75
	ld   b, c                                        ; $7c8c: $41
	ld   de, $1111                                   ; $7c8d: $11 $11 $11
	ld   de, $2511                                   ; $7c90: $11 $11 $25
	ld   a, d                                        ; $7c93: $7a
	rst  JumpTable                                         ; $7c94: $df
	rst  $38                                         ; $7c95: $ff
	rst  $38                                         ; $7c96: $ff
	rst  $38                                         ; $7c97: $ff
	rst  $38                                         ; $7c98: $ff
	rst  $38                                         ; $7c99: $ff
	res  2, [hl]                                     ; $7c9a: $cb $96
	ld   b, d                                        ; $7c9c: $42
	ld   de, $1111                                   ; $7c9d: $11 $11 $11
	ld   de, $2511                                   ; $7ca0: $11 $11 $25
	sbc  h                                           ; $7ca3: $9c
	rst  JumpTable                                         ; $7ca4: $df
	rst  $38                                         ; $7ca5: $ff
	rst  $38                                         ; $7ca6: $ff
	rst  $38                                         ; $7ca7: $ff
	rst  $38                                         ; $7ca8: $ff
	cp   $cb                                         ; $7ca9: $fe $cb
	add  l                                           ; $7cab: $85
	ld   de, $1111                                   ; $7cac: $11 $11 $11
	ld   [de], a                                     ; $7caf: $12
	inc  sp                                          ; $7cb0: $33
	inc  sp                                          ; $7cb1: $33
	ld   e, d                                        ; $7cb2: $5a
	rst  $28                                         ; $7cb3: $ef
	rst  $38                                         ; $7cb4: $ff
	rst  $38                                         ; $7cb5: $ff
	rst  $38                                         ; $7cb6: $ff
	rst  $38                                         ; $7cb7: $ff
	rst  $28                                         ; $7cb8: $ef
	db   $ec                                         ; $7cb9: $ec
	add  l                                           ; $7cba: $85
	ld   sp, $1111                                   ; $7cbb: $31 $11 $11
	ld   de, $cd38                                   ; $7cbe: $11 $38 $cd
	sbc  $ef                                         ; $7cc1: $de $ef
	rst  $38                                         ; $7cc3: $ff
	jp   c, $ffef                                    ; $7cc4: $da $ef $ff

	cp   c                                           ; $7cc7: $b9
	sbc  c                                           ; $7cc8: $99
	cp   c                                           ; $7cc9: $b9
	ld   [hl], h                                     ; $7cca: $74
	ld   hl, $1111                                   ; $7ccb: $21 $11 $11
	ld   de, $ffaf                                   ; $7cce: $11 $af $ff
	rst  $38                                         ; $7cd1: $ff
	rst  $38                                         ; $7cd2: $ff
	ld   [$ef77], a                                  ; $7cd3: $ea $77 $ef
	ei                                               ; $7cd6: $fb
	sbc  c                                           ; $7cd7: $99
	xor  h                                           ; $7cd8: $ac
	bit  4, d                                        ; $7cd9: $cb $62
	ld   de, $1111                                   ; $7cdb: $11 $11 $11
	ld   a, [de]                                     ; $7cde: $1a
	rst  $38                                         ; $7cdf: $ff
	rst  $38                                         ; $7ce0: $ff
	rst  $38                                         ; $7ce1: $ff
	db   $fd                                         ; $7ce2: $fd
	ld   [hl], l                                     ; $7ce3: $75
	inc  a                                           ; $7ce4: $3c
	rst  $38                                         ; $7ce5: $ff
	ret  c                                           ; $7ce6: $d8

	sbc  e                                           ; $7ce7: $9b
	adc  $97                                         ; $7ce8: $ce $97
	ld   d, c                                        ; $7cea: $51
	ld   de, $1111                                   ; $7ceb: $11 $11 $11
	xor  a                                           ; $7cee: $af
	rst  $38                                         ; $7cef: $ff
	rst  $38                                         ; $7cf0: $ff
	rst  $38                                         ; $7cf1: $ff
	call nz, $af23                                   ; $7cf2: $c4 $23 $af
	db   $fd                                         ; $7cf5: $fd
	ld   [hl], a                                     ; $7cf6: $77
	db   $dd                                         ; $7cf7: $dd
	ret  c                                           ; $7cf8: $d8

	halt                                             ; $7cf9: $76
	ld   hl, $1111                                   ; $7cfa: $21 $11 $11
	rra                                              ; $7cfd: $1f
	rst  $38                                         ; $7cfe: $ff
	rst  $38                                         ; $7cff: $ff
	rst  $38                                         ; $7d00: $ff
	rst  $30                                         ; $7d01: $f7
	ld   hl, $ff1f                                   ; $7d02: $21 $1f $ff
	and  [hl]                                        ; $7d05: $a6
	sbc  l                                           ; $7d06: $9d
	ld   a, [$837b]                                  ; $7d07: $fa $7b $83
	ld   de, $1111                                   ; $7d0a: $11 $11 $11
	rst  $38                                         ; $7d0d: $ff
	rst  $38                                         ; $7d0e: $ff
	rst  $38                                         ; $7d0f: $ff
	db   $fd                                         ; $7d10: $fd
	ld   b, c                                        ; $7d11: $41
	inc  de                                          ; $7d12: $13
	rst  $38                                         ; $7d13: $ff
	db   $ec                                         ; $7d14: $ec
	adc  e                                           ; $7d15: $8b
	res  5, c                                        ; $7d16: $cb $a9
	cp   b                                           ; $7d18: $b8
	ld   de, $1111                                   ; $7d19: $11 $11 $11
	rra                                              ; $7d1c: $1f
	rst  $38                                         ; $7d1d: $ff
	rst  $38                                         ; $7d1e: $ff
	rst  $38                                         ; $7d1f: $ff
	sub  d                                           ; $7d20: $92
	ld   [de], a                                     ; $7d21: $12
	ld   l, a                                        ; $7d22: $6f
	db   $fc                                         ; $7d23: $fc
	xor  d                                           ; $7d24: $aa
	cp   l                                           ; $7d25: $bd
	ret  z                                           ; $7d26: $c8

	sbc  c                                           ; $7d27: $99
	ld   b, c                                        ; $7d28: $41
	ld   de, $1c11                                   ; $7d29: $11 $11 $1c
	rst  $38                                         ; $7d2c: $ff
	rst  $38                                         ; $7d2d: $ff
	rst  $38                                         ; $7d2e: $ff
	db   $f4                                         ; $7d2f: $f4
	ld   de, $fe4f                                   ; $7d30: $11 $4f $fe
	sbc  b                                           ; $7d33: $98
	xor  e                                           ; $7d34: $ab
	jp   z, $946a                                    ; $7d35: $ca $6a $94

	ld   de, $1111                                   ; $7d38: $11 $11 $11
	rst  $38                                         ; $7d3b: $ff
	rst  $38                                         ; $7d3c: $ff
	rst  $38                                         ; $7d3d: $ff
	ld   sp, hl                                      ; $7d3e: $f9
	ld   de, $ff17                                   ; $7d3f: $11 $17 $ff
	db   $db                                         ; $7d42: $db
	xor  l                                           ; $7d43: $ad
	cp   c                                           ; $7d44: $b9
	ld   e, c                                        ; $7d45: $59
	rst  $10                                         ; $7d46: $d7
	ld   de, $1111                                   ; $7d47: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d4a: $cf
	rst  $38                                         ; $7d4b: $ff
	rst  $38                                         ; $7d4c: $ff
	rst  $38                                         ; $7d4d: $ff
	ld   hl, rAUD1LOW                                   ; $7d4e: $21 $13 $ff
	db   $ed                                         ; $7d51: $ed
	adc  b                                           ; $7d52: $88
	ret                                              ; $7d53: $c9


	sbc  b                                           ; $7d54: $98
	db   $eb                                         ; $7d55: $eb
	ld   de, $1111                                   ; $7d56: $11 $11 $11
	rra                                              ; $7d59: $1f
	rst  $38                                         ; $7d5a: $ff
	rst  $38                                         ; $7d5b: $ff
	rst  $38                                         ; $7d5c: $ff
	ld   b, c                                        ; $7d5d: $41
	ld   sp, $ff9f                                   ; $7d5e: $31 $9f $ff
	or   a                                           ; $7d61: $b7
	cp   e                                           ; $7d62: $bb
	and  [hl]                                        ; $7d63: $a6
	sbc  h                                           ; $7d64: $9c
	ld   d, c                                        ; $7d65: $51
	ld   de, $1f11                                   ; $7d66: $11 $11 $1f
	rst  $38                                         ; $7d69: $ff
	rst  $38                                         ; $7d6a: $ff
	rst  $38                                         ; $7d6b: $ff
	pop  de                                          ; $7d6c: $d1
	ld   de, $ff7f                                   ; $7d6d: $11 $7f $ff
	jp   z, $99b9                                    ; $7d70: $ca $b9 $99

	xor  d                                           ; $7d73: $aa
	ld   h, c                                        ; $7d74: $61
	ld   de, $1d11                                   ; $7d75: $11 $11 $1d
	rst  $38                                         ; $7d78: $ff
	rst  $38                                         ; $7d79: $ff
	rst  $38                                         ; $7d7a: $ff
	ldh  a, [c]                                      ; $7d7b: $f2
	ld   de, $fd4f                                   ; $7d7c: $11 $4f $fd
	cp   c                                           ; $7d7f: $b9
	cp   e                                           ; $7d80: $bb
	and  [hl]                                        ; $7d81: $a6
	ld   a, h                                        ; $7d82: $7c
	and  d                                           ; $7d83: $a2
	ld   de, $1211                                   ; $7d84: $11 $11 $12
	rst  $38                                         ; $7d87: $ff
	rst  $38                                         ; $7d88: $ff
	rst  $38                                         ; $7d89: $ff
	ldh  a, [c]                                      ; $7d8a: $f2
	ld   [de], a                                     ; $7d8b: $12
	ld   a, $ff                                      ; $7d8c: $3e $ff
	db   $eb                                         ; $7d8e: $eb
	xor  d                                           ; $7d8f: $aa
	ld   [hl], a                                     ; $7d90: $77
	ld   a, l                                        ; $7d91: $7d
	jp   $1111                                       ; $7d92: $c3 $11 $11


	ld   de, $ffff                                   ; $7d95: $11 $ff $ff
	rst  $38                                         ; $7d98: $ff
	di                                               ; $7d99: $f3
	inc  sp                                          ; $7d9a: $33
	inc  e                                           ; $7d9b: $1c
	cp   $cc                                         ; $7d9c: $fe $cc
	xor  d                                           ; $7d9e: $aa
	ld   [hl], a                                     ; $7d9f: $77
	adc  l                                           ; $7da0: $8d
	or   c                                           ; $7da1: $b1
	ld   de, $1111                                   ; $7da2: $11 $11 $11
	rst  $38                                         ; $7da5: $ff
	rst  $38                                         ; $7da6: $ff
	rst  $38                                         ; $7da7: $ff
	push af                                          ; $7da8: $f5
	dec  d                                           ; $7da9: $15
	ld   e, e                                        ; $7daa: $5b
	db   $fd                                         ; $7dab: $fd
	res  3, c                                        ; $7dac: $cb $99
	ld   l, b                                        ; $7dae: $68
	adc  $b1                                         ; $7daf: $ce $b1
	ld   de, $1111                                   ; $7db1: $11 $11 $11
	rst  $38                                         ; $7db4: $ff
	rst  $38                                         ; $7db5: $ff
	rst  $38                                         ; $7db6: $ff
	rst  $30                                         ; $7db7: $f7
	inc  d                                           ; $7db8: $14
	ld   e, c                                        ; $7db9: $59
	db   $fd                                         ; $7dba: $fd
	call z, $869a                                    ; $7dbb: $cc $9a $86
	sbc  [hl]                                        ; $7dbe: $9e
	jp   $1111                                       ; $7dbf: $c3 $11 $11


	ld   de, $ffff                                   ; $7dc2: $11 $ff $ff
	rst  $38                                         ; $7dc5: $ff
	db   $fd                                         ; $7dc6: $fd
	ld   [hl], $68                                   ; $7dc7: $36 $68
	db   $ec                                         ; $7dc9: $ec
	call z, Call_0dd_78a7                            ; $7dca: $cc $a7 $78
	xor  [hl]                                        ; $7dcd: $ae
	push bc                                          ; $7dce: $c5
	ld   de, $1111                                   ; $7dcf: $11 $11 $11
	rst  $28                                         ; $7dd2: $ef
	rst  JumpTable                                         ; $7dd3: $df
	rst  $38                                         ; $7dd4: $ff
	rst  $38                                         ; $7dd5: $ff
	ld   c, c                                        ; $7dd6: $49
	and  l                                           ; $7dd7: $a5
	db   $db                                         ; $7dd8: $db
	sbc  e                                           ; $7dd9: $9b
	add  [hl]                                        ; $7dda: $86
	ld   l, c                                        ; $7ddb: $69
	xor  l                                           ; $7ddc: $ad
	rst  $10                                         ; $7ddd: $d7
	ld   de, $1111                                   ; $7dde: $11 $11 $11
	sbc  h                                           ; $7de1: $9c
	cp   a                                           ; $7de2: $bf
	rst  $38                                         ; $7de3: $ff
	rst  $38                                         ; $7de4: $ff
	xor  h                                           ; $7de5: $ac
	call nz, $8acc                                   ; $7de6: $c4 $cc $8a
	ld   h, [hl]                                     ; $7de9: $66
	ld   l, b                                        ; $7dea: $68
	sbc  e                                           ; $7deb: $9b
	rst  $10                                         ; $7dec: $d7
	ld   sp, $1111                                   ; $7ded: $31 $11 $11
	ld   l, b                                        ; $7df0: $68
	ld   l, a                                        ; $7df1: $6f
	rst  $38                                         ; $7df2: $ff
	rst  $38                                         ; $7df3: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7df4: $cf
	push de                                          ; $7df5: $d5
	db   $dd                                         ; $7df6: $dd
	xor  c                                           ; $7df7: $a9
	ld   d, e                                        ; $7df8: $53
	jr   c, jr_0dd_7e55                              ; $7df9: $38 $5a

	rst  $10                                         ; $7dfb: $d7
	ld   sp, $1111                                   ; $7dfc: $31 $11 $11
	ld   h, l                                        ; $7dff: $65
	ld   l, a                                        ; $7e00: $6f
	rst  $38                                         ; $7e01: $ff
	rst  $38                                         ; $7e02: $ff
	rst  JumpTable                                         ; $7e03: $df
	ld   hl, sp-$14                                  ; $7e04: $f8 $ec
	ret                                              ; $7e06: $c9


	ld   sp, $3836                                   ; $7e07: $31 $36 $38
	sub  l                                           ; $7e0a: $95
	ld   d, c                                        ; $7e0b: $51
	ld   de, $6111                                   ; $7e0c: $11 $11 $61
	adc  a                                           ; $7e0f: $8f
	rst  $38                                         ; $7e10: $ff
	rst  $38                                         ; $7e11: $ff
	rst  $38                                         ; $7e12: $ff
	db   $dd                                         ; $7e13: $dd
	cp   $d8                                         ; $7e14: $fe $d8
	ld   sp, $1642                                   ; $7e16: $31 $42 $16
	ld   d, e                                        ; $7e19: $53
	ld   sp, $1211                                   ; $7e1a: $31 $11 $12
	ld   [hl-], a                                    ; $7e1d: $32
	xor  a                                           ; $7e1e: $af
	rst  $38                                         ; $7e1f: $ff
	rst  $38                                         ; $7e20: $ff
	rst  $38                                         ; $7e21: $ff
	rst  $38                                         ; $7e22: $ff
	rst  $38                                         ; $7e23: $ff
	ld   sp, hl                                      ; $7e24: $f9
	ld   b, d                                        ; $7e25: $42
	ld   hl, $1112                                   ; $7e26: $21 $12 $11
	ld   de, $1611                                   ; $7e29: $11 $11 $16
	dec  d                                           ; $7e2c: $15
	rst  $38                                         ; $7e2d: $ff
	rst  $38                                         ; $7e2e: $ff
	rst  $38                                         ; $7e2f: $ff
	rst  $38                                         ; $7e30: $ff
	rst  $38                                         ; $7e31: $ff
	rst  $38                                         ; $7e32: $ff
	reti                                             ; $7e33: $d9


	ld   d, l                                        ; $7e34: $55
	ld   de, $1111                                   ; $7e35: $11 $11 $11
	ld   de, $3311                                   ; $7e38: $11 $11 $33
	ld   c, d                                        ; $7e3b: $4a
	rst  JumpTable                                         ; $7e3c: $df
	rst  $38                                         ; $7e3d: $ff
	rst  $38                                         ; $7e3e: $ff
	rst  $38                                         ; $7e3f: $ff
	rst  $38                                         ; $7e40: $ff
	rst  $38                                         ; $7e41: $ff
	ld   [$1174], a                                  ; $7e42: $ea $74 $11
	ld   de, $1111                                   ; $7e45: $11 $11 $11
	ld   de, $5754                                   ; $7e48: $11 $54 $57
	sbc  d                                           ; $7e4b: $9a
	ret                                              ; $7e4c: $c9


	cp   [hl]                                        ; $7e4d: $be
	sbc  $ff                                         ; $7e4e: $de $ff
	rst  $38                                         ; $7e50: $ff
	call c, $87ba                                    ; $7e51: $dc $ba $87
	ld   d, l                                        ; $7e54: $55

jr_0dd_7e55:
	ld   b, h                                        ; $7e55: $44
	ld   d, l                                        ; $7e56: $55
	ld   d, l                                        ; $7e57: $55
	ld   h, [hl]                                     ; $7e58: $66
	ld   d, h                                        ; $7e59: $54
	ld   b, e                                        ; $7e5a: $43
	ld   [hl+], a                                    ; $7e5b: $22
	ld   [hl+], a                                    ; $7e5c: $22
	ld   b, l                                        ; $7e5d: $45
	ld   a, c                                        ; $7e5e: $79
	cp   l                                           ; $7e5f: $bd
	rst  $38                                         ; $7e60: $ff
	xor  $ee                                         ; $7e61: $ee $ee
	db   $dd                                         ; $7e63: $dd
	call z, $baba                                    ; $7e64: $cc $ba $ba
	adc  b                                           ; $7e67: $88
	halt                                             ; $7e68: $76
	ld   d, h                                        ; $7e69: $54
	ld   [hl-], a                                    ; $7e6a: $32
	ld   hl, $1111                                   ; $7e6b: $21 $11 $11
	inc  h                                           ; $7e6e: $24
	ld   h, a                                        ; $7e6f: $67
	adc  c                                           ; $7e70: $89
	xor  e                                           ; $7e71: $ab
	sbc  $ee                                         ; $7e72: $de $ee
	rst  $38                                         ; $7e74: $ff
	cp   $ed                                         ; $7e75: $fe $ed
	db   $dd                                         ; $7e77: $dd
	jp   z, $65a8                                    ; $7e78: $ca $a8 $65

	ld   b, e                                        ; $7e7b: $43
	inc  sp                                          ; $7e7c: $33
	ld   [hl+], a                                    ; $7e7d: $22
	ld   de, $1211                                   ; $7e7e: $11 $11 $12
	ld   b, l                                        ; $7e81: $45
	ld   h, a                                        ; $7e82: $67
	sbc  d                                           ; $7e83: $9a
	call z, $ffdf                                    ; $7e84: $cc $df $ff
	xor  $dd                                         ; $7e87: $ee $dd
	res  5, e                                        ; $7e89: $cb $ab
	sbc  c                                           ; $7e8b: $99
	sub  a                                           ; $7e8c: $97
	halt                                             ; $7e8d: $76
	ld   d, h                                        ; $7e8e: $54
	ld   b, e                                        ; $7e8f: $43
	ld   hl, $1211                                   ; $7e90: $21 $11 $12
	ld   b, h                                        ; $7e93: $44
	ld   d, a                                        ; $7e94: $57
	adc  b                                           ; $7e95: $88
	xor  d                                           ; $7e96: $aa
	xor  e                                           ; $7e97: $ab
	cp   h                                           ; $7e98: $bc
	res  7, h                                        ; $7e99: $cb $bc
	db   $dd                                         ; $7e9b: $dd
	call z, $aacb                                    ; $7e9c: $cc $cb $aa
	sbc  b                                           ; $7e9f: $98
	ld   [hl], a                                     ; $7ea0: $77
	ld   h, [hl]                                     ; $7ea1: $66
	ld   h, l                                        ; $7ea2: $65
	ld   d, h                                        ; $7ea3: $54
	ld   b, e                                        ; $7ea4: $43
	inc  sp                                          ; $7ea5: $33
	inc  sp                                          ; $7ea6: $33
	ld   b, h                                        ; $7ea7: $44
	ld   b, l                                        ; $7ea8: $45
	ld   h, a                                        ; $7ea9: $67
	adc  c                                           ; $7eaa: $89
	xor  d                                           ; $7eab: $aa
	cp   e                                           ; $7eac: $bb
	cp   e                                           ; $7ead: $bb
	xor  d                                           ; $7eae: $aa
	cp   e                                           ; $7eaf: $bb
	call z, $cbcb                                    ; $7eb0: $cc $cb $cb
	xor  d                                           ; $7eb3: $aa
	res  3, b                                        ; $7eb4: $cb $98
	halt                                             ; $7eb6: $76
	ld   d, h                                        ; $7eb7: $54
	ld   b, h                                        ; $7eb8: $44
	inc  sp                                          ; $7eb9: $33
	inc  sp                                          ; $7eba: $33
	inc  sp                                          ; $7ebb: $33
	ld   b, l                                        ; $7ebc: $45
	ld   h, [hl]                                     ; $7ebd: $66
	ld   [hl], a                                     ; $7ebe: $77
	sbc  c                                           ; $7ebf: $99
	xor  e                                           ; $7ec0: $ab
	cp   e                                           ; $7ec1: $bb
	res  7, e                                        ; $7ec2: $cb $bb
	cp   h                                           ; $7ec4: $bc
	cp   c                                           ; $7ec5: $b9
	sbc  b                                           ; $7ec6: $98
	sbc  c                                           ; $7ec7: $99
	xor  d                                           ; $7ec8: $aa
	sbc  c                                           ; $7ec9: $99
	sub  a                                           ; $7eca: $97
	ld   [hl], a                                     ; $7ecb: $77
	halt                                             ; $7ecc: $76
	ld   d, h                                        ; $7ecd: $54
	ld   b, h                                        ; $7ece: $44
	ld   b, h                                        ; $7ecf: $44
	ld   b, l                                        ; $7ed0: $45
	ld   d, l                                        ; $7ed1: $55
	ld   h, [hl]                                     ; $7ed2: $66
	ld   h, a                                        ; $7ed3: $67
	adc  b                                           ; $7ed4: $88
	sbc  d                                           ; $7ed5: $9a
	xor  e                                           ; $7ed6: $ab
	cp   h                                           ; $7ed7: $bc
	call z, $cbcc                                    ; $7ed8: $cc $cc $cb
	cp   e                                           ; $7edb: $bb
	cp   e                                           ; $7edc: $bb
	sbc  c                                           ; $7edd: $99
	sbc  b                                           ; $7ede: $98
	sbc  b                                           ; $7edf: $98
	sbc  b                                           ; $7ee0: $98
	ld   h, [hl]                                     ; $7ee1: $66
	ld   h, l                                        ; $7ee2: $65
	ld   b, h                                        ; $7ee3: $44
	inc  [hl]                                        ; $7ee4: $34
	inc  sp                                          ; $7ee5: $33
	inc  [hl]                                        ; $7ee6: $34
	ld   d, [hl]                                     ; $7ee7: $56
	ld   h, a                                        ; $7ee8: $67
	adc  b                                           ; $7ee9: $88
	sbc  b                                           ; $7eea: $98
	xor  d                                           ; $7eeb: $aa
	cp   e                                           ; $7eec: $bb
	call z, $cdcc                                    ; $7eed: $cc $cc $cd
	call $bacc                                       ; $7ef0: $cd $cc $ba
	xor  e                                           ; $7ef3: $ab
	add  l                                           ; $7ef4: $85
	ld   d, h                                        ; $7ef5: $54
	ld   b, l                                        ; $7ef6: $45
	ld   h, [hl]                                     ; $7ef7: $66
	ld   d, l                                        ; $7ef8: $55
	inc  sp                                          ; $7ef9: $33
	inc  [hl]                                        ; $7efa: $34
	ld   d, l                                        ; $7efb: $55
	ld   d, l                                        ; $7efc: $55
	ld   h, [hl]                                     ; $7efd: $66
	ld   h, a                                        ; $7efe: $67
	adc  c                                           ; $7eff: $89
	xor  d                                           ; $7f00: $aa
	xor  c                                           ; $7f01: $a9
	xor  c                                           ; $7f02: $a9
	xor  d                                           ; $7f03: $aa
	call z, $fedf                                    ; $7f04: $cc $df $fe
	sbc  h                                           ; $7f07: $9c
	xor  c                                           ; $7f08: $a9
	sbc  c                                           ; $7f09: $99
	bit  4, [hl]                                     ; $7f0a: $cb $66
	ld   [hl], l                                     ; $7f0c: $75
	ld   d, e                                        ; $7f0d: $53
	ld   [hl], $44                                   ; $7f0e: $36 $44
	ld   b, h                                        ; $7f10: $44
	ld   b, h                                        ; $7f11: $44
	ld   b, h                                        ; $7f12: $44
	ld   d, a                                        ; $7f13: $57
	ld   [hl], a                                     ; $7f14: $77
	adc  d                                           ; $7f15: $8a
	xor  h                                           ; $7f16: $ac
	cp   h                                           ; $7f17: $bc
	call c, $cbdb                                    ; $7f18: $dc $db $cb
	cp   h                                           ; $7f1b: $bc
	db   $db                                         ; $7f1c: $db
	cp   e                                           ; $7f1d: $bb
	sub  a                                           ; $7f1e: $97
	ld   h, [hl]                                     ; $7f1f: $66
	ld   d, h                                        ; $7f20: $54
	ld   de, $1122                                   ; $7f21: $11 $22 $11
	ld   [de], a                                     ; $7f24: $12
	ld   hl, $aa35                                   ; $7f25: $21 $35 $aa
	xor  l                                           ; $7f28: $ad
	rst  $38                                         ; $7f29: $ff
	rst  $38                                         ; $7f2a: $ff
	rst  $38                                         ; $7f2b: $ff
	cp   $dd                                         ; $7f2c: $fe $dd
	reti                                             ; $7f2e: $d9


	sub  a                                           ; $7f2f: $97
	ld   h, h                                        ; $7f30: $64
	ld   hl, $1111                                   ; $7f31: $21 $11 $11
	ld   de, $1411                                   ; $7f34: $11 $11 $14
	ld   [hl], a                                     ; $7f37: $77
	xor  l                                           ; $7f38: $ad
	rst  $38                                         ; $7f39: $ff
	rst  $38                                         ; $7f3a: $ff
	rst  $38                                         ; $7f3b: $ff
	rst  $38                                         ; $7f3c: $ff
	rst  $38                                         ; $7f3d: $ff
	ret  c                                           ; $7f3e: $d8

	ld   h, l                                        ; $7f3f: $65
	ld   sp, $1111                                   ; $7f40: $31 $11 $11
	ld   de, $3111                                   ; $7f43: $11 $11 $31
	dec  de                                          ; $7f46: $1b
	db   $fc                                         ; $7f47: $fc
	rst  JumpTable                                         ; $7f48: $df
	rst  $38                                         ; $7f49: $ff
	rst  $38                                         ; $7f4a: $ff
	rst  $38                                         ; $7f4b: $ff
	rst  $38                                         ; $7f4c: $ff
	rst  $38                                         ; $7f4d: $ff
	or   [hl]                                        ; $7f4e: $b6
	ld   de, $1111                                   ; $7f4f: $11 $11 $11
	ld   de, $1111                                   ; $7f52: $11 $11 $11
	sub  c                                           ; $7f55: $91
	rra                                              ; $7f56: $1f
	rst  $38                                         ; $7f57: $ff
	rst  $38                                         ; $7f58: $ff
	rst  $38                                         ; $7f59: $ff
	rst  $38                                         ; $7f5a: $ff
	rst  $38                                         ; $7f5b: $ff
	cp   $fc                                         ; $7f5c: $fe $fc
	sub  e                                           ; $7f5e: $93
	ld   de, $1111                                   ; $7f5f: $11 $11 $11
	ld   de, $1311                                   ; $7f62: $11 $11 $13
	ld   [hl], c                                     ; $7f65: $71
	adc  a                                           ; $7f66: $8f
	rst  $38                                         ; $7f67: $ff
	rst  $38                                         ; $7f68: $ff
	rst  $38                                         ; $7f69: $ff
	rst  $38                                         ; $7f6a: $ff
	rst  $38                                         ; $7f6b: $ff
	db   $fd                                         ; $7f6c: $fd
	ld   [$1151], a                                  ; $7f6d: $ea $51 $11
	ld   de, $1111                                   ; $7f70: $11 $11 $11
	ld   de, $1516                                   ; $7f73: $11 $16 $15
	rst  $38                                         ; $7f76: $ff
	rst  $38                                         ; $7f77: $ff
	rst  $38                                         ; $7f78: $ff
	rst  $38                                         ; $7f79: $ff
	rst  $38                                         ; $7f7a: $ff
	db   $fd                                         ; $7f7b: $fd
	call $11a6                                       ; $7f7c: $cd $a6 $11
	ld   de, $1111                                   ; $7f7f: $11 $11 $11
	ld   de, $4117                                   ; $7f82: $11 $17 $41
	rst  JumpTable                                         ; $7f85: $df
	rst  $38                                         ; $7f86: $ff
	rst  $38                                         ; $7f87: $ff
	rst  $38                                         ; $7f88: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f89: $cf
	rst  $38                                         ; $7f8a: $ff
	cp   h                                           ; $7f8b: $bc
	and  a                                           ; $7f8c: $a7
	ld   hl, $1112                                   ; $7f8d: $21 $12 $11
	ld   de, $1311                                   ; $7f90: $11 $11 $13
	ld   d, c                                        ; $7f93: $51
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f94: $cf
	rst  $38                                         ; $7f95: $ff
	rst  $38                                         ; $7f96: $ff
	rst  $38                                         ; $7f97: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f98: $cf
	rst  $38                                         ; $7f99: $ff
	xor  l                                           ; $7f9a: $ad
	add  $11                                         ; $7f9b: $c6 $11
	ld   de, $1111                                   ; $7f9d: $11 $11 $11
	ld   de, $2117                                   ; $7fa0: $11 $17 $21
	rst  $38                                         ; $7fa3: $ff
	rst  $38                                         ; $7fa4: $ff
	rst  $38                                         ; $7fa5: $ff
	rst  $38                                         ; $7fa6: $ff
	cp   a                                           ; $7fa7: $bf
	rst  $38                                         ; $7fa8: $ff
	cp   h                                           ; $7fa9: $bc
	sub  h                                           ; $7faa: $94
	ld   de, $1111                                   ; $7fab: $11 $11 $11
	ld   de, $6411                                   ; $7fae: $11 $11 $64
	rra                                              ; $7fb1: $1f
	rst  $38                                         ; $7fb2: $ff
	rst  $38                                         ; $7fb3: $ff
	rst  $38                                         ; $7fb4: $ff
	ld   sp, hl                                      ; $7fb5: $f9
	rst  $38                                         ; $7fb6: $ff
	xor  $c9                                         ; $7fb7: $ee $c9
	ld   h, h                                        ; $7fb9: $64
	ld   de, $1111                                   ; $7fba: $11 $11 $11
	ld   de, $111b                                   ; $7fbd: $11 $1b $11
	rst  $38                                         ; $7fc0: $ff
	rst  $38                                         ; $7fc1: $ff
	rst  $38                                         ; $7fc2: $ff
	rst  $38                                         ; $7fc3: $ff
	xor  a                                           ; $7fc4: $af
	db   $fd                                         ; $7fc5: $fd
	cp   e                                           ; $7fc6: $bb
	or   l                                           ; $7fc7: $b5
	ld   de, $1111                                   ; $7fc8: $11 $11 $11
	ld   de, $2118                                   ; $7fcb: $11 $18 $21
	rst  $38                                         ; $7fce: $ff
	rst  $38                                         ; $7fcf: $ff
	rst  $38                                         ; $7fd0: $ff
	rst  $38                                         ; $7fd1: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fd2: $cf
	cp   $bc                                         ; $7fd3: $fe $bc
	ld   [hl], a                                     ; $7fd5: $77
	ld   de, $1111                                   ; $7fd6: $11 $11 $11
	ld   de, $1717                                   ; $7fd9: $11 $17 $17
	rst  $38                                         ; $7fdc: $ff
	rst  $38                                         ; $7fdd: $ff
	rst  $38                                         ; $7fde: $ff
	db   $fc                                         ; $7fdf: $fc
	rst  JumpTable                                         ; $7fe0: $df
	db   $fd                                         ; $7fe1: $fd
	sbc  h                                           ; $7fe2: $9c
	and  e                                           ; $7fe3: $a3
	ld   de, $1111                                   ; $7fe4: $11 $11 $11
	ld   de, $af61                                   ; $7fe7: $11 $61 $af
	rst  $38                                         ; $7fea: $ff
	rst  $38                                         ; $7feb: $ff
	rst  $38                                         ; $7fec: $ff
	rst  $38                                         ; $7fed: $ff
	rst  $38                                         ; $7fee: $ff
	db   $fc                                         ; $7fef: $fc
	xor  c                                           ; $7ff0: $a9
	ld   b, c                                        ; $7ff1: $41
	ld   de, $1111                                   ; $7ff2: $11 $11 $11
	ld   c, b                                        ; $7ff5: $48
	ld   a, [de]                                     ; $7ff6: $1a
	rst  $38                                         ; $7ff7: $ff
	rst  $38                                         ; $7ff8: $ff
	rst  $38                                         ; $7ff9: $ff
	db   $fc                                         ; $7ffa: $fc
	rst  $28                                         ; $7ffb: $ef
	rst  $38                                         ; $7ffc: $ff
	adc  b                                           ; $7ffd: $88
	sub  l                                           ; $7ffe: $95
	db   $11                                         ; $7fff: $11
