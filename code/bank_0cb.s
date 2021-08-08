; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0cb", ROMX[$4000], BANK[$cb]

	ld   [hl], a                                     ; $4000: $77
	adc  b                                           ; $4001: $88
	sbc  c                                           ; $4002: $99
	sbc  c                                           ; $4003: $99
	sbc  b                                           ; $4004: $98
	adc  b                                           ; $4005: $88
	ld   a, b                                        ; $4006: $78
	halt                                             ; $4007: $76
	ld   [hl], a                                     ; $4008: $77
	ld   a, b                                        ; $4009: $78
	sbc  c                                           ; $400a: $99
	sbc  d                                           ; $400b: $9a
	sbc  c                                           ; $400c: $99
	adc  c                                           ; $400d: $89
	ld   [hl], a                                     ; $400e: $77
	add  [hl]                                        ; $400f: $86
	ld   [hl], a                                     ; $4010: $77
	ld   a, b                                        ; $4011: $78
	adc  b                                           ; $4012: $88
	sbc  c                                           ; $4013: $99
	sbc  c                                           ; $4014: $99
	adc  c                                           ; $4015: $89
	sub  a                                           ; $4016: $97
	ld   [hl], a                                     ; $4017: $77
	ld   h, a                                        ; $4018: $67
	ld   [hl], a                                     ; $4019: $77
	adc  b                                           ; $401a: $88
	sbc  c                                           ; $401b: $99
	sbc  c                                           ; $401c: $99
	sbc  b                                           ; $401d: $98
	sbc  b                                           ; $401e: $98
	ld   a, b                                        ; $401f: $78
	halt                                             ; $4020: $76
	ld   [hl], a                                     ; $4021: $77
	ld   a, b                                        ; $4022: $78
	sbc  c                                           ; $4023: $99
	sbc  d                                           ; $4024: $9a
	xor  c                                           ; $4025: $a9
	adc  c                                           ; $4026: $89
	ld   [hl], a                                     ; $4027: $77
	add  [hl]                                        ; $4028: $86
	ld   [hl], a                                     ; $4029: $77
	ld   a, b                                        ; $402a: $78
	adc  c                                           ; $402b: $89
	sbc  c                                           ; $402c: $99
	sbc  c                                           ; $402d: $99
	adc  b                                           ; $402e: $88
	add  a                                           ; $402f: $87
	add  a                                           ; $4030: $87
	ld   h, a                                        ; $4031: $67
	ld   [hl], a                                     ; $4032: $77
	adc  b                                           ; $4033: $88
	sbc  c                                           ; $4034: $99
	xor  c                                           ; $4035: $a9
	sbc  b                                           ; $4036: $98
	sub  a                                           ; $4037: $97
	ld   a, b                                        ; $4038: $78
	ld   h, [hl]                                     ; $4039: $66
	ld   [hl], a                                     ; $403a: $77
	ld   a, b                                        ; $403b: $78
	sbc  c                                           ; $403c: $99
	sbc  c                                           ; $403d: $99
	sbc  b                                           ; $403e: $98
	adc  b                                           ; $403f: $88
	ld   [hl], a                                     ; $4040: $77
	halt                                             ; $4041: $76
	ld   [hl], a                                     ; $4042: $77
	ld   a, b                                        ; $4043: $78
	adc  c                                           ; $4044: $89
	sbc  c                                           ; $4045: $99
	sbc  c                                           ; $4046: $99
	sbc  c                                           ; $4047: $99
	ld   [hl], a                                     ; $4048: $77
	halt                                             ; $4049: $76
	ld   [hl], a                                     ; $404a: $77
	ld   [hl], a                                     ; $404b: $77
	adc  c                                           ; $404c: $89
	sbc  d                                           ; $404d: $9a
	xor  c                                           ; $404e: $a9
	adc  c                                           ; $404f: $89
	add  a                                           ; $4050: $87
	add  a                                           ; $4051: $87
	ld   h, a                                        ; $4052: $67
	ld   [hl], a                                     ; $4053: $77
	adc  c                                           ; $4054: $89
	sbc  c                                           ; $4055: $99
	sbc  d                                           ; $4056: $9a
	adc  b                                           ; $4057: $88
	add  a                                           ; $4058: $87
	ld   [hl], a                                     ; $4059: $77
	ld   h, a                                        ; $405a: $67
	ld   [hl], a                                     ; $405b: $77
	ld   a, c                                        ; $405c: $79
	sbc  c                                           ; $405d: $99
	sbc  c                                           ; $405e: $99
	adc  c                                           ; $405f: $89
	sub  a                                           ; $4060: $97
	ld   a, b                                        ; $4061: $78
	ld   h, a                                        ; $4062: $67
	ld   [hl], a                                     ; $4063: $77
	ld   a, b                                        ; $4064: $78
	sbc  b                                           ; $4065: $98
	xor  d                                           ; $4066: $aa
	sbc  b                                           ; $4067: $98
	sbc  b                                           ; $4068: $98
	ld   a, b                                        ; $4069: $78
	halt                                             ; $406a: $76
	ld   [hl], a                                     ; $406b: $77
	ld   a, b                                        ; $406c: $78
	sbc  c                                           ; $406d: $99
	sbc  d                                           ; $406e: $9a
	xor  b                                           ; $406f: $a8
	sbc  c                                           ; $4070: $99
	ld   a, b                                        ; $4071: $78
	halt                                             ; $4072: $76
	ld   [hl], a                                     ; $4073: $77
	ld   [hl], a                                     ; $4074: $77
	adc  c                                           ; $4075: $89
	sbc  d                                           ; $4076: $9a
	sbc  b                                           ; $4077: $98
	adc  c                                           ; $4078: $89
	ld   [hl], a                                     ; $4079: $77
	halt                                             ; $407a: $76
	ld   h, a                                        ; $407b: $67
	ld   [hl], a                                     ; $407c: $77
	sbc  c                                           ; $407d: $99
	adc  c                                           ; $407e: $89
	xor  c                                           ; $407f: $a9
	sbc  c                                           ; $4080: $99
	ld   [hl], a                                     ; $4081: $77
	halt                                             ; $4082: $76
	ld   h, a                                        ; $4083: $67
	ld   [hl], a                                     ; $4084: $77
	sbc  c                                           ; $4085: $99
	adc  d                                           ; $4086: $8a
	xor  b                                           ; $4087: $a8
	sbc  c                                           ; $4088: $99
	ld   [hl], a                                     ; $4089: $77
	add  [hl]                                        ; $408a: $86
	ld   h, a                                        ; $408b: $67
	ld   [hl], a                                     ; $408c: $77
	adc  c                                           ; $408d: $89
	sbc  c                                           ; $408e: $99
	xor  b                                           ; $408f: $a8
	sbc  c                                           ; $4090: $99
	add  a                                           ; $4091: $87
	add  a                                           ; $4092: $87
	ld   h, a                                        ; $4093: $67
	ld   [hl], a                                     ; $4094: $77
	adc  c                                           ; $4095: $89
	adc  c                                           ; $4096: $89
	xor  c                                           ; $4097: $a9
	adc  c                                           ; $4098: $89
	add  a                                           ; $4099: $87
	add  a                                           ; $409a: $87
	ld   h, [hl]                                     ; $409b: $66
	ld   [hl], a                                     ; $409c: $77
	ld   a, c                                        ; $409d: $79
	adc  c                                           ; $409e: $89
	xor  c                                           ; $409f: $a9
	adc  c                                           ; $40a0: $89
	add  a                                           ; $40a1: $87
	add  a                                           ; $40a2: $87
	ld   h, [hl]                                     ; $40a3: $66
	ld   [hl], a                                     ; $40a4: $77
	ld   a, c                                        ; $40a5: $79
	adc  b                                           ; $40a6: $88
	xor  d                                           ; $40a7: $aa
	adc  c                                           ; $40a8: $89
	sub  a                                           ; $40a9: $97
	ld   [hl], a                                     ; $40aa: $77
	ld   h, [hl]                                     ; $40ab: $66
	ld   [hl], a                                     ; $40ac: $77
	ld   a, b                                        ; $40ad: $78
	sbc  c                                           ; $40ae: $99
	xor  d                                           ; $40af: $aa
	adc  c                                           ; $40b0: $89
	sub  a                                           ; $40b1: $97
	ld   [hl], a                                     ; $40b2: $77
	ld   h, [hl]                                     ; $40b3: $66
	ld   a, b                                        ; $40b4: $78
	ld   a, b                                        ; $40b5: $78
	sbc  c                                           ; $40b6: $99
	xor  d                                           ; $40b7: $aa
	adc  c                                           ; $40b8: $89
	sub  a                                           ; $40b9: $97
	ld   [hl], a                                     ; $40ba: $77
	halt                                             ; $40bb: $76
	ld   a, b                                        ; $40bc: $78
	ld   a, c                                        ; $40bd: $79
	sbc  c                                           ; $40be: $99
	xor  c                                           ; $40bf: $a9
	adc  c                                           ; $40c0: $89
	add  a                                           ; $40c1: $87
	ld   [hl], a                                     ; $40c2: $77
	ld   [hl], a                                     ; $40c3: $77
	ld   a, b                                        ; $40c4: $78
	ld   a, b                                        ; $40c5: $78
	sbc  c                                           ; $40c6: $99
	sbc  d                                           ; $40c7: $9a
	adc  c                                           ; $40c8: $89
	add  a                                           ; $40c9: $87
	add  a                                           ; $40ca: $87
	ld   h, a                                        ; $40cb: $67
	ld   a, b                                        ; $40cc: $78
	ld   a, b                                        ; $40cd: $78
	sbc  b                                           ; $40ce: $98
	xor  d                                           ; $40cf: $aa
	ld   l, d                                        ; $40d0: $6a
	add  l                                           ; $40d1: $85
	sub  a                                           ; $40d2: $97
	ld   h, a                                        ; $40d3: $67
	ld   a, b                                        ; $40d4: $78
	adc  b                                           ; $40d5: $88
	add  a                                           ; $40d6: $87
	cp   c                                           ; $40d7: $b9
	ld   l, e                                        ; $40d8: $6b
	add  l                                           ; $40d9: $85
	sub  a                                           ; $40da: $97
	ld   l, b                                        ; $40db: $68
	adc  b                                           ; $40dc: $88
	sbc  d                                           ; $40dd: $9a
	ld   a, b                                        ; $40de: $78
	ret  z                                           ; $40df: $c8

	ld   l, e                                        ; $40e0: $6b
	ld   h, l                                        ; $40e1: $65
	and  [hl]                                        ; $40e2: $a6
	ld   l, b                                        ; $40e3: $68
	sbc  b                                           ; $40e4: $98
	xor  d                                           ; $40e5: $aa
	ld   l, b                                        ; $40e6: $68
	or   [hl]                                        ; $40e7: $b6
	ld   l, h                                        ; $40e8: $6c
	ld   b, [hl]                                     ; $40e9: $46
	sub  l                                           ; $40ea: $95
	ld   a, b                                        ; $40eb: $78

jr_0cb_40ec:
	adc  b                                           ; $40ec: $88
	cp   d                                           ; $40ed: $ba
	ld   e, e                                        ; $40ee: $5b
	or   h                                           ; $40ef: $b4
	sbc  h                                           ; $40f0: $9c
	daa                                              ; $40f1: $27
	add  h                                           ; $40f2: $84
	ld   a, c                                        ; $40f3: $79
	adc  b                                           ; $40f4: $88
	ret  z                                           ; $40f5: $c8

	ld   l, h                                        ; $40f6: $6c
	sub  h                                           ; $40f7: $94
	xor  d                                           ; $40f8: $aa
	ld   a, [hl+]                                    ; $40f9: $2a
	ld   [hl], l                                     ; $40fa: $75
	sbc  c                                           ; $40fb: $99
	adc  c                                           ; $40fc: $89
	push de                                          ; $40fd: $d5
	sbc  l                                           ; $40fe: $9d
	ld   h, h                                        ; $40ff: $64
	push bc                                          ; $4100: $c5
	ld   a, [hl+]                                    ; $4101: $2a
	ld   b, [hl]                                     ; $4102: $46
	sbc  c                                           ; $4103: $99
	ld   a, l                                        ; $4104: $7d
	or   h                                           ; $4105: $b4
	cp   e                                           ; $4106: $bb
	ld   b, a                                        ; $4107: $47
	or   c                                           ; $4108: $b1
	ld   l, d                                        ; $4109: $6a
	scf                                              ; $410a: $37
	xor  c                                           ; $410b: $a9
	sbc  a                                           ; $410c: $9f
	add  [hl]                                        ; $410d: $86
	add  sp, $3a                                     ; $410e: $e8 $3a
	sub  c                                           ; $4110: $91
	and  [hl]                                        ; $4111: $a6
	ld   a, [hl-]                                    ; $4112: $3a
	xor  b                                           ; $4113: $a8
	cp   a                                           ; $4114: $bf
	ld   e, d                                        ; $4115: $5a
	push bc                                          ; $4116: $c5
	ld   e, h                                        ; $4117: $5c
	ld   b, d                                        ; $4118: $42
	and  e                                           ; $4119: $a3
	ld   l, e                                        ; $411a: $6b
	sbc  b                                           ; $411b: $98
	ld   [$a34e], a                                  ; $411c: $ea $4e $a3
	adc  e                                           ; $411f: $8b
	rla                                              ; $4120: $17
	add  d                                           ; $4121: $82
	adc  e                                           ; $4122: $8b
	adc  d                                           ; $4123: $8a
	push af                                          ; $4124: $f5
	sbc  [hl]                                        ; $4125: $9e
	ld   h, h                                        ; $4126: $64
	and  [hl]                                        ; $4127: $a6
	ld   a, [de]                                     ; $4128: $1a
	ld   b, h                                        ; $4129: $44
	xor  d                                           ; $412a: $aa
	adc  [hl]                                        ; $412b: $8e
	jp   $37db                                       ; $412c: $c3 $db $37


	or   c                                           ; $412f: $b1
	ld   e, c                                        ; $4130: $59
	jr   jr_0cb_40ec                                 ; $4131: $18 $b9

	xor  a                                           ; $4133: $af
	ld   h, a                                        ; $4134: $67
	push af                                          ; $4135: $f5
	dec  sp                                          ; $4136: $3b
	ld   h, c                                        ; $4137: $61
	and  e                                           ; $4138: $a3
	ld   c, h                                        ; $4139: $4c
	xor  c                                           ; $413a: $a9
	db   $fc                                         ; $413b: $fc
	ld   a, $93                                      ; $413c: $3e $93
	ld   a, d                                        ; $413e: $7a
	ld   d, $81                                      ; $413f: $16 $81
	xor  h                                           ; $4141: $ac
	sbc  h                                           ; $4142: $9c
	db   $f4                                         ; $4143: $f4
	sbc  [hl]                                        ; $4144: $9e
	ld   b, h                                        ; $4145: $44
	and  h                                           ; $4146: $a4
	ld   a, [de]                                     ; $4147: $1a
	ld   h, $da                                      ; $4148: $26 $da
	xor  a                                           ; $414a: $af
	and  h                                           ; $414b: $a4
	rst  $30                                         ; $414c: $f7
	add  hl, hl                                      ; $414d: $29
	add  c                                           ; $414e: $81
	sub  [hl]                                        ; $414f: $96
	inc  l                                           ; $4150: $2c
	cp   c                                           ; $4151: $b9
	rst  $38                                         ; $4152: $ff
	inc  a                                           ; $4153: $3c
	or   c                                           ; $4154: $b1
	ld   l, d                                        ; $4155: $6a
	inc  d                                           ; $4156: $14
	sub  c                                           ; $4157: $91
	sbc  l                                           ; $4158: $9d
	sbc  h                                           ; $4159: $9c
	push af                                          ; $415a: $f5

Jump_0cb_415b:
	adc  a                                           ; $415b: $8f
	inc  [hl]                                        ; $415c: $34
	or   e                                           ; $415d: $b3
	ld   a, [de]                                     ; $415e: $1a
	dec  h                                           ; $415f: $25
	reti                                             ; $4160: $d9


	xor  a                                           ; $4161: $af
	and  h                                           ; $4162: $a4
	or   $1a                                         ; $4163: $f6 $1a
	ld   [hl], c                                     ; $4165: $71
	sub  l                                           ; $4166: $95
	dec  l                                           ; $4167: $2d
	cp   c                                           ; $4168: $b9
	db   $fd                                         ; $4169: $fd
	ld   a, $b1                                      ; $416a: $3e $b1
	ld   a, d                                        ; $416c: $7a
	dec  d                                           ; $416d: $15
	sub  c                                           ; $416e: $91
	cp   l                                           ; $416f: $bd
	adc  [hl]                                        ; $4170: $8e
	di                                               ; $4171: $f3
	sbc  [hl]                                        ; $4172: $9e
	inc  d                                           ; $4173: $14
	pop  bc                                          ; $4174: $c1
	dec  de                                          ; $4175: $1b
	rla                                              ; $4176: $17
	ld   hl, sp-$31                                  ; $4177: $f8 $cf
	ld   h, [hl]                                     ; $4179: $66
	db   $f4                                         ; $417a: $f4
	dec  hl                                          ; $417b: $2b
	ld   d, c                                        ; $417c: $51
	or   e                                           ; $417d: $b3
	ccf                                              ; $417e: $3f
	sbc  b                                           ; $417f: $98
	ei                                               ; $4180: $fb
	ccf                                              ; $4181: $3f
	add  c                                           ; $4182: $81
	sbc  c                                           ; $4183: $99
	jr   jr_0cb_41f7                                 ; $4184: $18 $71

Jump_0cb_4186:
	db   $ec                                         ; $4186: $ec
	ld   a, a                                        ; $4187: $7f
	ldh  a, [c]                                      ; $4188: $f2
	call z, $b116                                    ; $4189: $cc $16 $b1
	ld   a, [hl-]                                    ; $418c: $3a
	ld   a, [de]                                     ; $418d: $1a
	rst  $30                                         ; $418e: $f7
	rst  $28                                         ; $418f: $ef
	ld   c, b                                        ; $4190: $48
	db   $e3                                         ; $4191: $e3
	dec  sp                                          ; $4192: $3b
	ld   hl, $5fc1                                   ; $4193: $21 $c1 $5f
	adc  e                                           ; $4196: $8b
	rst  $30                                         ; $4197: $f7
	ld   e, a                                        ; $4198: $5f
	ld   d, c                                        ; $4199: $51
	and  [hl]                                        ; $419a: $a6
	ld   a, [de]                                     ; $419b: $1a
	ld   b, d                                        ; $419c: $42
	ld   a, [$a49f]                                  ; $419d: $fa $9f $a4
	ret  c                                           ; $41a0: $d8

	ld   h, $91                                      ; $41a1: $26 $91

Call_0cb_41a3:
	ld   e, c                                        ; $41a3: $59
	dec  e                                           ; $41a4: $1d
	rst  $10                                         ; $41a5: $d7
	cp   $3c                                         ; $41a6: $fe $3c
	and  d                                           ; $41a8: $a2
	ld   c, e                                        ; $41a9: $4b
	inc  de                                          ; $41aa: $13
	and  c                                           ; $41ab: $a1
	xor  [hl]                                        ; $41ac: $ae
	ld   a, a                                        ; $41ad: $7f
	db   $f4                                         ; $41ae: $f4
	xor  h                                           ; $41af: $ac
	inc  sp                                          ; $41b0: $33
	or   e                                           ; $41b1: $b3
	dec  de                                          ; $41b2: $1b
	rla                                              ; $41b3: $17
	rst  $30                                         ; $41b4: $f7
	rst  JumpTable                                         ; $41b5: $df
	ld   l, b                                        ; $41b6: $68

Call_0cb_41b7:
	push bc                                          ; $41b7: $c5
	jr   z, jr_0cb_421b                              ; $41b8: $28 $61

	and  h                                           ; $41ba: $a4
	ld   c, a                                        ; $41bb: $4f
	sbc  e                                           ; $41bc: $9b
	ld   hl, sp+$6c                                  ; $41bd: $f8 $6c
	ld   [hl], c                                     ; $41bf: $71
	adc  b                                           ; $41c0: $88
	jr   jr_0cb_4235                                 ; $41c1: $18 $72

jr_0cb_41c3:
	ei                                               ; $41c3: $fb
	sbc  a                                           ; $41c4: $9f
	or   l                                           ; $41c5: $b5
	ret  z                                           ; $41c6: $c8

	ld   h, $91                                      ; $41c7: $26 $91
	ld   e, c                                        ; $41c9: $59
	dec  l                                           ; $41ca: $2d
	ret  z                                           ; $41cb: $c8

	db   $fc                                         ; $41cc: $fc
	ld   c, d                                        ; $41cd: $4a
	and  d                                           ; $41ce: $a2
	ld   e, d                                        ; $41cf: $5a
	inc  d                                           ; $41d0: $14
	and  d                                           ; $41d1: $a2
	cp   l                                           ; $41d2: $bd
	adc  a                                           ; $41d3: $8f
	push hl                                          ; $41d4: $e5
	xor  d                                           ; $41d5: $aa
	inc  [hl]                                        ; $41d6: $34
	and  d                                           ; $41d7: $a2
	ld   a, [hl+]                                    ; $41d8: $2a
	jr   c, jr_0cb_41c3                              ; $41d9: $38 $e8

	rst  JumpTable                                         ; $41db: $df
	ld   l, b                                        ; $41dc: $68
	or   h                                           ; $41dd: $b4
	add  hl, sp                                      ; $41de: $39
	ld   d, c                                        ; $41df: $51
	sub  l                                           ; $41e0: $95
	ld   l, [hl]                                     ; $41e1: $6e
	sbc  h                                           ; $41e2: $9c
	rst  $30                                         ; $41e3: $f7
	ld   a, e                                        ; $41e4: $7b
	ld   h, e                                        ; $41e5: $63
	sub  a                                           ; $41e6: $97
	jr   jr_0cb_425e                                 ; $41e7: $18 $75

	jp   c, $a6af                                    ; $41e9: $da $af $a6

	and  a                                           ; $41ec: $a7
	scf                                              ; $41ed: $37
	add  c                                           ; $41ee: $81
	ld   l, b                                        ; $41ef: $68
	ld   c, h                                        ; $41f0: $4c
	cp   c                                           ; $41f1: $b9
	ld   [$9459], a                                  ; $41f2: $ea $59 $94
	ld   l, c                                        ; $41f5: $69
	dec  [hl]                                        ; $41f6: $35

jr_0cb_41f7:
	sub  l                                           ; $41f7: $95
	xor  l                                           ; $41f8: $ad
	xor  l                                           ; $41f9: $ad
	push de                                          ; $41fa: $d5
	ld   a, d                                        ; $41fb: $7a
	ld   b, l                                        ; $41fc: $45
	and  h                                           ; $41fd: $a4
	ld   c, c                                        ; $41fe: $49
	ld   l, c                                        ; $41ff: $69
	reti                                             ; $4200: $d9


	call z, $9566                                    ; $4201: $cc $66 $95
	ld   l, d                                        ; $4204: $6a
	ld   d, h                                        ; $4205: $54
	add  [hl]                                        ; $4206: $86
	ld   a, h                                        ; $4207: $7c
	xor  c                                           ; $4208: $a9
	add  $5a                                         ; $4209: $c6 $5a
	ld   h, [hl]                                     ; $420b: $66
	sub  [hl]                                        ; $420c: $96
	ld   e, b                                        ; $420d: $58
	ld   [hl], a                                     ; $420e: $77
	cp   e                                           ; $420f: $bb
	sbc  e                                           ; $4210: $9b
	ld   h, l                                        ; $4211: $65
	and  [hl]                                        ; $4212: $a6
	ld   l, c                                        ; $4213: $69
	ld   [hl], l                                     ; $4214: $75
	adc  b                                           ; $4215: $88
	ld   a, h                                        ; $4216: $7c
	xor  c                                           ; $4217: $a9
	and  [hl]                                        ; $4218: $a6
	ld   l, c                                        ; $4219: $69
	ld   a, c                                        ; $421a: $79

jr_0cb_421b:
	sub  a                                           ; $421b: $97
	ld   h, a                                        ; $421c: $67
	adc  b                                           ; $421d: $88
	cp   d                                           ; $421e: $ba
	sbc  c                                           ; $421f: $99
	ld   [hl], a                                     ; $4220: $77
	sub  a                                           ; $4221: $97
	adc  b                                           ; $4222: $88
	ld   [hl], a                                     ; $4223: $77
	ld   a, b                                        ; $4224: $78
	sbc  d                                           ; $4225: $9a
	adc  c                                           ; $4226: $89
	halt                                             ; $4227: $76
	ld   a, b                                        ; $4228: $78
	adc  c                                           ; $4229: $89
	sbc  b                                           ; $422a: $98
	add  a                                           ; $422b: $87
	adc  b                                           ; $422c: $88
	adc  c                                           ; $422d: $89
	add  a                                           ; $422e: $87
	ld   a, b                                        ; $422f: $78
	adc  b                                           ; $4230: $88
	adc  b                                           ; $4231: $88
	adc  b                                           ; $4232: $88
	adc  b                                           ; $4233: $88
	adc  b                                           ; $4234: $88

jr_0cb_4235:
	add  a                                           ; $4235: $87
	ld   [hl], a                                     ; $4236: $77
	add  a                                           ; $4237: $87
	sbc  b                                           ; $4238: $98
	adc  b                                           ; $4239: $88
	add  a                                           ; $423a: $87
	sbc  b                                           ; $423b: $98
	ld   a, b                                        ; $423c: $78
	ld   [hl], a                                     ; $423d: $77
	sub  a                                           ; $423e: $97
	adc  c                                           ; $423f: $89
	ld   a, c                                        ; $4240: $79
	add  a                                           ; $4241: $87
	sbc  c                                           ; $4242: $99
	ld   a, b                                        ; $4243: $78
	ld   [hl], a                                     ; $4244: $77
	and  a                                           ; $4245: $a7
	ld   a, c                                        ; $4246: $79
	ld   a, b                                        ; $4247: $78
	adc  b                                           ; $4248: $88
	sbc  c                                           ; $4249: $99
	ld   a, b                                        ; $424a: $78
	ld   [hl], a                                     ; $424b: $77
	adc  b                                           ; $424c: $88
	adc  b                                           ; $424d: $88
	adc  b                                           ; $424e: $88
	adc  b                                           ; $424f: $88
	sbc  b                                           ; $4250: $98
	adc  b                                           ; $4251: $88
	ld   [hl], a                                     ; $4252: $77
	add  a                                           ; $4253: $87
	adc  c                                           ; $4254: $89
	adc  c                                           ; $4255: $89
	sbc  b                                           ; $4256: $98
	adc  b                                           ; $4257: $88
	adc  c                                           ; $4258: $89
	add  a                                           ; $4259: $87
	adc  b                                           ; $425a: $88
	ld   a, b                                        ; $425b: $78
	adc  b                                           ; $425c: $88
	sbc  b                                           ; $425d: $98

jr_0cb_425e:
	adc  b                                           ; $425e: $88
	adc  b                                           ; $425f: $88
	adc  b                                           ; $4260: $88
	adc  b                                           ; $4261: $88
	adc  b                                           ; $4262: $88
	adc  b                                           ; $4263: $88
	ld   [hl], a                                     ; $4264: $77
	sbc  b                                           ; $4265: $98
	adc  c                                           ; $4266: $89
	adc  c                                           ; $4267: $89
	sub  a                                           ; $4268: $97
	adc  b                                           ; $4269: $88
	ld   a, b                                        ; $426a: $78
	ld   [hl], a                                     ; $426b: $77
	sbc  b                                           ; $426c: $98
	adc  c                                           ; $426d: $89
	adc  b                                           ; $426e: $88
	sbc  b                                           ; $426f: $98
	adc  b                                           ; $4270: $88
	adc  b                                           ; $4271: $88
	adc  b                                           ; $4272: $88
	adc  b                                           ; $4273: $88
	adc  b                                           ; $4274: $88
	adc  b                                           ; $4275: $88
	adc  b                                           ; $4276: $88
	adc  c                                           ; $4277: $89
	add  a                                           ; $4278: $87
	adc  b                                           ; $4279: $88
	adc  b                                           ; $427a: $88
	adc  c                                           ; $427b: $89
	ld   a, b                                        ; $427c: $78
	sbc  c                                           ; $427d: $99
	sbc  b                                           ; $427e: $98
	adc  b                                           ; $427f: $88
	ld   a, b                                        ; $4280: $78
	adc  b                                           ; $4281: $88
	adc  b                                           ; $4282: $88
	ld   a, c                                        ; $4283: $79
	adc  b                                           ; $4284: $88
	sbc  c                                           ; $4285: $99
	adc  b                                           ; $4286: $88
	add  a                                           ; $4287: $87
	adc  b                                           ; $4288: $88
	adc  b                                           ; $4289: $88
	ld   a, b                                        ; $428a: $78
	sbc  b                                           ; $428b: $98
	adc  c                                           ; $428c: $89
	adc  b                                           ; $428d: $88
	adc  b                                           ; $428e: $88
	adc  b                                           ; $428f: $88
	adc  b                                           ; $4290: $88
	adc  b                                           ; $4291: $88
	adc  b                                           ; $4292: $88
	sbc  b                                           ; $4293: $98
	sbc  c                                           ; $4294: $99
	adc  b                                           ; $4295: $88
	add  a                                           ; $4296: $87
	adc  b                                           ; $4297: $88
	ld   a, b                                        ; $4298: $78
	adc  b                                           ; $4299: $88
	adc  c                                           ; $429a: $89
	adc  c                                           ; $429b: $89
	adc  b                                           ; $429c: $88
	sbc  b                                           ; $429d: $98
	adc  b                                           ; $429e: $88
	adc  b                                           ; $429f: $88
	adc  b                                           ; $42a0: $88
	adc  b                                           ; $42a1: $88
	adc  c                                           ; $42a2: $89
	sbc  b                                           ; $42a3: $98
	adc  b                                           ; $42a4: $88
	sbc  b                                           ; $42a5: $98
	ld   a, b                                        ; $42a6: $78
	add  a                                           ; $42a7: $87
	adc  b                                           ; $42a8: $88
	sbc  b                                           ; $42a9: $98
	adc  c                                           ; $42aa: $89
	adc  b                                           ; $42ab: $88
	add  a                                           ; $42ac: $87
	sbc  b                                           ; $42ad: $98
	ld   a, c                                        ; $42ae: $79
	add  a                                           ; $42af: $87
	sbc  c                                           ; $42b0: $99
	adc  b                                           ; $42b1: $88
	adc  c                                           ; $42b2: $89
	adc  b                                           ; $42b3: $88
	adc  b                                           ; $42b4: $88
	adc  b                                           ; $42b5: $88

Call_0cb_42b6:
Jump_0cb_42b6:
	adc  b                                           ; $42b6: $88

Jump_0cb_42b7:
	adc  c                                           ; $42b7: $89
	adc  b                                           ; $42b8: $88
	sbc  b                                           ; $42b9: $98
	adc  b                                           ; $42ba: $88
	adc  b                                           ; $42bb: $88
	adc  b                                           ; $42bc: $88
	adc  b                                           ; $42bd: $88
	adc  b                                           ; $42be: $88
	adc  b                                           ; $42bf: $88
	adc  b                                           ; $42c0: $88
	adc  b                                           ; $42c1: $88
	adc  b                                           ; $42c2: $88
	adc  b                                           ; $42c3: $88
	adc  b                                           ; $42c4: $88
	adc  b                                           ; $42c5: $88
	adc  b                                           ; $42c6: $88
	adc  b                                           ; $42c7: $88
	adc  b                                           ; $42c8: $88
	adc  b                                           ; $42c9: $88
	adc  b                                           ; $42ca: $88
	adc  b                                           ; $42cb: $88
	adc  b                                           ; $42cc: $88
	adc  b                                           ; $42cd: $88
	adc  b                                           ; $42ce: $88
	adc  b                                           ; $42cf: $88
	adc  b                                           ; $42d0: $88
	adc  b                                           ; $42d1: $88
	adc  b                                           ; $42d2: $88
	adc  b                                           ; $42d3: $88
	adc  b                                           ; $42d4: $88
	adc  b                                           ; $42d5: $88
	adc  b                                           ; $42d6: $88
	adc  b                                           ; $42d7: $88
	adc  b                                           ; $42d8: $88
	adc  b                                           ; $42d9: $88
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
	adc  b                                           ; $42e6: $88
	adc  b                                           ; $42e7: $88
	adc  b                                           ; $42e8: $88
	adc  b                                           ; $42e9: $88
	adc  b                                           ; $42ea: $88
	adc  b                                           ; $42eb: $88
	adc  b                                           ; $42ec: $88
	adc  b                                           ; $42ed: $88
	adc  b                                           ; $42ee: $88
	adc  b                                           ; $42ef: $88
	adc  b                                           ; $42f0: $88
	adc  b                                           ; $42f1: $88
	adc  b                                           ; $42f2: $88
	adc  b                                           ; $42f3: $88
	adc  b                                           ; $42f4: $88
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
	adc  b                                           ; $431d: $88
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
	add  a                                           ; $4391: $87
	ld   a, c                                        ; $4392: $79
	add  a                                           ; $4393: $87
	adc  c                                           ; $4394: $89
	add  a                                           ; $4395: $87
	adc  b                                           ; $4396: $88
	ld   a, c                                        ; $4397: $79
	sbc  b                                           ; $4398: $98
	add  a                                           ; $4399: $87
	ld   a, b                                        ; $439a: $78
	ld   a, b                                        ; $439b: $78
	sbc  c                                           ; $439c: $99
	add  a                                           ; $439d: $87
	adc  b                                           ; $439e: $88
	adc  b                                           ; $439f: $88
	adc  c                                           ; $43a0: $89
	adc  b                                           ; $43a1: $88
	ld   a, b                                        ; $43a2: $78
	sbc  b                                           ; $43a3: $98
	adc  b                                           ; $43a4: $88
	adc  b                                           ; $43a5: $88
	adc  c                                           ; $43a6: $89
	adc  b                                           ; $43a7: $88
	add  a                                           ; $43a8: $87
	adc  b                                           ; $43a9: $88
	adc  b                                           ; $43aa: $88
	adc  c                                           ; $43ab: $89
	add  a                                           ; $43ac: $87
	sbc  b                                           ; $43ad: $98
	ld   a, b                                        ; $43ae: $78
	ld   a, b                                        ; $43af: $78
	add  a                                           ; $43b0: $87
	adc  c                                           ; $43b1: $89
	add  a                                           ; $43b2: $87
	ld   [hl], a                                     ; $43b3: $77
	adc  b                                           ; $43b4: $88
	adc  c                                           ; $43b5: $89
	adc  b                                           ; $43b6: $88
	adc  b                                           ; $43b7: $88
	adc  b                                           ; $43b8: $88
	ld   [hl], a                                     ; $43b9: $77
	adc  b                                           ; $43ba: $88
	add  a                                           ; $43bb: $87
	add  a                                           ; $43bc: $87
	adc  c                                           ; $43bd: $89
	adc  b                                           ; $43be: $88
	ld   a, b                                        ; $43bf: $78
	sub  a                                           ; $43c0: $97
	ld   h, [hl]                                     ; $43c1: $66
	sbc  d                                           ; $43c2: $9a
	ld   e, b                                        ; $43c3: $58
	cp   c                                           ; $43c4: $b9
	ld   h, a                                        ; $43c5: $67
	add  a                                           ; $43c6: $87
	or   [hl]                                        ; $43c7: $b6
	sbc  e                                           ; $43c8: $9b
	adc  c                                           ; $43c9: $89
	adc  c                                           ; $43ca: $89
	adc  b                                           ; $43cb: $88
	ld   a, b                                        ; $43cc: $78
	sub  [hl]                                        ; $43cd: $96
	ld   [hl], a                                     ; $43ce: $77
	ld   a, b                                        ; $43cf: $78
	sub  a                                           ; $43d0: $97
	adc  c                                           ; $43d1: $89
	ld   a, c                                        ; $43d2: $79
	sbc  b                                           ; $43d3: $98
	adc  b                                           ; $43d4: $88
	add  a                                           ; $43d5: $87
	ld   [hl], a                                     ; $43d6: $77
	ld   a, b                                        ; $43d7: $78
	ld   a, c                                        ; $43d8: $79
	adc  b                                           ; $43d9: $88
	sbc  b                                           ; $43da: $98
	sbc  b                                           ; $43db: $98
	sbc  c                                           ; $43dc: $99
	adc  b                                           ; $43dd: $88
	ld   a, b                                        ; $43de: $78
	add  a                                           ; $43df: $87
	ld   [hl], a                                     ; $43e0: $77
	ld   a, b                                        ; $43e1: $78
	adc  b                                           ; $43e2: $88
	adc  b                                           ; $43e3: $88
	adc  b                                           ; $43e4: $88
	adc  c                                           ; $43e5: $89
	adc  b                                           ; $43e6: $88
	sbc  b                                           ; $43e7: $98
	adc  b                                           ; $43e8: $88
	ld   [hl], a                                     ; $43e9: $77
	adc  b                                           ; $43ea: $88
	sbc  c                                           ; $43eb: $99
	adc  c                                           ; $43ec: $89
	sbc  c                                           ; $43ed: $99
	adc  b                                           ; $43ee: $88
	sub  a                                           ; $43ef: $97
	ld   a, b                                        ; $43f0: $78
	adc  b                                           ; $43f1: $88
	adc  c                                           ; $43f2: $89
	adc  b                                           ; $43f3: $88
	ld   a, c                                        ; $43f4: $79
	sub  a                                           ; $43f5: $97
	sbc  b                                           ; $43f6: $98
	add  a                                           ; $43f7: $87
	ld   a, b                                        ; $43f8: $78
	ld   a, c                                        ; $43f9: $79
	add  a                                           ; $43fa: $87
	adc  c                                           ; $43fb: $89
	adc  b                                           ; $43fc: $88
	add  a                                           ; $43fd: $87
	adc  c                                           ; $43fe: $89
	adc  b                                           ; $43ff: $88
	adc  b                                           ; $4400: $88
	adc  c                                           ; $4401: $89
	ld   a, b                                        ; $4402: $78
	sub  a                                           ; $4403: $97
	adc  b                                           ; $4404: $88
	ld   a, b                                        ; $4405: $78
	sub  a                                           ; $4406: $97
	adc  b                                           ; $4407: $88
	ld   a, c                                        ; $4408: $79
	ld   a, b                                        ; $4409: $78
	add  a                                           ; $440a: $87
	ld   a, c                                        ; $440b: $79
	ld   a, b                                        ; $440c: $78
	add  a                                           ; $440d: $87
	adc  b                                           ; $440e: $88
	adc  c                                           ; $440f: $89
	adc  b                                           ; $4410: $88
	adc  b                                           ; $4411: $88
	ld   [hl], a                                     ; $4412: $77
	sub  a                                           ; $4413: $97
	ld   a, b                                        ; $4414: $78
	ld   a, b                                        ; $4415: $78
	ld   a, b                                        ; $4416: $78
	adc  b                                           ; $4417: $88
	adc  b                                           ; $4418: $88
	adc  c                                           ; $4419: $89
	adc  b                                           ; $441a: $88
	adc  b                                           ; $441b: $88
	adc  c                                           ; $441c: $89
	adc  b                                           ; $441d: $88
	adc  b                                           ; $441e: $88
	adc  b                                           ; $441f: $88
	ld   a, b                                        ; $4420: $78
	sub  a                                           ; $4421: $97
	adc  b                                           ; $4422: $88
	adc  b                                           ; $4423: $88
	adc  b                                           ; $4424: $88
	adc  c                                           ; $4425: $89
	sbc  b                                           ; $4426: $98
	adc  c                                           ; $4427: $89
	add  a                                           ; $4428: $87
	sbc  b                                           ; $4429: $98
	ld   [hl], a                                     ; $442a: $77
	add  a                                           ; $442b: $87
	adc  b                                           ; $442c: $88
	ld   a, c                                        ; $442d: $79
	adc  b                                           ; $442e: $88
	sbc  b                                           ; $442f: $98
	sbc  c                                           ; $4430: $99
	adc  b                                           ; $4431: $88
	adc  b                                           ; $4432: $88
	adc  c                                           ; $4433: $89
	ld   a, b                                        ; $4434: $78
	adc  b                                           ; $4435: $88
	adc  b                                           ; $4436: $88
	add  a                                           ; $4437: $87
	adc  b                                           ; $4438: $88
	add  a                                           ; $4439: $87
	adc  b                                           ; $443a: $88
	adc  b                                           ; $443b: $88
	sbc  c                                           ; $443c: $99
	adc  b                                           ; $443d: $88
	sbc  b                                           ; $443e: $98
	adc  c                                           ; $443f: $89
	adc  b                                           ; $4440: $88
	add  a                                           ; $4441: $87
	add  a                                           ; $4442: $87
	adc  b                                           ; $4443: $88
	adc  b                                           ; $4444: $88
	adc  c                                           ; $4445: $89
	adc  c                                           ; $4446: $89
	sbc  b                                           ; $4447: $98
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
	adc  c                                           ; $4458: $89
	adc  b                                           ; $4459: $88
	adc  b                                           ; $445a: $88
	adc  b                                           ; $445b: $88
	adc  b                                           ; $445c: $88
	adc  b                                           ; $445d: $88
	adc  b                                           ; $445e: $88
	adc  c                                           ; $445f: $89
	sbc  b                                           ; $4460: $98
	sbc  b                                           ; $4461: $98
	adc  b                                           ; $4462: $88
	adc  c                                           ; $4463: $89
	sbc  b                                           ; $4464: $98
	adc  b                                           ; $4465: $88
	adc  b                                           ; $4466: $88
	adc  b                                           ; $4467: $88
	adc  b                                           ; $4468: $88
	adc  b                                           ; $4469: $88
	sbc  c                                           ; $446a: $99
	sbc  b                                           ; $446b: $98
	adc  b                                           ; $446c: $88
	adc  c                                           ; $446d: $89
	sbc  c                                           ; $446e: $99
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

Jump_0cb_4587:
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
	sbc  b                                           ; $459c: $98
	add  a                                           ; $459d: $87
	sbc  b                                           ; $459e: $98
	ld   a, b                                        ; $459f: $78
	sub  a                                           ; $45a0: $97
	adc  b                                           ; $45a1: $88
	adc  b                                           ; $45a2: $88
	adc  b                                           ; $45a3: $88
	sbc  b                                           ; $45a4: $98
	ld   a, b                                        ; $45a5: $78
	adc  b                                           ; $45a6: $88
	adc  b                                           ; $45a7: $88
	ld   a, c                                        ; $45a8: $79
	sbc  c                                           ; $45a9: $99
	adc  b                                           ; $45aa: $88
	sbc  c                                           ; $45ab: $99
	adc  c                                           ; $45ac: $89
	adc  b                                           ; $45ad: $88
	sbc  c                                           ; $45ae: $99
	add  a                                           ; $45af: $87
	adc  b                                           ; $45b0: $88
	ld   [hl], a                                     ; $45b1: $77
	ld   [hl], a                                     ; $45b2: $77
	ld   a, b                                        ; $45b3: $78
	adc  c                                           ; $45b4: $89
	sbc  c                                           ; $45b5: $99
	adc  b                                           ; $45b6: $88
	adc  c                                           ; $45b7: $89
	sbc  b                                           ; $45b8: $98
	adc  b                                           ; $45b9: $88
	ld   h, [hl]                                     ; $45ba: $66
	adc  b                                           ; $45bb: $88
	ld   [hl], a                                     ; $45bc: $77
	add  a                                           ; $45bd: $87
	ld   a, b                                        ; $45be: $78
	sbc  b                                           ; $45bf: $98
	ld   [hl], a                                     ; $45c0: $77
	ld   [hl], a                                     ; $45c1: $77
	ld   [hl], a                                     ; $45c2: $77
	ld   [hl], a                                     ; $45c3: $77
	ld   a, c                                        ; $45c4: $79
	sbc  b                                           ; $45c5: $98
	sbc  d                                           ; $45c6: $9a
	sbc  d                                           ; $45c7: $9a
	sbc  b                                           ; $45c8: $98
	halt                                             ; $45c9: $76
	ld   d, h                                        ; $45ca: $54
	ld   d, l                                        ; $45cb: $55
	ld   b, [hl]                                     ; $45cc: $46
	ld   h, a                                        ; $45cd: $67
	adc  d                                           ; $45ce: $8a
	call z, $dbdd                                    ; $45cf: $cc $dd $db
	cp   d                                           ; $45d2: $ba
	add  a                                           ; $45d3: $87
	ld   b, c                                        ; $45d4: $41
	inc  bc                                          ; $45d5: $03
	ld   [de], a                                     ; $45d6: $12
	ld   h, [hl]                                     ; $45d7: $66
	adc  e                                           ; $45d8: $8b
	xor  $ef                                         ; $45d9: $ee $ef
	xor  $ba                                         ; $45db: $ee $ba
	sub  a                                           ; $45dd: $97
	ld   d, d                                        ; $45de: $52
	ld   de, $2711                                   ; $45df: $11 $11 $27
	adc  d                                           ; $45e2: $8a
	rst  $28                                         ; $45e3: $ef
	rst  $38                                         ; $45e4: $ff
	db   $fd                                         ; $45e5: $fd
	jp   z, $5296                                    ; $45e6: $ca $96 $52

	ld   de, $1811                                   ; $45e9: $11 $11 $18
	cp   h                                           ; $45ec: $bc
	rst  $28                                         ; $45ed: $ef
	rst  $38                                         ; $45ee: $ff
	db   $fd                                         ; $45ef: $fd
	ret  z                                           ; $45f0: $c8

	add  h                                           ; $45f1: $84
	ld   hl, $1111                                   ; $45f2: $21 $11 $11
	ld   a, [de]                                     ; $45f5: $1a
	rst  JumpTable                                         ; $45f6: $df
	rst  $38                                         ; $45f7: $ff
	rst  $38                                         ; $45f8: $ff
	db   $fc                                         ; $45f9: $fc
	and  a                                           ; $45fa: $a7
	ld   h, e                                        ; $45fb: $63
	ld   de, $1111                                   ; $45fc: $11 $11 $11
	ld   e, l                                        ; $45ff: $5d
	rst  $38                                         ; $4600: $ff
	rst  $38                                         ; $4601: $ff
	cp   $fa                                         ; $4602: $fe $fa
	ld   [hl], l                                     ; $4604: $75
	ld   d, c                                        ; $4605: $51
	ld   de, $3311                                   ; $4606: $11 $11 $33
	sbc  a                                           ; $4609: $9f
	rst  $38                                         ; $460a: $ff
	rst  $38                                         ; $460b: $ff
	cp   $c7                                         ; $460c: $fe $c7
	ld   h, l                                        ; $460e: $65
	ld   b, c                                        ; $460f: $41
	ld   de, $4511                                   ; $4610: $11 $11 $45
	cp   a                                           ; $4613: $bf
	rst  $38                                         ; $4614: $ff
	rst  $38                                         ; $4615: $ff
	sbc  $a7                                         ; $4616: $de $a7
	ld   d, h                                        ; $4618: $54
	ld   sp, $1311                                   ; $4619: $31 $11 $13
	ld   d, [hl]                                     ; $461c: $56
	rst  JumpTable                                         ; $461d: $df
	rst  $38                                         ; $461e: $ff
	rst  $38                                         ; $461f: $ff
	cp   l                                           ; $4620: $bd
	sub  [hl]                                        ; $4621: $96
	ld   d, l                                        ; $4622: $55
	ld   sp, $1411                                   ; $4623: $31 $11 $14
	ld   d, a                                        ; $4626: $57
	rst  $28                                         ; $4627: $ef
	rst  $38                                         ; $4628: $ff
	rst  $38                                         ; $4629: $ff
	cp   l                                           ; $462a: $bd
	halt                                             ; $462b: $76
	ld   d, l                                        ; $462c: $55
	ld   hl, $1511                                   ; $462d: $21 $11 $15
	ld   e, b                                        ; $4630: $58
	rst  $28                                         ; $4631: $ef
	rst  $38                                         ; $4632: $ff
	cp   $bc                                         ; $4633: $fe $bc
	ld   h, [hl]                                     ; $4635: $66
	ld   d, l                                        ; $4636: $55
	ld   [hl+], a                                    ; $4637: $22
	ld   hl, $5715                                   ; $4638: $21 $15 $57
	rst  $38                                         ; $463b: $ff
	rst  $38                                         ; $463c: $ff
	cp   $ac                                         ; $463d: $fe $ac
	ld   h, l                                        ; $463f: $65
	ld   d, l                                        ; $4640: $55
	ld   [hl+], a                                    ; $4641: $22
	ld   hl, $6715                                   ; $4642: $21 $15 $67
	rst  $28                                         ; $4645: $ef
	rst  $38                                         ; $4646: $ff
	rst  $38                                         ; $4647: $ff
	xor  h                                           ; $4648: $ac
	ld   [hl], l                                     ; $4649: $75
	ld   d, l                                        ; $464a: $55
	ld   [hl-], a                                    ; $464b: $32
	ld   hl, $6715                                   ; $464c: $21 $15 $67
	rst  $28                                         ; $464f: $ef
	rst  $28                                         ; $4650: $ef
	cp   $bc                                         ; $4651: $fe $bc
	ld   [hl], l                                     ; $4653: $75
	ld   h, l                                        ; $4654: $65
	ld   [hl-], a                                    ; $4655: $32
	ld   sp, $5714                                   ; $4656: $31 $14 $57
	rst  JumpTable                                         ; $4659: $df
	rst  $38                                         ; $465a: $ff
	rst  $38                                         ; $465b: $ff
	xor  e                                           ; $465c: $ab
	add  [hl]                                        ; $465d: $86
	ld   d, l                                        ; $465e: $55
	ld   b, d                                        ; $465f: $42
	ld   b, c                                        ; $4660: $41
	ld   [de], a                                     ; $4661: $12
	ld   h, a                                        ; $4662: $67
	sbc  [hl]                                        ; $4663: $9e
	rst  $38                                         ; $4664: $ff
	rst  $38                                         ; $4665: $ff
	jp   c, $5597                                    ; $4666: $da $97 $55

	ld   h, e                                        ; $4669: $63
	ld   b, d                                        ; $466a: $42
	ld   de, $8c57                                   ; $466b: $11 $57 $8c
	rst  $38                                         ; $466e: $ff
	rst  $28                                         ; $466f: $ef
	db   $eb                                         ; $4670: $eb
	sub  a                                           ; $4671: $97
	ld   h, h                                        ; $4672: $64
	ld   h, h                                        ; $4673: $64
	inc  sp                                          ; $4674: $33
	ld   de, $7b36                                   ; $4675: $11 $36 $7b
	rst  $28                                         ; $4678: $ef
	rst  $38                                         ; $4679: $ff
	ei                                               ; $467a: $fb
	xor  b                                           ; $467b: $a8
	ld   h, h                                        ; $467c: $64
	ld   d, l                                        ; $467d: $55
	inc  [hl]                                        ; $467e: $34
	ld   de, $7a25                                   ; $467f: $11 $25 $7a
	adc  $ff                                         ; $4682: $ce $ff
	cp   $b9                                         ; $4684: $fe $b9
	halt                                             ; $4686: $76
	ld   b, l                                        ; $4687: $45
	ld   b, h                                        ; $4688: $44
	ld   sp, $6724                                   ; $4689: $31 $24 $67
	cp   [hl]                                        ; $468c: $be
	cp   $ff                                         ; $468d: $fe $ff
	jp   z, Jump_0cb_4587                            ; $468f: $ca $87 $45

	ld   d, e                                        ; $4692: $53
	ld   d, d                                        ; $4693: $52
	inc  de                                          ; $4694: $13
	ld   d, [hl]                                     ; $4695: $56
	adc  h                                           ; $4696: $8c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4697: $cf
	rst  $38                                         ; $4698: $ff
	db   $ec                                         ; $4699: $ec
	sub  a                                           ; $469a: $97
	ld   h, h                                        ; $469b: $64
	ld   h, l                                        ; $469c: $65
	ld   d, h                                        ; $469d: $54
	ld   [hl+], a                                    ; $469e: $22
	dec  [hl]                                        ; $469f: $35
	ld   l, c                                        ; $46a0: $69
	cp   l                                           ; $46a1: $bd
	rst  $28                                         ; $46a2: $ef
	db   $fd                                         ; $46a3: $fd
	cp   c                                           ; $46a4: $b9
	ld   [hl], l                                     ; $46a5: $75
	ld   d, [hl]                                     ; $46a6: $56
	ld   d, [hl]                                     ; $46a7: $56
	ld   b, c                                        ; $46a8: $41
	inc  h                                           ; $46a9: $24
	ld   b, [hl]                                     ; $46aa: $46
	xor  h                                           ; $46ab: $ac
	sbc  $ff                                         ; $46ac: $de $ff
	db   $eb                                         ; $46ae: $eb
	add  a                                           ; $46af: $87
	ld   d, l                                        ; $46b0: $55
	ld   h, l                                        ; $46b1: $65
	ld   d, e                                        ; $46b2: $53
	inc  hl                                          ; $46b3: $23
	ld   b, l                                        ; $46b4: $45
	ld   a, d                                        ; $46b5: $7a
	cp   h                                           ; $46b6: $bc
	rst  $38                                         ; $46b7: $ff
	db   $ed                                         ; $46b8: $ed
	rst  ToBoot                                         ; $46b9: $c7
	halt                                             ; $46ba: $76
	ld   d, l                                        ; $46bb: $55
	ld   d, l                                        ; $46bc: $55
	ld   [hl+], a                                    ; $46bd: $22
	ld   b, h                                        ; $46be: $44
	ld   h, a                                        ; $46bf: $67
	sbc  e                                           ; $46c0: $9b
	db   $dd                                         ; $46c1: $dd
	rst  $38                                         ; $46c2: $ff
	jp   c, Jump_0cb_5677                            ; $46c3: $da $77 $56

	ld   h, [hl]                                     ; $46c6: $66
	ld   h, e                                        ; $46c7: $63
	dec  [hl]                                        ; $46c8: $35
	ld   d, a                                        ; $46c9: $57
	adc  c                                           ; $46ca: $89
	cp   l                                           ; $46cb: $bd
	db   $ed                                         ; $46cc: $ed
	call c, Call_0cb_6587                            ; $46cd: $dc $87 $65
	ld   d, [hl]                                     ; $46d0: $56
	ld   h, [hl]                                     ; $46d1: $66
	ld   b, h                                        ; $46d2: $44
	ld   b, l                                        ; $46d3: $45
	ld   [hl], a                                     ; $46d4: $77
	sbc  e                                           ; $46d5: $9b
	db   $dd                                         ; $46d6: $dd
	sbc  $b9                                         ; $46d7: $de $b9
	halt                                             ; $46d9: $76
	ld   d, [hl]                                     ; $46da: $56
	ld   h, l                                        ; $46db: $65
	ld   d, h                                        ; $46dc: $54
	ld   b, l                                        ; $46dd: $45
	ld   e, b                                        ; $46de: $58
	sbc  c                                           ; $46df: $99
	cp   [hl]                                        ; $46e0: $be
	call $97e9                                       ; $46e1: $cd $e9 $97
	ld   [hl], h                                     ; $46e4: $74
	ld   h, a                                        ; $46e5: $67
	ld   d, [hl]                                     ; $46e6: $56
	ld   b, h                                        ; $46e7: $44
	ld   d, l                                        ; $46e8: $55
	ld   a, b                                        ; $46e9: $78
	adc  d                                           ; $46ea: $8a
	db   $dd                                         ; $46eb: $dd
	call c, Call_0cb_66b9                            ; $46ec: $dc $b9 $66
	ld   h, [hl]                                     ; $46ef: $66
	ld   h, a                                        ; $46f0: $67
	ld   h, h                                        ; $46f1: $64
	ld   d, [hl]                                     ; $46f2: $56
	ld   d, a                                        ; $46f3: $57
	adc  b                                           ; $46f4: $88
	cp   h                                           ; $46f5: $bc
	cp   [hl]                                        ; $46f6: $be
	reti                                             ; $46f7: $d9


	sub  a                                           ; $46f8: $97
	ld   h, [hl]                                     ; $46f9: $66
	halt                                             ; $46fa: $76
	ld   h, [hl]                                     ; $46fb: $66
	ld   b, h                                        ; $46fc: $44
	ld   d, l                                        ; $46fd: $55
	ld   l, c                                        ; $46fe: $69
	sbc  e                                           ; $46ff: $9b
	call z, $98dc                                    ; $4700: $cc $dc $98
	halt                                             ; $4703: $76
	ld   d, a                                        ; $4704: $57
	ld   h, a                                        ; $4705: $67
	ld   h, h                                        ; $4706: $64
	ld   d, [hl]                                     ; $4707: $56
	ld   d, a                                        ; $4708: $57
	adc  b                                           ; $4709: $88
	cp   l                                           ; $470a: $bd
	call $87d9                                       ; $470b: $cd $d9 $87
	ld   h, [hl]                                     ; $470e: $66
	ld   h, a                                        ; $470f: $67
	halt                                             ; $4710: $76
	ld   b, l                                        ; $4711: $45
	ld   h, l                                        ; $4712: $65
	ld   a, b                                        ; $4713: $78
	ld   a, c                                        ; $4714: $79
	call c, $a8cd                                    ; $4715: $dc $cd $a8
	add  a                                           ; $4718: $87
	ld   h, a                                        ; $4719: $67
	halt                                             ; $471a: $76
	ld   h, l                                        ; $471b: $65
	ld   b, [hl]                                     ; $471c: $46
	ld   h, a                                        ; $471d: $67
	sbc  c                                           ; $471e: $99
	xor  e                                           ; $471f: $ab
	cp   e                                           ; $4720: $bb
	db   $db                                         ; $4721: $db
	adc  b                                           ; $4722: $88
	ld   h, [hl]                                     ; $4723: $66
	ld   [hl], a                                     ; $4724: $77
	halt                                             ; $4725: $76
	ld   d, h                                        ; $4726: $54
	ld   h, l                                        ; $4727: $65
	ld   a, c                                        ; $4728: $79
	ld   a, c                                        ; $4729: $79
	res  7, l                                        ; $472a: $cb $bd
	cp   b                                           ; $472c: $b8
	add  a                                           ; $472d: $87
	ld   h, [hl]                                     ; $472e: $66
	halt                                             ; $472f: $76
	ld   h, l                                        ; $4730: $65
	ld   b, [hl]                                     ; $4731: $46
	ld   h, a                                        ; $4732: $67
	adc  c                                           ; $4733: $89
	adc  d                                           ; $4734: $8a
	cp   e                                           ; $4735: $bb
	call z, $8798                                    ; $4736: $cc $98 $87
	ld   h, a                                        ; $4739: $67
	ld   [hl], l                                     ; $473a: $75
	ld   h, l                                        ; $473b: $65
	ld   d, [hl]                                     ; $473c: $56
	ld   a, b                                        ; $473d: $78
	adc  c                                           ; $473e: $89
	xor  e                                           ; $473f: $ab
	cp   l                                           ; $4740: $bd
	cp   c                                           ; $4741: $b9
	sub  a                                           ; $4742: $97
	ld   h, a                                        ; $4743: $67
	halt                                             ; $4744: $76
	ld   h, [hl]                                     ; $4745: $66
	ld   d, l                                        ; $4746: $55
	ld   h, [hl]                                     ; $4747: $66
	ld   a, c                                        ; $4748: $79
	adc  d                                           ; $4749: $8a
	xor  e                                           ; $474a: $ab
	cp   e                                           ; $474b: $bb
	sbc  c                                           ; $474c: $99
	add  a                                           ; $474d: $87
	ld   [hl], a                                     ; $474e: $77
	ld   [hl], a                                     ; $474f: $77
	ld   [hl], l                                     ; $4750: $75
	ld   b, [hl]                                     ; $4751: $46
	ld   d, [hl]                                     ; $4752: $56
	sbc  c                                           ; $4753: $99
	sbc  e                                           ; $4754: $9b
	res  7, d                                        ; $4755: $cb $ba
	sub  a                                           ; $4757: $97
	ld   a, b                                        ; $4758: $78
	ld   h, a                                        ; $4759: $67
	halt                                             ; $475a: $76
	ld   d, l                                        ; $475b: $55
	ld   h, l                                        ; $475c: $65
	ld   l, c                                        ; $475d: $69
	adc  b                                           ; $475e: $88
	xor  e                                           ; $475f: $ab
	xor  e                                           ; $4760: $ab
	cp   b                                           ; $4761: $b8
	sbc  b                                           ; $4762: $98
	ld   [hl], a                                     ; $4763: $77
	ld   [hl], a                                     ; $4764: $77
	ld   [hl], a                                     ; $4765: $77
	ld   d, l                                        ; $4766: $55
	ld   h, [hl]                                     ; $4767: $66
	ld   l, c                                        ; $4768: $69
	adc  c                                           ; $4769: $89
	jp   z, $a9ac                                    ; $476a: $ca $ac $a9

	sbc  b                                           ; $476d: $98
	ld   [hl], a                                     ; $476e: $77
	ld   [hl], a                                     ; $476f: $77
	ld   h, [hl]                                     ; $4770: $66
	ld   d, [hl]                                     ; $4771: $56
	ld   h, [hl]                                     ; $4772: $66
	adc  c                                           ; $4773: $89
	adc  d                                           ; $4774: $8a
	xor  d                                           ; $4775: $aa
	xor  d                                           ; $4776: $aa
	sbc  c                                           ; $4777: $99
	adc  b                                           ; $4778: $88
	ld   [hl], a                                     ; $4779: $77
	ld   [hl], a                                     ; $477a: $77
	halt                                             ; $477b: $76
	ld   d, a                                        ; $477c: $57
	ld   h, [hl]                                     ; $477d: $66
	adc  c                                           ; $477e: $89
	adc  d                                           ; $477f: $8a
	cp   d                                           ; $4780: $ba
	cp   d                                           ; $4781: $ba
	sbc  c                                           ; $4782: $99
	sbc  b                                           ; $4783: $98
	ld   [hl], a                                     ; $4784: $77
	ld   [hl], a                                     ; $4785: $77
	halt                                             ; $4786: $76
	ld   d, [hl]                                     ; $4787: $56
	ld   h, [hl]                                     ; $4788: $66
	adc  b                                           ; $4789: $88
	adc  d                                           ; $478a: $8a
	xor  d                                           ; $478b: $aa
	xor  d                                           ; $478c: $aa
	adc  b                                           ; $478d: $88
	add  a                                           ; $478e: $87
	ld   [hl], a                                     ; $478f: $77
	ld   [hl], a                                     ; $4790: $77
	halt                                             ; $4791: $76
	ld   h, a                                        ; $4792: $67
	ld   h, a                                        ; $4793: $67
	sbc  b                                           ; $4794: $98
	adc  d                                           ; $4795: $8a
	xor  c                                           ; $4796: $a9
	cp   c                                           ; $4797: $b9
	sbc  c                                           ; $4798: $99
	add  a                                           ; $4799: $87
	adc  b                                           ; $479a: $88
	ld   [hl], a                                     ; $479b: $77
	halt                                             ; $479c: $76
	ld   h, a                                        ; $479d: $67
	ld   h, a                                        ; $479e: $67
	adc  b                                           ; $479f: $88
	adc  d                                           ; $47a0: $8a
	sbc  c                                           ; $47a1: $99
	xor  d                                           ; $47a2: $aa
	adc  b                                           ; $47a3: $88
	add  a                                           ; $47a4: $87
	ld   [hl], a                                     ; $47a5: $77
	ld   [hl], a                                     ; $47a6: $77
	halt                                             ; $47a7: $76
	ld   h, a                                        ; $47a8: $67
	ld   h, a                                        ; $47a9: $67
	adc  b                                           ; $47aa: $88
	adc  d                                           ; $47ab: $8a
	sbc  c                                           ; $47ac: $99
	xor  c                                           ; $47ad: $a9
	sbc  b                                           ; $47ae: $98
	add  a                                           ; $47af: $87
	ld   a, b                                        ; $47b0: $78
	ld   a, b                                        ; $47b1: $78
	ld   [hl], a                                     ; $47b2: $77
	ld   h, a                                        ; $47b3: $67
	ld   h, a                                        ; $47b4: $67
	adc  b                                           ; $47b5: $88
	adc  c                                           ; $47b6: $89
	xor  c                                           ; $47b7: $a9
	sbc  c                                           ; $47b8: $99
	adc  c                                           ; $47b9: $89
	sbc  b                                           ; $47ba: $98
	adc  b                                           ; $47bb: $88
	ld   [hl], a                                     ; $47bc: $77
	ld   [hl], a                                     ; $47bd: $77
	ld   h, a                                        ; $47be: $67
	ld   [hl], a                                     ; $47bf: $77
	add  a                                           ; $47c0: $87
	adc  b                                           ; $47c1: $88
	sbc  c                                           ; $47c2: $99
	xor  d                                           ; $47c3: $aa
	adc  b                                           ; $47c4: $88
	adc  b                                           ; $47c5: $88
	adc  b                                           ; $47c6: $88
	ld   a, b                                        ; $47c7: $78
	adc  b                                           ; $47c8: $88
	ld   [hl], a                                     ; $47c9: $77
	ld   [hl], a                                     ; $47ca: $77
	ld   a, b                                        ; $47cb: $78
	ld   a, b                                        ; $47cc: $78
	sbc  c                                           ; $47cd: $99
	sbc  c                                           ; $47ce: $99
	sbc  b                                           ; $47cf: $98
	sbc  c                                           ; $47d0: $99
	ld   a, b                                        ; $47d1: $78
	add  a                                           ; $47d2: $87
	ld   a, b                                        ; $47d3: $78
	add  a                                           ; $47d4: $87
	ld   [hl], a                                     ; $47d5: $77
	ld   a, b                                        ; $47d6: $78
	add  a                                           ; $47d7: $87
	adc  b                                           ; $47d8: $88
	adc  c                                           ; $47d9: $89
	adc  b                                           ; $47da: $88
	adc  b                                           ; $47db: $88
	add  a                                           ; $47dc: $87
	adc  b                                           ; $47dd: $88
	adc  b                                           ; $47de: $88
	sbc  b                                           ; $47df: $98
	adc  b                                           ; $47e0: $88
	ld   [hl], a                                     ; $47e1: $77
	add  a                                           ; $47e2: $87
	ld   a, b                                        ; $47e3: $78
	adc  b                                           ; $47e4: $88
	adc  c                                           ; $47e5: $89
	add  a                                           ; $47e6: $87
	adc  b                                           ; $47e7: $88
	adc  b                                           ; $47e8: $88
	adc  c                                           ; $47e9: $89
	sbc  b                                           ; $47ea: $98
	adc  c                                           ; $47eb: $89
	sbc  b                                           ; $47ec: $98
	adc  b                                           ; $47ed: $88
	ld   [hl], a                                     ; $47ee: $77
	ld   [hl], a                                     ; $47ef: $77
	ld   [hl], a                                     ; $47f0: $77
	ld   [hl], a                                     ; $47f1: $77
	ld   [hl], a                                     ; $47f2: $77
	adc  b                                           ; $47f3: $88
	adc  b                                           ; $47f4: $88
	adc  c                                           ; $47f5: $89
	sbc  c                                           ; $47f6: $99
	sbc  b                                           ; $47f7: $98
	sbc  b                                           ; $47f8: $98
	ld   [hl], a                                     ; $47f9: $77
	ld   [hl], a                                     ; $47fa: $77
	ld   [hl], a                                     ; $47fb: $77
	ld   [hl], a                                     ; $47fc: $77
	ld   [hl], a                                     ; $47fd: $77
	adc  b                                           ; $47fe: $88
	adc  c                                           ; $47ff: $89
	sbc  c                                           ; $4800: $99
	xor  d                                           ; $4801: $aa
	xor  c                                           ; $4802: $a9
	adc  c                                           ; $4803: $89
	add  a                                           ; $4804: $87
	ld   [hl], a                                     ; $4805: $77
	ld   [hl], a                                     ; $4806: $77
	ld   [hl], a                                     ; $4807: $77
	ld   [hl], a                                     ; $4808: $77
	ld   [hl], a                                     ; $4809: $77
	adc  b                                           ; $480a: $88
	sbc  b                                           ; $480b: $98
	sbc  c                                           ; $480c: $99
	xor  d                                           ; $480d: $aa
	sbc  c                                           ; $480e: $99
	adc  b                                           ; $480f: $88
	add  a                                           ; $4810: $87
	ld   [hl], a                                     ; $4811: $77
	ld   [hl], a                                     ; $4812: $77
	ld   [hl], a                                     ; $4813: $77
	ld   [hl], a                                     ; $4814: $77
	ld   a, b                                        ; $4815: $78
	adc  c                                           ; $4816: $89
	adc  c                                           ; $4817: $89
	sbc  c                                           ; $4818: $99
	xor  d                                           ; $4819: $aa
	sbc  b                                           ; $481a: $98
	sbc  b                                           ; $481b: $98
	ld   [hl], a                                     ; $481c: $77
	ld   [hl], a                                     ; $481d: $77
	ld   [hl], a                                     ; $481e: $77
	ld   [hl], a                                     ; $481f: $77
	ld   [hl], a                                     ; $4820: $77
	adc  b                                           ; $4821: $88
	adc  c                                           ; $4822: $89
	sbc  c                                           ; $4823: $99
	xor  d                                           ; $4824: $aa
	xor  c                                           ; $4825: $a9
	sbc  c                                           ; $4826: $99
	add  a                                           ; $4827: $87
	ld   [hl], a                                     ; $4828: $77
	ld   [hl], a                                     ; $4829: $77
	ld   [hl], a                                     ; $482a: $77
	ld   [hl], a                                     ; $482b: $77
	ld   [hl], a                                     ; $482c: $77
	adc  b                                           ; $482d: $88
	sbc  b                                           ; $482e: $98
	sbc  c                                           ; $482f: $99
	sbc  d                                           ; $4830: $9a
	xor  c                                           ; $4831: $a9
	sbc  c                                           ; $4832: $99
	add  a                                           ; $4833: $87
	ld   [hl], a                                     ; $4834: $77
	ld   [hl], a                                     ; $4835: $77
	ld   [hl], a                                     ; $4836: $77
	ld   [hl], a                                     ; $4837: $77
	ld   a, b                                        ; $4838: $78
	adc  c                                           ; $4839: $89
	adc  b                                           ; $483a: $88
	sbc  d                                           ; $483b: $9a
	xor  d                                           ; $483c: $aa
	xor  c                                           ; $483d: $a9
	adc  b                                           ; $483e: $88
	ld   [hl], a                                     ; $483f: $77
	ld   [hl], a                                     ; $4840: $77
	ld   [hl], a                                     ; $4841: $77
	ld   [hl], a                                     ; $4842: $77
	ld   [hl], a                                     ; $4843: $77
	ld   a, b                                        ; $4844: $78
	adc  c                                           ; $4845: $89
	adc  c                                           ; $4846: $89
	xor  d                                           ; $4847: $aa
	xor  d                                           ; $4848: $aa
	sbc  b                                           ; $4849: $98
	adc  b                                           ; $484a: $88
	ld   [hl], a                                     ; $484b: $77
	halt                                             ; $484c: $76
	ld   [hl], a                                     ; $484d: $77
	ld   [hl], a                                     ; $484e: $77
	ld   [hl], a                                     ; $484f: $77
	adc  b                                           ; $4850: $88
	sbc  b                                           ; $4851: $98
	sbc  c                                           ; $4852: $99
	xor  d                                           ; $4853: $aa
	sbc  d                                           ; $4854: $9a
	sbc  b                                           ; $4855: $98
	add  a                                           ; $4856: $87
	ld   [hl], a                                     ; $4857: $77
	ld   [hl], a                                     ; $4858: $77
	ld   [hl], a                                     ; $4859: $77
	ld   [hl], a                                     ; $485a: $77
	ld   [hl], a                                     ; $485b: $77
	adc  b                                           ; $485c: $88
	sbc  b                                           ; $485d: $98
	sbc  d                                           ; $485e: $9a
	xor  c                                           ; $485f: $a9
	xor  c                                           ; $4860: $a9
	sbc  b                                           ; $4861: $98
	add  a                                           ; $4862: $87
	ld   [hl], a                                     ; $4863: $77
	ld   [hl], a                                     ; $4864: $77
	ld   [hl], a                                     ; $4865: $77
	ld   [hl], a                                     ; $4866: $77
	ld   a, b                                        ; $4867: $78
	adc  c                                           ; $4868: $89
	adc  c                                           ; $4869: $89
	sbc  d                                           ; $486a: $9a
	sbc  d                                           ; $486b: $9a
	xor  c                                           ; $486c: $a9
	adc  b                                           ; $486d: $88
	ld   [hl], a                                     ; $486e: $77
	ld   [hl], a                                     ; $486f: $77
	ld   [hl], a                                     ; $4870: $77
	ld   [hl], a                                     ; $4871: $77
	ld   [hl], a                                     ; $4872: $77
	ld   a, b                                        ; $4873: $78
	adc  c                                           ; $4874: $89
	adc  c                                           ; $4875: $89
	sbc  d                                           ; $4876: $9a
	xor  d                                           ; $4877: $aa
	sbc  c                                           ; $4878: $99
	sbc  b                                           ; $4879: $98
	ld   [hl], a                                     ; $487a: $77
	ld   [hl], a                                     ; $487b: $77
	ld   [hl], a                                     ; $487c: $77
	ld   [hl], a                                     ; $487d: $77
	ld   [hl], a                                     ; $487e: $77
	ld   a, b                                        ; $487f: $78
	adc  c                                           ; $4880: $89
	sbc  c                                           ; $4881: $99
	xor  d                                           ; $4882: $aa
	xor  d                                           ; $4883: $aa
	sbc  b                                           ; $4884: $98
	adc  b                                           ; $4885: $88
	ld   [hl], a                                     ; $4886: $77
	ld   [hl], a                                     ; $4887: $77
	ld   [hl], a                                     ; $4888: $77
	ld   [hl], a                                     ; $4889: $77
	ld   [hl], a                                     ; $488a: $77
	adc  b                                           ; $488b: $88
	sbc  b                                           ; $488c: $98
	sbc  c                                           ; $488d: $99
	xor  d                                           ; $488e: $aa
	xor  c                                           ; $488f: $a9
	sbc  c                                           ; $4890: $99
	add  a                                           ; $4891: $87
	ld   [hl], a                                     ; $4892: $77
	ld   [hl], a                                     ; $4893: $77
	ld   [hl], a                                     ; $4894: $77
	ld   [hl], a                                     ; $4895: $77
	ld   [hl], a                                     ; $4896: $77
	adc  b                                           ; $4897: $88
	adc  c                                           ; $4898: $89
	sbc  d                                           ; $4899: $9a
	xor  d                                           ; $489a: $aa
	xor  c                                           ; $489b: $a9
	adc  b                                           ; $489c: $88
	ld   [hl], a                                     ; $489d: $77
	ld   [hl], a                                     ; $489e: $77
	ld   [hl], a                                     ; $489f: $77
	ld   [hl], a                                     ; $48a0: $77
	ld   [hl], a                                     ; $48a1: $77
	ld   a, b                                        ; $48a2: $78
	adc  c                                           ; $48a3: $89
	adc  c                                           ; $48a4: $89
	sbc  d                                           ; $48a5: $9a
	xor  d                                           ; $48a6: $aa
	sbc  c                                           ; $48a7: $99
	sbc  b                                           ; $48a8: $98
	ld   [hl], a                                     ; $48a9: $77
	ld   [hl], a                                     ; $48aa: $77
	ld   [hl], a                                     ; $48ab: $77
	ld   [hl], a                                     ; $48ac: $77
	ld   [hl], a                                     ; $48ad: $77
	adc  b                                           ; $48ae: $88
	sbc  c                                           ; $48af: $99
	adc  c                                           ; $48b0: $89
	sbc  d                                           ; $48b1: $9a
	xor  d                                           ; $48b2: $aa
	sbc  b                                           ; $48b3: $98
	adc  b                                           ; $48b4: $88
	ld   [hl], a                                     ; $48b5: $77
	ld   [hl], a                                     ; $48b6: $77
	ld   [hl], a                                     ; $48b7: $77
	ld   [hl], a                                     ; $48b8: $77
	ld   [hl], a                                     ; $48b9: $77
	adc  b                                           ; $48ba: $88
	sbc  b                                           ; $48bb: $98
	sbc  c                                           ; $48bc: $99
	xor  d                                           ; $48bd: $aa
	xor  d                                           ; $48be: $aa
	sbc  b                                           ; $48bf: $98
	add  a                                           ; $48c0: $87
	ld   [hl], a                                     ; $48c1: $77
	ld   [hl], a                                     ; $48c2: $77
	ld   [hl], a                                     ; $48c3: $77
	ld   [hl], a                                     ; $48c4: $77
	ld   [hl], a                                     ; $48c5: $77
	adc  b                                           ; $48c6: $88
	sbc  b                                           ; $48c7: $98
	sbc  c                                           ; $48c8: $99
	xor  d                                           ; $48c9: $aa
	xor  c                                           ; $48ca: $a9
	adc  c                                           ; $48cb: $89
	add  a                                           ; $48cc: $87
	ld   [hl], a                                     ; $48cd: $77
	ld   [hl], a                                     ; $48ce: $77
	ld   [hl], a                                     ; $48cf: $77
	ld   [hl], a                                     ; $48d0: $77
	ld   a, b                                        ; $48d1: $78
	adc  b                                           ; $48d2: $88
	adc  b                                           ; $48d3: $88
	sbc  d                                           ; $48d4: $9a
	xor  d                                           ; $48d5: $aa
	xor  c                                           ; $48d6: $a9
	adc  b                                           ; $48d7: $88
	ld   [hl], a                                     ; $48d8: $77
	ld   [hl], a                                     ; $48d9: $77
	ld   [hl], a                                     ; $48da: $77
	ld   [hl], a                                     ; $48db: $77
	ld   [hl], a                                     ; $48dc: $77
	ld   a, b                                        ; $48dd: $78
	adc  b                                           ; $48de: $88
	sbc  c                                           ; $48df: $99
	sbc  c                                           ; $48e0: $99
	xor  d                                           ; $48e1: $aa
	sbc  b                                           ; $48e2: $98
	sub  a                                           ; $48e3: $97
	ld   [hl], a                                     ; $48e4: $77
	ld   [hl], a                                     ; $48e5: $77
	ld   [hl], a                                     ; $48e6: $77
	ld   [hl], a                                     ; $48e7: $77
	adc  b                                           ; $48e8: $88
	adc  c                                           ; $48e9: $89
	adc  b                                           ; $48ea: $88
	sbc  b                                           ; $48eb: $98
	adc  c                                           ; $48ec: $89
	sbc  c                                           ; $48ed: $99
	sbc  b                                           ; $48ee: $98
	ld   [hl], a                                     ; $48ef: $77
	ld   [hl], a                                     ; $48f0: $77
	ld   [hl], a                                     ; $48f1: $77
	adc  b                                           ; $48f2: $88
	adc  b                                           ; $48f3: $88
	sbc  b                                           ; $48f4: $98
	sbc  c                                           ; $48f5: $99
	adc  c                                           ; $48f6: $89
	sbc  c                                           ; $48f7: $99
	adc  b                                           ; $48f8: $88
	adc  b                                           ; $48f9: $88
	add  a                                           ; $48fa: $87
	ld   [hl], a                                     ; $48fb: $77
	ld   [hl], a                                     ; $48fc: $77
	ld   a, b                                        ; $48fd: $78
	adc  b                                           ; $48fe: $88
	adc  b                                           ; $48ff: $88
	sbc  b                                           ; $4900: $98
	sbc  b                                           ; $4901: $98
	adc  c                                           ; $4902: $89
	sbc  b                                           ; $4903: $98
	sbc  b                                           ; $4904: $98
	sbc  b                                           ; $4905: $98
	add  a                                           ; $4906: $87
	ld   h, a                                        ; $4907: $67
	ld   [hl], a                                     ; $4908: $77
	ld   a, c                                        ; $4909: $79
	sbc  b                                           ; $490a: $98
	sbc  c                                           ; $490b: $99
	sbc  c                                           ; $490c: $99
	sbc  b                                           ; $490d: $98
	adc  c                                           ; $490e: $89
	sbc  c                                           ; $490f: $99
	sbc  b                                           ; $4910: $98
	add  a                                           ; $4911: $87
	halt                                             ; $4912: $76
	ld   h, a                                        ; $4913: $67
	ld   [hl], a                                     ; $4914: $77
	adc  b                                           ; $4915: $88
	adc  b                                           ; $4916: $88
	sbc  c                                           ; $4917: $99
	adc  c                                           ; $4918: $89
	sbc  b                                           ; $4919: $98
	adc  b                                           ; $491a: $88
	adc  c                                           ; $491b: $89
	adc  c                                           ; $491c: $89
	ld   [hl], a                                     ; $491d: $77
	halt                                             ; $491e: $76
	ld   [hl], a                                     ; $491f: $77
	ld   [hl], a                                     ; $4920: $77
	sbc  b                                           ; $4921: $98
	sbc  d                                           ; $4922: $9a
	xor  b                                           ; $4923: $a8
	sbc  b                                           ; $4924: $98
	adc  b                                           ; $4925: $88
	adc  c                                           ; $4926: $89
	adc  b                                           ; $4927: $88
	add  a                                           ; $4928: $87
	ld   [hl], a                                     ; $4929: $77
	ld   h, [hl]                                     ; $492a: $66
	ld   [hl], a                                     ; $492b: $77
	ld   a, b                                        ; $492c: $78
	sbc  b                                           ; $492d: $98
	xor  c                                           ; $492e: $a9
	adc  c                                           ; $492f: $89
	adc  b                                           ; $4930: $88
	adc  c                                           ; $4931: $89
	sbc  b                                           ; $4932: $98
	adc  b                                           ; $4933: $88
	add  a                                           ; $4934: $87
	halt                                             ; $4935: $76
	ld   h, a                                        ; $4936: $67
	ld   [hl], a                                     ; $4937: $77
	adc  c                                           ; $4938: $89
	adc  c                                           ; $4939: $89
	xor  c                                           ; $493a: $a9
	adc  b                                           ; $493b: $88
	adc  b                                           ; $493c: $88
	adc  c                                           ; $493d: $89
	sbc  b                                           ; $493e: $98
	adc  b                                           ; $493f: $88
	ld   [hl], a                                     ; $4940: $77
	ld   h, l                                        ; $4941: $65
	ld   [hl], a                                     ; $4942: $77
	ld   a, b                                        ; $4943: $78
	sbc  d                                           ; $4944: $9a
	adc  d                                           ; $4945: $8a
	xor  b                                           ; $4946: $a8
	adc  b                                           ; $4947: $88
	ld   [hl], a                                     ; $4948: $77
	sbc  c                                           ; $4949: $99
	adc  c                                           ; $494a: $89
	add  a                                           ; $494b: $87
	halt                                             ; $494c: $76
	ld   h, [hl]                                     ; $494d: $66
	ld   [hl], a                                     ; $494e: $77
	ld   a, c                                        ; $494f: $79
	sbc  b                                           ; $4950: $98
	sbc  d                                           ; $4951: $9a
	adc  b                                           ; $4952: $88
	adc  c                                           ; $4953: $89
	ld   a, c                                        ; $4954: $79
	sbc  b                                           ; $4955: $98
	adc  c                                           ; $4956: $89
	halt                                             ; $4957: $76
	ld   h, l                                        ; $4958: $65
	ld   h, a                                        ; $4959: $67
	ld   [hl], a                                     ; $495a: $77
	sbc  d                                           ; $495b: $9a
	sbc  c                                           ; $495c: $99
	xor  c                                           ; $495d: $a9
	adc  b                                           ; $495e: $88
	sub  a                                           ; $495f: $97
	adc  c                                           ; $4960: $89
	add  a                                           ; $4961: $87
	add  a                                           ; $4962: $87
	ld   h, a                                        ; $4963: $67
	ld   d, [hl]                                     ; $4964: $56
	ld   [hl], a                                     ; $4965: $77
	ld   a, c                                        ; $4966: $79
	xor  c                                           ; $4967: $a9
	sbc  e                                           ; $4968: $9b
	adc  b                                           ; $4969: $88
	sbc  b                                           ; $496a: $98
	ld   a, b                                        ; $496b: $78
	sbc  b                                           ; $496c: $98
	adc  c                                           ; $496d: $89
	halt                                             ; $496e: $76
	ld   [hl], l                                     ; $496f: $75
	ld   d, a                                        ; $4970: $57
	add  a                                           ; $4971: $87
	adc  e                                           ; $4972: $8b
	adc  d                                           ; $4973: $8a
	cp   c                                           ; $4974: $b9
	adc  b                                           ; $4975: $88
	add  a                                           ; $4976: $87
	adc  c                                           ; $4977: $89
	ld   [hl], a                                     ; $4978: $77
	sub  a                                           ; $4979: $97
	ld   h, [hl]                                     ; $497a: $66
	ld   d, [hl]                                     ; $497b: $56
	ld   a, b                                        ; $497c: $78
	adc  d                                           ; $497d: $8a
	cp   c                                           ; $497e: $b9
	xor  d                                           ; $497f: $aa
	sbc  b                                           ; $4980: $98
	adc  c                                           ; $4981: $89
	ld   a, c                                        ; $4982: $79
	sbc  b                                           ; $4983: $98
	adc  b                                           ; $4984: $88
	ld   h, [hl]                                     ; $4985: $66
	ld   [hl], l                                     ; $4986: $75
	ld   l, c                                        ; $4987: $69
	sub  a                                           ; $4988: $97
	sbc  e                                           ; $4989: $9b
	sbc  d                                           ; $498a: $9a
	xor  c                                           ; $498b: $a9
	adc  c                                           ; $498c: $89
	add  a                                           ; $498d: $87
	adc  b                                           ; $498e: $88
	ld   [hl], a                                     ; $498f: $77
	ld   [hl], l                                     ; $4990: $75
	ld   h, [hl]                                     ; $4991: $66
	ld   d, a                                        ; $4992: $57
	adc  b                                           ; $4993: $88
	sbc  d                                           ; $4994: $9a
	xor  b                                           ; $4995: $a8
	xor  d                                           ; $4996: $aa
	ld   a, c                                        ; $4997: $79
	add  a                                           ; $4998: $87
	adc  c                                           ; $4999: $89
	add  a                                           ; $499a: $87
	sub  a                                           ; $499b: $97
	ld   d, a                                        ; $499c: $57
	ld   h, l                                        ; $499d: $65
	sbc  c                                           ; $499e: $99
	adc  c                                           ; $499f: $89
	cp   c                                           ; $49a0: $b9
	sbc  e                                           ; $49a1: $9b
	sbc  b                                           ; $49a2: $98
	sbc  c                                           ; $49a3: $99
	ld   a, b                                        ; $49a4: $78
	sub  a                                           ; $49a5: $97
	ld   [hl], a                                     ; $49a6: $77
	ld   h, l                                        ; $49a7: $65
	ld   h, l                                        ; $49a8: $65
	ld   a, c                                        ; $49a9: $79
	sbc  c                                           ; $49aa: $99
	xor  d                                           ; $49ab: $aa
	sbc  c                                           ; $49ac: $99
	and  a                                           ; $49ad: $a7
	adc  b                                           ; $49ae: $88
	sbc  b                                           ; $49af: $98
	sbc  b                                           ; $49b0: $98
	ld   h, a                                        ; $49b1: $67
	ld   [hl], l                                     ; $49b2: $75
	ld   h, l                                        ; $49b3: $65
	ld   l, b                                        ; $49b4: $68
	adc  b                                           ; $49b5: $88
	xor  d                                           ; $49b6: $aa
	sbc  d                                           ; $49b7: $9a
	xor  c                                           ; $49b8: $a9
	adc  b                                           ; $49b9: $88
	add  a                                           ; $49ba: $87
	add  a                                           ; $49bb: $87
	ld   h, a                                        ; $49bc: $67
	ld   [hl], l                                     ; $49bd: $75
	ld   h, [hl]                                     ; $49be: $66
	ld   d, a                                        ; $49bf: $57
	sub  a                                           ; $49c0: $97
	sbc  h                                           ; $49c1: $9c
	sbc  d                                           ; $49c2: $9a
	cp   b                                           ; $49c3: $b8
	adc  c                                           ; $49c4: $89
	sub  a                                           ; $49c5: $97
	adc  b                                           ; $49c6: $88
	ld   h, a                                        ; $49c7: $67
	ld   [hl], l                                     ; $49c8: $75
	ld   h, [hl]                                     ; $49c9: $66
	ld   d, a                                        ; $49ca: $57
	cp   b                                           ; $49cb: $b8
	adc  h                                           ; $49cc: $8c
	xor  c                                           ; $49cd: $a9
	xor  d                                           ; $49ce: $aa
	add  a                                           ; $49cf: $87
	sub  a                                           ; $49d0: $97
	ld   a, b                                        ; $49d1: $78
	ld   h, [hl]                                     ; $49d2: $66
	ld   h, l                                        ; $49d3: $65
	ld   d, [hl]                                     ; $49d4: $56
	ld   a, b                                        ; $49d5: $78
	sbc  d                                           ; $49d6: $9a
	adc  d                                           ; $49d7: $8a
	xor  d                                           ; $49d8: $aa
	xor  b                                           ; $49d9: $a8
	sub  a                                           ; $49da: $97
	sbc  b                                           ; $49db: $98
	ld   a, b                                        ; $49dc: $78
	ld   h, a                                        ; $49dd: $67
	ld   d, h                                        ; $49de: $54
	ld   h, l                                        ; $49df: $65
	ld   l, d                                        ; $49e0: $6a
	sbc  b                                           ; $49e1: $98
	cp   h                                           ; $49e2: $bc
	sbc  c                                           ; $49e3: $99
	cp   c                                           ; $49e4: $b9
	adc  c                                           ; $49e5: $89
	sub  a                                           ; $49e6: $97
	add  a                                           ; $49e7: $87
	ld   d, a                                        ; $49e8: $57
	ld   d, l                                        ; $49e9: $55
	ld   h, [hl]                                     ; $49ea: $66
	ld   l, c                                        ; $49eb: $69
	xor  b                                           ; $49ec: $a8
	cp   d                                           ; $49ed: $ba
	sbc  e                                           ; $49ee: $9b
	xor  b                                           ; $49ef: $a8
	adc  c                                           ; $49f0: $89
	add  a                                           ; $49f1: $87
	add  [hl]                                        ; $49f2: $86
	ld   h, [hl]                                     ; $49f3: $66
	ld   b, [hl]                                     ; $49f4: $46
	halt                                             ; $49f5: $76
	adc  d                                           ; $49f6: $8a
	ld   a, e                                        ; $49f7: $7b
	reti                                             ; $49f8: $d9


	xor  d                                           ; $49f9: $aa
	adc  b                                           ; $49fa: $88
	sbc  c                                           ; $49fb: $99
	ld   [hl], a                                     ; $49fc: $77
	ld   h, l                                        ; $49fd: $65
	ld   h, h                                        ; $49fe: $64
	ld   d, a                                        ; $49ff: $57
	ld   h, a                                        ; $4a00: $67
	xor  c                                           ; $4a01: $a9
	sbc  h                                           ; $4a02: $9c
	xor  d                                           ; $4a03: $aa
	cp   c                                           ; $4a04: $b9
	xor  b                                           ; $4a05: $a8
	add  a                                           ; $4a06: $87
	ld   l, b                                        ; $4a07: $68
	ld   d, [hl]                                     ; $4a08: $56
	ld   d, h                                        ; $4a09: $54
	halt                                             ; $4a0a: $76
	ld   l, d                                        ; $4a0b: $6a
	sbc  b                                           ; $4a0c: $98
	res  3, h                                        ; $4a0d: $cb $9c
	xor  c                                           ; $4a0f: $a9
	sbc  b                                           ; $4a10: $98
	ld   [hl], a                                     ; $4a11: $77
	ld   [hl], l                                     ; $4a12: $75
	ld   h, l                                        ; $4a13: $65
	ld   b, [hl]                                     ; $4a14: $46
	ld   h, l                                        ; $4a15: $65
	xor  c                                           ; $4a16: $a9
	adc  h                                           ; $4a17: $8c
	jp   z, $87aa                                    ; $4a18: $ca $aa $87

	sub  a                                           ; $4a1b: $97
	ld   a, c                                        ; $4a1c: $79
	ld   h, l                                        ; $4a1d: $65
	ld   d, h                                        ; $4a1e: $54
	ld   d, l                                        ; $4a1f: $55
	ld   l, b                                        ; $4a20: $68
	sbc  c                                           ; $4a21: $99
	call z, $989c                                    ; $4a22: $cc $9c $98
	sbc  b                                           ; $4a25: $98
	halt                                             ; $4a26: $76
	ld   [hl], l                                     ; $4a27: $75
	ld   b, l                                        ; $4a28: $45
	ld   [hl], $67                                   ; $4a29: $36 $67
	xor  b                                           ; $4a2b: $a8
	xor  h                                           ; $4a2c: $ac
	xor  h                                           ; $4a2d: $ac
	ret                                              ; $4a2e: $c9


	sbc  b                                           ; $4a2f: $98
	add  a                                           ; $4a30: $87
	ld   [hl], a                                     ; $4a31: $77
	ld   d, [hl]                                     ; $4a32: $56
	ld   b, l                                        ; $4a33: $45
	ld   h, l                                        ; $4a34: $65
	ld   a, d                                        ; $4a35: $7a
	adc  d                                           ; $4a36: $8a
	ld   [$98ac], a                                  ; $4a37: $ea $ac $98
	sbc  b                                           ; $4a3a: $98
	ld   h, a                                        ; $4a3b: $67
	ld   h, l                                        ; $4a3c: $65
	ld   d, h                                        ; $4a3d: $54
	ld   d, l                                        ; $4a3e: $55
	ld   e, d                                        ; $4a3f: $5a
	sub  a                                           ; $4a40: $97
	call c, $b9ac                                    ; $4a41: $dc $ac $b9
	adc  b                                           ; $4a44: $88
	ld   [hl], l                                     ; $4a45: $75
	ld   [hl], l                                     ; $4a46: $75
	ld   d, l                                        ; $4a47: $55
	ld   b, a                                        ; $4a48: $47
	ld   d, [hl]                                     ; $4a49: $56
	xor  b                                           ; $4a4a: $a8
	xor  [hl]                                        ; $4a4b: $ae
	cp   h                                           ; $4a4c: $bc
	jp   z, $9688                                    ; $4a4d: $ca $88 $96

	halt                                             ; $4a50: $76
	ld   d, l                                        ; $4a51: $55
	ld   b, l                                        ; $4a52: $45
	ld   d, l                                        ; $4a53: $55
	sbc  c                                           ; $4a54: $99
	adc  l                                           ; $4a55: $8d
	ld   [$78db], a                                  ; $4a56: $ea $db $78
	sub  [hl]                                        ; $4a59: $96
	ld   d, a                                        ; $4a5a: $57
	ld   d, h                                        ; $4a5b: $54
	ld   b, l                                        ; $4a5c: $45
	ld   d, l                                        ; $4a5d: $55
	sbc  c                                           ; $4a5e: $99
	sbc  h                                           ; $4a5f: $9c
	db   $eb                                         ; $4a60: $eb
	cp   h                                           ; $4a61: $bc
	sbc  c                                           ; $4a62: $99
	sub  a                                           ; $4a63: $97
	ld   d, l                                        ; $4a64: $55
	ld   d, h                                        ; $4a65: $54
	ld   b, l                                        ; $4a66: $45
	ld   h, h                                        ; $4a67: $64
	ld   a, e                                        ; $4a68: $7b
	adc  h                                           ; $4a69: $8c
	ei                                               ; $4a6a: $fb
	cp   l                                           ; $4a6b: $bd
	sbc  b                                           ; $4a6c: $98
	add  a                                           ; $4a6d: $87
	ld   d, l                                        ; $4a6e: $55
	ld   d, h                                        ; $4a6f: $54
	ld   b, l                                        ; $4a70: $45
	ld   h, l                                        ; $4a71: $65
	ld   a, d                                        ; $4a72: $7a
	adc  h                                           ; $4a73: $8c
	ei                                               ; $4a74: $fb
	call z, $8797                                    ; $4a75: $cc $97 $87
	ld   d, [hl]                                     ; $4a78: $56
	ld   d, h                                        ; $4a79: $54
	ld   b, h                                        ; $4a7a: $44
	ld   h, h                                        ; $4a7b: $64
	ld   a, d                                        ; $4a7c: $7a
	adc  h                                           ; $4a7d: $8c
	db   $fc                                         ; $4a7e: $fc
	call $87a7                                       ; $4a7f: $cd $a7 $87
	ld   b, l                                        ; $4a82: $45
	ld   d, e                                        ; $4a83: $53
	ld   b, l                                        ; $4a84: $45
	ld   d, h                                        ; $4a85: $54
	adc  e                                           ; $4a86: $8b
	adc  l                                           ; $4a87: $8d
	db   $fc                                         ; $4a88: $fc
	db   $dd                                         ; $4a89: $dd
	sub  a                                           ; $4a8a: $97
	add  [hl]                                        ; $4a8b: $86
	ld   b, l                                        ; $4a8c: $45
	ld   d, e                                        ; $4a8d: $53
	dec  [hl]                                        ; $4a8e: $35
	ld   d, l                                        ; $4a8f: $55
	xor  d                                           ; $4a90: $aa
	adc  [hl]                                        ; $4a91: $8e
	db   $ec                                         ; $4a92: $ec
	db   $ec                                         ; $4a93: $ec
	sbc  b                                           ; $4a94: $98
	ld   [hl], l                                     ; $4a95: $75
	ld   b, l                                        ; $4a96: $45
	ld   b, h                                        ; $4a97: $44
	ld   b, h                                        ; $4a98: $44
	ld   d, l                                        ; $4a99: $55
	cp   d                                           ; $4a9a: $ba
	cp   a                                           ; $4a9b: $bf
	call c, $88eb                                    ; $4a9c: $dc $eb $88
	ld   [hl], h                                     ; $4a9f: $74
	ld   b, l                                        ; $4aa0: $45
	ld   b, e                                        ; $4aa1: $43
	ld   b, l                                        ; $4aa2: $45
	scf                                              ; $4aa3: $37
	cp   c                                           ; $4aa4: $b9
	rst  JumpTable                                         ; $4aa5: $df
	db   $ed                                         ; $4aa6: $ed
	ld   [$5477], a                                  ; $4aa7: $ea $77 $54
	ld   b, h                                        ; $4aaa: $44
	inc  sp                                          ; $4aab: $33
	ld   b, h                                        ; $4aac: $44
	ld   e, c                                        ; $4aad: $59
	xor  e                                           ; $4aae: $ab
	db   $fd                                         ; $4aaf: $fd
	sbc  $a9                                         ; $4ab0: $de $a9
	add  [hl]                                        ; $4ab2: $86
	ld   b, h                                        ; $4ab3: $44
	inc  sp                                          ; $4ab4: $33
	inc  sp                                          ; $4ab5: $33
	ld   d, h                                        ; $4ab6: $54
	adc  h                                           ; $4ab7: $8c
	sbc  a                                           ; $4ab8: $9f
	db   $fc                                         ; $4ab9: $fc
	xor  $a8                                         ; $4aba: $ee $a8
	ld   [hl], h                                     ; $4abc: $74
	inc  h                                           ; $4abd: $24
	ld   [hl-], a                                    ; $4abe: $32
	ld   b, l                                        ; $4abf: $45
	ld   d, a                                        ; $4ac0: $57
	cp   d                                           ; $4ac1: $ba
	cp   a                                           ; $4ac2: $bf
	db   $dd                                         ; $4ac3: $dd
	db   $fc                                         ; $4ac4: $fc
	sbc  b                                           ; $4ac5: $98
	ld   d, e                                        ; $4ac6: $53
	inc  sp                                          ; $4ac7: $33
	inc  hl                                          ; $4ac8: $23
	ld   b, l                                        ; $4ac9: $45
	ld   l, d                                        ; $4aca: $6a
	cp   e                                           ; $4acb: $bb
	rst  $38                                         ; $4acc: $ff
	adc  $c9                                         ; $4acd: $ce $c9
	add  [hl]                                        ; $4acf: $86
	ld   b, d                                        ; $4ad0: $42
	ld   [hl-], a                                    ; $4ad1: $32
	inc  h                                           ; $4ad2: $24
	ld   b, l                                        ; $4ad3: $45
	xor  d                                           ; $4ad4: $aa
	cp   a                                           ; $4ad5: $bf
	cp   $dd                                         ; $4ad6: $fe $dd
	and  a                                           ; $4ad8: $a7
	ld   h, e                                        ; $4ad9: $63
	ld   [hl-], a                                    ; $4ada: $32
	ld   [hl+], a                                    ; $4adb: $22
	dec  [hl]                                        ; $4adc: $35
	ld   c, c                                        ; $4add: $49
	cp   d                                           ; $4ade: $ba
	rst  $38                                         ; $4adf: $ff
	db   $ed                                         ; $4ae0: $ed
	reti                                             ; $4ae1: $d9


	ld   [hl], a                                     ; $4ae2: $77
	inc  sp                                          ; $4ae3: $33
	ld   [hl+], a                                    ; $4ae4: $22
	inc  hl                                          ; $4ae5: $23
	ld   b, h                                        ; $4ae6: $44
	xor  e                                           ; $4ae7: $ab
	cp   a                                           ; $4ae8: $bf
	db   $fc                                         ; $4ae9: $fc
	db   $fc                                         ; $4aea: $fc
	adc  c                                           ; $4aeb: $89
	ld   h, e                                        ; $4aec: $63
	inc  sp                                          ; $4aed: $33
	ld   [de], a                                     ; $4aee: $12
	inc  sp                                          ; $4aef: $33
	ld   l, d                                        ; $4af0: $6a
	sbc  e                                           ; $4af1: $9b
	db   $fd                                         ; $4af2: $fd
	rst  $28                                         ; $4af3: $ef
	cp   c                                           ; $4af4: $b9
	sub  l                                           ; $4af5: $95
	inc  sp                                          ; $4af6: $33
	ld   de, $4722                                   ; $4af7: $11 $22 $47
	xor  c                                           ; $4afa: $a9
	rst  $28                                         ; $4afb: $ef
	rst  $28                                         ; $4afc: $ef
	db   $eb                                         ; $4afd: $eb
	sub  a                                           ; $4afe: $97
	ld   b, e                                        ; $4aff: $43
	ld   [hl-], a                                    ; $4b00: $32
	ld   [hl+], a                                    ; $4b01: $22
	ld   b, e                                        ; $4b02: $43
	adc  e                                           ; $4b03: $8b
	xor  [hl]                                        ; $4b04: $ae
	db   $fd                                         ; $4b05: $fd
	xor  $a8                                         ; $4b06: $ee $a8
	add  h                                           ; $4b08: $84
	ld   [hl-], a                                    ; $4b09: $32
	ld   de, $5913                                   ; $4b0a: $11 $13 $59
	xor  [hl]                                        ; $4b0d: $ae
	rst  $38                                         ; $4b0e: $ff
	cp   $ca                                         ; $4b0f: $fe $ca
	sub  [hl]                                        ; $4b11: $96
	ld   [hl-], a                                    ; $4b12: $32
	ld   de, $3802                                   ; $4b13: $11 $02 $38
	call z, $eeff                                    ; $4b16: $cc $ff $ee
	ld   [$4297], a                                  ; $4b19: $ea $97 $42
	ld   de, $4711                                   ; $4b1c: $11 $11 $47
	call z, $dfff                                    ; $4b1f: $cc $ff $df
	db   $db                                         ; $4b22: $db
	sub  a                                           ; $4b23: $97
	ld   d, d                                        ; $4b24: $52
	ld   de, $2611                                   ; $4b25: $11 $11 $26
	db   $db                                         ; $4b28: $db
	rst  $28                                         ; $4b29: $ef
	rst  $28                                         ; $4b2a: $ef
	db   $ec                                         ; $4b2b: $ec
	sbc  b                                           ; $4b2c: $98
	ld   b, c                                        ; $4b2d: $41
	ld   de, $2512                                   ; $4b2e: $11 $12 $25
	call z, $fccf                                    ; $4b31: $cc $cf $fc
	db   $fc                                         ; $4b34: $fc
	adc  c                                           ; $4b35: $89
	ld   h, c                                        ; $4b36: $61
	ld   de, $3411                                   ; $4b37: $11 $11 $34
	call $fccf                                       ; $4b3a: $cd $cf $fc
	db   $fd                                         ; $4b3d: $fd
	sbc  c                                           ; $4b3e: $99
	ld   h, c                                        ; $4b3f: $61
	ld   de, $3411                                   ; $4b40: $11 $11 $34
	call c, $fedf                                    ; $4b43: $dc $df $fe
	db   $fc                                         ; $4b46: $fc
	sbc  b                                           ; $4b47: $98
	ld   h, c                                        ; $4b48: $61
	ld   de, $3511                                   ; $4b49: $11 $11 $35
	db   $dd                                         ; $4b4c: $dd
	rst  $38                                         ; $4b4d: $ff
	rst  $28                                         ; $4b4e: $ef
	db   $eb                                         ; $4b4f: $eb
	xor  b                                           ; $4b50: $a8
	ld   b, c                                        ; $4b51: $41
	ld   de, $2711                                   ; $4b52: $11 $11 $27
	db   $dd                                         ; $4b55: $dd
	rst  $38                                         ; $4b56: $ff
	rst  $28                                         ; $4b57: $ef
	ld   a, [$3199]                                  ; $4b58: $fa $99 $31
	ld   de, $3811                                   ; $4b5b: $11 $11 $38
	xor  $ff                                         ; $4b5e: $ee $ff
	rst  $38                                         ; $4b60: $ff
	jp   c, $2197                                    ; $4b61: $da $97 $21

	ld   de, $5b11                                   ; $4b64: $11 $11 $5b
	xor  $ff                                         ; $4b67: $ee $ff
	rst  $38                                         ; $4b69: $ff
	ret                                              ; $4b6a: $c9


	add  [hl]                                        ; $4b6b: $86
	ld   bc, $1211                                   ; $4b6c: $01 $11 $12
	ld   a, l                                        ; $4b6f: $7d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b70: $cf
	db   $fd                                         ; $4b71: $fd
	cp   $a9                                         ; $4b72: $fe $a9
	ld   [hl], d                                     ; $4b74: $72
	ld   de, $1511                                   ; $4b75: $11 $11 $15
	cp   l                                           ; $4b78: $bd
	rst  $38                                         ; $4b79: $ff
	rst  $28                                         ; $4b7a: $ef
	ei                                               ; $4b7b: $fb
	xor  b                                           ; $4b7c: $a8
	ld   d, c                                        ; $4b7d: $51
	ld   de, $3811                                   ; $4b7e: $11 $11 $38
	db   $dd                                         ; $4b81: $dd
	rst  $38                                         ; $4b82: $ff
	rst  $28                                         ; $4b83: $ef
	call z, $3197                                    ; $4b84: $cc $97 $31
	ld   de, $5c11                                   ; $4b87: $11 $11 $5c
	cp   a                                           ; $4b8a: $bf
	cp   $ff                                         ; $4b8b: $fe $ff
	xor  c                                           ; $4b8d: $a9
	sub  l                                           ; $4b8e: $95
	ld   de, $1311                                   ; $4b8f: $11 $11 $13
	sbc  h                                           ; $4b92: $9c
	rst  JumpTable                                         ; $4b93: $df
	db   $fd                                         ; $4b94: $fd
	db   $fc                                         ; $4b95: $fc
	xor  d                                           ; $4b96: $aa
	ld   h, e                                        ; $4b97: $63
	ld   de, $1711                                   ; $4b98: $11 $11 $17
	call c, $efff                                    ; $4b9b: $dc $ff $ef
	jp   c, $31a7                                    ; $4b9e: $da $a7 $31

	ld   de, $5c11                                   ; $4ba1: $11 $11 $5c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ba4: $cf
	cp   $fe                                         ; $4ba5: $fe $fe
	cp   d                                           ; $4ba7: $ba
	sub  l                                           ; $4ba8: $95
	ld   de, $1311                                   ; $4ba9: $11 $11 $13
	xor  h                                           ; $4bac: $ac
	rst  JumpTable                                         ; $4bad: $df
	rst  $38                                         ; $4bae: $ff
	ei                                               ; $4baf: $fb
	xor  d                                           ; $4bb0: $aa
	ld   h, d                                        ; $4bb1: $62
	ld   bc, $1811                                   ; $4bb2: $01 $11 $18
	call z, $dfff                                    ; $4bb5: $cc $ff $df
	jp   c, $3297                                    ; $4bb8: $da $97 $32

	ld   de, $7c11                                   ; $4bbb: $11 $11 $7c
	xor  a                                           ; $4bbe: $af
	cp   $fc                                         ; $4bbf: $fe $fc
	cp   d                                           ; $4bc1: $ba
	ld   [hl], h                                     ; $4bc2: $74
	ld   de, $1611                                   ; $4bc3: $11 $11 $16
	set  7, a                                        ; $4bc6: $cb $ff
	rst  JumpTable                                         ; $4bc8: $df
	ld   [$41a8], a                                  ; $4bc9: $ea $a8 $41
	ld   de, $6b11                                   ; $4bcc: $11 $11 $6b
	xor  a                                           ; $4bcf: $af
	cp   $fd                                         ; $4bd0: $fe $fd
	cp   d                                           ; $4bd2: $ba
	ld   [hl], h                                     ; $4bd3: $74
	ld   de, $2711                                   ; $4bd4: $11 $11 $27
	cp   h                                           ; $4bd7: $bc
	rst  $38                                         ; $4bd8: $ff
	rst  JumpTable                                         ; $4bd9: $df
	jp   c, Jump_0cb_42b7                            ; $4bda: $da $b7 $42

	ld   de, $7b11                                   ; $4bdd: $11 $11 $7b
	cp   a                                           ; $4be0: $bf
	db   $fd                                         ; $4be1: $fd
	ei                                               ; $4be2: $fb
	xor  d                                           ; $4be3: $aa
	ld   [hl], h                                     ; $4be4: $74
	ld   hl, $2811                                   ; $4be5: $21 $11 $28
	xor  l                                           ; $4be8: $ad
	cp   $ef                                         ; $4be9: $fe $ef
	xor  d                                           ; $4beb: $aa
	and  [hl]                                        ; $4bec: $a6
	ld   b, c                                        ; $4bed: $41
	ld   de, $ab13                                   ; $4bee: $11 $13 $ab
	rst  $28                                         ; $4bf1: $ef
	xor  $ea                                         ; $4bf2: $ee $ea
	cp   b                                           ; $4bf4: $b8
	ld   d, e                                        ; $4bf5: $53
	ld   de, $6b11                                   ; $4bf6: $11 $11 $6b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bf9: $cf
	cp   $fc                                         ; $4bfa: $fe $fc
	xor  d                                           ; $4bfc: $aa
	ld   h, h                                        ; $4bfd: $64
	ld   hl, $3811                                   ; $4bfe: $21 $11 $38
	cp   [hl]                                        ; $4c01: $be
	rst  $38                                         ; $4c02: $ff
	rst  $38                                         ; $4c03: $ff
	cp   e                                           ; $4c04: $bb
	and  l                                           ; $4c05: $a5
	ld   sp, $0611                                   ; $4c06: $31 $11 $06
	xor  e                                           ; $4c09: $ab
	rst  $38                                         ; $4c0a: $ff
	rst  $28                                         ; $4c0b: $ef
	jp   z, Jump_0cb_42b6                            ; $4c0c: $ca $b6 $42

	ld   de, $9b13                                   ; $4c0f: $11 $13 $9b
	rst  $28                                         ; $4c12: $ef
	rst  $28                                         ; $4c13: $ef
	call c, Call_0cb_52b8                            ; $4c14: $dc $b8 $52
	ld   de, $8a12                                   ; $4c17: $11 $12 $8a
	rst  JumpTable                                         ; $4c1a: $df
	rst  JumpTable                                         ; $4c1b: $df
	ei                                               ; $4c1c: $fb
	ret                                              ; $4c1d: $c9


	ld   b, e                                        ; $4c1e: $43
	ld   de, $7912                                   ; $4c1f: $11 $12 $79
	rst  JumpTable                                         ; $4c22: $df
	rst  $38                                         ; $4c23: $ff
	ei                                               ; $4c24: $fb
	cp   c                                           ; $4c25: $b9
	ld   d, e                                        ; $4c26: $53
	ld   de, $6912                                   ; $4c27: $11 $12 $69
	rst  JumpTable                                         ; $4c2a: $df
	rst  $28                                         ; $4c2b: $ef
	db   $fc                                         ; $4c2c: $fc
	cp   c                                           ; $4c2d: $b9
	ld   d, e                                        ; $4c2e: $53
	ld   de, $7912                                   ; $4c2f: $11 $12 $79
	rst  $28                                         ; $4c32: $ef
	rst  $28                                         ; $4c33: $ef
	db   $eb                                         ; $4c34: $eb
	cp   b                                           ; $4c35: $b8
	ld   b, d                                        ; $4c36: $42
	ld   de, $7a14                                   ; $4c37: $11 $14 $7a
	rst  $38                                         ; $4c3a: $ff
	rst  JumpTable                                         ; $4c3b: $df
	db   $ec                                         ; $4c3c: $ec
	ret  z                                           ; $4c3d: $c8

	ld   b, d                                        ; $4c3e: $42
	ld   de, $8b15                                   ; $4c3f: $11 $15 $8b
	cp   $ef                                         ; $4c42: $fe $ef
	res  6, [hl]                                     ; $4c44: $cb $b6
	ld   b, c                                        ; $4c46: $41
	ld   de, $9c26                                   ; $4c47: $11 $26 $9c
	db   $fd                                         ; $4c4a: $fd
	rst  $38                                         ; $4c4b: $ff
	call z, $31a5                                    ; $4c4c: $cc $a5 $31
	ld   de, $ae57                                   ; $4c4f: $11 $57 $ae
	xor  $fd                                         ; $4c52: $ee $fd
	bit  4, e                                        ; $4c54: $cb $63
	ld   de, $7813                                   ; $4c56: $11 $13 $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c59: $cf
	adc  $fb                                         ; $4c5a: $ce $fb
	jp   z, $1153                                    ; $4c5c: $ca $53 $11

	inc  d                                           ; $4c5f: $14
	ld   a, e                                        ; $4c60: $7b
	cp   $ef                                         ; $4c61: $fe $ef
	call z, Call_0cb_42b6                            ; $4c63: $cc $b6 $42
	ld   de, $8c36                                   ; $4c66: $11 $36 $8c
	call c, $bced                                    ; $4c69: $dc $ed $bc
	add  l                                           ; $4c6c: $85
	ld   sp, $4612                                   ; $4c6d: $31 $12 $46
	xor  [hl]                                        ; $4c70: $ae
	call $bbfc                                       ; $4c71: $cd $fc $bb
	ld   h, h                                        ; $4c74: $64
	ld   hl, $6814                                   ; $4c75: $21 $14 $68
	db   $dd                                         ; $4c78: $dd
	rst  JumpTable                                         ; $4c79: $df
	call z, Call_0cb_53c7                            ; $4c7a: $cc $c7 $53
	ld   de, $7b46                                   ; $4c7d: $11 $46 $7b
	jp   z, $bcdd                                    ; $4c80: $ca $dd $bc

	add  [hl]                                        ; $4c83: $86
	ld   b, c                                        ; $4c84: $41
	inc  de                                          ; $4c85: $13
	ld   d, a                                        ; $4c86: $57
	xor  h                                           ; $4c87: $ac
	cp   h                                           ; $4c88: $bc
	call c, Call_0cb_75ca                            ; $4c89: $dc $ca $75
	ld   sp, $6925                                   ; $4c8c: $31 $25 $69
	call z, $bace                                    ; $4c8f: $cc $ce $ba
	and  a                                           ; $4c92: $a7
	ld   d, h                                        ; $4c93: $54
	ld   de, $9b46                                   ; $4c94: $11 $46 $9b
	call z, $abdc                                    ; $4c97: $cc $dc $ab
	ld   [hl], l                                     ; $4c9a: $75
	ld   b, d                                        ; $4c9b: $42
	inc  h                                           ; $4c9c: $24
	ld   h, a                                        ; $4c9d: $67
	xor  e                                           ; $4c9e: $ab
	call $b8db                                       ; $4c9f: $cd $db $b8
	ld   h, h                                        ; $4ca2: $64
	ld   [hl+], a                                    ; $4ca3: $22
	ld   b, [hl]                                     ; $4ca4: $46
	ld   a, c                                        ; $4ca5: $79
	call z, $bbdd                                    ; $4ca6: $cc $dd $bb
	sub  a                                           ; $4ca9: $97
	ld   d, e                                        ; $4caa: $53
	inc  hl                                          ; $4cab: $23
	ld   d, a                                        ; $4cac: $57
	sbc  h                                           ; $4cad: $9c
	call z, $b9cb                                    ; $4cae: $cc $cb $b9
	halt                                             ; $4cb1: $76
	ld   b, d                                        ; $4cb2: $42
	dec  [hl]                                        ; $4cb3: $35
	ld   l, b                                        ; $4cb4: $68
	cp   e                                           ; $4cb5: $bb
	call $96ba                                       ; $4cb6: $cd $ba $96
	ld   h, h                                        ; $4cb9: $64
	inc  [hl]                                        ; $4cba: $34
	ld   h, [hl]                                     ; $4cbb: $66
	adc  e                                           ; $4cbc: $8b
	cp   e                                           ; $4cbd: $bb
	db   $db                                         ; $4cbe: $db
	cp   d                                           ; $4cbf: $ba
	halt                                             ; $4cc0: $76
	ld   b, e                                        ; $4cc1: $43
	ld   [hl], $69                                   ; $4cc2: $36 $69
	cp   d                                           ; $4cc4: $ba
	call z, $87aa                                    ; $4cc5: $cc $aa $87
	ld   h, l                                        ; $4cc8: $65
	inc  [hl]                                        ; $4cc9: $34
	ld   h, [hl]                                     ; $4cca: $66
	adc  d                                           ; $4ccb: $8a
	xor  h                                           ; $4ccc: $ac
	db   $db                                         ; $4ccd: $db
	xor  b                                           ; $4cce: $a8
	halt                                             ; $4ccf: $76
	ld   d, h                                        ; $4cd0: $54
	ld   b, [hl]                                     ; $4cd1: $46
	ld   l, b                                        ; $4cd2: $68
	xor  e                                           ; $4cd3: $ab
	res  7, e                                        ; $4cd4: $cb $bb
	sub  a                                           ; $4cd6: $97
	ld   h, l                                        ; $4cd7: $65
	ld   b, h                                        ; $4cd8: $44
	ld   d, [hl]                                     ; $4cd9: $56
	sbc  d                                           ; $4cda: $9a
	cp   e                                           ; $4cdb: $bb
	jp   z, $76aa                                    ; $4cdc: $ca $aa $76

	ld   d, h                                        ; $4cdf: $54
	ld   b, l                                        ; $4ce0: $45
	ld   l, b                                        ; $4ce1: $68
	xor  e                                           ; $4ce2: $ab
	cp   h                                           ; $4ce3: $bc
	cp   d                                           ; $4ce4: $ba
	sub  a                                           ; $4ce5: $97
	ld   h, l                                        ; $4ce6: $65
	ld   b, h                                        ; $4ce7: $44
	ld   h, [hl]                                     ; $4ce8: $66
	adc  d                                           ; $4ce9: $8a
	xor  e                                           ; $4cea: $ab
	cp   e                                           ; $4ceb: $bb
	cp   c                                           ; $4cec: $b9
	add  [hl]                                        ; $4ced: $86
	ld   d, h                                        ; $4cee: $54
	ld   b, [hl]                                     ; $4cef: $46
	ld   l, b                                        ; $4cf0: $68
	sbc  d                                           ; $4cf1: $9a
	cp   d                                           ; $4cf2: $ba
	cp   c                                           ; $4cf3: $b9
	sbc  b                                           ; $4cf4: $98
	ld   h, l                                        ; $4cf5: $65
	ld   d, l                                        ; $4cf6: $55
	ld   h, a                                        ; $4cf7: $67
	adc  c                                           ; $4cf8: $89
	sbc  d                                           ; $4cf9: $9a
	cp   d                                           ; $4cfa: $ba
	xor  b                                           ; $4cfb: $a8
	add  [hl]                                        ; $4cfc: $86
	ld   d, l                                        ; $4cfd: $55
	ld   d, [hl]                                     ; $4cfe: $56
	ld   a, c                                        ; $4cff: $79
	sbc  d                                           ; $4d00: $9a
	xor  d                                           ; $4d01: $aa
	sbc  d                                           ; $4d02: $9a
	sbc  b                                           ; $4d03: $98
	halt                                             ; $4d04: $76
	ld   d, l                                        ; $4d05: $55
	ld   h, a                                        ; $4d06: $67
	adc  c                                           ; $4d07: $89
	sbc  d                                           ; $4d08: $9a
	sbc  c                                           ; $4d09: $99
	xor  b                                           ; $4d0a: $a8
	add  a                                           ; $4d0b: $87
	ld   h, l                                        ; $4d0c: $65
	ld   d, [hl]                                     ; $4d0d: $56
	ld   a, c                                        ; $4d0e: $79
	sbc  d                                           ; $4d0f: $9a
	cp   d                                           ; $4d10: $ba
	sbc  c                                           ; $4d11: $99
	add  a                                           ; $4d12: $87
	halt                                             ; $4d13: $76
	ld   h, [hl]                                     ; $4d14: $66
	ld   h, a                                        ; $4d15: $67
	sbc  b                                           ; $4d16: $98
	sbc  c                                           ; $4d17: $99
	xor  c                                           ; $4d18: $a9
	xor  c                                           ; $4d19: $a9
	sbc  c                                           ; $4d1a: $99
	halt                                             ; $4d1b: $76
	ld   h, [hl]                                     ; $4d1c: $66
	ld   l, b                                        ; $4d1d: $68
	adc  c                                           ; $4d1e: $89
	sbc  d                                           ; $4d1f: $9a
	sbc  d                                           ; $4d20: $9a
	sbc  b                                           ; $4d21: $98
	add  a                                           ; $4d22: $87
	ld   h, [hl]                                     ; $4d23: $66
	ld   h, [hl]                                     ; $4d24: $66
	ld   a, c                                        ; $4d25: $79
	adc  c                                           ; $4d26: $89
	sbc  c                                           ; $4d27: $99
	sbc  c                                           ; $4d28: $99
	adc  c                                           ; $4d29: $89
	add  [hl]                                        ; $4d2a: $86
	ld   h, [hl]                                     ; $4d2b: $66
	ld   h, a                                        ; $4d2c: $67
	adc  c                                           ; $4d2d: $89
	sbc  c                                           ; $4d2e: $99
	xor  c                                           ; $4d2f: $a9
	xor  c                                           ; $4d30: $a9
	sbc  b                                           ; $4d31: $98
	halt                                             ; $4d32: $76
	ld   h, [hl]                                     ; $4d33: $66
	ld   [hl], a                                     ; $4d34: $77
	adc  c                                           ; $4d35: $89
	sbc  c                                           ; $4d36: $99
	sbc  c                                           ; $4d37: $99
	sbc  b                                           ; $4d38: $98
	sbc  b                                           ; $4d39: $98
	halt                                             ; $4d3a: $76
	ld   h, a                                        ; $4d3b: $67
	ld   a, b                                        ; $4d3c: $78
	adc  c                                           ; $4d3d: $89
	sbc  c                                           ; $4d3e: $99
	sbc  c                                           ; $4d3f: $99
	sbc  b                                           ; $4d40: $98
	adc  b                                           ; $4d41: $88
	ld   [hl], a                                     ; $4d42: $77
	ld   [hl], a                                     ; $4d43: $77
	ld   a, b                                        ; $4d44: $78
	adc  b                                           ; $4d45: $88
	adc  c                                           ; $4d46: $89
	sbc  c                                           ; $4d47: $99
	sbc  c                                           ; $4d48: $99
	add  a                                           ; $4d49: $87
	ld   [hl], a                                     ; $4d4a: $77
	ld   [hl], a                                     ; $4d4b: $77
	adc  b                                           ; $4d4c: $88
	sbc  b                                           ; $4d4d: $98
	sbc  b                                           ; $4d4e: $98
	sbc  b                                           ; $4d4f: $98
	adc  c                                           ; $4d50: $89
	add  a                                           ; $4d51: $87
	ld   [hl], a                                     ; $4d52: $77
	ld   [hl], a                                     ; $4d53: $77
	adc  b                                           ; $4d54: $88
	adc  b                                           ; $4d55: $88
	adc  b                                           ; $4d56: $88
	sbc  c                                           ; $4d57: $99
	adc  b                                           ; $4d58: $88
	add  a                                           ; $4d59: $87
	ld   [hl], a                                     ; $4d5a: $77
	ld   [hl], a                                     ; $4d5b: $77
	adc  b                                           ; $4d5c: $88
	sbc  c                                           ; $4d5d: $99
	adc  b                                           ; $4d5e: $88
	sbc  c                                           ; $4d5f: $99
	sbc  b                                           ; $4d60: $98
	ld   [hl], a                                     ; $4d61: $77
	ld   [hl], a                                     ; $4d62: $77
	ld   a, b                                        ; $4d63: $78
	adc  c                                           ; $4d64: $89
	sbc  c                                           ; $4d65: $99
	adc  c                                           ; $4d66: $89
	adc  b                                           ; $4d67: $88
	adc  b                                           ; $4d68: $88
	add  a                                           ; $4d69: $87
	ld   [hl], a                                     ; $4d6a: $77
	ld   a, b                                        ; $4d6b: $78
	adc  c                                           ; $4d6c: $89
	sbc  c                                           ; $4d6d: $99
	sbc  c                                           ; $4d6e: $99
	adc  b                                           ; $4d6f: $88
	adc  b                                           ; $4d70: $88
	add  a                                           ; $4d71: $87
	ld   [hl], a                                     ; $4d72: $77
	ld   a, b                                        ; $4d73: $78
	adc  b                                           ; $4d74: $88
	sbc  c                                           ; $4d75: $99
	sbc  b                                           ; $4d76: $98
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
	ld   de, $1111                                   ; $4dd5: $11 $11 $11
	ld   de, $1111                                   ; $4dd8: $11 $11 $11
	ld   de, $1111                                   ; $4ddb: $11 $11 $11
	ld   de, $1111                                   ; $4dde: $11 $11 $11
	ld   de, $1111                                   ; $4de1: $11 $11 $11
	ld   de, $1111                                   ; $4de4: $11 $11 $11
	ld   de, $1111                                   ; $4de7: $11 $11 $11
	ld   de, $1111                                   ; $4dea: $11 $11 $11
	ld   de, $1111                                   ; $4ded: $11 $11 $11
	ld   de, $1111                                   ; $4df0: $11 $11 $11
	ld   de, $1111                                   ; $4df3: $11 $11 $11
	ld   de, $1111                                   ; $4df6: $11 $11 $11
	ld   de, $1111                                   ; $4df9: $11 $11 $11
	ld   de, $1111                                   ; $4dfc: $11 $11 $11
	ld   de, $1111                                   ; $4dff: $11 $11 $11
	nop                                              ; $4e02: $00
	ld   c, b                                        ; $4e03: $48
	ld   de, $1111                                   ; $4e04: $11 $11 $11
	ld   de, $1111                                   ; $4e07: $11 $11 $11
	ld   de, $1111                                   ; $4e0a: $11 $11 $11
	ld   de, $5413                                   ; $4e0d: $11 $13 $54
	ld   d, h                                        ; $4e10: $54
	ld   d, h                                        ; $4e11: $54
	ld   b, c                                        ; $4e12: $41
	rra                                              ; $4e13: $1f
	rst  $38                                         ; $4e14: $ff
	pop  af                                          ; $4e15: $f1
	ld   de, $1211                                   ; $4e16: $11 $11 $12
	and  c                                           ; $4e19: $a1
	ld   de, $dd1c                                   ; $4e1a: $11 $1c $dd
	call z, $c1dd                                    ; $4e1d: $cc $dd $c1
	ld   de, $1111                                   ; $4e20: $11 $11 $11
	ld   de, $1111                                   ; $4e23: $11 $11 $11
	ld   de, $1111                                   ; $4e26: $11 $11 $11
	ld   de, $1111                                   ; $4e29: $11 $11 $11
	ld   de, $5411                                   ; $4e2c: $11 $11 $54
	ld   b, h                                        ; $4e2f: $44
	sub  d                                           ; $4e30: $92
	ld   de, $5454                                   ; $4e31: $11 $54 $54
	ld   h, a                                        ; $4e34: $67
	ld   [hl], d                                     ; $4e35: $72
	ld   de, $1111                                   ; $4e36: $11 $11 $11
	ld   de, $1112                                   ; $4e39: $11 $12 $11
	ld   [de], a                                     ; $4e3c: $12
	ld   de, $1111                                   ; $4e3d: $11 $11 $11
	ld   h, [hl]                                     ; $4e40: $66
	halt                                             ; $4e41: $76
	ld   h, d                                        ; $4e42: $62
	ld   de, $8888                                   ; $4e43: $11 $88 $88
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
	adc  c                                           ; $4e57: $89
	sbc  b                                           ; $4e58: $98
	adc  b                                           ; $4e59: $88
	adc  b                                           ; $4e5a: $88
	adc  b                                           ; $4e5b: $88
	adc  b                                           ; $4e5c: $88
	adc  b                                           ; $4e5d: $88
	adc  b                                           ; $4e5e: $88
	adc  b                                           ; $4e5f: $88
	adc  b                                           ; $4e60: $88
	adc  c                                           ; $4e61: $89
	adc  b                                           ; $4e62: $88
	adc  b                                           ; $4e63: $88
	adc  b                                           ; $4e64: $88
	adc  b                                           ; $4e65: $88
	adc  b                                           ; $4e66: $88
	adc  b                                           ; $4e67: $88
	adc  b                                           ; $4e68: $88
	adc  c                                           ; $4e69: $89
	adc  b                                           ; $4e6a: $88
	adc  b                                           ; $4e6b: $88
	sbc  b                                           ; $4e6c: $98
	adc  c                                           ; $4e6d: $89
	adc  b                                           ; $4e6e: $88
	adc  b                                           ; $4e6f: $88
	adc  b                                           ; $4e70: $88
	adc  b                                           ; $4e71: $88
	sbc  b                                           ; $4e72: $98
	adc  b                                           ; $4e73: $88
	adc  c                                           ; $4e74: $89
	sub  a                                           ; $4e75: $97
	adc  b                                           ; $4e76: $88
	adc  b                                           ; $4e77: $88
	adc  c                                           ; $4e78: $89
	sbc  c                                           ; $4e79: $99
	adc  c                                           ; $4e7a: $89
	adc  b                                           ; $4e7b: $88
	sbc  b                                           ; $4e7c: $98
	ld   a, c                                        ; $4e7d: $79
	add  a                                           ; $4e7e: $87
	adc  b                                           ; $4e7f: $88
	adc  b                                           ; $4e80: $88
	sbc  b                                           ; $4e81: $98
	adc  c                                           ; $4e82: $89
	adc  b                                           ; $4e83: $88
	sbc  b                                           ; $4e84: $98
	ld   a, c                                        ; $4e85: $79
	adc  b                                           ; $4e86: $88
	adc  b                                           ; $4e87: $88
	ld   a, b                                        ; $4e88: $78
	sbc  b                                           ; $4e89: $98
	adc  c                                           ; $4e8a: $89
	sub  a                                           ; $4e8b: $97
	adc  c                                           ; $4e8c: $89
	ld   l, b                                        ; $4e8d: $68
	sbc  c                                           ; $4e8e: $99
	adc  b                                           ; $4e8f: $88
	sub  a                                           ; $4e90: $97
	adc  b                                           ; $4e91: $88
	adc  c                                           ; $4e92: $89
	sbc  b                                           ; $4e93: $98
	ld   a, c                                        ; $4e94: $79
	sub  a                                           ; $4e95: $97
	adc  b                                           ; $4e96: $88
	ld   a, c                                        ; $4e97: $79
	adc  b                                           ; $4e98: $88
	adc  c                                           ; $4e99: $89
	sbc  b                                           ; $4e9a: $98
	ld   [hl], a                                     ; $4e9b: $77
	sub  a                                           ; $4e9c: $97
	ld   a, c                                        ; $4e9d: $79
	sub  a                                           ; $4e9e: $97
	sbc  b                                           ; $4e9f: $98
	adc  c                                           ; $4ea0: $89
	adc  b                                           ; $4ea1: $88
	adc  b                                           ; $4ea2: $88
	sub  a                                           ; $4ea3: $97
	adc  b                                           ; $4ea4: $88
	ld   l, b                                        ; $4ea5: $68
	sbc  b                                           ; $4ea6: $98
	sbc  b                                           ; $4ea7: $98
	add  a                                           ; $4ea8: $87
	adc  b                                           ; $4ea9: $88
	ld   l, b                                        ; $4eaa: $68
	xor  b                                           ; $4eab: $a8
	ld   a, b                                        ; $4eac: $78
	adc  b                                           ; $4ead: $88
	adc  b                                           ; $4eae: $88
	ld   a, c                                        ; $4eaf: $79
	sbc  c                                           ; $4eb0: $99
	add  a                                           ; $4eb1: $87
	ld   a, b                                        ; $4eb2: $78
	sub  a                                           ; $4eb3: $97
	ld   a, b                                        ; $4eb4: $78
	sbc  b                                           ; $4eb5: $98
	adc  b                                           ; $4eb6: $88
	adc  c                                           ; $4eb7: $89
	ld   a, b                                        ; $4eb8: $78
	adc  b                                           ; $4eb9: $88
	adc  b                                           ; $4eba: $88
	add  a                                           ; $4ebb: $87
	adc  c                                           ; $4ebc: $89
	ld   a, c                                        ; $4ebd: $79
	sub  a                                           ; $4ebe: $97
	adc  b                                           ; $4ebf: $88
	ld   [hl], a                                     ; $4ec0: $77
	ld   a, c                                        ; $4ec1: $79
	sbc  b                                           ; $4ec2: $98
	adc  c                                           ; $4ec3: $89
	sbc  b                                           ; $4ec4: $98
	sbc  b                                           ; $4ec5: $98
	adc  c                                           ; $4ec6: $89
	ld   [hl], a                                     ; $4ec7: $77
	adc  b                                           ; $4ec8: $88
	ld   a, c                                        ; $4ec9: $79
	adc  b                                           ; $4eca: $88
	sub  a                                           ; $4ecb: $97
	add  a                                           ; $4ecc: $87
	sbc  c                                           ; $4ecd: $99
	ld   a, b                                        ; $4ece: $78
	add  a                                           ; $4ecf: $87
	ld   [hl], a                                     ; $4ed0: $77
	ld   a, b                                        ; $4ed1: $78
	sub  a                                           ; $4ed2: $97
	adc  b                                           ; $4ed3: $88
	adc  b                                           ; $4ed4: $88
	ld   h, a                                        ; $4ed5: $67
	adc  b                                           ; $4ed6: $88
	adc  b                                           ; $4ed7: $88
	adc  b                                           ; $4ed8: $88
	add  a                                           ; $4ed9: $87
	ld   a, b                                        ; $4eda: $78
	adc  b                                           ; $4edb: $88
	ld   [hl], a                                     ; $4edc: $77
	adc  b                                           ; $4edd: $88
	sbc  c                                           ; $4ede: $99
	add  a                                           ; $4edf: $87
	adc  b                                           ; $4ee0: $88
	ld   h, [hl]                                     ; $4ee1: $66
	adc  d                                           ; $4ee2: $8a
	ld   [hl], a                                     ; $4ee3: $77
	sub  a                                           ; $4ee4: $97
	adc  c                                           ; $4ee5: $89
	ld   [hl], a                                     ; $4ee6: $77
	ld   [hl], a                                     ; $4ee7: $77
	sbc  c                                           ; $4ee8: $99
	ld   a, b                                        ; $4ee9: $78
	sub  a                                           ; $4eea: $97
	ld   a, b                                        ; $4eeb: $78
	sbc  c                                           ; $4eec: $99
	sbc  d                                           ; $4eed: $9a
	add  a                                           ; $4eee: $87
	adc  b                                           ; $4eef: $88
	adc  b                                           ; $4ef0: $88
	adc  b                                           ; $4ef1: $88
	ld   a, b                                        ; $4ef2: $78
	add  a                                           ; $4ef3: $87
	sbc  c                                           ; $4ef4: $99
	ld   a, c                                        ; $4ef5: $79
	adc  c                                           ; $4ef6: $89
	sub  a                                           ; $4ef7: $97
	ld   a, c                                        ; $4ef8: $79
	adc  c                                           ; $4ef9: $89
	sub  a                                           ; $4efa: $97
	sbc  c                                           ; $4efb: $99
	adc  c                                           ; $4efc: $89
	halt                                             ; $4efd: $76
	ld   a, b                                        ; $4efe: $78
	adc  c                                           ; $4eff: $89
	sbc  b                                           ; $4f00: $98
	sbc  c                                           ; $4f01: $99
	sbc  d                                           ; $4f02: $9a
	ld   [hl], a                                     ; $4f03: $77
	xor  b                                           ; $4f04: $a8
	ld   a, c                                        ; $4f05: $79
	adc  c                                           ; $4f06: $89
	sub  [hl]                                        ; $4f07: $96
	adc  e                                           ; $4f08: $8b
	add  [hl]                                        ; $4f09: $86
	add  a                                           ; $4f0a: $87
	sbc  b                                           ; $4f0b: $98
	add  a                                           ; $4f0c: $87
	sbc  d                                           ; $4f0d: $9a
	ld   [hl], a                                     ; $4f0e: $77
	ld   a, c                                        ; $4f0f: $79
	adc  b                                           ; $4f10: $88
	sub  a                                           ; $4f11: $97
	sbc  d                                           ; $4f12: $9a
	add  [hl]                                        ; $4f13: $86
	ld   a, b                                        ; $4f14: $78
	ld   [hl], a                                     ; $4f15: $77
	sbc  c                                           ; $4f16: $99
	sub  a                                           ; $4f17: $97
	ld   a, c                                        ; $4f18: $79
	adc  b                                           ; $4f19: $88
	ld   l, c                                        ; $4f1a: $69
	adc  c                                           ; $4f1b: $89
	add  a                                           ; $4f1c: $87
	add  a                                           ; $4f1d: $87
	ld   [hl], a                                     ; $4f1e: $77
	adc  e                                           ; $4f1f: $8b
	add  [hl]                                        ; $4f20: $86
	adc  d                                           ; $4f21: $8a
	sbc  c                                           ; $4f22: $99
	add  h                                           ; $4f23: $84
	adc  b                                           ; $4f24: $88
	ld   e, b                                        ; $4f25: $58
	sbc  e                                           ; $4f26: $9b
	xor  c                                           ; $4f27: $a9
	add  [hl]                                        ; $4f28: $86
	adc  c                                           ; $4f29: $89
	add  a                                           ; $4f2a: $87
	ld   a, c                                        ; $4f2b: $79
	halt                                             ; $4f2c: $76
	ld   l, b                                        ; $4f2d: $68
	adc  b                                           ; $4f2e: $88
	sbc  d                                           ; $4f2f: $9a
	add  a                                           ; $4f30: $87
	ld   a, d                                        ; $4f31: $7a
	and  h                                           ; $4f32: $a4
	ld   a, c                                        ; $4f33: $79
	ld   h, [hl]                                     ; $4f34: $66
	ld   l, b                                        ; $4f35: $68
	ld   [hl], a                                     ; $4f36: $77
	add  l                                           ; $4f37: $85
	add  a                                           ; $4f38: $87
	ld   a, c                                        ; $4f39: $79
	add  a                                           ; $4f3a: $87
	xor  c                                           ; $4f3b: $a9
	ld   d, a                                        ; $4f3c: $57
	ld   [hl], a                                     ; $4f3d: $77
	ld   [hl], a                                     ; $4f3e: $77
	ld   a, b                                        ; $4f3f: $78
	sub  a                                           ; $4f40: $97
	ld   l, c                                        ; $4f41: $69
	add  [hl]                                        ; $4f42: $86
	add  a                                           ; $4f43: $87
	sbc  d                                           ; $4f44: $9a
	ld   c, c                                        ; $4f45: $49
	call nz, $8759                                   ; $4f46: $c4 $59 $87
	sub  [hl]                                        ; $4f49: $96
	ld   a, d                                        ; $4f4a: $7a
	ld   e, d                                        ; $4f4b: $5a
	sub  h                                           ; $4f4c: $94
	and  a                                           ; $4f4d: $a7
	ld   a, c                                        ; $4f4e: $79
	ld   l, c                                        ; $4f4f: $69
	adc  b                                           ; $4f50: $88
	ld   h, l                                        ; $4f51: $65
	cp   b                                           ; $4f52: $b8
	ld   l, c                                        ; $4f53: $69
	ld   [hl], a                                     ; $4f54: $77
	add  [hl]                                        ; $4f55: $86
	sbc  b                                           ; $4f56: $98
	adc  d                                           ; $4f57: $8a
	add  a                                           ; $4f58: $87
	ld   a, b                                        ; $4f59: $78
	add  a                                           ; $4f5a: $87
	ld   [hl], a                                     ; $4f5b: $77
	adc  b                                           ; $4f5c: $88
	add  a                                           ; $4f5d: $87
	ld   a, b                                        ; $4f5e: $78
	sbc  b                                           ; $4f5f: $98
	ld   a, d                                        ; $4f60: $7a
	sbc  c                                           ; $4f61: $99
	add  [hl]                                        ; $4f62: $86
	adc  b                                           ; $4f63: $88
	ld   h, [hl]                                     ; $4f64: $66
	ld   h, a                                        ; $4f65: $67
	add  a                                           ; $4f66: $87
	adc  c                                           ; $4f67: $89
	adc  d                                           ; $4f68: $8a
	xor  c                                           ; $4f69: $a9
	cp   c                                           ; $4f6a: $b9
	cp   h                                           ; $4f6b: $bc
	xor  b                                           ; $4f6c: $a8
	adc  b                                           ; $4f6d: $88
	add  a                                           ; $4f6e: $87
	ld   h, l                                        ; $4f6f: $65
	ld   d, h                                        ; $4f70: $54
	ld   b, l                                        ; $4f71: $45
	ld   h, [hl]                                     ; $4f72: $66
	ld   a, c                                        ; $4f73: $79
	cp   l                                           ; $4f74: $bd
	xor  $ee                                         ; $4f75: $ee $ee
	db   $fd                                         ; $4f77: $fd
	and  h                                           ; $4f78: $a4
	ld   de, $1111                                   ; $4f79: $11 $11 $11
	inc  de                                          ; $4f7c: $13
	ld   d, a                                        ; $4f7d: $57
	rst  $28                                         ; $4f7e: $ef
	rst  $38                                         ; $4f7f: $ff
	rst  $38                                         ; $4f80: $ff
	rst  $38                                         ; $4f81: $ff
	ld   [$1151], a                                  ; $4f82: $ea $51 $11
	ld   de, $1611                                   ; $4f85: $11 $11 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f88: $cf
	rst  $38                                         ; $4f89: $ff
	rst  $38                                         ; $4f8a: $ff
	rst  $38                                         ; $4f8b: $ff
	rst  $38                                         ; $4f8c: $ff
	or   e                                           ; $4f8d: $b3
	ld   de, $1111                                   ; $4f8e: $11 $11 $11
	ld   de, $ff6f                                   ; $4f91: $11 $6f $ff
	rst  $38                                         ; $4f94: $ff
	rst  $38                                         ; $4f95: $ff
	rst  $38                                         ; $4f96: $ff
	ld   sp, hl                                      ; $4f97: $f9
	ld   sp, $1111                                   ; $4f98: $31 $11 $11
	ld   de, $ff1b                                   ; $4f9b: $11 $1b $ff
	rst  $38                                         ; $4f9e: $ff
	rst  $38                                         ; $4f9f: $ff
	rst  $38                                         ; $4fa0: $ff
	cp   $81                                         ; $4fa1: $fe $81
	ld   de, $1111                                   ; $4fa3: $11 $11 $11
	inc  de                                          ; $4fa6: $13
	rst  $38                                         ; $4fa7: $ff
	rst  $38                                         ; $4fa8: $ff
	rst  $38                                         ; $4fa9: $ff
	rst  $38                                         ; $4faa: $ff
	cp   $b4                                         ; $4fab: $fe $b4
	ld   de, $1111                                   ; $4fad: $11 $11 $11
	ld   de, $ffcf                                   ; $4fb0: $11 $cf $ff
	rst  $38                                         ; $4fb3: $ff
	rst  $38                                         ; $4fb4: $ff
	cp   $c6                                         ; $4fb5: $fe $c6
	ld   de, $1111                                   ; $4fb7: $11 $11 $11
	ld   de, $ff8f                                   ; $4fba: $11 $8f $ff
	rst  $38                                         ; $4fbd: $ff
	rst  $38                                         ; $4fbe: $ff
	db   $fc                                         ; $4fbf: $fc
	ret  z                                           ; $4fc0: $c8

	ld   de, $1111                                   ; $4fc1: $11 $11 $11
	ld   de, $ff7f                                   ; $4fc4: $11 $7f $ff
	rst  $38                                         ; $4fc7: $ff
	rst  $38                                         ; $4fc8: $ff
	ld   sp, hl                                      ; $4fc9: $f9
	cp   b                                           ; $4fca: $b8
	ld   de, $1311                                   ; $4fcb: $11 $11 $13
	ld   de, $ff9f                                   ; $4fce: $11 $9f $ff
	rst  $38                                         ; $4fd1: $ff
	rst  $38                                         ; $4fd2: $ff
	add  sp, -$49                                    ; $4fd3: $e8 $b7
	ld   de, $1711                                   ; $4fd5: $11 $11 $17
	ld   de, $ffcf                                   ; $4fd8: $11 $cf $ff
	rst  $38                                         ; $4fdb: $ff
	rst  $38                                         ; $4fdc: $ff
	add  $b6                                         ; $4fdd: $c6 $b6
	ld   de, $1a11                                   ; $4fdf: $11 $11 $1a
	inc  d                                           ; $4fe2: $14
	rst  JumpTable                                         ; $4fe3: $df
	rst  $38                                         ; $4fe4: $ff
	rst  $38                                         ; $4fe5: $ff
	rst  $38                                         ; $4fe6: $ff
	rst  ToBoot                                         ; $4fe7: $c7
	or   l                                           ; $4fe8: $b5
	ld   de, $2911                                   ; $4fe9: $11 $11 $29
	rla                                              ; $4fec: $17
	rst  $28                                         ; $4fed: $ef
	rst  $38                                         ; $4fee: $ff
	rst  $28                                         ; $4fef: $ef
	db   $fd                                         ; $4ff0: $fd
	and  a                                           ; $4ff1: $a7
	jp   nz, $1111                                   ; $4ff2: $c2 $11 $11

	sbc  b                                           ; $4ff5: $98
	ld   a, [de]                                     ; $4ff6: $1a
	rst  $38                                         ; $4ff7: $ff
	rst  $38                                         ; $4ff8: $ff
	rst  $28                                         ; $4ff9: $ef
	db   $fd                                         ; $4ffa: $fd
	sub  [hl]                                        ; $4ffb: $96
	or   c                                           ; $4ffc: $b1
	ld   de, $f511                                   ; $4ffd: $11 $11 $f5
	dec  e                                           ; $5000: $1d
	rst  $38                                         ; $5001: $ff
	rst  $38                                         ; $5002: $ff
	rst  $38                                         ; $5003: $ff
	db   $db                                         ; $5004: $db
	ld   e, d                                        ; $5005: $5a
	pop  bc                                          ; $5006: $c1
	ld   de, $f311                                   ; $5007: $11 $11 $f3
	ld   e, $ff                                      ; $500a: $1e $ff
	rst  $38                                         ; $500c: $ff
	rst  $38                                         ; $500d: $ff
	adc  $49                                         ; $500e: $ce $49
	pop  bc                                          ; $5010: $c1
	ld   de, $f111                                   ; $5011: $11 $11 $f1
	rra                                              ; $5014: $1f
	rst  $38                                         ; $5015: $ff
	db   $fc                                         ; $5016: $fc
	rst  $38                                         ; $5017: $ff
	xor  h                                           ; $5018: $ac
	dec  sp                                          ; $5019: $3b
	and  c                                           ; $501a: $a1
	ld   de, $f111                                   ; $501b: $11 $11 $f1
	ld   c, a                                        ; $501e: $4f
	rst  $38                                         ; $501f: $ff
	ld   a, [$9cff]                                  ; $5020: $fa $ff $9c
	inc  a                                           ; $5023: $3c
	add  c                                           ; $5024: $81
	ld   de, $f111                                   ; $5025: $11 $11 $f1
	ld   a, a                                        ; $5028: $7f
	rst  $38                                         ; $5029: $ff
	ei                                               ; $502a: $fb
	rst  $38                                         ; $502b: $ff
	sbc  e                                           ; $502c: $9b
	ld   a, $71                                      ; $502d: $3e $71
	ld   hl, $f111                                   ; $502f: $21 $11 $f1
	xor  a                                           ; $5032: $af
	rst  $38                                         ; $5033: $ff
	ei                                               ; $5034: $fb
	rst  $38                                         ; $5035: $ff
	sbc  d                                           ; $5036: $9a
	ld   l, $61                                      ; $5037: $2e $61
	ld   de, $f115                                   ; $5039: $11 $15 $f1
	rst  $28                                         ; $503c: $ef
	rst  $38                                         ; $503d: $ff
	ei                                               ; $503e: $fb
	rst  $38                                         ; $503f: $ff
	cp   d                                           ; $5040: $ba
	ccf                                              ; $5041: $3f
	ld   h, d                                        ; $5042: $62
	ld   de, $d11c                                   ; $5043: $11 $1c $d1
	rst  $38                                         ; $5046: $ff
	rst  $38                                         ; $5047: $ff
	db   $fd                                         ; $5048: $fd
	ei                                               ; $5049: $fb
	reti                                             ; $504a: $d9


	ld   e, $63                                      ; $504b: $1e $63
	ld   de, $911f                                   ; $504d: $11 $1f $91
	rst  $38                                         ; $5050: $ff
	rst  $38                                         ; $5051: $ff
	cp   $fa                                         ; $5052: $fe $fa
	ld   hl, sp+$3e                                  ; $5054: $f8 $3e
	ld   h, h                                        ; $5056: $64
	ld   de, $111f                                   ; $5057: $11 $1f $11
	rst  $38                                         ; $505a: $ff
	rst  $38                                         ; $505b: $ff
	rst  $38                                         ; $505c: $ff
	ld   hl, sp-$0b                                  ; $505d: $f8 $f5
	dec  l                                           ; $505f: $2d
	ld   [hl], d                                     ; $5060: $72
	ld   de, $121f                                   ; $5061: $11 $1f $12
	rst  $38                                         ; $5064: $ff
	rst  $38                                         ; $5065: $ff
	rst  $38                                         ; $5066: $ff
	xor  d                                           ; $5067: $aa
	ldh  a, [c]                                      ; $5068: $f2
	ld   a, h                                        ; $5069: $7c
	add  c                                           ; $506a: $81
	ld   de, $1fdf                                   ; $506b: $11 $df $1f
	rst  $38                                         ; $506e: $ff
	rst  $38                                         ; $506f: $ff
	rst  $38                                         ; $5070: $ff
	ld   l, a                                        ; $5071: $6f
	pop  af                                          ; $5072: $f1
	sbc  [hl]                                        ; $5073: $9e
	ld   [hl], c                                     ; $5074: $71
	ld   de, $1ff1                                   ; $5075: $11 $f1 $1f
	cp   $ff                                         ; $5078: $fe $ff
	ld   a, [$716f]                                  ; $507a: $fa $6f $71
	call $1b21                                       ; $507d: $cd $21 $1b
	pop  af                                          ; $5080: $f1
	adc  a                                           ; $5081: $8f
	rst  $38                                         ; $5082: $ff
	rst  $38                                         ; $5083: $ff
	ldh  a, [c]                                      ; $5084: $f2
	rst  $28                                         ; $5085: $ef
	inc  d                                           ; $5086: $14
	ld   a, [$1f11]                                  ; $5087: $fa $11 $1f
	ld   de, $dfff                                   ; $508a: $11 $ff $df
	rst  $38                                         ; $508d: $ff
	ld   [hl], l                                     ; $508e: $75
	ld   sp, hl                                      ; $508f: $f9
	inc  e                                           ; $5090: $1c
	ldh  [c], a                                      ; $5091: $e2
	ld   de, $1eff                                   ; $5092: $11 $ff $1e
	rst  $38                                         ; $5095: $ff
	rst  JumpTable                                         ; $5096: $df
	rst  $38                                         ; $5097: $ff
	rra                                              ; $5098: $1f
	pop  af                                          ; $5099: $f1
	ld   e, a                                        ; $509a: $5f
	add  c                                           ; $509b: $81
	dec  d                                           ; $509c: $15
	pop  af                                          ; $509d: $f1
	rra                                              ; $509e: $1f
	db   $fd                                         ; $509f: $fd
	rst  $38                                         ; $50a0: $ff
	pop  af                                          ; $50a1: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50a2: $cf
	ld   hl, $11ec                                   ; $50a3: $21 $ec $11
	rra                                              ; $50a6: $1f
	ld   de, $ffff                                   ; $50a7: $11 $ff $ff
	rst  $38                                         ; $50aa: $ff
	ld   h, $f8                                      ; $50ab: $26 $f8
	dec  de                                          ; $50ad: $1b
	pop  de                                          ; $50ae: $d1
	ld   de, $1ff1                                   ; $50af: $11 $f1 $1f
	cp   $df                                         ; $50b2: $fe $df
	db   $f4                                         ; $50b4: $f4
	cpl                                              ; $50b5: $2f
	pop  bc                                          ; $50b6: $c1
	xor  l                                           ; $50b7: $ad
	ld   de, $111f                                   ; $50b8: $11 $1f $11
	rst  $38                                         ; $50bb: $ff
	db   $ed                                         ; $50bc: $ed
	rst  $38                                         ; $50bd: $ff
	ld   b, d                                        ; $50be: $42
	db   $fc                                         ; $50bf: $fc
	rla                                              ; $50c0: $17
	pop  bc                                          ; $50c1: $c1
	ld   de, $1ff1                                   ; $50c2: $11 $f1 $1f
	cp   $df                                         ; $50c5: $fe $df
	pop  af                                          ; $50c7: $f1
	rra                                              ; $50c8: $1f
	pop  de                                          ; $50c9: $d1
	xor  e                                           ; $50ca: $ab
	ld   de, $111f                                   ; $50cb: $11 $1f $11
	rst  $38                                         ; $50ce: $ff
	db   $dd                                         ; $50cf: $dd
	rst  $38                                         ; $50d0: $ff
	dec  d                                           ; $50d1: $15
	ld   hl, sp+$19                                  ; $50d2: $f8 $19
	and  c                                           ; $50d4: $a1
	inc  e                                           ; $50d5: $1c
	pop  af                                          ; $50d6: $f1
	adc  a                                           ; $50d7: $8f
	db   $fd                                         ; $50d8: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50d9: $cf
	pop  af                                          ; $50da: $f1
	xor  a                                           ; $50db: $af
	ld   h, e                                        ; $50dc: $63
	sbc  b                                           ; $50dd: $98
	ld   de, $1fff                                   ; $50de: $11 $ff $1f
	rst  $38                                         ; $50e1: $ff
	call $1eff                                       ; $50e2: $cd $ff $1e
	push af                                          ; $50e5: $f5
	add  hl, sp                                      ; $50e6: $39
	ld   de, $611f                                   ; $50e7: $11 $1f $61
	rst  $38                                         ; $50ea: $ff
	ei                                               ; $50eb: $fb
	rst  $38                                         ; $50ec: $ff
	ld   h, c                                        ; $50ed: $61
	rst  $38                                         ; $50ee: $ff
	ld   h, $91                                      ; $50ef: $26 $91
	ld   de, $1ff1                                   ; $50f1: $11 $f1 $1f
	rst  $38                                         ; $50f4: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50f5: $cf
	pop  af                                          ; $50f6: $f1
	cpl                                              ; $50f7: $2f
	and  d                                           ; $50f8: $a2
	halt                                             ; $50f9: $76
	ld   de, $1fff                                   ; $50fa: $11 $ff $1f
	rst  $38                                         ; $50fd: $ff
	xor  $ff                                         ; $50fe: $ee $ff
	dec  e                                           ; $5100: $1d
	db   $f4                                         ; $5101: $f4
	add  hl, sp                                      ; $5102: $39
	ld   de, $111f                                   ; $5103: $11 $1f $11
	rst  $38                                         ; $5106: $ff
	ei                                               ; $5107: $fb
	rst  $38                                         ; $5108: $ff
	ld   sp, $36fd                                   ; $5109: $31 $fd $36
	ld   h, c                                        ; $510c: $61
	dec  e                                           ; $510d: $1d
	pop  af                                          ; $510e: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $510f: $cf
	rst  $38                                         ; $5110: $ff
	cp   a                                           ; $5111: $bf
	pop  af                                          ; $5112: $f1
	ld   l, a                                        ; $5113: $6f
	ld   [hl], c                                     ; $5114: $71
	ld   [hl], c                                     ; $5115: $71
	ld   de, $1ff5                                   ; $5116: $11 $f5 $1f
	rst  $38                                         ; $5119: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $511a: $cf
	ld   sp, hl                                      ; $511b: $f9
	rra                                              ; $511c: $1f
	di                                               ; $511d: $f3
	scf                                              ; $511e: $37
	ld   de, $1daf                                   ; $511f: $11 $af $1d
	rst  $38                                         ; $5122: $ff
	ld   a, [$17ff]                                  ; $5123: $fa $ff $17
	ld   hl, sp+$37                                  ; $5126: $f8 $37
	ld   de, $211f                                   ; $5128: $11 $1f $21
	rst  $38                                         ; $512b: $ff
	db   $fd                                         ; $512c: $fd
	rst  $38                                         ; $512d: $ff
	ld   [hl], c                                     ; $512e: $71
	rst  $38                                         ; $512f: $ff
	inc  d                                           ; $5130: $14
	ld   d, c                                        ; $5131: $51
	rra                                              ; $5132: $1f
	pop  af                                          ; $5133: $f1
	rst  $38                                         ; $5134: $ff
	rst  $38                                         ; $5135: $ff
	cp   a                                           ; $5136: $bf
	pop  af                                          ; $5137: $f1
	ld   l, a                                        ; $5138: $6f
	ld   [hl], c                                     ; $5139: $71
	ld   [hl], c                                     ; $513a: $71
	ld   de, $8ff1                                   ; $513b: $11 $f1 $8f
	rst  $38                                         ; $513e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $513f: $cf
	pop  af                                          ; $5140: $f1
	rra                                              ; $5141: $1f
	pop  hl                                          ; $5142: $e1
	ld   d, c                                        ; $5143: $51
	ld   de, $1ff4                                   ; $5144: $11 $f4 $1f
	rst  $38                                         ; $5147: $ff
	cp   $fc                                         ; $5148: $fe $fc
	rra                                              ; $514a: $1f
	ldh  a, [c]                                      ; $514b: $f2
	ld   b, e                                        ; $514c: $43
	ld   de, $1fdc                                   ; $514d: $11 $dc $1f
	rst  $38                                         ; $5150: $ff
	db   $fd                                         ; $5151: $fd
	rst  $38                                         ; $5152: $ff
	ld   d, $f6                                      ; $5153: $16 $f6
	ld   d, $11                                      ; $5155: $16 $11
	rrca                                             ; $5157: $0f
	inc  e                                           ; $5158: $1c
	rst  $38                                         ; $5159: $ff
	cp   $ff                                         ; $515a: $fe $ff
	ld   de, $16fa                                   ; $515c: $11 $fa $16
	ld   de, $1a1f                                   ; $515f: $11 $1f $1a
	rst  $38                                         ; $5162: $ff
	rst  $38                                         ; $5163: $ff
	rst  $38                                         ; $5164: $ff
	ld   de, $15fe                                   ; $5165: $11 $fe $15
	ld   de, $251f                                   ; $5168: $11 $1f $25
	rst  $38                                         ; $516b: $ff
	rst  $38                                         ; $516c: $ff
	rst  $38                                         ; $516d: $ff
	ld   b, c                                        ; $516e: $41
	rst  $38                                         ; $516f: $ff
	dec  b                                           ; $5170: $05
	ld   de, $661b                                   ; $5171: $11 $1b $66
	rst  $38                                         ; $5174: $ff
	rst  $38                                         ; $5175: $ff
	rst  $38                                         ; $5176: $ff

Call_0cb_5177:
	and  c                                           ; $5177: $a1
	rst  $38                                         ; $5178: $ff
	inc  [hl]                                        ; $5179: $34
	ld   de, $5417                                   ; $517a: $11 $17 $54
	rst  $38                                         ; $517d: $ff
	rst  $38                                         ; $517e: $ff
	rst  $38                                         ; $517f: $ff
	or   c                                           ; $5180: $b1
	rst  $38                                         ; $5181: $ff
	ld   b, a                                        ; $5182: $47
	ld   de, $6512                                   ; $5183: $11 $12 $65
	rst  $38                                         ; $5186: $ff
	rst  $38                                         ; $5187: $ff
	rst  $38                                         ; $5188: $ff
	pop  af                                          ; $5189: $f1
	xor  a                                           ; $518a: $af
	ld   h, [hl]                                     ; $518b: $66
	ld   de, $6311                                   ; $518c: $11 $11 $63
	rst  $38                                         ; $518f: $ff
	rst  $38                                         ; $5190: $ff
	rst  $38                                         ; $5191: $ff
	pop  af                                          ; $5192: $f1
	cp   a                                           ; $5193: $bf
	ld   l, c                                        ; $5194: $69
	ld   b, c                                        ; $5195: $41
	ld   de, $af91                                   ; $5196: $11 $91 $af
	rst  $38                                         ; $5199: $ff
	rst  $38                                         ; $519a: $ff
	pop  af                                          ; $519b: $f1
	ld   l, a                                        ; $519c: $6f
	ld   a, c                                        ; $519d: $79
	add  c                                           ; $519e: $81
	ld   de, $5f72                                   ; $519f: $11 $72 $5f
	rst  $38                                         ; $51a2: $ff
	rst  $38                                         ; $51a3: $ff
	pop  af                                          ; $51a4: $f1
	cpl                                              ; $51a5: $2f
	sbc  c                                           ; $51a6: $99
	and  c                                           ; $51a7: $a1
	ld   de, $1f35                                   ; $51a8: $11 $35 $1f
	rst  $38                                         ; $51ab: $ff
	rst  $38                                         ; $51ac: $ff
	db   $f4                                         ; $51ad: $f4
	rra                                              ; $51ae: $1f
	xor  b                                           ; $51af: $a8
	pop  bc                                          ; $51b0: $c1
	ld   de, $181f                                   ; $51b1: $11 $1f $18
	rst  $38                                         ; $51b4: $ff
	rst  $38                                         ; $51b5: $ff
	cp   $1b                                         ; $51b6: $fe $1b
	ld   sp, hl                                      ; $51b8: $f9
	xor  c                                           ; $51b9: $a9
	ld   de, $1314                                   ; $51ba: $11 $14 $13
	rst  $38                                         ; $51bd: $ff
	rst  $38                                         ; $51be: $ff
	rst  $38                                         ; $51bf: $ff
	ld   d, $fa                                      ; $51c0: $16 $fa
	jp   z, $1111                                    ; $51c2: $ca $11 $11

	ld   h, c                                        ; $51c5: $61
	rst  $38                                         ; $51c6: $ff
	rst  $38                                         ; $51c7: $ff
	rst  $38                                         ; $51c8: $ff
	ld   b, c                                        ; $51c9: $41
	ret                                              ; $51ca: $c9


	adc  [hl]                                        ; $51cb: $8e
	ld   d, c                                        ; $51cc: $51
	ld   de, $8f81                                   ; $51cd: $11 $81 $8f
	rst  $38                                         ; $51d0: $ff
	rst  $38                                         ; $51d1: $ff
	pop  af                                          ; $51d2: $f1
	sbc  h                                           ; $51d3: $9c
	sbc  a                                           ; $51d4: $9f
	pop  de                                          ; $51d5: $d1
	ld   de, $1f11                                   ; $51d6: $11 $11 $1f
	rst  $38                                         ; $51d9: $ff
	rst  $38                                         ; $51da: $ff
	db   $f4                                         ; $51db: $f4
	ld   e, a                                        ; $51dc: $5f
	adc  h                                           ; $51dd: $8c
	rst  $30                                         ; $51de: $f7
	ld   de, $1211                                   ; $51df: $11 $11 $12
	rst  $38                                         ; $51e2: $ff
	rst  $38                                         ; $51e3: $ff
	rst  $38                                         ; $51e4: $ff
	dec  de                                          ; $51e5: $1b
	add  [hl]                                        ; $51e6: $86
	rst  $38                                         ; $51e7: $ff
	ld   sp, $1111                                   ; $51e8: $31 $11 $11
	sbc  a                                           ; $51eb: $9f
	rst  $38                                         ; $51ec: $ff
	rst  $38                                         ; $51ed: $ff
	rst  $10                                         ; $51ee: $d7
	and  [hl]                                        ; $51ef: $a6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51f0: $cf
	sub  c                                           ; $51f1: $91
	ld   de, $2f11                                   ; $51f2: $11 $11 $2f
	rst  $38                                         ; $51f5: $ff
	rst  $38                                         ; $51f6: $ff
	ld   a, [$5fb6]                                  ; $51f7: $fa $b6 $5f
	db   $f4                                         ; $51fa: $f4
	ld   de, $1511                                   ; $51fb: $11 $11 $15
	rst  $38                                         ; $51fe: $ff
	rst  $38                                         ; $51ff: $ff
	rst  $38                                         ; $5200: $ff
	ld   a, h                                        ; $5201: $7c
	ld   e, d                                        ; $5202: $5a
	cp   $11                                         ; $5203: $fe $11
	ld   de, $9f12                                   ; $5205: $11 $12 $9f
	rst  $38                                         ; $5208: $ff
	rst  $38                                         ; $5209: $ff
	cp   d                                           ; $520a: $ba
	ld   h, h                                        ; $520b: $64
	rst  $38                                         ; $520c: $ff
	or   c                                           ; $520d: $b1
	ld   de, $2c11                                   ; $520e: $11 $11 $2c
	rst  $38                                         ; $5211: $ff
	rst  $38                                         ; $5212: $ff
	ld   hl, sp-$7c                                  ; $5213: $f8 $84
	ld   l, a                                        ; $5215: $6f
	ld   sp, hl                                      ; $5216: $f9
	ld   de, $1411                                   ; $5217: $11 $11 $14
	rst  $28                                         ; $521a: $ef
	rst  $38                                         ; $521b: $ff
	rst  $38                                         ; $521c: $ff
	or   l                                           ; $521d: $b5
	add  hl, hl                                      ; $521e: $29
	rst  $38                                         ; $521f: $ff
	add  c                                           ; $5220: $81
	ld   de, $8f11                                   ; $5221: $11 $11 $8f
	rst  $38                                         ; $5224: $ff
	rst  $38                                         ; $5225: $ff
	ld   sp, hl                                      ; $5226: $f9
	ld   d, e                                        ; $5227: $53
	xor  a                                           ; $5228: $af
	push af                                          ; $5229: $f5
	ld   de, $1911                                   ; $522a: $11 $11 $19
	rst  $38                                         ; $522d: $ff
	rst  $38                                         ; $522e: $ff
	rst  $38                                         ; $522f: $ff
	add  h                                           ; $5230: $84
	dec  sp                                          ; $5231: $3b
	rst  $38                                         ; $5232: $ff
	ld   b, c                                        ; $5233: $41
	ld   de, $7f11                                   ; $5234: $11 $11 $7f
	rst  $38                                         ; $5237: $ff
	rst  $38                                         ; $5238: $ff
	sub  $35                                         ; $5239: $d6 $35
	rst  $28                                         ; $523b: $ef
	ld   hl, sp+$11                                  ; $523c: $f8 $11
	ld   de, rAUD1HIGH                                   ; $523e: $11 $14 $ff
	rst  $38                                         ; $5241: $ff
	rst  $38                                         ; $5242: $ff
	ld   d, d                                        ; $5243: $52
	ld   l, [hl]                                     ; $5244: $6e
	rst  $38                                         ; $5245: $ff
	ld   [hl], c                                     ; $5246: $71
	ld   de, $6f11                                   ; $5247: $11 $11 $6f
	rst  $38                                         ; $524a: $ff
	rst  $38                                         ; $524b: $ff
	push de                                          ; $524c: $d5
	ld   d, [hl]                                     ; $524d: $56
	xor  a                                           ; $524e: $af
	db   $fd                                         ; $524f: $fd
	ld   de, $1111                                   ; $5250: $11 $11 $11
	rst  $38                                         ; $5253: $ff
	rst  $38                                         ; $5254: $ff
	rst  $38                                         ; $5255: $ff
	ld   d, d                                        ; $5256: $52
	ld   a, d                                        ; $5257: $7a
	rst  $38                                         ; $5258: $ff
	db   $f4                                         ; $5259: $f4
	ld   de, $1a11                                   ; $525a: $11 $11 $1a
	rst  $38                                         ; $525d: $ff
	rst  $38                                         ; $525e: $ff
	rst  $30                                         ; $525f: $f7
	ld   b, a                                        ; $5260: $47
	cp   a                                           ; $5261: $bf
	rst  $38                                         ; $5262: $ff
	add  c                                           ; $5263: $81
	ld   de, $7f11                                   ; $5264: $11 $11 $7f
	rst  $38                                         ; $5267: $ff
	rst  $38                                         ; $5268: $ff
	pop  af                                          ; $5269: $f1
	ld   l, l                                        ; $526a: $6d
	xor  a                                           ; $526b: $af
	rst  $38                                         ; $526c: $ff
	ld   hl, $1111                                   ; $526d: $21 $11 $11
	cp   a                                           ; $5270: $bf
	rst  $38                                         ; $5271: $ff
	rst  $38                                         ; $5272: $ff
	sub  c                                           ; $5273: $91
	ld   a, h                                        ; $5274: $7c
	rst  $38                                         ; $5275: $ff
	db   $fd                                         ; $5276: $fd
	ld   de, $1111                                   ; $5277: $11 $11 $11
	rst  $38                                         ; $527a: $ff
	rst  $38                                         ; $527b: $ff
	rst  $38                                         ; $527c: $ff
	inc  [hl]                                        ; $527d: $34
	xor  l                                           ; $527e: $ad
	rst  $38                                         ; $527f: $ff
	ei                                               ; $5280: $fb
	ld   de, $1511                                   ; $5281: $11 $11 $15
	rst  $38                                         ; $5284: $ff
	rst  $38                                         ; $5285: $ff
	rst  $38                                         ; $5286: $ff
	ld   de, $ffdf                                   ; $5287: $11 $df $ff
	or   $11                                         ; $528a: $f6 $11
	ld   de, $ff18                                   ; $528c: $11 $18 $ff
	rst  $38                                         ; $528f: $ff
	db   $fd                                         ; $5290: $fd
	inc  d                                           ; $5291: $14
	rst  $28                                         ; $5292: $ef
	rst  $38                                         ; $5293: $ff
	db   $f4                                         ; $5294: $f4
	ld   de, $1711                                   ; $5295: $11 $11 $17
	rst  $38                                         ; $5298: $ff
	rst  $38                                         ; $5299: $ff
	ei                                               ; $529a: $fb
	dec  d                                           ; $529b: $15
	rst  JumpTable                                         ; $529c: $df
	rst  $38                                         ; $529d: $ff
	di                                               ; $529e: $f3
	ld   de, $1811                                   ; $529f: $11 $11 $18
	rst  $38                                         ; $52a2: $ff
	rst  $38                                         ; $52a3: $ff
	rst  $38                                         ; $52a4: $ff
	inc  sp                                          ; $52a5: $33
	adc  a                                           ; $52a6: $8f
	rst  $38                                         ; $52a7: $ff
	push af                                          ; $52a8: $f5
	ld   de, $1711                                   ; $52a9: $11 $11 $17
	rst  $38                                         ; $52ac: $ff
	rst  $38                                         ; $52ad: $ff
	rst  $38                                         ; $52ae: $ff
	ld   b, d                                        ; $52af: $42
	cp   a                                           ; $52b0: $bf
	rst  $38                                         ; $52b1: $ff
	ld   sp, hl                                      ; $52b2: $f9
	ld   de, $1311                                   ; $52b3: $11 $11 $13
	rst  $38                                         ; $52b6: $ff
	rst  $38                                         ; $52b7: $ff

Call_0cb_52b8:
	cp   $62                                         ; $52b8: $fe $62
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52ba: $cf
	rst  $38                                         ; $52bb: $ff
	db   $fc                                         ; $52bc: $fc
	ld   de, $1111                                   ; $52bd: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52c0: $cf
	rst  $38                                         ; $52c1: $ff
	rst  $38                                         ; $52c2: $ff
	db   $f4                                         ; $52c3: $f4
	inc  a                                           ; $52c4: $3c
	rst  $38                                         ; $52c5: $ff
	rst  $38                                         ; $52c6: $ff
	ld   h, c                                        ; $52c7: $61
	ld   de, $1f11                                   ; $52c8: $11 $11 $1f
	rst  $38                                         ; $52cb: $ff
	rst  $38                                         ; $52cc: $ff
	ld   a, [$ff15]                                  ; $52cd: $fa $15 $ff
	rst  $38                                         ; $52d0: $ff
	db   $f4                                         ; $52d1: $f4
	ld   de, $1711                                   ; $52d2: $11 $11 $17
	rst  $38                                         ; $52d5: $ff
	rst  $38                                         ; $52d6: $ff
	rst  JumpTable                                         ; $52d7: $df
	ld   b, c                                        ; $52d8: $41
	rst  JumpTable                                         ; $52d9: $df
	rst  $38                                         ; $52da: $ff
	db   $fc                                         ; $52db: $fc
	ld   de, $1111                                   ; $52dc: $11 $11 $11
	sbc  a                                           ; $52df: $9f
	rst  $38                                         ; $52e0: $ff
	ld   hl, sp-$2c                                  ; $52e1: $f8 $d4
	inc  e                                           ; $52e3: $1c
	rst  $38                                         ; $52e4: $ff
	rst  $38                                         ; $52e5: $ff
	or   c                                           ; $52e6: $b1
	ld   de, $1911                                   ; $52e7: $11 $11 $19
	rst  $38                                         ; $52ea: $ff
	rst  $38                                         ; $52eb: $ff
	ld   a, c                                        ; $52ec: $79
	ld   h, d                                        ; $52ed: $62
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52ee: $cf
	rst  $38                                         ; $52ef: $ff
	rst  $30                                         ; $52f0: $f7
	ld   de, $1111                                   ; $52f1: $11 $11 $11
	ld   e, a                                        ; $52f4: $5f
	rst  $38                                         ; $52f5: $ff
	push af                                          ; $52f6: $f5
	cp   e                                           ; $52f7: $bb
	dec  de                                          ; $52f8: $1b
	rst  $38                                         ; $52f9: $ff
	rst  $38                                         ; $52fa: $ff
	add  $11                                         ; $52fb: $c6 $11
	ld   de, $7f11                                   ; $52fd: $11 $11 $7f
	rst  $38                                         ; $5300: $ff
	jp   nc, Jump_0cb_6fc5                           ; $5301: $d2 $c5 $6f

	rst  $38                                         ; $5304: $ff
	rst  $38                                         ; $5305: $ff
	and  c                                           ; $5306: $a1
	ld   de, $1111                                   ; $5307: $11 $11 $11
	rst  $38                                         ; $530a: $ff
	rst  $38                                         ; $530b: $ff
	ld   d, [hl]                                     ; $530c: $56
	jp   nc, $ffef                                   ; $530d: $d2 $ef $ff

	db   $fc                                         ; $5310: $fc
	ld   b, c                                        ; $5311: $41
	ld   de, $1511                                   ; $5312: $11 $11 $15
	rst  $38                                         ; $5315: $ff
	cp   $8f                                         ; $5316: $fe $8f
	or   h                                           ; $5318: $b4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5319: $cf
	rst  $38                                         ; $531a: $ff
	rst  $38                                         ; $531b: $ff
	ld   d, c                                        ; $531c: $51
	ld   de, $1911                                   ; $531d: $11 $11 $19
	rst  $38                                         ; $5320: $ff
	rst  $38                                         ; $5321: $ff
	rla                                              ; $5322: $17
	ld   sp, hl                                      ; $5323: $f9
	rst  $38                                         ; $5324: $ff
	rst  $38                                         ; $5325: $ff
	rst  $10                                         ; $5326: $d7
	ld   [hl], c                                     ; $5327: $71
	ld   de, $1111                                   ; $5328: $11 $11 $11
	adc  a                                           ; $532b: $8f
	rst  $38                                         ; $532c: $ff
	adc  $f7                                         ; $532d: $ce $f7
	ld   e, h                                        ; $532f: $5c
	rst  $38                                         ; $5330: $ff
	rst  $38                                         ; $5331: $ff
	sub  c                                           ; $5332: $91
	ld   de, $1111                                   ; $5333: $11 $11 $11
	dec  e                                           ; $5336: $1d
	rst  $38                                         ; $5337: $ff
	db   $f4                                         ; $5338: $f4
	xor  b                                           ; $5339: $a8
	adc  a                                           ; $533a: $8f
	rst  $38                                         ; $533b: $ff
	rst  $38                                         ; $533c: $ff
	pop  bc                                          ; $533d: $c1
	ld   de, $1111                                   ; $533e: $11 $11 $11
	ld   de, $ffff                                   ; $5341: $11 $ff $ff
	cpl                                              ; $5344: $2f
	push af                                          ; $5345: $f5
	xor  a                                           ; $5346: $af
	rst  $38                                         ; $5347: $ff
	db   $db                                         ; $5348: $db
	sub  c                                           ; $5349: $91
	ld   de, $1111                                   ; $534a: $11 $11 $11
	rra                                              ; $534d: $1f
	rst  $38                                         ; $534e: $ff
	and  c                                           ; $534f: $a1
	cp   l                                           ; $5350: $bd
	sbc  [hl]                                        ; $5351: $9e
	rst  $38                                         ; $5352: $ff
	db   $fc                                         ; $5353: $fc
	ld   [hl], l                                     ; $5354: $75
	inc  sp                                          ; $5355: $33
	ld   de, $1111                                   ; $5356: $11 $11 $11
	rst  $38                                         ; $5359: $ff
	rst  $38                                         ; $535a: $ff
	dec  d                                           ; $535b: $15
	and  c                                           ; $535c: $a1
	rst  $28                                         ; $535d: $ef
	rst  $38                                         ; $535e: $ff
	rst  $30                                         ; $535f: $f7
	ld   de, $3114                                   ; $5360: $11 $14 $31
	ld   de, rAUD1LOW                                   ; $5363: $11 $13 $ff
	push af                                          ; $5366: $f5
	ld   l, a                                        ; $5367: $6f
	add  h                                           ; $5368: $84
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5369: $cf
	rst  $38                                         ; $536a: $ff
	rst  $38                                         ; $536b: $ff
	ld   de, $1121                                   ; $536c: $11 $21 $11
	ld   de, $ff1f                                   ; $536f: $11 $1f $ff
	rst  $30                                         ; $5372: $f7
	ld   a, l                                        ; $5373: $7d
	adc  d                                           ; $5374: $8a
	rst  $38                                         ; $5375: $ff
	rst  $38                                         ; $5376: $ff
	xor  b                                           ; $5377: $a8
	ld   b, c                                        ; $5378: $41
	ld   hl, $1111                                   ; $5379: $21 $11 $11
	ld   a, a                                        ; $537c: $7f
	rst  $38                                         ; $537d: $ff
	and  [hl]                                        ; $537e: $a6
	or   l                                           ; $537f: $b5
	ld   l, [hl]                                     ; $5380: $6e
	rst  $38                                         ; $5381: $ff
	db   $fc                                         ; $5382: $fc
	sub  d                                           ; $5383: $92
	ld   de, $1113                                   ; $5384: $11 $13 $11
	ld   de, $ff7f                                   ; $5387: $11 $7f $ff
	push hl                                          ; $538a: $e5
	and  [hl]                                        ; $538b: $a6
	ld   c, a                                        ; $538c: $4f
	rst  $38                                         ; $538d: $ff
	ld   sp, hl                                      ; $538e: $f9
	or   [hl]                                        ; $538f: $b6
	ld   de, $1141                                   ; $5390: $11 $41 $11
	ld   de, $ff8f                                   ; $5393: $11 $8f $ff
	or   $89                                         ; $5396: $f6 $89
	ld   c, a                                        ; $5398: $4f
	rst  $38                                         ; $5399: $ff
	db   $fd                                         ; $539a: $fd
	add  a                                           ; $539b: $87
	ld   [de], a                                     ; $539c: $12
	ld   d, c                                        ; $539d: $51
	ld   de, $1e11                                   ; $539e: $11 $11 $1e
	rst  $38                                         ; $53a1: $ff
	db   $fc                                         ; $53a2: $fc
	ld   b, l                                        ; $53a3: $45
	dec  l                                           ; $53a4: $2d
	rst  $38                                         ; $53a5: $ff
	rst  $38                                         ; $53a6: $ff
	xor  e                                           ; $53a7: $ab
	ld   hl, $5147                                   ; $53a8: $21 $47 $51
	ld   de, rAUD1LEN                                   ; $53ab: $11 $11 $ff
	rst  $38                                         ; $53ae: $ff
	xor  l                                           ; $53af: $ad
	add  c                                           ; $53b0: $81
	sbc  a                                           ; $53b1: $9f
	rst  $38                                         ; $53b2: $ff
	ld   sp, hl                                      ; $53b3: $f9
	ld   h, d                                        ; $53b4: $62
	dec  d                                           ; $53b5: $15
	ld   [hl-], a                                    ; $53b6: $32
	ld   de, $1f11                                   ; $53b7: $11 $11 $1f
	rst  $38                                         ; $53ba: $ff
	and  $f9                                         ; $53bb: $e6 $f9
	cpl                                              ; $53bd: $2f
	rst  $38                                         ; $53be: $ff
	ld   sp, hl                                      ; $53bf: $f9
	xor  d                                           ; $53c0: $aa
	inc  de                                          ; $53c1: $13
	add  [hl]                                        ; $53c2: $86
	ld   de, $1111                                   ; $53c3: $11 $11 $11
	rst  $38                                         ; $53c6: $ff

Call_0cb_53c7:
	db   $fc                                         ; $53c7: $fc
	rst  $38                                         ; $53c8: $ff
	ld   d, d                                        ; $53c9: $52
	xor  a                                           ; $53ca: $af
	rst  $38                                         ; $53cb: $ff
	ld   a, [$5655]                                  ; $53cc: $fa $55 $56
	ld   hl, $1111                                   ; $53cf: $21 $11 $11
	dec  de                                          ; $53d2: $1b
	rst  $38                                         ; $53d3: $ff
	db   $fc                                         ; $53d4: $fc
	ld   a, [de]                                     ; $53d5: $1a
	ld   l, [hl]                                     ; $53d6: $6e
	rst  $38                                         ; $53d7: $ff
	rst  $38                                         ; $53d8: $ff
	ld   d, l                                        ; $53d9: $55
	ld   [hl+], a                                    ; $53da: $22
	sbc  d                                           ; $53db: $9a
	jp   nz, $1111                                   ; $53dc: $c2 $11 $11

	rra                                              ; $53df: $1f
	rst  $38                                         ; $53e0: $ff
	rst  $38                                         ; $53e1: $ff
	ld   b, d                                        ; $53e2: $42
	ld   c, a                                        ; $53e3: $4f
	rst  $38                                         ; $53e4: $ff
	cp   $53                                         ; $53e5: $fe $53
	inc  de                                          ; $53e7: $13
	rst  $38                                         ; $53e8: $ff
	and  c                                           ; $53e9: $a1
	ld   de, $5f11                                   ; $53ea: $11 $11 $5f
	rst  $38                                         ; $53ed: $ff
	db   $fd                                         ; $53ee: $fd
	xor  c                                           ; $53ef: $a9
	xor  e                                           ; $53f0: $ab
	rst  $38                                         ; $53f1: $ff
	db   $fd                                         ; $53f2: $fd
	inc  hl                                          ; $53f3: $23
	adc  c                                           ; $53f4: $89
	ld   [$1111], a                                  ; $53f5: $ea $11 $11
	ld   de, $ffff                                   ; $53f8: $11 $ff $ff
	ei                                               ; $53fb: $fb
	cp   b                                           ; $53fc: $b8
	adc  a                                           ; $53fd: $8f
	rst  $38                                         ; $53fe: $ff
	ld   sp, hl                                      ; $53ff: $f9
	rla                                              ; $5400: $17
	cp   a                                           ; $5401: $bf
	ei                                               ; $5402: $fb
	ld   [hl], c                                     ; $5403: $71
	ld   de, rAUD1LEN                                   ; $5404: $11 $11 $ff
	rst  $38                                         ; $5407: $ff
	xor  d                                           ; $5408: $aa
	ld   h, h                                        ; $5409: $64
	rst  JumpTable                                         ; $540a: $df
	rst  $38                                         ; $540b: $ff
	add  sp, $59                                     ; $540c: $e8 $59
	rst  $38                                         ; $540e: $ff
	db   $ec                                         ; $540f: $ec
	ld   d, c                                        ; $5410: $51
	ld   de, rAUD1LEN                                   ; $5411: $11 $11 $ff
	rst  $38                                         ; $5414: $ff
	or   [hl]                                        ; $5415: $b6
	ld   [hl], $ef                                   ; $5416: $36 $ef
	rst  $38                                         ; $5418: $ff
	and  $38                                         ; $5419: $e6 $38
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $541b: $cf
	rst  $38                                         ; $541c: $ff
	ld   sp, $1111                                   ; $541d: $31 $11 $11
	sbc  a                                           ; $5420: $9f
	rst  $38                                         ; $5421: $ff
	xor  d                                           ; $5422: $aa
	ld   h, l                                        ; $5423: $65
	rst  $38                                         ; $5424: $ff
	rst  $38                                         ; $5425: $ff
	db   $fc                                         ; $5426: $fc
	inc  h                                           ; $5427: $24
	rst  $38                                         ; $5428: $ff
	db   $fc                                         ; $5429: $fc
	ld   sp, $1111                                   ; $542a: $31 $11 $11
	rra                                              ; $542d: $1f
	rst  $38                                         ; $542e: $ff
	cp   c                                           ; $542f: $b9
	sbc  l                                           ; $5430: $9d
	db   $fd                                         ; $5431: $fd
	rst  $38                                         ; $5432: $ff
	rst  $38                                         ; $5433: $ff
	and  e                                           ; $5434: $a3
	cp   a                                           ; $5435: $bf
	rst  $38                                         ; $5436: $ff
	and  e                                           ; $5437: $a3
	ld   de, $1a11                                   ; $5438: $11 $11 $1a
	rst  $38                                         ; $543b: $ff
	ld   a, [$bf11]                                  ; $543c: $fa $11 $bf
	rst  $38                                         ; $543f: $ff
	rst  $38                                         ; $5440: $ff
	and  $3c                                         ; $5441: $e6 $3c
	rst  $38                                         ; $5443: $ff
	db   $fd                                         ; $5444: $fd
	ld   de, $1111                                   ; $5445: $11 $11 $11
	cp   a                                           ; $5448: $bf
	rst  $38                                         ; $5449: $ff
	ld   h, e                                        ; $544a: $63
	ld   de, $ffef                                   ; $544b: $11 $ef $ff
	ei                                               ; $544e: $fb
	ld   [hl], e                                     ; $544f: $73
	ld   a, a                                        ; $5450: $7f
	rst  $38                                         ; $5451: $ff
	rst  $30                                         ; $5452: $f7
	ld   de, $1111                                   ; $5453: $11 $11 $11
	ld   e, a                                        ; $5456: $5f
	rst  $38                                         ; $5457: $ff
	sub  c                                           ; $5458: $91
	ld   de, $ffff                                   ; $5459: $11 $ff $ff
	ld   sp, hl                                      ; $545c: $f9
	ld   h, l                                        ; $545d: $65
	ld   a, a                                        ; $545e: $7f
	rst  $38                                         ; $545f: $ff
	ei                                               ; $5460: $fb
	ld   de, $1111                                   ; $5461: $11 $11 $11
	rra                                              ; $5464: $1f
	rst  $38                                         ; $5465: $ff
	db   $f4                                         ; $5466: $f4
	ld   de, $ff4f                                   ; $5467: $11 $4f $ff
	db   $fc                                         ; $546a: $fc
	add  l                                           ; $546b: $85
	ld   a, a                                        ; $546c: $7f
	rst  $38                                         ; $546d: $ff
	rst  $38                                         ; $546e: $ff
	ld   hl, $1111                                   ; $546f: $21 $11 $11
	inc  d                                           ; $5472: $14
	rst  $38                                         ; $5473: $ff
	ei                                               ; $5474: $fb
	ld   de, $ff1e                                   ; $5475: $11 $1e $ff
	rst  $38                                         ; $5478: $ff
	or   h                                           ; $5479: $b4
	scf                                              ; $547a: $37
	rst  $38                                         ; $547b: $ff
	rst  $38                                         ; $547c: $ff
	pop  hl                                          ; $547d: $e1
	ld   de, $1111                                   ; $547e: $11 $11 $11
	rra                                              ; $5481: $1f
	rst  $38                                         ; $5482: $ff
	or   $11                                         ; $5483: $f6 $11
	rst  $38                                         ; $5485: $ff
	rst  $38                                         ; $5486: $ff
	ld   hl, sp+$13                                  ; $5487: $f8 $13
	ld   a, l                                        ; $5489: $7d
	rst  $38                                         ; $548a: $ff
	cp   $11                                         ; $548b: $fe $11
	ld   de, $1111                                   ; $548d: $11 $11 $11
	rst  $38                                         ; $5490: $ff
	ei                                               ; $5491: $fb
	ld   de, $ff6f                                   ; $5492: $11 $6f $ff
	rst  $38                                         ; $5495: $ff
	add  c                                           ; $5496: $81
	dec  d                                           ; $5497: $15
	rst  $38                                         ; $5498: $ff
	rst  $38                                         ; $5499: $ff
	or   c                                           ; $549a: $b1
	ld   de, $1111                                   ; $549b: $11 $11 $11
	ld   c, a                                        ; $549e: $4f
	rst  $38                                         ; $549f: $ff
	ld   sp, $ff8c                                   ; $54a0: $31 $8c $ff
	ld   a, [$b547]                                  ; $54a3: $fa $47 $b5
	rst  $28                                         ; $54a6: $ef
	rst  $38                                         ; $54a7: $ff

Call_0cb_54a8:
	pop  hl                                          ; $54a8: $e1
	ld   de, $1111                                   ; $54a9: $11 $11 $11
	ld   l, a                                        ; $54ac: $6f
	rst  $38                                         ; $54ad: $ff
	sub  c                                           ; $54ae: $91
	ld   l, a                                        ; $54af: $6f
	rst  $38                                         ; $54b0: $ff
	cp   $99                                         ; $54b1: $fe $99
	or   h                                           ; $54b3: $b4
	ld   a, a                                        ; $54b4: $7f
	rst  $38                                         ; $54b5: $ff
	and  c                                           ; $54b6: $a1
	ld   de, $1211                                   ; $54b7: $11 $11 $12
	rst  $38                                         ; $54ba: $ff
	rst  $38                                         ; $54bb: $ff
	ld   de, $ff1f                                   ; $54bc: $11 $1f $ff
	rst  $38                                         ; $54bf: $ff
	rst  $20                                         ; $54c0: $e7

jr_0cb_54c1:
	ld   de, $fe7f                                   ; $54c1: $11 $7f $fe
	ld   de, $1111                                   ; $54c4: $11 $11 $11
	cpl                                              ; $54c7: $2f
	rst  $38                                         ; $54c8: $ff
	pop  bc                                          ; $54c9: $c1
	ld   a, [de]                                     ; $54ca: $1a
	rst  $38                                         ; $54cb: $ff
	rst  $38                                         ; $54cc: $ff
	rst  $28                                         ; $54cd: $ef
	pop  hl                                          ; $54ce: $e1
	rra                                              ; $54cf: $1f
	rst  $38                                         ; $54d0: $ff
	pop  bc                                          ; $54d1: $c1
	ld   de, $1111                                   ; $54d2: $11 $11 $11
	xor  a                                           ; $54d5: $af
	rst  $38                                         ; $54d6: $ff
	ld   h, c                                        ; $54d7: $61
	xor  a                                           ; $54d8: $af
	rst  $38                                         ; $54d9: $ff
	rst  $38                                         ; $54da: $ff
	db   $fd                                         ; $54db: $fd
	pop  bc                                          ; $54dc: $c1
	ld   e, a                                        ; $54dd: $5f
	rst  $38                                         ; $54de: $ff
	call nc, $1111                                   ; $54df: $d4 $11 $11
	ld   de, $ff9f                                   ; $54e2: $11 $9f $ff
	rst  $30                                         ; $54e5: $f7
	ld   [hl], $ff                                   ; $54e6: $36 $ff
	rst  $38                                         ; $54e8: $ff
	db   $fc                                         ; $54e9: $fc
	and  d                                           ; $54ea: $a2
	ld   c, h                                        ; $54eb: $4c
	rst  $38                                         ; $54ec: $ff
	ei                                               ; $54ed: $fb
	ld   de, $1111                                   ; $54ee: $11 $11 $11
	ld   c, a                                        ; $54f1: $4f
	rst  $38                                         ; $54f2: $ff
	push af                                          ; $54f3: $f5
	jr   jr_0cb_54c1                                 ; $54f4: $18 $cb

	rst  $38                                         ; $54f6: $ff
	rst  $38                                         ; $54f7: $ff
	push af                                          ; $54f8: $f5
	rlca                                             ; $54f9: $07
	rst  $38                                         ; $54fa: $ff
	rst  $38                                         ; $54fb: $ff
	ld   de, $1111                                   ; $54fc: $11 $11 $11
	add  hl, de                                      ; $54ff: $19
	rst  $38                                         ; $5500: $ff
	db   $fc                                         ; $5501: $fc
	inc  d                                           ; $5502: $14
	ld   a, a                                        ; $5503: $7f
	rst  $38                                         ; $5504: $ff
	cp   $ff                                         ; $5505: $fe $ff
	ld   b, c                                        ; $5507: $41
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5508: $cf
	rst  $38                                         ; $5509: $ff
	ld   hl, $1111                                   ; $550a: $21 $11 $11
	ld   de, $ffff                                   ; $550d: $11 $ff $ff
	ld   b, h                                        ; $5510: $44
	ld   c, l                                        ; $5511: $4d
	rst  $38                                         ; $5512: $ff
	rst  $38                                         ; $5513: $ff
	db   $fd                                         ; $5514: $fd
	halt                                             ; $5515: $76
	xor  a                                           ; $5516: $af
	rst  $38                                         ; $5517: $ff
	ld   hl, sp+$11                                  ; $5518: $f8 $11
	ld   de, $1911                                   ; $551a: $11 $11 $19
	rst  $38                                         ; $551d: $ff
	rst  $28                                         ; $551e: $ef
	ld   l, c                                        ; $551f: $69
	rst  $38                                         ; $5520: $ff
	cp   $bd                                         ; $5521: $fe $bd
	cp   l                                           ; $5523: $bd
	sbc  e                                           ; $5524: $9b
	rst  $38                                         ; $5525: $ff
	rst  $38                                         ; $5526: $ff
	ld   b, c                                        ; $5527: $41
	ld   de, $1111                                   ; $5528: $11 $11 $11
	ld   l, $ff                                      ; $552b: $2e $ff
	push af                                          ; $552d: $f5
	ld   c, d                                        ; $552e: $4a
	xor  a                                           ; $552f: $af
	db   $fd                                         ; $5530: $fd
	rst  $38                                         ; $5531: $ff
	ld   a, [$ff5a]                                  ; $5532: $fa $5a $ff
	rst  $38                                         ; $5535: $ff
	ld   b, c                                        ; $5536: $41
	ld   de, $1111                                   ; $5537: $11 $11 $11
	xor  a                                           ; $553a: $af
	rst  $38                                         ; $553b: $ff
	rst  $38                                         ; $553c: $ff
	add  c                                           ; $553d: $81
	adc  [hl]                                        ; $553e: $8e
	rst  $38                                         ; $553f: $ff
	rst  $38                                         ; $5540: $ff
	add  sp, $7e                                     ; $5541: $e8 $7e
	rst  $38                                         ; $5543: $ff
	db   $fc                                         ; $5544: $fc
	ld   de, $1111                                   ; $5545: $11 $11 $11
	ld   de, $ff3f                                   ; $5548: $11 $3f $ff
	pop  af                                          ; $554b: $f1
	add  hl, de                                      ; $554c: $19
	rst  $38                                         ; $554d: $ff
	db   $fc                                         ; $554e: $fc
	rst  JumpTable                                         ; $554f: $df
	ld   hl, sp-$61                                  ; $5550: $f8 $9f
	rst  $38                                         ; $5552: $ff
	or   $11                                         ; $5553: $f6 $11
	ld   de, $1111                                   ; $5555: $11 $11 $11
	ld   a, a                                        ; $5558: $7f
	rst  $38                                         ; $5559: $ff
	ldh  a, [c]                                      ; $555a: $f2
	ld   c, a                                        ; $555b: $4f
	rst  $38                                         ; $555c: $ff
	ld   a, [$ebff]                                  ; $555d: $fa $ff $eb
	ld   e, d                                        ; $5560: $5a
	rst  $38                                         ; $5561: $ff
	db   $fd                                         ; $5562: $fd
	ld   de, $1111                                   ; $5563: $11 $11 $11
	ld   de, $ff49                                   ; $5566: $11 $49 $ff
	rst  $38                                         ; $5569: $ff
	ld   l, e                                        ; $556a: $6b
	call c, $9ffd                                    ; $556b: $dc $fd $9f
	db   $fc                                         ; $556e: $fc
	db   $fc                                         ; $556f: $fc
	rst  JumpTable                                         ; $5570: $df
	cp   $61                                         ; $5571: $fe $61
	ld   de, $1111                                   ; $5573: $11 $11 $11
	ld   de, $ff8f                                   ; $5576: $11 $8f $ff
	sub  h                                           ; $5579: $94
	rst  $28                                         ; $557a: $ef
	bit  7, a                                        ; $557b: $cb $7f
	rst  $38                                         ; $557d: $ff
	ld   hl, sp-$72                                  ; $557e: $f8 $8e
	rst  $38                                         ; $5580: $ff
	ei                                               ; $5581: $fb
	ld   b, c                                        ; $5582: $41
	ld   de, $1111                                   ; $5583: $11 $11 $11
	add  hl, de                                      ; $5586: $19
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5587: $cf
	pop  af                                          ; $5588: $f1
	rst  $28                                         ; $5589: $ef
	adc  a                                           ; $558a: $8f
	or   e                                           ; $558b: $b3
	rst  $38                                         ; $558c: $ff
	rst  $38                                         ; $558d: $ff
	sub  a                                           ; $558e: $97
	rst  $38                                         ; $558f: $ff
	rst  $38                                         ; $5590: $ff
	and  h                                           ; $5591: $a4
	ld   de, $1111                                   ; $5592: $11 $11 $11
	ld   de, $df15                                   ; $5595: $11 $15 $df
	ld   a, [$afd3]                                  ; $5598: $fa $d3 $af
	sbc  a                                           ; $559b: $9f
	rst  $38                                         ; $559c: $ff
	db   $fc                                         ; $559d: $fc
	sbc  d                                           ; $559e: $9a
	xor  a                                           ; $559f: $af
	rst  $38                                         ; $55a0: $ff
	db   $f4                                         ; $55a1: $f4
	ld   de, $1111                                   ; $55a2: $11 $11 $11
	ld   de, $5812                                   ; $55a5: $11 $12 $58
	rst  $38                                         ; $55a8: $ff
	cp   $ea                                         ; $55a9: $fe $ea
	db   $ec                                         ; $55ab: $ec
	sbc  [hl]                                        ; $55ac: $9e
	call $afff                                       ; $55ad: $cd $ff $af
	rst  $38                                         ; $55b0: $ff
	or   $11                                         ; $55b1: $f6 $11
	ld   de, $1111                                   ; $55b3: $11 $11 $11
	ld   de, $fe1c                                   ; $55b6: $11 $1c $fe
	ld   a, [$ca9f]                                  ; $55b9: $fa $9f $ca
	sbc  c                                           ; $55bc: $99
	rst  $38                                         ; $55bd: $ff
	rst  $38                                         ; $55be: $ff
	cp   h                                           ; $55bf: $bc
	rst  $38                                         ; $55c0: $ff
	rst  $38                                         ; $55c1: $ff
	ld   d, h                                        ; $55c2: $54
	ld   de, $1111                                   ; $55c3: $11 $11 $11
	ld   de, $8a11                                   ; $55c6: $11 $11 $8a
	adc  a                                           ; $55c9: $8f
	db   $fd                                         ; $55ca: $fd
	ld   hl, sp+$48                                  ; $55cb: $f8 $48
	rst  $38                                         ; $55cd: $ff
	rst  $38                                         ; $55ce: $ff
	db   $fd                                         ; $55cf: $fd
	rst  $38                                         ; $55d0: $ff
	cp   a                                           ; $55d1: $bf
	ld   a, [$11b2]                                  ; $55d2: $fa $b2 $11
	ld   de, $1111                                   ; $55d5: $11 $11 $11
	ld   [bc], a                                     ; $55d8: $02
	db   $ec                                         ; $55d9: $ec
	ld   l, [hl]                                     ; $55da: $6e
	sbc  d                                           ; $55db: $9a
	db   $fc                                         ; $55dc: $fc
	ld   e, e                                        ; $55dd: $5b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55de: $cf
	cp   $bd                                         ; $55df: $fe $bd
	rst  $38                                         ; $55e1: $ff
	rst  $38                                         ; $55e2: $ff
	adc  d                                           ; $55e3: $8a
	ld   [hl], c                                     ; $55e4: $71
	ld   de, $1111                                   ; $55e5: $11 $11 $11
	ld   de, $9819                                   ; $55e8: $11 $19 $98
	jp   z, $caff                                    ; $55eb: $ca $ff $ca

	jr   c, @+$01                                    ; $55ee: $38 $ff

	rst  $38                                         ; $55f0: $ff
	call $fffb                                       ; $55f1: $cd $fb $ff
	cp   [hl]                                        ; $55f4: $be
	and  c                                           ; $55f5: $a1
	ld   hl, $1111                                   ; $55f6: $21 $11 $11
	ld   de, $7311                                   ; $55f9: $11 $11 $73
	rra                                              ; $55fc: $1f
	db   $dd                                         ; $55fd: $dd
	rst  $30                                         ; $55fe: $f7
	sbc  l                                           ; $55ff: $9d
	sbc  a                                           ; $5600: $9f
	xor  $ee                                         ; $5601: $ee $ee
	cp   $ff                                         ; $5603: $fe $ff
	cp   [hl]                                        ; $5605: $be
	or   l                                           ; $5606: $b5
	sub  h                                           ; $5607: $94
	inc  d                                           ; $5608: $14
	ld   de, $1111                                   ; $5609: $11 $11 $11
	inc  de                                          ; $560c: $13
	sbc  e                                           ; $560d: $9b
	sub  h                                           ; $560e: $94
	ld   e, b                                        ; $560f: $58
	rst  $28                                         ; $5610: $ef
	cp   b                                           ; $5611: $b8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5612: $cf
	db   $ed                                         ; $5613: $ed
	ei                                               ; $5614: $fb
	rst  $38                                         ; $5615: $ff
	cp   e                                           ; $5616: $bb
	ei                                               ; $5617: $fb
	ld   sp, hl                                      ; $5618: $f9
	dec  b                                           ; $5619: $05
	ld   e, b                                        ; $561a: $58
	and  d                                           ; $561b: $a2
	ld   de, $1111                                   ; $561c: $11 $11 $11
	inc  d                                           ; $561f: $14
	ld   c, b                                        ; $5620: $48
	adc  h                                           ; $5621: $8c
	and  [hl]                                        ; $5622: $a6
	cp   b                                           ; $5623: $b8
	rst  $38                                         ; $5624: $ff
	xor  a                                           ; $5625: $af
	ret  c                                           ; $5626: $d8

	db   $fc                                         ; $5627: $fc
	xor  a                                           ; $5628: $af
	call $c8fd                                       ; $5629: $cd $fd $c8
	inc  sp                                          ; $562c: $33
	ld   d, [hl]                                     ; $562d: $56
	ld   d, c                                        ; $562e: $51
	ld   hl, $1112                                   ; $562f: $21 $12 $11
	ld   de, $bb7b                                   ; $5632: $11 $7b $bb
	ld   c, b                                        ; $5635: $48
	cp   [hl]                                        ; $5636: $be
	push af                                          ; $5637: $f5
	sbc  a                                           ; $5638: $9f
	rst  $28                                         ; $5639: $ef
	ld   hl, sp-$25                                  ; $563a: $f8 $db
	cp   a                                           ; $563c: $bf
	sbc  $f8                                         ; $563d: $de $f8
	ld   h, l                                        ; $563f: $65
	dec  h                                           ; $5640: $25
	ld   d, e                                        ; $5641: $53
	inc  [hl]                                        ; $5642: $34
	ld   b, h                                        ; $5643: $44
	ld   de, $1811                                   ; $5644: $11 $11 $18
	sbc  e                                           ; $5647: $9b
	pop  af                                          ; $5648: $f1
	ld   d, $9f                                      ; $5649: $16 $9f
	cp   $b4                                         ; $564b: $fe $b4
	rst  $38                                         ; $564d: $ff
	sbc  l                                           ; $564e: $9d
	ld   a, [hl]                                     ; $564f: $7e
	rst  $38                                         ; $5650: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5651: $cf
	ld   c, b                                        ; $5652: $48
	and  e                                           ; $5653: $a3
	sbc  d                                           ; $5654: $9a
	ld   l, c                                        ; $5655: $69
	ld   b, c                                        ; $5656: $41
	inc  sp                                          ; $5657: $33
	ld   sp, $1511                                   ; $5658: $31 $11 $15
	ld   [hl], l                                     ; $565b: $75
	ld   h, $a8                                      ; $565c: $26 $a8
	cp   d                                           ; $565e: $ba
	sbc  [hl]                                        ; $565f: $9e
	xor  c                                           ; $5660: $a9
	ei                                               ; $5661: $fb
	adc  $6c                                         ; $5662: $ce $6c
	cp   $fd                                         ; $5664: $fe $fd
	ld   e, h                                        ; $5666: $5c
	and  [hl]                                        ; $5667: $a6
	and  l                                           ; $5668: $a5
	ld   l, h                                        ; $5669: $6c
	ld   [hl], a                                     ; $566a: $77
	ld   h, e                                        ; $566b: $63
	ld   d, h                                        ; $566c: $54
	inc  hl                                          ; $566d: $23
	ld   de, $3511                                   ; $566e: $11 $11 $35
	ld   e, d                                        ; $5671: $5a
	ld   [hl], e                                     ; $5672: $73
	ld   a, l                                        ; $5673: $7d
	adc  $93                                         ; $5674: $ce $93
	sbc  h                                           ; $5676: $9c

Jump_0cb_5677:
	adc  h                                           ; $5677: $8c
	jp   hl                                          ; $5678: $e9


	rst  $38                                         ; $5679: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $567a: $cf
	ld   a, [$5dca]                                  ; $567b: $fa $ca $5d
	sub  a                                           ; $567e: $97
	sub  [hl]                                        ; $567f: $96
	ld   l, c                                        ; $5680: $69
	ld   h, h                                        ; $5681: $64
	ld   h, e                                        ; $5682: $63
	dec  [hl]                                        ; $5683: $35
	ld   hl, $1411                                   ; $5684: $21 $11 $14
	inc  de                                          ; $5687: $13
	xor  d                                           ; $5688: $aa
	adc  c                                           ; $5689: $89
	adc  c                                           ; $568a: $89
	bit  7, b                                        ; $568b: $cb $78
	call z, $9fed                                    ; $568d: $cc $ed $9f
	db   $fd                                         ; $5690: $fd
	cp   c                                           ; $5691: $b9
	adc  [hl]                                        ; $5692: $8e
	ld   [$59a5], a                                  ; $5693: $ea $a5 $59
	halt                                             ; $5696: $76
	add  [hl]                                        ; $5697: $86
	ld   a, b                                        ; $5698: $78
	ld   h, l                                        ; $5699: $65
	ld   b, c                                        ; $569a: $41
	inc  de                                          ; $569b: $13
	ld   d, [hl]                                     ; $569c: $56
	ld   d, l                                        ; $569d: $55
	ld   b, e                                        ; $569e: $43
	ld   l, b                                        ; $569f: $68
	adc  e                                           ; $56a0: $8b
	sub  a                                           ; $56a1: $97
	ld   a, b                                        ; $56a2: $78
	cp   d                                           ; $56a3: $ba
	xor  d                                           ; $56a4: $aa
	sbc  h                                           ; $56a5: $9c
	call c, $aba9                                    ; $56a6: $dc $a9 $ab
	cp   d                                           ; $56a9: $ba
	cp   d                                           ; $56aa: $ba
	sub  a                                           ; $56ab: $97
	ld   h, a                                        ; $56ac: $67
	adc  c                                           ; $56ad: $89
	add  a                                           ; $56ae: $87
	ld   d, [hl]                                     ; $56af: $56
	ld   h, [hl]                                     ; $56b0: $66
	ld   h, h                                        ; $56b1: $64
	ld   h, [hl]                                     ; $56b2: $66
	ld   d, [hl]                                     ; $56b3: $56
	ld   d, h                                        ; $56b4: $54
	ld   a, b                                        ; $56b5: $78
	ld   a, b                                        ; $56b6: $78
	add  a                                           ; $56b7: $87
	sub  a                                           ; $56b8: $97
	adc  d                                           ; $56b9: $8a
	sbc  d                                           ; $56ba: $9a
	cp   d                                           ; $56bb: $ba
	xor  e                                           ; $56bc: $ab
	sbc  b                                           ; $56bd: $98
	sbc  b                                           ; $56be: $98
	xor  d                                           ; $56bf: $aa
	sbc  b                                           ; $56c0: $98
	ld   [hl], a                                     ; $56c1: $77
	ld   a, b                                        ; $56c2: $78
	sbc  b                                           ; $56c3: $98
	adc  b                                           ; $56c4: $88
	ld   [hl], a                                     ; $56c5: $77
	ld   [hl], a                                     ; $56c6: $77
	add  a                                           ; $56c7: $87
	add  a                                           ; $56c8: $87
	ld   a, b                                        ; $56c9: $78
	adc  b                                           ; $56ca: $88
	add  a                                           ; $56cb: $87
	sbc  c                                           ; $56cc: $99
	adc  b                                           ; $56cd: $88
	ld   [hl], a                                     ; $56ce: $77
	adc  b                                           ; $56cf: $88
	add  a                                           ; $56d0: $87
	ld   a, b                                        ; $56d1: $78
	sbc  b                                           ; $56d2: $98
	add  [hl]                                        ; $56d3: $86
	ld   a, b                                        ; $56d4: $78
	adc  b                                           ; $56d5: $88
	add  a                                           ; $56d6: $87
	adc  c                                           ; $56d7: $89
	sbc  b                                           ; $56d8: $98
	adc  b                                           ; $56d9: $88
	sbc  b                                           ; $56da: $98
	adc  b                                           ; $56db: $88
	ld   a, b                                        ; $56dc: $78
	adc  b                                           ; $56dd: $88
	sbc  c                                           ; $56de: $99
	sbc  b                                           ; $56df: $98
	sbc  b                                           ; $56e0: $98
	ld   a, b                                        ; $56e1: $78
	sbc  c                                           ; $56e2: $99
	adc  b                                           ; $56e3: $88
	ld   a, b                                        ; $56e4: $78
	adc  b                                           ; $56e5: $88
	adc  b                                           ; $56e6: $88
	adc  c                                           ; $56e7: $89
	adc  c                                           ; $56e8: $89
	ld   [hl], a                                     ; $56e9: $77
	adc  b                                           ; $56ea: $88
	add  a                                           ; $56eb: $87
	ld   a, b                                        ; $56ec: $78
	adc  b                                           ; $56ed: $88
	adc  b                                           ; $56ee: $88
	adc  b                                           ; $56ef: $88
	adc  b                                           ; $56f0: $88
	adc  b                                           ; $56f1: $88
	sbc  b                                           ; $56f2: $98
	ld   [hl], a                                     ; $56f3: $77
	adc  c                                           ; $56f4: $89
	sbc  c                                           ; $56f5: $99
	adc  c                                           ; $56f6: $89
	adc  c                                           ; $56f7: $89
	adc  c                                           ; $56f8: $89
	adc  c                                           ; $56f9: $89
	adc  c                                           ; $56fa: $89
	adc  b                                           ; $56fb: $88
	sbc  c                                           ; $56fc: $99
	sbc  b                                           ; $56fd: $98
	adc  b                                           ; $56fe: $88
	sbc  c                                           ; $56ff: $99
	adc  b                                           ; $5700: $88
	adc  b                                           ; $5701: $88
	add  a                                           ; $5702: $87
	ld   [hl], a                                     ; $5703: $77
	ld   [hl], a                                     ; $5704: $77
	ld   [hl], a                                     ; $5705: $77
	ld   a, b                                        ; $5706: $78
	adc  b                                           ; $5707: $88
	adc  b                                           ; $5708: $88
	adc  b                                           ; $5709: $88
	adc  b                                           ; $570a: $88
	adc  b                                           ; $570b: $88
	adc  b                                           ; $570c: $88
	sbc  b                                           ; $570d: $98
	adc  b                                           ; $570e: $88
	adc  c                                           ; $570f: $89
	sbc  b                                           ; $5710: $98
	sbc  c                                           ; $5711: $99
	adc  b                                           ; $5712: $88
	adc  b                                           ; $5713: $88
	adc  b                                           ; $5714: $88
	adc  b                                           ; $5715: $88
	add  a                                           ; $5716: $87
	ld   [hl], a                                     ; $5717: $77
	ld   [hl], a                                     ; $5718: $77
	ld   [hl], a                                     ; $5719: $77
	ld   [hl], a                                     ; $571a: $77
	adc  b                                           ; $571b: $88
	ld   a, b                                        ; $571c: $78
	adc  b                                           ; $571d: $88
	adc  b                                           ; $571e: $88
	adc  b                                           ; $571f: $88
	adc  c                                           ; $5720: $89
	sbc  b                                           ; $5721: $98
	sbc  c                                           ; $5722: $99
	sbc  c                                           ; $5723: $99
	sbc  c                                           ; $5724: $99
	sbc  c                                           ; $5725: $99
	sbc  b                                           ; $5726: $98
	adc  b                                           ; $5727: $88
	adc  b                                           ; $5728: $88
	adc  b                                           ; $5729: $88
	adc  b                                           ; $572a: $88
	adc  b                                           ; $572b: $88
	adc  b                                           ; $572c: $88
	adc  b                                           ; $572d: $88
	adc  b                                           ; $572e: $88
	add  a                                           ; $572f: $87
	adc  b                                           ; $5730: $88
	adc  b                                           ; $5731: $88
	adc  b                                           ; $5732: $88
	adc  b                                           ; $5733: $88
	adc  b                                           ; $5734: $88
	adc  b                                           ; $5735: $88
	adc  b                                           ; $5736: $88
	sbc  b                                           ; $5737: $98
	adc  b                                           ; $5738: $88
	adc  b                                           ; $5739: $88
	adc  b                                           ; $573a: $88
	adc  c                                           ; $573b: $89
	sbc  c                                           ; $573c: $99
	sbc  b                                           ; $573d: $98
	adc  b                                           ; $573e: $88
	adc  b                                           ; $573f: $88
	adc  b                                           ; $5740: $88
	adc  b                                           ; $5741: $88
	adc  b                                           ; $5742: $88
	adc  b                                           ; $5743: $88
	adc  b                                           ; $5744: $88
	adc  b                                           ; $5745: $88
	adc  c                                           ; $5746: $89
	adc  b                                           ; $5747: $88
	sbc  b                                           ; $5748: $98
	sbc  c                                           ; $5749: $99
	adc  c                                           ; $574a: $89
	sbc  c                                           ; $574b: $99
	sbc  c                                           ; $574c: $99
	sbc  c                                           ; $574d: $99
	sbc  c                                           ; $574e: $99
	sbc  c                                           ; $574f: $99
	sbc  b                                           ; $5750: $98
	adc  b                                           ; $5751: $88
	adc  b                                           ; $5752: $88
	adc  b                                           ; $5753: $88
	sbc  c                                           ; $5754: $99
	adc  b                                           ; $5755: $88
	adc  b                                           ; $5756: $88
	sbc  b                                           ; $5757: $98
	adc  b                                           ; $5758: $88
	adc  b                                           ; $5759: $88
	sbc  b                                           ; $575a: $98
	sbc  c                                           ; $575b: $99
	sbc  c                                           ; $575c: $99
	sbc  c                                           ; $575d: $99
	sbc  b                                           ; $575e: $98
	sbc  c                                           ; $575f: $99
	adc  c                                           ; $5760: $89
	sbc  c                                           ; $5761: $99
	sbc  c                                           ; $5762: $99
	sbc  c                                           ; $5763: $99
	sbc  c                                           ; $5764: $99
	sbc  c                                           ; $5765: $99
	sbc  c                                           ; $5766: $99
	sbc  c                                           ; $5767: $99
	sbc  c                                           ; $5768: $99
	sbc  c                                           ; $5769: $99
	sbc  b                                           ; $576a: $98
	sbc  b                                           ; $576b: $98
	adc  b                                           ; $576c: $88
	sbc  c                                           ; $576d: $99
	sbc  b                                           ; $576e: $98
	adc  b                                           ; $576f: $88
	adc  b                                           ; $5770: $88
	adc  b                                           ; $5771: $88
	adc  b                                           ; $5772: $88
	adc  b                                           ; $5773: $88
	adc  b                                           ; $5774: $88
	adc  b                                           ; $5775: $88
	adc  c                                           ; $5776: $89
	sbc  c                                           ; $5777: $99
	adc  b                                           ; $5778: $88
	adc  b                                           ; $5779: $88
	adc  b                                           ; $577a: $88
	adc  b                                           ; $577b: $88
	adc  c                                           ; $577c: $89
	add  a                                           ; $577d: $87
	adc  b                                           ; $577e: $88
	ld   [hl], a                                     ; $577f: $77
	adc  c                                           ; $5780: $89
	sbc  b                                           ; $5781: $98
	adc  b                                           ; $5782: $88
	ld   a, b                                        ; $5783: $78
	adc  b                                           ; $5784: $88
	ld   [hl], a                                     ; $5785: $77
	add  a                                           ; $5786: $87
	ld   [hl], a                                     ; $5787: $77
	adc  b                                           ; $5788: $88
	adc  b                                           ; $5789: $88
	ld   a, b                                        ; $578a: $78
	ld   [hl], a                                     ; $578b: $77
	adc  b                                           ; $578c: $88
	ld   a, b                                        ; $578d: $78
	add  a                                           ; $578e: $87
	ld   a, b                                        ; $578f: $78
	adc  b                                           ; $5790: $88
	add  a                                           ; $5791: $87
	ld   a, b                                        ; $5792: $78
	add  a                                           ; $5793: $87
	ld   [hl], a                                     ; $5794: $77
	ld   a, b                                        ; $5795: $78
	sub  a                                           ; $5796: $97
	ld   [hl], a                                     ; $5797: $77
	ld   a, b                                        ; $5798: $78
	adc  b                                           ; $5799: $88
	adc  b                                           ; $579a: $88
	add  a                                           ; $579b: $87
	ld   [hl], a                                     ; $579c: $77
	ld   a, b                                        ; $579d: $78
	ld   [hl], a                                     ; $579e: $77
	ld   a, b                                        ; $579f: $78
	adc  b                                           ; $57a0: $88
	add  [hl]                                        ; $57a1: $86
	ld   l, c                                        ; $57a2: $69
	sbc  b                                           ; $57a3: $98
	halt                                             ; $57a4: $76
	ld   a, b                                        ; $57a5: $78
	add  a                                           ; $57a6: $87
	ld   [hl], a                                     ; $57a7: $77
	ld   [hl], a                                     ; $57a8: $77
	add  a                                           ; $57a9: $87
	ld   [hl], a                                     ; $57aa: $77
	adc  b                                           ; $57ab: $88
	ld   [hl], a                                     ; $57ac: $77
	ld   [hl], a                                     ; $57ad: $77
	ld   a, b                                        ; $57ae: $78
	adc  b                                           ; $57af: $88
	sbc  c                                           ; $57b0: $99
	sbc  b                                           ; $57b1: $98
	ld   [hl], a                                     ; $57b2: $77
	ld   a, c                                        ; $57b3: $79
	halt                                             ; $57b4: $76
	ld   l, c                                        ; $57b5: $69
	adc  b                                           ; $57b6: $88
	ld   [hl], a                                     ; $57b7: $77
	ld   a, b                                        ; $57b8: $78
	sub  a                                           ; $57b9: $97
	ld   h, a                                        ; $57ba: $67
	adc  b                                           ; $57bb: $88
	add  a                                           ; $57bc: $87
	ld   a, b                                        ; $57bd: $78
	add  [hl]                                        ; $57be: $86
	ld   a, b                                        ; $57bf: $78
	adc  b                                           ; $57c0: $88
	sub  a                                           ; $57c1: $97
	ld   a, c                                        ; $57c2: $79
	add  a                                           ; $57c3: $87
	halt                                             ; $57c4: $76
	ld   a, c                                        ; $57c5: $79
	ld   a, c                                        ; $57c6: $79
	add  a                                           ; $57c7: $87
	ld   a, c                                        ; $57c8: $79
	sub  a                                           ; $57c9: $97
	ld   a, b                                        ; $57ca: $78
	ld   [hl], a                                     ; $57cb: $77
	sbc  c                                           ; $57cc: $99
	halt                                             ; $57cd: $76
	ld   a, b                                        ; $57ce: $78
	add  a                                           ; $57cf: $87
	ld   l, b                                        ; $57d0: $68
	add  a                                           ; $57d1: $87
	adc  c                                           ; $57d2: $89
	ld   h, [hl]                                     ; $57d3: $66
	adc  b                                           ; $57d4: $88
	add  a                                           ; $57d5: $87
	sbc  b                                           ; $57d6: $98
	ld   a, d                                        ; $57d7: $7a
	add  [hl]                                        ; $57d8: $86
	add  [hl]                                        ; $57d9: $86
	ld   a, c                                        ; $57da: $79
	add  [hl]                                        ; $57db: $86
	ld   a, c                                        ; $57dc: $79
	ld   [hl], a                                     ; $57dd: $77
	add  a                                           ; $57de: $87
	ld   a, c                                        ; $57df: $79
	ld   a, b                                        ; $57e0: $78
	and  a                                           ; $57e1: $a7
	ld   [hl], a                                     ; $57e2: $77
	ld   h, a                                        ; $57e3: $67
	add  a                                           ; $57e4: $87
	adc  b                                           ; $57e5: $88
	adc  c                                           ; $57e6: $89
	adc  b                                           ; $57e7: $88
	ld   l, c                                        ; $57e8: $69
	and  a                                           ; $57e9: $a7
	ld   [hl], a                                     ; $57ea: $77
	ld   a, c                                        ; $57eb: $79
	sbc  b                                           ; $57ec: $98
	ld   a, b                                        ; $57ed: $78
	sub  a                                           ; $57ee: $97
	xor  d                                           ; $57ef: $aa
	ld   l, b                                        ; $57f0: $68
	add  a                                           ; $57f1: $87
	add  a                                           ; $57f2: $87
	ld   a, b                                        ; $57f3: $78
	adc  c                                           ; $57f4: $89
	ld   [hl], a                                     ; $57f5: $77
	ld   [hl], a                                     ; $57f6: $77
	sbc  b                                           ; $57f7: $98
	ld   a, c                                        ; $57f8: $79
	adc  b                                           ; $57f9: $88
	add  [hl]                                        ; $57fa: $86
	ld   a, c                                        ; $57fb: $79
	and  a                                           ; $57fc: $a7
	ld   a, c                                        ; $57fd: $79
	adc  d                                           ; $57fe: $8a
	and  [hl]                                        ; $57ff: $a6
	ld   [hl], a                                     ; $5800: $77
	ld   a, e                                        ; $5801: $7b
	adc  b                                           ; $5802: $88
	sub  [hl]                                        ; $5803: $96
	sbc  b                                           ; $5804: $98
	ld   l, c                                        ; $5805: $69
	add  [hl]                                        ; $5806: $86
	ld   a, c                                        ; $5807: $79
	sbc  c                                           ; $5808: $99
	add  l                                           ; $5809: $85
	ld   e, d                                        ; $580a: $5a
	xor  c                                           ; $580b: $a9
	sub  [hl]                                        ; $580c: $96
	adc  b                                           ; $580d: $88
	sub  a                                           ; $580e: $97
	ld   e, b                                        ; $580f: $58
	adc  b                                           ; $5810: $88
	and  a                                           ; $5811: $a7
	adc  c                                           ; $5812: $89
	ld   h, [hl]                                     ; $5813: $66
	ld   a, c                                        ; $5814: $79
	sbc  b                                           ; $5815: $98
	sbc  b                                           ; $5816: $98
	ld   a, c                                        ; $5817: $79
	sbc  c                                           ; $5818: $99
	ld   [hl], a                                     ; $5819: $77
	sbc  c                                           ; $581a: $99
	adc  b                                           ; $581b: $88
	ld   [hl], a                                     ; $581c: $77
	sbc  b                                           ; $581d: $98
	ld   [hl], a                                     ; $581e: $77
	adc  b                                           ; $581f: $88
	adc  c                                           ; $5820: $89
	add  a                                           ; $5821: $87
	sbc  c                                           ; $5822: $99
	adc  c                                           ; $5823: $89
	adc  b                                           ; $5824: $88
	sbc  c                                           ; $5825: $99
	and  a                                           ; $5826: $a7
	ld   l, c                                        ; $5827: $69
	xor  b                                           ; $5828: $a8
	ld   a, b                                        ; $5829: $78
	add  [hl]                                        ; $582a: $86
	adc  b                                           ; $582b: $88
	adc  b                                           ; $582c: $88
	ld   a, b                                        ; $582d: $78
	xor  c                                           ; $582e: $a9
	sub  a                                           ; $582f: $97
	ld   [hl], a                                     ; $5830: $77
	adc  c                                           ; $5831: $89
	sub  a                                           ; $5832: $97
	adc  c                                           ; $5833: $89
	ld   a, b                                        ; $5834: $78
	and  a                                           ; $5835: $a7
	ld   [hl], a                                     ; $5836: $77
	adc  b                                           ; $5837: $88
	add  a                                           ; $5838: $87
	ld   [hl], a                                     ; $5839: $77
	xor  c                                           ; $583a: $a9
	ld   a, c                                        ; $583b: $79
	add  [hl]                                        ; $583c: $86
	sbc  d                                           ; $583d: $9a
	sbc  b                                           ; $583e: $98
	ld   a, c                                        ; $583f: $79
	sub  a                                           ; $5840: $97
	ld   [hl], a                                     ; $5841: $77
	adc  b                                           ; $5842: $88
	adc  c                                           ; $5843: $89
	ld   [hl], a                                     ; $5844: $77
	sub  a                                           ; $5845: $97
	sbc  d                                           ; $5846: $9a
	adc  c                                           ; $5847: $89
	xor  c                                           ; $5848: $a9
	sbc  c                                           ; $5849: $99
	add  a                                           ; $584a: $87
	ld   a, b                                        ; $584b: $78
	ld   a, b                                        ; $584c: $78
	adc  b                                           ; $584d: $88
	ld   [hl], a                                     ; $584e: $77
	sbc  b                                           ; $584f: $98
	ld   a, c                                        ; $5850: $79
	sub  a                                           ; $5851: $97
	ld   a, c                                        ; $5852: $79
	or   a                                           ; $5853: $b7
	ld   h, a                                        ; $5854: $67
	ld   h, a                                        ; $5855: $67
	sbc  b                                           ; $5856: $98
	adc  b                                           ; $5857: $88
	ld   l, c                                        ; $5858: $69
	and  a                                           ; $5859: $a7
	ld   l, c                                        ; $585a: $69
	sbc  d                                           ; $585b: $9a
	and  a                                           ; $585c: $a7
	ld   a, c                                        ; $585d: $79
	add  a                                           ; $585e: $87
	sbc  c                                           ; $585f: $99
	ld   a, c                                        ; $5860: $79
	ret                                              ; $5861: $c9


	ld   h, l                                        ; $5862: $65
	adc  c                                           ; $5863: $89
	ld   h, a                                        ; $5864: $67
	sbc  b                                           ; $5865: $98
	adc  d                                           ; $5866: $8a
	and  [hl]                                        ; $5867: $a6
	ld   l, c                                        ; $5868: $69
	adc  c                                           ; $5869: $89
	sbc  c                                           ; $586a: $99
	adc  b                                           ; $586b: $88
	ld   [hl], a                                     ; $586c: $77
	adc  c                                           ; $586d: $89
	ld   a, b                                        ; $586e: $78
	add  l                                           ; $586f: $85
	adc  d                                           ; $5870: $8a
	ld   a, b                                        ; $5871: $78
	sbc  b                                           ; $5872: $98
	adc  c                                           ; $5873: $89
	sbc  c                                           ; $5874: $99
	add  a                                           ; $5875: $87
	ld   l, d                                        ; $5876: $6a
	or   a                                           ; $5877: $b7
	halt                                             ; $5878: $76
	ld   l, d                                        ; $5879: $6a
	sbc  c                                           ; $587a: $99
	sub  a                                           ; $587b: $97
	adc  e                                           ; $587c: $8b
	sub  a                                           ; $587d: $97
	adc  c                                           ; $587e: $89
	add  a                                           ; $587f: $87
	sbc  c                                           ; $5880: $99
	ld   [hl], a                                     ; $5881: $77
	halt                                             ; $5882: $76
	ld   [hl], a                                     ; $5883: $77
	ld   [hl], a                                     ; $5884: $77
	ld   a, d                                        ; $5885: $7a
	or   a                                           ; $5886: $b7
	adc  c                                           ; $5887: $89
	adc  b                                           ; $5888: $88
	adc  c                                           ; $5889: $89
	halt                                             ; $588a: $76
	adc  b                                           ; $588b: $88
	ld   [hl], a                                     ; $588c: $77
	ld   a, b                                        ; $588d: $78
	ld   l, b                                        ; $588e: $68
	sub  a                                           ; $588f: $97
	sbc  c                                           ; $5890: $99
	adc  d                                           ; $5891: $8a
	xor  c                                           ; $5892: $a9
	add  [hl]                                        ; $5893: $86
	ld   l, c                                        ; $5894: $69
	add  a                                           ; $5895: $87
	ld   [hl], a                                     ; $5896: $77
	adc  c                                           ; $5897: $89
	sbc  b                                           ; $5898: $98
	ld   h, a                                        ; $5899: $67
	xor  e                                           ; $589a: $ab
	sbc  b                                           ; $589b: $98
	adc  c                                           ; $589c: $89
	and  a                                           ; $589d: $a7
	ld   l, b                                        ; $589e: $68
	adc  b                                           ; $589f: $88
	ld   a, b                                        ; $58a0: $78
	adc  b                                           ; $58a1: $88
	adc  b                                           ; $58a2: $88
	ld   [hl], a                                     ; $58a3: $77
	xor  c                                           ; $58a4: $a9
	halt                                             ; $58a5: $76
	adc  c                                           ; $58a6: $89
	sbc  b                                           ; $58a7: $98
	ld   e, b                                        ; $58a8: $58
	cp   c                                           ; $58a9: $b9
	sbc  b                                           ; $58aa: $98
	ld   h, a                                        ; $58ab: $67
	xor  c                                           ; $58ac: $a9
	ld   l, b                                        ; $58ad: $68
	ld   [hl], a                                     ; $58ae: $77
	jp   z, $9767                                    ; $58af: $ca $67 $97

	xor  c                                           ; $58b2: $a9
	ld   h, [hl]                                     ; $58b3: $66
	xor  e                                           ; $58b4: $ab
	halt                                             ; $58b5: $76
	halt                                             ; $58b6: $76
	adc  b                                           ; $58b7: $88
	ld   [hl], a                                     ; $58b8: $77
	sbc  c                                           ; $58b9: $99
	sbc  c                                           ; $58ba: $99
	adc  b                                           ; $58bb: $88
	add  a                                           ; $58bc: $87
	ld   [hl], a                                     ; $58bd: $77
	ld   a, b                                        ; $58be: $78
	adc  b                                           ; $58bf: $88
	adc  c                                           ; $58c0: $89
	sub  a                                           ; $58c1: $97
	ld   h, [hl]                                     ; $58c2: $66
	xor  h                                           ; $58c3: $ac
	add  a                                           ; $58c4: $87
	sub  a                                           ; $58c5: $97
	sbc  h                                           ; $58c6: $9c
	ld   [hl], l                                     ; $58c7: $75
	ld   a, b                                        ; $58c8: $78
	xor  c                                           ; $58c9: $a9
	ld   [hl], l                                     ; $58ca: $75
	ld   a, d                                        ; $58cb: $7a
	sub  a                                           ; $58cc: $97
	add  a                                           ; $58cd: $87
	ld   a, e                                        ; $58ce: $7b
	and  a                                           ; $58cf: $a7
	sbc  c                                           ; $58d0: $99
	ld   a, b                                        ; $58d1: $78
	adc  c                                           ; $58d2: $89
	add  a                                           ; $58d3: $87
	ld   a, b                                        ; $58d4: $78
	sub  a                                           ; $58d5: $97
	ld   [hl], a                                     ; $58d6: $77
	sbc  d                                           ; $58d7: $9a
	xor  c                                           ; $58d8: $a9
	xor  b                                           ; $58d9: $a8
	ld   a, b                                        ; $58da: $78
	ld   [hl], a                                     ; $58db: $77
	adc  c                                           ; $58dc: $89
	and  a                                           ; $58dd: $a7
	ld   h, a                                        ; $58de: $67
	adc  b                                           ; $58df: $88
	adc  b                                           ; $58e0: $88
	adc  c                                           ; $58e1: $89
	sbc  d                                           ; $58e2: $9a
	or   a                                           ; $58e3: $b7
	ld   l, b                                        ; $58e4: $68
	ld   a, b                                        ; $58e5: $78
	adc  b                                           ; $58e6: $88
	add  a                                           ; $58e7: $87
	ld   a, c                                        ; $58e8: $79
	add  a                                           ; $58e9: $87
	ld   [hl], a                                     ; $58ea: $77
	adc  b                                           ; $58eb: $88
	adc  b                                           ; $58ec: $88
	adc  d                                           ; $58ed: $8a
	sbc  b                                           ; $58ee: $98
	ld   [hl], l                                     ; $58ef: $75
	sbc  d                                           ; $58f0: $9a
	ld   a, d                                        ; $58f1: $7a
	add  [hl]                                        ; $58f2: $86
	sbc  c                                           ; $58f3: $99
	ld   [hl], a                                     ; $58f4: $77
	ld   a, c                                        ; $58f5: $79
	sbc  c                                           ; $58f6: $99
	sbc  d                                           ; $58f7: $9a
	ld   h, a                                        ; $58f8: $67
	xor  b                                           ; $58f9: $a8
	ld   a, b                                        ; $58fa: $78
	ld   a, c                                        ; $58fb: $79
	adc  b                                           ; $58fc: $88
	add  a                                           ; $58fd: $87
	adc  c                                           ; $58fe: $89
	ld   h, a                                        ; $58ff: $67
	sbc  d                                           ; $5900: $9a
	xor  c                                           ; $5901: $a9
	ld   a, b                                        ; $5902: $78
	adc  b                                           ; $5903: $88
	sub  a                                           ; $5904: $97
	ld   a, b                                        ; $5905: $78
	ld   a, b                                        ; $5906: $78
	sub  a                                           ; $5907: $97
	ld   h, a                                        ; $5908: $67
	ld   a, c                                        ; $5909: $79
	xor  c                                           ; $590a: $a9
	adc  b                                           ; $590b: $88
	sbc  d                                           ; $590c: $9a
	adc  b                                           ; $590d: $88
	sub  [hl]                                        ; $590e: $96
	ld   a, c                                        ; $590f: $79
	ld   a, c                                        ; $5910: $79
	sub  a                                           ; $5911: $97
	ld   a, c                                        ; $5912: $79
	sbc  b                                           ; $5913: $98
	add  [hl]                                        ; $5914: $86
	ld   a, d                                        ; $5915: $7a
	cp   e                                           ; $5916: $bb
	add  [hl]                                        ; $5917: $86
	ld   [hl], a                                     ; $5918: $77
	add  a                                           ; $5919: $87
	ld   l, b                                        ; $591a: $68
	xor  c                                           ; $591b: $a9
	sbc  c                                           ; $591c: $99
	add  a                                           ; $591d: $87
	ld   l, b                                        ; $591e: $68
	adc  b                                           ; $591f: $88
	adc  b                                           ; $5920: $88
	sub  a                                           ; $5921: $97
	ld   l, b                                        ; $5922: $68
	sub  a                                           ; $5923: $97
	ld   a, b                                        ; $5924: $78
	ld   [hl], a                                     ; $5925: $77
	xor  d                                           ; $5926: $aa
	ld   h, [hl]                                     ; $5927: $66
	ld   a, c                                        ; $5928: $79
	sbc  d                                           ; $5929: $9a
	adc  b                                           ; $592a: $88
	xor  d                                           ; $592b: $aa
	halt                                             ; $592c: $76
	ld   a, c                                        ; $592d: $79
	add  a                                           ; $592e: $87
	ld   a, b                                        ; $592f: $78
	adc  b                                           ; $5930: $88
	ld   [hl], a                                     ; $5931: $77
	ld   a, c                                        ; $5932: $79
	sbc  b                                           ; $5933: $98
	adc  c                                           ; $5934: $89
	sbc  c                                           ; $5935: $99
	sub  a                                           ; $5936: $97
	ld   l, b                                        ; $5937: $68
	sub  a                                           ; $5938: $97
	ld   l, c                                        ; $5939: $69
	sbc  b                                           ; $593a: $98
	sub  a                                           ; $593b: $97
	ld   l, c                                        ; $593c: $69
	sbc  b                                           ; $593d: $98
	sbc  c                                           ; $593e: $99
	ld   a, b                                        ; $593f: $78
	sub  a                                           ; $5940: $97
	ld   [hl], a                                     ; $5941: $77
	ld   a, b                                        ; $5942: $78
	adc  c                                           ; $5943: $89
	adc  b                                           ; $5944: $88
	sbc  b                                           ; $5945: $98
	ld   l, b                                        ; $5946: $68
	sbc  b                                           ; $5947: $98
	sbc  c                                           ; $5948: $99
	ld   [hl], a                                     ; $5949: $77
	sbc  c                                           ; $594a: $99
	ld   [hl], a                                     ; $594b: $77
	adc  c                                           ; $594c: $89
	add  a                                           ; $594d: $87
	adc  c                                           ; $594e: $89
	ld   [hl], a                                     ; $594f: $77
	ld   a, b                                        ; $5950: $78
	xor  c                                           ; $5951: $a9
	add  a                                           ; $5952: $87
	ld   l, c                                        ; $5953: $69
	sbc  b                                           ; $5954: $98
	ld   [hl], a                                     ; $5955: $77
	adc  c                                           ; $5956: $89
	xor  c                                           ; $5957: $a9
	ld   [hl], a                                     ; $5958: $77
	add  a                                           ; $5959: $87
	sbc  c                                           ; $595a: $99
	ld   a, c                                        ; $595b: $79
	sbc  b                                           ; $595c: $98
	ld   a, b                                        ; $595d: $78
	adc  b                                           ; $595e: $88
	sbc  b                                           ; $595f: $98
	ld   a, b                                        ; $5960: $78
	ld   [hl], a                                     ; $5961: $77
	sbc  b                                           ; $5962: $98
	ld   d, a                                        ; $5963: $57
	add  a                                           ; $5964: $87
	adc  b                                           ; $5965: $88
	add  a                                           ; $5966: $87
	adc  b                                           ; $5967: $88
	adc  b                                           ; $5968: $88
	halt                                             ; $5969: $76
	sbc  b                                           ; $596a: $98
	add  a                                           ; $596b: $87
	add  a                                           ; $596c: $87
	ld   l, b                                        ; $596d: $68
	add  a                                           ; $596e: $87
	adc  c                                           ; $596f: $89
	ld   a, b                                        ; $5970: $78
	sub  a                                           ; $5971: $97
	adc  b                                           ; $5972: $88
	ld   [hl], a                                     ; $5973: $77
	adc  b                                           ; $5974: $88
	adc  c                                           ; $5975: $89
	sub  a                                           ; $5976: $97
	ld   a, c                                        ; $5977: $79
	add  [hl]                                        ; $5978: $86
	adc  c                                           ; $5979: $89
	adc  c                                           ; $597a: $89
	ld   [hl], a                                     ; $597b: $77
	add  a                                           ; $597c: $87
	ld   a, c                                        ; $597d: $79
	sub  a                                           ; $597e: $97
	sbc  b                                           ; $597f: $98
	adc  c                                           ; $5980: $89
	add  a                                           ; $5981: $87
	ld   a, b                                        ; $5982: $78
	adc  b                                           ; $5983: $88
	adc  b                                           ; $5984: $88
	halt                                             ; $5985: $76
	sbc  b                                           ; $5986: $98
	ld   a, b                                        ; $5987: $78
	ld   [hl], a                                     ; $5988: $77
	sbc  c                                           ; $5989: $99
	ld   [hl], a                                     ; $598a: $77
	add  a                                           ; $598b: $87
	ld   a, b                                        ; $598c: $78
	ld   a, b                                        ; $598d: $78
	sbc  b                                           ; $598e: $98
	ld   a, b                                        ; $598f: $78
	sbc  b                                           ; $5990: $98
	ld   a, c                                        ; $5991: $79
	adc  b                                           ; $5992: $88
	sbc  b                                           ; $5993: $98
	ld   [hl], a                                     ; $5994: $77
	ld   [hl], a                                     ; $5995: $77
	adc  c                                           ; $5996: $89
	ld   h, a                                        ; $5997: $67
	sbc  b                                           ; $5998: $98
	ld   a, b                                        ; $5999: $78
	sub  a                                           ; $599a: $97
	ld   a, b                                        ; $599b: $78
	add  a                                           ; $599c: $87
	ld   [hl], a                                     ; $599d: $77
	adc  c                                           ; $599e: $89
	sbc  b                                           ; $599f: $98
	add  a                                           ; $59a0: $87
	ld   a, c                                        ; $59a1: $79
	ld   [hl], a                                     ; $59a2: $77
	sbc  b                                           ; $59a3: $98
	ld   a, c                                        ; $59a4: $79
	add  a                                           ; $59a5: $87
	adc  c                                           ; $59a6: $89
	ld   a, b                                        ; $59a7: $78
	adc  b                                           ; $59a8: $88
	sbc  b                                           ; $59a9: $98
	ld   a, b                                        ; $59aa: $78
	adc  b                                           ; $59ab: $88
	add  a                                           ; $59ac: $87
	ld   a, b                                        ; $59ad: $78
	adc  c                                           ; $59ae: $89
	add  a                                           ; $59af: $87
	ld   a, c                                        ; $59b0: $79
	adc  b                                           ; $59b1: $88
	add  a                                           ; $59b2: $87
	ld   a, c                                        ; $59b3: $79
	sub  [hl]                                        ; $59b4: $96
	ld   a, c                                        ; $59b5: $79
	ld   [hl], a                                     ; $59b6: $77
	adc  b                                           ; $59b7: $88
	adc  c                                           ; $59b8: $89
	adc  b                                           ; $59b9: $88
	ld   a, c                                        ; $59ba: $79
	adc  b                                           ; $59bb: $88
	add  a                                           ; $59bc: $87
	adc  b                                           ; $59bd: $88
	add  a                                           ; $59be: $87
	ld   a, c                                        ; $59bf: $79
	ld   a, b                                        ; $59c0: $78
	adc  b                                           ; $59c1: $88
	adc  c                                           ; $59c2: $89
	adc  b                                           ; $59c3: $88
	ld   a, b                                        ; $59c4: $78
	sub  a                                           ; $59c5: $97
	ld   a, b                                        ; $59c6: $78
	adc  b                                           ; $59c7: $88
	add  a                                           ; $59c8: $87
	adc  b                                           ; $59c9: $88
	sub  a                                           ; $59ca: $97
	ld   a, b                                        ; $59cb: $78
	sbc  b                                           ; $59cc: $98
	ld   a, b                                        ; $59cd: $78
	sbc  b                                           ; $59ce: $98
	adc  c                                           ; $59cf: $89
	ld   [hl], a                                     ; $59d0: $77
	sbc  b                                           ; $59d1: $98
	adc  b                                           ; $59d2: $88
	adc  b                                           ; $59d3: $88
	sbc  b                                           ; $59d4: $98
	ld   [hl], a                                     ; $59d5: $77
	adc  c                                           ; $59d6: $89
	adc  b                                           ; $59d7: $88
	adc  c                                           ; $59d8: $89
	sbc  b                                           ; $59d9: $98
	adc  b                                           ; $59da: $88
	adc  b                                           ; $59db: $88
	ld   [hl], a                                     ; $59dc: $77
	add  a                                           ; $59dd: $87
	adc  b                                           ; $59de: $88
	ld   [hl], a                                     ; $59df: $77
	sbc  b                                           ; $59e0: $98
	ld   a, b                                        ; $59e1: $78
	ld   a, b                                        ; $59e2: $78
	sbc  c                                           ; $59e3: $99
	adc  b                                           ; $59e4: $88
	ld   a, c                                        ; $59e5: $79
	add  a                                           ; $59e6: $87
	adc  b                                           ; $59e7: $88
	adc  c                                           ; $59e8: $89
	ld   [hl], a                                     ; $59e9: $77
	adc  b                                           ; $59ea: $88
	adc  b                                           ; $59eb: $88
	adc  c                                           ; $59ec: $89
	sbc  b                                           ; $59ed: $98
	add  a                                           ; $59ee: $87
	adc  b                                           ; $59ef: $88
	adc  b                                           ; $59f0: $88
	sub  a                                           ; $59f1: $97
	ld   a, b                                        ; $59f2: $78
	add  a                                           ; $59f3: $87
	adc  b                                           ; $59f4: $88
	ld   [hl], a                                     ; $59f5: $77
	ld   a, b                                        ; $59f6: $78
	add  a                                           ; $59f7: $87
	ld   a, b                                        ; $59f8: $78
	sbc  b                                           ; $59f9: $98
	ld   a, b                                        ; $59fa: $78
	add  a                                           ; $59fb: $87
	adc  b                                           ; $59fc: $88
	ld   a, b                                        ; $59fd: $78
	sbc  b                                           ; $59fe: $98
	adc  b                                           ; $59ff: $88
	adc  b                                           ; $5a00: $88
	sbc  b                                           ; $5a01: $98
	adc  c                                           ; $5a02: $89
	adc  b                                           ; $5a03: $88
	adc  b                                           ; $5a04: $88
	ld   a, b                                        ; $5a05: $78
	adc  b                                           ; $5a06: $88
	ld   a, b                                        ; $5a07: $78
	sbc  c                                           ; $5a08: $99
	ld   a, b                                        ; $5a09: $78
	sub  a                                           ; $5a0a: $97
	adc  c                                           ; $5a0b: $89
	ld   a, c                                        ; $5a0c: $79
	add  a                                           ; $5a0d: $87
	adc  b                                           ; $5a0e: $88
	adc  b                                           ; $5a0f: $88
	adc  b                                           ; $5a10: $88
	ld   a, b                                        ; $5a11: $78
	sub  a                                           ; $5a12: $97
	ld   a, b                                        ; $5a13: $78
	ld   a, b                                        ; $5a14: $78
	adc  b                                           ; $5a15: $88
	adc  b                                           ; $5a16: $88
	ld   a, b                                        ; $5a17: $78
	sbc  c                                           ; $5a18: $99
	sbc  b                                           ; $5a19: $98
	ld   a, b                                        ; $5a1a: $78
	adc  b                                           ; $5a1b: $88
	adc  b                                           ; $5a1c: $88
	adc  b                                           ; $5a1d: $88
	adc  b                                           ; $5a1e: $88
	sbc  b                                           ; $5a1f: $98
	add  a                                           ; $5a20: $87
	adc  c                                           ; $5a21: $89
	adc  b                                           ; $5a22: $88
	ld   [hl], a                                     ; $5a23: $77
	add  a                                           ; $5a24: $87
	ld   a, b                                        ; $5a25: $78
	ld   [hl], a                                     ; $5a26: $77
	adc  b                                           ; $5a27: $88
	adc  b                                           ; $5a28: $88
	ld   a, b                                        ; $5a29: $78
	sbc  b                                           ; $5a2a: $98
	adc  b                                           ; $5a2b: $88
	ld   [hl], a                                     ; $5a2c: $77
	sbc  b                                           ; $5a2d: $98
	adc  b                                           ; $5a2e: $88
	adc  b                                           ; $5a2f: $88
	sbc  b                                           ; $5a30: $98
	adc  b                                           ; $5a31: $88
	add  a                                           ; $5a32: $87
	adc  c                                           ; $5a33: $89
	add  a                                           ; $5a34: $87
	add  a                                           ; $5a35: $87
	ld   a, b                                        ; $5a36: $78
	sbc  b                                           ; $5a37: $98
	ld   a, b                                        ; $5a38: $78
	adc  b                                           ; $5a39: $88
	sbc  b                                           ; $5a3a: $98
	ld   a, b                                        ; $5a3b: $78
	sbc  b                                           ; $5a3c: $98
	ld   a, b                                        ; $5a3d: $78
	adc  b                                           ; $5a3e: $88
	add  a                                           ; $5a3f: $87
	ld   a, b                                        ; $5a40: $78
	sbc  b                                           ; $5a41: $98
	ld   a, b                                        ; $5a42: $78
	sbc  b                                           ; $5a43: $98
	sbc  b                                           ; $5a44: $98
	ld   a, b                                        ; $5a45: $78
	sub  a                                           ; $5a46: $97
	ld   a, c                                        ; $5a47: $79
	adc  b                                           ; $5a48: $88
	adc  b                                           ; $5a49: $88
	ld   a, b                                        ; $5a4a: $78
	adc  b                                           ; $5a4b: $88
	add  a                                           ; $5a4c: $87
	ld   a, b                                        ; $5a4d: $78
	sbc  b                                           ; $5a4e: $98
	ld   a, b                                        ; $5a4f: $78
	adc  b                                           ; $5a50: $88
	adc  b                                           ; $5a51: $88
	add  a                                           ; $5a52: $87
	adc  b                                           ; $5a53: $88
	ld   [hl], a                                     ; $5a54: $77
	add  a                                           ; $5a55: $87
	ld   a, b                                        ; $5a56: $78
	adc  c                                           ; $5a57: $89
	adc  b                                           ; $5a58: $88
	adc  b                                           ; $5a59: $88
	sbc  c                                           ; $5a5a: $99
	adc  b                                           ; $5a5b: $88
	adc  b                                           ; $5a5c: $88
	sbc  c                                           ; $5a5d: $99
	ld   a, b                                        ; $5a5e: $78
	sbc  b                                           ; $5a5f: $98
	adc  b                                           ; $5a60: $88
	adc  b                                           ; $5a61: $88
	adc  b                                           ; $5a62: $88
	ld   a, b                                        ; $5a63: $78
	add  a                                           ; $5a64: $87
	ld   a, b                                        ; $5a65: $78
	ld   [hl], a                                     ; $5a66: $77
	sbc  b                                           ; $5a67: $98
	ld   a, b                                        ; $5a68: $78
	sbc  b                                           ; $5a69: $98
	adc  c                                           ; $5a6a: $89
	adc  b                                           ; $5a6b: $88
	sbc  b                                           ; $5a6c: $98
	ld   a, b                                        ; $5a6d: $78
	adc  b                                           ; $5a6e: $88
	adc  b                                           ; $5a6f: $88
	adc  b                                           ; $5a70: $88
	add  a                                           ; $5a71: $87
	adc  b                                           ; $5a72: $88
	adc  b                                           ; $5a73: $88
	sbc  b                                           ; $5a74: $98
	adc  b                                           ; $5a75: $88
	adc  b                                           ; $5a76: $88
	adc  b                                           ; $5a77: $88
	adc  b                                           ; $5a78: $88
	adc  b                                           ; $5a79: $88
	adc  b                                           ; $5a7a: $88
	sbc  b                                           ; $5a7b: $98
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
	adc  c                                           ; $5a86: $89
	adc  b                                           ; $5a87: $88
	adc  b                                           ; $5a88: $88
	adc  b                                           ; $5a89: $88
	adc  b                                           ; $5a8a: $88
	adc  b                                           ; $5a8b: $88
	adc  b                                           ; $5a8c: $88
	sbc  b                                           ; $5a8d: $98
	adc  b                                           ; $5a8e: $88
	adc  b                                           ; $5a8f: $88
	adc  c                                           ; $5a90: $89
	adc  b                                           ; $5a91: $88
	adc  b                                           ; $5a92: $88
	adc  c                                           ; $5a93: $89
	add  a                                           ; $5a94: $87
	adc  c                                           ; $5a95: $89
	adc  b                                           ; $5a96: $88
	adc  b                                           ; $5a97: $88
	ld   a, b                                        ; $5a98: $78
	adc  b                                           ; $5a99: $88
	adc  b                                           ; $5a9a: $88
	adc  b                                           ; $5a9b: $88
	add  a                                           ; $5a9c: $87
	adc  b                                           ; $5a9d: $88
	ld   a, b                                        ; $5a9e: $78
	sbc  b                                           ; $5a9f: $98
	sbc  b                                           ; $5aa0: $98
	adc  b                                           ; $5aa1: $88
	adc  b                                           ; $5aa2: $88
	ld   a, b                                        ; $5aa3: $78
	sbc  b                                           ; $5aa4: $98
	adc  b                                           ; $5aa5: $88
	adc  b                                           ; $5aa6: $88
	adc  b                                           ; $5aa7: $88
	adc  b                                           ; $5aa8: $88
	adc  b                                           ; $5aa9: $88
	adc  b                                           ; $5aaa: $88
	adc  b                                           ; $5aab: $88
	add  a                                           ; $5aac: $87
	adc  b                                           ; $5aad: $88
	adc  b                                           ; $5aae: $88
	adc  b                                           ; $5aaf: $88
	adc  c                                           ; $5ab0: $89
	sbc  b                                           ; $5ab1: $98
	adc  b                                           ; $5ab2: $88
	adc  b                                           ; $5ab3: $88
	adc  c                                           ; $5ab4: $89
	adc  b                                           ; $5ab5: $88
	adc  b                                           ; $5ab6: $88
	adc  b                                           ; $5ab7: $88
	add  a                                           ; $5ab8: $87
	ld   a, b                                        ; $5ab9: $78
	adc  c                                           ; $5aba: $89
	adc  b                                           ; $5abb: $88
	ld   a, b                                        ; $5abc: $78
	adc  b                                           ; $5abd: $88
	adc  b                                           ; $5abe: $88
	adc  b                                           ; $5abf: $88
	adc  b                                           ; $5ac0: $88
	adc  b                                           ; $5ac1: $88
	adc  b                                           ; $5ac2: $88
	adc  b                                           ; $5ac3: $88
	adc  b                                           ; $5ac4: $88
	sub  a                                           ; $5ac5: $97
	ld   a, c                                        ; $5ac6: $79
	adc  b                                           ; $5ac7: $88
	adc  b                                           ; $5ac8: $88
	adc  b                                           ; $5ac9: $88
	sbc  b                                           ; $5aca: $98
	adc  b                                           ; $5acb: $88
	adc  b                                           ; $5acc: $88
	sbc  b                                           ; $5acd: $98
	adc  c                                           ; $5ace: $89
	add  a                                           ; $5acf: $87
	adc  b                                           ; $5ad0: $88
	adc  b                                           ; $5ad1: $88
	adc  c                                           ; $5ad2: $89
	adc  b                                           ; $5ad3: $88
	adc  b                                           ; $5ad4: $88
	adc  b                                           ; $5ad5: $88
	adc  b                                           ; $5ad6: $88
	add  a                                           ; $5ad7: $87
	ld   a, b                                        ; $5ad8: $78
	adc  b                                           ; $5ad9: $88
	adc  c                                           ; $5ada: $89
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
	sbc  b                                           ; $5aea: $98
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
	add  a                                           ; $5af7: $87
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
	adc  c                                           ; $5b02: $89
	adc  b                                           ; $5b03: $88
	adc  b                                           ; $5b04: $88
	adc  b                                           ; $5b05: $88
	adc  b                                           ; $5b06: $88
	adc  b                                           ; $5b07: $88
	adc  c                                           ; $5b08: $89
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
	sbc  c                                           ; $5b15: $99
	adc  b                                           ; $5b16: $88
	sbc  b                                           ; $5b17: $98
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
	sbc  b                                           ; $5de0: $98
	adc  b                                           ; $5de1: $88
	adc  b                                           ; $5de2: $88
	adc  c                                           ; $5de3: $89
	sbc  b                                           ; $5de4: $98
	adc  c                                           ; $5de5: $89
	sbc  c                                           ; $5de6: $99
	adc  b                                           ; $5de7: $88
	adc  b                                           ; $5de8: $88
	adc  b                                           ; $5de9: $88
	adc  b                                           ; $5dea: $88
	adc  b                                           ; $5deb: $88
	adc  b                                           ; $5dec: $88
	adc  b                                           ; $5ded: $88
	adc  b                                           ; $5dee: $88
	adc  b                                           ; $5def: $88
	sbc  b                                           ; $5df0: $98
	adc  c                                           ; $5df1: $89
	adc  b                                           ; $5df2: $88
	sbc  b                                           ; $5df3: $98
	sbc  b                                           ; $5df4: $98
	adc  c                                           ; $5df5: $89
	ld   a, b                                        ; $5df6: $78
	adc  b                                           ; $5df7: $88
	adc  b                                           ; $5df8: $88
	adc  b                                           ; $5df9: $88
	ld   a, c                                        ; $5dfa: $79
	add  a                                           ; $5dfb: $87
	adc  c                                           ; $5dfc: $89
	adc  c                                           ; $5dfd: $89
	adc  b                                           ; $5dfe: $88
	sbc  b                                           ; $5dff: $98
	add  a                                           ; $5e00: $87
	adc  b                                           ; $5e01: $88
	ld   a, b                                        ; $5e02: $78
	adc  b                                           ; $5e03: $88
	adc  c                                           ; $5e04: $89
	sub  a                                           ; $5e05: $97
	ld   a, b                                        ; $5e06: $78
	ld   a, b                                        ; $5e07: $78
	sbc  b                                           ; $5e08: $98
	ld   a, b                                        ; $5e09: $78
	add  a                                           ; $5e0a: $87
	adc  b                                           ; $5e0b: $88
	adc  b                                           ; $5e0c: $88
	sbc  c                                           ; $5e0d: $99
	ld   a, b                                        ; $5e0e: $78
	sbc  c                                           ; $5e0f: $99
	add  a                                           ; $5e10: $87
	adc  c                                           ; $5e11: $89
	ld   a, b                                        ; $5e12: $78
	adc  c                                           ; $5e13: $89
	ld   a, b                                        ; $5e14: $78
	adc  c                                           ; $5e15: $89
	add  a                                           ; $5e16: $87
	add  a                                           ; $5e17: $87
	sbc  b                                           ; $5e18: $98
	ld   a, b                                        ; $5e19: $78
	adc  c                                           ; $5e1a: $89
	adc  b                                           ; $5e1b: $88
	adc  b                                           ; $5e1c: $88
	sbc  b                                           ; $5e1d: $98
	ld   a, b                                        ; $5e1e: $78
	sbc  b                                           ; $5e1f: $98
	ld   [hl], a                                     ; $5e20: $77
	add  a                                           ; $5e21: $87
	ld   [hl], a                                     ; $5e22: $77
	adc  b                                           ; $5e23: $88
	ld   a, c                                        ; $5e24: $79
	ld   a, b                                        ; $5e25: $78
	adc  b                                           ; $5e26: $88
	sub  a                                           ; $5e27: $97
	sub  a                                           ; $5e28: $97
	sbc  b                                           ; $5e29: $98
	ld   a, b                                        ; $5e2a: $78
	adc  c                                           ; $5e2b: $89
	ld   a, b                                        ; $5e2c: $78
	adc  c                                           ; $5e2d: $89
	ld   a, b                                        ; $5e2e: $78
	add  [hl]                                        ; $5e2f: $86
	sbc  b                                           ; $5e30: $98
	adc  c                                           ; $5e31: $89
	adc  b                                           ; $5e32: $88
	ld   a, b                                        ; $5e33: $78
	ld   [hl], a                                     ; $5e34: $77
	adc  c                                           ; $5e35: $89
	ld   a, c                                        ; $5e36: $79
	add  a                                           ; $5e37: $87
	adc  c                                           ; $5e38: $89
	add  a                                           ; $5e39: $87
	adc  c                                           ; $5e3a: $89
	ld   a, c                                        ; $5e3b: $79
	add  a                                           ; $5e3c: $87
	sbc  b                                           ; $5e3d: $98
	adc  b                                           ; $5e3e: $88
	ld   a, b                                        ; $5e3f: $78
	sub  a                                           ; $5e40: $97
	add  [hl]                                        ; $5e41: $86
	and  a                                           ; $5e42: $a7
	ld   a, b                                        ; $5e43: $78
	ld   a, d                                        ; $5e44: $7a
	ld   a, c                                        ; $5e45: $79
	ld   a, c                                        ; $5e46: $79
	sub  a                                           ; $5e47: $97
	sub  a                                           ; $5e48: $97
	add  [hl]                                        ; $5e49: $86
	sbc  b                                           ; $5e4a: $98
	adc  b                                           ; $5e4b: $88
	ld   l, d                                        ; $5e4c: $6a
	adc  b                                           ; $5e4d: $88
	ld   a, b                                        ; $5e4e: $78
	sbc  b                                           ; $5e4f: $98
	adc  c                                           ; $5e50: $89
	sbc  d                                           ; $5e51: $9a
	add  [hl]                                        ; $5e52: $86
	sub  a                                           ; $5e53: $97
	sub  [hl]                                        ; $5e54: $96
	adc  c                                           ; $5e55: $89
	ld   a, b                                        ; $5e56: $78
	ld   l, c                                        ; $5e57: $69
	ld   l, d                                        ; $5e58: $6a
	add  [hl]                                        ; $5e59: $86
	sbc  c                                           ; $5e5a: $99
	add  [hl]                                        ; $5e5b: $86
	adc  b                                           ; $5e5c: $88
	adc  b                                           ; $5e5d: $88
	ld   a, d                                        ; $5e5e: $7a
	add  a                                           ; $5e5f: $87
	add  a                                           ; $5e60: $87
	sbc  c                                           ; $5e61: $99
	ld   l, c                                        ; $5e62: $69
	sbc  b                                           ; $5e63: $98
	ld   l, c                                        ; $5e64: $69
	sub  [hl]                                        ; $5e65: $96
	and  a                                           ; $5e66: $a7
	ld   a, b                                        ; $5e67: $78
	ld   a, c                                        ; $5e68: $79
	ld   l, d                                        ; $5e69: $6a
	halt                                             ; $5e6a: $76
	sub  a                                           ; $5e6b: $97
	and  a                                           ; $5e6c: $a7
	ld   a, d                                        ; $5e6d: $7a
	ld   a, d                                        ; $5e6e: $7a
	ld   a, c                                        ; $5e6f: $79
	ld   [hl], a                                     ; $5e70: $77
	sub  e                                           ; $5e71: $93
	and  [hl]                                        ; $5e72: $a6
	ld   h, a                                        ; $5e73: $67
	ld   c, c                                        ; $5e74: $49
	ld   l, b                                        ; $5e75: $68
	ld   a, b                                        ; $5e76: $78
	adc  e                                           ; $5e77: $8b
	cp   b                                           ; $5e78: $b8
	cp   b                                           ; $5e79: $b8
	cp   b                                           ; $5e7a: $b8
	xor  b                                           ; $5e7b: $a8
	ld   e, e                                        ; $5e7c: $5b
	ld   b, a                                        ; $5e7d: $47
	ld   h, e                                        ; $5e7e: $63
	ld   h, l                                        ; $5e7f: $65
	ld   b, d                                        ; $5e80: $42
	ld   d, [hl]                                     ; $5e81: $56
	adc  c                                           ; $5e82: $89
	sbc  e                                           ; $5e83: $9b
	db   $db                                         ; $5e84: $db
	xor  l                                           ; $5e85: $ad
	db   $ec                                         ; $5e86: $ec
	sbc  c                                           ; $5e87: $99
	sbc  c                                           ; $5e88: $99
	add  l                                           ; $5e89: $85
	ld   [hl], l                                     ; $5e8a: $75
	ld   b, e                                        ; $5e8b: $43
	ld   b, e                                        ; $5e8c: $43
	dec  [hl]                                        ; $5e8d: $35
	ld   c, b                                        ; $5e8e: $48
	adc  d                                           ; $5e8f: $8a
	sbc  e                                           ; $5e90: $9b
	db   $fd                                         ; $5e91: $fd
	db   $ed                                         ; $5e92: $ed
	jp   hl                                          ; $5e93: $e9


	ld   l, d                                        ; $5e94: $6a
	add  a                                           ; $5e95: $87
	ld   d, l                                        ; $5e96: $55
	ld   h, c                                        ; $5e97: $61
	inc  sp                                          ; $5e98: $33
	dec  d                                           ; $5e99: $15
	dec  h                                           ; $5e9a: $25
	ld   l, d                                        ; $5e9b: $6a
	xor  b                                           ; $5e9c: $a8
	rst  $38                                         ; $5e9d: $ff
	rst  $38                                         ; $5e9e: $ff
	db   $ec                                         ; $5e9f: $ec
	xor  c                                           ; $5ea0: $a9
	ld   a, b                                        ; $5ea1: $78
	ld   b, a                                        ; $5ea2: $47
	ld   d, d                                        ; $5ea3: $52
	inc  de                                          ; $5ea4: $13
	ld   de, $6923                                   ; $5ea5: $11 $23 $69
	jp   z, $feef                                    ; $5ea8: $ca $ef $fe

	rst  $38                                         ; $5eab: $ff
	sbc  c                                           ; $5eac: $99
	adc  b                                           ; $5ead: $88
	ld   d, h                                        ; $5eae: $54
	ld   h, c                                        ; $5eaf: $61
	ld   [de], a                                     ; $5eb0: $12
	ld   [de], a                                     ; $5eb1: $12
	ld   [hl+], a                                    ; $5eb2: $22
	ld   e, c                                        ; $5eb3: $59
	jp   hl                                          ; $5eb4: $e9


	rst  $28                                         ; $5eb5: $ef
	rst  $38                                         ; $5eb6: $ff
	rst  $38                                         ; $5eb7: $ff
	xor  d                                           ; $5eb8: $aa
	add  [hl]                                        ; $5eb9: $86
	inc  sp                                          ; $5eba: $33
	ld   h, c                                        ; $5ebb: $61
	ld   [de], a                                     ; $5ebc: $12
	ld   de, $7e12                                   ; $5ebd: $11 $12 $7e
	db   $dd                                         ; $5ec0: $dd
	rst  $38                                         ; $5ec1: $ff
	rst  $38                                         ; $5ec2: $ff
	ei                                               ; $5ec3: $fb
	and  [hl]                                        ; $5ec4: $a6
	ld   h, h                                        ; $5ec5: $64
	inc  [hl]                                        ; $5ec6: $34
	ld   de, $1111                                   ; $5ec7: $11 $11 $11
	inc  [hl]                                        ; $5eca: $34
	xor  h                                           ; $5ecb: $ac
	rst  $38                                         ; $5ecc: $ff
	rst  $38                                         ; $5ecd: $ff
	rst  $38                                         ; $5ece: $ff
	ei                                               ; $5ecf: $fb
	ld   h, $41                                      ; $5ed0: $26 $41
	ld   de, $1111                                   ; $5ed2: $11 $11 $11
	inc  de                                          ; $5ed5: $13
	ld   c, d                                        ; $5ed6: $4a
	rst  JumpTable                                         ; $5ed7: $df
	rst  $38                                         ; $5ed8: $ff
	rst  $38                                         ; $5ed9: $ff
	rst  $38                                         ; $5eda: $ff
	jp   nz, $1153                                   ; $5edb: $c2 $53 $11

	ld   de, $1111                                   ; $5ede: $11 $11 $11
	inc  sp                                          ; $5ee1: $33
	sbc  a                                           ; $5ee2: $9f
	rst  $38                                         ; $5ee3: $ff
	rst  $38                                         ; $5ee4: $ff
	rst  $38                                         ; $5ee5: $ff
	db   $fd                                         ; $5ee6: $fd
	ld   [hl-], a                                    ; $5ee7: $32
	ld   de, $1111                                   ; $5ee8: $11 $11 $11
	ld   de, $4b14                                   ; $5eeb: $11 $14 $4b
	rst  $38                                         ; $5eee: $ff
	rst  $38                                         ; $5eef: $ff
	rst  $38                                         ; $5ef0: $ff
	rst  $38                                         ; $5ef1: $ff
	sub  e                                           ; $5ef2: $93
	ld   de, $1111                                   ; $5ef3: $11 $11 $11
	ld   de, $2711                                   ; $5ef6: $11 $11 $27
	rst  $38                                         ; $5ef9: $ff
	rst  $38                                         ; $5efa: $ff
	rst  $38                                         ; $5efb: $ff
	rst  $38                                         ; $5efc: $ff
	rst  $30                                         ; $5efd: $f7
	ld   de, $1111                                   ; $5efe: $11 $11 $11
	ld   de, $1211                                   ; $5f01: $11 $11 $12
	cp   a                                           ; $5f04: $bf
	rst  $38                                         ; $5f05: $ff
	rst  $38                                         ; $5f06: $ff
	rst  $38                                         ; $5f07: $ff
	rst  $38                                         ; $5f08: $ff
	ld   b, c                                        ; $5f09: $41
	ld   de, $1111                                   ; $5f0a: $11 $11 $11
	ld   de, $4e11                                   ; $5f0d: $11 $11 $4e
	rst  $38                                         ; $5f10: $ff
	rst  $38                                         ; $5f11: $ff
	rst  $38                                         ; $5f12: $ff
	rst  $38                                         ; $5f13: $ff
	db   $e3                                         ; $5f14: $e3
	ld   de, $1111                                   ; $5f15: $11 $11 $11
	ld   de, $4a11                                   ; $5f18: $11 $11 $4a
	rst  $38                                         ; $5f1b: $ff
	rst  $38                                         ; $5f1c: $ff
	rst  $38                                         ; $5f1d: $ff
	rst  $38                                         ; $5f1e: $ff
	ld   a, [$1111]                                  ; $5f1f: $fa $11 $11
	ld   de, $1111                                   ; $5f22: $11 $11 $11
	rla                                              ; $5f25: $17
	rst  $38                                         ; $5f26: $ff
	rst  $38                                         ; $5f27: $ff
	rst  $38                                         ; $5f28: $ff
	rst  $38                                         ; $5f29: $ff
	db   $fd                                         ; $5f2a: $fd
	ld   sp, $1111                                   ; $5f2b: $31 $11 $11
	ld   de, $1a11                                   ; $5f2e: $11 $11 $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f31: $cf
	rst  $38                                         ; $5f32: $ff
	rst  $38                                         ; $5f33: $ff
	rst  $38                                         ; $5f34: $ff
	rst  $38                                         ; $5f35: $ff
	ld   d, c                                        ; $5f36: $51
	ld   de, $1111                                   ; $5f37: $11 $11 $11
	ld   de, $ff16                                   ; $5f3a: $11 $16 $ff
	rst  $38                                         ; $5f3d: $ff
	rst  $38                                         ; $5f3e: $ff
	rst  $38                                         ; $5f3f: $ff
	rst  $38                                         ; $5f40: $ff
	ld   d, c                                        ; $5f41: $51
	ld   de, $1111                                   ; $5f42: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $5f45: $11 $11 $ff
	rst  $38                                         ; $5f48: $ff
	rst  $38                                         ; $5f49: $ff
	rst  $38                                         ; $5f4a: $ff
	rst  $38                                         ; $5f4b: $ff
	ld   hl, $1111                                   ; $5f4c: $21 $11 $11
	ld   de, $1111                                   ; $5f4f: $11 $11 $11
	rst  $38                                         ; $5f52: $ff
	rst  $38                                         ; $5f53: $ff
	rst  $38                                         ; $5f54: $ff
	rst  $38                                         ; $5f55: $ff
	rst  $38                                         ; $5f56: $ff
	ld   bc, $1111                                   ; $5f57: $01 $11 $11
	ld   de, $1511                                   ; $5f5a: $11 $11 $15
	rst  $38                                         ; $5f5d: $ff
	rst  $38                                         ; $5f5e: $ff
	rst  $38                                         ; $5f5f: $ff
	rst  $38                                         ; $5f60: $ff
	rst  $38                                         ; $5f61: $ff
	ld   de, $1111                                   ; $5f62: $11 $11 $11
	ld   de, $1d11                                   ; $5f65: $11 $11 $1d
	rst  $38                                         ; $5f68: $ff
	rst  $38                                         ; $5f69: $ff
	rst  $38                                         ; $5f6a: $ff
	rst  $38                                         ; $5f6b: $ff
	rst  $38                                         ; $5f6c: $ff
	ld   de, $1111                                   ; $5f6d: $11 $11 $11
	ld   de, $5f11                                   ; $5f70: $11 $11 $5f
	rst  $38                                         ; $5f73: $ff
	rst  $38                                         ; $5f74: $ff
	rst  $38                                         ; $5f75: $ff
	rst  $38                                         ; $5f76: $ff
	pop  af                                          ; $5f77: $f1
	ld   de, $1111                                   ; $5f78: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $5f7b: $11 $11 $ff
	rst  $38                                         ; $5f7e: $ff
	rst  $38                                         ; $5f7f: $ff
	rst  $38                                         ; $5f80: $ff
	rst  $38                                         ; $5f81: $ff
	ld   h, c                                        ; $5f82: $61
	ld   de, $1111                                   ; $5f83: $11 $11 $11
	ld   de, $ff1f                                   ; $5f86: $11 $1f $ff
	rst  $38                                         ; $5f89: $ff
	rst  $38                                         ; $5f8a: $ff
	rst  $38                                         ; $5f8b: $ff
	db   $fc                                         ; $5f8c: $fc
	ld   de, $1111                                   ; $5f8d: $11 $11 $11
	ld   de, $df11                                   ; $5f90: $11 $11 $df
	rst  $38                                         ; $5f93: $ff
	rst  $38                                         ; $5f94: $ff
	rst  $38                                         ; $5f95: $ff
	rst  $38                                         ; $5f96: $ff
	pop  bc                                          ; $5f97: $c1
	ld   de, $1111                                   ; $5f98: $11 $11 $11
	ld   de, $ff1c                                   ; $5f9b: $11 $1c $ff
	rst  $38                                         ; $5f9e: $ff
	rst  $38                                         ; $5f9f: $ff
	rst  $38                                         ; $5fa0: $ff
	ld   a, [$1111]                                  ; $5fa1: $fa $11 $11
	ld   de, $1311                                   ; $5fa4: $11 $11 $13
	rst  $38                                         ; $5fa7: $ff
	rst  $38                                         ; $5fa8: $ff
	rst  $38                                         ; $5fa9: $ff
	rst  $38                                         ; $5faa: $ff
	rst  $38                                         ; $5fab: $ff
	ld   d, c                                        ; $5fac: $51
	ld   de, $1111                                   ; $5fad: $11 $11 $11
	ld   de, $ff4f                                   ; $5fb0: $11 $4f $ff
	rst  $38                                         ; $5fb3: $ff
	rst  $38                                         ; $5fb4: $ff
	rst  $38                                         ; $5fb5: $ff
	pop  hl                                          ; $5fb6: $e1
	ld   de, $1111                                   ; $5fb7: $11 $11 $11
	ld   de, $ff37                                   ; $5fba: $11 $37 $ff
	rst  $38                                         ; $5fbd: $ff
	rst  $38                                         ; $5fbe: $ff
	rst  $38                                         ; $5fbf: $ff
	ld   hl, sp+$11                                  ; $5fc0: $f8 $11
	ld   de, $1111                                   ; $5fc2: $11 $11 $11
	inc  d                                           ; $5fc5: $14
	rst  JumpTable                                         ; $5fc6: $df
	rst  $38                                         ; $5fc7: $ff
	rst  $38                                         ; $5fc8: $ff
	rst  $38                                         ; $5fc9: $ff
	rst  $38                                         ; $5fca: $ff
	ld   b, c                                        ; $5fcb: $41
	ld   de, $1111                                   ; $5fcc: $11 $11 $11
	ld   de, $ff6f                                   ; $5fcf: $11 $6f $ff
	rst  $38                                         ; $5fd2: $ff
	rst  $38                                         ; $5fd3: $ff
	rst  $38                                         ; $5fd4: $ff
	and  c                                           ; $5fd5: $a1
	ld   de, $1111                                   ; $5fd6: $11 $11 $11
	ld   de, $ff16                                   ; $5fd9: $11 $16 $ff
	rst  $38                                         ; $5fdc: $ff
	rst  $38                                         ; $5fdd: $ff
	rst  $38                                         ; $5fde: $ff
	rst  $30                                         ; $5fdf: $f7
	ld   de, $1111                                   ; $5fe0: $11 $11 $11
	ld   de, $7f12                                   ; $5fe3: $11 $12 $7f
	rst  $38                                         ; $5fe6: $ff
	rst  $38                                         ; $5fe7: $ff
	rst  $38                                         ; $5fe8: $ff
	rst  $38                                         ; $5fe9: $ff
	ld   [hl], c                                     ; $5fea: $71
	ld   de, $1111                                   ; $5feb: $11 $11 $11
	ld   de, $ff28                                   ; $5fee: $11 $28 $ff
	rst  $38                                         ; $5ff1: $ff

jr_0cb_5ff2:
	rst  $38                                         ; $5ff2: $ff
	rst  $38                                         ; $5ff3: $ff
	db   $e4                                         ; $5ff4: $e4
	ld   de, $1111                                   ; $5ff5: $11 $11 $11
	ld   de, $7e12                                   ; $5ff8: $11 $12 $7e
	rst  $38                                         ; $5ffb: $ff
	rst  $38                                         ; $5ffc: $ff
	rst  $38                                         ; $5ffd: $ff
	rst  $38                                         ; $5ffe: $ff
	ld   [hl], c                                     ; $5fff: $71
	inc  d                                           ; $6000: $14
	ld   de, $1111                                   ; $6001: $11 $11 $11
	inc  de                                          ; $6004: $13
	sbc  e                                           ; $6005: $9b
	rst  $38                                         ; $6006: $ff
	rst  $38                                         ; $6007: $ff
	rst  $38                                         ; $6008: $ff
	db   $fc                                         ; $6009: $fc
	ld   [hl], c                                     ; $600a: $71
	ld   [hl+], a                                    ; $600b: $22
	ld   d, l                                        ; $600c: $55
	ld   de, $1311                                   ; $600d: $11 $11 $13
	xor  b                                           ; $6010: $a8
	xor  a                                           ; $6011: $af
	rst  $38                                         ; $6012: $ff
	rst  $38                                         ; $6013: $ff
	db   $fd                                         ; $6014: $fd
	ld   h, e                                        ; $6015: $63
	rst  $38                                         ; $6016: $ff
	ld   [hl+], a                                    ; $6017: $22
	ld   [hl], d                                     ; $6018: $72
	ld   de, $2523                                   ; $6019: $11 $23 $25
	ld   a, c                                        ; $601c: $79
	cp   h                                           ; $601d: $bc
	rst  $38                                         ; $601e: $ff
	call $4fd4                                       ; $601f: $cd $d4 $4f
	push af                                          ; $6022: $f5
	ld   d, $51                                      ; $6023: $16 $51
	dec  d                                           ; $6025: $15
	ld   b, c                                        ; $6026: $41
	ld   b, a                                        ; $6027: $47
	ld   l, b                                        ; $6028: $68
	sbc  [hl]                                        ; $6029: $9e
	ei                                               ; $602a: $fb
	rst  $38                                         ; $602b: $ff
	rst  $20                                         ; $602c: $e7
	sbc  h                                           ; $602d: $9c
	halt                                             ; $602e: $76
	add  l                                           ; $602f: $85
	ld   [de], a                                     ; $6030: $12
	ld   sp, $4513                                   ; $6031: $31 $13 $45
	sbc  b                                           ; $6034: $98
	xor  a                                           ; $6035: $af
	jp   c, $95ff                                    ; $6036: $da $ff $95

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6039: $cf
	jp   Jump_0cb_415b                               ; $603a: $c3 $5b $41


	dec  h                                           ; $603d: $25
	ld   b, c                                        ; $603e: $41
	ld   c, c                                        ; $603f: $49
	ld   d, l                                        ; $6040: $55
	xor  e                                           ; $6041: $ab
	ret                                              ; $6042: $c9


	cp   a                                           ; $6043: $bf
	db   $d3                                         ; $6044: $d3
	adc  a                                           ; $6045: $8f
	pop  bc                                          ; $6046: $c1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6047: $cf
	ld   de, $11ce                                   ; $6048: $11 $ce $11
	and  a                                           ; $604b: $a7
	inc  de                                          ; $604c: $13
	add  a                                           ; $604d: $87
	ld   a, [hl]                                     ; $604e: $7e
	and  [hl]                                        ; $604f: $a6
	rst  $28                                         ; $6050: $ef
	xor  b                                           ; $6051: $a8
	rst  JumpTable                                         ; $6052: $df
	sub  a                                           ; $6053: $97
	or   a                                           ; $6054: $b7
	inc  hl                                          ; $6055: $23
	ld   d, h                                        ; $6056: $54
	inc  [hl]                                        ; $6057: $34
	ld   b, e                                        ; $6058: $43
	jr   c, jr_0cb_5ff2                              ; $6059: $38 $97

	ld   a, h                                        ; $605b: $7c
	db   $fc                                         ; $605c: $fc
	cp   a                                           ; $605d: $bf
	ld   [hl], l                                     ; $605e: $75
	db   $fd                                         ; $605f: $fd
	ld   e, b                                        ; $6060: $58
	db   $d3                                         ; $6061: $d3
	rla                                              ; $6062: $17
	ld   [hl], d                                     ; $6063: $72
	ld   c, b                                        ; $6064: $48
	ld   h, l                                        ; $6065: $65
	ld   h, [hl]                                     ; $6066: $66
	xor  [hl]                                        ; $6067: $ae
	ld   h, a                                        ; $6068: $67
	db   $db                                         ; $6069: $db
	adc  c                                           ; $606a: $89
	adc  $a3                                         ; $606b: $ce $a3
	adc  [hl]                                        ; $606d: $8e
	ld   h, c                                        ; $606e: $61
	adc  h                                           ; $606f: $8c
	ld   sp, $15a8                                   ; $6070: $31 $a8 $15
	cp   c                                           ; $6073: $b9
	ld   d, a                                        ; $6074: $57
	cp   b                                           ; $6075: $b8
	ld   l, h                                        ; $6076: $6c
	and  $6d                                         ; $6077: $e6 $6d
	sub  a                                           ; $6079: $97
	sbc  e                                           ; $607a: $9b
	sub  l                                           ; $607b: $95
	ld   b, a                                        ; $607c: $47
	add  l                                           ; $607d: $85
	ld   d, a                                        ; $607e: $57
	ld   h, l                                        ; $607f: $65
	adc  c                                           ; $6080: $89
	ld   h, a                                        ; $6081: $67
	xor  d                                           ; $6082: $aa
	sbc  b                                           ; $6083: $98
	xor  e                                           ; $6084: $ab
	xor  d                                           ; $6085: $aa
	ld   l, d                                        ; $6086: $6a
	add  d                                           ; $6087: $82
	adc  c                                           ; $6088: $89
	ld   h, h                                        ; $6089: $64
	ld   a, c                                        ; $608a: $79
	ld   h, a                                        ; $608b: $67
	adc  b                                           ; $608c: $88
	xor  d                                           ; $608d: $aa
	ld   a, c                                        ; $608e: $79
	cp   b                                           ; $608f: $b8
	ld   a, e                                        ; $6090: $7b
	and  l                                           ; $6091: $a5
	adc  c                                           ; $6092: $89
	ld   h, l                                        ; $6093: $65
	ld   a, c                                        ; $6094: $79
	ld   h, a                                        ; $6095: $67
	add  a                                           ; $6096: $87
	adc  d                                           ; $6097: $8a
	ld   a, b                                        ; $6098: $78
	xor  c                                           ; $6099: $a9
	adc  b                                           ; $609a: $88
	xor  b                                           ; $609b: $a8
	ld   a, b                                        ; $609c: $78
	add  a                                           ; $609d: $87
	ld   [hl], a                                     ; $609e: $77
	add  a                                           ; $609f: $87
	ld   [hl], a                                     ; $60a0: $77
	sbc  c                                           ; $60a1: $99
	adc  b                                           ; $60a2: $88
	sbc  b                                           ; $60a3: $98
	adc  b                                           ; $60a4: $88
	sbc  b                                           ; $60a5: $98
	adc  b                                           ; $60a6: $88
	add  a                                           ; $60a7: $87
	ld   [hl], a                                     ; $60a8: $77
	ld   [hl], a                                     ; $60a9: $77
	ld   a, b                                        ; $60aa: $78
	adc  b                                           ; $60ab: $88
	adc  b                                           ; $60ac: $88
	adc  b                                           ; $60ad: $88
	adc  b                                           ; $60ae: $88
	sbc  b                                           ; $60af: $98
	adc  b                                           ; $60b0: $88
	adc  b                                           ; $60b1: $88
	ld   [hl], a                                     ; $60b2: $77
	ld   [hl], a                                     ; $60b3: $77
	ld   a, b                                        ; $60b4: $78
	adc  b                                           ; $60b5: $88
	adc  b                                           ; $60b6: $88
	sbc  c                                           ; $60b7: $99
	adc  c                                           ; $60b8: $89
	sbc  c                                           ; $60b9: $99
	adc  b                                           ; $60ba: $88
	adc  b                                           ; $60bb: $88
	adc  b                                           ; $60bc: $88
	ld   a, b                                        ; $60bd: $78
	adc  b                                           ; $60be: $88
	adc  b                                           ; $60bf: $88
	sbc  b                                           ; $60c0: $98
	adc  c                                           ; $60c1: $89
	adc  b                                           ; $60c2: $88
	adc  b                                           ; $60c3: $88
	adc  b                                           ; $60c4: $88
	adc  b                                           ; $60c5: $88
	adc  b                                           ; $60c6: $88
	adc  b                                           ; $60c7: $88
	adc  b                                           ; $60c8: $88
	adc  b                                           ; $60c9: $88
	sbc  c                                           ; $60ca: $99
	adc  c                                           ; $60cb: $89
	adc  c                                           ; $60cc: $89
	adc  b                                           ; $60cd: $88
	adc  b                                           ; $60ce: $88
	ld   [hl], a                                     ; $60cf: $77
	adc  b                                           ; $60d0: $88
	add  a                                           ; $60d1: $87
	adc  b                                           ; $60d2: $88
	adc  b                                           ; $60d3: $88
	adc  b                                           ; $60d4: $88
	sbc  c                                           ; $60d5: $99
	adc  c                                           ; $60d6: $89
	adc  b                                           ; $60d7: $88
	adc  b                                           ; $60d8: $88
	ld   [hl], a                                     ; $60d9: $77
	ld   [hl], a                                     ; $60da: $77
	ld   [hl], a                                     ; $60db: $77
	adc  b                                           ; $60dc: $88
	adc  b                                           ; $60dd: $88
	adc  c                                           ; $60de: $89
	sbc  b                                           ; $60df: $98
	adc  b                                           ; $60e0: $88
	sbc  b                                           ; $60e1: $98
	adc  b                                           ; $60e2: $88
	adc  b                                           ; $60e3: $88
	ld   a, b                                        ; $60e4: $78
	ld   [hl], a                                     ; $60e5: $77
	ld   a, b                                        ; $60e6: $78
	adc  b                                           ; $60e7: $88
	adc  b                                           ; $60e8: $88
	sbc  c                                           ; $60e9: $99
	sbc  b                                           ; $60ea: $98
	sbc  c                                           ; $60eb: $99
	adc  b                                           ; $60ec: $88
	adc  b                                           ; $60ed: $88
	adc  b                                           ; $60ee: $88
	add  a                                           ; $60ef: $87
	add  a                                           ; $60f0: $87
	adc  b                                           ; $60f1: $88
	adc  b                                           ; $60f2: $88
	adc  c                                           ; $60f3: $89
	sbc  c                                           ; $60f4: $99
	sbc  b                                           ; $60f5: $98
	sbc  b                                           ; $60f6: $98
	adc  b                                           ; $60f7: $88
	adc  b                                           ; $60f8: $88
	ld   [hl], a                                     ; $60f9: $77
	adc  b                                           ; $60fa: $88
	ld   [hl], a                                     ; $60fb: $77
	adc  b                                           ; $60fc: $88
	adc  b                                           ; $60fd: $88
	adc  b                                           ; $60fe: $88
	sbc  c                                           ; $60ff: $99
	adc  c                                           ; $6100: $89
	adc  b                                           ; $6101: $88
	adc  b                                           ; $6102: $88
	ld   a, b                                        ; $6103: $78
	add  a                                           ; $6104: $87
	ld   a, b                                        ; $6105: $78
	adc  b                                           ; $6106: $88
	adc  b                                           ; $6107: $88
	adc  b                                           ; $6108: $88
	sbc  c                                           ; $6109: $99
	sbc  c                                           ; $610a: $99
	adc  b                                           ; $610b: $88
	adc  b                                           ; $610c: $88
	adc  b                                           ; $610d: $88
	adc  b                                           ; $610e: $88
	ld   a, b                                        ; $610f: $78
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
	sbc  b                                           ; $6126: $98
	adc  b                                           ; $6127: $88
	adc  b                                           ; $6128: $88
	adc  b                                           ; $6129: $88
	adc  b                                           ; $612a: $88
	adc  b                                           ; $612b: $88
	ld   a, b                                        ; $612c: $78
	adc  b                                           ; $612d: $88
	adc  b                                           ; $612e: $88
	adc  b                                           ; $612f: $88
	adc  b                                           ; $6130: $88
	sbc  b                                           ; $6131: $98
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
	adc  c                                           ; $613d: $89
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
	adc  c                                           ; $619e: $89
	sbc  c                                           ; $619f: $99
	sbc  l                                           ; $61a0: $9d
	ld   sp, hl                                      ; $61a1: $f9
	inc  de                                          ; $61a2: $13
	cp   $11                                         ; $61a3: $fe $11
	db   $fd                                         ; $61a5: $fd
	ld   de, $31ff                                   ; $61a6: $11 $ff $31
	sbc  a                                           ; $61a9: $9f
	sub  l                                           ; $61aa: $95
	ld   a, e                                        ; $61ab: $7b
	and  [hl]                                        ; $61ac: $a6
	ld   l, d                                        ; $61ad: $6a
	add  e                                           ; $61ae: $83
	ld   e, h                                        ; $61af: $5c
	rst  $30                                         ; $61b0: $f7
	dec  d                                           ; $61b1: $15
	ret                                              ; $61b2: $c9


	scf                                              ; $61b3: $37
	xor  b                                           ; $61b4: $a8
	ld   a, d                                        ; $61b5: $7a
	ld   [hl], l                                     ; $61b6: $75
	adc  c                                           ; $61b7: $89
	ld   e, c                                        ; $61b8: $59
	rst  $38                                         ; $61b9: $ff
	sub  h                                           ; $61ba: $94
	ld   a, e                                        ; $61bb: $7b
	ld   d, [hl]                                     ; $61bc: $56
	add  [hl]                                        ; $61bd: $86
	ld   [de], a                                     ; $61be: $12
	halt                                             ; $61bf: $76
	ld   b, h                                        ; $61c0: $44
	add  [hl]                                        ; $61c1: $86
	ld   d, a                                        ; $61c2: $57
	cp   l                                           ; $61c3: $bd
	add  [hl]                                        ; $61c4: $86
	cp   e                                           ; $61c5: $bb
	ld   [hl], l                                     ; $61c6: $75
	ld   [hl], a                                     ; $61c7: $77
	ld   h, l                                        ; $61c8: $65
	ld   a, b                                        ; $61c9: $78
	sbc  c                                           ; $61ca: $99
	ld   d, a                                        ; $61cb: $57
	xor  e                                           ; $61cc: $ab
	cp   e                                           ; $61cd: $bb
	cp   c                                           ; $61ce: $b9
	halt                                             ; $61cf: $76
	ld   d, [hl]                                     ; $61d0: $56
	ld   d, d                                        ; $61d1: $52
	ld   b, [hl]                                     ; $61d2: $46
	ld   d, l                                        ; $61d3: $55
	ld   l, c                                        ; $61d4: $69
	cp   d                                           ; $61d5: $ba
	cp   a                                           ; $61d6: $bf
	db   $fc                                         ; $61d7: $fc
	sub  [hl]                                        ; $61d8: $96
	ld   b, h                                        ; $61d9: $44
	ld   b, e                                        ; $61da: $43
	inc  hl                                          ; $61db: $23
	dec  [hl]                                        ; $61dc: $35
	ld   h, [hl]                                     ; $61dd: $66
	xor  e                                           ; $61de: $ab
	rst  JumpTable                                         ; $61df: $df
	rst  $38                                         ; $61e0: $ff
	rst  $38                                         ; $61e1: $ff
	cp   b                                           ; $61e2: $b8
	ld   de, $1101                                   ; $61e3: $11 $01 $11
	inc  d                                           ; $61e6: $14
	ld   [hl], a                                     ; $61e7: $77
	cp   a                                           ; $61e8: $bf
	rst  $38                                         ; $61e9: $ff
	rst  $38                                         ; $61ea: $ff
	cp   $d7                                         ; $61eb: $fe $d7
	ld   de, $1111                                   ; $61ed: $11 $11 $11
	ld   d, $ab                                      ; $61f0: $16 $ab
	rst  $28                                         ; $61f2: $ef
	rst  $38                                         ; $61f3: $ff
	rst  $38                                         ; $61f4: $ff
	rst  $38                                         ; $61f5: $ff
	and  c                                           ; $61f6: $a1
	ld   de, $1111                                   ; $61f7: $11 $11 $11
	ld   a, [hl-]                                    ; $61fa: $3a
	rst  $28                                         ; $61fb: $ef
	rst  $38                                         ; $61fc: $ff
	rst  $38                                         ; $61fd: $ff
	rst  $38                                         ; $61fe: $ff
	ei                                               ; $61ff: $fb
	ld   b, c                                        ; $6200: $41
	ld   de, $1211                                   ; $6201: $11 $11 $12
	rst  JumpTable                                         ; $6204: $df
	rst  $38                                         ; $6205: $ff
	rst  $38                                         ; $6206: $ff
	rst  $38                                         ; $6207: $ff
	db   $fc                                         ; $6208: $fc
	sub  c                                           ; $6209: $91
	ld   de, $1111                                   ; $620a: $11 $11 $11
	ld   a, a                                        ; $620d: $7f
	rst  $38                                         ; $620e: $ff
	rst  $38                                         ; $620f: $ff
	rst  $38                                         ; $6210: $ff
	db   $fc                                         ; $6211: $fc
	sub  h                                           ; $6212: $94
	ld   de, $1111                                   ; $6213: $11 $11 $11
	ld   a, a                                        ; $6216: $7f
	rst  $38                                         ; $6217: $ff
	rst  $38                                         ; $6218: $ff
	rst  $38                                         ; $6219: $ff
	db   $eb                                         ; $621a: $eb
	add  e                                           ; $621b: $83
	ld   de, $1111                                   ; $621c: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $621f: $cf
	rst  $38                                         ; $6220: $ff
	rst  $38                                         ; $6221: $ff
	rst  $38                                         ; $6222: $ff
	jp   c, $1161                                    ; $6223: $da $61 $11

	inc  d                                           ; $6226: $14
	ld   d, $ff                                      ; $6227: $16 $ff
	rst  $38                                         ; $6229: $ff
	rst  $38                                         ; $622a: $ff
	db   $fd                                         ; $622b: $fd
	xor  b                                           ; $622c: $a8
	ld   d, c                                        ; $622d: $51
	ld   de, $4f18                                   ; $622e: $11 $18 $4f
	rst  $38                                         ; $6231: $ff
	rst  $38                                         ; $6232: $ff
	rst  $38                                         ; $6233: $ff
	jp   c, $3178                                    ; $6234: $da $78 $31

	ld   de, $7f8a                                   ; $6237: $11 $8a $7f
	rst  $38                                         ; $623a: $ff
	rst  $38                                         ; $623b: $ff
	call c, Call_0cb_78b9                            ; $623c: $dc $b9 $78
	ld   sp, $ed11                                   ; $623f: $31 $11 $ed
	xor  a                                           ; $6242: $af
	rst  $38                                         ; $6243: $ff
	rst  $38                                         ; $6244: $ff
	xor  c                                           ; $6245: $a9
	xor  e                                           ; $6246: $ab
	adc  e                                           ; $6247: $8b
	ld   d, c                                        ; $6248: $51
	ld   de, $9f8f                                   ; $6249: $11 $8f $9f
	rst  $38                                         ; $624c: $ff
	rst  $38                                         ; $624d: $ff
	ld   [hl], a                                     ; $624e: $77
	xor  e                                           ; $624f: $ab
	adc  e                                           ; $6250: $8b
	add  d                                           ; $6251: $82
	ld   de, $af1f                                   ; $6252: $11 $1f $af
	rst  $38                                         ; $6255: $ff
	rst  $38                                         ; $6256: $ff
	ld   d, h                                        ; $6257: $54
	adc  l                                           ; $6258: $8d
	sbc  e                                           ; $6259: $9b
	or   a                                           ; $625a: $b7
	ld   de, $fc1f                                   ; $625b: $11 $1f $fc
	rst  $38                                         ; $625e: $ff
	rst  $38                                         ; $625f: $ff
	or   d                                           ; $6260: $b2
	ld   e, e                                        ; $6261: $5b
	jp   z, $81ea                                    ; $6262: $ca $ea $81

	ld   de, $fffc                                   ; $6265: $11 $fc $ff
	rst  $38                                         ; $6268: $ff
	db   $f4                                         ; $6269: $f4
	ld   h, $cb                                      ; $626a: $26 $cb
	adc  $b6                                         ; $626c: $ce $b6

jr_0cb_626e:
	ld   de, $df1f                                   ; $626e: $11 $1f $df
	rst  $38                                         ; $6271: $ff
	db   $fd                                         ; $6272: $fd
	ld   de, $ae8d                                   ; $6273: $11 $8d $ae
	ei                                               ; $6276: $fb
	ld   h, c                                        ; $6277: $61
	jr   @+$01                                       ; $6278: $18 $ff

	rst  $38                                         ; $627a: $ff
	rst  $38                                         ; $627b: $ff
	or   c                                           ; $627c: $b1
	add  hl, de                                      ; $627d: $19
	db   $db                                         ; $627e: $db
	cp   $b4                                         ; $627f: $fe $b4
	ld   de, $ff9f                                   ; $6281: $11 $9f $ff
	rst  $38                                         ; $6284: $ff
	rst  $30                                         ; $6285: $f7
	ld   de, $cf9c                                   ; $6286: $11 $9c $cf
	db   $fd                                         ; $6289: $fd
	ld   h, c                                        ; $628a: $61
	ld   d, $ff                                      ; $628b: $16 $ff
	rst  $38                                         ; $628d: $ff
	rst  $38                                         ; $628e: $ff
	add  c                                           ; $628f: $81
	jr   jr_0cb_626e                                 ; $6290: $18 $dc

	rst  $38                                         ; $6292: $ff
	ret  c                                           ; $6293: $d8

	ld   de, $ff1f                                   ; $6294: $11 $1f $ff
	rst  $38                                         ; $6297: $ff
	ld   sp, hl                                      ; $6298: $f9
	ld   de, $ef5c                                   ; $6299: $11 $5c $ef
	rst  $38                                         ; $629c: $ff
	or   c                                           ; $629d: $b1
	ld   de, $ffff                                   ; $629e: $11 $ff $ff
	rst  $38                                         ; $62a1: $ff
	pop  af                                          ; $62a2: $f1
	ld   de, $ffce                                   ; $62a3: $11 $ce $ff
	cp   $11                                         ; $62a6: $fe $11
	ld   a, [de]                                     ; $62a8: $1a
	rst  $38                                         ; $62a9: $ff
	rst  $38                                         ; $62aa: $ff
	rst  $38                                         ; $62ab: $ff
	ld   de, $ef18                                   ; $62ac: $11 $18 $ef
	rst  $38                                         ; $62af: $ff
	db   $fc                                         ; $62b0: $fc
	ld   de, $ff1f                                   ; $62b1: $11 $1f $ff
	rst  $38                                         ; $62b4: $ff
	db   $fd                                         ; $62b5: $fd
	ld   de, $ff1e                                   ; $62b6: $11 $1e $ff
	rst  $38                                         ; $62b9: $ff
	pop  af                                          ; $62ba: $f1
	ld   de, $ff1f                                   ; $62bb: $11 $1f $ff
	rst  $38                                         ; $62be: $ff
	db   $f4                                         ; $62bf: $f4
	ld   de, $ff3e                                   ; $62c0: $11 $3e $ff
	rst  $38                                         ; $62c3: $ff
	pop  hl                                          ; $62c4: $e1
	ld   de, $ff1f                                   ; $62c5: $11 $1f $ff
	rst  $38                                         ; $62c8: $ff
	pop  af                                          ; $62c9: $f1
	ld   de, $ff4f                                   ; $62ca: $11 $4f $ff
	rst  $38                                         ; $62cd: $ff
	pop  de                                          ; $62ce: $d1
	ld   de, $ff1f                                   ; $62cf: $11 $1f $ff
	rst  $38                                         ; $62d2: $ff
	pop  af                                          ; $62d3: $f1
	ld   de, $ff3f                                   ; $62d4: $11 $3f $ff

Call_0cb_62d7:
	rst  $38                                         ; $62d7: $ff
	pop  de                                          ; $62d8: $d1
	ld   de, $ff1f                                   ; $62d9: $11 $1f $ff
	rst  $38                                         ; $62dc: $ff
	pop  af                                          ; $62dd: $f1
	ld   de, $ff1f                                   ; $62de: $11 $1f $ff
	rst  $38                                         ; $62e1: $ff
	pop  af                                          ; $62e2: $f1
	ld   de, $ff19                                   ; $62e3: $11 $19 $ff
	rst  $38                                         ; $62e6: $ff
	or   $11                                         ; $62e7: $f6 $11
	ld   e, $ff                                      ; $62e9: $1e $ff
	rst  $38                                         ; $62eb: $ff
	db   $f4                                         ; $62ec: $f4
	ld   de, rAUD1LEN                                   ; $62ed: $11 $11 $ff
	rst  $38                                         ; $62f0: $ff
	cp   $11                                         ; $62f1: $fe $11
	ld   [de], a                                     ; $62f3: $12
	rst  $38                                         ; $62f4: $ff
	rst  $38                                         ; $62f5: $ff
	cp   $11                                         ; $62f6: $fe $11
	ld   de, $ff1f                                   ; $62f8: $11 $1f $ff
	rst  $38                                         ; $62fb: $ff
	ld   hl, $bf11                                   ; $62fc: $21 $11 $bf
	rst  $38                                         ; $62ff: $ff
	rst  $38                                         ; $6300: $ff
	ld   d, c                                        ; $6301: $51
	ld   de, rAUD1HIGH                                   ; $6302: $11 $14 $ff
	rst  $38                                         ; $6305: $ff
	pop  af                                          ; $6306: $f1
	ld   de, $ff1f                                   ; $6307: $11 $1f $ff
	rst  $38                                         ; $630a: $ff
	pop  af                                          ; $630b: $f1
	ld   de, $2f11                                   ; $630c: $11 $11 $2f
	rst  $38                                         ; $630f: $ff
	db   $fd                                         ; $6310: $fd
	ld   de, rAUD1LEN                                   ; $6311: $11 $11 $ff
	rst  $38                                         ; $6314: $ff
	rst  $38                                         ; $6315: $ff
	ld   de, $1111                                   ; $6316: $11 $11 $11
	rst  $38                                         ; $6319: $ff
	rst  $38                                         ; $631a: $ff
	pop  de                                          ; $631b: $d1
	ld   de, $ff1f                                   ; $631c: $11 $1f $ff
	rst  $38                                         ; $631f: $ff
	pop  af                                          ; $6320: $f1
	ld   de, $1f11                                   ; $6321: $11 $11 $1f
	rst  $38                                         ; $6324: $ff
	rst  $38                                         ; $6325: $ff
	ld   de, $9f11                                   ; $6326: $11 $11 $9f
	rst  $38                                         ; $6329: $ff
	rst  $38                                         ; $632a: $ff
	ld   de, $1111                                   ; $632b: $11 $11 $11
	rst  $38                                         ; $632e: $ff
	rst  $38                                         ; $632f: $ff
	pop  af                                          ; $6330: $f1
	ld   de, rAUD1HIGH                                   ; $6331: $11 $14 $ff
	rst  $38                                         ; $6334: $ff
	ldh  a, [c]                                      ; $6335: $f2
	ld   de, $1b11                                   ; $6336: $11 $11 $1b
	rst  $38                                         ; $6339: $ff
	rst  $38                                         ; $633a: $ff
	ld   hl, $1f11                                   ; $633b: $21 $11 $1f
	rst  $38                                         ; $633e: $ff
	rst  $38                                         ; $633f: $ff
	ld   [hl], c                                     ; $6340: $71
	ld   de, $4f11                                   ; $6341: $11 $11 $4f
	rst  $38                                         ; $6344: $ff
	ld   a, [$1111]                                  ; $6345: $fa $11 $11
	rst  $38                                         ; $6348: $ff
	rst  $38                                         ; $6349: $ff
	ld   a, [$1111]                                  ; $634a: $fa $11 $11
	inc  d                                           ; $634d: $14
	rst  $38                                         ; $634e: $ff
	rst  $38                                         ; $634f: $ff
	pop  af                                          ; $6350: $f1
	ld   de, $ff1f                                   ; $6351: $11 $1f $ff
	rst  $38                                         ; $6354: $ff
	and  c                                           ; $6355: $a1
	ld   de, rAUD1LEN                                   ; $6356: $11 $11 $ff
	rst  $38                                         ; $6359: $ff
	cp   $11                                         ; $635a: $fe $11
	ld   de, $ffff                                   ; $635c: $11 $ff $ff
	rst  $30                                         ; $635f: $f7
	ld   de, $1f11                                   ; $6360: $11 $11 $1f
	rst  $38                                         ; $6363: $ff
	rst  $38                                         ; $6364: $ff
	and  c                                           ; $6365: $a1
	ld   de, $ff5f                                   ; $6366: $11 $5f $ff
	rst  $38                                         ; $6369: $ff
	ld   sp, $1c11                                   ; $636a: $31 $11 $1c
	rst  $38                                         ; $636d: $ff
	rst  $38                                         ; $636e: $ff
	pop  af                                          ; $636f: $f1
	ld   de, $ff19                                   ; $6370: $11 $19 $ff
	rst  $38                                         ; $6373: $ff
	pop  hl                                          ; $6374: $e1
	ld   de, rAUD1HIGH                                   ; $6375: $11 $14 $ff
	rst  $38                                         ; $6378: $ff
	db   $fc                                         ; $6379: $fc
	ld   de, $cf14                                   ; $637a: $11 $14 $cf
	rst  $38                                         ; $637d: $ff
	or   $11                                         ; $637e: $f6 $11
	ld   de, $ffff                                   ; $6380: $11 $ff $ff
	rst  $38                                         ; $6383: $ff
	ld   de, $7f11                                   ; $6384: $11 $11 $7f
	rst  $38                                         ; $6387: $ff
	rst  $38                                         ; $6388: $ff
	ld   de, $7f11                                   ; $6389: $11 $11 $7f
	rst  $38                                         ; $638c: $ff
	rst  $38                                         ; $638d: $ff
	pop  bc                                          ; $638e: $c1
	ld   de, $ff29                                   ; $638f: $11 $29 $ff
	rst  $38                                         ; $6392: $ff
	add  c                                           ; $6393: $81
	ld   de, $ff1a                                   ; $6394: $11 $1a $ff
	rst  $38                                         ; $6397: $ff
	di                                               ; $6398: $f3
	ld   de, $9f13                                   ; $6399: $11 $13 $9f
	rst  $38                                         ; $639c: $ff
	ldh  a, [c]                                      ; $639d: $f2
	ld   de, $bf12                                   ; $639e: $11 $12 $bf
	rst  $38                                         ; $63a1: $ff
	rst  $38                                         ; $63a2: $ff
	ld   de, $3c11                                   ; $63a3: $11 $11 $3c
	rst  $38                                         ; $63a6: $ff
	rst  $38                                         ; $63a7: $ff
	ld   de, $4b11                                   ; $63a8: $11 $11 $4b
	rst  $38                                         ; $63ab: $ff
	rst  $38                                         ; $63ac: $ff
	pop  af                                          ; $63ad: $f1
	ld   de, $ef12                                   ; $63ae: $11 $12 $ef
	rst  $38                                         ; $63b1: $ff
	or   c                                           ; $63b2: $b1
	ld   de, $df16                                   ; $63b3: $11 $16 $df
	rst  $38                                         ; $63b6: $ff
	ld   a, [$2111]                                  ; $63b7: $fa $11 $21
	ccf                                              ; $63ba: $3f
	rst  $38                                         ; $63bb: $ff
	ld   hl, sp+$11                                  ; $63bc: $f8 $11
	ld   de, $ff6f                                   ; $63be: $11 $6f $ff
	rst  $38                                         ; $63c1: $ff
	add  d                                           ; $63c2: $82
	inc  sp                                          ; $63c3: $33
	inc  d                                           ; $63c4: $14
	rst  $38                                         ; $63c5: $ff
	rst  $38                                         ; $63c6: $ff
	ld   h, c                                        ; $63c7: $61

jr_0cb_63c8:
	ld   de, rAUD1HIGH                                   ; $63c8: $11 $14 $ff
	rst  $38                                         ; $63cb: $ff
	ld   hl, sp+$55                                  ; $63cc: $f8 $55
	ld   sp, $ff5f                                   ; $63ce: $31 $5f $ff
	push af                                          ; $63d1: $f5
	ld   de, $3e11                                   ; $63d2: $11 $11 $3e
	rst  $38                                         ; $63d5: $ff
	rst  $38                                         ; $63d6: $ff
	sbc  b                                           ; $63d7: $98
	ld   [hl], h                                     ; $63d8: $74
	dec  d                                           ; $63d9: $15
	rst  $28                                         ; $63da: $ef
	rst  $38                                         ; $63db: $ff
	ld   [hl], c                                     ; $63dc: $71
	ld   de, $cf12                                   ; $63dd: $11 $12 $cf
	rst  $38                                         ; $63e0: $ff
	db   $fc                                         ; $63e1: $fc
	xor  c                                           ; $63e2: $a9
	ld   [hl], c                                     ; $63e3: $71
	dec  l                                           ; $63e4: $2d
	rst  $38                                         ; $63e5: $ff
	ld   a, [$1111]                                  ; $63e6: $fa $11 $11
	ld   d, $ff                                      ; $63e9: $16 $ff
	rst  $38                                         ; $63eb: $ff
	db   $fc                                         ; $63ec: $fc
	reti                                             ; $63ed: $d9


	ld   hl, $ffae                                   ; $63ee: $21 $ae $ff
	or   h                                           ; $63f1: $b4
	ld   de, $4f11                                   ; $63f2: $11 $11 $4f
	rst  $38                                         ; $63f5: $ff
	rst  $38                                         ; $63f6: $ff
	cp   $e5                                         ; $63f7: $fe $e5
	jr   jr_0cb_63c8                                 ; $63f9: $18 $cd

	db   $eb                                         ; $63fb: $eb
	sub  c                                           ; $63fc: $91
	ld   de, $af11                                   ; $63fd: $11 $11 $af
	rst  $38                                         ; $6400: $ff
	rst  $38                                         ; $6401: $ff
	cp   $c1                                         ; $6402: $fe $c1
	ld   c, l                                        ; $6404: $4d
	cp   h                                           ; $6405: $bc
	jp   z, $1141                                    ; $6406: $ca $41 $11

	inc  d                                           ; $6409: $14
	xor  a                                           ; $640a: $af
	rst  $38                                         ; $640b: $ff
	rst  $38                                         ; $640c: $ff
	rst  $38                                         ; $640d: $ff
	sub  c                                           ; $640e: $91
	sbc  l                                           ; $640f: $9d
	xor  e                                           ; $6410: $ab
	xor  e                                           ; $6411: $ab
	ld   de, $1311                                   ; $6412: $11 $11 $13
	sbc  a                                           ; $6415: $9f
	rst  $38                                         ; $6416: $ff
	rst  $38                                         ; $6417: $ff
	rst  $38                                         ; $6418: $ff
	ld   h, d                                        ; $6419: $62
	db   $ec                                         ; $641a: $ec
	xor  e                                           ; $641b: $ab
	sbc  b                                           ; $641c: $98
	ld   de, $1311                                   ; $641d: $11 $11 $13
	xor  a                                           ; $6420: $af
	rst  $38                                         ; $6421: $ff
	rst  $38                                         ; $6422: $ff
	rst  $38                                         ; $6423: $ff
	ld   d, l                                        ; $6424: $55
	ld   a, [$9889]                                  ; $6425: $fa $89 $98
	ld   de, $1111                                   ; $6428: $11 $11 $11
	sbc  a                                           ; $642b: $9f
	rst  $38                                         ; $642c: $ff
	rst  $38                                         ; $642d: $ff
	rst  $38                                         ; $642e: $ff
	ld   l, b                                        ; $642f: $68
	ld   a, [$8878]                                  ; $6430: $fa $78 $88
	ld   de, $1111                                   ; $6433: $11 $11 $11
	ld   a, a                                        ; $6436: $7f
	rst  $38                                         ; $6437: $ff
	rst  $38                                         ; $6438: $ff
	rst  $38                                         ; $6439: $ff
	xor  e                                           ; $643a: $ab
	ld   sp, hl                                      ; $643b: $f9
	ld   h, a                                        ; $643c: $67
	ld   [hl], a                                     ; $643d: $77
	ld   de, $1111                                   ; $643e: $11 $11 $11
	ld   l, a                                        ; $6441: $6f
	rst  $38                                         ; $6442: $ff
	rst  $38                                         ; $6443: $ff
	rst  $38                                         ; $6444: $ff
	ld   a, [$57fd]                                  ; $6445: $fa $fd $57
	halt                                             ; $6448: $76
	ld   hl, $1111                                   ; $6449: $21 $11 $11
	inc  e                                           ; $644c: $1c
	rst  $38                                         ; $644d: $ff
	rst  $38                                         ; $644e: $ff
	rst  $38                                         ; $644f: $ff
	db   $fd                                         ; $6450: $fd
	rst  $38                                         ; $6451: $ff
	sub  [hl]                                        ; $6452: $96
	add  a                                           ; $6453: $87
	ld   d, c                                        ; $6454: $51
	ld   de, $1211                                   ; $6455: $11 $11 $12
	adc  $ff                                         ; $6458: $ce $ff
	rst  $38                                         ; $645a: $ff
	rst  $38                                         ; $645b: $ff
	rst  $38                                         ; $645c: $ff
	jp   hl                                          ; $645d: $e9


	ld   a, b                                        ; $645e: $78
	ld   h, e                                        ; $645f: $63
	ld   de, $1111                                   ; $6460: $11 $11 $11
	add  hl, de                                      ; $6463: $19
	rst  $28                                         ; $6464: $ef
	rst  $38                                         ; $6465: $ff
	rst  $38                                         ; $6466: $ff
	rst  $38                                         ; $6467: $ff
	rst  $38                                         ; $6468: $ff
	sbc  b                                           ; $6469: $98
	add  a                                           ; $646a: $87
	ld   b, c                                        ; $646b: $41
	ld   de, $1111                                   ; $646c: $11 $11 $11
	adc  h                                           ; $646f: $8c
	rst  $38                                         ; $6470: $ff
	rst  $38                                         ; $6471: $ff
	rst  $38                                         ; $6472: $ff
	rst  $38                                         ; $6473: $ff
	db   $fc                                         ; $6474: $fc
	xor  c                                           ; $6475: $a9
	ld   [hl], e                                     ; $6476: $73
	ld   de, $1111                                   ; $6477: $11 $11 $11
	inc  de                                          ; $647a: $13
	xor  [hl]                                        ; $647b: $ae
	rst  $38                                         ; $647c: $ff
	rst  $38                                         ; $647d: $ff
	rst  $38                                         ; $647e: $ff
	rst  $38                                         ; $647f: $ff
	ld   a, [$5199]                                  ; $6480: $fa $99 $51
	ld   de, $1111                                   ; $6483: $11 $11 $11
	dec  d                                           ; $6486: $15
	xor  [hl]                                        ; $6487: $ae
	rst  $38                                         ; $6488: $ff
	rst  $38                                         ; $6489: $ff
	rst  $38                                         ; $648a: $ff
	rst  $38                                         ; $648b: $ff
	db   $db                                         ; $648c: $db
	cp   b                                           ; $648d: $b8
	ld   sp, $1111                                   ; $648e: $31 $11 $11
	ld   de, $9f15                                   ; $6491: $11 $15 $9f
	rst  $38                                         ; $6494: $ff
	rst  $38                                         ; $6495: $ff
	rst  $38                                         ; $6496: $ff
	rst  $38                                         ; $6497: $ff
	db   $fd                                         ; $6498: $fd
	cp   c                                           ; $6499: $b9
	ld   sp, $1111                                   ; $649a: $31 $11 $11
	ld   de, $7e14                                   ; $649d: $11 $14 $7e
	rst  $38                                         ; $64a0: $ff
	rst  $38                                         ; $64a1: $ff
	rst  $38                                         ; $64a2: $ff
	rst  $38                                         ; $64a3: $ff
	rst  $38                                         ; $64a4: $ff
	ret  c                                           ; $64a5: $d8

	ld   sp, $1111                                   ; $64a6: $31 $11 $11
	ld   de, $3911                                   ; $64a9: $11 $11 $39
	rst  $38                                         ; $64ac: $ff
	rst  $38                                         ; $64ad: $ff
	rst  $38                                         ; $64ae: $ff
	rst  $38                                         ; $64af: $ff
	rst  $38                                         ; $64b0: $ff
	db   $eb                                         ; $64b1: $eb
	ld   [hl], e                                     ; $64b2: $73
	ld   de, $1111                                   ; $64b3: $11 $11 $11
	ld   de, $df14                                   ; $64b6: $11 $14 $df
	rst  $38                                         ; $64b9: $ff

Call_0cb_64ba:
	rst  $38                                         ; $64ba: $ff
	rst  $38                                         ; $64bb: $ff
	rst  $38                                         ; $64bc: $ff
	cp   $b6                                         ; $64bd: $fe $b6
	ld   hl, $1111                                   ; $64bf: $21 $11 $11
	ld   de, $2d11                                   ; $64c2: $11 $11 $2d
	rst  $38                                         ; $64c5: $ff
	rst  $38                                         ; $64c6: $ff
	rst  $38                                         ; $64c7: $ff
	rst  $38                                         ; $64c8: $ff
	rst  $38                                         ; $64c9: $ff
	ei                                               ; $64ca: $fb
	ld   [hl], d                                     ; $64cb: $72
	ld   de, $1111                                   ; $64cc: $11 $11 $11
	ld   de, $7f11                                   ; $64cf: $11 $11 $7f
	rst  $38                                         ; $64d2: $ff
	rst  $38                                         ; $64d3: $ff
	rst  $38                                         ; $64d4: $ff
	rst  $38                                         ; $64d5: $ff
	rst  $38                                         ; $64d6: $ff
	db   $db                                         ; $64d7: $db
	ld   h, c                                        ; $64d8: $61
	ld   de, $1111                                   ; $64d9: $11 $11 $11
	ld   de, $af11                                   ; $64dc: $11 $11 $af
	rst  $38                                         ; $64df: $ff
	rst  $38                                         ; $64e0: $ff
	rst  $38                                         ; $64e1: $ff
	rst  $38                                         ; $64e2: $ff
	rst  $38                                         ; $64e3: $ff
	db   $fc                                         ; $64e4: $fc
	ld   h, c                                        ; $64e5: $61
	ld   de, $1111                                   ; $64e6: $11 $11 $11
	ld   de, $4b11                                   ; $64e9: $11 $11 $4b
	rst  $38                                         ; $64ec: $ff
	rst  $38                                         ; $64ed: $ff
	rst  $38                                         ; $64ee: $ff
	rst  $38                                         ; $64ef: $ff
	rst  $38                                         ; $64f0: $ff
	rst  $38                                         ; $64f1: $ff
	and  a                                           ; $64f2: $a7
	ld   hl, $1111                                   ; $64f3: $21 $11 $11
	ld   de, $1411                                   ; $64f6: $11 $11 $14
	xor  a                                           ; $64f9: $af
	rst  $38                                         ; $64fa: $ff
	rst  $38                                         ; $64fb: $ff
	rst  $38                                         ; $64fc: $ff
	rst  $38                                         ; $64fd: $ff
	rst  $38                                         ; $64fe: $ff
	db   $fd                                         ; $64ff: $fd
	and  l                                           ; $6500: $a5
	ld   de, $1111                                   ; $6501: $11 $11 $11
	ld   de, $1511                                   ; $6504: $11 $11 $15
	sbc  [hl]                                        ; $6507: $9e
	rst  $38                                         ; $6508: $ff
	rst  $38                                         ; $6509: $ff
	rst  $38                                         ; $650a: $ff
	rst  $38                                         ; $650b: $ff
	rst  $38                                         ; $650c: $ff
	cp   $c6                                         ; $650d: $fe $c6
	ld   de, $1111                                   ; $650f: $11 $11 $11
	ld   de, $1211                                   ; $6512: $11 $11 $12
	ld   e, b                                        ; $6515: $58
	rst  JumpTable                                         ; $6516: $df
	rst  $38                                         ; $6517: $ff
	rst  $38                                         ; $6518: $ff
	rst  $38                                         ; $6519: $ff
	rst  $38                                         ; $651a: $ff
	cp   $ba                                         ; $651b: $fe $ba
	sub  a                                           ; $651d: $97
	ld   h, l                                        ; $651e: $65
	ld   b, d                                        ; $651f: $42
	ld   de, $1111                                   ; $6520: $11 $11 $11
	ld   [de], a                                     ; $6523: $12
	ld   [hl+], a                                    ; $6524: $22
	inc  [hl]                                        ; $6525: $34
	ld   d, [hl]                                     ; $6526: $56
	ld   a, c                                        ; $6527: $79
	cp   e                                           ; $6528: $bb
	call $ddee                                       ; $6529: $cd $ee $dd
	rst  $28                                         ; $652c: $ef
	rst  $38                                         ; $652d: $ff
	cp   $dc                                         ; $652e: $fe $dc
	cp   c                                           ; $6530: $b9
	ld   h, l                                        ; $6531: $65
	ld   [hl-], a                                    ; $6532: $32
	ld   de, $1111                                   ; $6533: $11 $11 $11
	ld   de, $3512                                   ; $6536: $11 $12 $35
	ld   a, b                                        ; $6539: $78
	cp   h                                           ; $653a: $bc
	rst  $28                                         ; $653b: $ef
	rst  $38                                         ; $653c: $ff
	rst  $38                                         ; $653d: $ff
	rst  $38                                         ; $653e: $ff
	rst  $38                                         ; $653f: $ff
	cp   $c9                                         ; $6540: $fe $c9
	ld   h, e                                        ; $6542: $63
	ld   de, $1111                                   ; $6543: $11 $11 $11
	ld   de, $1211                                   ; $6546: $11 $11 $12
	ld   b, [hl]                                     ; $6549: $46
	sbc  d                                           ; $654a: $9a
	cp   l                                           ; $654b: $bd
	rst  $38                                         ; $654c: $ff
	rst  $38                                         ; $654d: $ff
	rst  $38                                         ; $654e: $ff
	rst  $38                                         ; $654f: $ff
	rst  $38                                         ; $6550: $ff
	db   $fd                                         ; $6551: $fd
	cp   b                                           ; $6552: $b8
	ld   d, e                                        ; $6553: $53
	ld   de, $1111                                   ; $6554: $11 $11 $11
	ld   de, $1211                                   ; $6557: $11 $11 $12
	ld   b, [hl]                                     ; $655a: $46
	adc  d                                           ; $655b: $8a
	cp   h                                           ; $655c: $bc
	xor  $ff                                         ; $655d: $ee $ff
	rst  $38                                         ; $655f: $ff
	rst  $38                                         ; $6560: $ff
	rst  $38                                         ; $6561: $ff
	cp   $c9                                         ; $6562: $fe $c9
	add  [hl]                                        ; $6564: $86
	ld   b, d                                        ; $6565: $42
	ld   de, $1111                                   ; $6566: $11 $11 $11
	ld   de, $3411                                   ; $6569: $11 $11 $34
	ld   h, a                                        ; $656c: $67
	adc  d                                           ; $656d: $8a
	cp   h                                           ; $656e: $bc
	rst  $28                                         ; $656f: $ef
	rst  $38                                         ; $6570: $ff
	rst  $38                                         ; $6571: $ff
	rst  $38                                         ; $6572: $ff
	rst  $38                                         ; $6573: $ff
	db   $fd                                         ; $6574: $fd
	cp   b                                           ; $6575: $b8
	ld   h, h                                        ; $6576: $64
	ld   de, $1111                                   ; $6577: $11 $11 $11
	ld   de, $1211                                   ; $657a: $11 $11 $12
	ld   b, [hl]                                     ; $657d: $46
	sbc  d                                           ; $657e: $9a
	cp   [hl]                                        ; $657f: $be
	rst  $38                                         ; $6580: $ff
	rst  $38                                         ; $6581: $ff
	rst  $38                                         ; $6582: $ff
	rst  $38                                         ; $6583: $ff
	rst  $38                                         ; $6584: $ff
	db   $fd                                         ; $6585: $fd
	xor  b                                           ; $6586: $a8

Call_0cb_6587:
	ld   d, e                                        ; $6587: $53
	ld   de, $1111                                   ; $6588: $11 $11 $11
	ld   de, $2411                                   ; $658b: $11 $11 $24
	ld   l, b                                        ; $658e: $68
	sbc  e                                           ; $658f: $9b
	adc  $ef                                         ; $6590: $ce $ef
	rst  $38                                         ; $6592: $ff
	rst  $38                                         ; $6593: $ff
	rst  $38                                         ; $6594: $ff
	rst  $38                                         ; $6595: $ff
	db   $ed                                         ; $6596: $ed
	cp   d                                           ; $6597: $ba
	ld   [hl], l                                     ; $6598: $75
	ld   sp, $1111                                   ; $6599: $31 $11 $11
	ld   de, $0211                                   ; $659c: $11 $11 $02
	ld   b, [hl]                                     ; $659f: $46
	ld   a, c                                        ; $65a0: $79
	sbc  e                                           ; $65a1: $9b
	call $ffef                                       ; $65a2: $cd $ef $ff
	rst  $38                                         ; $65a5: $ff
	rst  $38                                         ; $65a6: $ff
	rst  $38                                         ; $65a7: $ff
	db   $ec                                         ; $65a8: $ec
	and  a                                           ; $65a9: $a7
	ld   d, d                                        ; $65aa: $52
	ld   de, $1111                                   ; $65ab: $11 $11 $11
	ld   de, $3411                                   ; $65ae: $11 $11 $34
	ld   h, a                                        ; $65b1: $67
	sbc  e                                           ; $65b2: $9b
	db   $dd                                         ; $65b3: $dd
	rst  $38                                         ; $65b4: $ff
	rst  $38                                         ; $65b5: $ff
	rst  $38                                         ; $65b6: $ff
	rst  $38                                         ; $65b7: $ff
	rst  $38                                         ; $65b8: $ff
	db   $ec                                         ; $65b9: $ec
	sub  a                                           ; $65ba: $97
	ld   d, e                                        ; $65bb: $53
	ld   de, $1111                                   ; $65bc: $11 $11 $11
	ld   de, $3411                                   ; $65bf: $11 $11 $34
	ld   h, a                                        ; $65c2: $67
	sbc  c                                           ; $65c3: $99
	call z, $ffde                                    ; $65c4: $cc $de $ff
	rst  $38                                         ; $65c7: $ff
	rst  $38                                         ; $65c8: $ff
	rst  $38                                         ; $65c9: $ff
	db   $ed                                         ; $65ca: $ed
	jp   z, $3175                                    ; $65cb: $ca $75 $31

	ld   de, $1111                                   ; $65ce: $11 $11 $11
	ld   de, $5623                                   ; $65d1: $11 $23 $56
	ld   a, b                                        ; $65d4: $78
	xor  h                                           ; $65d5: $ac
	xor  $ff                                         ; $65d6: $ee $ff
	rst  $38                                         ; $65d8: $ff
	rst  $38                                         ; $65d9: $ff
	rst  $38                                         ; $65da: $ff
	db   $fd                                         ; $65db: $fd
	ret                                              ; $65dc: $c9


	ld   [hl], l                                     ; $65dd: $75
	ld   sp, $1111                                   ; $65de: $31 $11 $11
	ld   de, $1311                                   ; $65e1: $11 $11 $13
	ld   d, a                                        ; $65e4: $57
	adc  b                                           ; $65e5: $88
	xor  h                                           ; $65e6: $ac
	rst  $28                                         ; $65e7: $ef
	rst  $38                                         ; $65e8: $ff
	rst  $38                                         ; $65e9: $ff
	rst  $38                                         ; $65ea: $ff
	rst  $38                                         ; $65eb: $ff
	db   $fd                                         ; $65ec: $fd
	jp   z, $3175                                    ; $65ed: $ca $75 $31

	ld   de, $1111                                   ; $65f0: $11 $11 $11
	ld   de, $4612                                   ; $65f3: $11 $12 $46
	ld   a, c                                        ; $65f6: $79
	xor  e                                           ; $65f7: $ab
	rst  JumpTable                                         ; $65f8: $df
	rst  $38                                         ; $65f9: $ff
	rst  $38                                         ; $65fa: $ff
	rst  $38                                         ; $65fb: $ff
	rst  $38                                         ; $65fc: $ff
	db   $fd                                         ; $65fd: $fd
	reti                                             ; $65fe: $d9


	ld   sp, $1111                                   ; $65ff: $31 $11 $11
	ld   de, $1111                                   ; $6602: $11 $11 $11
	ld   b, a                                        ; $6605: $47
	adc  $dd                                         ; $6606: $ce $dd
	rst  $38                                         ; $6608: $ff
	rst  $38                                         ; $6609: $ff
	rst  $38                                         ; $660a: $ff
	rst  $38                                         ; $660b: $ff
	ei                                               ; $660c: $fb
	xor  e                                           ; $660d: $ab
	ld   [hl], e                                     ; $660e: $73
	ld   de, $1111                                   ; $660f: $11 $11 $11
	ld   de, $9816                                   ; $6612: $11 $16 $98
	ld   a, e                                        ; $6615: $7b
	rst  $38                                         ; $6616: $ff
	rst  $38                                         ; $6617: $ff
	rst  $38                                         ; $6618: $ff
	rst  $38                                         ; $6619: $ff
	rst  $38                                         ; $661a: $ff
	rst  $38                                         ; $661b: $ff
	ld   sp, hl                                      ; $661c: $f9
	ld   e, b                                        ; $661d: $58
	add  e                                           ; $661e: $83
	ld   de, $1111                                   ; $661f: $11 $11 $11
	ld   de, $dc19                                   ; $6622: $11 $19 $dc
	sbc  h                                           ; $6625: $9c
	rst  $38                                         ; $6626: $ff
	rst  $38                                         ; $6627: $ff
	rst  $38                                         ; $6628: $ff
	rst  $38                                         ; $6629: $ff
	db   $ed                                         ; $662a: $ed
	rst  $28                                         ; $662b: $ef
	rst  $10                                         ; $662c: $d7
	ld   h, a                                        ; $662d: $67
	ld   [hl], d                                     ; $662e: $72
	ld   de, $1111                                   ; $662f: $11 $11 $11
	ld   de, $ed5d                                   ; $6632: $11 $5d $ed
	cp   [hl]                                        ; $6635: $be
	rst  $38                                         ; $6636: $ff
	rst  $38                                         ; $6637: $ff
	rst  $38                                         ; $6638: $ff
	rst  $38                                         ; $6639: $ff
	db   $db                                         ; $663a: $db
	rst  JumpTable                                         ; $663b: $df
	or   [hl]                                        ; $663c: $b6
	ld   l, b                                        ; $663d: $68
	ld   h, c                                        ; $663e: $61
	ld   de, $1111                                   ; $663f: $11 $11 $11
	ld   de, $fc7f                                   ; $6642: $11 $7f $fc
	cp   a                                           ; $6645: $bf
	rst  $38                                         ; $6646: $ff
	db   $fd                                         ; $6647: $fd
	rst  $38                                         ; $6648: $ff
	rst  $38                                         ; $6649: $ff
	jp   c, $c7df                                    ; $664a: $da $df $c7

	ld   a, b                                        ; $664d: $78
	ld   h, c                                        ; $664e: $61
	ld   de, $1111                                   ; $664f: $11 $11 $11
	ld   de, $fe8f                                   ; $6652: $11 $8f $fe
	cp   [hl]                                        ; $6655: $be
	rst  $38                                         ; $6656: $ff
	rst  $38                                         ; $6657: $ff
	rst  $38                                         ; $6658: $ff
	rst  $38                                         ; $6659: $ff
	reti                                             ; $665a: $d9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $665b: $cf
	jp   z, Jump_0cb_4186                            ; $665c: $ca $86 $41

	ld   de, $1111                                   ; $665f: $11 $11 $11
	ld   de, $ff7f                                   ; $6662: $11 $7f $ff
	db   $dd                                         ; $6665: $dd
	rst  $38                                         ; $6666: $ff
	rst  $38                                         ; $6667: $ff
	db   $dd                                         ; $6668: $dd
	rst  $28                                         ; $6669: $ef
	ld   a, [$ccbb]                                  ; $666a: $fa $bb $cc
	or   a                                           ; $666d: $b7
	ld   sp, $1111                                   ; $666e: $31 $11 $11
	ld   [de], a                                     ; $6671: $12
	ld   de, $ff7d                                   ; $6672: $11 $7d $ff
	db   $ec                                         ; $6675: $ec
	rst  $38                                         ; $6676: $ff
	rst  $38                                         ; $6677: $ff
	db   $eb                                         ; $6678: $eb
	cp   a                                           ; $6679: $bf
	ei                                               ; $667a: $fb
	xor  e                                           ; $667b: $ab
	cp   l                                           ; $667c: $bd
	jp   c, $1141                                    ; $667d: $da $41 $11

	ld   de, $1111                                   ; $6680: $11 $11 $11
	ld   l, h                                        ; $6683: $6c
	rst  $38                                         ; $6684: $ff
	db   $fd                                         ; $6685: $fd
	rst  $28                                         ; $6686: $ef
	rst  $38                                         ; $6687: $ff
	ei                                               ; $6688: $fb
	sbc  h                                           ; $6689: $9c
	db   $fd                                         ; $668a: $fd
	cp   e                                           ; $668b: $bb
	xor  h                                           ; $668c: $ac
	db   $ec                                         ; $668d: $ec
	ld   [hl], c                                     ; $668e: $71
	ld   de, $1111                                   ; $668f: $11 $11 $11
	ld   de, $ff5a                                   ; $6692: $11 $5a $ff
	cp   $ef                                         ; $6695: $fe $ef
	rst  $38                                         ; $6697: $ff
	db   $fd                                         ; $6698: $fd
	sbc  d                                           ; $6699: $9a
	xor  $dc                                         ; $669a: $ee $dc
	sbc  d                                           ; $669c: $9a
	call $11a4                                       ; $669d: $cd $a4 $11
	ld   de, $3111                                   ; $66a0: $11 $11 $31
	add  hl, hl                                      ; $66a3: $29
	rst  $28                                         ; $66a4: $ef
	rst  $38                                         ; $66a5: $ff
	sbc  $ff                                         ; $66a6: $de $ff

Call_0cb_66a8:
	rst  $38                                         ; $66a8: $ff
	and  a                                           ; $66a9: $a7
	cp   [hl]                                        ; $66aa: $be
	xor  $b8                                         ; $66ab: $ee $b8
	xor  l                                           ; $66ad: $ad
	ret  z                                           ; $66ae: $c8

	ld   de, $1111                                   ; $66af: $11 $11 $11
	ld   b, d                                        ; $66b2: $42
	inc  d                                           ; $66b3: $14
	xor  a                                           ; $66b4: $af
	rst  $38                                         ; $66b5: $ff
	db   $fd                                         ; $66b6: $fd
	rst  $28                                         ; $66b7: $ef
	rst  $38                                         ; $66b8: $ff

Call_0cb_66b9:
	rst  $20                                         ; $66b9: $e7
	ld   a, e                                        ; $66ba: $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66bb: $cf
	ld   sp, hl                                      ; $66bc: $f9
	ld   a, c                                        ; $66bd: $79
	cp   e                                           ; $66be: $bb
	ld   [hl], c                                     ; $66bf: $71
	ld   de, $4611                                   ; $66c0: $11 $11 $46
	inc  sp                                          ; $66c3: $33
	ld   e, e                                        ; $66c4: $5b
	rst  $38                                         ; $66c5: $ff
	rst  $38                                         ; $66c6: $ff
	call z, $fdef                                    ; $66c7: $cc $ef $fd
	add  a                                           ; $66ca: $87
	sbc  l                                           ; $66cb: $9d
	cp   $b8                                         ; $66cc: $fe $b8
	ld   a, b                                        ; $66ce: $78
	add  e                                           ; $66cf: $83
	ld   de, $1711                                   ; $66d0: $11 $11 $17
	halt                                             ; $66d3: $76
	ld   d, [hl]                                     ; $66d4: $56
	rst  JumpTable                                         ; $66d5: $df

Call_0cb_66d6:
	rst  $38                                         ; $66d6: $ff
	db   $fc                                         ; $66d7: $fc
	xor  l                                           ; $66d8: $ad
	rst  $38                                         ; $66d9: $ff
	jp   c, $df67                                    ; $66da: $da $67 $df

	db   $ec                                         ; $66dd: $ec
	sub  l                                           ; $66de: $95
	ld   b, d                                        ; $66df: $42
	ld   de, $1111                                   ; $66e0: $11 $11 $11
	ld   e, b                                        ; $66e3: $58
	and  a                                           ; $66e4: $a7
	xor  a                                           ; $66e5: $af
	rst  $38                                         ; $66e6: $ff
	rst  $38                                         ; $66e7: $ff
	db   $db                                         ; $66e8: $db
	xor  $ee                                         ; $66e9: $ee $ee
	xor  b                                           ; $66eb: $a8
	sbc  h                                           ; $66ec: $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66ed: $cf
	ret                                              ; $66ee: $c9


	ld   d, d                                        ; $66ef: $52
	ld   de, $1111                                   ; $66f0: $11 $11 $11
	inc  d                                           ; $66f3: $14
	adc  b                                           ; $66f4: $88
	sbc  a                                           ; $66f5: $9f
	rst  $38                                         ; $66f6: $ff
	rst  $38                                         ; $66f7: $ff
	cp   $ee                                         ; $66f8: $fe $ee
	sbc  $da                                         ; $66fa: $de $da
	xor  d                                           ; $66fc: $aa
	cp   h                                           ; $66fd: $bc
	jp   z, $1174                                    ; $66fe: $ca $74 $11

	ld   de, $1211                                   ; $6701: $11 $11 $12
	ld   h, a                                        ; $6704: $67
	sbc  l                                           ; $6705: $9d
	rst  $38                                         ; $6706: $ff
	rst  $38                                         ; $6707: $ff
	cp   $fe                                         ; $6708: $fe $fe
	sbc  $db                                         ; $670a: $de $db
	xor  c                                           ; $670c: $a9
	xor  e                                           ; $670d: $ab
	cp   e                                           ; $670e: $bb
	add  l                                           ; $670f: $85
	ld   de, $1111                                   ; $6710: $11 $11 $11
	ld   de, $7a45                                   ; $6713: $11 $45 $7a
	rst  $38                                         ; $6716: $ff
	rst  $38                                         ; $6717: $ff
	rst  $38                                         ; $6718: $ff
	cp   $ef                                         ; $6719: $fe $ef
	db   $db                                         ; $671b: $db
	cp   c                                           ; $671c: $b9
	sbc  b                                           ; $671d: $98
	sbc  c                                           ; $671e: $99
	add  l                                           ; $671f: $85
	ld   de, $1111                                   ; $6720: $11 $11 $11
	ld   [de], a                                     ; $6723: $12
	inc  [hl]                                        ; $6724: $34
	ld   e, b                                        ; $6725: $58
	cp   a                                           ; $6726: $bf
	rst  $38                                         ; $6727: $ff
	rst  $38                                         ; $6728: $ff
	cp   $dd                                         ; $6729: $fe $dd
	db   $ec                                         ; $672b: $ec
	cp   c                                           ; $672c: $b9
	halt                                             ; $672d: $76
	ld   h, a                                        ; $672e: $67
	sbc  c                                           ; $672f: $99
	ld   [hl], l                                     ; $6730: $75
	ld   sp, $1211                                   ; $6731: $31 $11 $12
	inc  sp                                          ; $6734: $33
	inc  [hl]                                        ; $6735: $34
	ld   d, a                                        ; $6736: $57
	xor  h                                           ; $6737: $ac
	call $dddd                                       ; $6738: $cd $dd $dd
	call c, Call_0cb_77a9                            ; $673b: $dc $a9 $77
	sbc  e                                           ; $673e: $9b
	call c, Call_0cb_66a8                            ; $673f: $dc $a8 $66
	ld   h, a                                        ; $6742: $67
	sbc  b                                           ; $6743: $98
	ld   h, h                                        ; $6744: $64
	ld   hl, $4623                                   ; $6745: $21 $23 $46
	ld   h, [hl]                                     ; $6748: $66
	ld   h, [hl]                                     ; $6749: $66
	ld   a, c                                        ; $674a: $79
	cp   h                                           ; $674b: $bc
	db   $dd                                         ; $674c: $dd
	jp   z, $9e88                                    ; $674d: $ca $88 $9e

	rst  $38                                         ; $6750: $ff
	db   $eb                                         ; $6751: $eb
	ld   [hl], l                                     ; $6752: $75
	ld   l, c                                        ; $6753: $69
	cp   h                                           ; $6754: $bc
	and  [hl]                                        ; $6755: $a6
	ld   sp, $5713                                   ; $6756: $31 $13 $57
	ld   [hl], l                                     ; $6759: $75
	ld   sp, $7a24                                   ; $675a: $31 $24 $7a
	xor  d                                           ; $675d: $aa
	adc  b                                           ; $675e: $88
	adc  c                                           ; $675f: $89
	call $cbed                                       ; $6760: $cd $ed $cb
	xor  d                                           ; $6763: $aa
	cp   h                                           ; $6764: $bc
	call z, Call_0cb_66a8                            ; $6765: $cc $a8 $66
	ld   h, a                                        ; $6768: $67
	ld   [hl], a                                     ; $6769: $77
	ld   h, l                                        ; $676a: $65
	inc  sp                                          ; $676b: $33
	inc  [hl]                                        ; $676c: $34
	ld   d, [hl]                                     ; $676d: $56
	ld   h, [hl]                                     ; $676e: $66
	ld   h, [hl]                                     ; $676f: $66
	ld   h, a                                        ; $6770: $67
	adc  c                                           ; $6771: $89
	xor  d                                           ; $6772: $aa
	xor  c                                           ; $6773: $a9
	xor  e                                           ; $6774: $ab
	cp   e                                           ; $6775: $bb
	cp   h                                           ; $6776: $bc
	xor  d                                           ; $6777: $aa
	xor  c                                           ; $6778: $a9
	sbc  c                                           ; $6779: $99
	sbc  b                                           ; $677a: $98
	halt                                             ; $677b: $76
	ld   h, [hl]                                     ; $677c: $66
	ld   h, [hl]                                     ; $677d: $66
	ld   h, [hl]                                     ; $677e: $66
	ld   h, l                                        ; $677f: $65
	ld   d, l                                        ; $6780: $55
	ld   d, [hl]                                     ; $6781: $56
	ld   h, a                                        ; $6782: $67
	ld   [hl], a                                     ; $6783: $77
	ld   a, b                                        ; $6784: $78
	adc  c                                           ; $6785: $89
	sbc  d                                           ; $6786: $9a
	xor  d                                           ; $6787: $aa
	xor  d                                           ; $6788: $aa
	xor  d                                           ; $6789: $aa
	xor  d                                           ; $678a: $aa
	xor  c                                           ; $678b: $a9
	adc  c                                           ; $678c: $89
	adc  b                                           ; $678d: $88
	ld   [hl], a                                     ; $678e: $77
	ld   [hl], a                                     ; $678f: $77
	ld   [hl], a                                     ; $6790: $77
	ld   h, [hl]                                     ; $6791: $66
	ld   h, [hl]                                     ; $6792: $66
	ld   h, a                                        ; $6793: $67
	ld   h, [hl]                                     ; $6794: $66
	ld   h, a                                        ; $6795: $67
	ld   [hl], a                                     ; $6796: $77
	adc  b                                           ; $6797: $88
	sbc  c                                           ; $6798: $99
	adc  c                                           ; $6799: $89
	sbc  c                                           ; $679a: $99
	sbc  c                                           ; $679b: $99
	sbc  c                                           ; $679c: $99
	adc  b                                           ; $679d: $88
	sbc  c                                           ; $679e: $99
	adc  b                                           ; $679f: $88
	adc  b                                           ; $67a0: $88
	adc  b                                           ; $67a1: $88
	ld   [hl], a                                     ; $67a2: $77
	ld   [hl], a                                     ; $67a3: $77
	adc  b                                           ; $67a4: $88
	ld   [hl], a                                     ; $67a5: $77
	ld   [hl], a                                     ; $67a6: $77
	ld   [hl], a                                     ; $67a7: $77
	ld   [hl], a                                     ; $67a8: $77
	ld   [hl], a                                     ; $67a9: $77
	ld   [hl], a                                     ; $67aa: $77
	ld   [hl], a                                     ; $67ab: $77
	ld   a, b                                        ; $67ac: $78
	adc  b                                           ; $67ad: $88
	adc  b                                           ; $67ae: $88
	adc  b                                           ; $67af: $88
	sbc  c                                           ; $67b0: $99
	sbc  c                                           ; $67b1: $99
	sbc  b                                           ; $67b2: $98
	adc  b                                           ; $67b3: $88
	adc  b                                           ; $67b4: $88
	adc  b                                           ; $67b5: $88
	adc  b                                           ; $67b6: $88
	adc  b                                           ; $67b7: $88
	adc  b                                           ; $67b8: $88
	adc  b                                           ; $67b9: $88
	adc  b                                           ; $67ba: $88
	add  a                                           ; $67bb: $87
	ld   [hl], a                                     ; $67bc: $77
	ld   [hl], a                                     ; $67bd: $77
	ld   [hl], a                                     ; $67be: $77
	ld   a, b                                        ; $67bf: $78
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
	adc  c                                           ; $68e8: $89
	adc  b                                           ; $68e9: $88
	add  a                                           ; $68ea: $87
	ld   [hl], a                                     ; $68eb: $77
	ld   a, b                                        ; $68ec: $78
	adc  c                                           ; $68ed: $89
	adc  b                                           ; $68ee: $88
	halt                                             ; $68ef: $76
	ld   h, a                                        ; $68f0: $67
	adc  c                                           ; $68f1: $89
	sbc  c                                           ; $68f2: $99
	add  a                                           ; $68f3: $87
	ld   [hl], a                                     ; $68f4: $77
	adc  c                                           ; $68f5: $89
	xor  d                                           ; $68f6: $aa
	xor  b                                           ; $68f7: $a8
	ld   h, [hl]                                     ; $68f8: $66
	ld   h, a                                        ; $68f9: $67
	sbc  c                                           ; $68fa: $99
	sbc  b                                           ; $68fb: $98
	halt                                             ; $68fc: $76
	ld   h, [hl]                                     ; $68fd: $66
	adc  c                                           ; $68fe: $89
	sbc  c                                           ; $68ff: $99
	sbc  c                                           ; $6900: $99
	halt                                             ; $6901: $76
	ld   h, a                                        ; $6902: $67
	adc  d                                           ; $6903: $8a
	xor  c                                           ; $6904: $a9
	halt                                             ; $6905: $76
	ld   h, [hl]                                     ; $6906: $66
	ld   a, b                                        ; $6907: $78
	xor  c                                           ; $6908: $a9
	sub  a                                           ; $6909: $97
	ld   h, [hl]                                     ; $690a: $66
	ld   h, a                                        ; $690b: $67
	adc  b                                           ; $690c: $88
	adc  c                                           ; $690d: $89
	adc  b                                           ; $690e: $88
	ld   [hl], a                                     ; $690f: $77
	xor  l                                           ; $6910: $ad
	rst  $38                                         ; $6911: $ff
	add  sp, $21                                     ; $6912: $e8 $21
	ld   [de], a                                     ; $6914: $12
	cp   a                                           ; $6915: $bf
	cp   $51                                         ; $6916: $fe $51
	ld   de, $ff7f                                   ; $6918: $11 $7f $ff
	and  d                                           ; $691b: $a2
	ld   de, $ef29                                   ; $691c: $11 $29 $ef
	or   [hl]                                        ; $691f: $b6
	ld   de, $bf16                                   ; $6920: $11 $16 $bf
	jp   hl                                          ; $6923: $e9


	ld   h, e                                        ; $6924: $63
	ld   b, a                                        ; $6925: $47
	cp   [hl]                                        ; $6926: $be
	db   $ed                                         ; $6927: $ed
	and  a                                           ; $6928: $a7
	ld   d, [hl]                                     ; $6929: $56
	sbc  e                                           ; $692a: $9b
	res  2, [hl]                                     ; $692b: $cb $96
	ld   d, h                                        ; $692d: $54
	ld   d, a                                        ; $692e: $57
	sbc  d                                           ; $692f: $9a
	sub  a                                           ; $6930: $97
	ld   h, [hl]                                     ; $6931: $66
	ld   l, b                                        ; $6932: $68
	xor  d                                           ; $6933: $aa
	xor  c                                           ; $6934: $a9
	halt                                             ; $6935: $76
	ld   h, a                                        ; $6936: $67
	adc  c                                           ; $6937: $89
	sbc  b                                           ; $6938: $98
	ld   h, l                                        ; $6939: $65
	ld   b, h                                        ; $693a: $44
	ld   d, a                                        ; $693b: $57
	ld   [hl], a                                     ; $693c: $77
	ld   d, h                                        ; $693d: $54
	ld   b, [hl]                                     ; $693e: $46
	ld   a, c                                        ; $693f: $79
	xor  d                                           ; $6940: $aa
	xor  c                                           ; $6941: $a9
	xor  d                                           ; $6942: $aa
	call z, $cbdc                                    ; $6943: $cc $dc $cb
	xor  d                                           ; $6946: $aa
	xor  c                                           ; $6947: $a9
	add  a                                           ; $6948: $87
	ld   h, l                                        ; $6949: $65
	ld   b, h                                        ; $694a: $44
	ld   b, h                                        ; $694b: $44
	inc  sp                                          ; $694c: $33
	inc  [hl]                                        ; $694d: $34
	ld   d, a                                        ; $694e: $57
	adc  d                                           ; $694f: $8a
	call z, $efef                                    ; $6950: $cc $ef $ef
	rst  $38                                         ; $6953: $ff
	cp   $db                                         ; $6954: $fe $db
	xor  b                                           ; $6956: $a8
	ld   d, h                                        ; $6957: $54
	ld   sp, $1111                                   ; $6958: $31 $11 $11
	ld   de, $6924                                   ; $695b: $11 $24 $69
	sbc  e                                           ; $695e: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $695f: $cf
	rst  $38                                         ; $6960: $ff
	rst  $38                                         ; $6961: $ff
	rst  $38                                         ; $6962: $ff
	res  7, h                                        ; $6963: $cb $bc
	cp   d                                           ; $6965: $ba
	add  l                                           ; $6966: $85
	ld   hl, $1111                                   ; $6967: $21 $11 $11
	ld   de, $4523                                   ; $696a: $11 $23 $45
	adc  d                                           ; $696d: $8a
	rst  JumpTable                                         ; $696e: $df
	rst  $38                                         ; $696f: $ff
	rst  $38                                         ; $6970: $ff
	rst  $38                                         ; $6971: $ff
	cp   $dc                                         ; $6972: $fe $dc
	xor  d                                           ; $6974: $aa
	add  a                                           ; $6975: $87
	ld   d, d                                        ; $6976: $52
	ld   de, $1111                                   ; $6977: $11 $11 $11
	ld   [de], a                                     ; $697a: $12
	ld   e, c                                        ; $697b: $59
	xor  h                                           ; $697c: $ac
	rst  $28                                         ; $697d: $ef
	rst  $38                                         ; $697e: $ff
	rst  $38                                         ; $697f: $ff
	rst  $38                                         ; $6980: $ff
	db   $fd                                         ; $6981: $fd
	xor  b                                           ; $6982: $a8
	adc  b                                           ; $6983: $88
	add  [hl]                                        ; $6984: $86
	ld   b, c                                        ; $6985: $41
	ld   de, $1111                                   ; $6986: $11 $11 $11
	inc  d                                           ; $6989: $14
	sbc  h                                           ; $698a: $9c
	db   $dd                                         ; $698b: $dd
	rst  $38                                         ; $698c: $ff
	rst  $38                                         ; $698d: $ff
	rst  $38                                         ; $698e: $ff
	rst  $38                                         ; $698f: $ff
	db   $fc                                         ; $6990: $fc
	sub  a                                           ; $6991: $97
	ld   [hl], a                                     ; $6992: $77
	ld   h, l                                        ; $6993: $65
	ld   hl, $1111                                   ; $6994: $21 $11 $11
	ld   de, $ff4b                                   ; $6997: $11 $4b $ff
	rst  $38                                         ; $699a: $ff
	rst  $38                                         ; $699b: $ff
	rst  $38                                         ; $699c: $ff
	rst  $38                                         ; $699d: $ff
	rst  $38                                         ; $699e: $ff
	or   [hl]                                        ; $699f: $b6
	ld   d, l                                        ; $69a0: $55
	ld   h, [hl]                                     ; $69a1: $66
	ld   d, d                                        ; $69a2: $52
	ld   de, $1111                                   ; $69a3: $11 $11 $11
	add  hl, de                                      ; $69a6: $19
	rst  $38                                         ; $69a7: $ff
	rst  $38                                         ; $69a8: $ff
	rst  $38                                         ; $69a9: $ff
	rst  $38                                         ; $69aa: $ff
	rst  $38                                         ; $69ab: $ff
	rst  $38                                         ; $69ac: $ff
	add  $22                                         ; $69ad: $c6 $22
	ld   b, [hl]                                     ; $69af: $46
	halt                                             ; $69b0: $76
	ld   de, $1111                                   ; $69b1: $11 $11 $11
	ld   d, $ff                                      ; $69b4: $16 $ff
	rst  $38                                         ; $69b6: $ff
	rst  $38                                         ; $69b7: $ff
	rst  $38                                         ; $69b8: $ff
	rst  $38                                         ; $69b9: $ff
	rst  $38                                         ; $69ba: $ff
	sub  $11                                         ; $69bb: $d6 $11
	ld   h, $99                                      ; $69bd: $26 $99
	ld   d, c                                        ; $69bf: $51
	ld   de, $1211                                   ; $69c0: $11 $11 $12
	rst  $38                                         ; $69c3: $ff
	rst  $38                                         ; $69c4: $ff
	rst  $38                                         ; $69c5: $ff
	rst  $38                                         ; $69c6: $ff
	rst  $38                                         ; $69c7: $ff
	rst  $38                                         ; $69c8: $ff
	rst  $30                                         ; $69c9: $f7
	ld   de, $9b14                                   ; $69ca: $11 $14 $9b
	and  e                                           ; $69cd: $a3
	ld   de, $1111                                   ; $69ce: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69d1: $cf
	rst  $38                                         ; $69d2: $ff
	rst  $38                                         ; $69d3: $ff
	rst  $38                                         ; $69d4: $ff
	rst  $38                                         ; $69d5: $ff
	rst  $38                                         ; $69d6: $ff
	ld   sp, hl                                      ; $69d7: $f9
	ld   de, $8d11                                   ; $69d8: $11 $11 $8d
	ret                                              ; $69db: $c9


	ld   de, $1111                                   ; $69dc: $11 $11 $11
	ld   c, a                                        ; $69df: $4f
	rst  $38                                         ; $69e0: $ff
	rst  $38                                         ; $69e1: $ff
	rst  $38                                         ; $69e2: $ff
	rst  $38                                         ; $69e3: $ff
	rst  $38                                         ; $69e4: $ff
	cp   $41                                         ; $69e5: $fe $41
	ld   de, $ed5c                                   ; $69e7: $11 $5c $ed
	ld   [hl], c                                     ; $69ea: $71
	ld   de, $1911                                   ; $69eb: $11 $11 $19
	rst  $38                                         ; $69ee: $ff
	rst  $38                                         ; $69ef: $ff
	db   $fd                                         ; $69f0: $fd
	rst  $38                                         ; $69f1: $ff
	rst  $38                                         ; $69f2: $ff
	rst  $38                                         ; $69f3: $ff
	and  d                                           ; $69f4: $a2
	ld   de, $ef18                                   ; $69f5: $11 $18 $ef
	call nz, $1111                                   ; $69f8: $c4 $11 $11
	ld   de, $ffef                                   ; $69fb: $11 $ef $ff
	rst  $38                                         ; $69fe: $ff
	rst  $28                                         ; $69ff: $ef
	rst  $38                                         ; $6a00: $ff
	rst  $38                                         ; $6a01: $ff
	rst  $30                                         ; $6a02: $f7
	ld   de, $af13                                   ; $6a03: $11 $13 $af
	db   $fc                                         ; $6a06: $fc
	ld   hl, $1111                                   ; $6a07: $21 $11 $11
	rra                                              ; $6a0a: $1f
	rst  $38                                         ; $6a0b: $ff
	rst  $38                                         ; $6a0c: $ff
	cp   $ff                                         ; $6a0d: $fe $ff
	rst  $38                                         ; $6a0f: $ff
	rst  $38                                         ; $6a10: $ff
	ld   d, c                                        ; $6a11: $51
	ld   de, $ff5d                                   ; $6a12: $11 $5d $ff
	or   c                                           ; $6a15: $b1
	ld   de, $1411                                   ; $6a16: $11 $11 $14
	rst  $38                                         ; $6a19: $ff
	rst  $38                                         ; $6a1a: $ff
	cp   $ef                                         ; $6a1b: $fe $ef
	rst  $38                                         ; $6a1d: $ff
	rst  $38                                         ; $6a1e: $ff
	db   $d3                                         ; $6a1f: $d3
	ld   de, $ff16                                   ; $6a20: $11 $16 $ff
	ld   a, [$1111]                                  ; $6a23: $fa $11 $11
	ld   de, $ff5f                                   ; $6a26: $11 $5f $ff
	rst  $38                                         ; $6a29: $ff
	rst  JumpTable                                         ; $6a2a: $df
	rst  $38                                         ; $6a2b: $ff
	rst  $38                                         ; $6a2c: $ff
	ei                                               ; $6a2d: $fb
	ld   sp, $8f11                                   ; $6a2e: $31 $11 $8f
	rst  $38                                         ; $6a31: $ff
	sub  c                                           ; $6a32: $91
	ld   de, $1711                                   ; $6a33: $11 $11 $17
	rst  $38                                         ; $6a36: $ff
	rst  $38                                         ; $6a37: $ff
	cp   $ff                                         ; $6a38: $fe $ff
	rst  $38                                         ; $6a3a: $ff
	rst  $38                                         ; $6a3b: $ff
	and  c                                           ; $6a3c: $a1
	ld   de, $ff2a                                   ; $6a3d: $11 $2a $ff
	ld   sp, hl                                      ; $6a40: $f9
	ld   de, $1111                                   ; $6a41: $11 $11 $11
	sbc  a                                           ; $6a44: $9f
	rst  $38                                         ; $6a45: $ff
	rst  $38                                         ; $6a46: $ff
	rst  JumpTable                                         ; $6a47: $df
	rst  $38                                         ; $6a48: $ff
	rst  $38                                         ; $6a49: $ff
	ld   hl, sp+$11                                  ; $6a4a: $f8 $11
	inc  de                                          ; $6a4c: $13
	cp   a                                           ; $6a4d: $bf
	rst  $38                                         ; $6a4e: $ff
	add  c                                           ; $6a4f: $81
	ld   de, $1b11                                   ; $6a50: $11 $11 $1b
	rst  $38                                         ; $6a53: $ff
	rst  $38                                         ; $6a54: $ff
	db   $fd                                         ; $6a55: $fd
	rst  $38                                         ; $6a56: $ff
	rst  $38                                         ; $6a57: $ff
	rst  $38                                         ; $6a58: $ff
	ld   h, c                                        ; $6a59: $61
	ld   de, $ff5d                                   ; $6a5a: $11 $5d $ff
	rst  $30                                         ; $6a5d: $f7
	ld   de, $1111                                   ; $6a5e: $11 $11 $11
	rst  JumpTable                                         ; $6a61: $df
	rst  $38                                         ; $6a62: $ff
	cp   $ef                                         ; $6a63: $fe $ef
	rst  $38                                         ; $6a65: $ff
	rst  $38                                         ; $6a66: $ff
	db   $f4                                         ; $6a67: $f4
	ld   de, $ef16                                   ; $6a68: $11 $16 $ef
	rst  $38                                         ; $6a6b: $ff
	ld   h, c                                        ; $6a6c: $61
	ld   de, $1d11                                   ; $6a6d: $11 $11 $1d
	rst  $38                                         ; $6a70: $ff
	rst  $38                                         ; $6a71: $ff
	xor  $ff                                         ; $6a72: $ee $ff
	rst  $38                                         ; $6a74: $ff
	cp   $31                                         ; $6a75: $fe $31
	ld   de, $ff7f                                   ; $6a77: $11 $7f $ff
	push af                                          ; $6a7a: $f5
	ld   de, $1111                                   ; $6a7b: $11 $11 $11
	rst  $38                                         ; $6a7e: $ff
	rst  $38                                         ; $6a7f: $ff
	db   $fd                                         ; $6a80: $fd
	rst  $28                                         ; $6a81: $ef
	rst  $38                                         ; $6a82: $ff
	rst  $38                                         ; $6a83: $ff
	pop  bc                                          ; $6a84: $c1
	ld   de, $ff18                                   ; $6a85: $11 $18 $ff
	rst  $38                                         ; $6a88: $ff
	ld   b, c                                        ; $6a89: $41
	ld   de, $1e11                                   ; $6a8a: $11 $11 $1e
	rst  $38                                         ; $6a8d: $ff
	rst  $38                                         ; $6a8e: $ff
	rst  $28                                         ; $6a8f: $ef
	rst  $38                                         ; $6a90: $ff
	rst  $38                                         ; $6a91: $ff
	ei                                               ; $6a92: $fb
	ld   de, $9f11                                   ; $6a93: $11 $11 $9f
	rst  $38                                         ; $6a96: $ff
	db   $f4                                         ; $6a97: $f4
	ld   de, $1111                                   ; $6a98: $11 $11 $11
	rst  JumpTable                                         ; $6a9b: $df
	rst  $38                                         ; $6a9c: $ff
	db   $ed                                         ; $6a9d: $ed
	rst  $38                                         ; $6a9e: $ff
	rst  $38                                         ; $6a9f: $ff
	rst  $38                                         ; $6aa0: $ff
	or   c                                           ; $6aa1: $b1
	ld   de, $ff19                                   ; $6aa2: $11 $19 $ff
	cp   $41                                         ; $6aa5: $fe $41
	ld   de, $1e11                                   ; $6aa7: $11 $11 $1e
	rst  $38                                         ; $6aaa: $ff
	rst  $38                                         ; $6aab: $ff
	rst  $28                                         ; $6aac: $ef
	rst  $38                                         ; $6aad: $ff
	rst  $38                                         ; $6aae: $ff
	ld   a, [$1111]                                  ; $6aaf: $fa $11 $11
	xor  a                                           ; $6ab2: $af
	rst  $38                                         ; $6ab3: $ff
	db   $f4                                         ; $6ab4: $f4
	ld   de, $1111                                   ; $6ab5: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ab8: $cf
	rst  $38                                         ; $6ab9: $ff
	db   $ed                                         ; $6aba: $ed
	rst  $38                                         ; $6abb: $ff
	rst  $38                                         ; $6abc: $ff
	rst  $38                                         ; $6abd: $ff
	sub  c                                           ; $6abe: $91
	ld   de, $ff1b                                   ; $6abf: $11 $1b $ff
	rst  $38                                         ; $6ac2: $ff
	ld   b, c                                        ; $6ac3: $41
	ld   de, $1c11                                   ; $6ac4: $11 $11 $1c
	rst  $38                                         ; $6ac7: $ff
	rst  $38                                         ; $6ac8: $ff
	rst  JumpTable                                         ; $6ac9: $df
	rst  $38                                         ; $6aca: $ff
	rst  $38                                         ; $6acb: $ff
	ld   sp, hl                                      ; $6acc: $f9
	ld   de, $af12                                   ; $6acd: $11 $12 $af
	rst  $38                                         ; $6ad0: $ff
	push af                                          ; $6ad1: $f5
	ld   de, $1111                                   ; $6ad2: $11 $11 $11
	xor  a                                           ; $6ad5: $af
	rst  $38                                         ; $6ad6: $ff
	cp   $ff                                         ; $6ad7: $fe $ff
	rst  $38                                         ; $6ad9: $ff
	rst  $38                                         ; $6ada: $ff
	sub  c                                           ; $6adb: $91
	ld   de, $ff2a                                   ; $6adc: $11 $2a $ff
	rst  $38                                         ; $6adf: $ff
	ld   h, c                                        ; $6ae0: $61
	ld   de, $1911                                   ; $6ae1: $11 $11 $19
	rst  $38                                         ; $6ae4: $ff
	rst  $38                                         ; $6ae5: $ff
	rst  JumpTable                                         ; $6ae6: $df
	rst  $38                                         ; $6ae7: $ff
	rst  $38                                         ; $6ae8: $ff
	ld   a, [$1211]                                  ; $6ae9: $fa $11 $12
	xor  a                                           ; $6aec: $af
	rst  $38                                         ; $6aed: $ff
	or   $11                                         ; $6aee: $f6 $11
	ld   de, $9f11                                   ; $6af0: $11 $11 $9f
	rst  $38                                         ; $6af3: $ff
	cp   $ff                                         ; $6af4: $fe $ff
	rst  $38                                         ; $6af6: $ff
	rst  $38                                         ; $6af7: $ff
	sub  c                                           ; $6af8: $91
	ld   de, $ff2a                                   ; $6af9: $11 $2a $ff
	rst  $38                                         ; $6afc: $ff
	ld   h, c                                        ; $6afd: $61
	ld   de, $1811                                   ; $6afe: $11 $11 $18
	rst  $38                                         ; $6b01: $ff
	rst  $38                                         ; $6b02: $ff
	rst  $28                                         ; $6b03: $ef
	rst  $38                                         ; $6b04: $ff
	rst  $38                                         ; $6b05: $ff
	ld   sp, hl                                      ; $6b06: $f9
	ld   de, $af13                                   ; $6b07: $11 $13 $af
	rst  $38                                         ; $6b0a: $ff
	and  $11                                         ; $6b0b: $e6 $11
	ld   de, $7f11                                   ; $6b0d: $11 $11 $7f
	rst  $38                                         ; $6b10: $ff
	rst  $38                                         ; $6b11: $ff
	rst  $38                                         ; $6b12: $ff
	rst  $38                                         ; $6b13: $ff
	rst  $38                                         ; $6b14: $ff
	add  c                                           ; $6b15: $81
	ld   de, $ff3a                                   ; $6b16: $11 $3a $ff
	cp   $61                                         ; $6b19: $fe $61
	ld   de, $1611                                   ; $6b1b: $11 $11 $16
	rst  JumpTable                                         ; $6b1e: $df
	rst  $38                                         ; $6b1f: $ff
	rst  $28                                         ; $6b20: $ef
	rst  $38                                         ; $6b21: $ff
	rst  $38                                         ; $6b22: $ff
	ld   sp, hl                                      ; $6b23: $f9
	ld   hl, $bf14                                   ; $6b24: $21 $14 $bf
	rst  $38                                         ; $6b27: $ff
	call nz, $1111                                   ; $6b28: $c4 $11 $11
	ld   de, $ff7e                                   ; $6b2b: $11 $7e $ff
	rst  $38                                         ; $6b2e: $ff
	rst  $38                                         ; $6b2f: $ff
	rst  $38                                         ; $6b30: $ff
	cp   $81                                         ; $6b31: $fe $81
	ld   de, $ff5c                                   ; $6b33: $11 $5c $ff
	ei                                               ; $6b36: $fb
	ld   sp, $1111                                   ; $6b37: $31 $11 $11
	rla                                              ; $6b3a: $17
	rst  $28                                         ; $6b3b: $ef
	rst  $38                                         ; $6b3c: $ff
	rst  $38                                         ; $6b3d: $ff
	rst  $38                                         ; $6b3e: $ff
	rst  $38                                         ; $6b3f: $ff
	rst  $20                                         ; $6b40: $e7
	ld   de, $df16                                   ; $6b41: $11 $16 $df
	rst  $38                                         ; $6b44: $ff
	and  d                                           ; $6b45: $a2
	ld   de, $1111                                   ; $6b46: $11 $11 $11
	adc  l                                           ; $6b49: $8d
	rst  $28                                         ; $6b4a: $ef
	rst  $38                                         ; $6b4b: $ff
	rst  $38                                         ; $6b4c: $ff
	rst  $38                                         ; $6b4d: $ff
	db   $fc                                         ; $6b4e: $fc
	ld   h, c                                        ; $6b4f: $61
	ld   [de], a                                     ; $6b50: $12
	adc  l                                           ; $6b51: $8d
	rst  $38                                         ; $6b52: $ff
	rst  $20                                         ; $6b53: $e7
	ld   de, $1111                                   ; $6b54: $11 $11 $11
	dec  de                                          ; $6b57: $1b
	rst  $38                                         ; $6b58: $ff
	rst  $38                                         ; $6b59: $ff
	rst  $38                                         ; $6b5a: $ff
	rst  $38                                         ; $6b5b: $ff
	rst  $38                                         ; $6b5c: $ff
	sub  e                                           ; $6b5d: $93
	ld   de, $ff4a                                   ; $6b5e: $11 $4a $ff
	db   $fd                                         ; $6b61: $fd
	ld   d, c                                        ; $6b62: $51
	ld   de, $1111                                   ; $6b63: $11 $11 $11
	cp   l                                           ; $6b66: $bd
	rst  $38                                         ; $6b67: $ff
	rst  $38                                         ; $6b68: $ff
	rst  $38                                         ; $6b69: $ff
	rst  $38                                         ; $6b6a: $ff
	ld   sp, hl                                      ; $6b6b: $f9
	ld   sp, $cf16                                   ; $6b6c: $31 $16 $cf
	rst  $38                                         ; $6b6f: $ff
	and  h                                           ; $6b70: $a4
	ld   de, $1111                                   ; $6b71: $11 $11 $11
	ld   e, l                                        ; $6b74: $5d
	rst  $28                                         ; $6b75: $ef
	rst  $38                                         ; $6b76: $ff
	rst  $38                                         ; $6b77: $ff

jr_0cb_6b78:
	rst  $38                                         ; $6b78: $ff
	db   $fc                                         ; $6b79: $fc
	ld   h, c                                        ; $6b7a: $61
	inc  de                                          ; $6b7b: $13
	adc  [hl]                                        ; $6b7c: $8e
	rst  $38                                         ; $6b7d: $ff
	rst  $10                                         ; $6b7e: $d7
	ld   hl, $1111                                   ; $6b7f: $21 $11 $11
	rla                                              ; $6b82: $17
	adc  $ff                                         ; $6b83: $ce $ff
	rst  $38                                         ; $6b85: $ff
	rst  $38                                         ; $6b86: $ff
	rst  $38                                         ; $6b87: $ff
	sub  h                                           ; $6b88: $94
	ld   [hl+], a                                    ; $6b89: $22
	ld   e, d                                        ; $6b8a: $5a
	rst  $28                                         ; $6b8b: $ef
	db   $ec                                         ; $6b8c: $ec
	ld   [hl], e                                     ; $6b8d: $73
	ld   de, $1111                                   ; $6b8e: $11 $11 $11
	cp   [hl]                                        ; $6b91: $be
	rst  $28                                         ; $6b92: $ef
	rst  $38                                         ; $6b93: $ff
	rst  $38                                         ; $6b94: $ff
	rst  $38                                         ; $6b95: $ff
	or   $22                                         ; $6b96: $f6 $22
	jr   c, jr_0cb_6b78                              ; $6b98: $38 $de

	db   $ec                                         ; $6b9a: $ec
	sub  l                                           ; $6b9b: $95
	ld   hl, $1111                                   ; $6b9c: $21 $11 $11
	ld   c, l                                        ; $6b9f: $4d
	rst  $38                                         ; $6ba0: $ff
	rst  $38                                         ; $6ba1: $ff
	rst  $38                                         ; $6ba2: $ff
	rst  $38                                         ; $6ba3: $ff
	ei                                               ; $6ba4: $fb
	ld   hl, $af35                                   ; $6ba5: $21 $35 $af
	call c, Call_0cb_41b7                            ; $6ba8: $dc $b7 $41
	ld   de, $1a11                                   ; $6bab: $11 $11 $1a
	db   $fd                                         ; $6bae: $fd
	rst  $28                                         ; $6baf: $ef
	rst  $38                                         ; $6bb0: $ff
	rst  $38                                         ; $6bb1: $ff
	rst  $38                                         ; $6bb2: $ff
	ld   d, c                                        ; $6bb3: $51
	ld   [hl], $7d                                   ; $6bb4: $36 $7d
	db   $eb                                         ; $6bb6: $eb
	cp   h                                           ; $6bb7: $bc
	add  h                                           ; $6bb8: $84
	ld   de, $1311                                   ; $6bb9: $11 $11 $13
	rst  $28                                         ; $6bbc: $ef
	call $ffff                                       ; $6bbd: $cd $ff $ff
	rst  $38                                         ; $6bc0: $ff
	add  c                                           ; $6bc1: $81
	ld   d, $aa                                      ; $6bc2: $16 $aa
	db   $eb                                         ; $6bc4: $eb
	adc  e                                           ; $6bc5: $8b
	ret  c                                           ; $6bc6: $d8

	ld   sp, $1111                                   ; $6bc7: $31 $11 $11
	sbc  a                                           ; $6bca: $9f
	ret                                              ; $6bcb: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bcc: $cf
	rst  $38                                         ; $6bcd: $ff
	rst  $38                                         ; $6bce: $ff
	and  e                                           ; $6bcf: $a3
	inc  de                                          ; $6bd0: $13
	res  3, e                                        ; $6bd1: $cb $9b
	adc  b                                           ; $6bd3: $88
	rst  $38                                         ; $6bd4: $ff
	and  c                                           ; $6bd5: $a1
	ld   de, $5e11                                   ; $6bd6: $11 $11 $5e
	and  $5f                                         ; $6bd9: $e6 $5f
	rst  $38                                         ; $6bdb: $ff
	rst  $38                                         ; $6bdc: $ff
	and  e                                           ; $6bdd: $a3
	ld   [hl+], a                                    ; $6bde: $22
	xor  [hl]                                        ; $6bdf: $ae
	add  l                                           ; $6be0: $85
	ld   h, a                                        ; $6be1: $67
	rst  JumpTable                                         ; $6be2: $df
	di                                               ; $6be3: $f3
	ld   de, $6b11                                   ; $6be4: $11 $11 $6b
	add  $1a                                         ; $6be7: $c6 $1a
	rst  $38                                         ; $6be9: $ff
	rst  $38                                         ; $6bea: $ff
	pop  bc                                          ; $6beb: $c1
	scf                                              ; $6bec: $37
	xor  [hl]                                        ; $6bed: $ae
	sub  c                                           ; $6bee: $91
	dec  hl                                          ; $6bef: $2b
	rst  $38                                         ; $6bf0: $ff
	or   $11                                         ; $6bf1: $f6 $11
	ld   de, $6339                                   ; $6bf3: $11 $39 $63
	ld   d, $ff                                      ; $6bf6: $16 $ff
	rst  $38                                         ; $6bf8: $ff
	push af                                          ; $6bf9: $f5
	ld   e, l                                        ; $6bfa: $5d
	ld   [$1a51], a                                  ; $6bfb: $ea $51 $1a
	rst  $38                                         ; $6bfe: $ff
	ld   sp, hl                                      ; $6bff: $f9
	ld   de, $1411                                   ; $6c00: $11 $11 $14
	ld   hl, $ff29                                   ; $6c03: $21 $29 $ff
	rst  $38                                         ; $6c06: $ff
	ei                                               ; $6c07: $fb
	xor  l                                           ; $6c08: $ad
	rst  ToBoot                                         ; $6c09: $c7
	ld   hl, $ff1a                                   ; $6c0a: $21 $1a $ff
	ld   a, [$1111]                                  ; $6c0d: $fa $11 $11
	ld   de, $5712                                   ; $6c10: $11 $12 $57
	rst  $28                                         ; $6c13: $ef
	rst  $38                                         ; $6c14: $ff
	rst  $38                                         ; $6c15: $ff
	cp   e                                           ; $6c16: $bb
	and  [hl]                                        ; $6c17: $a6
	ld   [hl-], a                                    ; $6c18: $32
	ld   d, $ff                                      ; $6c19: $16 $ff
	rst  $38                                         ; $6c1b: $ff
	add  c                                           ; $6c1c: $81
	ld   de, $1111                                   ; $6c1d: $11 $11 $11
	dec  h                                           ; $6c20: $25
	xor  a                                           ; $6c21: $af
	rst  $38                                         ; $6c22: $ff
	rst  $38                                         ; $6c23: $ff
	db   $fc                                         ; $6c24: $fc
	cp   c                                           ; $6c25: $b9
	ld   b, c                                        ; $6c26: $41
	inc  d                                           ; $6c27: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c28: $cf
	cp   $93                                         ; $6c29: $fe $93
	ld   de, $1111                                   ; $6c2b: $11 $11 $11
	inc  hl                                          ; $6c2e: $23
	ld   a, a                                        ; $6c2f: $7f
	rst  $38                                         ; $6c30: $ff
	rst  $38                                         ; $6c31: $ff
	cp   $da                                         ; $6c32: $fe $da
	ld   sp, $bf14                                   ; $6c34: $31 $14 $bf
	cp   $c7                                         ; $6c37: $fe $c7
	ld   de, $1311                                   ; $6c39: $11 $11 $13
	ld   [hl+], a                                    ; $6c3c: $22
	ld   e, a                                        ; $6c3d: $5f
	rst  $38                                         ; $6c3e: $ff
	rst  $38                                         ; $6c3f: $ff
	rst  $38                                         ; $6c40: $ff
	db   $fc                                         ; $6c41: $fc
	ld   sp, $af15                                   ; $6c42: $31 $15 $af
	ei                                               ; $6c45: $fb
	db   $ec                                         ; $6c46: $ec
	ld   hl, $1411                                   ; $6c47: $21 $11 $14
	ld   de, $ff2d                                   ; $6c4a: $11 $2d $ff
	rst  $38                                         ; $6c4d: $ff
	rst  $38                                         ; $6c4e: $ff
	ei                                               ; $6c4f: $fb
	ld   sp, $ae14                                   ; $6c50: $31 $14 $ae
	db   $dd                                         ; $6c53: $dd
	db   $fd                                         ; $6c54: $fd
	ld   d, c                                        ; $6c55: $51
	ld   de, $1114                                   ; $6c56: $11 $14 $11
	dec  e                                           ; $6c59: $1d
	rst  $38                                         ; $6c5a: $ff
	rst  $38                                         ; $6c5b: $ff
	rst  $38                                         ; $6c5c: $ff
	ei                                               ; $6c5d: $fb
	ld   sp, $aa15                                   ; $6c5e: $31 $15 $aa
	cp   l                                           ; $6c61: $bd
	db   $fd                                         ; $6c62: $fd
	ld   b, c                                        ; $6c63: $41
	ld   de, $1114                                   ; $6c64: $11 $14 $11
	cpl                                              ; $6c67: $2f
	rst  $38                                         ; $6c68: $ff
	rst  $38                                         ; $6c69: $ff
	rst  $38                                         ; $6c6a: $ff
	ld   sp, hl                                      ; $6c6b: $f9
	ld   de, $6867                                   ; $6c6c: $11 $67 $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c6f: $cf
	db   $fd                                         ; $6c70: $fd
	ld   bc, $1211                                   ; $6c71: $01 $11 $12
	ld   de, $ff5f                                   ; $6c74: $11 $5f $ff
	rst  $38                                         ; $6c77: $ff
	rst  $38                                         ; $6c78: $ff
	push af                                          ; $6c79: $f5
	inc  hl                                          ; $6c7a: $23

jr_0cb_6c7b:
	ld   d, h                                        ; $6c7b: $54
	ld   b, a                                        ; $6c7c: $47
	rst  JumpTable                                         ; $6c7d: $df
	ld   sp, hl                                      ; $6c7e: $f9
	ld   hl, $1111                                   ; $6c7f: $21 $11 $11
	ld   de, $ff6f                                   ; $6c82: $11 $6f $ff
	rst  $38                                         ; $6c85: $ff
	rst  $38                                         ; $6c86: $ff
	rst  $30                                         ; $6c87: $f7
	ld   b, h                                        ; $6c88: $44
	ld   h, h                                        ; $6c89: $64
	jr   z, jr_0cb_6c7b                              ; $6c8a: $28 $ef

	ld   sp, hl                                      ; $6c8c: $f9
	ld   de, $1111                                   ; $6c8d: $11 $11 $11
	ld   de, $ff8f                                   ; $6c90: $11 $8f $ff
	rst  $38                                         ; $6c93: $ff
	rst  $38                                         ; $6c94: $ff
	push de                                          ; $6c95: $d5
	ld   b, l                                        ; $6c96: $45
	ld   d, e                                        ; $6c97: $53
	jr   c, @+$01                                    ; $6c98: $38 $ff

	ld   sp, hl                                      ; $6c9a: $f9
	ld   hl, $1111                                   ; $6c9b: $21 $11 $11
	ld   de, $ff7f                                   ; $6c9e: $11 $7f $ff
	rst  $38                                         ; $6ca1: $ff
	rst  $38                                         ; $6ca2: $ff
	and  $45                                         ; $6ca3: $e6 $45
	ld   h, d                                        ; $6ca5: $62
	add  hl, de                                      ; $6ca6: $19
	rst  $38                                         ; $6ca7: $ff
	reti                                             ; $6ca8: $d9


	ld   hl, $1111                                   ; $6ca9: $21 $11 $11
	ld   de, $ff8f                                   ; $6cac: $11 $8f $ff
	rst  $38                                         ; $6caf: $ff
	rst  $38                                         ; $6cb0: $ff
	push de                                          ; $6cb1: $d5
	ld   h, [hl]                                     ; $6cb2: $66
	ld   d, d                                        ; $6cb3: $52
	ld   a, [hl-]                                    ; $6cb4: $3a
	rst  $38                                         ; $6cb5: $ff
	ret  z                                           ; $6cb6: $c8

	ld   sp, $1111                                   ; $6cb7: $31 $11 $11
	ld   de, $ff8f                                   ; $6cba: $11 $8f $ff
	rst  $38                                         ; $6cbd: $ff
	rst  $38                                         ; $6cbe: $ff
	push bc                                          ; $6cbf: $c5
	ld   d, [hl]                                     ; $6cc0: $56
	ld   h, c                                        ; $6cc1: $61
	dec  de                                          ; $6cc2: $1b
	rst  $38                                         ; $6cc3: $ff
	ret                                              ; $6cc4: $c9


	ld   d, c                                        ; $6cc5: $51
	ld   de, $1112                                   ; $6cc6: $11 $12 $11
	ld   a, a                                        ; $6cc9: $7f
	rst  $38                                         ; $6cca: $ff
	rst  $38                                         ; $6ccb: $ff
	rst  $38                                         ; $6ccc: $ff
	call nz, Call_0cb_5177                           ; $6ccd: $c4 $77 $51
	ld   a, [de]                                     ; $6cd0: $1a
	rst  $38                                         ; $6cd1: $ff
	ret                                              ; $6cd2: $c9


	ld   h, c                                        ; $6cd3: $61
	ld   de, $1112                                   ; $6cd4: $11 $12 $11
	ld   a, a                                        ; $6cd7: $7f
	rst  $38                                         ; $6cd8: $ff
	rst  $38                                         ; $6cd9: $ff
	rst  $38                                         ; $6cda: $ff
	or   l                                           ; $6cdb: $b5
	ld   l, b                                        ; $6cdc: $68
	ld   [hl], c                                     ; $6cdd: $71
	inc  e                                           ; $6cde: $1c
	rst  $38                                         ; $6cdf: $ff
	ret                                              ; $6ce0: $c9


	ld   h, c                                        ; $6ce1: $61
	ld   de, $1113                                   ; $6ce2: $11 $13 $11
	ld   a, a                                        ; $6ce5: $7f
	rst  $38                                         ; $6ce6: $ff
	rst  $38                                         ; $6ce7: $ff
	rst  $38                                         ; $6ce8: $ff
	or   l                                           ; $6ce9: $b5
	ld   a, c                                        ; $6cea: $79
	ld   d, c                                        ; $6ceb: $51
	inc  e                                           ; $6cec: $1c
	rst  $38                                         ; $6ced: $ff
	xor  e                                           ; $6cee: $ab
	ld   [hl], c                                     ; $6cef: $71
	ld   de, $1112                                   ; $6cf0: $11 $12 $11
	ld   a, a                                        ; $6cf3: $7f
	rst  $38                                         ; $6cf4: $ff
	rst  $38                                         ; $6cf5: $ff
	rst  $38                                         ; $6cf6: $ff
	and  l                                           ; $6cf7: $a5
	sbc  d                                           ; $6cf8: $9a
	ld   d, c                                        ; $6cf9: $51
	dec  e                                           ; $6cfa: $1d
	db   $fd                                         ; $6cfb: $fd
	xor  e                                           ; $6cfc: $ab
	ld   [hl], c                                     ; $6cfd: $71
	ld   de, $1112                                   ; $6cfe: $11 $12 $11
	sbc  a                                           ; $6d01: $9f
	rst  $38                                         ; $6d02: $ff
	rst  $38                                         ; $6d03: $ff
	rst  $38                                         ; $6d04: $ff
	and  [hl]                                        ; $6d05: $a6
	sbc  c                                           ; $6d06: $99
	ld   b, c                                        ; $6d07: $41
	ld   l, $fd                                      ; $6d08: $2e $fd
	xor  h                                           ; $6d0a: $ac
	add  c                                           ; $6d0b: $81
	ld   de, $1112                                   ; $6d0c: $11 $12 $11
	xor  a                                           ; $6d0f: $af
	rst  $38                                         ; $6d10: $ff
	rst  $38                                         ; $6d11: $ff
	rst  $38                                         ; $6d12: $ff
	sub  a                                           ; $6d13: $97
	cp   c                                           ; $6d14: $b9
	ld   hl, $fb3f                                   ; $6d15: $21 $3f $fb
	sbc  h                                           ; $6d18: $9c
	ld   h, c                                        ; $6d19: $61
	ld   de, $1131                                   ; $6d1a: $11 $31 $11
	rst  JumpTable                                         ; $6d1d: $df
	rst  $38                                         ; $6d1e: $ff
	rst  $38                                         ; $6d1f: $ff
	rst  $38                                         ; $6d20: $ff
	adc  b                                           ; $6d21: $88
	ret  z                                           ; $6d22: $c8

	ld   de, $fa6f                                   ; $6d23: $11 $6f $fa
	xor  h                                           ; $6d26: $ac
	ld   sp, $3111                                   ; $6d27: $31 $11 $31
	ld   de, $ffff                                   ; $6d2a: $11 $ff $ff
	rst  $38                                         ; $6d2d: $ff
	db   $fd                                         ; $6d2e: $fd
	sbc  d                                           ; $6d2f: $9a
	sub  $11                                         ; $6d30: $d6 $11
	sbc  a                                           ; $6d32: $9f
	cp   b                                           ; $6d33: $b8
	rl   c                                           ; $6d34: $cb $11

jr_0cb_6d36:
	ld   de, $1551                                   ; $6d36: $11 $51 $15
	rst  $38                                         ; $6d39: $ff
	rst  $38                                         ; $6d3a: $ff
	rst  $38                                         ; $6d3b: $ff
	ei                                               ; $6d3c: $fb
	sbc  l                                           ; $6d3d: $9d
	push bc                                          ; $6d3e: $c5
	ld   [de], a                                     ; $6d3f: $12
	rst  $28                                         ; $6d40: $ef
	adc  c                                           ; $6d41: $89
	rst  ToBoot                                         ; $6d42: $c7
	ld   de, $1114                                   ; $6d43: $11 $14 $11
	inc  e                                           ; $6d46: $1c
	rst  $38                                         ; $6d47: $ff
	rst  $28                                         ; $6d48: $ef
	rst  $38                                         ; $6d49: $ff
	ld   sp, hl                                      ; $6d4a: $f9
	cp   l                                           ; $6d4b: $bd
	sub  d                                           ; $6d4c: $92
	rla                                              ; $6d4d: $17
	ei                                               ; $6d4e: $fb
	ld   a, e                                        ; $6d4f: $7b
	or   d                                           ; $6d50: $b2
	ld   de, $1115                                   ; $6d51: $11 $15 $11
	cpl                                              ; $6d54: $2f
	db   $fd                                         ; $6d55: $fd
	rst  $38                                         ; $6d56: $ff
	rst  $38                                         ; $6d57: $ff
	jp   z, $61ee                                    ; $6d58: $ca $ee $61

	inc  a                                           ; $6d5b: $3c
	add  sp, $7b                                     ; $6d5c: $e8 $7b
	add  c                                           ; $6d5e: $81
	ld   de, $1152                                   ; $6d5f: $11 $52 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d62: $cf
	cp   $ff                                         ; $6d63: $fe $ff
	rst  $38                                         ; $6d65: $ff
	xor  l                                           ; $6d66: $ad
	ld   a, [$7e32]                                  ; $6d67: $fa $32 $7e
	and  l                                           ; $6d6a: $a5
	xor  e                                           ; $6d6b: $ab
	ld   de, $5111                                   ; $6d6c: $11 $11 $51
	inc  de                                          ; $6d6f: $13
	rst  $38                                         ; $6d70: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d71: $cf
	rst  $38                                         ; $6d72: $ff
	db   $fc                                         ; $6d73: $fc
	rst  JumpTable                                         ; $6d74: $df
	push hl                                          ; $6d75: $e5
	ld   h, $cb                                      ; $6d76: $26 $cb
	ld   e, b                                        ; $6d78: $58
	and  [hl]                                        ; $6d79: $a6
	ld   de, $2116                                   ; $6d7a: $11 $16 $21
	ld   e, $fc                                      ; $6d7d: $1e $fc
	rst  JumpTable                                         ; $6d7f: $df
	rst  $38                                         ; $6d80: $ff
	db   $ec                                         ; $6d81: $ec
	rst  $38                                         ; $6d82: $ff
	sub  l                                           ; $6d83: $95
	ld   e, b                                        ; $6d84: $58
	ret  c                                           ; $6d85: $d8

	ld   e, e                                        ; $6d86: $5b
	and  c                                           ; $6d87: $a1
	ld   de, $1113                                   ; $6d88: $11 $13 $11
	ld   l, a                                        ; $6d8b: $6f
	ld   [$ffff], a                                  ; $6d8c: $ea $ff $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d8f: $cf
	db   $fd                                         ; $6d90: $fd
	ld   d, l                                        ; $6d91: $55
	adc  e                                           ; $6d92: $8b
	add  h                                           ; $6d93: $84
	adc  c                                           ; $6d94: $89
	ld   de, $5111                                   ; $6d95: $11 $11 $51
	inc  de                                          ; $6d98: $13
	rst  $38                                         ; $6d99: $ff
	cp   [hl]                                        ; $6d9a: $be
	rst  $38                                         ; $6d9b: $ff
	db   $fd                                         ; $6d9c: $fd
	rst  $38                                         ; $6d9d: $ff
	rst  $30                                         ; $6d9e: $f7
	add  hl, sp                                      ; $6d9f: $39
	ret  c                                           ; $6da0: $d8

	jr   c, jr_0cb_6d36                              ; $6da1: $38 $93

	ld   de, $1116                                   ; $6da3: $11 $16 $11
	rra                                              ; $6da6: $1f
	db   $eb                                         ; $6da7: $eb
	rst  JumpTable                                         ; $6da8: $df
	rst  $38                                         ; $6da9: $ff
	sbc  $ff                                         ; $6daa: $de $ff
	ld   [hl], l                                     ; $6dac: $75
	xor  e                                           ; $6dad: $ab
	or   l                                           ; $6dae: $b5
	ld   c, c                                        ; $6daf: $49
	ld   d, c                                        ; $6db0: $51
	ld   de, $1141                                   ; $6db1: $11 $41 $11
	rst  JumpTable                                         ; $6db4: $df
	xor  e                                           ; $6db5: $ab
	rst  $38                                         ; $6db6: $ff
	cp   $ef                                         ; $6db7: $fe $ef
	ei                                               ; $6db9: $fb
	ld   l, c                                        ; $6dba: $69
	db   $db                                         ; $6dbb: $db
	ld   b, h                                        ; $6dbc: $44
	and  h                                           ; $6dbd: $a4
	ld   de, $1114                                   ; $6dbe: $11 $14 $11
	inc  e                                           ; $6dc1: $1c
	ld   a, [$ffaf]                                  ; $6dc2: $fa $af $ff
	rst  $38                                         ; $6dc5: $ff
	rst  $38                                         ; $6dc6: $ff
	rst  ToBoot                                         ; $6dc7: $c7
	sbc  h                                           ; $6dc8: $9c
	or   l                                           ; $6dc9: $b5
	ld   c, b                                        ; $6dca: $48
	ld   b, c                                        ; $6dcb: $41
	ld   de, $1131                                   ; $6dcc: $11 $31 $11
	cp   a                                           ; $6dcf: $bf
	cp   d                                           ; $6dd0: $ba
	rst  $38                                         ; $6dd1: $ff
	rst  $38                                         ; $6dd2: $ff
	rst  $38                                         ; $6dd3: $ff
	db   $fd                                         ; $6dd4: $fd
	sbc  d                                           ; $6dd5: $9a
	db   $ec                                         ; $6dd6: $ec
	ld   b, h                                        ; $6dd7: $44
	add  e                                           ; $6dd8: $83
	ld   de, $1113                                   ; $6dd9: $11 $13 $11
	inc  e                                           ; $6ddc: $1c
	ei                                               ; $6ddd: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6dde: $cf
	rst  $38                                         ; $6ddf: $ff
	rst  $38                                         ; $6de0: $ff
	rst  $38                                         ; $6de1: $ff
	jp   c, $d4ae                                    ; $6de2: $da $ae $d4

	jr   c, jr_0cb_6e08                              ; $6de5: $38 $21

	ld   de, $1121                                   ; $6de7: $11 $21 $11
	cp   a                                           ; $6dea: $bf
	cp   e                                           ; $6deb: $bb
	rst  $38                                         ; $6dec: $ff
	rst  $38                                         ; $6ded: $ff
	rst  $38                                         ; $6dee: $ff
	rst  $38                                         ; $6def: $ff
	xor  h                                           ; $6df0: $ac
	db   $ec                                         ; $6df1: $ec
	ld   b, e                                        ; $6df2: $43
	ld   h, d                                        ; $6df3: $62
	ld   de, $1112                                   ; $6df4: $11 $12 $11
	add  hl, de                                      ; $6df7: $19
	db   $ec                                         ; $6df8: $ec
	cp   a                                           ; $6df9: $bf
	rst  $38                                         ; $6dfa: $ff
	rst  $38                                         ; $6dfb: $ff
	rst  $38                                         ; $6dfc: $ff
	ei                                               ; $6dfd: $fb
	cp   a                                           ; $6dfe: $bf
	push de                                          ; $6dff: $d5
	dec  h                                           ; $6e00: $25
	ld   de, $1111                                   ; $6e01: $11 $11 $11
	ld   de, $bb7d                                   ; $6e04: $11 $7d $bb
	rst  $38                                         ; $6e07: $ff

jr_0cb_6e08:
	rst  $38                                         ; $6e08: $ff
	rst  $38                                         ; $6e09: $ff
	rst  $38                                         ; $6e0a: $ff
	set  7, a                                        ; $6e0b: $cb $ff
	ld   [hl], d                                     ; $6e0d: $72
	ld   sp, $1111                                   ; $6e0e: $31 $11 $11
	ld   de, $bc13                                   ; $6e11: $11 $13 $bc
	xor  [hl]                                        ; $6e14: $ae
	rst  $38                                         ; $6e15: $ff
	rst  $38                                         ; $6e16: $ff
	rst  $38                                         ; $6e17: $ff
	rst  $38                                         ; $6e18: $ff
	cp   a                                           ; $6e19: $bf
	ld   a, [$1143]                                  ; $6e1a: $fa $43 $11
	ld   de, $1111                                   ; $6e1d: $11 $11 $11
	rla                                              ; $6e20: $17
	xor  e                                           ; $6e21: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e22: $cf
	rst  $38                                         ; $6e23: $ff
	rst  $38                                         ; $6e24: $ff
	rst  $38                                         ; $6e25: $ff
	cp   $ff                                         ; $6e26: $fe $ff
	rst  $20                                         ; $6e28: $e7
	ld   [hl-], a                                    ; $6e29: $32
	ld   de, $1111                                   ; $6e2a: $11 $11 $11
	ld   de, $9826                                   ; $6e2d: $11 $26 $98
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e30: $cf
	rst  $38                                         ; $6e31: $ff
	rst  $38                                         ; $6e32: $ff
	rst  $38                                         ; $6e33: $ff
	rst  $38                                         ; $6e34: $ff
	rst  $38                                         ; $6e35: $ff
	or   a                                           ; $6e36: $b7
	ld   d, d                                        ; $6e37: $52
	ld   de, $1111                                   ; $6e38: $11 $11 $11
	ld   de, $5724                                   ; $6e3b: $11 $24 $57
	sbc  e                                           ; $6e3e: $9b
	db   $dd                                         ; $6e3f: $dd
	rst  $28                                         ; $6e40: $ef
	rst  $38                                         ; $6e41: $ff
	cp   $ed                                         ; $6e42: $fe $ed
	cp   e                                           ; $6e44: $bb
	sbc  b                                           ; $6e45: $98
	sbc  c                                           ; $6e46: $99
	sub  a                                           ; $6e47: $97
	ld   h, l                                        ; $6e48: $65
	ld   b, h                                        ; $6e49: $44
	ld   [hl-], a                                    ; $6e4a: $32
	ld   [hl+], a                                    ; $6e4b: $22
	ld   [hl+], a                                    ; $6e4c: $22
	inc  [hl]                                        ; $6e4d: $34
	ld   d, [hl]                                     ; $6e4e: $56
	ld   a, c                                        ; $6e4f: $79
	sbc  d                                           ; $6e50: $9a
	cp   h                                           ; $6e51: $bc
	sbc  $fe                                         ; $6e52: $de $fe
	rst  $38                                         ; $6e54: $ff
	db   $ed                                         ; $6e55: $ed
	call c, Call_0cb_54a8                            ; $6e56: $dc $a8 $54
	ld   hl, $1111                                   ; $6e59: $21 $11 $11
	ld   de, $5634                                   ; $6e5c: $11 $34 $56
	adc  d                                           ; $6e5f: $8a
	xor  h                                           ; $6e60: $ac
	call $ffff                                       ; $6e61: $cd $ff $ff
	rst  $38                                         ; $6e64: $ff
	cp   $ca                                         ; $6e65: $fe $ca
	ld   [hl], l                                     ; $6e67: $75
	ld   hl, $1111                                   ; $6e68: $21 $11 $11
	ld   de, $4612                                   ; $6e6b: $11 $12 $46
	ld   a, b                                        ; $6e6e: $78
	sbc  e                                           ; $6e6f: $9b
	call $ffef                                       ; $6e70: $cd $ef $ff
	rst  $38                                         ; $6e73: $ff
	rst  $38                                         ; $6e74: $ff
	db   $eb                                         ; $6e75: $eb
	add  [hl]                                        ; $6e76: $86
	ld   sp, $1111                                   ; $6e77: $31 $11 $11
	ld   de, $3412                                   ; $6e7a: $11 $12 $34
	ld   a, b                                        ; $6e7d: $78
	sbc  e                                           ; $6e7e: $9b
	call $ffef                                       ; $6e7f: $cd $ef $ff
	rst  $38                                         ; $6e82: $ff
	rst  $38                                         ; $6e83: $ff
	db   $ec                                         ; $6e84: $ec
	sub  [hl]                                        ; $6e85: $96
	ld   [hl-], a                                    ; $6e86: $32
	ld   de, $1111                                   ; $6e87: $11 $11 $11
	ld   [de], a                                     ; $6e8a: $12
	inc  [hl]                                        ; $6e8b: $34
	ld   d, a                                        ; $6e8c: $57
	xor  e                                           ; $6e8d: $ab
	call $ffff                                       ; $6e8e: $cd $ff $ff
	rst  $38                                         ; $6e91: $ff
	rst  $38                                         ; $6e92: $ff
	ld   [$1174], a                                  ; $6e93: $ea $74 $11
	ld   de, $1111                                   ; $6e96: $11 $11 $11
	ld   [de], a                                     ; $6e99: $12
	dec  [hl]                                        ; $6e9a: $35
	ld   a, c                                        ; $6e9b: $79
	xor  h                                           ; $6e9c: $ac
	rst  JumpTable                                         ; $6e9d: $df
	rst  $38                                         ; $6e9e: $ff
	rst  $38                                         ; $6e9f: $ff
	rst  $38                                         ; $6ea0: $ff
	cp   $b7                                         ; $6ea1: $fe $b7
	ld   b, c                                        ; $6ea3: $41
	ld   de, $1111                                   ; $6ea4: $11 $11 $11
	ld   de, $4623                                   ; $6ea7: $11 $23 $46
	sbc  d                                           ; $6eaa: $9a
	adc  $ff                                         ; $6eab: $ce $ff
	rst  $38                                         ; $6ead: $ff
	rst  $38                                         ; $6eae: $ff
	rst  $38                                         ; $6eaf: $ff
	db   $ec                                         ; $6eb0: $ec
	add  h                                           ; $6eb1: $84
	ld   de, $1111                                   ; $6eb2: $11 $11 $11
	ld   de, $3412                                   ; $6eb5: $11 $12 $34
	ld   l, b                                        ; $6eb8: $68
	sbc  h                                           ; $6eb9: $9c
	rst  JumpTable                                         ; $6eba: $df
	rst  $38                                         ; $6ebb: $ff
	rst  $38                                         ; $6ebc: $ff
	rst  $38                                         ; $6ebd: $ff
	rst  $38                                         ; $6ebe: $ff
	or   a                                           ; $6ebf: $b7
	ld   b, c                                        ; $6ec0: $41
	ld   de, $1111                                   ; $6ec1: $11 $11 $11
	ld   de, $4623                                   ; $6ec4: $11 $23 $46
	adc  d                                           ; $6ec7: $8a
	cp   [hl]                                        ; $6ec8: $be
	rst  $38                                         ; $6ec9: $ff
	rst  $38                                         ; $6eca: $ff
	rst  $38                                         ; $6ecb: $ff
	rst  $38                                         ; $6ecc: $ff
	ei                                               ; $6ecd: $fb
	ld   [hl], e                                     ; $6ece: $73
	ld   de, $1111                                   ; $6ecf: $11 $11 $11
	ld   de, $3512                                   ; $6ed2: $11 $12 $35
	ld   a, c                                        ; $6ed5: $79
	cp   h                                           ; $6ed6: $bc
	rst  $38                                         ; $6ed7: $ff
	rst  $38                                         ; $6ed8: $ff
	rst  $38                                         ; $6ed9: $ff
	rst  $38                                         ; $6eda: $ff
	rst  $38                                         ; $6edb: $ff
	or   [hl]                                        ; $6edc: $b6
	ld   sp, $1111                                   ; $6edd: $31 $11 $11
	ld   de, $2311                                   ; $6ee0: $11 $11 $23
	ld   d, a                                        ; $6ee3: $57
	sbc  e                                           ; $6ee4: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ee5: $cf
	rst  $38                                         ; $6ee6: $ff
	rst  $38                                         ; $6ee7: $ff
	rst  $38                                         ; $6ee8: $ff
	rst  $38                                         ; $6ee9: $ff
	ld   [$1162], a                                  ; $6eea: $ea $62 $11
	ld   de, $1111                                   ; $6eed: $11 $11 $11
	ld   [de], a                                     ; $6ef0: $12
	dec  [hl]                                        ; $6ef1: $35
	adc  c                                           ; $6ef2: $89
	cp   [hl]                                        ; $6ef3: $be
	rst  $38                                         ; $6ef4: $ff
	rst  $38                                         ; $6ef5: $ff
	rst  $38                                         ; $6ef6: $ff
	rst  $38                                         ; $6ef7: $ff
	cp   $95                                         ; $6ef8: $fe $95
	ld   de, $1111                                   ; $6efa: $11 $11 $11
	ld   de, $2411                                   ; $6efd: $11 $11 $24
	ld   l, b                                        ; $6f00: $68
	xor  e                                           ; $6f01: $ab
	rst  $28                                         ; $6f02: $ef
	rst  $38                                         ; $6f03: $ff
	rst  $38                                         ; $6f04: $ff
	rst  $38                                         ; $6f05: $ff
	rst  $38                                         ; $6f06: $ff
	rst  $10                                         ; $6f07: $d7
	ld   b, c                                        ; $6f08: $41
	ld   de, $1111                                   ; $6f09: $11 $11 $11
	ld   de, $4612                                   ; $6f0c: $11 $12 $46
	adc  e                                           ; $6f0f: $8b
	adc  $ff                                         ; $6f10: $ce $ff
	rst  $38                                         ; $6f12: $ff
	rst  $38                                         ; $6f13: $ff
	rst  $38                                         ; $6f14: $ff
	ld   a, [$1162]                                  ; $6f15: $fa $62 $11
	ld   de, $1111                                   ; $6f18: $11 $11 $11
	ld   de, $7924                                   ; $6f1b: $11 $24 $79
	cp   l                                           ; $6f1e: $bd
	rst  $38                                         ; $6f1f: $ff
	rst  $38                                         ; $6f20: $ff
	rst  $38                                         ; $6f21: $ff
	rst  $38                                         ; $6f22: $ff
	cp   $a5                                         ; $6f23: $fe $a5
	ld   de, $1111                                   ; $6f25: $11 $11 $11
	ld   de, $1311                                   ; $6f28: $11 $11 $13
	ld   d, a                                        ; $6f2b: $57
	sbc  h                                           ; $6f2c: $9c
	rst  $28                                         ; $6f2d: $ef
	rst  $38                                         ; $6f2e: $ff
	rst  $38                                         ; $6f2f: $ff
	rst  $38                                         ; $6f30: $ff
	rst  $38                                         ; $6f31: $ff
	rst  $10                                         ; $6f32: $d7
	ld   b, c                                        ; $6f33: $41
	ld   de, $1111                                   ; $6f34: $11 $11 $11
	ld   de, $3611                                   ; $6f37: $11 $11 $36
	adc  d                                           ; $6f3a: $8a
	sbc  $ff                                         ; $6f3b: $de $ff
	rst  $38                                         ; $6f3d: $ff
	rst  $38                                         ; $6f3e: $ff
	rst  $38                                         ; $6f3f: $ff
	ei                                               ; $6f40: $fb
	ld   h, d                                        ; $6f41: $62
	ld   de, $1111                                   ; $6f42: $11 $11 $11
	ld   de, $2411                                   ; $6f45: $11 $11 $24
	ld   a, c                                        ; $6f48: $79
	cp   l                                           ; $6f49: $bd
	rst  $38                                         ; $6f4a: $ff
	rst  $38                                         ; $6f4b: $ff
	rst  $38                                         ; $6f4c: $ff
	rst  $38                                         ; $6f4d: $ff
	db   $fd                                         ; $6f4e: $fd
	add  h                                           ; $6f4f: $84
	ld   de, $1111                                   ; $6f50: $11 $11 $11
	ld   de, $1311                                   ; $6f53: $11 $11 $13
	ld   h, a                                        ; $6f56: $67
	xor  h                                           ; $6f57: $ac
	rst  $28                                         ; $6f58: $ef
	rst  $38                                         ; $6f59: $ff
	rst  $38                                         ; $6f5a: $ff
	rst  $38                                         ; $6f5b: $ff
	rst  $38                                         ; $6f5c: $ff
	rst  ToBoot                                         ; $6f5d: $c7
	ld   sp, $1111                                   ; $6f5e: $31 $11 $11
	ld   de, $1211                                   ; $6f61: $11 $11 $12
	ld   b, a                                        ; $6f64: $47
	adc  e                                           ; $6f65: $8b
	rst  $28                                         ; $6f66: $ef
	rst  $38                                         ; $6f67: $ff
	rst  $38                                         ; $6f68: $ff
	rst  $38                                         ; $6f69: $ff
	rst  $38                                         ; $6f6a: $ff
	jp   c, $1151                                    ; $6f6b: $da $51 $11

	ld   de, $1111                                   ; $6f6e: $11 $11 $11
	ld   de, $8a36                                   ; $6f71: $11 $36 $8a
	adc  $ff                                         ; $6f74: $ce $ff
	rst  $38                                         ; $6f76: $ff
	rst  $38                                         ; $6f77: $ff
	rst  $38                                         ; $6f78: $ff
	ei                                               ; $6f79: $fb
	ld   [hl], e                                     ; $6f7a: $73
	ld   de, $1111                                   ; $6f7b: $11 $11 $11
	ld   de, $2511                                   ; $6f7e: $11 $11 $25
	ld   a, c                                        ; $6f81: $79
	call $ffff                                       ; $6f82: $cd $ff $ff
	rst  $38                                         ; $6f85: $ff
	rst  $38                                         ; $6f86: $ff
	cp   $a5                                         ; $6f87: $fe $a5
	ld   de, $1111                                   ; $6f89: $11 $11 $11
	ld   de, $2411                                   ; $6f8c: $11 $11 $24
	ld   l, b                                        ; $6f8f: $68
	cp   l                                           ; $6f90: $bd
	rst  $28                                         ; $6f91: $ef
	rst  $38                                         ; $6f92: $ff
	rst  $38                                         ; $6f93: $ff
	rst  $38                                         ; $6f94: $ff
	db   $fc                                         ; $6f95: $fc
	ld   d, c                                        ; $6f96: $51
	ld   de, $1111                                   ; $6f97: $11 $11 $11
	ld   de, $6a36                                   ; $6f9a: $11 $36 $6a
	rst  $28                                         ; $6f9d: $ef
	rst  $38                                         ; $6f9e: $ff
	rst  $38                                         ; $6f9f: $ff
	rst  $38                                         ; $6fa0: $ff
	rst  $38                                         ; $6fa1: $ff
	ei                                               ; $6fa2: $fb
	ld   h, c                                        ; $6fa3: $61
	ld   de, $1111                                   ; $6fa4: $11 $11 $11
	ld   de, $ec37                                   ; $6fa7: $11 $37 $ec
	rst  $28                                         ; $6faa: $ef
	rst  $38                                         ; $6fab: $ff
	rst  $38                                         ; $6fac: $ff
	rst  $38                                         ; $6fad: $ff
	rst  $38                                         ; $6fae: $ff
	cp   $71                                         ; $6faf: $fe $71
	ld   de, $1111                                   ; $6fb1: $11 $11 $11
	ld   de, $df29                                   ; $6fb4: $11 $29 $df
	rst  $38                                         ; $6fb7: $ff
	rst  $38                                         ; $6fb8: $ff
	rst  $38                                         ; $6fb9: $ff
	rst  $38                                         ; $6fba: $ff
	rst  $38                                         ; $6fbb: $ff
	cp   $81                                         ; $6fbc: $fe $81
	ld   de, $1111                                   ; $6fbe: $11 $11 $11
	ld   de, $ff2a                                   ; $6fc1: $11 $2a $ff
	rst  $38                                         ; $6fc4: $ff

Jump_0cb_6fc5:
	rst  $38                                         ; $6fc5: $ff
	rst  $38                                         ; $6fc6: $ff
	rst  $38                                         ; $6fc7: $ff
	rst  $38                                         ; $6fc8: $ff
	rst  $38                                         ; $6fc9: $ff
	add  c                                           ; $6fca: $81
	ld   de, $1111                                   ; $6fcb: $11 $11 $11
	ld   de, $ff3c                                   ; $6fce: $11 $3c $ff
	rst  $38                                         ; $6fd1: $ff
	rst  $38                                         ; $6fd2: $ff
	rst  $38                                         ; $6fd3: $ff
	cp   $ef                                         ; $6fd4: $fe $ef
	rst  $38                                         ; $6fd6: $ff
	ld   [hl], c                                     ; $6fd7: $71
	ld   de, $1111                                   ; $6fd8: $11 $11 $11
	ld   de, $ff5e                                   ; $6fdb: $11 $5e $ff
	rst  $38                                         ; $6fde: $ff
	rst  $38                                         ; $6fdf: $ff
	rst  $38                                         ; $6fe0: $ff
	db   $fd                                         ; $6fe1: $fd
	rst  $28                                         ; $6fe2: $ef
	rst  $38                                         ; $6fe3: $ff
	ld   d, c                                        ; $6fe4: $51
	ld   de, $1111                                   ; $6fe5: $11 $11 $11
	ld   de, $ff7f                                   ; $6fe8: $11 $7f $ff
	rst  $38                                         ; $6feb: $ff
	rst  $38                                         ; $6fec: $ff
	rst  $38                                         ; $6fed: $ff
	ei                                               ; $6fee: $fb
	rst  JumpTable                                         ; $6fef: $df
	db   $fc                                         ; $6ff0: $fc
	ld   hl, $1111                                   ; $6ff1: $21 $11 $11
	ld   de, $bf12                                   ; $6ff4: $11 $12 $bf
	rst  $38                                         ; $6ff7: $ff
	rst  $38                                         ; $6ff8: $ff
	rst  $38                                         ; $6ff9: $ff
	rst  $38                                         ; $6ffa: $ff
	db   $eb                                         ; $6ffb: $eb
	rst  $38                                         ; $6ffc: $ff
	ld   hl, sp+$11                                  ; $6ffd: $f8 $11
	ld   de, $1111                                   ; $6fff: $11 $11 $11
	ld   d, $ff                                      ; $7002: $16 $ff
	rst  $38                                         ; $7004: $ff
	rst  $38                                         ; $7005: $ff
	rst  $38                                         ; $7006: $ff
	rst  $38                                         ; $7007: $ff
	cp   [hl]                                        ; $7008: $be
	rst  $38                                         ; $7009: $ff
	jp   nc, $1111                                   ; $700a: $d2 $11 $11

	ld   de, $3e11                                   ; $700d: $11 $11 $3e
	rst  $38                                         ; $7010: $ff
	rst  $38                                         ; $7011: $ff
	rst  $38                                         ; $7012: $ff
	rst  $38                                         ; $7013: $ff
	db   $fc                                         ; $7014: $fc
	rst  JumpTable                                         ; $7015: $df
	rst  $38                                         ; $7016: $ff
	ld   b, c                                        ; $7017: $41
	ld   de, $1111                                   ; $7018: $11 $11 $11
	ld   [de], a                                     ; $701b: $12
	rst  JumpTable                                         ; $701c: $df
	rst  $38                                         ; $701d: $ff
	rst  $38                                         ; $701e: $ff
	rst  $38                                         ; $701f: $ff
	rst  $38                                         ; $7020: $ff
	cp   e                                           ; $7021: $bb
	rst  $38                                         ; $7022: $ff
	db   $f4                                         ; $7023: $f4
	ld   de, $1111                                   ; $7024: $11 $11 $11
	ld   de, $ff2d                                   ; $7027: $11 $2d $ff
	rst  $38                                         ; $702a: $ff
	rst  $38                                         ; $702b: $ff
	rst  $38                                         ; $702c: $ff
	ei                                               ; $702d: $fb
	xor  a                                           ; $702e: $af
	xor  $21                                         ; $702f: $ee $21
	ld   de, $1111                                   ; $7031: $11 $11 $11
	inc  d                                           ; $7034: $14
	rst  $38                                         ; $7035: $ff
	rst  $38                                         ; $7036: $ff
	rst  $38                                         ; $7037: $ff
	rst  $38                                         ; $7038: $ff
	cp   $9a                                         ; $7039: $fe $9a
	sbc  $91                                         ; $703b: $de $91
	ld   de, $1111                                   ; $703d: $11 $11 $11
	ld   de, $ff9f                                   ; $7040: $11 $9f $ff
	rst  $38                                         ; $7043: $ff
	rst  $38                                         ; $7044: $ff
	rst  $38                                         ; $7045: $ff
	ret  c                                           ; $7046: $d8

	call z, $11b2                                    ; $7047: $cc $b2 $11
	ld   de, $1111                                   ; $704a: $11 $11 $11
	ccf                                              ; $704d: $3f
	rst  $38                                         ; $704e: $ff
	rst  $38                                         ; $704f: $ff
	rst  $38                                         ; $7050: $ff
	rst  $38                                         ; $7051: $ff
	ld   a, [$b6ae]                                  ; $7052: $fa $ae $b6
	ld   de, $1111                                   ; $7055: $11 $11 $11
	ld   de, $ff19                                   ; $7058: $11 $19 $ff
	rst  $38                                         ; $705b: $ff
	rst  $38                                         ; $705c: $ff
	rst  $38                                         ; $705d: $ff
	cp   $9d                                         ; $705e: $fe $9d
	ret  z                                           ; $7060: $c8

	ld   de, $1111                                   ; $7061: $11 $11 $11
	ld   de, $ff15                                   ; $7064: $11 $15 $ff
	rst  $38                                         ; $7067: $ff
	rst  $38                                         ; $7068: $ff
	rst  $38                                         ; $7069: $ff
	rst  $38                                         ; $706a: $ff
	call $11c9                                       ; $706b: $cd $c9 $11
	ld   de, $1111                                   ; $706e: $11 $11 $11
	ld   [de], a                                     ; $7071: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7072: $cf
	rst  $38                                         ; $7073: $ff
	rst  $38                                         ; $7074: $ff
	rst  $38                                         ; $7075: $ff
	rst  $38                                         ; $7076: $ff
	cp   $e9                                         ; $7077: $fe $e9
	ld   sp, $1111                                   ; $7079: $31 $11 $11
	ld   de, $5f11                                   ; $707c: $11 $11 $5f
	rst  $38                                         ; $707f: $ff
	rst  $38                                         ; $7080: $ff
	rst  $38                                         ; $7081: $ff
	rst  $38                                         ; $7082: $ff
	rst  $38                                         ; $7083: $ff
	db   $fc                                         ; $7084: $fc
	sub  c                                           ; $7085: $91
	ld   de, $1111                                   ; $7086: $11 $11 $11
	ld   de, $af15                                   ; $7089: $11 $15 $af
	rst  $38                                         ; $708c: $ff
	rst  $38                                         ; $708d: $ff
	rst  $38                                         ; $708e: $ff
	rst  $38                                         ; $708f: $ff
	rst  $38                                         ; $7090: $ff
	ld   [$1121], a                                  ; $7091: $ea $21 $11
	ld   de, $1111                                   ; $7094: $11 $11 $11
	ld   [de], a                                     ; $7097: $12
	ld   a, h                                        ; $7098: $7c
	rst  $38                                         ; $7099: $ff
	rst  $38                                         ; $709a: $ff
	rst  $38                                         ; $709b: $ff
	rst  $38                                         ; $709c: $ff
	rst  $38                                         ; $709d: $ff
	reti                                             ; $709e: $d9


	ld   d, d                                        ; $709f: $52
	ld   de, $1111                                   ; $70a0: $11 $11 $11
	ld   de, $2411                                   ; $70a3: $11 $11 $24
	ld   l, c                                        ; $70a6: $69
	cp   a                                           ; $70a7: $bf
	rst  $38                                         ; $70a8: $ff
	rst  $38                                         ; $70a9: $ff
	cp   $fd                                         ; $70aa: $fe $fd
	db   $db                                         ; $70ac: $db
	xor  e                                           ; $70ad: $ab
	xor  b                                           ; $70ae: $a8
	ld   h, [hl]                                     ; $70af: $66
	ld   b, h                                        ; $70b0: $44
	ld   b, d                                        ; $70b1: $42
	ld   bc, $2301                                   ; $70b2: $01 $01 $23
	inc  [hl]                                        ; $70b5: $34
	ld   l, c                                        ; $70b6: $69
	xor  d                                           ; $70b7: $aa
	cp   e                                           ; $70b8: $bb
	sbc  $ff                                         ; $70b9: $de $ff
	rst  $38                                         ; $70bb: $ff
	rst  $38                                         ; $70bc: $ff
	db   $fc                                         ; $70bd: $fc
	cp   c                                           ; $70be: $b9
	ld   [hl], l                                     ; $70bf: $75
	ld   [hl-], a                                    ; $70c0: $32
	ld   de, $1111                                   ; $70c1: $11 $11 $11
	inc  de                                          ; $70c4: $13
	ld   b, [hl]                                     ; $70c5: $46
	adc  d                                           ; $70c6: $8a
	cp   h                                           ; $70c7: $bc
	rst  $28                                         ; $70c8: $ef
	rst  $38                                         ; $70c9: $ff
	rst  $38                                         ; $70ca: $ff
	rst  $38                                         ; $70cb: $ff
	db   $db                                         ; $70cc: $db
	and  a                                           ; $70cd: $a7
	ld   d, h                                        ; $70ce: $54
	ld   sp, $1111                                   ; $70cf: $31 $11 $11
	ld   [de], a                                     ; $70d2: $12
	inc  [hl]                                        ; $70d3: $34
	ld   d, [hl]                                     ; $70d4: $56
	adc  c                                           ; $70d5: $89
	xor  e                                           ; $70d6: $ab
	call z, $dddd                                    ; $70d7: $cc $dd $dd
	call $b9cb                                       ; $70da: $cd $cb $b9
	sbc  b                                           ; $70dd: $98
	halt                                             ; $70de: $76
	ld   d, h                                        ; $70df: $54
	inc  sp                                          ; $70e0: $33
	inc  sp                                          ; $70e1: $33
	ld   b, h                                        ; $70e2: $44
	ld   b, l                                        ; $70e3: $45
	ld   d, [hl]                                     ; $70e4: $56
	ld   [hl], a                                     ; $70e5: $77
	adc  c                                           ; $70e6: $89
	xor  e                                           ; $70e7: $ab
	call z, $cddc                                    ; $70e8: $cc $dc $cd
	db   $db                                         ; $70eb: $db
	xor  c                                           ; $70ec: $a9
	sbc  c                                           ; $70ed: $99
	halt                                             ; $70ee: $76
	ld   d, l                                        ; $70ef: $55
	ld   b, h                                        ; $70f0: $44
	ld   b, h                                        ; $70f1: $44
	ld   b, h                                        ; $70f2: $44
	ld   b, l                                        ; $70f3: $45
	ld   h, a                                        ; $70f4: $67
	ld   a, b                                        ; $70f5: $78
	sbc  d                                           ; $70f6: $9a
	xor  e                                           ; $70f7: $ab
	cp   h                                           ; $70f8: $bc
	res  7, h                                        ; $70f9: $cb $bc
	cp   d                                           ; $70fb: $ba
	xor  c                                           ; $70fc: $a9
	add  a                                           ; $70fd: $87
	ld   h, [hl]                                     ; $70fe: $66
	ld   d, l                                        ; $70ff: $55
	ld   d, l                                        ; $7100: $55
	ld   d, l                                        ; $7101: $55
	ld   d, [hl]                                     ; $7102: $56
	ld   h, a                                        ; $7103: $67
	ld   [hl], a                                     ; $7104: $77
	adc  b                                           ; $7105: $88
	xor  d                                           ; $7106: $aa
	xor  d                                           ; $7107: $aa
	cp   d                                           ; $7108: $ba
	xor  d                                           ; $7109: $aa
	xor  b                                           ; $710a: $a8
	sbc  b                                           ; $710b: $98
	ld   [hl], a                                     ; $710c: $77
	ld   h, [hl]                                     ; $710d: $66
	ld   h, [hl]                                     ; $710e: $66
	ld   h, [hl]                                     ; $710f: $66
	ld   [hl], a                                     ; $7110: $77
	ld   [hl], a                                     ; $7111: $77
	adc  b                                           ; $7112: $88
	adc  c                                           ; $7113: $89
	sbc  c                                           ; $7114: $99
	sbc  c                                           ; $7115: $99
	sbc  c                                           ; $7116: $99
	adc  b                                           ; $7117: $88
	adc  b                                           ; $7118: $88
	adc  c                                           ; $7119: $89
	add  a                                           ; $711a: $87
	ld   h, [hl]                                     ; $711b: $66
	ld   [hl], a                                     ; $711c: $77
	ld   [hl], a                                     ; $711d: $77
	ld   a, b                                        ; $711e: $78
	adc  c                                           ; $711f: $89
	adc  c                                           ; $7120: $89
	sbc  c                                           ; $7121: $99
	adc  b                                           ; $7122: $88
	adc  c                                           ; $7123: $89
	sbc  b                                           ; $7124: $98
	ld   [hl], a                                     ; $7125: $77
	ld   [hl], a                                     ; $7126: $77
	ld   [hl], a                                     ; $7127: $77
	ld   [hl], a                                     ; $7128: $77
	ld   a, b                                        ; $7129: $78
	adc  b                                           ; $712a: $88
	adc  b                                           ; $712b: $88
	sbc  c                                           ; $712c: $99
	adc  b                                           ; $712d: $88
	adc  c                                           ; $712e: $89
	sbc  c                                           ; $712f: $99
	sbc  c                                           ; $7130: $99
	sbc  b                                           ; $7131: $98
	sbc  b                                           ; $7132: $98
	add  a                                           ; $7133: $87
	ld   [hl], a                                     ; $7134: $77
	ld   [hl], a                                     ; $7135: $77
	ld   [hl], a                                     ; $7136: $77
	ld   [hl], a                                     ; $7137: $77
	adc  b                                           ; $7138: $88
	sbc  b                                           ; $7139: $98
	adc  b                                           ; $713a: $88
	adc  c                                           ; $713b: $89
	sbc  c                                           ; $713c: $99
	sbc  b                                           ; $713d: $98
	adc  b                                           ; $713e: $88
	adc  c                                           ; $713f: $89
	adc  b                                           ; $7140: $88
	add  a                                           ; $7141: $87
	ld   [hl], a                                     ; $7142: $77
	ld   [hl], a                                     ; $7143: $77
	ld   [hl], a                                     ; $7144: $77
	ld   [hl], a                                     ; $7145: $77
	adc  b                                           ; $7146: $88
	adc  b                                           ; $7147: $88
	adc  c                                           ; $7148: $89
	sbc  c                                           ; $7149: $99
	sbc  c                                           ; $714a: $99
	sbc  c                                           ; $714b: $99
	adc  c                                           ; $714c: $89
	sbc  b                                           ; $714d: $98
	adc  b                                           ; $714e: $88
	ld   [hl], a                                     ; $714f: $77
	ld   [hl], a                                     ; $7150: $77
	ld   [hl], a                                     ; $7151: $77
	ld   a, b                                        ; $7152: $78
	adc  b                                           ; $7153: $88
	sbc  c                                           ; $7154: $99
	sbc  c                                           ; $7155: $99
	sbc  c                                           ; $7156: $99
	adc  b                                           ; $7157: $88
	sbc  c                                           ; $7158: $99
	sbc  c                                           ; $7159: $99
	sbc  b                                           ; $715a: $98
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
	sbc  b                                           ; $716a: $98
	sbc  c                                           ; $716b: $99
	sbc  c                                           ; $716c: $99
	sbc  b                                           ; $716d: $98
	adc  b                                           ; $716e: $88
	adc  b                                           ; $716f: $88
	adc  b                                           ; $7170: $88
	add  a                                           ; $7171: $87
	ld   a, b                                        ; $7172: $78
	add  a                                           ; $7173: $87
	adc  b                                           ; $7174: $88
	adc  b                                           ; $7175: $88
	adc  b                                           ; $7176: $88
	adc  c                                           ; $7177: $89
	sbc  b                                           ; $7178: $98
	adc  c                                           ; $7179: $89
	sbc  c                                           ; $717a: $99
	adc  b                                           ; $717b: $88
	adc  b                                           ; $717c: $88
	add  a                                           ; $717d: $87
	ld   [hl], a                                     ; $717e: $77
	ld   [hl], a                                     ; $717f: $77
	ld   [hl], a                                     ; $7180: $77
	ld   [hl], a                                     ; $7181: $77
	adc  b                                           ; $7182: $88
	adc  b                                           ; $7183: $88
	adc  c                                           ; $7184: $89
	sbc  c                                           ; $7185: $99
	sbc  c                                           ; $7186: $99
	sbc  c                                           ; $7187: $99
	adc  b                                           ; $7188: $88
	adc  b                                           ; $7189: $88
	adc  b                                           ; $718a: $88
	add  a                                           ; $718b: $87
	ld   [hl], a                                     ; $718c: $77
	ld   [hl], a                                     ; $718d: $77
	ld   a, b                                        ; $718e: $78
	adc  b                                           ; $718f: $88
	adc  b                                           ; $7190: $88
	adc  b                                           ; $7191: $88
	add  a                                           ; $7192: $87
	adc  c                                           ; $7193: $89
	adc  b                                           ; $7194: $88
	adc  b                                           ; $7195: $88
	adc  b                                           ; $7196: $88
	adc  b                                           ; $7197: $88
	add  a                                           ; $7198: $87
	add  a                                           ; $7199: $87
	add  a                                           ; $719a: $87
	adc  b                                           ; $719b: $88
	adc  b                                           ; $719c: $88
	adc  b                                           ; $719d: $88
	adc  b                                           ; $719e: $88
	adc  b                                           ; $719f: $88
	adc  c                                           ; $71a0: $89
	ld   a, b                                        ; $71a1: $78
	adc  c                                           ; $71a2: $89
	add  a                                           ; $71a3: $87
	add  a                                           ; $71a4: $87
	adc  b                                           ; $71a5: $88
	adc  d                                           ; $71a6: $8a
	add  a                                           ; $71a7: $87
	ld   a, c                                        ; $71a8: $79
	sbc  c                                           ; $71a9: $99
	ld   [hl], a                                     ; $71aa: $77
	ld   [hl], a                                     ; $71ab: $77
	adc  c                                           ; $71ac: $89
	add  a                                           ; $71ad: $87
	ld   [hl], a                                     ; $71ae: $77
	adc  b                                           ; $71af: $88
	adc  b                                           ; $71b0: $88
	adc  b                                           ; $71b1: $88
	adc  b                                           ; $71b2: $88
	add  a                                           ; $71b3: $87
	adc  b                                           ; $71b4: $88
	adc  b                                           ; $71b5: $88
	adc  b                                           ; $71b6: $88
	adc  b                                           ; $71b7: $88
	adc  b                                           ; $71b8: $88
	adc  b                                           ; $71b9: $88
	ld   a, b                                        ; $71ba: $78
	add  a                                           ; $71bb: $87
	add  a                                           ; $71bc: $87
	ld   a, b                                        ; $71bd: $78
	ld   [hl], a                                     ; $71be: $77
	adc  b                                           ; $71bf: $88
	ld   a, b                                        ; $71c0: $78
	add  a                                           ; $71c1: $87
	adc  b                                           ; $71c2: $88
	ld   a, b                                        ; $71c3: $78
	ld   a, b                                        ; $71c4: $78
	sub  a                                           ; $71c5: $97
	ld   a, b                                        ; $71c6: $78
	add  a                                           ; $71c7: $87
	adc  b                                           ; $71c8: $88
	ld   a, b                                        ; $71c9: $78
	adc  b                                           ; $71ca: $88
	add  a                                           ; $71cb: $87
	adc  b                                           ; $71cc: $88
	ld   [hl], a                                     ; $71cd: $77
	sub  a                                           ; $71ce: $97
	adc  b                                           ; $71cf: $88
	ld   a, b                                        ; $71d0: $78
	ld   a, b                                        ; $71d1: $78
	sbc  b                                           ; $71d2: $98
	sbc  c                                           ; $71d3: $99
	sub  a                                           ; $71d4: $97
	ld   [hl], a                                     ; $71d5: $77
	ld   a, b                                        ; $71d6: $78
	ld   a, b                                        ; $71d7: $78
	adc  d                                           ; $71d8: $8a
	rst  $10                                         ; $71d9: $d7
	ld   c, b                                        ; $71da: $48
	ld   [hl], a                                     ; $71db: $77
	adc  d                                           ; $71dc: $8a
	sbc  b                                           ; $71dd: $98
	ld   l, b                                        ; $71de: $68
	ld   [hl], a                                     ; $71df: $77
	sub  a                                           ; $71e0: $97
	adc  c                                           ; $71e1: $89
	sub  a                                           ; $71e2: $97
	add  a                                           ; $71e3: $87
	ld   a, c                                        ; $71e4: $79
	adc  b                                           ; $71e5: $88
	adc  b                                           ; $71e6: $88
	add  a                                           ; $71e7: $87
	adc  b                                           ; $71e8: $88
	adc  b                                           ; $71e9: $88
	adc  c                                           ; $71ea: $89
	adc  b                                           ; $71eb: $88
	add  a                                           ; $71ec: $87
	ld   [hl], a                                     ; $71ed: $77
	adc  c                                           ; $71ee: $89
	ld   l, b                                        ; $71ef: $68
	sub  a                                           ; $71f0: $97
	add  a                                           ; $71f1: $87
	adc  c                                           ; $71f2: $89
	sub  a                                           ; $71f3: $97
	ld   l, b                                        ; $71f4: $68
	cp   e                                           ; $71f5: $bb
	ld   [hl], a                                     ; $71f6: $77
	ld   l, c                                        ; $71f7: $69
	ld   a, b                                        ; $71f8: $78
	sub  a                                           ; $71f9: $97
	ld   [hl], a                                     ; $71fa: $77
	sub  [hl]                                        ; $71fb: $96
	xor  c                                           ; $71fc: $a9
	ld   l, b                                        ; $71fd: $68
	adc  c                                           ; $71fe: $89
	adc  c                                           ; $71ff: $89
	ld   l, b                                        ; $7200: $68
	add  a                                           ; $7201: $87
	sbc  b                                           ; $7202: $98
	add  a                                           ; $7203: $87
	sbc  b                                           ; $7204: $98
	sub  a                                           ; $7205: $97
	adc  c                                           ; $7206: $89
	ld   a, b                                        ; $7207: $78
	ld   a, c                                        ; $7208: $79
	adc  c                                           ; $7209: $89
	add  a                                           ; $720a: $87
	sbc  c                                           ; $720b: $99
	add  a                                           ; $720c: $87
	sub  a                                           ; $720d: $97
	ld   a, b                                        ; $720e: $78
	ld   a, b                                        ; $720f: $78
	ld   [hl], a                                     ; $7210: $77
	sbc  c                                           ; $7211: $99
	ld   a, b                                        ; $7212: $78
	ld   a, c                                        ; $7213: $79
	add  a                                           ; $7214: $87
	add  a                                           ; $7215: $87
	ld   a, c                                        ; $7216: $79
	sbc  b                                           ; $7217: $98
	ld   a, b                                        ; $7218: $78
	and  a                                           ; $7219: $a7
	ld   a, c                                        ; $721a: $79
	adc  b                                           ; $721b: $88
	add  a                                           ; $721c: $87
	add  a                                           ; $721d: $87
	ld   a, c                                        ; $721e: $79
	ld   l, d                                        ; $721f: $6a
	sub  [hl]                                        ; $7220: $96
	sub  a                                           ; $7221: $97
	ld   a, c                                        ; $7222: $79
	adc  b                                           ; $7223: $88
	sub  a                                           ; $7224: $97
	adc  c                                           ; $7225: $89
	adc  b                                           ; $7226: $88
	add  a                                           ; $7227: $87
	adc  b                                           ; $7228: $88
	adc  c                                           ; $7229: $89
	adc  b                                           ; $722a: $88
	add  [hl]                                        ; $722b: $86
	adc  d                                           ; $722c: $8a
	ld   l, b                                        ; $722d: $68
	and  a                                           ; $722e: $a7
	add  a                                           ; $722f: $87
	ld   a, d                                        ; $7230: $7a
	ld   a, b                                        ; $7231: $78
	sub  a                                           ; $7232: $97
	adc  b                                           ; $7233: $88
	add  a                                           ; $7234: $87
	adc  c                                           ; $7235: $89
	adc  c                                           ; $7236: $89
	sub  a                                           ; $7237: $97
	sbc  b                                           ; $7238: $98
	adc  b                                           ; $7239: $88
	ld   [hl], a                                     ; $723a: $77
	adc  c                                           ; $723b: $89
	ld   l, b                                        ; $723c: $68
	ld   a, c                                        ; $723d: $79
	ld   a, b                                        ; $723e: $78
	sub  [hl]                                        ; $723f: $96
	adc  b                                           ; $7240: $88
	adc  b                                           ; $7241: $88
	ld   a, b                                        ; $7242: $78
	adc  b                                           ; $7243: $88
	sub  [hl]                                        ; $7244: $96
	add  a                                           ; $7245: $87
	adc  c                                           ; $7246: $89
	sub  a                                           ; $7247: $97
	ld   e, c                                        ; $7248: $59
	ld   a, d                                        ; $7249: $7a
	sbc  b                                           ; $724a: $98
	ld   [hl], a                                     ; $724b: $77
	and  [hl]                                        ; $724c: $a6
	adc  d                                           ; $724d: $8a
	ld   e, b                                        ; $724e: $58
	add  l                                           ; $724f: $85
	xor  c                                           ; $7250: $a9
	ld   h, [hl]                                     ; $7251: $66
	sub  a                                           ; $7252: $97
	ld   a, d                                        ; $7253: $7a
	ld   a, c                                        ; $7254: $79
	add  a                                           ; $7255: $87
	add  a                                           ; $7256: $87
	adc  b                                           ; $7257: $88
	ld   l, c                                        ; $7258: $69
	ld   a, c                                        ; $7259: $79
	add  a                                           ; $725a: $87
	sub  a                                           ; $725b: $97
	adc  b                                           ; $725c: $88
	sbc  c                                           ; $725d: $99
	add  a                                           ; $725e: $87
	ld   a, d                                        ; $725f: $7a
	ld   a, c                                        ; $7260: $79
	sub  [hl]                                        ; $7261: $96
	adc  c                                           ; $7262: $89
	ld   a, b                                        ; $7263: $78
	xor  c                                           ; $7264: $a9
	ld   l, c                                        ; $7265: $69
	sub  a                                           ; $7266: $97
	sbc  d                                           ; $7267: $9a
	ld   b, a                                        ; $7268: $47
	and  [hl]                                        ; $7269: $a6
	adc  b                                           ; $726a: $88
	and  a                                           ; $726b: $a7
	sub  a                                           ; $726c: $97
	ld   a, b                                        ; $726d: $78
	ld   a, c                                        ; $726e: $79
	ld   [hl], a                                     ; $726f: $77
	adc  c                                           ; $7270: $89
	ld   c, d                                        ; $7271: $4a
	or   a                                           ; $7272: $b7
	add  [hl]                                        ; $7273: $86
	sub  a                                           ; $7274: $97
	adc  b                                           ; $7275: $88
	xor  b                                           ; $7276: $a8
	add  [hl]                                        ; $7277: $86
	ld   a, d                                        ; $7278: $7a
	ld   e, d                                        ; $7279: $5a
	sbc  b                                           ; $727a: $98
	ld   [hl], a                                     ; $727b: $77
	sub  a                                           ; $727c: $97
	ld   a, b                                        ; $727d: $78
	sub  [hl]                                        ; $727e: $96
	xor  b                                           ; $727f: $a8
	adc  c                                           ; $7280: $89
	sub  a                                           ; $7281: $97
	sub  a                                           ; $7282: $97
	sbc  c                                           ; $7283: $99
	ld   a, d                                        ; $7284: $7a
	ld   l, d                                        ; $7285: $6a
	ld   d, a                                        ; $7286: $57
	adc  c                                           ; $7287: $89
	sub  [hl]                                        ; $7288: $96
	ld   a, b                                        ; $7289: $78
	add  [hl]                                        ; $728a: $86
	or   [hl]                                        ; $728b: $b6
	sbc  c                                           ; $728c: $99
	sbc  c                                           ; $728d: $99
	adc  c                                           ; $728e: $89
	ld   l, c                                        ; $728f: $69
	adc  c                                           ; $7290: $89
	ld   l, d                                        ; $7291: $6a
	sbc  b                                           ; $7292: $98
	ld   l, c                                        ; $7293: $69
	sub  [hl]                                        ; $7294: $96
	and  a                                           ; $7295: $a7
	ld   a, c                                        ; $7296: $79
	sbc  b                                           ; $7297: $98
	sub  [hl]                                        ; $7298: $96
	sbc  b                                           ; $7299: $98
	ld   a, b                                        ; $729a: $78
	ld   a, c                                        ; $729b: $79
	ld   l, e                                        ; $729c: $6b
	ld   l, c                                        ; $729d: $69
	sub  [hl]                                        ; $729e: $96
	and  a                                           ; $729f: $a7
	adc  b                                           ; $72a0: $88
	sub  a                                           ; $72a1: $97
	or   l                                           ; $72a2: $b5
	ld   a, d                                        ; $72a3: $7a
	adc  d                                           ; $72a4: $8a
	ld   a, c                                        ; $72a5: $79
	ld   a, b                                        ; $72a6: $78
	ld   a, c                                        ; $72a7: $79
	sub  a                                           ; $72a8: $97
	sub  a                                           ; $72a9: $97
	adc  c                                           ; $72aa: $89
	ld   a, b                                        ; $72ab: $78
	and  [hl]                                        ; $72ac: $a6
	or   [hl]                                        ; $72ad: $b6
	ld   c, h                                        ; $72ae: $4c
	ld   a, c                                        ; $72af: $79
	ld   h, a                                        ; $72b0: $67
	sbc  d                                           ; $72b1: $9a
	ld   a, b                                        ; $72b2: $78
	ld   h, a                                        ; $72b3: $67
	jp   $7cd6                                       ; $72b4: $c3 $d6 $7c


	ld   e, d                                        ; $72b7: $5a
	adc  b                                           ; $72b8: $88
	adc  d                                           ; $72b9: $8a
	ld   a, b                                        ; $72ba: $78
	adc  d                                           ; $72bb: $8a
	ld   e, c                                        ; $72bc: $59
	or   h                                           ; $72bd: $b4
	cp   c                                           ; $72be: $b9
	ld   h, a                                        ; $72bf: $67
	sbc  b                                           ; $72c0: $98
	ld   a, e                                        ; $72c1: $7b
	ld   [hl], a                                     ; $72c2: $77
	xor  b                                           ; $72c3: $a8
	ld   e, c                                        ; $72c4: $59
	ld   [hl], a                                     ; $72c5: $77
	or   a                                           ; $72c6: $b7
	ld   a, c                                        ; $72c7: $79
	add  a                                           ; $72c8: $87
	sbc  d                                           ; $72c9: $9a
	add  hl, sp                                      ; $72ca: $39
	and  a                                           ; $72cb: $a7
	sub  h                                           ; $72cc: $94
	cp   h                                           ; $72cd: $bc
	ld   l, b                                        ; $72ce: $68
	sub  l                                           ; $72cf: $95
	rst  ToBoot                                         ; $72d0: $c7
	ld   e, h                                        ; $72d1: $5c
	ld   a, c                                        ; $72d2: $79
	ld   [hl], a                                     ; $72d3: $77
	adc  h                                           ; $72d4: $8c
	halt                                             ; $72d5: $76
	sbc  b                                           ; $72d6: $98
	sub  [hl]                                        ; $72d7: $96
	ld   [hl], a                                     ; $72d8: $77
	and  [hl]                                        ; $72d9: $a6
	sub  [hl]                                        ; $72da: $96
	cp   b                                           ; $72db: $b8
	ld   e, d                                        ; $72dc: $5a
	ld   l, e                                        ; $72dd: $6b
	ld   a, d                                        ; $72de: $7a
	ld   l, d                                        ; $72df: $6a
	add  d                                           ; $72e0: $82
	and  $6b                                         ; $72e1: $e6 $6b
	ld   [hl], h                                     ; $72e3: $74
	sbc  e                                           ; $72e4: $9b
	ld   c, c                                        ; $72e5: $49
	and  [hl]                                        ; $72e6: $a6
	sbc  b                                           ; $72e7: $98
	sub  a                                           ; $72e8: $97
	ld   [hl], a                                     ; $72e9: $77
	sbc  b                                           ; $72ea: $98
	ld   l, d                                        ; $72eb: $6a
	add  a                                           ; $72ec: $87
	ld   l, d                                        ; $72ed: $6a
	sub  a                                           ; $72ee: $97
	ld   [hl], a                                     ; $72ef: $77
	or   a                                           ; $72f0: $b7
	ld   e, c                                        ; $72f1: $59
	or   [hl]                                        ; $72f2: $b6
	ld   a, c                                        ; $72f3: $79
	ld   a, c                                        ; $72f4: $79
	sub  [hl]                                        ; $72f5: $96
	ld   l, d                                        ; $72f6: $6a
	and  l                                           ; $72f7: $a5
	ld   l, e                                        ; $72f8: $6b
	and  l                                           ; $72f9: $a5
	sbc  b                                           ; $72fa: $98
	ld   a, d                                        ; $72fb: $7a
	ld   [hl], a                                     ; $72fc: $77
	adc  c                                           ; $72fd: $89
	ld   [hl], a                                     ; $72fe: $77
	sbc  b                                           ; $72ff: $98
	ld   l, b                                        ; $7300: $68
	or   a                                           ; $7301: $b7
	ld   a, e                                        ; $7302: $7b
	ld   l, b                                        ; $7303: $68
	add  l                                           ; $7304: $85
	xor  b                                           ; $7305: $a8
	ld   c, d                                        ; $7306: $4a
	sub  a                                           ; $7307: $97
	or   [hl]                                        ; $7308: $b6
	ld   l, h                                        ; $7309: $6c
	ld   h, [hl]                                     ; $730a: $66
	xor  b                                           ; $730b: $a8
	add  l                                           ; $730c: $85
	sbc  d                                           ; $730d: $9a
	sub  [hl]                                        ; $730e: $96
	and  a                                           ; $730f: $a7
	ld   a, d                                        ; $7310: $7a
	ld   c, l                                        ; $7311: $4d
	halt                                             ; $7312: $76
	adc  b                                           ; $7313: $88
	ld   [hl], a                                     ; $7314: $77
	sub  [hl]                                        ; $7315: $96
	or   [hl]                                        ; $7316: $b6
	ld   l, d                                        ; $7317: $6a
	and  e                                           ; $7318: $a3
	sbc  h                                           ; $7319: $9c
	inc  a                                           ; $731a: $3c
	ld   e, b                                        ; $731b: $58
	and  h                                           ; $731c: $a4
	sbc  b                                           ; $731d: $98
	add  [hl]                                        ; $731e: $86
	and  a                                           ; $731f: $a7
	ld   e, c                                        ; $7320: $59
	adc  b                                           ; $7321: $88
	ld   e, c                                        ; $7322: $59
	and  [hl]                                        ; $7323: $a6
	ld   a, c                                        ; $7324: $79
	halt                                             ; $7325: $76
	adc  b                                           ; $7326: $88
	sub  l                                           ; $7327: $95
	ld   l, c                                        ; $7328: $69
	ld   [hl], l                                     ; $7329: $75
	adc  c                                           ; $732a: $89
	adc  d                                           ; $732b: $8a
	ld   h, l                                        ; $732c: $65
	ld   a, d                                        ; $732d: $7a
	ld   [hl], a                                     ; $732e: $77
	ld   h, l                                        ; $732f: $65
	sbc  c                                           ; $7330: $99
	xor  h                                           ; $7331: $ac
	sub  a                                           ; $7332: $97
	adc  b                                           ; $7333: $88
	ld   a, b                                        ; $7334: $78
	sbc  c                                           ; $7335: $99
	sbc  c                                           ; $7336: $99
	ld   l, d                                        ; $7337: $6a
	call nc, $ab29                                   ; $7338: $d4 $29 $ab
	cp   c                                           ; $733b: $b9
	ld   h, a                                        ; $733c: $67
	xor  h                                           ; $733d: $ac
	ei                                               ; $733e: $fb
	ld   [de], a                                     ; $733f: $12
	ld   l, e                                        ; $7340: $6b
	db   $d3                                         ; $7341: $d3
	dec  sp                                          ; $7342: $3b
	ld   a, d                                        ; $7343: $7a
	ld   [hl], a                                     ; $7344: $77
	db   $dd                                         ; $7345: $dd
	add  a                                           ; $7346: $87
	xor  [hl]                                        ; $7347: $ae
	and  d                                           ; $7348: $a2
	xor  a                                           ; $7349: $af
	or   d                                           ; $734a: $b2
	ld   c, h                                        ; $734b: $4c
	ld   h, h                                        ; $734c: $64
	xor  h                                           ; $734d: $ac
	ld   [hl], h                                     ; $734e: $74
	ld   a, e                                        ; $734f: $7b
	sbc  b                                           ; $7350: $98
	ret                                              ; $7351: $c9


	ld   h, a                                        ; $7352: $67
	res  0, h                                        ; $7353: $cb $84
	ld   c, d                                        ; $7355: $4a
	and  $3a                                         ; $7356: $e6 $3a
	and  [hl]                                        ; $7358: $a6
	ld   a, c                                        ; $7359: $79
	add  [hl]                                        ; $735a: $86
	sbc  e                                           ; $735b: $9b
	ld   e, c                                        ; $735c: $59
	or   a                                           ; $735d: $b7
	ld   l, c                                        ; $735e: $69
	xor  c                                           ; $735f: $a9
	ld   h, a                                        ; $7360: $67
	xor  b                                           ; $7361: $a8
	adc  b                                           ; $7362: $88
	ld   a, b                                        ; $7363: $78
	ld   [hl], a                                     ; $7364: $77
	ld   a, b                                        ; $7365: $78
	sub  a                                           ; $7366: $97
	adc  c                                           ; $7367: $89
	add  a                                           ; $7368: $87
	adc  b                                           ; $7369: $88
	add  a                                           ; $736a: $87
	adc  c                                           ; $736b: $89
	add  a                                           ; $736c: $87
	adc  c                                           ; $736d: $89
	ld   a, b                                        ; $736e: $78
	adc  b                                           ; $736f: $88
	adc  b                                           ; $7370: $88
	adc  b                                           ; $7371: $88
	adc  b                                           ; $7372: $88
	adc  b                                           ; $7373: $88
	ld   a, b                                        ; $7374: $78
	adc  b                                           ; $7375: $88
	adc  b                                           ; $7376: $88
	adc  b                                           ; $7377: $88
	ld   a, b                                        ; $7378: $78
	adc  b                                           ; $7379: $88
	adc  b                                           ; $737a: $88
	adc  b                                           ; $737b: $88
	adc  b                                           ; $737c: $88
	add  a                                           ; $737d: $87
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

jr_0cb_7489:
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
	or   a                                           ; $74ab: $b7
	ld   c, l                                        ; $74ac: $4d
	add  l                                           ; $74ad: $85
	add  $6b                                         ; $74ae: $c6 $6b
	ld   [hl], l                                     ; $74b0: $75
	and  a                                           ; $74b1: $a7
	and  a                                           ; $74b2: $a7
	ld   a, e                                        ; $74b3: $7b
	ld   e, c                                        ; $74b4: $59
	sub  e                                           ; $74b5: $93
	sbc  e                                           ; $74b6: $9b
	ld   l, b                                        ; $74b7: $68
	and  [hl]                                        ; $74b8: $a6
	ld   a, c                                        ; $74b9: $79
	or   l                                           ; $74ba: $b5
	adc  e                                           ; $74bb: $8b
	ld   d, a                                        ; $74bc: $57
	and  l                                           ; $74bd: $a5
	adc  e                                           ; $74be: $8b
	ld   b, a                                        ; $74bf: $47
	db   $eb                                         ; $74c0: $eb
	ld   a, l                                        ; $74c1: $7d
	ld   h, e                                        ; $74c2: $63
	or   l                                           ; $74c3: $b5
	ld   a, d                                        ; $74c4: $7a
	ld   d, a                                        ; $74c5: $57
	inc  d                                           ; $74c6: $14
	rst  $30                                         ; $74c7: $f7
	ld   c, l                                        ; $74c8: $4d
	ld   b, l                                        ; $74c9: $45
	sub  $8a                                         ; $74ca: $d6 $8a
	ld   l, d                                        ; $74cc: $6a
	and  a                                           ; $74cd: $a7
	and  [hl]                                        ; $74ce: $a6
	ld   a, b                                        ; $74cf: $78
	ld   l, e                                        ; $74d0: $6b
	sub  [hl]                                        ; $74d1: $96
	add  [hl]                                        ; $74d2: $86
	ld   [hl], a                                     ; $74d3: $77
	ld   l, b                                        ; $74d4: $68
	ld   a, c                                        ; $74d5: $79
	ld   h, [hl]                                     ; $74d6: $66
	and  h                                           ; $74d7: $a4
	sbc  h                                           ; $74d8: $9c
	adc  d                                           ; $74d9: $8a
	add  l                                           ; $74da: $85
	sbc  e                                           ; $74db: $9b
	adc  c                                           ; $74dc: $89
	add  a                                           ; $74dd: $87
	sub  a                                           ; $74de: $97
	ld   h, a                                        ; $74df: $67
	ld   h, a                                        ; $74e0: $67
	add  a                                           ; $74e1: $87
	ld   h, a                                        ; $74e2: $67
	add  [hl]                                        ; $74e3: $86
	ld   a, b                                        ; $74e4: $78
	ld   l, d                                        ; $74e5: $6a
	cp   e                                           ; $74e6: $bb
	push de                                          ; $74e7: $d5
	add  hl, sp                                      ; $74e8: $39
	ld   [hl], $d7                                   ; $74e9: $36 $d7
	ld   l, c                                        ; $74eb: $69
	ld   e, c                                        ; $74ec: $59
	sbc  c                                           ; $74ed: $99
	and  a                                           ; $74ee: $a7
	ld   b, [hl]                                     ; $74ef: $46
	or   $9d                                         ; $74f0: $f6 $9d
	dec  de                                          ; $74f2: $1b
	and  e                                           ; $74f3: $a3
	cp   e                                           ; $74f4: $bb
	jr   z, jr_0cb_7489                              ; $74f5: $28 $92

	rst  ToBoot                                         ; $74f7: $c7
	sbc  b                                           ; $74f8: $98
	ld   a, e                                        ; $74f9: $7b
	xor  h                                           ; $74fa: $ac
	ld   h, l                                        ; $74fb: $65
	add  a                                           ; $74fc: $87
	ld   c, c                                        ; $74fd: $49
	ld   d, l                                        ; $74fe: $55
	sub  h                                           ; $74ff: $94
	cp   d                                           ; $7500: $ba
	ld   a, a                                        ; $7501: $7f
	ei                                               ; $7502: $fb
	rst  ToBoot                                         ; $7503: $c7
	sub  a                                           ; $7504: $97
	daa                                              ; $7505: $27
	ld   de, $2841                                   ; $7506: $11 $41 $28
	adc  d                                           ; $7509: $8a
	rst  $38                                         ; $750a: $ff
	rst  $38                                         ; $750b: $ff
	cp   l                                           ; $750c: $bd
	sub  c                                           ; $750d: $91
	inc  hl                                          ; $750e: $23
	ld   de, $2311                                   ; $750f: $11 $11 $23
	sbc  a                                           ; $7512: $9f
	rst  $38                                         ; $7513: $ff
	rst  $38                                         ; $7514: $ff
	db   $fd                                         ; $7515: $fd
	call nc, $1111                                   ; $7516: $d4 $11 $11
	ld   de, $7f14                                   ; $7519: $11 $14 $7f
	rst  $38                                         ; $751c: $ff
	rst  $38                                         ; $751d: $ff
	rst  $38                                         ; $751e: $ff
	rst  ToBoot                                         ; $751f: $c7
	ld   de, $1111                                   ; $7520: $11 $11 $11
	ld   de, $ff7f                                   ; $7523: $11 $7f $ff
	rst  $38                                         ; $7526: $ff
	rst  $38                                         ; $7527: $ff
	ld   hl, sp+$11                                  ; $7528: $f8 $11
	ld   de, $1111                                   ; $752a: $11 $11 $11
	ld   e, [hl]                                     ; $752d: $5e
	rst  $38                                         ; $752e: $ff
	rst  $38                                         ; $752f: $ff
	rst  $38                                         ; $7530: $ff
	db   $fc                                         ; $7531: $fc
	ld   de, $1111                                   ; $7532: $11 $11 $11
	ld   de, $ff4d                                   ; $7535: $11 $4d $ff
	rst  $38                                         ; $7538: $ff
	rst  $38                                         ; $7539: $ff
	rst  $38                                         ; $753a: $ff
	ld   d, c                                        ; $753b: $51
	ld   de, $1111                                   ; $753c: $11 $11 $11
	dec  e                                           ; $753f: $1d
	rst  $38                                         ; $7540: $ff
	rst  $38                                         ; $7541: $ff
	rst  $38                                         ; $7542: $ff
	rst  $38                                         ; $7543: $ff
	pop  de                                          ; $7544: $d1
	ld   de, $1111                                   ; $7545: $11 $11 $11
	dec  de                                          ; $7548: $1b
	rst  $38                                         ; $7549: $ff
	rst  $38                                         ; $754a: $ff
	rst  $38                                         ; $754b: $ff
	rst  $38                                         ; $754c: $ff
	ldh  a, [c]                                      ; $754d: $f2
	ld   de, $1111                                   ; $754e: $11 $11 $11
	ld   a, [de]                                     ; $7551: $1a
	rst  $38                                         ; $7552: $ff
	rst  $38                                         ; $7553: $ff
	rst  $38                                         ; $7554: $ff
	rst  $38                                         ; $7555: $ff
	pop  hl                                          ; $7556: $e1
	ld   de, $1111                                   ; $7557: $11 $11 $11
	rra                                              ; $755a: $1f
	rst  $38                                         ; $755b: $ff
	rst  $38                                         ; $755c: $ff
	rst  $38                                         ; $755d: $ff
	cp   $61                                         ; $755e: $fe $61
	ld   de, $1111                                   ; $7560: $11 $11 $11
	cp   a                                           ; $7563: $bf
	rst  $38                                         ; $7564: $ff
	rst  $38                                         ; $7565: $ff
	rst  $38                                         ; $7566: $ff
	push bc                                          ; $7567: $c5
	ld   de, $1111                                   ; $7568: $11 $11 $11
	rra                                              ; $756b: $1f
	rst  $38                                         ; $756c: $ff
	rst  $38                                         ; $756d: $ff
	rst  $38                                         ; $756e: $ff
	ld   a, [$1111]                                  ; $756f: $fa $11 $11
	ld   de, rAUD1HIGH                                   ; $7572: $11 $14 $ff
	rst  $38                                         ; $7575: $ff
	rst  $38                                         ; $7576: $ff
	ld   a, [$1161]                                  ; $7577: $fa $61 $11
	ld   de, rAUD1LEN                                   ; $757a: $11 $11 $ff
	rst  $38                                         ; $757d: $ff
	rst  $38                                         ; $757e: $ff
	ld   sp, hl                                      ; $757f: $f9
	sub  c                                           ; $7580: $91
	ld   de, $1111                                   ; $7581: $11 $11 $11
	rst  $38                                         ; $7584: $ff
	rst  $38                                         ; $7585: $ff
	rst  $38                                         ; $7586: $ff
	ld   sp, hl                                      ; $7587: $f9
	sub  d                                           ; $7588: $92
	ld   de, $1111                                   ; $7589: $11 $11 $11
	cp   a                                           ; $758c: $bf
	rst  $38                                         ; $758d: $ff
	rst  $38                                         ; $758e: $ff
	ld   sp, hl                                      ; $758f: $f9
	ld   h, a                                        ; $7590: $67
	ld   de, $1111                                   ; $7591: $11 $11 $11
	adc  a                                           ; $7594: $8f
	rst  $38                                         ; $7595: $ff
	rst  $38                                         ; $7596: $ff
	ld   hl, sp+$38                                  ; $7597: $f8 $38
	ld   de, $1111                                   ; $7599: $11 $11 $11
	ld   l, a                                        ; $759c: $6f
	rst  $38                                         ; $759d: $ff
	rst  $38                                         ; $759e: $ff
	ld   hl, sp+$36                                  ; $759f: $f8 $36
	ld   hl, $3111                                   ; $75a1: $21 $11 $31
	cpl                                              ; $75a4: $2f
	rst  $38                                         ; $75a5: $ff
	rst  $38                                         ; $75a6: $ff
	ei                                               ; $75a7: $fb
	ld   b, h                                        ; $75a8: $44
	add  c                                           ; $75a9: $81
	ld   de, $1fb1                                   ; $75aa: $11 $b1 $1f
	rst  $38                                         ; $75ad: $ff
	rst  $38                                         ; $75ae: $ff
	rst  $38                                         ; $75af: $ff
	ld   b, e                                        ; $75b0: $43
	add  e                                           ; $75b1: $83
	ld   de, $1549                                   ; $75b2: $11 $49 $15
	rst  $38                                         ; $75b5: $ff
	rst  $38                                         ; $75b6: $ff
	rst  $38                                         ; $75b7: $ff
	add  d                                           ; $75b8: $82
	ld   c, e                                        ; $75b9: $4b
	ld   de, $811d                                   ; $75ba: $11 $1d $81
	sbc  a                                           ; $75bd: $9f
	rst  $38                                         ; $75be: $ff
	rst  JumpTable                                         ; $75bf: $df
	di                                               ; $75c0: $f3
	ld   d, $c1                                      ; $75c1: $16 $c1
	ld   de, $17cb                                   ; $75c3: $11 $cb $17
	rst  $38                                         ; $75c6: $ff
	ld   a, [$41ff]                                  ; $75c7: $fa $ff $41

Call_0cb_75ca:
	ld   l, [hl]                                     ; $75ca: $6e
	ld   d, c                                        ; $75cb: $51
	ld   de, $1ff1                                   ; $75cc: $11 $f1 $1f
	rst  $38                                         ; $75cf: $ff
	rst  $38                                         ; $75d0: $ff
	rst  $38                                         ; $75d1: $ff
	ld   de, $11ad                                   ; $75d2: $11 $ad $11
	ld   a, [de]                                     ; $75d5: $1a
	pop  de                                          ; $75d6: $d1
	sbc  a                                           ; $75d7: $9f
	rst  $38                                         ; $75d8: $ff
	xor  a                                           ; $75d9: $af
	db   $f4                                         ; $75da: $f4
	inc  d                                           ; $75db: $14
	db   $db                                         ; $75dc: $db

jr_0cb_75dd:
	ld   de, $811f                                   ; $75dd: $11 $1f $81
	rst  $38                                         ; $75e0: $ff
	rst  $38                                         ; $75e1: $ff
	adc  a                                           ; $75e2: $8f
	pop  af                                          ; $75e3: $f1
	jr   jr_0cb_75dd                                 ; $75e4: $18 $f7

	ld   de, $111f                                   ; $75e6: $11 $1f $11
	rst  $38                                         ; $75e9: $ff
	db   $fd                                         ; $75ea: $fd
	rst  JumpTable                                         ; $75eb: $df
	pop  af                                          ; $75ec: $f1
	inc  e                                           ; $75ed: $1c
	db   $f4                                         ; $75ee: $f4
	ld   de, $111f                                   ; $75ef: $11 $1f $11
	rst  $38                                         ; $75f2: $ff
	db   $fc                                         ; $75f3: $fc
	rst  $38                                         ; $75f4: $ff
	pop  af                                          ; $75f5: $f1
	ccf                                              ; $75f6: $3f
	di                                               ; $75f7: $f3
	ld   de, $111f                                   ; $75f8: $11 $1f $11
	rst  $38                                         ; $75fb: $ff
	ei                                               ; $75fc: $fb
	rst  $38                                         ; $75fd: $ff
	pop  de                                          ; $75fe: $d1
	ld   c, [hl]                                     ; $75ff: $4e
	pop  af                                          ; $7600: $f1
	ld   de, $111f                                   ; $7601: $11 $1f $11
	rst  $38                                         ; $7604: $ff
	cp   $ff                                         ; $7605: $fe $ff
	pop  af                                          ; $7607: $f1
	dec  a                                           ; $7608: $3d
	di                                               ; $7609: $f3
	ld   de, $111f                                   ; $760a: $11 $1f $11
	rst  $38                                         ; $760d: $ff
	rst  $38                                         ; $760e: $ff
	rst  $38                                         ; $760f: $ff
	pop  af                                          ; $7610: $f1
	ld   a, [de]                                     ; $7611: $1a
	push af                                          ; $7612: $f5
	ld   de, $211f                                   ; $7613: $11 $1f $21
	rst  $38                                         ; $7616: $ff
	rst  $38                                         ; $7617: $ff
	cp   a                                           ; $7618: $bf
	pop  af                                          ; $7619: $f1
	rla                                              ; $761a: $17
	ld   sp, hl                                      ; $761b: $f9
	ld   de, $a11b                                   ; $761c: $11 $1b $a1
	rst  $28                                         ; $761f: $ef
	rst  $38                                         ; $7620: $ff
	sbc  a                                           ; $7621: $9f
	db   $f4                                         ; $7622: $f4
	ld   [de], a                                     ; $7623: $12
	rst  $38                                         ; $7624: $ff
	ld   de, $f111                                   ; $7625: $11 $11 $f1
	ld   e, a                                        ; $7628: $5f
	rst  $38                                         ; $7629: $ff
	rst  JumpTable                                         ; $762a: $df
	cp   $11                                         ; $762b: $fe $11
	xor  a                                           ; $762d: $af
	ld   [hl], c                                     ; $762e: $71
	ld   de, $1fe6                                   ; $762f: $11 $e6 $1f
	rst  $38                                         ; $7632: $ff
	ld   hl, sp-$01                                  ; $7633: $f8 $ff
	ld   de, $f14f                                   ; $7635: $11 $4f $f1
	ld   de, $161f                                   ; $7638: $11 $1f $16
	rst  $38                                         ; $763b: $ff
	ld   a, [$b1ff]                                  ; $763c: $fa $ff $b1
	inc  e                                           ; $763f: $1c
	rst  $30                                         ; $7640: $f7
	ld   de, $411e                                   ; $7641: $11 $1e $41
	rst  JumpTable                                         ; $7644: $df
	rst  $38                                         ; $7645: $ff
	sbc  a                                           ; $7646: $9f
	ldh  a, [c]                                      ; $7647: $f2
	inc  de                                          ; $7648: $13
	rst  $38                                         ; $7649: $ff
	ld   de, $e111                                   ; $764a: $11 $11 $e1
	ccf                                              ; $764d: $3f
	rst  $38                                         ; $764e: $ff
	rst  $38                                         ; $764f: $ff
	rst  $38                                         ; $7650: $ff
	ld   de, $919f                                   ; $7651: $11 $9f $91
	ld   de, $1c39                                   ; $7654: $11 $39 $1c
	rst  $38                                         ; $7657: $ff
	db   $fc                                         ; $7658: $fc
	rst  $38                                         ; $7659: $ff
	ld   d, c                                        ; $765a: $51
	dec  e                                           ; $765b: $1d
	db   $f4                                         ; $765c: $f4
	ld   de, $311b                                   ; $765d: $11 $1b $31
	rst  JumpTable                                         ; $7660: $df
	rst  $38                                         ; $7661: $ff
	rst  JumpTable                                         ; $7662: $df
	ldh  a, [c]                                      ; $7663: $f2
	ld   [de], a                                     ; $7664: $12
	rst  $38                                         ; $7665: $ff
	ld   hl, $b111                                   ; $7666: $21 $11 $b1
	ld   c, h                                        ; $7669: $4c
	rst  $38                                         ; $766a: $ff
	rst  $38                                         ; $766b: $ff
	rst  $38                                         ; $766c: $ff
	ld   de, $c19f                                   ; $766d: $11 $9f $c1
	ld   de, $1618                                   ; $7670: $11 $18 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7673: $cf
	rst  $38                                         ; $7674: $ff
	rst  $38                                         ; $7675: $ff
	jp   nz, $f92c                                   ; $7676: $c2 $2c $f9

	ld   de, $3111                                   ; $7679: $11 $11 $31
	sbc  h                                           ; $767c: $9c
	rst  $38                                         ; $767d: $ff
	rst  $38                                         ; $767e: $ff
	ld   sp, hl                                      ; $767f: $f9
	ld   [hl-], a                                    ; $7680: $32
	rst  $38                                         ; $7681: $ff
	ld   h, c                                        ; $7682: $61
	ld   de, $1812                                   ; $7683: $11 $12 $18
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7686: $cf
	rst  $38                                         ; $7687: $ff
	rst  $38                                         ; $7688: $ff
	sub  h                                           ; $7689: $94
	ld   c, a                                        ; $768a: $4f
	or   $11                                         ; $768b: $f6 $11
	ld   de, $6d21                                   ; $768d: $11 $21 $6d
	rst  $38                                         ; $7690: $ff
	rst  $38                                         ; $7691: $ff
	ld   a, [$ff46]                                  ; $7692: $fa $46 $ff
	ld   d, c                                        ; $7695: $51
	ld   de, $1611                                   ; $7696: $11 $11 $16
	rst  JumpTable                                         ; $7699: $df
	rst  $38                                         ; $769a: $ff
	rst  $38                                         ; $769b: $ff
	or   [hl]                                        ; $769c: $b6
	adc  a                                           ; $769d: $8f
	and  $11                                         ; $769e: $e6 $11
	ld   de, $3c21                                   ; $76a0: $11 $21 $3c
	rst  $38                                         ; $76a3: $ff
	rst  $38                                         ; $76a4: $ff
	db   $fd                                         ; $76a5: $fd
	adc  d                                           ; $76a6: $8a
	cp   $51                                         ; $76a7: $fe $51
	ld   de, $1311                                   ; $76a9: $11 $11 $13
	cp   a                                           ; $76ac: $bf
	rst  $38                                         ; $76ad: $ff
	rst  $38                                         ; $76ae: $ff
	ld   [$d7cf], a                                  ; $76af: $ea $cf $d7
	ld   de, $1111                                   ; $76b2: $11 $11 $11
	add  hl, de                                      ; $76b5: $19
	rst  $38                                         ; $76b6: $ff
	rst  $38                                         ; $76b7: $ff
	rst  $38                                         ; $76b8: $ff
	xor  $ed                                         ; $76b9: $ee $ed
	ld   [hl], c                                     ; $76bb: $71
	ld   de, $1111                                   ; $76bc: $11 $11 $11
	ld   e, a                                        ; $76bf: $5f
	rst  $38                                         ; $76c0: $ff
	rst  $38                                         ; $76c1: $ff
	rst  $38                                         ; $76c2: $ff
	cp   $d9                                         ; $76c3: $fe $d9
	ld   de, $1111                                   ; $76c5: $11 $11 $11
	inc  d                                           ; $76c8: $14
	rst  $38                                         ; $76c9: $ff
	rst  $38                                         ; $76ca: $ff
	rst  $38                                         ; $76cb: $ff
	rst  $38                                         ; $76cc: $ff
	cp   $91                                         ; $76cd: $fe $91
	ld   de, $1111                                   ; $76cf: $11 $11 $11
	add  hl, hl                                      ; $76d2: $29
	rst  $38                                         ; $76d3: $ff
	rst  $38                                         ; $76d4: $ff
	rst  $38                                         ; $76d5: $ff
	cp   $c9                                         ; $76d6: $fe $c9
	ld   d, c                                        ; $76d8: $51
	ld   de, $1113                                   ; $76d9: $11 $13 $11
	ld   c, c                                        ; $76dc: $49
	rst  JumpTable                                         ; $76dd: $df
	cp   $ed                                         ; $76de: $fe $ed
	set  1, d                                        ; $76e0: $cb $ca
	ld   [hl], l                                     ; $76e2: $75
	inc  [hl]                                        ; $76e3: $34
	halt                                             ; $76e4: $76
	ld   b, e                                        ; $76e5: $43
	ld   b, l                                        ; $76e6: $45
	ld   [hl], a                                     ; $76e7: $77
	adc  c                                           ; $76e8: $89
	sbc  c                                           ; $76e9: $99
	cp   e                                           ; $76ea: $bb
	cp   h                                           ; $76eb: $bc
	res  5, c                                        ; $76ec: $cb $a9
	xor  b                                           ; $76ee: $a8
	add  [hl]                                        ; $76ef: $86
	ld   d, h                                        ; $76f0: $54
	ld   b, l                                        ; $76f1: $45
	ld   d, l                                        ; $76f2: $55
	ld   h, [hl]                                     ; $76f3: $66
	ld   a, b                                        ; $76f4: $78
	sbc  d                                           ; $76f5: $9a
	cp   e                                           ; $76f6: $bb
	call z, $a9ca                                    ; $76f7: $cc $ca $a9
	adc  c                                           ; $76fa: $89
	ld   h, l                                        ; $76fb: $65
	ld   d, l                                        ; $76fc: $55
	ld   d, h                                        ; $76fd: $54
	ld   b, [hl]                                     ; $76fe: $46
	ld   [hl], a                                     ; $76ff: $77
	ld   a, b                                        ; $7700: $78
	xor  e                                           ; $7701: $ab
	xor  d                                           ; $7702: $aa
	xor  e                                           ; $7703: $ab
	cp   d                                           ; $7704: $ba
	sbc  d                                           ; $7705: $9a
	and  a                                           ; $7706: $a7
	ld   h, [hl]                                     ; $7707: $66
	ld   h, [hl]                                     ; $7708: $66
	ld   d, l                                        ; $7709: $55
	ld   h, [hl]                                     ; $770a: $66
	ld   h, [hl]                                     ; $770b: $66
	ld   a, b                                        ; $770c: $78
	sbc  c                                           ; $770d: $99
	xor  e                                           ; $770e: $ab
	cp   h                                           ; $770f: $bc
	cp   e                                           ; $7710: $bb
	xor  d                                           ; $7711: $aa
	add  a                                           ; $7712: $87
	halt                                             ; $7713: $76
	ld   d, h                                        ; $7714: $54
	ld   b, h                                        ; $7715: $44
	ld   b, l                                        ; $7716: $45
	ld   h, a                                        ; $7717: $67
	adc  d                                           ; $7718: $8a
	xor  e                                           ; $7719: $ab
	xor  h                                           ; $771a: $ac
	res  7, d                                        ; $771b: $cb $ba
	sbc  b                                           ; $771d: $98
	halt                                             ; $771e: $76
	ld   d, h                                        ; $771f: $54
	ld   d, l                                        ; $7720: $55
	ld   d, [hl]                                     ; $7721: $56
	ld   h, a                                        ; $7722: $67
	ld   a, b                                        ; $7723: $78
	xor  d                                           ; $7724: $aa
	xor  e                                           ; $7725: $ab
	xor  d                                           ; $7726: $aa
	xor  c                                           ; $7727: $a9
	add  a                                           ; $7728: $87
	ld   [hl], a                                     ; $7729: $77
	ld   [hl], a                                     ; $772a: $77
	halt                                             ; $772b: $76
	ld   [hl], a                                     ; $772c: $77
	ld   a, b                                        ; $772d: $78
	adc  b                                           ; $772e: $88
	sbc  c                                           ; $772f: $99
	sbc  b                                           ; $7730: $98
	adc  b                                           ; $7731: $88
	ld   [hl], a                                     ; $7732: $77
	adc  b                                           ; $7733: $88
	sbc  b                                           ; $7734: $98
	adc  b                                           ; $7735: $88
	ld   [hl], a                                     ; $7736: $77
	adc  b                                           ; $7737: $88
	adc  b                                           ; $7738: $88
	adc  b                                           ; $7739: $88
	sbc  c                                           ; $773a: $99
	add  a                                           ; $773b: $87
	ld   [hl], a                                     ; $773c: $77
	adc  b                                           ; $773d: $88
	ld   [hl], a                                     ; $773e: $77
	ld   [hl], a                                     ; $773f: $77
	adc  b                                           ; $7740: $88
	adc  c                                           ; $7741: $89
	adc  c                                           ; $7742: $89
	sbc  c                                           ; $7743: $99
	adc  b                                           ; $7744: $88
	add  a                                           ; $7745: $87
	adc  b                                           ; $7746: $88
	add  a                                           ; $7747: $87
	adc  b                                           ; $7748: $88
	add  a                                           ; $7749: $87
	ld   a, b                                        ; $774a: $78
	sbc  c                                           ; $774b: $99
	adc  b                                           ; $774c: $88
	sbc  c                                           ; $774d: $99
	adc  b                                           ; $774e: $88
	adc  b                                           ; $774f: $88
	sub  a                                           ; $7750: $97
	ld   a, b                                        ; $7751: $78
	adc  b                                           ; $7752: $88
	add  a                                           ; $7753: $87
	adc  b                                           ; $7754: $88
	sbc  c                                           ; $7755: $99
	adc  b                                           ; $7756: $88
	sbc  b                                           ; $7757: $98
	adc  b                                           ; $7758: $88
	sbc  b                                           ; $7759: $98
	ld   a, b                                        ; $775a: $78
	adc  b                                           ; $775b: $88
	add  a                                           ; $775c: $87
	ld   a, b                                        ; $775d: $78
	adc  b                                           ; $775e: $88
	adc  b                                           ; $775f: $88
	sbc  c                                           ; $7760: $99
	adc  c                                           ; $7761: $89
	sbc  c                                           ; $7762: $99
	adc  b                                           ; $7763: $88
	adc  b                                           ; $7764: $88
	adc  b                                           ; $7765: $88
	ld   [hl], a                                     ; $7766: $77
	ld   [hl], a                                     ; $7767: $77
	adc  b                                           ; $7768: $88
	adc  c                                           ; $7769: $89
	sbc  b                                           ; $776a: $98
	sbc  c                                           ; $776b: $99
	sbc  b                                           ; $776c: $98
	adc  b                                           ; $776d: $88
	adc  b                                           ; $776e: $88
	add  a                                           ; $776f: $87
	ld   [hl], a                                     ; $7770: $77
	ld   a, b                                        ; $7771: $78
	adc  b                                           ; $7772: $88
	sbc  c                                           ; $7773: $99
	adc  c                                           ; $7774: $89
	adc  c                                           ; $7775: $89
	adc  b                                           ; $7776: $88
	adc  b                                           ; $7777: $88
	adc  b                                           ; $7778: $88
	ld   [hl], a                                     ; $7779: $77
	ld   [hl], a                                     ; $777a: $77
	adc  b                                           ; $777b: $88
	sbc  c                                           ; $777c: $99
	adc  b                                           ; $777d: $88
	sbc  b                                           ; $777e: $98
	sbc  b                                           ; $777f: $98
	adc  b                                           ; $7780: $88
	adc  b                                           ; $7781: $88
	ld   [hl], a                                     ; $7782: $77
	ld   [hl], a                                     ; $7783: $77
	adc  b                                           ; $7784: $88
	adc  c                                           ; $7785: $89
	sbc  b                                           ; $7786: $98
	adc  b                                           ; $7787: $88
	adc  b                                           ; $7788: $88
	adc  b                                           ; $7789: $88
	adc  b                                           ; $778a: $88
	adc  b                                           ; $778b: $88
	add  a                                           ; $778c: $87
	ld   a, b                                        ; $778d: $78
	adc  b                                           ; $778e: $88
	sbc  c                                           ; $778f: $99
	adc  b                                           ; $7790: $88
	sbc  c                                           ; $7791: $99
	adc  b                                           ; $7792: $88
	adc  b                                           ; $7793: $88
	adc  b                                           ; $7794: $88
	adc  b                                           ; $7795: $88
	adc  b                                           ; $7796: $88
	adc  b                                           ; $7797: $88
	adc  c                                           ; $7798: $89
	adc  b                                           ; $7799: $88
	adc  b                                           ; $779a: $88
	adc  b                                           ; $779b: $88
	adc  b                                           ; $779c: $88
	adc  b                                           ; $779d: $88
	adc  b                                           ; $779e: $88
	adc  b                                           ; $779f: $88
	adc  b                                           ; $77a0: $88
	adc  b                                           ; $77a1: $88
	sbc  b                                           ; $77a2: $98
	adc  b                                           ; $77a3: $88
	adc  b                                           ; $77a4: $88
	add  a                                           ; $77a5: $87
	ld   a, b                                        ; $77a6: $78
	adc  b                                           ; $77a7: $88
	adc  b                                           ; $77a8: $88

Call_0cb_77a9:
	adc  b                                           ; $77a9: $88
	adc  b                                           ; $77aa: $88
	adc  c                                           ; $77ab: $89
	adc  b                                           ; $77ac: $88
	adc  b                                           ; $77ad: $88
	adc  b                                           ; $77ae: $88
	ld   [hl], a                                     ; $77af: $77
	adc  b                                           ; $77b0: $88
	adc  b                                           ; $77b1: $88
	adc  b                                           ; $77b2: $88
	adc  b                                           ; $77b3: $88
	adc  c                                           ; $77b4: $89
	sbc  b                                           ; $77b5: $98
	adc  b                                           ; $77b6: $88
	adc  b                                           ; $77b7: $88
	ld   [hl], a                                     ; $77b8: $77
	adc  b                                           ; $77b9: $88
	adc  b                                           ; $77ba: $88
	adc  b                                           ; $77bb: $88
	adc  b                                           ; $77bc: $88
	adc  b                                           ; $77bd: $88
	adc  b                                           ; $77be: $88
	adc  b                                           ; $77bf: $88
	adc  b                                           ; $77c0: $88
	add  a                                           ; $77c1: $87
	ld   a, b                                        ; $77c2: $78
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

Call_0cb_78b9:
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
	adc  c                                           ; $78f7: $89
	adc  b                                           ; $78f8: $88
	adc  b                                           ; $78f9: $88
	adc  b                                           ; $78fa: $88
	adc  c                                           ; $78fb: $89
	cp   d                                           ; $78fc: $ba
	cp   c                                           ; $78fd: $b9
	adc  d                                           ; $78fe: $8a
	ld   [hl], a                                     ; $78ff: $77
	adc  b                                           ; $7900: $88
	halt                                             ; $7901: $76
	ld   a, c                                        ; $7902: $79
	or   a                                           ; $7903: $b7
	ld   l, c                                        ; $7904: $69
	adc  d                                           ; $7905: $8a
	jp   c, $cb68                                    ; $7906: $da $68 $cb

	ld   h, a                                        ; $7909: $67
	ld   a, c                                        ; $790a: $79
	add  [hl]                                        ; $790b: $86
	ld   l, b                                        ; $790c: $68
	sub  a                                           ; $790d: $97
	ld   [hl], a                                     ; $790e: $77
	ld   a, b                                        ; $790f: $78
	sbc  e                                           ; $7910: $9b
	ld   [hl], l                                     ; $7911: $75
	ld   a, c                                        ; $7912: $79
	adc  c                                           ; $7913: $89
	cp   b                                           ; $7914: $b8
	adc  c                                           ; $7915: $89
	sub  a                                           ; $7916: $97
	ld   l, b                                        ; $7917: $68
	adc  b                                           ; $7918: $88
	halt                                             ; $7919: $76
	ld   e, b                                        ; $791a: $58
	add  [hl]                                        ; $791b: $86
	ld   a, c                                        ; $791c: $79
	adc  b                                           ; $791d: $88
	sbc  c                                           ; $791e: $99
	adc  c                                           ; $791f: $89
	ld   [hl], l                                     ; $7920: $75
	halt                                             ; $7921: $76
	ld   h, a                                        ; $7922: $67
	ld   [hl], a                                     ; $7923: $77
	ld   [hl], a                                     ; $7924: $77
	ld   a, b                                        ; $7925: $78
	sbc  c                                           ; $7926: $99
	sbc  b                                           ; $7927: $98
	sbc  c                                           ; $7928: $99
	add  [hl]                                        ; $7929: $86
	ld   a, c                                        ; $792a: $79
	ld   [hl], a                                     ; $792b: $77
	ld   [hl], a                                     ; $792c: $77
	ld   d, [hl]                                     ; $792d: $56
	halt                                             ; $792e: $76
	ld   h, [hl]                                     ; $792f: $66
	ld   d, h                                        ; $7930: $54
	ld   [hl], a                                     ; $7931: $77
	ld   h, a                                        ; $7932: $67
	sbc  c                                           ; $7933: $99
	cp   l                                           ; $7934: $bd
	call z, $cbdd                                    ; $7935: $cc $dd $cb
	sbc  b                                           ; $7938: $98
	ld   h, d                                        ; $7939: $62
	ld   de, $1111                                   ; $793a: $11 $11 $11
	inc  de                                          ; $793d: $13
	ld   a, e                                        ; $793e: $7b
	rst  $28                                         ; $793f: $ef
	rst  $38                                         ; $7940: $ff
	rst  $38                                         ; $7941: $ff
	rst  $28                                         ; $7942: $ef
	rst  $38                                         ; $7943: $ff
	rst  $38                                         ; $7944: $ff
	ret                                              ; $7945: $c9


	ld   hl, $1111                                   ; $7946: $21 $11 $11
	ld   de, $9e14                                   ; $7949: $11 $14 $9e
	rst  $38                                         ; $794c: $ff
	rst  $38                                         ; $794d: $ff
	rst  $38                                         ; $794e: $ff
	adc  $ff                                         ; $794f: $ce $ff
	rst  $38                                         ; $7951: $ff
	or   a                                           ; $7952: $b7
	ld   de, $1111                                   ; $7953: $11 $11 $11
	ld   de, $ff17                                   ; $7956: $11 $17 $ff
	rst  $38                                         ; $7959: $ff
	rst  $38                                         ; $795a: $ff
	db   $ed                                         ; $795b: $ed
	call c, $feff                                    ; $795c: $dc $ff $fe
	ld   d, c                                        ; $795f: $51
	ld   de, $1111                                   ; $7960: $11 $11 $11
	ld   a, [de]                                     ; $7963: $1a
	rst  $38                                         ; $7964: $ff
	rst  $38                                         ; $7965: $ff
	rst  $38                                         ; $7966: $ff
	db   $fc                                         ; $7967: $fc
	set  7, a                                        ; $7968: $cb $ff
	db   $fc                                         ; $796a: $fc
	ld   d, c                                        ; $796b: $51
	ld   de, $1111                                   ; $796c: $11 $11 $11
	ld   e, l                                        ; $796f: $5d
	rst  $38                                         ; $7970: $ff
	rst  $38                                         ; $7971: $ff
	cp   $6a                                         ; $7972: $fe $6a
	rst  $28                                         ; $7974: $ef
	cp   $cd                                         ; $7975: $fe $cd
	ld   d, c                                        ; $7977: $51
	ld   de, $1111                                   ; $7978: $11 $11 $11
	ld   l, a                                        ; $797b: $6f
	rst  $38                                         ; $797c: $ff
	rst  $38                                         ; $797d: $ff
	rst  $38                                         ; $797e: $ff
	jp   z, $ffcf                                    ; $797f: $ca $cf $ff

	or   [hl]                                        ; $7982: $b6
	ld   de, $1111                                   ; $7983: $11 $11 $11
	dec  d                                           ; $7986: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7987: $cf
	rst  $38                                         ; $7988: $ff
	rst  $38                                         ; $7989: $ff
	cp   b                                           ; $798a: $b8
	ld   l, l                                        ; $798b: $6d
	rst  $38                                         ; $798c: $ff
	db   $fd                                         ; $798d: $fd
	ret  c                                           ; $798e: $d8

	ld   de, $1111                                   ; $798f: $11 $11 $11
	inc  d                                           ; $7992: $14
	rst  $28                                         ; $7993: $ef
	rst  $38                                         ; $7994: $ff
	rst  $38                                         ; $7995: $ff
	db   $fd                                         ; $7996: $fd
	call z, $ffff                                    ; $7997: $cc $ff $ff
	adc  b                                           ; $799a: $88
	ld   de, $1111                                   ; $799b: $11 $11 $11
	inc  de                                          ; $799e: $13
	rst  $38                                         ; $799f: $ff
	rst  $38                                         ; $79a0: $ff
	rst  $38                                         ; $79a1: $ff
	ret  c                                           ; $79a2: $d8

	cp   l                                           ; $79a3: $bd
	rst  $38                                         ; $79a4: $ff
	db   $fc                                         ; $79a5: $fc
	sub  [hl]                                        ; $79a6: $96
	ld   de, $1111                                   ; $79a7: $11 $11 $11
	rla                                              ; $79aa: $17
	cp   a                                           ; $79ab: $bf
	rst  $38                                         ; $79ac: $ff
	rst  $38                                         ; $79ad: $ff
	xor  c                                           ; $79ae: $a9
	call $ffff                                       ; $79af: $cd $ff $ff
	or   h                                           ; $79b2: $b4
	ld   de, $1111                                   ; $79b3: $11 $11 $11
	rla                                              ; $79b6: $17
	rst  JumpTable                                         ; $79b7: $df
	rst  $38                                         ; $79b8: $ff
	rst  $38                                         ; $79b9: $ff
	ld   hl, sp-$32                                  ; $79ba: $f8 $ce
	rst  $38                                         ; $79bc: $ff
	ld   a, [$11a7]                                  ; $79bd: $fa $a7 $11
	ld   de, $1111                                   ; $79c0: $11 $11 $11
	xor  a                                           ; $79c3: $af
	rst  $38                                         ; $79c4: $ff
	rst  $38                                         ; $79c5: $ff
	db   $ed                                         ; $79c6: $ed
	ld   a, [$ffff]                                  ; $79c7: $fa $ff $ff
	sub  $11                                         ; $79ca: $d6 $11
	ld   de, $1111                                   ; $79cc: $11 $11 $11
	ld   a, c                                        ; $79cf: $79
	rst  $38                                         ; $79d0: $ff
	rst  $38                                         ; $79d1: $ff
	rst  $38                                         ; $79d2: $ff
	jp   hl                                          ; $79d3: $e9


	call $ffff                                       ; $79d4: $cd $ff $ff
	ld   sp, $1111                                   ; $79d7: $31 $11 $11
	ld   de, $cf19                                   ; $79da: $11 $19 $cf
	rst  $38                                         ; $79dd: $ff
	rst  $38                                         ; $79de: $ff
	ei                                               ; $79df: $fb
	rst  $38                                         ; $79e0: $ff
	db   $fd                                         ; $79e1: $fd
	rst  $38                                         ; $79e2: $ff
	push bc                                          ; $79e3: $c5
	ld   de, $1111                                   ; $79e4: $11 $11 $11
	ld   de, $ff6b                                   ; $79e7: $11 $6b $ff
	rst  $38                                         ; $79ea: $ff
	rst  $38                                         ; $79eb: $ff
	set  3, a                                        ; $79ec: $cb $df
	rst  $28                                         ; $79ee: $ef
	ld   a, [$1131]                                  ; $79ef: $fa $31 $11
	ld   de, $3411                                   ; $79f2: $11 $11 $34
	sbc  [hl]                                        ; $79f5: $9e
	rst  $38                                         ; $79f6: $ff
	rst  $38                                         ; $79f7: $ff
	db   $fd                                         ; $79f8: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79f9: $cf
	db   $db                                         ; $79fa: $db
	rst  $38                                         ; $79fb: $ff
	add  $11                                         ; $79fc: $c6 $11
	ld   de, $1111                                   ; $79fe: $11 $11 $11
	sub  l                                           ; $7a01: $95
	rra                                              ; $7a02: $1f
	rst  $38                                         ; $7a03: $ff
	rst  $38                                         ; $7a04: $ff
	rst  $38                                         ; $7a05: $ff
	ld   a, [$ffcf]                                  ; $7a06: $fa $cf $ff
	ld   h, e                                        ; $7a09: $63
	ld   de, $1111                                   ; $7a0a: $11 $11 $11
	ld   de, $ff16                                   ; $7a0d: $11 $16 $ff
	rst  $38                                         ; $7a10: $ff
	rst  $38                                         ; $7a11: $ff
	ei                                               ; $7a12: $fb
	cp   e                                           ; $7a13: $bb
	cp   a                                           ; $7a14: $bf
	rst  $30                                         ; $7a15: $f7
	ld   [hl], h                                     ; $7a16: $74
	ld   de, $1111                                   ; $7a17: $11 $11 $11
	ld   de, $ff4b                                   ; $7a1a: $11 $4b $ff
	rst  $38                                         ; $7a1d: $ff
	rst  $38                                         ; $7a1e: $ff
	rst  $28                                         ; $7a1f: $ef
	xor  h                                           ; $7a20: $ac
	rst  $38                                         ; $7a21: $ff
	db   $db                                         ; $7a22: $db
	ld   sp, $1111                                   ; $7a23: $31 $11 $11
	ld   de, $4c11                                   ; $7a26: $11 $11 $4c
	rst  $38                                         ; $7a29: $ff
	rst  $38                                         ; $7a2a: $ff
	rst  $38                                         ; $7a2b: $ff
	call z, $ffcd                                    ; $7a2c: $cc $cd $ff
	rst  $10                                         ; $7a2f: $d7
	ld   d, c                                        ; $7a30: $51
	ld   de, $1111                                   ; $7a31: $11 $11 $11
	ld   de, $ff5f                                   ; $7a34: $11 $5f $ff
	rst  $38                                         ; $7a37: $ff
	rst  $38                                         ; $7a38: $ff
	or   $9f                                         ; $7a39: $f6 $9f
	rst  $38                                         ; $7a3b: $ff
	or   l                                           ; $7a3c: $b5
	ld   d, c                                        ; $7a3d: $51
	ld   de, $1111                                   ; $7a3e: $11 $11 $11
	dec  b                                           ; $7a41: $05
	xor  [hl]                                        ; $7a42: $ae
	rst  $38                                         ; $7a43: $ff
	rst  $38                                         ; $7a44: $ff
	rst  $28                                         ; $7a45: $ef
	ld   a, [$ffcf]                                  ; $7a46: $fa $cf $ff
	add  e                                           ; $7a49: $83
	ld   b, c                                        ; $7a4a: $41
	ld   de, $1111                                   ; $7a4b: $11 $11 $11
	ld   [de], a                                     ; $7a4e: $12
	cp   a                                           ; $7a4f: $bf
	rst  $38                                         ; $7a50: $ff
	rst  $38                                         ; $7a51: $ff
	rst  $38                                         ; $7a52: $ff
	cp   e                                           ; $7a53: $bb
	rst  $38                                         ; $7a54: $ff
	db   $fc                                         ; $7a55: $fc
	add  a                                           ; $7a56: $87
	ld   d, c                                        ; $7a57: $51
	ld   de, $1111                                   ; $7a58: $11 $11 $11
	jr   @+$01                                       ; $7a5b: $18 $ff

	rst  $38                                         ; $7a5d: $ff
	rst  $38                                         ; $7a5e: $ff
	rst  $38                                         ; $7a5f: $ff
	ld   a, [$ffde]                                  ; $7a60: $fa $de $ff
	sub  h                                           ; $7a63: $94
	ld   [hl], c                                     ; $7a64: $71
	ld   de, $1111                                   ; $7a65: $11 $11 $11
	inc  de                                          ; $7a68: $13
	adc  a                                           ; $7a69: $8f
	rst  $38                                         ; $7a6a: $ff
	rst  $38                                         ; $7a6b: $ff
	db   $fd                                         ; $7a6c: $fd
	call c, $fecf                                    ; $7a6d: $dc $cf $fe
	add  sp, $41                                     ; $7a70: $e8 $41
	ld   de, $1111                                   ; $7a72: $11 $11 $11
	inc  de                                          ; $7a75: $13
	ld   c, a                                        ; $7a76: $4f
	rst  $38                                         ; $7a77: $ff
	rst  $38                                         ; $7a78: $ff
	rst  $38                                         ; $7a79: $ff
	ld   a, [hl]                                     ; $7a7a: $7e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a7b: $cf
	ld   sp, hl                                      ; $7a7c: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a7d: $cf
	ld   de, $1111                                   ; $7a7e: $11 $11 $11
	ld   de, $7b11                                   ; $7a81: $11 $11 $7b
	rst  $38                                         ; $7a84: $ff
	rst  $38                                         ; $7a85: $ff
	rst  $38                                         ; $7a86: $ff
	sbc  d                                           ; $7a87: $9a
	rst  JumpTable                                         ; $7a88: $df
	rst  $38                                         ; $7a89: $ff
	xor  [hl]                                        ; $7a8a: $ae
	and  c                                           ; $7a8b: $a1
	ld   de, $1111                                   ; $7a8c: $11 $11 $11
	ld   de, $df61                                   ; $7a8f: $11 $61 $df
	rst  $38                                         ; $7a92: $ff
	rst  $38                                         ; $7a93: $ff
	rst  $38                                         ; $7a94: $ff
	sbc  a                                           ; $7a95: $9f
	db   $fc                                         ; $7a96: $fc
	cp   a                                           ; $7a97: $bf
	or   [hl]                                        ; $7a98: $b6
	ld   hl, $1111                                   ; $7a99: $21 $11 $11
	ld   de, $2f18                                   ; $7a9c: $11 $18 $2f
	rst  $38                                         ; $7a9f: $ff
	rst  $38                                         ; $7aa0: $ff
	rst  $38                                         ; $7aa1: $ff
	db   $fc                                         ; $7aa2: $fc
	db   $fd                                         ; $7aa3: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7aa4: $cf
	rst  $10                                         ; $7aa5: $d7
	ld   [hl], c                                     ; $7aa6: $71
	ld   de, $1111                                   ; $7aa7: $11 $11 $11
	ld   [de], a                                     ; $7aaa: $12
	ld   d, [hl]                                     ; $7aab: $56
	rst  $38                                         ; $7aac: $ff
	rst  $38                                         ; $7aad: $ff
	cp   $fa                                         ; $7aae: $fe $fa
	cp   a                                           ; $7ab0: $bf
	sbc  [hl]                                        ; $7ab1: $9e
	rst  $30                                         ; $7ab2: $f7
	add  d                                           ; $7ab3: $82
	ld   de, $1111                                   ; $7ab4: $11 $11 $11
	ld   de, $ef09                                   ; $7ab7: $11 $09 $ef
	rst  $38                                         ; $7aba: $ff
	rst  $38                                         ; $7abb: $ff
	rst  $38                                         ; $7abc: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7abd: $cf
	ld   a, [$48fc]                                  ; $7abe: $fa $fc $48
	ld   de, $1111                                   ; $7ac1: $11 $11 $11
	ld   de, $3f21                                   ; $7ac4: $11 $21 $3f
	rst  $38                                         ; $7ac7: $ff
	rst  $38                                         ; $7ac8: $ff
	rst  $38                                         ; $7ac9: $ff
	adc  $fe                                         ; $7aca: $ce $fe
	db   $fd                                         ; $7acc: $fd
	cp   e                                           ; $7acd: $bb
	ld   h, c                                        ; $7ace: $61
	ld   de, $1111                                   ; $7acf: $11 $11 $11
	ld   de, $df19                                   ; $7ad2: $11 $19 $df
	rst  $38                                         ; $7ad5: $ff
	rst  $38                                         ; $7ad6: $ff
	rst  $38                                         ; $7ad7: $ff
	xor  e                                           ; $7ad8: $ab
	ei                                               ; $7ad9: $fb
	db   $fc                                         ; $7ada: $fc
	ld   a, l                                        ; $7adb: $7d
	ld   de, $1111                                   ; $7adc: $11 $11 $11
	ld   de, $4f11                                   ; $7adf: $11 $11 $4f
	rst  $38                                         ; $7ae2: $ff
	rst  $38                                         ; $7ae3: $ff
	rst  $38                                         ; $7ae4: $ff
	db   $fc                                         ; $7ae5: $fc
	ld   a, [$97cf]                                  ; $7ae6: $fa $cf $97
	and  c                                           ; $7ae9: $a1
	ld   de, $1111                                   ; $7aea: $11 $11 $11
	ld   de, $df17                                   ; $7aed: $11 $17 $df
	rst  $38                                         ; $7af0: $ff
	rst  $38                                         ; $7af1: $ff
	rst  $38                                         ; $7af2: $ff
	db   $fc                                         ; $7af3: $fc
	cp   a                                           ; $7af4: $bf
	ret                                              ; $7af5: $c9


	or   [hl]                                        ; $7af6: $b6
	ld   hl, $1111                                   ; $7af7: $21 $11 $11
	ld   de, $4f11                                   ; $7afa: $11 $11 $4f
	rst  $38                                         ; $7afd: $ff
	rst  $38                                         ; $7afe: $ff
	rst  $38                                         ; $7aff: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b00: $cf
	and  a                                           ; $7b01: $a7
	db   $fc                                         ; $7b02: $fc
	xor  d                                           ; $7b03: $aa
	ld   b, [hl]                                     ; $7b04: $46
	ld   de, $1111                                   ; $7b05: $11 $11 $11
	ld   de, $df12                                   ; $7b08: $11 $12 $df
	rst  $38                                         ; $7b0b: $ff
	rst  $38                                         ; $7b0c: $ff
	rst  $38                                         ; $7b0d: $ff
	rst  JumpTable                                         ; $7b0e: $df
	ld   a, [$6efd]                                  ; $7b0f: $fa $fd $6e
	ld   [hl], c                                     ; $7b12: $71
	ld   de, $1111                                   ; $7b13: $11 $11 $11
	ld   de, $ff17                                   ; $7b16: $11 $17 $ff
	rst  $38                                         ; $7b19: $ff
	rst  $38                                         ; $7b1a: $ff
	rst  $38                                         ; $7b1b: $ff
	db   $fc                                         ; $7b1c: $fc
	ld   e, a                                        ; $7b1d: $5f
	or   $ca                                         ; $7b1e: $f6 $ca
	ld   hl, $1111                                   ; $7b20: $21 $11 $11
	ld   de, $5a11                                   ; $7b23: $11 $11 $5a
	rst  $38                                         ; $7b26: $ff
	rst  $38                                         ; $7b27: $ff
	rst  $38                                         ; $7b28: $ff
	rst  $28                                         ; $7b29: $ef
	ld   hl, sp-$61                                  ; $7b2a: $f8 $9f
	adc  e                                           ; $7b2c: $8b
	and  c                                           ; $7b2d: $a1
	ld   de, $1111                                   ; $7b2e: $11 $11 $11
	ld   de, $9e13                                   ; $7b31: $11 $13 $9e
	rst  $38                                         ; $7b34: $ff
	rst  $38                                         ; $7b35: $ff
	rst  $38                                         ; $7b36: $ff
	db   $fc                                         ; $7b37: $fc
	rst  JumpTable                                         ; $7b38: $df
	adc  h                                           ; $7b39: $8c
	db   $f4                                         ; $7b3a: $f4
	ld   [hl], l                                     ; $7b3b: $75
	ld   de, $1111                                   ; $7b3c: $11 $11 $11
	ld   de, $ff51                                   ; $7b3f: $11 $51 $ff
	rst  $38                                         ; $7b42: $ff
	rst  $38                                         ; $7b43: $ff
	rst  $38                                         ; $7b44: $ff
	db   $dd                                         ; $7b45: $dd
	ld   [hl], a                                     ; $7b46: $77
	ei                                               ; $7b47: $fb
	add  hl, de                                      ; $7b48: $19
	add  c                                           ; $7b49: $81
	ld   de, $1111                                   ; $7b4a: $11 $11 $11
	ld   d, $4b                                      ; $7b4d: $16 $4b
	rst  $38                                         ; $7b4f: $ff
	rst  $38                                         ; $7b50: $ff
	rst  $38                                         ; $7b51: $ff
	rst  $38                                         ; $7b52: $ff
	adc  e                                           ; $7b53: $8b
	or   $af                                         ; $7b54: $f6 $af
	ld   hl, $1181                                   ; $7b56: $21 $81 $11
	ld   de, $1111                                   ; $7b59: $11 $11 $11
	sbc  a                                           ; $7b5c: $9f
	rst  $38                                         ; $7b5d: $ff
	rst  $38                                         ; $7b5e: $ff
	rst  $38                                         ; $7b5f: $ff
	db   $fd                                         ; $7b60: $fd
	rst  $20                                         ; $7b61: $e7
	xor  a                                           ; $7b62: $af
	or   a                                           ; $7b63: $b7
	or   h                                           ; $7b64: $b4
	ld   de, $1111                                   ; $7b65: $11 $11 $11
	ld   de, $ff15                                   ; $7b68: $11 $15 $ff
	rst  $38                                         ; $7b6b: $ff
	rst  $38                                         ; $7b6c: $ff
	rst  $38                                         ; $7b6d: $ff
	rst  $30                                         ; $7b6e: $f7
	cp   e                                           ; $7b6f: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b70: $cf
	and  [hl]                                        ; $7b71: $a6
	or   d                                           ; $7b72: $b2
	ld   de, $1111                                   ; $7b73: $11 $11 $11
	ld   de, $ff16                                   ; $7b76: $11 $16 $ff
	rst  $38                                         ; $7b79: $ff
	rst  $38                                         ; $7b7a: $ff
	db   $fd                                         ; $7b7b: $fd
	xor  a                                           ; $7b7c: $af
	sbc  d                                           ; $7b7d: $9a
	sbc  $b2                                         ; $7b7e: $de $b2
	ld   [hl+], a                                    ; $7b80: $22
	ld   de, $1111                                   ; $7b81: $11 $11 $11
	inc  de                                          ; $7b84: $13
	ld   e, [hl]                                     ; $7b85: $5e
	rst  $38                                         ; $7b86: $ff
	rst  $38                                         ; $7b87: $ff
	rst  $38                                         ; $7b88: $ff
	ld   hl, sp-$51                                  ; $7b89: $f8 $af
	cp   c                                           ; $7b8b: $b9
	db   $fd                                         ; $7b8c: $fd
	inc  de                                          ; $7b8d: $13
	ld   de, $1111                                   ; $7b8e: $11 $11 $11
	ld   de, $8f67                                   ; $7b91: $11 $67 $8f
	rst  $38                                         ; $7b94: $ff
	rst  $38                                         ; $7b95: $ff
	rst  $38                                         ; $7b96: $ff
	reti                                             ; $7b97: $d9


	sbc  a                                           ; $7b98: $9f
	adc  b                                           ; $7b99: $88
	or   $18                                         ; $7b9a: $f6 $18
	ld   de, $1111                                   ; $7b9c: $11 $11 $11
	ld   de, $ef88                                   ; $7b9f: $11 $88 $ef
	rst  $38                                         ; $7ba2: $ff
	rst  $38                                         ; $7ba3: $ff
	rst  $38                                         ; $7ba4: $ff
	sub  a                                           ; $7ba5: $97
	xor  [hl]                                        ; $7ba6: $ae
	cp   h                                           ; $7ba7: $bc
	ei                                               ; $7ba8: $fb
	ld   d, c                                        ; $7ba9: $51
	ld   de, $1111                                   ; $7baa: $11 $11 $11
	ld   de, $ff59                                   ; $7bad: $11 $59 $ff
	rst  $38                                         ; $7bb0: $ff
	ei                                               ; $7bb1: $fb
	rst  $38                                         ; $7bb2: $ff
	ld   c, c                                        ; $7bb3: $49
	cp   b                                           ; $7bb4: $b8
	rst  $38                                         ; $7bb5: $ff
	ld   d, a                                        ; $7bb6: $57
	ld   d, c                                        ; $7bb7: $51
	ld   de, $1111                                   ; $7bb8: $11 $11 $11
	ld   hl, $ff1b                                   ; $7bbb: $21 $1b $ff
	rst  $38                                         ; $7bbe: $ff
	rst  $38                                         ; $7bbf: $ff
	db   $fd                                         ; $7bc0: $fd
	ccf                                              ; $7bc1: $3f
	and  [hl]                                        ; $7bc2: $a6
	ei                                               ; $7bc3: $fb
	ld   e, [hl]                                     ; $7bc4: $5e
	ld   d, c                                        ; $7bc5: $51
	ld   de, $1111                                   ; $7bc6: $11 $11 $11
	ld   hl, $ff1f                                   ; $7bc9: $21 $1f $ff
	rst  $38                                         ; $7bcc: $ff
	rst  $28                                         ; $7bcd: $ef
	di                                               ; $7bce: $f3
	xor  d                                           ; $7bcf: $aa
	adc  a                                           ; $7bd0: $8f
	cp   $b3                                         ; $7bd1: $fe $b3
	ld   d, c                                        ; $7bd3: $51
	ld   de, $1111                                   ; $7bd4: $11 $11 $11
	rla                                              ; $7bd7: $17
	ld   [$ffff], a                                  ; $7bd8: $ea $ff $ff
	rst  $38                                         ; $7bdb: $ff
	push af                                          ; $7bdc: $f5
	ld   c, a                                        ; $7bdd: $4f
	ret                                              ; $7bde: $c9


	rst  $38                                         ; $7bdf: $ff
	add  [hl]                                        ; $7be0: $86
	ld   [hl-], a                                    ; $7be1: $32
	ld   de, $1111                                   ; $7be2: $11 $11 $11
	ld   de, $ff9f                                   ; $7be5: $11 $9f $ff
	rst  $38                                         ; $7be8: $ff
	push af                                          ; $7be9: $f5
	db   $fc                                         ; $7bea: $fc
	ld   c, [hl]                                     ; $7beb: $4e
	cp   c                                           ; $7bec: $b9
	rst  $38                                         ; $7bed: $ff
	sub  [hl]                                        ; $7bee: $96
	ld   [hl], d                                     ; $7bef: $72
	ld   de, $1111                                   ; $7bf0: $11 $11 $11
	inc  de                                          ; $7bf3: $13
	ld   e, a                                        ; $7bf4: $5f
	rst  $38                                         ; $7bf5: $ff
	rst  $38                                         ; $7bf6: $ff
	rst  $38                                         ; $7bf7: $ff
	call nc, $bd7a                                   ; $7bf8: $d4 $7a $bd
	rst  $28                                         ; $7bfb: $ef
	push af                                          ; $7bfc: $f5
	ld   a, c                                        ; $7bfd: $79
	ld   de, $1111                                   ; $7bfe: $11 $11 $11
	ld   de, $ff5f                                   ; $7c01: $11 $5f $ff
	rst  $38                                         ; $7c04: $ff
	rst  $38                                         ; $7c05: $ff
	inc  sp                                          ; $7c06: $33
	rst  $30                                         ; $7c07: $f7
	rst  JumpTable                                         ; $7c08: $df
	sbc  a                                           ; $7c09: $9f
	push af                                          ; $7c0a: $f5
	ld   l, d                                        ; $7c0b: $6a
	ld   de, $1111                                   ; $7c0c: $11 $11 $11
	ld   de, $ff4f                                   ; $7c0f: $11 $4f $ff
	rst  $38                                         ; $7c12: $ff
	db   $fc                                         ; $7c13: $fc
	xor  c                                           ; $7c14: $a9
	dec  sp                                          ; $7c15: $3b
	ld   hl, sp-$01                                  ; $7c16: $f8 $ff
	call c, Call_0cb_41a3                            ; $7c18: $dc $a3 $41
	ld   de, $1111                                   ; $7c1b: $11 $11 $11
	ld   e, d                                        ; $7c1e: $5a
	rst  $38                                         ; $7c1f: $ff
	rst  $38                                         ; $7c20: $ff
	or   $6e                                         ; $7c21: $f6 $6e
	ld   [hl], $fb                                   ; $7c23: $36 $fb
	rst  $38                                         ; $7c25: $ff
	and  $f8                                         ; $7c26: $e6 $f8
	ld   de, $1111                                   ; $7c28: $11 $11 $11
	ld   de, $afd8                                   ; $7c2b: $11 $d8 $af
	rst  $38                                         ; $7c2e: $ff
	db   $fc                                         ; $7c2f: $fc
	adc  a                                           ; $7c30: $8f
	ld   h, l                                        ; $7c31: $65
	xor  $ff                                         ; $7c32: $ee $ff
	call c, Call_0cb_66d6                            ; $7c34: $dc $d6 $66
	ld   de, $1111                                   ; $7c37: $11 $11 $11
	ld   l, $ff                                      ; $7c3a: $2e $ff
	rst  $38                                         ; $7c3c: $ff
	rst  $38                                         ; $7c3d: $ff
	ret  c                                           ; $7c3e: $d8

	ld   b, a                                        ; $7c3f: $47
	rst  $38                                         ; $7c40: $ff
	rst  $38                                         ; $7c41: $ff
	rst  $28                                         ; $7c42: $ef
	rst  $30                                         ; $7c43: $f7
	ld   l, e                                        ; $7c44: $6b
	ld   de, $1111                                   ; $7c45: $11 $11 $11
	inc  sp                                          ; $7c48: $33
	rst  JumpTable                                         ; $7c49: $df
	rst  $38                                         ; $7c4a: $ff
	rst  $38                                         ; $7c4b: $ff
	ld   l, h                                        ; $7c4c: $6c
	ld   l, c                                        ; $7c4d: $69
	db   $fc                                         ; $7c4e: $fc
	rst  $28                                         ; $7c4f: $ef
	cp   $ca                                         ; $7c50: $fe $ca
	jp   z, $1131                                    ; $7c52: $ca $31 $11

	ld   de, $ff1b                                   ; $7c55: $11 $1b $ff
	rst  $38                                         ; $7c58: $ff
	rst  $38                                         ; $7c59: $ff
	halt                                             ; $7c5a: $76
	adc  e                                           ; $7c5b: $8b
	cp   d                                           ; $7c5c: $ba
	rst  $38                                         ; $7c5d: $ff
	cp   [hl]                                        ; $7c5e: $be
	call z, Call_0cb_62d7                            ; $7c5f: $cc $d7 $62
	ld   de, $1111                                   ; $7c62: $11 $11 $11
	rst  $38                                         ; $7c65: $ff
	rst  $38                                         ; $7c66: $ff
	rst  $38                                         ; $7c67: $ff
	db   $f4                                         ; $7c68: $f4
	ccf                                              ; $7c69: $3f
	set  7, a                                        ; $7c6a: $cb $ff
	db   $fd                                         ; $7c6c: $fd
	sbc  h                                           ; $7c6d: $9c
	add  $ba                                         ; $7c6e: $c6 $ba
	ld   de, $1111                                   ; $7c70: $11 $11 $11
	xor  a                                           ; $7c73: $af
	rst  $38                                         ; $7c74: $ff
	rst  $38                                         ; $7c75: $ff
	cp   $16                                         ; $7c76: $fe $16
	ei                                               ; $7c78: $fb
	rst  $38                                         ; $7c79: $ff
	rst  $20                                         ; $7c7a: $e7
	jp   c, $c7cf                                    ; $7c7b: $da $cf $c7

	ld   de, $1111                                   ; $7c7e: $11 $11 $11
	rra                                              ; $7c81: $1f
	ei                                               ; $7c82: $fb
	rst  $38                                         ; $7c83: $ff
	rst  $38                                         ; $7c84: $ff
	pop  de                                          ; $7c85: $d1
	xor  a                                           ; $7c86: $af
	rst  $28                                         ; $7c87: $ef
	ld   hl, sp-$04                                  ; $7c88: $f8 $fc
	rst  JumpTable                                         ; $7c8a: $df
	cp   e                                           ; $7c8b: $bb
	add  c                                           ; $7c8c: $81
	ld   de, $1711                                   ; $7c8d: $11 $11 $17
	rst  $38                                         ; $7c90: $ff
	rst  $38                                         ; $7c91: $ff
	rst  $38                                         ; $7c92: $ff
	push af                                          ; $7c93: $f5
	cp   l                                           ; $7c94: $bd
	xor  a                                           ; $7c95: $af
	or   $9c                                         ; $7c96: $f6 $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c98: $cf
	db   $fc                                         ; $7c99: $fc
	ld   [hl], h                                     ; $7c9a: $74
	ld   de, $1111                                   ; $7c9b: $11 $11 $11
	rst  JumpTable                                         ; $7c9e: $df
	rst  $38                                         ; $7c9f: $ff
	db   $fd                                         ; $7ca0: $fd
	db   $fc                                         ; $7ca1: $fc
	sbc  a                                           ; $7ca2: $9f
	db   $fd                                         ; $7ca3: $fd
	rst  $38                                         ; $7ca4: $ff
	adc  c                                           ; $7ca5: $89
	rst  $38                                         ; $7ca6: $ff
	rst  $38                                         ; $7ca7: $ff
	jp   $1111                                       ; $7ca8: $c3 $11 $11


	ld   de, $ff3f                                   ; $7cab: $11 $3f $ff
	rst  $38                                         ; $7cae: $ff
	cp   a                                           ; $7caf: $bf
	ei                                               ; $7cb0: $fb
	call $eaef                                       ; $7cb1: $cd $ef $ea
	ld   a, a                                        ; $7cb4: $7f
	rst  $38                                         ; $7cb5: $ff
	db   $fd                                         ; $7cb6: $fd
	ld   sp, $1111                                   ; $7cb7: $31 $11 $11
	jr   @+$01                                       ; $7cba: $18 $ff

	rst  $38                                         ; $7cbc: $ff
	xor  c                                           ; $7cbd: $a9
	rst  $38                                         ; $7cbe: $ff
	db   $ed                                         ; $7cbf: $ed
	rst  $28                                         ; $7cc0: $ef
	ld   sp, hl                                      ; $7cc1: $f9
	ld   l, c                                        ; $7cc2: $69
	rst  $38                                         ; $7cc3: $ff
	rst  $38                                         ; $7cc4: $ff
	and  l                                           ; $7cc5: $a5
	ld   de, $1111                                   ; $7cc6: $11 $11 $11
	rst  $38                                         ; $7cc9: $ff
	rst  $38                                         ; $7cca: $ff
	ret                                              ; $7ccb: $c9


	rst  $38                                         ; $7ccc: $ff
	call $fffe                                       ; $7ccd: $cd $fe $ff
	ld   d, h                                        ; $7cd0: $54
	rst  $38                                         ; $7cd1: $ff
	rst  $38                                         ; $7cd2: $ff
	rst  ToBoot                                         ; $7cd3: $c7
	ld   de, $1111                                   ; $7cd4: $11 $11 $11
	ld   e, a                                        ; $7cd7: $5f
	rst  $38                                         ; $7cd8: $ff
	cp   $7f                                         ; $7cd9: $fe $7f
	ld   [$ffff], a                                  ; $7cdb: $ea $ff $ff
	ret                                              ; $7cde: $c9


	ld   e, c                                        ; $7cdf: $59
	rst  $38                                         ; $7ce0: $ff
	rst  $38                                         ; $7ce1: $ff
	ld   h, c                                        ; $7ce2: $61
	ld   de, $1811                                   ; $7ce3: $11 $11 $18
	rst  $38                                         ; $7ce6: $ff
	rst  $38                                         ; $7ce7: $ff
	xor  $fb                                         ; $7ce8: $ee $fb
	rst  $28                                         ; $7cea: $ef
	rst  $38                                         ; $7ceb: $ff
	ld   sp, hl                                      ; $7cec: $f9
	add  l                                           ; $7ced: $85
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cee: $cf
	rst  $38                                         ; $7cef: $ff
	and  c                                           ; $7cf0: $a1
	ld   de, $1111                                   ; $7cf1: $11 $11 $11
	ccf                                              ; $7cf4: $3f
	rst  $38                                         ; $7cf5: $ff
	ld   a, [$febf]                                  ; $7cf6: $fa $bf $fe
	rst  JumpTable                                         ; $7cf9: $df
	rst  $38                                         ; $7cfa: $ff
	and  a                                           ; $7cfb: $a7
	ld   a, h                                        ; $7cfc: $7c
	rst  $38                                         ; $7cfd: $ff
	ld   hl, sp+$61                                  ; $7cfe: $f8 $61
	ld   de, $1d11                                   ; $7d00: $11 $11 $1d
	rst  $38                                         ; $7d03: $ff
	rst  $38                                         ; $7d04: $ff
	rst  $38                                         ; $7d05: $ff
	ei                                               ; $7d06: $fb
	cp   a                                           ; $7d07: $bf
	rst  $38                                         ; $7d08: $ff
	rst  $10                                         ; $7d09: $d7
	ld   e, e                                        ; $7d0a: $5b
	rst  $38                                         ; $7d0b: $ff
	rst  $38                                         ; $7d0c: $ff
	push de                                          ; $7d0d: $d5
	ld   de, $1111                                   ; $7d0e: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d11: $cf
	rst  $38                                         ; $7d12: $ff
	ld   sp, hl                                      ; $7d13: $f9
	rst  JumpTable                                         ; $7d14: $df
	rst  $28                                         ; $7d15: $ef
	rst  $38                                         ; $7d16: $ff
	cp   $54                                         ; $7d17: $fe $54
	ld   e, a                                        ; $7d19: $5f
	rst  $38                                         ; $7d1a: $ff
	or   $11                                         ; $7d1b: $f6 $11
	ld   de, $1c11                                   ; $7d1d: $11 $11 $1c
	rst  $38                                         ; $7d20: $ff
	ret  c                                           ; $7d21: $d8

	sub  a                                           ; $7d22: $97
	rst  JumpTable                                         ; $7d23: $df
	rst  $38                                         ; $7d24: $ff
	cp   $eb                                         ; $7d25: $fe $eb
	adc  d                                           ; $7d27: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d28: $cf
	rst  $38                                         ; $7d29: $ff
	or   c                                           ; $7d2a: $b1
	ld   de, $1111                                   ; $7d2b: $11 $11 $11
	rra                                              ; $7d2e: $1f
	rst  $38                                         ; $7d2f: $ff
	add  sp, $4a                                     ; $7d30: $e8 $4a
	rst  $38                                         ; $7d32: $ff
	rst  $38                                         ; $7d33: $ff
	db   $fc                                         ; $7d34: $fc
	ei                                               ; $7d35: $fb
	adc  d                                           ; $7d36: $8a
	rst  $38                                         ; $7d37: $ff
	rst  $38                                         ; $7d38: $ff
	and  c                                           ; $7d39: $a1
	ld   de, $1111                                   ; $7d3a: $11 $11 $11
	cpl                                              ; $7d3d: $2f
	rst  $38                                         ; $7d3e: $ff
	or   h                                           ; $7d3f: $b4
	adc  b                                           ; $7d40: $88
	sbc  a                                           ; $7d41: $9f
	rst  $38                                         ; $7d42: $ff
	db   $fd                                         ; $7d43: $fd
	ld   [hl], a                                     ; $7d44: $77
	cp   a                                           ; $7d45: $bf
	rst  $38                                         ; $7d46: $ff
	rst  $38                                         ; $7d47: $ff
	ld   h, c                                        ; $7d48: $61
	ld   de, $1111                                   ; $7d49: $11 $11 $11
	rra                                              ; $7d4c: $1f
	rst  $38                                         ; $7d4d: $ff
	pop  af                                          ; $7d4e: $f1
	ld   a, [de]                                     ; $7d4f: $1a
	cp   [hl]                                        ; $7d50: $be
	rst  $38                                         ; $7d51: $ff
	rst  $38                                         ; $7d52: $ff
	add  sp, $4c                                     ; $7d53: $e8 $4c
	rst  $38                                         ; $7d55: $ff
	rst  $38                                         ; $7d56: $ff
	and  c                                           ; $7d57: $a1
	ld   de, $1111                                   ; $7d58: $11 $11 $11
	add  hl, de                                      ; $7d5b: $19
	rst  $38                                         ; $7d5c: $ff
	ld   sp, hl                                      ; $7d5d: $f9
	ld   b, c                                        ; $7d5e: $41
	cpl                                              ; $7d5f: $2f
	rst  $38                                         ; $7d60: $ff
	rst  $38                                         ; $7d61: $ff
	call z, $df77                                    ; $7d62: $cc $77 $df
	rst  $38                                         ; $7d65: $ff
	di                                               ; $7d66: $f3
	ld   de, $1111                                   ; $7d67: $11 $11 $11
	ld   de, $ff8f                                   ; $7d6a: $11 $8f $ff
	and  h                                           ; $7d6d: $a4
	ld   de, $ff9f                                   ; $7d6e: $11 $9f $ff
	db   $fc                                         ; $7d71: $fc
	halt                                             ; $7d72: $76
	adc  l                                           ; $7d73: $8d
	rst  $38                                         ; $7d74: $ff
	rst  $38                                         ; $7d75: $ff
	ld   de, $2111                                   ; $7d76: $11 $11 $21
	ld   de, rAUD1LEN                                   ; $7d79: $11 $11 $ff
	db   $fd                                         ; $7d7c: $fd
	ld   sp, $4f64                                   ; $7d7d: $31 $64 $4f
	rst  $38                                         ; $7d80: $ff
	rst  $30                                         ; $7d81: $f7
	inc  de                                          ; $7d82: $13
	adc  a                                           ; $7d83: $8f
	rst  $38                                         ; $7d84: $ff
	rst  $38                                         ; $7d85: $ff
	ld   de, $c911                                   ; $7d86: $11 $11 $c9
	ld   de, rAUD1LEN                                   ; $7d89: $11 $11 $ff
	rst  $38                                         ; $7d8c: $ff
	ld   sp, $1267                                   ; $7d8d: $31 $67 $12
	rst  $38                                         ; $7d90: $ff
	ld   a, [$9f11]                                  ; $7d91: $fa $11 $9f
	rst  $38                                         ; $7d94: $ff
	rst  $38                                         ; $7d95: $ff
	pop  af                                          ; $7d96: $f1
	ld   de, $f12f                                   ; $7d97: $11 $2f $f1
	ld   de, $ff15                                   ; $7d9a: $11 $15 $ff
	rst  $30                                         ; $7d9d: $f7
	inc  de                                          ; $7d9e: $13
	ld   [hl], c                                     ; $7d9f: $71
	ld   [de], a                                     ; $7da0: $12
	rst  $38                                         ; $7da1: $ff
	or   $11                                         ; $7da2: $f6 $11
	xor  a                                           ; $7da4: $af
	rst  $38                                         ; $7da5: $ff
	rst  $38                                         ; $7da6: $ff
	pop  af                                          ; $7da7: $f1
	ld   de, $f45f                                   ; $7da8: $11 $5f $f4
	ld   de, $7f11                                   ; $7dab: $11 $11 $7f
	rst  $38                                         ; $7dae: $ff
	or   d                                           ; $7daf: $b2
	ld   de, $bf11                                   ; $7db0: $11 $11 $bf
	rst  $38                                         ; $7db3: $ff
	ld   h, c                                        ; $7db4: $61
	ld   d, $ff                                      ; $7db5: $16 $ff
	rst  $38                                         ; $7db7: $ff
	db   $fd                                         ; $7db8: $fd
	ld   de, rAUD1LOW                                   ; $7db9: $11 $13 $ff
	add  c                                           ; $7dbc: $81
	ld   de, rAUD1HIGH                                   ; $7dbd: $11 $14 $ff
	rst  $38                                         ; $7dc0: $ff
	ld   de, $1a11                                   ; $7dc1: $11 $11 $1a
	rst  $38                                         ; $7dc4: $ff
	rst  $38                                         ; $7dc5: $ff
	ld   de, $ff1d                                   ; $7dc6: $11 $1d $ff
	rst  $38                                         ; $7dc9: $ff
	rst  $30                                         ; $7dca: $f7
	ld   de, $ff1c                                   ; $7dcb: $11 $1c $ff
	ld   de, $1c11                                   ; $7dce: $11 $11 $1c
	rst  $38                                         ; $7dd1: $ff
	ld   a, [$1111]                                  ; $7dd2: $fa $11 $11
	ld   c, h                                        ; $7dd5: $4c
	rst  $38                                         ; $7dd6: $ff
	rst  $38                                         ; $7dd7: $ff
	ld   de, $ff1b                                   ; $7dd8: $11 $1b $ff
	rst  $38                                         ; $7ddb: $ff
	ld   a, [$1911]                                  ; $7ddc: $fa $11 $19
	rst  $38                                         ; $7ddf: $ff
	ld   hl, $1511                                   ; $7de0: $21 $11 $15
	rst  $38                                         ; $7de3: $ff
	rst  $38                                         ; $7de4: $ff
	ld   sp, $1b11                                   ; $7de5: $31 $11 $1b
	rst  $38                                         ; $7de8: $ff
	rst  $38                                         ; $7de9: $ff
	ld   de, rAUD1ENV                                   ; $7dea: $11 $12 $ff
	rst  $38                                         ; $7ded: $ff
	ld   a, [$1611]                                  ; $7dee: $fa $11 $16
	rst  $38                                         ; $7df1: $ff
	and  c                                           ; $7df2: $a1
	ld   de, rAUD1LEN                                   ; $7df3: $11 $11 $ff
	rst  $38                                         ; $7df6: $ff
	and  c                                           ; $7df7: $a1
	ld   de, $ff17                                   ; $7df8: $11 $17 $ff
	rst  $38                                         ; $7dfb: $ff
	pop  af                                          ; $7dfc: $f1
	ld   de, $ff8f                                   ; $7dfd: $11 $8f $ff
	rst  $38                                         ; $7e00: $ff
	sub  c                                           ; $7e01: $91
	ld   de, $f6bf                                   ; $7e02: $11 $bf $f6
	ld   de, $1c11                                   ; $7e05: $11 $11 $1c
	rst  $38                                         ; $7e08: $ff
	db   $fc                                         ; $7e09: $fc
	ld   de, $8f11                                   ; $7e0a: $11 $11 $8f
	rst  $38                                         ; $7e0d: $ff
	rst  $38                                         ; $7e0e: $ff
	ld   de, rAUD1HIGH                                   ; $7e0f: $11 $14 $ff
	rst  $38                                         ; $7e12: $ff
	ld   a, [$1611]                                  ; $7e13: $fa $11 $16
	rst  $38                                         ; $7e16: $ff
	pop  hl                                          ; $7e17: $e1
	ld   de, $1f11                                   ; $7e18: $11 $11 $1f
	rst  $38                                         ; $7e1b: $ff
	pop  af                                          ; $7e1c: $f1
	ld   de, $ff19                                   ; $7e1d: $11 $19 $ff
	rst  $38                                         ; $7e20: $ff
	or   $11                                         ; $7e21: $f6 $11
	rra                                              ; $7e23: $1f
	rst  $38                                         ; $7e24: $ff
	rst  $38                                         ; $7e25: $ff
	sub  $11                                         ; $7e26: $d6 $11
	ld   e, $ff                                      ; $7e28: $1e $ff
	ld   d, c                                        ; $7e2a: $51
	ld   de, $1f11                                   ; $7e2b: $11 $11 $1f
	rst  $38                                         ; $7e2e: $ff
	pop  af                                          ; $7e2f: $f1
	ld   de, $ff1d                                   ; $7e30: $11 $1d $ff
	rst  $38                                         ; $7e33: $ff
	db   $f4                                         ; $7e34: $f4
	ld   de, $ff1f                                   ; $7e35: $11 $1f $ff
	db   $fd                                         ; $7e38: $fd
	and  [hl]                                        ; $7e39: $a6
	ld   hl, $ff4f                                   ; $7e3a: $21 $4f $ff
	ld   [hl], c                                     ; $7e3d: $71
	ld   de, $1f11                                   ; $7e3e: $11 $11 $1f
	rst  $38                                         ; $7e41: $ff
	pop  af                                          ; $7e42: $f1
	ld   de, $ff1e                                   ; $7e43: $11 $1e $ff
	rst  $38                                         ; $7e46: $ff
	ld   sp, hl                                      ; $7e47: $f9
	ld   de, $ff1e                                   ; $7e48: $11 $1e $ff
	ld   a, [$6579]                                  ; $7e4b: $fa $79 $65
	ld   a, [hl]                                     ; $7e4e: $7e
	rst  $38                                         ; $7e4f: $ff
	and  c                                           ; $7e50: $a1
	ld   de, $1111                                   ; $7e51: $11 $11 $11
	rst  $38                                         ; $7e54: $ff
	rst  $38                                         ; $7e55: $ff
	ld   de, rAUD1LEN                                   ; $7e56: $11 $11 $ff
	rst  $38                                         ; $7e59: $ff
	rst  $38                                         ; $7e5a: $ff
	sub  c                                           ; $7e5b: $91
	ld   de, $ffff                                   ; $7e5c: $11 $ff $ff
	ld   h, [hl]                                     ; $7e5f: $66
	cp   d                                           ; $7e60: $ba
	sbc  e                                           ; $7e61: $9b
	rst  $28                                         ; $7e62: $ef
	ld   sp, hl                                      ; $7e63: $f9
	ld   de, $1111                                   ; $7e64: $11 $11 $11
	inc  d                                           ; $7e67: $14
	rst  $38                                         ; $7e68: $ff
	push af                                          ; $7e69: $f5
	ld   de, $ff1d                                   ; $7e6a: $11 $1d $ff
	rst  JumpTable                                         ; $7e6d: $df
	rst  $38                                         ; $7e6e: $ff
	ld   sp, $ff18                                   ; $7e6f: $31 $18 $ff
	ld   sp, hl                                      ; $7e72: $f9
	ld   l, e                                        ; $7e73: $6b
	ld   [$ffab], a                                  ; $7e74: $ea $ab $ff
	db   $f4                                         ; $7e77: $f4
	ld   de, $1111                                   ; $7e78: $11 $11 $11
	add  hl, de                                      ; $7e7b: $19
	rst  $38                                         ; $7e7c: $ff
	pop  af                                          ; $7e7d: $f1
	ld   de, $fe1e                                   ; $7e7e: $11 $1e $fe
	rst  JumpTable                                         ; $7e81: $df
	cp   $11                                         ; $7e82: $fe $11
	inc  e                                           ; $7e84: $1c
	rst  $38                                         ; $7e85: $ff
	ld   hl, sp+$6a                                  ; $7e86: $f8 $6a
	db   $db                                         ; $7e88: $db
	xor  h                                           ; $7e89: $ac
	rst  $38                                         ; $7e8a: $ff
	jp   nc, $1111                                   ; $7e8b: $d2 $11 $11

	ld   de, rAUD1LOW                                   ; $7e8e: $11 $13 $ff
	or   $11                                         ; $7e91: $f6 $11
	ld   a, [de]                                     ; $7e93: $1a
	cp   $cf                                         ; $7e94: $fe $cf
	rst  $38                                         ; $7e96: $ff
	ld   hl, $ff17                                   ; $7e97: $21 $17 $ff
	ei                                               ; $7e9a: $fb
	ld   a, d                                        ; $7e9b: $7a
	res  5, h                                        ; $7e9c: $cb $ac
	rst  $38                                         ; $7e9e: $ff
	or   $11                                         ; $7e9f: $f6 $11
	inc  de                                          ; $7ea1: $13
	ld   de, $7f11                                   ; $7ea2: $11 $11 $7f
	rst  $38                                         ; $7ea5: $ff
	ld   hl, $9c11                                   ; $7ea6: $21 $11 $9c
	adc  $ff                                         ; $7ea9: $ce $ff
	ldh  a, [c]                                      ; $7eab: $f2
	ld   de, $ffaf                                   ; $7eac: $11 $af $ff
	ret  c                                           ; $7eaf: $d8

	xor  h                                           ; $7eb0: $ac
	cp   h                                           ; $7eb1: $bc
	rst  JumpTable                                         ; $7eb2: $df
	cp   $72                                         ; $7eb3: $fe $72
	ld   de, $1111                                   ; $7eb5: $11 $11 $11
	ld   de, $fdff                                   ; $7eb8: $11 $ff $fd
	ld   de, $ac12                                   ; $7ebb: $11 $12 $ac
	rst  $28                                         ; $7ebe: $ef
	rst  $38                                         ; $7ebf: $ff
	add  c                                           ; $7ec0: $81
	inc  d                                           ; $7ec1: $14
	rst  $28                                         ; $7ec2: $ef
	rst  $38                                         ; $7ec3: $ff
	jp   z, $bcaa                                    ; $7ec4: $ca $aa $bc

	rst  $28                                         ; $7ec7: $ef
	ei                                               ; $7ec8: $fb
	ld   sp, $1112                                   ; $7ec9: $31 $12 $11
	ld   de, rAUD1ENV                                   ; $7ecc: $11 $12 $ff
	db   $fc                                         ; $7ecf: $fc
	ld   de, $9e13                                   ; $7ed0: $11 $13 $9e
	rst  $28                                         ; $7ed3: $ef
	rst  $38                                         ; $7ed4: $ff
	or   c                                           ; $7ed5: $b1
	inc  d                                           ; $7ed6: $14
	rst  $28                                         ; $7ed7: $ef
	rst  $38                                         ; $7ed8: $ff
	xor  b                                           ; $7ed9: $a8
	adc  h                                           ; $7eda: $8c
	set  5, a                                        ; $7edb: $cb $ef
	ei                                               ; $7edd: $fb
	ld   hl, $2111                                   ; $7ede: $21 $11 $21
	ld   de, $7f11                                   ; $7ee1: $11 $11 $7f
	rst  $38                                         ; $7ee4: $ff
	and  c                                           ; $7ee5: $a1
	ld   de, $ee7c                                   ; $7ee6: $11 $7c $ee
	rst  $38                                         ; $7ee9: $ff
	ei                                               ; $7eea: $fb
	ld   b, d                                        ; $7eeb: $42
	ld   a, a                                        ; $7eec: $7f
	rst  $38                                         ; $7eed: $ff
	jp   hl                                          ; $7eee: $e9


	sbc  e                                           ; $7eef: $9b
	db   $ec                                         ; $7ef0: $ec
	call z, Call_0cb_64ba                            ; $7ef1: $cc $ba $64
	inc  [hl]                                        ; $7ef4: $34
	ld   [hl], l                                     ; $7ef5: $75
	ld   de, $1111                                   ; $7ef6: $11 $11 $11
	ld   e, a                                        ; $7ef9: $5f
	rst  $38                                         ; $7efa: $ff
	and  c                                           ; $7efb: $a1
	ld   de, $ff7f                                   ; $7efc: $11 $7f $ff
	cp   $a6                                         ; $7eff: $fe $a6
	rla                                              ; $7f01: $17
	rst  $38                                         ; $7f02: $ff
	rst  $38                                         ; $7f03: $ff
	adc  c                                           ; $7f04: $89
	xor  e                                           ; $7f05: $ab
	set  1, [hl]                                     ; $7f06: $cb $ce
	reti                                             ; $7f08: $d9


	ld   sp, $9458                                   ; $7f09: $31 $58 $94
	ld   de, $1111                                   ; $7f0c: $11 $11 $11
	ld   a, $ff                                      ; $7f0f: $3e $ff
	add  c                                           ; $7f11: $81
	dec  d                                           ; $7f12: $15
	rst  $38                                         ; $7f13: $ff
	cp   $cb                                         ; $7f14: $fe $cb
	xor  b                                           ; $7f16: $a8
	adc  [hl]                                        ; $7f17: $8e
	rst  $38                                         ; $7f18: $ff
	db   $fd                                         ; $7f19: $fd
	sub  a                                           ; $7f1a: $97
	ld   a, d                                        ; $7f1b: $7a
	cp   h                                           ; $7f1c: $bc
	db   $fc                                         ; $7f1d: $fc
	add  e                                           ; $7f1e: $83
	inc  d                                           ; $7f1f: $14
	ld   [hl], a                                     ; $7f20: $77
	ld   b, c                                        ; $7f21: $41
	ld   de, $1111                                   ; $7f22: $11 $11 $11
	xor  a                                           ; $7f25: $af
	db   $fc                                         ; $7f26: $fc
	ld   de, $ffef                                   ; $7f27: $11 $ef $ff
	push bc                                          ; $7f2a: $c5
	rst  JumpTable                                         ; $7f2b: $df
	xor  c                                           ; $7f2c: $a9
	rst  JumpTable                                         ; $7f2d: $df
	rst  $38                                         ; $7f2e: $ff
	ei                                               ; $7f2f: $fb
	ld   l, c                                        ; $7f30: $69
	cp   b                                           ; $7f31: $b8
	xor  l                                           ; $7f32: $ad
	add  h                                           ; $7f33: $84
	ld   d, d                                        ; $7f34: $52
	dec  d                                           ; $7f35: $15
	ld   d, c                                        ; $7f36: $51
	ld   de, $1211                                   ; $7f37: $11 $11 $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f3a: $cf
	rst  $38                                         ; $7f3b: $ff
	ld   [de], a                                     ; $7f3c: $12
	sbc  b                                           ; $7f3d: $98
	rst  $38                                         ; $7f3e: $ff
	jp   z, $8dc9                                    ; $7f3f: $ca $c9 $8d

	cp   $ef                                         ; $7f42: $fe $ef
	reti                                             ; $7f44: $d9


	add  l                                           ; $7f45: $85
	dec  [hl]                                        ; $7f46: $35
	ld   [hl], a                                     ; $7f47: $77
	ld   d, e                                        ; $7f48: $53
	ld   de, $5624                                   ; $7f49: $11 $24 $56
	ld   de, $fc3e                                   ; $7f4c: $11 $3e $fc
	ld   hl, $ff8e                                   ; $7f4f: $21 $8e $ff
	inc  h                                           ; $7f52: $24
	rst  $38                                         ; $7f53: $ff
	ld   a, [$ff6a]                                  ; $7f54: $fa $6a $ff
	cp   b                                           ; $7f57: $b8
	xor  c                                           ; $7f58: $a9
	ld   [hl], a                                     ; $7f59: $77
	ld   [hl-], a                                    ; $7f5a: $32
	ld   a, b                                        ; $7f5b: $78
	ld   b, c                                        ; $7f5c: $41
	inc  d                                           ; $7f5d: $14
	ld   h, h                                        ; $7f5e: $64
	ld   hl, $b93a                                   ; $7f5f: $21 $3a $b9
	ld   [hl], d                                     ; $7f62: $72
	ld   e, a                                        ; $7f63: $5f
	rst  $28                                         ; $7f64: $ef
	add  d                                           ; $7f65: $82
	rst  $38                                         ; $7f66: $ff
	cp   [hl]                                        ; $7f67: $be
	ld   h, l                                        ; $7f68: $65
	rst  JumpTable                                         ; $7f69: $df
	db   $db                                         ; $7f6a: $db
	xor  d                                           ; $7f6b: $aa
	adc  d                                           ; $7f6c: $8a
	ld   [hl], d                                     ; $7f6d: $72
	ld   a, d                                        ; $7f6e: $7a
	ld   h, e                                        ; $7f6f: $63
	inc  hl                                          ; $7f70: $23
	ld   a, d                                        ; $7f71: $7a
	add  c                                           ; $7f72: $81
	ld   de, $d839                                   ; $7f73: $11 $39 $d8
	ld   a, [hl-]                                    ; $7f76: $3a
	cp   d                                           ; $7f77: $ba
	rst  $10                                         ; $7f78: $d7
	ld   c, e                                        ; $7f79: $4b
	rst  $28                                         ; $7f7a: $ef
	jp   c, $bd58                                    ; $7f7b: $da $58 $bd

	db   $fc                                         ; $7f7e: $fc
	xor  d                                           ; $7f7f: $aa
	sub  a                                           ; $7f80: $97
	ld   [hl], a                                     ; $7f81: $77
	ld   h, a                                        ; $7f82: $67
	sub  a                                           ; $7f83: $97
	ld   h, [hl]                                     ; $7f84: $66
	ld   h, l                                        ; $7f85: $65
	ld   b, h                                        ; $7f86: $44
	inc  sp                                          ; $7f87: $33
	ld   d, l                                        ; $7f88: $55
	ld   e, c                                        ; $7f89: $59
	ld   [hl], h                                     ; $7f8a: $74
	ld   a, d                                        ; $7f8b: $7a
	ld   h, [hl]                                     ; $7f8c: $66
	call c, $ba89                                    ; $7f8d: $dc $89 $ba
	sbc  a                                           ; $7f90: $9f
	sub  l                                           ; $7f91: $95
	db   $ed                                         ; $7f92: $ed
	cp   l                                           ; $7f93: $bd
	add  [hl]                                        ; $7f94: $86
	sbc  h                                           ; $7f95: $9c
	xor  c                                           ; $7f96: $a9
	sub  [hl]                                        ; $7f97: $96
	ld   h, a                                        ; $7f98: $67
	ld   h, d                                        ; $7f99: $62
	ld   a, e                                        ; $7f9a: $7b
	adc  b                                           ; $7f9b: $88
	ld   [hl-], a                                    ; $7f9c: $32
	ld   b, [hl]                                     ; $7f9d: $46
	add  e                                           ; $7f9e: $83
	jr   c, @+$7a                                    ; $7f9f: $38 $78

	sub  a                                           ; $7fa1: $97
	ld   a, c                                        ; $7fa2: $79
	ld   d, [hl]                                     ; $7fa3: $56
	xor  $a8                                         ; $7fa4: $ee $a8
	adc  b                                           ; $7fa6: $88
	cp   l                                           ; $7fa7: $bd
	xor  b                                           ; $7fa8: $a8
	sbc  $99                                         ; $7fa9: $de $99
	sub  l                                           ; $7fab: $95
	sbc  d                                           ; $7fac: $9a
	adc  c                                           ; $7fad: $89
	sub  [hl]                                        ; $7fae: $96
	ld   b, l                                        ; $7faf: $45
	ld   h, a                                        ; $7fb0: $67
	sub  a                                           ; $7fb1: $97
	ld   [hl-], a                                    ; $7fb2: $32
	ld   d, [hl]                                     ; $7fb3: $56
	ld   a, d                                        ; $7fb4: $7a
	ld   [hl], h                                     ; $7fb5: $74
	ld   a, c                                        ; $7fb6: $79
	halt                                             ; $7fb7: $76
	ld   [hl], l                                     ; $7fb8: $75
	sbc  l                                           ; $7fb9: $9d
	ret                                              ; $7fba: $c9


	adc  c                                           ; $7fbb: $89
	sbc  h                                           ; $7fbc: $9c
	jp   c, $bb79                                    ; $7fbd: $da $79 $bb

	cp   c                                           ; $7fc0: $b9
	ld   a, e                                        ; $7fc1: $7b
	sbc  b                                           ; $7fc2: $98
	add  a                                           ; $7fc3: $87
	ld   l, c                                        ; $7fc4: $69
	add  [hl]                                        ; $7fc5: $86
	ld   d, l                                        ; $7fc6: $55
	ld   a, b                                        ; $7fc7: $78
	sub  [hl]                                        ; $7fc8: $96
	ld   h, l                                        ; $7fc9: $65
	ld   d, a                                        ; $7fca: $57
	add  a                                           ; $7fcb: $87
	ld   a, c                                        ; $7fcc: $79
	adc  c                                           ; $7fcd: $89
	add  l                                           ; $7fce: $85
	ld   e, c                                        ; $7fcf: $59
	xor  e                                           ; $7fd0: $ab
	sub  a                                           ; $7fd1: $97
	ld   a, c                                        ; $7fd2: $79
	sbc  c                                           ; $7fd3: $99
	cp   c                                           ; $7fd4: $b9
	adc  c                                           ; $7fd5: $89
	ld   [hl], a                                     ; $7fd6: $77
	adc  c                                           ; $7fd7: $89
	adc  c                                           ; $7fd8: $89
	and  a                                           ; $7fd9: $a7
	ld   a, b                                        ; $7fda: $78
	ld   a, b                                        ; $7fdb: $78
	add  [hl]                                        ; $7fdc: $86
	ld   a, b                                        ; $7fdd: $78
	halt                                             ; $7fde: $76
	halt                                             ; $7fdf: $76
	ld   a, d                                        ; $7fe0: $7a
	sub  l                                           ; $7fe1: $95
	ld   a, b                                        ; $7fe2: $78
	sbc  c                                           ; $7fe3: $99
	add  a                                           ; $7fe4: $87
	sbc  e                                           ; $7fe5: $9b
	ld   a, b                                        ; $7fe6: $78
	halt                                             ; $7fe7: $76
	xor  d                                           ; $7fe8: $aa
	adc  c                                           ; $7fe9: $89
	adc  d                                           ; $7fea: $8a
	xor  b                                           ; $7feb: $a8
	halt                                             ; $7fec: $76
	ld   a, d                                        ; $7fed: $7a
	sbc  c                                           ; $7fee: $99
	and  a                                           ; $7fef: $a7
	ld   l, b                                        ; $7ff0: $68
	ld   a, b                                        ; $7ff1: $78
	cp   d                                           ; $7ff2: $ba
	halt                                             ; $7ff3: $76
	ld   h, a                                        ; $7ff4: $67
	xor  c                                           ; $7ff5: $a9
	ld   h, a                                        ; $7ff6: $67
	ld   [hl], a                                     ; $7ff7: $77
	xor  c                                           ; $7ff8: $a9
	adc  b                                           ; $7ff9: $88
	adc  b                                           ; $7ffa: $88
	adc  b                                           ; $7ffb: $88
	sub  a                                           ; $7ffc: $97
	ld   [hl], a                                     ; $7ffd: $77
	adc  d                                           ; $7ffe: $8a
	sbc  b                                           ; $7fff: $98
