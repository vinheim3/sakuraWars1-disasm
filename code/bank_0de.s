; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0de", ROMX[$4000], BANK[$de]

	ld   de, $1811                                   ; $4000: $11 $11 $18
	add  a                                           ; $4003: $87
	adc  a                                           ; $4004: $8f
	rst  $38                                         ; $4005: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4006: $cf
	rst  $38                                         ; $4007: $ff
	adc  h                                           ; $4008: $8c
	rst  $38                                         ; $4009: $ff
	and  a                                           ; $400a: $a7
	adc  c                                           ; $400b: $89
	ld   de, $1111                                   ; $400c: $11 $11 $11
	dec  d                                           ; $400f: $15
	ld   l, c                                        ; $4010: $69
	rst  JumpTable                                         ; $4011: $df
	rst  $38                                         ; $4012: $ff
	rst  $38                                         ; $4013: $ff
	db   $fd                                         ; $4014: $fd
	rst  JumpTable                                         ; $4015: $df
	db   $fd                                         ; $4016: $fd
	xor  d                                           ; $4017: $aa
	sub  d                                           ; $4018: $92
	ld   de, $1111                                   ; $4019: $11 $11 $11
	ld   b, [hl]                                     ; $401c: $46
	add  hl, hl                                      ; $401d: $29
	rst  $38                                         ; $401e: $ff
	db   $fd                                         ; $401f: $fd
	rst  $38                                         ; $4020: $ff
	ld   a, [$feff]                                  ; $4021: $fa $ff $fe
	ld   l, c                                        ; $4024: $69
	sub  c                                           ; $4025: $91
	ld   de, $1111                                   ; $4026: $11 $11 $11
	ld   l, b                                        ; $4029: $68
	ld   a, d                                        ; $402a: $7a
	rst  $38                                         ; $402b: $ff
	db   $fd                                         ; $402c: $fd
	rst  $38                                         ; $402d: $ff
	cp   $cf                                         ; $402e: $fe $cf
	ld   [$3164], a                                  ; $4030: $ea $64 $31
	ld   de, $1511                                   ; $4033: $11 $11 $15
	adc  c                                           ; $4036: $89
	adc  a                                           ; $4037: $8f
	cp   $ef                                         ; $4038: $fe $ef
	rst  $38                                         ; $403a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $403b: $cf
	ld   a, [$615a]                                  ; $403c: $fa $5a $61
	ld   de, $1111                                   ; $403f: $11 $11 $11
	ld   a, c                                        ; $4042: $79
	add  a                                           ; $4043: $87
	rst  $28                                         ; $4044: $ef
	db   $db                                         ; $4045: $db
	rst  $38                                         ; $4046: $ff
	cp   $ef                                         ; $4047: $fe $ef
	jp   hl                                          ; $4049: $e9


	ld   [hl], d                                     ; $404a: $72
	ld   de, $1111                                   ; $404b: $11 $11 $11
	ld   d, $8b                                      ; $404e: $16 $8b
	db   $dd                                         ; $4050: $dd
	sbc  $ff                                         ; $4051: $de $ff
	cp   h                                           ; $4053: $bc
	rst  $38                                         ; $4054: $ff
	call $319a                                       ; $4055: $cd $9a $31
	ld   de, $1611                                   ; $4058: $11 $11 $16
	and  a                                           ; $405b: $a7
	sbc  l                                           ; $405c: $9d
	cp   l                                           ; $405d: $bd
	ld   sp, hl                                      ; $405e: $f9
	rst  JumpTable                                         ; $405f: $df
	jp   hl                                          ; $4060: $e9


	rst  $38                                         ; $4061: $ff
	cp   b                                           ; $4062: $b8
	ld   de, $1121                                   ; $4063: $11 $21 $11
	inc  d                                           ; $4066: $14
	ld   h, [hl]                                     ; $4067: $66
	cp   e                                           ; $4068: $bb
	reti                                             ; $4069: $d9


	xor  a                                           ; $406a: $af
	ei                                               ; $406b: $fb
	sbc  a                                           ; $406c: $9f
	db   $f4                                         ; $406d: $f4
	db   $db                                         ; $406e: $db
	ld   sp, $6111                                   ; $406f: $31 $11 $61
	ld   d, $c6                                      ; $4072: $16 $c6
	ld   e, d                                        ; $4074: $5a
	adc  a                                           ; $4075: $8f
	call nz, $9fff                                   ; $4076: $c4 $ff $9f
	ld   hl, sp-$1a                                  ; $4079: $f8 $e6
	ld   d, $13                                      ; $407b: $16 $13
	ld   sp, $7615                                   ; $407d: $31 $15 $76
	ret                                              ; $4080: $c9


	cp   c                                           ; $4081: $b9
	sbc  $9f                                         ; $4082: $de $9f
	jp   z, $88e9                                    ; $4084: $ca $e9 $88

	ld   b, c                                        ; $4087: $41
	ld   [hl+], a                                    ; $4088: $22
	inc  de                                          ; $4089: $13
	ld   b, [hl]                                     ; $408a: $46
	sub  a                                           ; $408b: $97
	ld   a, d                                        ; $408c: $7a
	ld   a, [$af7e]                                  ; $408d: $fa $7e $af
	or   l                                           ; $4090: $b5
	db   $fc                                         ; $4091: $fc
	ld   d, h                                        ; $4092: $54
	inc  d                                           ; $4093: $14
	ld   [hl], c                                     ; $4094: $71
	rla                                              ; $4095: $17
	ld   d, h                                        ; $4096: $54
	ld   [hl], a                                     ; $4097: $77
	db   $fc                                         ; $4098: $fc
	ld   c, [hl]                                     ; $4099: $4e
	ld   a, [$fd9f]                                  ; $409a: $fa $9f $fd
	ld   d, [hl]                                     ; $409d: $56
	ldh  [c], a                                      ; $409e: $e2
	inc  d                                           ; $409f: $14
	ld   b, h                                        ; $40a0: $44
	ld   de, $764a                                   ; $40a1: $11 $4a $76
	ld   a, e                                        ; $40a4: $7b
	rst  $20                                         ; $40a5: $e7
	rst  $28                                         ; $40a6: $ef
	cp   h                                           ; $40a7: $bc
	ld   a, [$34a8]                                  ; $40a8: $fa $a8 $34
	ld   d, d                                        ; $40ab: $52
	ld   b, d                                        ; $40ac: $42
	inc  hl                                          ; $40ad: $23
	ld   [hl], a                                     ; $40ae: $77
	dec  sp                                          ; $40af: $3b
	xor  b                                           ; $40b0: $a8
	cp   l                                           ; $40b1: $bd
	cp   h                                           ; $40b2: $bc
	ld   a, [$58fe]                                  ; $40b3: $fa $fe $58
	ld   b, d                                        ; $40b6: $42
	ld   b, c                                        ; $40b7: $41
	ld   c, c                                        ; $40b8: $49
	ld   b, d                                        ; $40b9: $42
	ld   a, e                                        ; $40ba: $7b
	ld   [hl], e                                     ; $40bb: $73
	sbc  a                                           ; $40bc: $9f
	and  l                                           ; $40bd: $a5

jr_0de_40be:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40be: $cf
	jp   c, $74a8                                    ; $40bf: $da $a8 $74

jr_0de_40c2:
	ld   h, h                                        ; $40c2: $64
	ld   [hl], l                                     ; $40c3: $75
	add  hl, hl                                      ; $40c4: $29
	ld   b, [hl]                                     ; $40c5: $46
	sub  [hl]                                        ; $40c6: $96
	ld   l, e                                        ; $40c7: $6b
	ld   l, b                                        ; $40c8: $68
	ld   a, [$e87e]                                  ; $40c9: $fa $7e $e8
	ld   a, c                                        ; $40cc: $79
	add  h                                           ; $40cd: $84
	scf                                              ; $40ce: $37
	ld   d, h                                        ; $40cf: $54
	ld   l, b                                        ; $40d0: $68
	add  l                                           ; $40d1: $85
	ld   c, b                                        ; $40d2: $48
	sub  a                                           ; $40d3: $97
	adc  $bb                                         ; $40d4: $ce $bb
	adc  $a7                                         ; $40d6: $ce $a7
	cp   c                                           ; $40d8: $b9
	inc  d                                           ; $40d9: $14
	or   e                                           ; $40da: $b3
	ld   d, [hl]                                     ; $40db: $56
	scf                                              ; $40dc: $37
	ld   d, [hl]                                     ; $40dd: $56
	ld   l, c                                        ; $40de: $69
	sbc  b                                           ; $40df: $98
	cp   h                                           ; $40e0: $bc
	ei                                               ; $40e1: $fb
	sbc  h                                           ; $40e2: $9c
	ret                                              ; $40e3: $c9


	ld   h, l                                        ; $40e4: $65
	ld   l, b                                        ; $40e5: $68
	ld   [hl+], a                                    ; $40e6: $22
	sbc  b                                           ; $40e7: $98
	ld   b, h                                        ; $40e8: $44
	ld   h, [hl]                                     ; $40e9: $66
	or   e                                           ; $40ea: $b3
	ld   l, a                                        ; $40eb: $6f
	and  a                                           ; $40ec: $a7
	sbc  a                                           ; $40ed: $9f
	xor  d                                           ; $40ee: $aa
	add  $76                                         ; $40ef: $c6 $76
	halt                                             ; $40f1: $76
	add  h                                           ; $40f2: $84
	ld   e, d                                        ; $40f3: $5a
	ld   d, l                                        ; $40f4: $55
	ld   b, [hl]                                     ; $40f5: $46
	ld   a, b                                        ; $40f6: $78
	ld   a, e                                        ; $40f7: $7b
	res  3, b                                        ; $40f8: $cb $98
	ld   hl, sp+$4a                                  ; $40fa: $f8 $4a
	ld   l, c                                        ; $40fc: $69
	ld   d, a                                        ; $40fd: $57
	ld   [hl], a                                     ; $40fe: $77
	ld   [hl], d                                     ; $40ff: $72
	and  h                                           ; $4100: $a4
	ld   e, c                                        ; $4101: $59
	ld   d, a                                        ; $4102: $57
	adc  e                                           ; $4103: $8b
	sbc  h                                           ; $4104: $9c
	add  $7b                                         ; $4105: $c6 $7b
	or   a                                           ; $4107: $b7
	ld   c, c                                        ; $4108: $49
	or   l                                           ; $4109: $b5
	jr   c, jr_0de_40c2                              ; $410a: $38 $b6

	ld   b, l                                        ; $410c: $45
	add  a                                           ; $410d: $87
	sub  a                                           ; $410e: $97
	ld   l, [hl]                                     ; $410f: $6e
	add  [hl]                                        ; $4110: $86
	jp   c, $c77a                                    ; $4111: $da $7a $c7

	ld   a, d                                        ; $4114: $7a
	adc  e                                           ; $4115: $8b
	ld   d, h                                        ; $4116: $54

Jump_0de_4117:
	add  l                                           ; $4117: $85
	ld   a, c                                        ; $4118: $79
	ld   [hl], h                                     ; $4119: $74
	adc  e                                           ; $411a: $8b
	ld   h, h                                        ; $411b: $64
	adc  a                                           ; $411c: $8f
	ld   [hl], h                                     ; $411d: $74
	cp   a                                           ; $411e: $bf
	sub  e                                           ; $411f: $93
	sbc  d                                           ; $4120: $9a
	and  e                                           ; $4121: $a3
	ld   c, e                                        ; $4122: $4b
	or   a                                           ; $4123: $b7
	jr   c, jr_0de_40be                              ; $4124: $38 $98

	ld   b, a                                        ; $4126: $47
	sub  $69                                         ; $4127: $d6 $69
	ret                                              ; $4129: $c9


	ld   e, c                                        ; $412a: $59
	cp   b                                           ; $412b: $b8
	add  [hl]                                        ; $412c: $86
	sbc  e                                           ; $412d: $9b
	ld   c, b                                        ; $412e: $48
	ld   l, e                                        ; $412f: $6b
	add  l                                           ; $4130: $85
	adc  e                                           ; $4131: $8b
	or   c                                           ; $4132: $b1
	cp   h                                           ; $4133: $bc
	ld   d, h                                        ; $4134: $54
	sbc  d                                           ; $4135: $9a
	and  l                                           ; $4136: $a5
	rra                                              ; $4137: $1f
	sub  e                                           ; $4138: $93
	ld   a, e                                        ; $4139: $7b
	and  l                                           ; $413a: $a5
	ld   a, c                                        ; $413b: $79
	add  $7a                                         ; $413c: $c6 $7a
	sub  a                                           ; $413e: $97
	ld   a, e                                        ; $413f: $7b
	ld   h, [hl]                                     ; $4140: $66
	ld   l, c                                        ; $4141: $69
	ld   [hl], a                                     ; $4142: $77
	sbc  c                                           ; $4143: $99
	sub  [hl]                                        ; $4144: $96
	and  [hl]                                        ; $4145: $a6
	ld   a, c                                        ; $4146: $79
	add  a                                           ; $4147: $87
	adc  c                                           ; $4148: $89
	ld   c, d                                        ; $4149: $4a
	or   [hl]                                        ; $414a: $b6
	ld   a, c                                        ; $414b: $79
	ld   a, c                                        ; $414c: $79
	call nz, Call_0de_589b                           ; $414d: $c4 $9b $58
	and  a                                           ; $4150: $a7
	adc  c                                           ; $4151: $89
	add  a                                           ; $4152: $87
	add  [hl]                                        ; $4153: $86
	ld   a, e                                        ; $4154: $7b
	ld   e, c                                        ; $4155: $59
	add  l                                           ; $4156: $85
	rst  ToBoot                                         ; $4157: $c7
	adc  e                                           ; $4158: $8b
	or   l                                           ; $4159: $b5
	sbc  b                                           ; $415a: $98
	adc  e                                           ; $415b: $8b
	ld   c, e                                        ; $415c: $4b
	sub  [hl]                                        ; $415d: $96
	ld   l, e                                        ; $415e: $6b
	add  [hl]                                        ; $415f: $86
	sub  a                                           ; $4160: $97
	cp   b                                           ; $4161: $b8
	sbc  d                                           ; $4162: $9a
	and  a                                           ; $4163: $a7

Jump_0de_4164:
	sub  [hl]                                        ; $4164: $96
	sbc  e                                           ; $4165: $9b
	ld   c, d                                        ; $4166: $4a
	xor  b                                           ; $4167: $a8
	halt                                             ; $4168: $76
	xor  c                                           ; $4169: $a9
	ld   h, l                                        ; $416a: $65
	cp   b                                           ; $416b: $b8
	ld   a, c                                        ; $416c: $79
	ld   a, e                                        ; $416d: $7b
	halt                                             ; $416e: $76
	adc  d                                           ; $416f: $8a
	sub  l                                           ; $4170: $95
	cp   c                                           ; $4171: $b9
	xor  b                                           ; $4172: $a8
	ld   a, d                                        ; $4173: $7a
	halt                                             ; $4174: $76
	ld   a, d                                        ; $4175: $7a
	add  a                                           ; $4176: $87
	ld   a, c                                        ; $4177: $79
	sub  [hl]                                        ; $4178: $96
	ld   e, d                                        ; $4179: $5a

Jump_0de_417a:
	and  a                                           ; $417a: $a7
	ld   a, c                                        ; $417b: $79
	or   a                                           ; $417c: $b7
	ld   l, e                                        ; $417d: $6b
	and  [hl]                                        ; $417e: $a6
	ld   a, b                                        ; $417f: $78
	and  a                                           ; $4180: $a7
	ld   [hl], a                                     ; $4181: $77
	sub  a                                           ; $4182: $97
	ld   a, d                                        ; $4183: $7a
	ld   a, d                                        ; $4184: $7a
	ld   a, b                                        ; $4185: $78
	sbc  c                                           ; $4186: $99
	add  [hl]                                        ; $4187: $86
	adc  c                                           ; $4188: $89
	halt                                             ; $4189: $76
	sub  [hl]                                        ; $418a: $96
	sub  a                                           ; $418b: $97
	ld   l, c                                        ; $418c: $69
	sub  [hl]                                        ; $418d: $96
	sbc  b                                           ; $418e: $98
	ld   l, e                                        ; $418f: $6b
	ld   l, b                                        ; $4190: $68
	adc  c                                           ; $4191: $89
	ld   l, b                                        ; $4192: $68
	sub  [hl]                                        ; $4193: $96
	xor  b                                           ; $4194: $a8
	add  a                                           ; $4195: $87
	sub  [hl]                                        ; $4196: $96
	adc  c                                           ; $4197: $89
	adc  b                                           ; $4198: $88
	ld   a, d                                        ; $4199: $7a
	adc  c                                           ; $419a: $89
	ld   l, b                                        ; $419b: $68
	add  a                                           ; $419c: $87
	add  a                                           ; $419d: $87
	and  a                                           ; $419e: $a7
	add  a                                           ; $419f: $87
	sbc  c                                           ; $41a0: $99
	ld   l, c                                        ; $41a1: $69
	ld   a, d                                        ; $41a2: $7a
	ld   [hl], a                                     ; $41a3: $77
	adc  c                                           ; $41a4: $89
	sub  l                                           ; $41a5: $95
	sub  a                                           ; $41a6: $97
	add  a                                           ; $41a7: $87
	ld   a, b                                        ; $41a8: $78
	add  a                                           ; $41a9: $87
	ld   a, b                                        ; $41aa: $78
	sbc  b                                           ; $41ab: $98
	ld   a, c                                        ; $41ac: $79
	ld   a, b                                        ; $41ad: $78
	ld   a, b                                        ; $41ae: $78
	adc  b                                           ; $41af: $88
	adc  b                                           ; $41b0: $88
	xor  b                                           ; $41b1: $a8
	add  a                                           ; $41b2: $87
	adc  b                                           ; $41b3: $88
	ld   a, b                                        ; $41b4: $78
	ld   a, c                                        ; $41b5: $79
	add  a                                           ; $41b6: $87
	adc  b                                           ; $41b7: $88
	ld   a, c                                        ; $41b8: $79
	add  a                                           ; $41b9: $87
	sbc  c                                           ; $41ba: $99
	ld   [hl], a                                     ; $41bb: $77
	sub  a                                           ; $41bc: $97
	adc  b                                           ; $41bd: $88
	adc  b                                           ; $41be: $88
	adc  b                                           ; $41bf: $88
	add  a                                           ; $41c0: $87
	sub  a                                           ; $41c1: $97
	adc  c                                           ; $41c2: $89
	ld   a, c                                        ; $41c3: $79
	add  a                                           ; $41c4: $87
	ld   a, b                                        ; $41c5: $78
	add  a                                           ; $41c6: $87
	ld   a, b                                        ; $41c7: $78
	add  a                                           ; $41c8: $87
	ld   a, c                                        ; $41c9: $79
	ld   [hl], a                                     ; $41ca: $77
	adc  c                                           ; $41cb: $89
	adc  c                                           ; $41cc: $89
	sub  a                                           ; $41cd: $97
	add  a                                           ; $41ce: $87
	adc  c                                           ; $41cf: $89
	ld   a, b                                        ; $41d0: $78
	and  a                                           ; $41d1: $a7
	ld   a, b                                        ; $41d2: $78
	ld   a, c                                        ; $41d3: $79
	ld   h, a                                        ; $41d4: $67
	sub  a                                           ; $41d5: $97
	add  a                                           ; $41d6: $87
	sub  a                                           ; $41d7: $97
	sub  a                                           ; $41d8: $97
	ld   a, b                                        ; $41d9: $78
	sub  a                                           ; $41da: $97
	ld   a, b                                        ; $41db: $78
	ld   a, b                                        ; $41dc: $78
	add  a                                           ; $41dd: $87
	sub  a                                           ; $41de: $97
	ld   [hl], a                                     ; $41df: $77
	ld   a, b                                        ; $41e0: $78
	adc  b                                           ; $41e1: $88
	adc  b                                           ; $41e2: $88
	add  [hl]                                        ; $41e3: $86
	sbc  b                                           ; $41e4: $98
	ld   a, b                                        ; $41e5: $78
	ld   a, b                                        ; $41e6: $78
	ld   [hl], a                                     ; $41e7: $77
	ld   a, b                                        ; $41e8: $78
	ld   a, b                                        ; $41e9: $78
	adc  b                                           ; $41ea: $88
	sbc  c                                           ; $41eb: $99
	ld   a, c                                        ; $41ec: $79
	add  a                                           ; $41ed: $87
	sbc  b                                           ; $41ee: $98
	adc  b                                           ; $41ef: $88
	add  a                                           ; $41f0: $87
	add  a                                           ; $41f1: $87
	adc  b                                           ; $41f2: $88
	ld   a, c                                        ; $41f3: $79
	ld   a, b                                        ; $41f4: $78
	adc  b                                           ; $41f5: $88
	adc  b                                           ; $41f6: $88
	ld   a, c                                        ; $41f7: $79
	add  a                                           ; $41f8: $87
	adc  b                                           ; $41f9: $88
	adc  b                                           ; $41fa: $88
	sub  [hl]                                        ; $41fb: $96
	sbc  c                                           ; $41fc: $99
	ld   a, b                                        ; $41fd: $78
	ld   a, c                                        ; $41fe: $79
	ld   a, b                                        ; $41ff: $78
	add  a                                           ; $4200: $87
	sbc  b                                           ; $4201: $98
	adc  b                                           ; $4202: $88
	adc  b                                           ; $4203: $88
	adc  b                                           ; $4204: $88
	sbc  c                                           ; $4205: $99
	ld   a, b                                        ; $4206: $78
	adc  b                                           ; $4207: $88
	sub  a                                           ; $4208: $97
	sub  a                                           ; $4209: $97
	sub  a                                           ; $420a: $97
	add  a                                           ; $420b: $87
	sbc  c                                           ; $420c: $99
	ld   a, c                                        ; $420d: $79
	adc  b                                           ; $420e: $88
	add  a                                           ; $420f: $87
	adc  b                                           ; $4210: $88
	ld   a, c                                        ; $4211: $79
	sbc  b                                           ; $4212: $98
	add  a                                           ; $4213: $87
	adc  b                                           ; $4214: $88
	adc  b                                           ; $4215: $88
	adc  b                                           ; $4216: $88
	add  a                                           ; $4217: $87
	ld   a, c                                        ; $4218: $79
	adc  c                                           ; $4219: $89
	adc  b                                           ; $421a: $88
	adc  b                                           ; $421b: $88
	adc  b                                           ; $421c: $88
	sbc  b                                           ; $421d: $98
	adc  b                                           ; $421e: $88
	adc  b                                           ; $421f: $88
	adc  b                                           ; $4220: $88
	sub  a                                           ; $4221: $97
	adc  b                                           ; $4222: $88
	adc  b                                           ; $4223: $88
	sbc  b                                           ; $4224: $98
	adc  b                                           ; $4225: $88
	ld   a, c                                        ; $4226: $79
	adc  b                                           ; $4227: $88
	sbc  b                                           ; $4228: $98
	adc  c                                           ; $4229: $89
	adc  b                                           ; $422a: $88
	sbc  b                                           ; $422b: $98
	add  a                                           ; $422c: $87
	adc  b                                           ; $422d: $88
	adc  b                                           ; $422e: $88
	adc  b                                           ; $422f: $88
	adc  b                                           ; $4230: $88
	ld   a, b                                        ; $4231: $78
	adc  c                                           ; $4232: $89
	adc  b                                           ; $4233: $88
	adc  c                                           ; $4234: $89
	sbc  b                                           ; $4235: $98
	add  a                                           ; $4236: $87
	adc  b                                           ; $4237: $88
	sbc  b                                           ; $4238: $98
	adc  b                                           ; $4239: $88
	adc  c                                           ; $423a: $89
	adc  b                                           ; $423b: $88
	ld   a, b                                        ; $423c: $78
	adc  c                                           ; $423d: $89
	ld   a, b                                        ; $423e: $78
	sbc  b                                           ; $423f: $98
	sub  a                                           ; $4240: $97
	sub  a                                           ; $4241: $97
	adc  b                                           ; $4242: $88
	adc  c                                           ; $4243: $89
	ld   a, c                                        ; $4244: $79
	ld   a, b                                        ; $4245: $78
	sbc  b                                           ; $4246: $98
	add  a                                           ; $4247: $87
	sbc  b                                           ; $4248: $98
	adc  b                                           ; $4249: $88
	adc  b                                           ; $424a: $88
	adc  b                                           ; $424b: $88
	ld   a, c                                        ; $424c: $79
	ld   a, b                                        ; $424d: $78
	adc  b                                           ; $424e: $88
	add  a                                           ; $424f: $87
	sbc  b                                           ; $4250: $98
	adc  c                                           ; $4251: $89
	adc  b                                           ; $4252: $88
	adc  b                                           ; $4253: $88
	ld   a, b                                        ; $4254: $78
	adc  b                                           ; $4255: $88
	adc  b                                           ; $4256: $88
	adc  b                                           ; $4257: $88
	adc  b                                           ; $4258: $88
	adc  c                                           ; $4259: $89
	adc  b                                           ; $425a: $88
	adc  b                                           ; $425b: $88
	adc  b                                           ; $425c: $88
	adc  c                                           ; $425d: $89
	adc  b                                           ; $425e: $88
	adc  b                                           ; $425f: $88
	ld   a, b                                        ; $4260: $78
	adc  b                                           ; $4261: $88
	sbc  b                                           ; $4262: $98
	add  a                                           ; $4263: $87
	sub  a                                           ; $4264: $97
	adc  b                                           ; $4265: $88
	adc  c                                           ; $4266: $89
	adc  b                                           ; $4267: $88
	adc  c                                           ; $4268: $89
	ld   a, c                                        ; $4269: $79
	adc  b                                           ; $426a: $88
	add  a                                           ; $426b: $87
	adc  b                                           ; $426c: $88
	adc  b                                           ; $426d: $88
	ld   a, b                                        ; $426e: $78
	adc  c                                           ; $426f: $89
	adc  c                                           ; $4270: $89
	ld   a, b                                        ; $4271: $78
	adc  b                                           ; $4272: $88
	adc  b                                           ; $4273: $88
	sub  a                                           ; $4274: $97
	adc  b                                           ; $4275: $88
	adc  b                                           ; $4276: $88
	adc  b                                           ; $4277: $88
	adc  c                                           ; $4278: $89
	ld   a, b                                        ; $4279: $78
	sbc  b                                           ; $427a: $98
	adc  b                                           ; $427b: $88
	adc  b                                           ; $427c: $88
	adc  b                                           ; $427d: $88
	adc  b                                           ; $427e: $88
	adc  b                                           ; $427f: $88
	adc  b                                           ; $4280: $88
	add  a                                           ; $4281: $87
	adc  b                                           ; $4282: $88
	adc  b                                           ; $4283: $88
	adc  b                                           ; $4284: $88
	sbc  b                                           ; $4285: $98

Jump_0de_4286:
	adc  b                                           ; $4286: $88
	adc  b                                           ; $4287: $88
	adc  c                                           ; $4288: $89
	adc  b                                           ; $4289: $88
	adc  b                                           ; $428a: $88
	adc  b                                           ; $428b: $88
	adc  b                                           ; $428c: $88
	adc  b                                           ; $428d: $88
	adc  b                                           ; $428e: $88
	adc  b                                           ; $428f: $88
	adc  b                                           ; $4290: $88
	adc  b                                           ; $4291: $88
	adc  b                                           ; $4292: $88
	adc  b                                           ; $4293: $88
	adc  b                                           ; $4294: $88
	adc  b                                           ; $4295: $88
	adc  b                                           ; $4296: $88
	adc  b                                           ; $4297: $88
	adc  b                                           ; $4298: $88
	adc  b                                           ; $4299: $88
	adc  b                                           ; $429a: $88
	adc  b                                           ; $429b: $88
	adc  b                                           ; $429c: $88
	adc  b                                           ; $429d: $88
	adc  b                                           ; $429e: $88
	adc  b                                           ; $429f: $88
	adc  b                                           ; $42a0: $88
	adc  b                                           ; $42a1: $88
	adc  b                                           ; $42a2: $88
	adc  b                                           ; $42a3: $88
	adc  b                                           ; $42a4: $88
	adc  b                                           ; $42a5: $88
	adc  b                                           ; $42a6: $88
	adc  b                                           ; $42a7: $88
	adc  b                                           ; $42a8: $88
	adc  b                                           ; $42a9: $88
	adc  b                                           ; $42aa: $88
	adc  b                                           ; $42ab: $88
	adc  b                                           ; $42ac: $88
	adc  b                                           ; $42ad: $88
	adc  b                                           ; $42ae: $88
	adc  b                                           ; $42af: $88
	adc  b                                           ; $42b0: $88
	adc  b                                           ; $42b1: $88
	adc  b                                           ; $42b2: $88
	adc  b                                           ; $42b3: $88
	adc  b                                           ; $42b4: $88
	adc  b                                           ; $42b5: $88
	adc  b                                           ; $42b6: $88
	adc  b                                           ; $42b7: $88
	adc  b                                           ; $42b8: $88
	adc  b                                           ; $42b9: $88
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
	sbc  b                                           ; $4383: $98
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

Jump_0de_4396:
	adc  b                                           ; $4396: $88
	adc  b                                           ; $4397: $88
	adc  b                                           ; $4398: $88
	sbc  c                                           ; $4399: $99
	adc  b                                           ; $439a: $88
	adc  b                                           ; $439b: $88
	adc  b                                           ; $439c: $88
	adc  b                                           ; $439d: $88
	sbc  b                                           ; $439e: $98
	adc  b                                           ; $439f: $88
	sub  a                                           ; $43a0: $97
	adc  b                                           ; $43a1: $88
	adc  b                                           ; $43a2: $88
	sbc  b                                           ; $43a3: $98
	adc  b                                           ; $43a4: $88
	adc  b                                           ; $43a5: $88
	adc  c                                           ; $43a6: $89
	add  a                                           ; $43a7: $87
	add  a                                           ; $43a8: $87
	adc  b                                           ; $43a9: $88
	ld   a, c                                        ; $43aa: $79
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
	sbc  b                                           ; $43b5: $98
	adc  b                                           ; $43b6: $88
	adc  b                                           ; $43b7: $88
	adc  b                                           ; $43b8: $88
	adc  b                                           ; $43b9: $88
	adc  b                                           ; $43ba: $88
	adc  b                                           ; $43bb: $88
	adc  b                                           ; $43bc: $88
	adc  b                                           ; $43bd: $88
	adc  b                                           ; $43be: $88
	ld   a, b                                        ; $43bf: $78
	sbc  b                                           ; $43c0: $98
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
	add  a                                           ; $43cb: $87
	sbc  c                                           ; $43cc: $99
	adc  c                                           ; $43cd: $89
	adc  b                                           ; $43ce: $88
	sbc  b                                           ; $43cf: $98
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
	adc  c                                           ; $43db: $89
	sbc  b                                           ; $43dc: $98
	adc  b                                           ; $43dd: $88
	add  a                                           ; $43de: $87
	ld   a, b                                        ; $43df: $78
	adc  b                                           ; $43e0: $88
	adc  b                                           ; $43e1: $88
	ld   [hl], a                                     ; $43e2: $77
	ld   a, b                                        ; $43e3: $78

jr_0de_43e4:
	adc  b                                           ; $43e4: $88
	adc  b                                           ; $43e5: $88
	adc  b                                           ; $43e6: $88
	adc  c                                           ; $43e7: $89
	sbc  c                                           ; $43e8: $99
	adc  b                                           ; $43e9: $88
	add  a                                           ; $43ea: $87
	add  a                                           ; $43eb: $87
	adc  b                                           ; $43ec: $88
	adc  b                                           ; $43ed: $88
	ld   [hl], a                                     ; $43ee: $77
	adc  b                                           ; $43ef: $88
	sbc  c                                           ; $43f0: $99
	sbc  c                                           ; $43f1: $99
	sbc  b                                           ; $43f2: $98
	ld   h, a                                        ; $43f3: $67
	adc  b                                           ; $43f4: $88
	xor  e                                           ; $43f5: $ab
	ld   a, d                                        ; $43f6: $7a
	cp   b                                           ; $43f7: $b8
	ld   [hl], h                                     ; $43f8: $74
	ld   l, c                                        ; $43f9: $69
	ld   [hl], a                                     ; $43fa: $77
	adc  b                                           ; $43fb: $88
	add  a                                           ; $43fc: $87
	ld   h, a                                        ; $43fd: $67
	adc  b                                           ; $43fe: $88
	add  a                                           ; $43ff: $87
	adc  c                                           ; $4400: $89
	adc  b                                           ; $4401: $88
	sbc  b                                           ; $4402: $98
	sbc  d                                           ; $4403: $9a
	xor  c                                           ; $4404: $a9
	ld   [hl], a                                     ; $4405: $77
	adc  b                                           ; $4406: $88
	ld   [hl], a                                     ; $4407: $77
	ld   a, b                                        ; $4408: $78
	ld   [hl], l                                     ; $4409: $75
	sbc  h                                           ; $440a: $9c
	xor  d                                           ; $440b: $aa
	add  [hl]                                        ; $440c: $86
	sbc  b                                           ; $440d: $98
	adc  c                                           ; $440e: $89
	sbc  b                                           ; $440f: $98
	ld   h, l                                        ; $4410: $65
	ld   d, [hl]                                     ; $4411: $56
	ld   a, b                                        ; $4412: $78
	sbc  c                                           ; $4413: $99
	ld   a, e                                        ; $4414: $7b
	ei                                               ; $4415: $fb
	halt                                             ; $4416: $76
	sbc  c                                           ; $4417: $99
	adc  b                                           ; $4418: $88
	adc  d                                           ; $4419: $8a
	sub  [hl]                                        ; $441a: $96
	ld   h, l                                        ; $441b: $65
	ld   e, d                                        ; $441c: $5a
	sbc  d                                           ; $441d: $9a
	call c, $85ab                                    ; $441e: $dc $ab $85
	ld   e, c                                        ; $4421: $59
	cp   d                                           ; $4422: $ba
	ld   h, a                                        ; $4423: $67
	or   [hl]                                        ; $4424: $b6
	ld   d, l                                        ; $4425: $55
	ld   a, b                                        ; $4426: $78
	ld   d, l                                        ; $4427: $55
	ld   a, b                                        ; $4428: $78
	ld   b, l                                        ; $4429: $45
	ld   d, a                                        ; $442a: $57
	ld   [hl], h                                     ; $442b: $74
	ld   a, c                                        ; $442c: $79
	ld   [hl], l                                     ; $442d: $75
	adc  c                                           ; $442e: $89
	ld   [hl], h                                     ; $442f: $74
	ld   e, c                                        ; $4430: $59
	adc  b                                           ; $4431: $88
	ld   b, l                                        ; $4432: $45
	sbc  b                                           ; $4433: $98
	ld   h, h                                        ; $4434: $64
	ld   l, c                                        ; $4435: $69
	add  h                                           ; $4436: $84
	ld   c, c                                        ; $4437: $49
	cp   b                                           ; $4438: $b8
	dec  [hl]                                        ; $4439: $35
	ld   [hl], a                                     ; $443a: $77
	add  a                                           ; $443b: $87
	inc  [hl]                                        ; $443c: $34
	ret                                              ; $443d: $c9


	ld   d, e                                        ; $443e: $53
	ld   e, d                                        ; $443f: $5a
	sub  l                                           ; $4440: $95
	ld   c, e                                        ; $4441: $4b
	or   [hl]                                        ; $4442: $b6
	ld   l, d                                        ; $4443: $6a
	sbc  c                                           ; $4444: $99
	and  [hl]                                        ; $4445: $a6
	sbc  c                                           ; $4446: $99
	adc  c                                           ; $4447: $89
	ret  z                                           ; $4448: $c8

	jr   c, jr_0de_43e4                              ; $4449: $38 $99

	ld   d, h                                        ; $444b: $54
	sbc  d                                           ; $444c: $9a
	ld   [hl], h                                     ; $444d: $74
	ld   b, [hl]                                     ; $444e: $46
	sub  h                                           ; $444f: $94
	ld   [hl], $67                                   ; $4450: $36 $67
	ld   l, b                                        ; $4452: $68
	sbc  b                                           ; $4453: $98
	or   a                                           ; $4454: $b7
	rst  $28                                         ; $4455: $ef
	ld   e, b                                        ; $4456: $58
	db   $fd                                         ; $4457: $fd
	ld   e, l                                        ; $4458: $5d
	adc  $f5                                         ; $4459: $ce $f5
	ld   c, h                                        ; $445b: $4c
	cp   c                                           ; $445c: $b9
	ld   d, c                                        ; $445d: $51
	rla                                              ; $445e: $17
	ld   de, $1211                                   ; $445f: $11 $11 $12
	ld   d, e                                        ; $4462: $53
	cp   a                                           ; $4463: $bf
	rst  $38                                         ; $4464: $ff
	cp   l                                           ; $4465: $bd
	rst  $38                                         ; $4466: $ff
	call z, $feff                                    ; $4467: $cc $ff $fe
	set  3, b                                        ; $446a: $cb $d8
	inc  sp                                          ; $446c: $33
	ld   h, e                                        ; $446d: $63
	ld   de, $1111                                   ; $446e: $11 $11 $11
	ld   b, d                                        ; $4471: $42
	rra                                              ; $4472: $1f
	rst  $38                                         ; $4473: $ff
	db   $fd                                         ; $4474: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4475: $cf
	pop  af                                          ; $4476: $f1
	ld   l, a                                        ; $4477: $6f
	rst  $38                                         ; $4478: $ff
	rst  ToBoot                                         ; $4479: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $447a: $cf
	add  c                                           ; $447b: $81
	ld   d, [hl]                                     ; $447c: $56
	ld   b, h                                        ; $447d: $44
	ld   de, $1311                                   ; $447e: $11 $11 $13
	ld   l, d                                        ; $4481: $6a
	rst  $38                                         ; $4482: $ff
	rst  $38                                         ; $4483: $ff
	xor  a                                           ; $4484: $af
	ld   sp, hl                                      ; $4485: $f9
	add  a                                           ; $4486: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4487: $cf
	rst  $10                                         ; $4488: $d7
	sbc  $b6                                         ; $4489: $de $b6
	dec  d                                           ; $448b: $15
	or   a                                           ; $448c: $b7
	ld   de, $1111                                   ; $448d: $11 $11 $11
	or   h                                           ; $4490: $b4
	ld   c, a                                        ; $4491: $4f
	rst  $38                                         ; $4492: $ff
	cp   $38                                         ; $4493: $fe $38
	db   $fc                                         ; $4495: $fc
	ld   a, [hl]                                     ; $4496: $7e
	cp   $b7                                         ; $4497: $fe $b7
	sbc  l                                           ; $4499: $9d
	and  a                                           ; $449a: $a7
	ld   b, h                                        ; $449b: $44
	ld   hl, $1111                                   ; $449c: $21 $11 $11
	rra                                              ; $449f: $1f
	ld   a, [hl-]                                    ; $44a0: $3a
	rst  $38                                         ; $44a1: $ff
	rst  $38                                         ; $44a2: $ff
	inc  [hl]                                        ; $44a3: $34
	reti                                             ; $44a4: $d9


	ld   e, b                                        ; $44a5: $58

Jump_0de_44a6:
	sbc  a                                           ; $44a6: $9f
	or   $4a                                         ; $44a7: $f6 $4a
	db   $db                                         ; $44a9: $db
	sub  l                                           ; $44aa: $95
	ld   d, h                                        ; $44ab: $54
	ld   de, $1511                                   ; $44ac: $11 $11 $15
	db   $f4                                         ; $44af: $f4
	cp   a                                           ; $44b0: $bf
	rst  $38                                         ; $44b1: $ff
	and  e                                           ; $44b2: $a3
	xor  a                                           ; $44b3: $af
	ld   d, h                                        ; $44b4: $54
	cp   l                                           ; $44b5: $bd
	rst  $38                                         ; $44b6: $ff
	ld   d, [hl]                                     ; $44b7: $56
	rst  $28                                         ; $44b8: $ef
	sbc  c                                           ; $44b9: $99
	ld   h, [hl]                                     ; $44ba: $66
	ld   b, c                                        ; $44bb: $41
	ld   de, $1f11                                   ; $44bc: $11 $11 $1f
	sbc  a                                           ; $44bf: $9f
	rst  $38                                         ; $44c0: $ff
	db   $f4                                         ; $44c1: $f4
	ld   sp, hl                                      ; $44c2: $f9
	jr   c, jr_0de_450e                              ; $44c3: $38 $49

	rst  $38                                         ; $44c5: $ff
	ld   b, [hl]                                     ; $44c6: $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44c7: $cf
	ret  c                                           ; $44c8: $d8

	ld   l, e                                        ; $44c9: $6b
	or   c                                           ; $44ca: $b1
	ld   de, $1111                                   ; $44cb: $11 $11 $11
	rst  $38                                         ; $44ce: $ff
	rst  $38                                         ; $44cf: $ff
	rst  $38                                         ; $44d0: $ff
	push af                                          ; $44d1: $f5
	dec  d                                           ; $44d2: $15
	sub  $7f                                         ; $44d3: $d6 $7f
	db   $fc                                         ; $44d5: $fc
	cp   [hl]                                        ; $44d6: $be
	xor  b                                           ; $44d7: $a8
	call z, $11b6                                    ; $44d8: $cc $b6 $11
	ld   de, $1f11                                   ; $44db: $11 $11 $1f
	rst  $38                                         ; $44de: $ff
	rst  $38                                         ; $44df: $ff
	rst  $38                                         ; $44e0: $ff
	ld   de, $7fa1                                   ; $44e1: $11 $a1 $7f
	xor  d                                           ; $44e4: $aa
	db   $fd                                         ; $44e5: $fd
	ld   e, d                                        ; $44e6: $5a
	db   $db                                         ; $44e7: $db
	db   $fd                                         ; $44e8: $fd
	ld   [hl], c                                     ; $44e9: $71
	ld   de, $1111                                   ; $44ea: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44ed: $cf
	rst  $38                                         ; $44ee: $ff
	ld   a, [$11ff]                                  ; $44ef: $fa $ff $11
	and  e                                           ; $44f2: $a3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44f3: $cf
	xor  c                                           ; $44f4: $a9
	ld   sp, hl                                      ; $44f5: $f9
	xor  a                                           ; $44f6: $af
	rst  $28                                         ; $44f7: $ef
	sub  $11                                         ; $44f8: $d6 $11
	ld   de, $1911                                   ; $44fa: $11 $11 $19
	rst  $38                                         ; $44fd: $ff
	rst  $38                                         ; $44fe: $ff
	rst  $38                                         ; $44ff: $ff
	ld   a, c                                        ; $4500: $79
	inc  [hl]                                        ; $4501: $34
	xor  e                                           ; $4502: $ab
	xor  $b7                                         ; $4503: $ee $b7
	rst  $28                                         ; $4505: $ef
	adc  $bf                                         ; $4506: $ce $bf
	pop  bc                                          ; $4508: $c1
	ld   de, $1111                                   ; $4509: $11 $11 $11
	adc  a                                           ; $450c: $8f
	rst  $38                                         ; $450d: $ff

jr_0de_450e:
	rst  $38                                         ; $450e: $ff
	db   $fd                                         ; $450f: $fd
	ld   b, a                                        ; $4510: $47
	ld   d, d                                        ; $4511: $52
	rst  JumpTable                                         ; $4512: $df
	db   $ec                                         ; $4513: $ec
	cp   e                                           ; $4514: $bb
	db   $dd                                         ; $4515: $dd
	adc  [hl]                                        ; $4516: $8e
	db   $db                                         ; $4517: $db
	ld   sp, $1111                                   ; $4518: $31 $11 $11
	add  hl, de                                      ; $451b: $19
	rst  JumpTable                                         ; $451c: $df
	rst  $38                                         ; $451d: $ff
	cp   a                                           ; $451e: $bf
	pop  af                                          ; $451f: $f1
	add  c                                           ; $4520: $81
	rra                                              ; $4521: $1f
	db   $fc                                         ; $4522: $fc
	db   $dd                                         ; $4523: $dd
	xor  a                                           ; $4524: $af
	ld   sp, hl                                      ; $4525: $f9
	xor  h                                           ; $4526: $ac
	or   l                                           ; $4527: $b5
	ld   de, $1111                                   ; $4528: $11 $11 $11
	ld   e, a                                        ; $452b: $5f
	rst  $38                                         ; $452c: $ff
	rst  $38                                         ; $452d: $ff
	rst  JumpTable                                         ; $452e: $df
	ld   d, c                                        ; $452f: $51
	ld   l, h                                        ; $4530: $6c
	rst  JumpTable                                         ; $4531: $df
	db   $fc                                         ; $4532: $fc
	sbc  [hl]                                        ; $4533: $9e
	call z, $e9cd                                    ; $4534: $cc $cd $e9
	ld   d, c                                        ; $4537: $51
	ld   de, $1811                                   ; $4538: $11 $11 $18
	db   $ec                                         ; $453b: $ec
	rst  $38                                         ; $453c: $ff
	sbc  a                                           ; $453d: $9f
	ret  z                                           ; $453e: $c8

	and  c                                           ; $453f: $a1
	jr   @+$01                                       ; $4540: $18 $ff

	ld   hl, sp+$3e                                  ; $4542: $f8 $3e
	call c, $a7ab                                    ; $4544: $dc $ab $a7
	ld   de, $1111                                   ; $4547: $11 $11 $11
	ld   a, a                                        ; $454a: $7f
	rst  $38                                         ; $454b: $ff
	rst  $38                                         ; $454c: $ff
	rst  $30                                         ; $454d: $f7
	ld   de, $aecf                                   ; $454e: $11 $cf $ae
	cp   $97                                         ; $4551: $fe $97
	adc  h                                           ; $4553: $8c
	rst  $38                                         ; $4554: $ff
	and  e                                           ; $4555: $a3
	ld   hl, $1111                                   ; $4556: $21 $11 $11
	ld   d, $ff                                      ; $4559: $16 $ff
	rst  $38                                         ; $455b: $ff
	adc  $fa                                         ; $455c: $ce $fa
	inc  de                                          ; $455e: $13
	jp   c, $eecf                                    ; $455f: $da $cf $ee

	db   $fc                                         ; $4562: $fc
	ld   c, c                                        ; $4563: $49

Jump_0de_4564:
	sbc  a                                           ; $4564: $9f
	db   $e3                                         ; $4565: $e3
	ld   de, $1111                                   ; $4566: $11 $11 $11
	ld   a, [de]                                     ; $4569: $1a
	rst  $38                                         ; $456a: $ff
	db   $fc                                         ; $456b: $fc
	rst  $38                                         ; $456c: $ff
	ld   [hl], c                                     ; $456d: $71
	ld   d, $cf                                      ; $456e: $16 $cf
	rst  $38                                         ; $4570: $ff
	jp   hl                                          ; $4571: $e9


	jp   hl                                          ; $4572: $e9


	sbc  l                                           ; $4573: $9d
	adc  b                                           ; $4574: $88
	ld   hl, $1111                                   ; $4575: $21 $11 $11
	ld   [de], a                                     ; $4578: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4579: $cf
	rst  $38                                         ; $457a: $ff
	db   $fd                                         ; $457b: $fd
	add  c                                           ; $457c: $81
	adc  c                                           ; $457d: $89
	jr   @+$01                                       ; $457e: $18 $ff

	ei                                               ; $4580: $fb
	adc  c                                           ; $4581: $89
	db   $db                                         ; $4582: $db
	adc  [hl]                                        ; $4583: $8e
	or   [hl]                                        ; $4584: $b6
	ld   de, $1111                                   ; $4585: $11 $11 $11
	jr   @+$01                                       ; $4588: $18 $ff

	rst  $38                                         ; $458a: $ff
	res  4, h                                        ; $458b: $cb $a4
	inc  e                                           ; $458d: $1c
	sub  a                                           ; $458e: $97
	rst  $38                                         ; $458f: $ff
	db   $fd                                         ; $4590: $fd
	cp   c                                           ; $4591: $b9
	rst  JumpTable                                         ; $4592: $df
	xor  b                                           ; $4593: $a8
	ld   d, c                                        ; $4594: $51
	ld   de, $1111                                   ; $4595: $11 $11 $11
	ld   l, a                                        ; $4598: $6f
	rst  $38                                         ; $4599: $ff
	cp   $fc                                         ; $459a: $fe $fc
	inc  hl                                          ; $459c: $23
	ld   h, [hl]                                     ; $459d: $66
	xor  a                                           ; $459e: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $459f: $cf
	ei                                               ; $45a0: $fb
	xor  a                                           ; $45a1: $af
	ld   sp, hl                                      ; $45a2: $f9
	or   l                                           ; $45a3: $b5
	ld   sp, $1111                                   ; $45a4: $31 $11 $11
	ld   de, $ff5f                                   ; $45a7: $11 $5f $ff
	db   $fc                                         ; $45aa: $fc
	jp   c, $2386                                    ; $45ab: $da $86 $23

	rst  $38                                         ; $45ae: $ff
	rst  $38                                         ; $45af: $ff
	db   $eb                                         ; $45b0: $eb
	cp   d                                           ; $45b1: $ba
	xor  h                                           ; $45b2: $ac
	add  $41                                         ; $45b3: $c6 $41
	ld   de, $1111                                   ; $45b5: $11 $11 $11
	adc  a                                           ; $45b8: $8f
	rst  $38                                         ; $45b9: $ff
	db   $dd                                         ; $45ba: $dd
	db   $dd                                         ; $45bb: $dd
	ld   [hl], c                                     ; $45bc: $71
	ld   a, e                                        ; $45bd: $7b
	adc  a                                           ; $45be: $8f
	rst  $38                                         ; $45bf: $ff
	rst  $28                                         ; $45c0: $ef
	db   $fc                                         ; $45c1: $fc
	add  $5b                                         ; $45c2: $c6 $5b
	ld   hl, $1111                                   ; $45c4: $21 $11 $11
	ld   de, $ff4c                                   ; $45c7: $11 $4c $ff
	cp   $ba                                         ; $45ca: $fe $ba
	ld   h, c                                        ; $45cc: $61
	ld   d, l                                        ; $45cd: $55
	cp   a                                           ; $45ce: $bf
	rst  $38                                         ; $45cf: $ff
	rst  $38                                         ; $45d0: $ff
	sbc  d                                           ; $45d1: $9a
	sbc  b                                           ; $45d2: $98
	rst  ToBoot                                         ; $45d3: $c7
	ld   hl, $1111                                   ; $45d4: $21 $11 $11
	ld   de, $ae1b                                   ; $45d7: $11 $1b $ae
	rst  $38                                         ; $45da: $ff
	add  sp, $65                                     ; $45db: $e8 $65
	ld   d, a                                        ; $45dd: $57
	ld   a, l                                        ; $45de: $7d
	rst  $38                                         ; $45df: $ff
	rst  $38                                         ; $45e0: $ff
	db   $ec                                         ; $45e1: $ec
	jp   z, $2663                                    ; $45e2: $ca $63 $26

	ld   b, c                                        ; $45e5: $41
	ld   de, $1911                                   ; $45e6: $11 $11 $19
	set  3, l                                        ; $45e9: $cb $dd
	xor  $b3                                         ; $45eb: $ee $b3
	ld   e, c                                        ; $45ed: $59
	ld   c, c                                        ; $45ee: $49
	rst  $38                                         ; $45ef: $ff
	rst  $38                                         ; $45f0: $ff
	db   $fc                                         ; $45f1: $fc
	ret  c                                           ; $45f2: $d8

	ld   l, c                                        ; $45f3: $69
	add  h                                           ; $45f4: $84
	ld   b, c                                        ; $45f5: $41
	ld   de, $1111                                   ; $45f6: $11 $11 $11
	ld   a, [hl+]                                    ; $45f9: $2a
	call $b8ec                                       ; $45fa: $cd $ec $b8
	ld   h, [hl]                                     ; $45fd: $66
	sbc  e                                           ; $45fe: $9b
	cp   l                                           ; $45ff: $bd
	rst  $38                                         ; $4600: $ff
	rst  $38                                         ; $4601: $ff
	db   $fd                                         ; $4602: $fd
	xor  b                                           ; $4603: $a8
	ld   d, l                                        ; $4604: $55
	ld   h, [hl]                                     ; $4605: $66
	ld   b, c                                        ; $4606: $41
	ld   de, $1111                                   ; $4607: $11 $11 $11
	ld   e, c                                        ; $460a: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $460b: $cf
	ret                                              ; $460c: $c9


	ld   a, b                                        ; $460d: $78
	db   $eb                                         ; $460e: $eb
	ld   d, l                                        ; $460f: $55
	sbc  a                                           ; $4610: $9f
	rst  $38                                         ; $4611: $ff
	ei                                               ; $4612: $fb
	xor  d                                           ; $4613: $aa
	cp   c                                           ; $4614: $b9
	ld   h, l                                        ; $4615: $65
	ld   d, a                                        ; $4616: $57
	ld   d, e                                        ; $4617: $53
	ld   [hl-], a                                    ; $4618: $32
	ld   de, $5611                                   ; $4619: $11 $11 $56
	ld   a, e                                        ; $461c: $7b
	sbc  d                                           ; $461d: $9a
	and  a                                           ; $461e: $a7
	ld   [hl], a                                     ; $461f: $77
	xor  e                                           ; $4620: $ab
	rst  $28                                         ; $4621: $ef
	xor  $bb                                         ; $4622: $ee $bb
	res  5, b                                        ; $4624: $cb $a8
	add  a                                           ; $4626: $87
	adc  b                                           ; $4627: $88
	ld   h, l                                        ; $4628: $65
	ld   b, h                                        ; $4629: $44
	ld   b, e                                        ; $462a: $43
	ld   sp, $6824                                   ; $462b: $31 $24 $68
	sub  a                                           ; $462e: $97
	ld   h, a                                        ; $462f: $67
	sbc  c                                           ; $4630: $99
	sbc  d                                           ; $4631: $9a
	sbc  d                                           ; $4632: $9a
	sbc  $ec                                         ; $4633: $de $ec
	cp   e                                           ; $4635: $bb
	xor  e                                           ; $4636: $ab
	xor  c                                           ; $4637: $a9
	adc  c                                           ; $4638: $89
	sbc  c                                           ; $4639: $99
	sub  a                                           ; $463a: $97
	ld   h, l                                        ; $463b: $65
	ld   d, l                                        ; $463c: $55
	ld   [hl-], a                                    ; $463d: $32
	dec  [hl]                                        ; $463e: $35
	ld   d, l                                        ; $463f: $55
	sbc  b                                           ; $4640: $98
	ld   h, [hl]                                     ; $4641: $66
	ld   h, [hl]                                     ; $4642: $66
	adc  b                                           ; $4643: $88
	xor  d                                           ; $4644: $aa
	cp   h                                           ; $4645: $bc
	cp   e                                           ; $4646: $bb
	res  5, e                                        ; $4647: $cb $ab
	cp   d                                           ; $4649: $ba
	xor  d                                           ; $464a: $aa
	sbc  c                                           ; $464b: $99
	add  a                                           ; $464c: $87
	ld   h, [hl]                                     ; $464d: $66
	ld   [hl], a                                     ; $464e: $77
	ld   h, l                                        ; $464f: $65
	ld   b, e                                        ; $4650: $43
	ld   b, l                                        ; $4651: $45
	ld   h, [hl]                                     ; $4652: $66
	ld   d, l                                        ; $4653: $55
	ld   d, l                                        ; $4654: $55
	ld   a, b                                        ; $4655: $78
	sbc  c                                           ; $4656: $99
	sbc  d                                           ; $4657: $9a
	cp   h                                           ; $4658: $bc
	call $bbdb                                       ; $4659: $cd $db $bb
	xor  e                                           ; $465c: $ab
	xor  c                                           ; $465d: $a9
	xor  c                                           ; $465e: $a9
	adc  b                                           ; $465f: $88
	ld   [hl], a                                     ; $4660: $77
	add  a                                           ; $4661: $87
	ld   h, l                                        ; $4662: $65
	ld   b, e                                        ; $4663: $43
	ld   b, l                                        ; $4664: $45
	ld   d, l                                        ; $4665: $55
	ld   b, e                                        ; $4666: $43
	ld   d, [hl]                                     ; $4667: $56
	adc  b                                           ; $4668: $88
	ld   [hl], a                                     ; $4669: $77
	ld   a, d                                        ; $466a: $7a
	call z, $bacc                                    ; $466b: $cc $cc $ba
	cp   e                                           ; $466e: $bb
	cp   e                                           ; $466f: $bb
	cp   d                                           ; $4670: $ba
	cp   d                                           ; $4671: $ba
	sbc  b                                           ; $4672: $98
	add  a                                           ; $4673: $87
	ld   [hl], a                                     ; $4674: $77
	halt                                             ; $4675: $76
	ld   d, h                                        ; $4676: $54
	ld   b, h                                        ; $4677: $44
	ld   d, l                                        ; $4678: $55
	ld   d, l                                        ; $4679: $55
	ld   b, l                                        ; $467a: $45
	ld   d, l                                        ; $467b: $55
	ld   l, b                                        ; $467c: $68
	adc  c                                           ; $467d: $89
	sbc  d                                           ; $467e: $9a
	cp   d                                           ; $467f: $ba
	cp   e                                           ; $4680: $bb
	call z, $babb                                    ; $4681: $cc $bb $ba
	xor  d                                           ; $4684: $aa
	xor  d                                           ; $4685: $aa
	xor  b                                           ; $4686: $a8
	add  a                                           ; $4687: $87
	add  a                                           ; $4688: $87
	halt                                             ; $4689: $76
	ld   d, h                                        ; $468a: $54
	ld   d, l                                        ; $468b: $55
	ld   h, l                                        ; $468c: $65
	ld   b, e                                        ; $468d: $43
	ld   b, l                                        ; $468e: $45
	ld   h, [hl]                                     ; $468f: $66
	ld   [hl], a                                     ; $4690: $77
	ld   a, b                                        ; $4691: $78
	sbc  c                                           ; $4692: $99
	xor  e                                           ; $4693: $ab
	cp   h                                           ; $4694: $bc
	cp   e                                           ; $4695: $bb
	cp   e                                           ; $4696: $bb
	cp   e                                           ; $4697: $bb
	cp   e                                           ; $4698: $bb
	cp   e                                           ; $4699: $bb
	xor  c                                           ; $469a: $a9
	adc  b                                           ; $469b: $88
	sbc  c                                           ; $469c: $99
	add  a                                           ; $469d: $87
	ld   h, l                                        ; $469e: $65
	ld   b, l                                        ; $469f: $45
	ld   d, [hl]                                     ; $46a0: $56
	ld   d, l                                        ; $46a1: $55
	ld   b, h                                        ; $46a2: $44
	ld   d, l                                        ; $46a3: $55
	ld   [hl], a                                     ; $46a4: $77
	add  a                                           ; $46a5: $87
	ld   a, c                                        ; $46a6: $79
	xor  d                                           ; $46a7: $aa
	res  5, d                                        ; $46a8: $cb $aa
	xor  e                                           ; $46aa: $ab
	call z, $babb                                    ; $46ab: $cc $bb $ba
	xor  d                                           ; $46ae: $aa
	sbc  c                                           ; $46af: $99
	sbc  b                                           ; $46b0: $98
	adc  b                                           ; $46b1: $88
	ld   [hl], a                                     ; $46b2: $77
	ld   h, l                                        ; $46b3: $65
	ld   b, h                                        ; $46b4: $44
	ld   d, l                                        ; $46b5: $55
	ld   d, l                                        ; $46b6: $55
	ld   d, l                                        ; $46b7: $55
	ld   h, l                                        ; $46b8: $65
	ld   h, a                                        ; $46b9: $67
	adc  b                                           ; $46ba: $88
	adc  c                                           ; $46bb: $89
	xor  d                                           ; $46bc: $aa
	cp   d                                           ; $46bd: $ba
	cp   e                                           ; $46be: $bb
	cp   d                                           ; $46bf: $ba
	cp   h                                           ; $46c0: $bc
	cp   d                                           ; $46c1: $ba
	cp   d                                           ; $46c2: $ba
	xor  c                                           ; $46c3: $a9
	xor  c                                           ; $46c4: $a9
	add  a                                           ; $46c5: $87
	ld   a, b                                        ; $46c6: $78
	halt                                             ; $46c7: $76
	ld   h, l                                        ; $46c8: $65
	ld   b, h                                        ; $46c9: $44
	ld   b, l                                        ; $46ca: $45
	ld   d, l                                        ; $46cb: $55
	ld   d, h                                        ; $46cc: $54
	ld   d, [hl]                                     ; $46cd: $56
	ld   h, a                                        ; $46ce: $67
	ld   [hl], a                                     ; $46cf: $77
	sbc  c                                           ; $46d0: $99
	xor  d                                           ; $46d1: $aa
	cp   h                                           ; $46d2: $bc
	call z, $bbaa                                    ; $46d3: $cc $aa $bb
	cp   e                                           ; $46d6: $bb
	cp   d                                           ; $46d7: $ba
	xor  e                                           ; $46d8: $ab
	cp   c                                           ; $46d9: $b9
	ld   [hl], a                                     ; $46da: $77
	ld   h, [hl]                                     ; $46db: $66
	ld   d, h                                        ; $46dc: $54
	ld   b, h                                        ; $46dd: $44
	inc  sp                                          ; $46de: $33
	ld   d, [hl]                                     ; $46df: $56
	ld   b, h                                        ; $46e0: $44
	ld   d, l                                        ; $46e1: $55
	ld   a, c                                        ; $46e2: $79
	ld   a, b                                        ; $46e3: $78
	adc  d                                           ; $46e4: $8a
	xor  e                                           ; $46e5: $ab
	call c, $ccbb                                    ; $46e6: $dc $bb $cc
	call $bbbb                                       ; $46e9: $cd $bb $bb
	xor  c                                           ; $46ec: $a9
	adc  b                                           ; $46ed: $88
	add  [hl]                                        ; $46ee: $86
	ld   d, l                                        ; $46ef: $55
	ld   d, l                                        ; $46f0: $55
	ld   b, e                                        ; $46f1: $43
	ld   hl, $5514                                   ; $46f2: $21 $14 $55
	halt                                             ; $46f5: $76
	ld   l, b                                        ; $46f6: $68
	sbc  c                                           ; $46f7: $99
	cp   d                                           ; $46f8: $ba
	xor  c                                           ; $46f9: $a9
	adc  $fe                                         ; $46fa: $ce $fe
	cp   e                                           ; $46fc: $bb
	xor  h                                           ; $46fd: $ac
	call c, $99a8                                    ; $46fe: $dc $a8 $99
	adc  b                                           ; $4701: $88
	ld   d, e                                        ; $4702: $53
	inc  hl                                          ; $4703: $23
	ld   b, e                                        ; $4704: $43
	ld   hl, $5711                                   ; $4705: $21 $11 $57
	ld   h, [hl]                                     ; $4708: $66
	adc  e                                           ; $4709: $8b
	cp   d                                           ; $470a: $ba
	cp   c                                           ; $470b: $b9
	ld   [hl], a                                     ; $470c: $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $470d: $cf
	rst  $38                                         ; $470e: $ff
	cp   e                                           ; $470f: $bb
	cp   l                                           ; $4710: $bd
	db   $eb                                         ; $4711: $eb
	add  a                                           ; $4712: $87
	ld   [hl], a                                     ; $4713: $77
	sbc  c                                           ; $4714: $99
	ld   h, d                                        ; $4715: $62
	ld   de, $1111                                   ; $4716: $11 $11 $11
	inc  d                                           ; $4719: $14
	sbc  b                                           ; $471a: $98
	sbc  d                                           ; $471b: $9a
	sbc  h                                           ; $471c: $9c
	ei                                               ; $471d: $fb
	inc  sp                                          ; $471e: $33
	sbc  l                                           ; $471f: $9d
	rst  $38                                         ; $4720: $ff
	jp   c, $dccd                                    ; $4721: $da $cd $dc

	sub  l                                           ; $4724: $95
	ld   h, a                                        ; $4725: $67
	adc  c                                           ; $4726: $89
	add  h                                           ; $4727: $84
	ld   de, $0111                                   ; $4728: $11 $11 $01
	ld   [de], a                                     ; $472b: $12
	add  [hl]                                        ; $472c: $86
	sbc  a                                           ; $472d: $9f
	db   $ed                                         ; $472e: $ed
	ret  z                                           ; $472f: $c8

	inc  [hl]                                        ; $4730: $34

jr_0de_4731:
	ld   l, d                                        ; $4731: $6a
	rst  $38                                         ; $4732: $ff
	rst  $28                                         ; $4733: $ef
	db   $fc                                         ; $4734: $fc
	cp   h                                           ; $4735: $bc
	sub  l                                           ; $4736: $95
	ld   [hl], a                                     ; $4737: $77
	ld   a, c                                        ; $4738: $79
	add  h                                           ; $4739: $84
	ld   hl, $1111                                   ; $473a: $21 $11 $11
	ld   de, $de7c                                   ; $473d: $11 $7c $de
	cp   b                                           ; $4740: $b8
	cp   e                                           ; $4741: $bb
	jp   z, $9f64                                    ; $4742: $ca $64 $9f

	rst  $38                                         ; $4745: $ff
	db   $fc                                         ; $4746: $fc
	cp   e                                           ; $4747: $bb
	and  a                                           ; $4748: $a7
	ld   h, [hl]                                     ; $4749: $66
	adc  c                                           ; $474a: $89
	ld   h, h                                        ; $474b: $64
	ld   de, $1122                                   ; $474c: $11 $22 $11
	ld   de, $cf6e                                   ; $474f: $11 $6e $cf
	rst  $10                                         ; $4752: $d7
	db   $ec                                         ; $4753: $ec
	ld   a, d                                        ; $4754: $7a
	add  [hl]                                        ; $4755: $86
	xor  a                                           ; $4756: $af
	rst  $38                                         ; $4757: $ff
	rst  $38                                         ; $4758: $ff
	db   $eb                                         ; $4759: $eb
	ld   [hl], l                                     ; $475a: $75
	ld   d, a                                        ; $475b: $57
	sbc  c                                           ; $475c: $99
	ld   [hl], h                                     ; $475d: $74
	ld   de, $2114                                   ; $475e: $11 $14 $21
	ld   de, $bc2d                                   ; $4761: $11 $2d $bc
	ld   [$b9cb], a                                  ; $4764: $ea $cb $b9

Jump_0de_4767:
	ld   [hl], a                                     ; $4767: $77
	ld   a, a                                        ; $4768: $7f
	rst  $38                                         ; $4769: $ff
	cp   $ca                                         ; $476a: $fe $ca
	jp   z, Jump_0de_5699                            ; $476c: $ca $99 $56

	ld   d, e                                        ; $476f: $53
	ld   b, d                                        ; $4770: $42
	ld   de, $1121                                   ; $4771: $11 $21 $11
	jr   jr_0de_4731                                 ; $4774: $18 $bb

	db   $fd                                         ; $4776: $fd
	xor  c                                           ; $4777: $a9
	adc  e                                           ; $4778: $8b
	add  [hl]                                        ; $4779: $86
	adc  e                                           ; $477a: $8b
	rst  $38                                         ; $477b: $ff
	rst  $38                                         ; $477c: $ff
	reti                                             ; $477d: $d9


	ld   l, b                                        ; $477e: $68
	ld   a, d                                        ; $477f: $7a
	cp   b                                           ; $4780: $b8
	ld   [hl], e                                     ; $4781: $73
	ld   de, $2112                                   ; $4782: $11 $12 $21
	ld   de, $cb18                                   ; $4785: $11 $18 $cb
	db   $fc                                         ; $4788: $fc
	adc  [hl]                                        ; $4789: $8e
	or   a                                           ; $478a: $b7
	halt                                             ; $478b: $76
	sbc  l                                           ; $478c: $9d
	rst  $38                                         ; $478d: $ff
	rst  $38                                         ; $478e: $ff
	jp   z, $99ab                                    ; $478f: $ca $ab $99

	add  [hl]                                        ; $4792: $86
	ld   h, l                                        ; $4793: $65
	ld   b, d                                        ; $4794: $42
	ld   de, $1132                                   ; $4795: $11 $32 $11
	inc  d                                           ; $4798: $14
	ld   [$cdac], a                                  ; $4799: $ea $ac $cd
	and  a                                           ; $479c: $a7
	ld   b, a                                        ; $479d: $47
	call c, $ffef                                    ; $479e: $dc $ef $ff
	ei                                               ; $47a1: $fb
	adc  c                                           ; $47a2: $89
	sbc  b                                           ; $47a3: $98
	sub  a                                           ; $47a4: $97
	ld   l, c                                        ; $47a5: $69
	ld   h, e                                        ; $47a6: $63
	ld   hl, $2112                                   ; $47a7: $21 $12 $21
	ld   de, $bf7e                                   ; $47aa: $11 $7e $bf
	cp   b                                           ; $47ad: $b8
	add  sp, $68                                     ; $47ae: $e8 $68
	adc  b                                           ; $47b0: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47b1: $cf
	rst  $38                                         ; $47b2: $ff
	ret  c                                           ; $47b3: $d8

	sbc  e                                           ; $47b4: $9b
	cp   e                                           ; $47b5: $bb
	xor  b                                           ; $47b6: $a8
	halt                                             ; $47b7: $76
	ld   b, h                                        ; $47b8: $44
	ld   hl, $1112                                   ; $47b9: $21 $12 $11
	ld   bc, $dd1c                                   ; $47bc: $01 $1c $dd
	add  a                                           ; $47bf: $87
	rst  $38                                         ; $47c0: $ff
	and  h                                           ; $47c1: $a4
	ld   h, $df                                      ; $47c2: $26 $df
	rst  $38                                         ; $47c4: $ff
	jp   c, $97dd                                    ; $47c5: $da $dd $97

	adc  h                                           ; $47c8: $8c
	or   a                                           ; $47c9: $b7
	ld   hl, $2233                                   ; $47ca: $21 $33 $22
	ld   de, $1511                                   ; $47cd: $11 $11 $15
	cp   b                                           ; $47d0: $b8
	adc  $dd                                         ; $47d1: $ce $dd
	jp   z, Jump_0de_4e44                            ; $47d3: $ca $44 $4e

	rst  $38                                         ; $47d6: $ff
	cp   $db                                         ; $47d7: $fe $db
	and  a                                           ; $47d9: $a7
	ld   l, e                                        ; $47da: $6b
	ret                                              ; $47db: $c9


	halt                                             ; $47dc: $76
	ld   b, e                                        ; $47dd: $43
	ld   de, $3213                                   ; $47de: $11 $13 $32
	ld   de, $ac8e                                   ; $47e1: $11 $8e $ac
	sbc  c                                           ; $47e4: $99
	call c, Call_0de_5bc4                            ; $47e5: $dc $c4 $5b
	rst  $38                                         ; $47e8: $ff
	db   $fc                                         ; $47e9: $fc
	call $99da                                       ; $47ea: $cd $da $99
	bit  6, l                                        ; $47ed: $cb $75
	ld   d, h                                        ; $47ef: $54
	ld   [hl-], a                                    ; $47f0: $32
	ld   de, $3121                                   ; $47f1: $11 $21 $31
	rla                                              ; $47f4: $17
	ret                                              ; $47f5: $c9


	cp   l                                           ; $47f6: $bd
	cp   l                                           ; $47f7: $bd
	jp   $df5b                                       ; $47f8: $c3 $5b $df


	rst  $38                                         ; $47fb: $ff
	db   $ed                                         ; $47fc: $ed
	db   $db                                         ; $47fd: $db
	jp   c, $78a9                                    ; $47fe: $da $a9 $78

	ld   d, [hl]                                     ; $4801: $56
	inc  sp                                          ; $4802: $33
	ld   b, d                                        ; $4803: $42
	ld   sp, $1111                                   ; $4804: $31 $11 $11
	adc  d                                           ; $4807: $8a
	adc  [hl]                                        ; $4808: $8e
	jp   hl                                          ; $4809: $e9


	and  a                                           ; $480a: $a7
	sbc  h                                           ; $480b: $9c
	adc  c                                           ; $480c: $89
	rst  JumpTable                                         ; $480d: $df
	rst  $38                                         ; $480e: $ff
	jp   c, $caac                                    ; $480f: $da $ac $ca

	add  a                                           ; $4812: $87
	ld   [hl], a                                     ; $4813: $77
	ld   [hl], h                                     ; $4814: $74
	ld   [de], a                                     ; $4815: $12
	ld   [de], a                                     ; $4816: $12
	ld   d, d                                        ; $4817: $52
	ld   de, $c419                                   ; $4818: $11 $19 $c4
	cp   h                                           ; $481b: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $481c: $cf
	and  h                                           ; $481d: $a4
	ld   e, d                                        ; $481e: $5a
	sbc  a                                           ; $481f: $9f
	db   $fd                                         ; $4820: $fd
	cp   $db                                         ; $4821: $fe $db
	xor  b                                           ; $4823: $a8
	adc  d                                           ; $4824: $8a
	add  a                                           ; $4825: $87
	adc  c                                           ; $4826: $89
	ld   [hl], e                                     ; $4827: $73
	ld   de, $6129                                   ; $4828: $11 $29 $61
	ld   de, $775d                                   ; $482b: $11 $5d $77
	cp   d                                           ; $482e: $ba
	cp   c                                           ; $482f: $b9
	cp   l                                           ; $4830: $bd
	or   a                                           ; $4831: $b7
	adc  l                                           ; $4832: $8d
	rst  $28                                         ; $4833: $ef
	xor  $ec                                         ; $4834: $ee $ec
	xor  b                                           ; $4836: $a8
	sbc  b                                           ; $4837: $98
	ld   h, a                                        ; $4838: $67
	ld   [hl], a                                     ; $4839: $77
	ld   d, h                                        ; $483a: $54
	ld   hl, $2222                                   ; $483b: $21 $22 $22
	ld   [de], a                                     ; $483e: $12
	and  a                                           ; $483f: $a7
	sbc  h                                           ; $4840: $9c
	adc  d                                           ; $4841: $8a
	db   $db                                         ; $4842: $db
	sbc  e                                           ; $4843: $9b
	add  a                                           ; $4844: $87
	rst  JumpTable                                         ; $4845: $df
	rst  $38                                         ; $4846: $ff
	jp   z, $b9dd                                    ; $4847: $ca $dd $b9

	adc  b                                           ; $484a: $88
	halt                                             ; $484b: $76
	ld   d, h                                        ; $484c: $54
	ld   b, h                                        ; $484d: $44
	ld   b, h                                        ; $484e: $44
	ld   d, d                                        ; $484f: $52
	ld   de, $d914                                   ; $4850: $11 $14 $d9
	ld   a, c                                        ; $4853: $79
	xor  h                                           ; $4854: $ac
	ld   [$8d35], a                                  ; $4855: $ea $35 $8d
	db   $fd                                         ; $4858: $fd
	db   $dd                                         ; $4859: $dd
	db   $db                                         ; $485a: $db
	xor  b                                           ; $485b: $a8
	sbc  l                                           ; $485c: $9d
	add  $57                                         ; $485d: $c6 $57
	add  [hl]                                        ; $485f: $86
	ld   sp, $6116                                   ; $4860: $31 $16 $61
	ld   de, $e41a                                   ; $4863: $11 $1a $e4
	ld   l, c                                        ; $4866: $69
	sbc  a                                           ; $4867: $9f
	sub  $47                                         ; $4868: $d6 $47
	set  5, a                                        ; $486a: $cb $ef
	db   $fd                                         ; $486c: $fd
	res  1, e                                        ; $486d: $cb $8b
	xor  d                                           ; $486f: $aa
	and  a                                           ; $4870: $a7
	ld   e, b                                        ; $4871: $58
	sub  l                                           ; $4872: $95
	ld   hl, $5116                                   ; $4873: $21 $16 $51
	ld   de, $972a                                   ; $4876: $11 $2a $97
	xor  d                                           ; $4879: $aa
	cp   e                                           ; $487a: $bb
	adc  c                                           ; $487b: $89
	xor  b                                           ; $487c: $a8
	sbc  h                                           ; $487d: $9c
	rst  JumpTable                                         ; $487e: $df
	db   $fd                                         ; $487f: $fd
	cp   d                                           ; $4880: $ba
	xor  c                                           ; $4881: $a9
	adc  d                                           ; $4882: $8a
	adc  c                                           ; $4883: $89
	sbc  b                                           ; $4884: $98
	ld   h, h                                        ; $4885: $64
	ld   hl, $3533                                   ; $4886: $21 $33 $35
	ld   de, $4948                                   ; $4889: $11 $48 $49
	add  $cd                                         ; $488c: $c6 $cd
	sbc  b                                           ; $488e: $98
	ld   h, a                                        ; $488f: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4890: $cf
	db   $ec                                         ; $4891: $ec
	call $9aea                                       ; $4892: $cd $ea $9a
	xor  d                                           ; $4895: $aa
	xor  b                                           ; $4896: $a8
	adc  c                                           ; $4897: $89
	ld   [hl], l                                     ; $4898: $75
	ld   hl, $3245                                   ; $4899: $21 $45 $32
	ld   de, $247a                                   ; $489c: $11 $7a $24
	adc  c                                           ; $489f: $89
	rst  $30                                         ; $48a0: $f7
	ld   c, l                                        ; $48a1: $4d
	reti                                             ; $48a2: $d9


	adc  d                                           ; $48a3: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48a4: $cf
	ld   a, [$ebbe]                                  ; $48a5: $fa $be $eb
	sub  [hl]                                        ; $48a8: $96
	ld   a, c                                        ; $48a9: $79
	sub  a                                           ; $48aa: $97
	ld   b, l                                        ; $48ab: $45
	ld   b, l                                        ; $48ac: $45
	ld   d, e                                        ; $48ad: $53
	ld   [hl+], a                                    ; $48ae: $22
	ld   bc, $9619                                   ; $48af: $01 $19 $96
	ld   l, c                                        ; $48b2: $69
	rst  $38                                         ; $48b3: $ff
	add  [hl]                                        ; $48b4: $86
	ld   e, b                                        ; $48b5: $58
	rst  $38                                         ; $48b6: $ff
	adc  $fb                                         ; $48b7: $ce $fb
	jp   z, $c99e                                    ; $48b9: $ca $9e $c9

	halt                                             ; $48bc: $76
	ld   l, b                                        ; $48bd: $68
	ld   h, h                                        ; $48be: $64
	inc  [hl]                                        ; $48bf: $34
	ld   h, h                                        ; $48c0: $64
	ld   de, $4911                                   ; $48c1: $11 $11 $49
	ld   h, [hl]                                     ; $48c4: $66
	cp   c                                           ; $48c5: $b9
	xor  d                                           ; $48c6: $aa
	adc  d                                           ; $48c7: $8a
	xor  d                                           ; $48c8: $aa
	xor  e                                           ; $48c9: $ab
	xor  $db                                         ; $48ca: $ee $db
	cp   h                                           ; $48cc: $bc
	call $78a9                                       ; $48cd: $cd $a9 $78
	sub  a                                           ; $48d0: $97
	ld   b, h                                        ; $48d1: $44
	dec  [hl]                                        ; $48d2: $35
	ld   h, d                                        ; $48d3: $62
	inc  hl                                          ; $48d4: $23
	ld   de, $5548                                   ; $48d5: $11 $48 $55
	adc  h                                           ; $48d8: $8c
	sbc  $84                                         ; $48d9: $de $84
	adc  b                                           ; $48db: $88
	sbc  a                                           ; $48dc: $9f
	db   $fc                                         ; $48dd: $fc
	rst  $28                                         ; $48de: $ef
	cp   e                                           ; $48df: $bb
	xor  c                                           ; $48e0: $a9
	bit  4, a                                        ; $48e1: $cb $67
	cp   b                                           ; $48e3: $b8
	ld   h, d                                        ; $48e4: $62
	inc  d                                           ; $48e5: $14
	ld   [hl], h                                     ; $48e6: $74
	ld   [hl+], a                                    ; $48e7: $22
	ld   [hl-], a                                    ; $48e8: $32
	ld   b, h                                        ; $48e9: $44
	ld   b, [hl]                                     ; $48ea: $46
	sbc  l                                           ; $48eb: $9d
	xor  c                                           ; $48ec: $a9
	xor  c                                           ; $48ed: $a9
	sbc  b                                           ; $48ee: $98
	xor  [hl]                                        ; $48ef: $ae
	db   $fd                                         ; $48f0: $fd
	cp   h                                           ; $48f1: $bc
	call c, $a9b9                                    ; $48f2: $dc $b9 $a9
	adc  b                                           ; $48f5: $88
	ld   [hl], a                                     ; $48f6: $77
	ld   [hl], h                                     ; $48f7: $74
	inc  h                                           ; $48f8: $24
	ld   d, h                                        ; $48f9: $54
	ld   sp, $7514                                   ; $48fa: $31 $14 $75
	scf                                              ; $48fd: $37
	xor  h                                           ; $48fe: $ac
	cp   b                                           ; $48ff: $b8
	adc  c                                           ; $4900: $89
	sbc  d                                           ; $4901: $9a
	db   $dd                                         ; $4902: $dd
	sbc  $cd                                         ; $4903: $de $cd
	cp   e                                           ; $4905: $bb
	call z, $8998                                    ; $4906: $cc $98 $89
	xor  b                                           ; $4909: $a8
	ld   b, e                                        ; $490a: $43
	ld   b, l                                        ; $490b: $45
	ld   d, d                                        ; $490c: $52
	inc  sp                                          ; $490d: $33
	inc  hl                                          ; $490e: $23
	inc  [hl]                                        ; $490f: $34
	ld   e, b                                        ; $4910: $58
	adc  c                                           ; $4911: $89
	jp   z, $aa89                                    ; $4912: $ca $89 $aa

	cp   h                                           ; $4915: $bc
	rst  JumpTable                                         ; $4916: $df
	db   $db                                         ; $4917: $db
	cp   l                                           ; $4918: $bd
	cp   d                                           ; $4919: $ba
	adc  c                                           ; $491a: $89
	adc  b                                           ; $491b: $88
	halt                                             ; $491c: $76
	ld   h, l                                        ; $491d: $65
	ld   b, h                                        ; $491e: $44
	ld   b, e                                        ; $491f: $43
	ld   sp, $4523                                   ; $4920: $31 $23 $45
	ld   l, b                                        ; $4923: $68
	sbc  c                                           ; $4924: $99
	sbc  c                                           ; $4925: $99
	sbc  e                                           ; $4926: $9b
	xor  h                                           ; $4927: $ac
	set  5, [hl]                                     ; $4928: $cb $ee
	cp   e                                           ; $492a: $bb
	cp   h                                           ; $492b: $bc
	cp   e                                           ; $492c: $bb
	xor  c                                           ; $492d: $a9
	sbc  b                                           ; $492e: $98
	ld   h, [hl]                                     ; $492f: $66
	ld   d, l                                        ; $4930: $55
	ld   b, h                                        ; $4931: $44
	ld   b, e                                        ; $4932: $43
	ld   hl, $6424                                   ; $4933: $21 $24 $64
	ld   e, b                                        ; $4936: $58
	adc  d                                           ; $4937: $8a
	sbc  b                                           ; $4938: $98
	sbc  e                                           ; $4939: $9b
	sbc  c                                           ; $493a: $99
	call $bdcc                                       ; $493b: $cd $cc $bd
	jp   c, $aaab                                    ; $493e: $da $ab $aa

	sub  a                                           ; $4941: $97
	add  a                                           ; $4942: $87
	ld   d, h                                        ; $4943: $54
	ld   b, h                                        ; $4944: $44
	ld   b, h                                        ; $4945: $44
	inc  sp                                          ; $4946: $33
	inc  hl                                          ; $4947: $23
	ld   d, l                                        ; $4948: $55
	ld   h, [hl]                                     ; $4949: $66
	ld   a, d                                        ; $494a: $7a
	adc  c                                           ; $494b: $89
	xor  c                                           ; $494c: $a9
	xor  e                                           ; $494d: $ab
	xor  h                                           ; $494e: $ac
	set  1, h                                        ; $494f: $cb $cc
	set  1, d                                        ; $4951: $cb $ca
	sbc  c                                           ; $4953: $99
	adc  b                                           ; $4954: $88
	add  a                                           ; $4955: $87
	ld   h, [hl]                                     ; $4956: $66
	ld   d, [hl]                                     ; $4957: $56
	ld   h, l                                        ; $4958: $65
	ld   b, e                                        ; $4959: $43
	dec  [hl]                                        ; $495a: $35
	ld   d, h                                        ; $495b: $54
	ld   d, a                                        ; $495c: $57
	ld   [hl], a                                     ; $495d: $77
	adc  b                                           ; $495e: $88
	sbc  c                                           ; $495f: $99
	xor  d                                           ; $4960: $aa
	xor  e                                           ; $4961: $ab
	res  7, e                                        ; $4962: $cb $bb
	cp   d                                           ; $4964: $ba
	xor  e                                           ; $4965: $ab
	xor  d                                           ; $4966: $aa
	sbc  c                                           ; $4967: $99
	sbc  b                                           ; $4968: $98
	add  a                                           ; $4969: $87
	ld   [hl], a                                     ; $496a: $77
	ld   [hl], a                                     ; $496b: $77
	ld   h, [hl]                                     ; $496c: $66
	ld   d, h                                        ; $496d: $54
	ld   b, l                                        ; $496e: $45
	ld   d, l                                        ; $496f: $55
	ld   h, [hl]                                     ; $4970: $66
	ld   h, a                                        ; $4971: $67
	ld   [hl], a                                     ; $4972: $77
	adc  c                                           ; $4973: $89
	sbc  d                                           ; $4974: $9a
	xor  e                                           ; $4975: $ab
	cp   h                                           ; $4976: $bc
	cp   d                                           ; $4977: $ba
	xor  e                                           ; $4978: $ab
	cp   e                                           ; $4979: $bb
	cp   d                                           ; $497a: $ba
	xor  d                                           ; $497b: $aa

Call_0de_497c:
	sbc  d                                           ; $497c: $9a
	sbc  b                                           ; $497d: $98
	sbc  b                                           ; $497e: $98
	ld   [hl], a                                     ; $497f: $77
	ld   h, [hl]                                     ; $4980: $66
	ld   h, l                                        ; $4981: $65
	ld   b, l                                        ; $4982: $45
	ld   d, l                                        ; $4983: $55
	ld   d, l                                        ; $4984: $55
	ld   d, l                                        ; $4985: $55
	ld   h, [hl]                                     ; $4986: $66
	ld   [hl], a                                     ; $4987: $77
	sbc  b                                           ; $4988: $98
	sbc  e                                           ; $4989: $9b
	sbc  d                                           ; $498a: $9a
	jp   z, $bccb                                    ; $498b: $ca $cb $bc

	xor  e                                           ; $498e: $ab
	xor  e                                           ; $498f: $ab
	xor  d                                           ; $4990: $aa
	xor  d                                           ; $4991: $aa
	adc  b                                           ; $4992: $88
	ld   [hl], a                                     ; $4993: $77
	halt                                             ; $4994: $76
	ld   h, l                                        ; $4995: $65
	ld   d, l                                        ; $4996: $55
	ld   d, l                                        ; $4997: $55
	ld   b, h                                        ; $4998: $44
	ld   d, l                                        ; $4999: $55
	ld   d, l                                        ; $499a: $55
	ld   h, [hl]                                     ; $499b: $66
	ld   [hl], a                                     ; $499c: $77
	adc  b                                           ; $499d: $88
	sbc  c                                           ; $499e: $99
	cp   d                                           ; $499f: $ba
	cp   e                                           ; $49a0: $bb
	cp   h                                           ; $49a1: $bc
	cp   e                                           ; $49a2: $bb
	cp   e                                           ; $49a3: $bb
	cp   d                                           ; $49a4: $ba
	xor  c                                           ; $49a5: $a9
	xor  c                                           ; $49a6: $a9
	sbc  b                                           ; $49a7: $98
	ld   [hl], a                                     ; $49a8: $77
	ld   h, [hl]                                     ; $49a9: $66
	ld   h, l                                        ; $49aa: $65
	ld   d, l                                        ; $49ab: $55
	ld   b, h                                        ; $49ac: $44
	ld   b, h                                        ; $49ad: $44
	ld   b, l                                        ; $49ae: $45
	ld   d, l                                        ; $49af: $55
	ld   h, [hl]                                     ; $49b0: $66
	ld   [hl], a                                     ; $49b1: $77
	adc  b                                           ; $49b2: $88
	sbc  c                                           ; $49b3: $99
	xor  d                                           ; $49b4: $aa
	cp   e                                           ; $49b5: $bb
	set  1, h                                        ; $49b6: $cb $cc
	cp   e                                           ; $49b8: $bb
	xor  e                                           ; $49b9: $ab
	xor  c                                           ; $49ba: $a9
	xor  c                                           ; $49bb: $a9
	sbc  b                                           ; $49bc: $98
	ld   [hl], a                                     ; $49bd: $77
	ld   h, [hl]                                     ; $49be: $66
	ld   h, l                                        ; $49bf: $65
	ld   d, l                                        ; $49c0: $55
	ld   b, h                                        ; $49c1: $44
	ld   d, l                                        ; $49c2: $55
	ld   d, l                                        ; $49c3: $55
	ld   d, l                                        ; $49c4: $55
	ld   h, [hl]                                     ; $49c5: $66
	ld   h, a                                        ; $49c6: $67
	adc  c                                           ; $49c7: $89
	sbc  d                                           ; $49c8: $9a
	xor  d                                           ; $49c9: $aa
	cp   e                                           ; $49ca: $bb
	cp   h                                           ; $49cb: $bc
	call z, $bacb                                    ; $49cc: $cc $cb $ba
	cp   d                                           ; $49cf: $ba
	xor  c                                           ; $49d0: $a9
	adc  b                                           ; $49d1: $88
	add  a                                           ; $49d2: $87
	halt                                             ; $49d3: $76
	ld   h, [hl]                                     ; $49d4: $66
	ld   d, l                                        ; $49d5: $55
	ld   d, l                                        ; $49d6: $55
	ld   d, l                                        ; $49d7: $55
	ld   d, l                                        ; $49d8: $55
	ld   d, l                                        ; $49d9: $55
	ld   d, [hl]                                     ; $49da: $56
	ld   h, a                                        ; $49db: $67
	ld   a, b                                        ; $49dc: $78
	sbc  c                                           ; $49dd: $99
	xor  e                                           ; $49de: $ab
	xor  e                                           ; $49df: $ab
	cp   e                                           ; $49e0: $bb
	call z, $babb                                    ; $49e1: $cc $bb $ba
	cp   d                                           ; $49e4: $ba
	sbc  d                                           ; $49e5: $9a
	adc  c                                           ; $49e6: $89
	add  a                                           ; $49e7: $87
	ld   [hl], a                                     ; $49e8: $77
	ld   h, [hl]                                     ; $49e9: $66
	ld   h, l                                        ; $49ea: $65
	ld   d, l                                        ; $49eb: $55
	ld   b, h                                        ; $49ec: $44
	ld   d, l                                        ; $49ed: $55
	ld   d, l                                        ; $49ee: $55
	ld   d, l                                        ; $49ef: $55
	ld   h, [hl]                                     ; $49f0: $66
	ld   [hl], a                                     ; $49f1: $77
	adc  b                                           ; $49f2: $88
	sbc  c                                           ; $49f3: $99
	cp   d                                           ; $49f4: $ba
	cp   h                                           ; $49f5: $bc
	res  7, e                                        ; $49f6: $cb $bb
	res  5, e                                        ; $49f8: $cb $ab
	xor  c                                           ; $49fa: $a9
	sbc  b                                           ; $49fb: $98
	sbc  b                                           ; $49fc: $98
	ld   [hl], a                                     ; $49fd: $77
	ld   h, [hl]                                     ; $49fe: $66
	ld   h, l                                        ; $49ff: $65
	ld   d, l                                        ; $4a00: $55
	ld   b, h                                        ; $4a01: $44
	ld   b, l                                        ; $4a02: $45
	ld   d, l                                        ; $4a03: $55
	ld   d, l                                        ; $4a04: $55
	ld   d, [hl]                                     ; $4a05: $56
	ld   h, a                                        ; $4a06: $67
	ld   a, c                                        ; $4a07: $79
	sbc  d                                           ; $4a08: $9a
	xor  d                                           ; $4a09: $aa
	cp   h                                           ; $4a0a: $bc
	res  7, e                                        ; $4a0b: $cb $bb
	res  7, d                                        ; $4a0d: $cb $ba
	cp   d                                           ; $4a0f: $ba
	sbc  c                                           ; $4a10: $99
	adc  b                                           ; $4a11: $88
	ld   [hl], a                                     ; $4a12: $77
	ld   h, [hl]                                     ; $4a13: $66
	ld   h, l                                        ; $4a14: $65
	ld   d, l                                        ; $4a15: $55
	ld   b, h                                        ; $4a16: $44
	ld   b, h                                        ; $4a17: $44
	ld   b, h                                        ; $4a18: $44
	ld   b, l                                        ; $4a19: $45
	ld   d, [hl]                                     ; $4a1a: $56
	ld   h, a                                        ; $4a1b: $67
	ld   a, b                                        ; $4a1c: $78
	adc  d                                           ; $4a1d: $8a
	xor  e                                           ; $4a1e: $ab
	cp   e                                           ; $4a1f: $bb
	cp   e                                           ; $4a20: $bb
	call z, $cbcb                                    ; $4a21: $cc $cb $cb
	cp   d                                           ; $4a24: $ba
	sbc  c                                           ; $4a25: $99
	sbc  c                                           ; $4a26: $99
	ld   [hl], a                                     ; $4a27: $77
	halt                                             ; $4a28: $76
	ld   h, l                                        ; $4a29: $65
	ld   d, l                                        ; $4a2a: $55
	ld   b, h                                        ; $4a2b: $44
	ld   b, h                                        ; $4a2c: $44
	ld   b, h                                        ; $4a2d: $44
	ld   b, l                                        ; $4a2e: $45
	ld   d, l                                        ; $4a2f: $55
	ld   h, a                                        ; $4a30: $67
	ld   a, b                                        ; $4a31: $78
	sbc  c                                           ; $4a32: $99
	sbc  e                                           ; $4a33: $9b
	xor  e                                           ; $4a34: $ab
	cp   e                                           ; $4a35: $bb
	cp   h                                           ; $4a36: $bc
	res  7, e                                        ; $4a37: $cb $bb
	cp   e                                           ; $4a39: $bb
	xor  c                                           ; $4a3a: $a9
	sbc  b                                           ; $4a3b: $98
	add  a                                           ; $4a3c: $87
	halt                                             ; $4a3d: $76
	ld   h, l                                        ; $4a3e: $65
	ld   d, l                                        ; $4a3f: $55
	ld   b, h                                        ; $4a40: $44
	ld   b, h                                        ; $4a41: $44
	ld   b, h                                        ; $4a42: $44
	ld   b, h                                        ; $4a43: $44
	ld   d, l                                        ; $4a44: $55
	ld   h, [hl]                                     ; $4a45: $66
	ld   a, b                                        ; $4a46: $78
	sbc  c                                           ; $4a47: $99
	sbc  e                                           ; $4a48: $9b
	cp   e                                           ; $4a49: $bb
	call z, $dbdc                                    ; $4a4a: $cc $dc $db
	cp   h                                           ; $4a4d: $bc
	xor  e                                           ; $4a4e: $ab
	sbc  d                                           ; $4a4f: $9a
	sbc  b                                           ; $4a50: $98
	add  a                                           ; $4a51: $87
	halt                                             ; $4a52: $76
	ld   h, l                                        ; $4a53: $65
	ld   d, l                                        ; $4a54: $55
	ld   b, h                                        ; $4a55: $44
	ld   b, h                                        ; $4a56: $44
	ld   b, h                                        ; $4a57: $44
	ld   b, l                                        ; $4a58: $45
	ld   d, l                                        ; $4a59: $55
	ld   h, [hl]                                     ; $4a5a: $66
	ld   [hl], a                                     ; $4a5b: $77
	adc  c                                           ; $4a5c: $89
	xor  e                                           ; $4a5d: $ab
	cp   h                                           ; $4a5e: $bc
	call z, $cccc                                    ; $4a5f: $cc $cc $cc
	cp   h                                           ; $4a62: $bc
	cp   d                                           ; $4a63: $ba
	xor  c                                           ; $4a64: $a9
	sbc  c                                           ; $4a65: $99
	add  a                                           ; $4a66: $87
	halt                                             ; $4a67: $76
	ld   h, l                                        ; $4a68: $65
	ld   d, h                                        ; $4a69: $54
	ld   b, h                                        ; $4a6a: $44
	ld   b, h                                        ; $4a6b: $44
	ld   b, h                                        ; $4a6c: $44
	ld   b, l                                        ; $4a6d: $45
	ld   d, l                                        ; $4a6e: $55
	ld   h, a                                        ; $4a6f: $67
	ld   a, b                                        ; $4a70: $78
	sbc  e                                           ; $4a71: $9b
	call z, $cbcc                                    ; $4a72: $cc $cc $cb
	call z, $cbcc                                    ; $4a75: $cc $cc $cb
	xor  d                                           ; $4a78: $aa
	xor  c                                           ; $4a79: $a9
	sbc  b                                           ; $4a7a: $98
	adc  b                                           ; $4a7b: $88
	ld   [hl], l                                     ; $4a7c: $75
	ld   h, l                                        ; $4a7d: $65
	ld   b, h                                        ; $4a7e: $44
	inc  sp                                          ; $4a7f: $33
	ld   b, e                                        ; $4a80: $43
	inc  [hl]                                        ; $4a81: $34
	ld   b, l                                        ; $4a82: $45
	ld   d, [hl]                                     ; $4a83: $56
	ld   [hl], a                                     ; $4a84: $77
	sbc  d                                           ; $4a85: $9a
	cp   d                                           ; $4a86: $ba
	cp   l                                           ; $4a87: $bd
	db   $dd                                         ; $4a88: $dd
	sbc  $ed                                         ; $4a89: $de $ed
	call z, $a9bb                                    ; $4a8b: $cc $bb $a9
	sbc  b                                           ; $4a8e: $98
	halt                                             ; $4a8f: $76
	ld   d, h                                        ; $4a90: $54
	ld   b, e                                        ; $4a91: $43
	ld   hl, $2211                                   ; $4a92: $21 $11 $22
	inc  h                                           ; $4a95: $24
	ld   d, [hl]                                     ; $4a96: $56
	ld   l, b                                        ; $4a97: $68
	adc  d                                           ; $4a98: $8a
	cp   e                                           ; $4a99: $bb
	call $eeee                                       ; $4a9a: $cd $ee $ee
	db   $ed                                         ; $4a9d: $ed
	call c, $99ba                                    ; $4a9e: $dc $ba $99
	add  a                                           ; $4aa1: $87
	ld   h, l                                        ; $4aa2: $65
	ld   b, h                                        ; $4aa3: $44
	ld   [hl-], a                                    ; $4aa4: $32
	ld   de, $2211                                   ; $4aa5: $11 $11 $22
	dec  h                                           ; $4aa8: $25
	ld   h, [hl]                                     ; $4aa9: $66
	ld   a, c                                        ; $4aaa: $79
	xor  e                                           ; $4aab: $ab
	call z, $feef                                    ; $4aac: $cc $ef $fe
	xor  $ec                                         ; $4aaf: $ee $ec
	res  5, d                                        ; $4ab1: $cb $aa
	sub  a                                           ; $4ab3: $97
	ld   h, l                                        ; $4ab4: $65
	ld   d, h                                        ; $4ab5: $54
	ld   [hl-], a                                    ; $4ab6: $32
	ld   de, $2411                                   ; $4ab7: $11 $11 $24
	inc  [hl]                                        ; $4aba: $34
	ld   l, c                                        ; $4abb: $69
	xor  c                                           ; $4abc: $a9
	adc  d                                           ; $4abd: $8a
	call c, $ffee                                    ; $4abe: $dc $ee $ff
	cp   $dd                                         ; $4ac1: $fe $dd
	cp   d                                           ; $4ac3: $ba
	sbc  c                                           ; $4ac4: $99
	add  a                                           ; $4ac5: $87
	ld   [hl], l                                     ; $4ac6: $75
	ld   [hl-], a                                    ; $4ac7: $32
	ld   [hl+], a                                    ; $4ac8: $22
	ld   de, $5311                                   ; $4ac9: $11 $11 $53
	ld   [hl], $ac                                   ; $4acc: $36 $ac
	sbc  d                                           ; $4ace: $9a
	cp   [hl]                                        ; $4acf: $be
	call c, $ffef                                    ; $4ad0: $dc $ef $ff
	db   $ed                                         ; $4ad3: $ed
	call c, Call_0de_77b9                            ; $4ad4: $dc $b9 $77
	halt                                             ; $4ad7: $76
	ld   b, e                                        ; $4ad8: $43
	ld   [hl-], a                                    ; $4ad9: $32
	ld   de, $1411                                   ; $4ada: $11 $11 $14
	ld   b, h                                        ; $4add: $44
	sbc  e                                           ; $4ade: $9b
	cp   e                                           ; $4adf: $bb
	cp   h                                           ; $4ae0: $bc
	db   $ed                                         ; $4ae1: $ed
	sbc  $ff                                         ; $4ae2: $de $ff
	rst  $38                                         ; $4ae4: $ff
	db   $ed                                         ; $4ae5: $ed
	cp   d                                           ; $4ae6: $ba
	adc  b                                           ; $4ae7: $88
	halt                                             ; $4ae8: $76
	ld   d, e                                        ; $4ae9: $53
	ld   de, $1111                                   ; $4aea: $11 $11 $11
	ld   de, $5a54                                   ; $4aed: $11 $54 $5a
	sbc  $db                                         ; $4af0: $de $db
	sbc  $ed                                         ; $4af2: $de $ed
	rst  $28                                         ; $4af4: $ef
	rst  $38                                         ; $4af5: $ff
	db   $dd                                         ; $4af6: $dd
	db   $db                                         ; $4af7: $db
	sbc  b                                           ; $4af8: $98
	halt                                             ; $4af9: $76
	ld   d, h                                        ; $4afa: $54
	ld   sp, $1111                                   ; $4afb: $31 $11 $11
	ld   de, $4945                                   ; $4afe: $11 $45 $49
	db   $dd                                         ; $4b01: $dd
	db   $dd                                         ; $4b02: $dd
	rst  JumpTable                                         ; $4b03: $df
	xor  $ef                                         ; $4b04: $ee $ef
	rst  $38                                         ; $4b06: $ff
	db   $fd                                         ; $4b07: $fd
	call z, $76a8                                    ; $4b08: $cc $a8 $76
	ld   d, h                                        ; $4b0b: $54
	ld   sp, $1111                                   ; $4b0c: $31 $11 $11
	ld   de, $5944                                   ; $4b0f: $11 $44 $59
	xor  $dc                                         ; $4b12: $ee $dc
	rst  $28                                         ; $4b14: $ef
	db   $ed                                         ; $4b15: $ed
	rst  $38                                         ; $4b16: $ff
	rst  $38                                         ; $4b17: $ff
	rst  JumpTable                                         ; $4b18: $df
	ld   [$9787], a                                  ; $4b19: $ea $87 $97
	ld   b, e                                        ; $4b1c: $43
	ld   de, $1111                                   ; $4b1d: $11 $11 $11
	ld   de, $8d55                                   ; $4b20: $11 $55 $8d
	db   $ed                                         ; $4b23: $ed
	db   $db                                         ; $4b24: $db
	rst  JumpTable                                         ; $4b25: $df
	rst  $28                                         ; $4b26: $ef
	rst  $38                                         ; $4b27: $ff
	rst  $38                                         ; $4b28: $ff
	db   $dd                                         ; $4b29: $dd
	ret                                              ; $4b2a: $c9


	ld   [hl], a                                     ; $4b2b: $77
	ld   h, l                                        ; $4b2c: $65
	ld   d, d                                        ; $4b2d: $52
	ld   de, $1111                                   ; $4b2e: $11 $11 $11
	dec  h                                           ; $4b31: $25
	ld   e, c                                        ; $4b32: $59
	sbc  $de                                         ; $4b33: $de $de
	db   $ed                                         ; $4b35: $ed
	xor  $ff                                         ; $4b36: $ee $ff
	rst  $38                                         ; $4b38: $ff
	xor  $cb                                         ; $4b39: $ee $cb
	sbc  b                                           ; $4b3b: $98
	halt                                             ; $4b3c: $76
	ld   b, e                                        ; $4b3d: $43
	ld   hl, $1111                                   ; $4b3e: $21 $11 $11
	ld   [de], a                                     ; $4b41: $12
	scf                                              ; $4b42: $37
	cp   [hl]                                        ; $4b43: $be
	xor  $ce                                         ; $4b44: $ee $ce
	call c, $ffff                                    ; $4b46: $dc $ff $ff
	cp   $fc                                         ; $4b49: $fe $fc
	xor  c                                           ; $4b4b: $a9
	add  [hl]                                        ; $4b4c: $86
	ld   b, e                                        ; $4b4d: $43
	ld   hl, $1111                                   ; $4b4e: $21 $11 $11
	ld   de, $9e56                                   ; $4b51: $11 $56 $9e
	db   $fd                                         ; $4b54: $fd
	db   $dd                                         ; $4b55: $dd
	xor  $cd                                         ; $4b56: $ee $cd
	rst  $38                                         ; $4b58: $ff
	rst  $38                                         ; $4b59: $ff
	call c, Call_0de_77b8                            ; $4b5a: $dc $b8 $77
	ld   h, h                                        ; $4b5d: $64
	ld   hl, $1111                                   ; $4b5e: $21 $11 $11
	ld   de, $6d66                                   ; $4b61: $11 $66 $6d
	rst  $38                                         ; $4b64: $ff
	db   $fc                                         ; $4b65: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b66: $cf
	call c, $feff                                    ; $4b67: $dc $ff $fe
	db   $ed                                         ; $4b6a: $ed
	cp   b                                           ; $4b6b: $b8
	halt                                             ; $4b6c: $76
	ld   h, l                                        ; $4b6d: $65
	ld   de, $1111                                   ; $4b6e: $11 $11 $11
	ld   de, $cf56                                   ; $4b71: $11 $56 $cf
	rst  $28                                         ; $4b74: $ef
	db   $eb                                         ; $4b75: $eb
	xor  $de                                         ; $4b76: $ee $de
	cp   $ff                                         ; $4b78: $fe $ff
	res  7, b                                        ; $4b7a: $cb $b8
	ld   [hl], a                                     ; $4b7c: $77
	ld   d, h                                        ; $4b7d: $54
	ld   de, $1111                                   ; $4b7e: $11 $11 $11
	inc  de                                          ; $4b81: $13
	ld   c, c                                        ; $4b82: $49
	rst  $38                                         ; $4b83: $ff
	rst  JumpTable                                         ; $4b84: $df
	db   $ed                                         ; $4b85: $ed
	cp   $ef                                         ; $4b86: $fe $ef
	rst  $38                                         ; $4b88: $ff
	xor  $ca                                         ; $4b89: $ee $ca
	ld   [hl], l                                     ; $4b8b: $75
	ld   h, l                                        ; $4b8c: $65
	ld   b, c                                        ; $4b8d: $41
	ld   de, $1111                                   ; $4b8e: $11 $11 $11
	ld   d, $ef                                      ; $4b91: $16 $ef
	rst  JumpTable                                         ; $4b93: $df
	rst  $38                                         ; $4b94: $ff
	db   $db                                         ; $4b95: $db
	rst  $28                                         ; $4b96: $ef
	rst  $38                                         ; $4b97: $ff
	rst  $38                                         ; $4b98: $ff

Call_0de_4b99:
	ret                                              ; $4b99: $c9


	sbc  b                                           ; $4b9a: $98
	add  l                                           ; $4b9b: $85
	inc  [hl]                                        ; $4b9c: $34
	ld   de, $1111                                   ; $4b9d: $11 $11 $11
	inc  d                                           ; $4ba0: $14
	xor  h                                           ; $4ba1: $ac
	rst  JumpTable                                         ; $4ba2: $df
	cp   $cd                                         ; $4ba3: $fe $cd
	rst  $38                                         ; $4ba5: $ff
	cp   a                                           ; $4ba6: $bf
	rst  $38                                         ; $4ba7: $ff
	xor  e                                           ; $4ba8: $ab
	db   $fc                                         ; $4ba9: $fc
	ld   d, e                                        ; $4baa: $53
	ld   [hl], a                                     ; $4bab: $77
	ld   hl, $1111                                   ; $4bac: $21 $11 $11
	ld   d, $79                                      ; $4baf: $16 $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bb1: $cf
	rst  $38                                         ; $4bb2: $ff
	sbc  a                                           ; $4bb3: $9f
	db   $fc                                         ; $4bb4: $fc
	sbc  $ff                                         ; $4bb5: $de $ff
	db   $db                                         ; $4bb7: $db
	jp   z, $3673                                    ; $4bb8: $ca $73 $36

	ld   b, c                                        ; $4bbb: $41
	ld   de, $1411                                   ; $4bbc: $11 $11 $14
	ld   l, b                                        ; $4bbf: $68
	rst  $38                                         ; $4bc0: $ff
	adc  $fc                                         ; $4bc1: $ce $fc
	adc  [hl]                                        ; $4bc3: $8e
	rst  $38                                         ; $4bc4: $ff
	rst  $38                                         ; $4bc5: $ff
	rst  JumpTable                                         ; $4bc6: $df
	and  l                                           ; $4bc7: $a5
	ld   h, [hl]                                     ; $4bc8: $66
	ld   b, e                                        ; $4bc9: $43
	ld   hl, $1111                                   ; $4bca: $21 $11 $11
	inc  d                                           ; $4bcd: $14
	sbc  h                                           ; $4bce: $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bcf: $cf
	rst  $38                                         ; $4bd0: $ff
	jp   z, $fccf                                    ; $4bd1: $ca $cf $fc

	rst  $38                                         ; $4bd4: $ff
	db   $eb                                         ; $4bd5: $eb
	add  [hl]                                        ; $4bd6: $86
	ld   d, e                                        ; $4bd7: $53
	ld   [hl+], a                                    ; $4bd8: $22
	ld   de, $1111                                   ; $4bd9: $11 $11 $11
	daa                                              ; $4bdc: $27
	cp   a                                           ; $4bdd: $bf
	rst  $38                                         ; $4bde: $ff
	cp   $cf                                         ; $4bdf: $fe $cf
	db   $dd                                         ; $4be1: $dd
	rst  $38                                         ; $4be2: $ff
	db   $fc                                         ; $4be3: $fc
	call z, $1592                                    ; $4be4: $cc $92 $15
	ld   hl, $1111                                   ; $4be7: $21 $11 $11
	ld   de, $ff8f                                   ; $4bea: $11 $8f $ff
	db   $fc                                         ; $4bed: $fc
	db   $fd                                         ; $4bee: $fd
	adc  a                                           ; $4bef: $8f
	rst  $38                                         ; $4bf0: $ff
	rst  $38                                         ; $4bf1: $ff
	xor  $b4                                         ; $4bf2: $ee $b4
	ld   b, c                                        ; $4bf4: $41
	ld   [de], a                                     ; $4bf5: $12
	ld   de, $1211                                   ; $4bf6: $11 $11 $12
	dec  [hl]                                        ; $4bf9: $35
	rst  $38                                         ; $4bfa: $ff
	rst  $38                                         ; $4bfb: $ff
	call c, $aefa                                    ; $4bfc: $dc $fa $ae
	rst  $38                                         ; $4bff: $ff
	adc  $ca                                         ; $4c00: $ce $ca
	ld   sp, $1152                                   ; $4c02: $31 $52 $11
	ld   de, $6711                                   ; $4c05: $11 $11 $67
	adc  h                                           ; $4c08: $8c
	rst  $38                                         ; $4c09: $ff
	rst  JumpTable                                         ; $4c0a: $df
	push bc                                          ; $4c0b: $c5
	rst  $28                                         ; $4c0c: $ef
	rst  $38                                         ; $4c0d: $ff
	rst  $38                                         ; $4c0e: $ff
	ld   sp, hl                                      ; $4c0f: $f9
	inc  sp                                          ; $4c10: $33
	ld   [de], a                                     ; $4c11: $12
	ld   de, $1111                                   ; $4c12: $11 $11 $11
	ld   h, d                                        ; $4c15: $62
	ld   a, a                                        ; $4c16: $7f
	rst  $38                                         ; $4c17: $ff
	db   $fc                                         ; $4c18: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c19: $cf
	db   $ec                                         ; $4c1a: $ec
	rst  $38                                         ; $4c1b: $ff
	db   $fc                                         ; $4c1c: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c1d: $cf
	ld   b, d                                        ; $4c1e: $42
	ld   de, $1111                                   ; $4c1f: $11 $11 $11
	ld   de, $ff21                                   ; $4c22: $11 $21 $ff
	rst  $28                                         ; $4c25: $ef
	rst  $30                                         ; $4c26: $f7
	rst  $38                                         ; $4c27: $ff
	db   $fd                                         ; $4c28: $fd
	rst  $38                                         ; $4c29: $ff
	db   $fd                                         ; $4c2a: $fd
	res  4, c                                        ; $4c2b: $cb $a1
	ld   de, $1111                                   ; $4c2d: $11 $11 $11
	dec  d                                           ; $4c30: $15
	ld   h, c                                        ; $4c31: $61
	rst  $38                                         ; $4c32: $ff
	rst  $38                                         ; $4c33: $ff
	db   $eb                                         ; $4c34: $eb
	cp   l                                           ; $4c35: $bd
	rst  $38                                         ; $4c36: $ff
	rst  $38                                         ; $4c37: $ff
	rst  $38                                         ; $4c38: $ff
	sub  e                                           ; $4c39: $93
	ld   d, c                                        ; $4c3a: $51
	ld   de, $1111                                   ; $4c3b: $11 $11 $11
	add  hl, de                                      ; $4c3e: $19
	ld   l, c                                        ; $4c3f: $69
	rst  $38                                         ; $4c40: $ff
	ld   hl, sp-$31                                  ; $4c41: $f8 $cf
	db   $db                                         ; $4c43: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c44: $cf
	rst  $38                                         ; $4c45: $ff
	xor  e                                           ; $4c46: $ab
	push hl                                          ; $4c47: $e5
	ld   de, $1111                                   ; $4c48: $11 $11 $11
	ld   de, $8dc5                                   ; $4c4b: $11 $c5 $8d
	rst  $38                                         ; $4c4e: $ff
	ld   d, h                                        ; $4c4f: $54
	rst  $38                                         ; $4c50: $ff
	ld   [$f9ff], a                                  ; $4c51: $ea $ff $f9
	xor  l                                           ; $4c54: $ad
	and  c                                           ; $4c55: $a1
	ld   de, $1111                                   ; $4c56: $11 $11 $11
	ld   l, c                                        ; $4c59: $69
	dec  de                                          ; $4c5a: $1b
	rst  $38                                         ; $4c5b: $ff
	call c, $f97c                                    ; $4c5c: $dc $7c $f9
	cp   a                                           ; $4c5f: $bf
	rst  $38                                         ; $4c60: $ff
	ei                                               ; $4c61: $fb
	sub  a                                           ; $4c62: $97
	ld   de, $1111                                   ; $4c63: $11 $11 $11
	rla                                              ; $4c66: $17
	or   c                                           ; $4c67: $b1
	rst  $28                                         ; $4c68: $ef
	ld   a, [$f11f]                                  ; $4c69: $fa $1f $f1
	ld   c, a                                        ; $4c6c: $4f
	rst  $38                                         ; $4c6d: $ff
	sbc  a                                           ; $4c6e: $9f
	db   $fc                                         ; $4c6f: $fc
	ld   de, $1111                                   ; $4c70: $11 $11 $11
	ld   de, $7fe3                                   ; $4c73: $11 $e3 $7f
	rst  $38                                         ; $4c76: $ff
	cp   l                                           ; $4c77: $bd
	db   $e3                                         ; $4c78: $e3
	rst  JumpTable                                         ; $4c79: $df
	cp   [hl]                                        ; $4c7a: $be
	rst  $38                                         ; $4c7b: $ff
	or   $24                                         ; $4c7c: $f6 $24
	ld   de, $1111                                   ; $4c7e: $11 $11 $11
	cp   b                                           ; $4c81: $b8
	ld   l, a                                        ; $4c82: $6f
	rst  $38                                         ; $4c83: $ff
	sbc  a                                           ; $4c84: $9f
	jp   c, $ffb9                                    ; $4c85: $da $b9 $ff

	rst  $38                                         ; $4c88: $ff
	rst  $28                                         ; $4c89: $ef
	ld   d, [hl]                                     ; $4c8a: $56
	ld   de, $1111                                   ; $4c8b: $11 $11 $11
	ld   a, c                                        ; $4c8e: $79
	ld   e, a                                        ; $4c8f: $5f
	rst  $38                                         ; $4c90: $ff
	rst  $38                                         ; $4c91: $ff
	pop  de                                          ; $4c92: $d1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c93: $cf
	xor  a                                           ; $4c94: $af
	rst  $38                                         ; $4c95: $ff
	ld   a, [$2176]                                  ; $4c96: $fa $76 $21
	ld   de, $1a11                                   ; $4c99: $11 $11 $1a
	ld   a, h                                        ; $4c9c: $7c
	rst  $38                                         ; $4c9d: $ff
	rst  $28                                         ; $4c9e: $ef
	or   $a9                                         ; $4c9f: $f6 $a9
	rst  JumpTable                                         ; $4ca1: $df
	rst  $38                                         ; $4ca2: $ff
	rst  $28                                         ; $4ca3: $ef
	sub  l                                           ; $4ca4: $95
	ld   de, $1111                                   ; $4ca5: $11 $11 $11
	inc  e                                           ; $4ca8: $1c
	ld   e, d                                        ; $4ca9: $5a
	rst  $38                                         ; $4caa: $ff
	rst  $38                                         ; $4cab: $ff
	ld   e, d                                        ; $4cac: $5a
	push af                                          ; $4cad: $f5
	rst  JumpTable                                         ; $4cae: $df
	rst  $38                                         ; $4caf: $ff
	jp   z, Jump_0de_417a                            ; $4cb0: $ca $7a $41

	ld   de, $1f11                                   ; $4cb3: $11 $11 $1f
	ld   d, l                                        ; $4cb6: $55
	rst  $38                                         ; $4cb7: $ff
	rst  $38                                         ; $4cb8: $ff
	di                                               ; $4cb9: $f3
	xor  d                                           ; $4cba: $aa
	rst  $38                                         ; $4cbb: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cbc: $cf
	ei                                               ; $4cbd: $fb
	sbc  b                                           ; $4cbe: $98
	ld   d, c                                        ; $4cbf: $51
	ld   de, $1c11                                   ; $4cc0: $11 $11 $1c
	or   e                                           ; $4cc3: $b3
	rst  $38                                         ; $4cc4: $ff
	rst  $38                                         ; $4cc5: $ff
	ld   hl, sp+$7b                                  ; $4cc6: $f8 $7b
	ld   e, a                                        ; $4cc8: $5f
	rst  $38                                         ; $4cc9: $ff
	db   $ec                                         ; $4cca: $ec
	add  sp, $51                                     ; $4ccb: $e8 $51
	ld   de, $1311                                   ; $4ccd: $11 $11 $13
	ldh  a, [c]                                      ; $4cd0: $f2
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cd1: $cf
	rst  $38                                         ; $4cd2: $ff
	res  5, [hl]                                     ; $4cd3: $cb $ae
	ld   e, e                                        ; $4cd5: $5b
	rst  $38                                         ; $4cd6: $ff
	db   $eb                                         ; $4cd7: $eb
	cp   e                                           ; $4cd8: $bb
	ld   [hl], c                                     ; $4cd9: $71
	ld   de, $1111                                   ; $4cda: $11 $11 $11
	or   a                                           ; $4cdd: $b7
	ld   l, a                                        ; $4cde: $6f
	rst  $38                                         ; $4cdf: $ff
	rst  $38                                         ; $4ce0: $ff
	and  [hl]                                        ; $4ce1: $a6
	xor  c                                           ; $4ce2: $a9
	rst  $38                                         ; $4ce3: $ff
	db   $fd                                         ; $4ce4: $fd
	xor  l                                           ; $4ce5: $ad
	or   h                                           ; $4ce6: $b4
	ld   hl, $1111                                   ; $4ce7: $21 $11 $11
	dec  a                                           ; $4cea: $3d
	rra                                              ; $4ceb: $1f
	rst  $38                                         ; $4cec: $ff
	rst  $38                                         ; $4ced: $ff
	rst  $30                                         ; $4cee: $f7
	ld   h, h                                        ; $4cef: $64
	rst  $38                                         ; $4cf0: $ff
	rst  $38                                         ; $4cf1: $ff
	sbc  $64                                         ; $4cf2: $de $64
	ld   d, [hl]                                     ; $4cf4: $56
	ld   de, $1611                                   ; $4cf5: $11 $11 $16
	ld   [hl], a                                     ; $4cf8: $77
	rst  $38                                         ; $4cf9: $ff
	db   $fd                                         ; $4cfa: $fd
	db   $db                                         ; $4cfb: $db
	or   l                                           ; $4cfc: $b5
	ld   e, a                                        ; $4cfd: $5f
	rst  $38                                         ; $4cfe: $ff
	rst  JumpTable                                         ; $4cff: $df
	add  $43                                         ; $4d00: $c6 $43
	ld   [hl], c                                     ; $4d02: $71
	ld   de, $7811                                   ; $4d03: $11 $11 $78
	sbc  a                                           ; $4d06: $9f
	rst  $38                                         ; $4d07: $ff
	call z, $55c9                                    ; $4d08: $cc $c9 $55
	rst  $38                                         ; $4d0b: $ff
	cp   $fe                                         ; $4d0c: $fe $fe
	ld   [hl], e                                     ; $4d0e: $73
	add  hl, sp                                      ; $4d0f: $39
	ld   de, $1811                                   ; $4d10: $11 $11 $18
	jp   $fdff                                       ; $4d13: $c3 $ff $fd


	xor  h                                           ; $4d16: $ac
	add  [hl]                                        ; $4d17: $86
	ld   e, a                                        ; $4d18: $5f
	rst  $38                                         ; $4d19: $ff
	cp   $c8                                         ; $4d1a: $fe $c8
	ld   b, l                                        ; $4d1c: $45
	add  a                                           ; $4d1d: $87
	ld   de, $1f11                                   ; $4d1e: $11 $11 $1f
	adc  a                                           ; $4d21: $8f
	rst  $38                                         ; $4d22: $ff
	ei                                               ; $4d23: $fb
	cp   c                                           ; $4d24: $b9
	add  h                                           ; $4d25: $84
	rst  JumpTable                                         ; $4d26: $df
	rst  $38                                         ; $4d27: $ff
	db   $ed                                         ; $4d28: $ed
	add  a                                           ; $4d29: $87
	ld   e, b                                        ; $4d2a: $58
	and  c                                           ; $4d2b: $a1
	ld   de, $8f11                                   ; $4d2c: $11 $11 $8f
	ld   l, a                                        ; $4d2f: $6f
	rst  $38                                         ; $4d30: $ff
	ld   hl, sp-$19                                  ; $4d31: $f8 $e7
	ld   d, h                                        ; $4d33: $54
	rst  JumpTable                                         ; $4d34: $df
	rst  $38                                         ; $4d35: $ff
	call c, Call_0de_5886                            ; $4d36: $dc $86 $58
	and  c                                           ; $4d39: $a1
	ld   de, $bf11                                   ; $4d3a: $11 $11 $bf
	sbc  a                                           ; $4d3d: $9f
	rst  $38                                         ; $4d3e: $ff
	sub  $ab                                         ; $4d3f: $d6 $ab
	ld   h, d                                        ; $4d41: $62
	rst  $38                                         ; $4d42: $ff
	cp   $bc                                         ; $4d43: $fe $bc
	and  [hl]                                        ; $4d45: $a6
	add  hl, sp                                      ; $4d46: $39
	and  h                                           ; $4d47: $a4
	ld   de, rAUD1LEN                                   ; $4d48: $11 $11 $ff
	ld   l, a                                        ; $4d4b: $6f
	rst  $38                                         ; $4d4c: $ff
	push de                                          ; $4d4d: $d5
	ld   a, l                                        ; $4d4e: $7d
	ld   h, c                                        ; $4d4f: $61
	rst  $28                                         ; $4d50: $ef
	db   $fd                                         ; $4d51: $fd
	adc  e                                           ; $4d52: $8b
	and  l                                           ; $4d53: $a5
	dec  de                                          ; $4d54: $1b
	add  $11                                         ; $4d55: $c6 $11
	ld   de, $ad1f                                   ; $4d57: $11 $1f $ad
	rst  $38                                         ; $4d5a: $ff
	rst  $30                                         ; $4d5b: $f7
	add  hl, sp                                      ; $4d5c: $39
	jp   nc, $ff3f                                   ; $4d5d: $d2 $3f $ff

	add  [hl]                                        ; $4d60: $86
	sbc  d                                           ; $4d61: $9a
	inc  h                                           ; $4d62: $24
	call c, $1141                                    ; $4d63: $dc $41 $11
	rla                                              ; $4d66: $17
	ld   hl, sp-$01                                  ; $4d67: $f8 $ff
	rst  $38                                         ; $4d69: $ff
	ld   b, h                                        ; $4d6a: $44
	xor  [hl]                                        ; $4d6b: $ae
	rla                                              ; $4d6c: $17
	rst  $38                                         ; $4d6d: $ff
	sub  $79                                         ; $4d6e: $d6 $79
	or   d                                           ; $4d70: $b2
	ld   a, a                                        ; $4d71: $7f
	jp   $1111                                       ; $4d72: $c3 $11 $11


	rrca                                             ; $4d75: $0f
	jp   z, $f5ff                                    ; $4d76: $ca $ff $f5

	ld   h, $f4                                      ; $4d79: $26 $f4
	cpl                                              ; $4d7b: $2f
	db   $fd                                         ; $4d7c: $fd
	ld   l, b                                        ; $4d7d: $68
	sbc  e                                           ; $4d7e: $9b
	ld   d, l                                        ; $4d7f: $55
	xor  $51                                         ; $4d80: $ee $51
	ld   de, $cf11                                   ; $4d82: $11 $11 $cf
	ld   l, h                                        ; $4d85: $6c
	rst  $38                                         ; $4d86: $ff
	db   $f4                                         ; $4d87: $f4
	rla                                              ; $4d88: $17
	ldh  [c], a                                      ; $4d89: $e2
	cpl                                              ; $4d8a: $2f
	ei                                               ; $4d8b: $fb
	adc  c                                           ; $4d8c: $89
	xor  h                                           ; $4d8d: $ac
	ld   d, a                                        ; $4d8e: $57
	db   $db                                         ; $4d8f: $db
	ld   b, c                                        ; $4d90: $41
	ld   sp, $1f11                                   ; $4d91: $31 $11 $1f
	ld   a, [$fcef]                                  ; $4d94: $fa $ef $fc
	ld   [hl-], a                                    ; $4d97: $32
	sbc  h                                           ; $4d98: $9c
	inc  d                                           ; $4d99: $14
	xor  $c8                                         ; $4d9a: $ee $c8
	sbc  h                                           ; $4d9c: $9c
	ret  c                                           ; $4d9d: $d8

	ld   a, c                                        ; $4d9e: $79
	ld   [hl], d                                     ; $4d9f: $72
	inc  hl                                          ; $4da0: $23
	ld   d, l                                        ; $4da1: $55
	ld   b, l                                        ; $4da2: $45
	adc  e                                           ; $4da3: $8b
	sbc  c                                           ; $4da4: $99
	sbc  b                                           ; $4da5: $98
	sbc  b                                           ; $4da6: $98
	sbc  d                                           ; $4da7: $9a
	cp   d                                           ; $4da8: $ba
	xor  d                                           ; $4da9: $aa
	xor  c                                           ; $4daa: $a9
	add  a                                           ; $4dab: $87
	sbc  d                                           ; $4dac: $9a
	xor  d                                           ; $4dad: $aa
	halt                                             ; $4dae: $76
	ld   d, c                                        ; $4daf: $51
	ld   de, $f21f                                   ; $4db0: $11 $1f $f2
	rst  JumpTable                                         ; $4db3: $df
	ld   sp, hl                                      ; $4db4: $f9
	ld   [hl-], a                                    ; $4db5: $32
	ld   l, e                                        ; $4db6: $6b
	inc  de                                          ; $4db7: $13
	rst  $38                                         ; $4db8: $ff
	jp   c, $c3bc                                    ; $4db9: $da $bc $c3

	ld   c, c                                        ; $4dbc: $49
	sub  d                                           ; $4dbd: $92
	dec  h                                           ; $4dbe: $25
	ld   h, a                                        ; $4dbf: $67
	ld   d, a                                        ; $4dc0: $57
	sbc  l                                           ; $4dc1: $9d
	xor  c                                           ; $4dc2: $a9
	xor  e                                           ; $4dc3: $ab
	cp   d                                           ; $4dc4: $ba
	sbc  c                                           ; $4dc5: $99
	xor  c                                           ; $4dc6: $a9
	adc  b                                           ; $4dc7: $88
	add  a                                           ; $4dc8: $87
	ld   h, [hl]                                     ; $4dc9: $66
	ld   d, [hl]                                     ; $4dca: $56
	ld   h, [hl]                                     ; $4dcb: $66
	ld   d, l                                        ; $4dcc: $55
	ld   h, a                                        ; $4dcd: $67
	adc  b                                           ; $4dce: $88
	sbc  d                                           ; $4dcf: $9a
	sbc  c                                           ; $4dd0: $99
	adc  c                                           ; $4dd1: $89
	xor  d                                           ; $4dd2: $aa
	xor  d                                           ; $4dd3: $aa
	sbc  d                                           ; $4dd4: $9a
	sbc  c                                           ; $4dd5: $99
	halt                                             ; $4dd6: $76
	halt                                             ; $4dd7: $76
	ld   b, e                                        ; $4dd8: $43
	ld   b, [hl]                                     ; $4dd9: $46
	ld   h, [hl]                                     ; $4dda: $66
	ld   a, b                                        ; $4ddb: $78
	sbc  b                                           ; $4ddc: $98
	ld   [hl], a                                     ; $4ddd: $77
	sbc  d                                           ; $4dde: $9a
	sbc  d                                           ; $4ddf: $9a
	cp   e                                           ; $4de0: $bb
	xor  d                                           ; $4de1: $aa
	xor  d                                           ; $4de2: $aa
	adc  b                                           ; $4de3: $88
	adc  b                                           ; $4de4: $88
	ld   [hl], a                                     ; $4de5: $77
	ld   h, l                                        ; $4de6: $65
	ld   d, l                                        ; $4de7: $55
	ld   d, l                                        ; $4de8: $55
	ld   d, l                                        ; $4de9: $55
	ld   h, [hl]                                     ; $4dea: $66
	sbc  c                                           ; $4deb: $99
	ld   a, d                                        ; $4dec: $7a
	ret                                              ; $4ded: $c9


	sbc  d                                           ; $4dee: $9a
	xor  c                                           ; $4def: $a9
	sub  a                                           ; $4df0: $97
	adc  c                                           ; $4df1: $89
	sub  a                                           ; $4df2: $97
	sbc  d                                           ; $4df3: $9a
	adc  c                                           ; $4df4: $89
	adc  b                                           ; $4df5: $88
	ld   [hl], a                                     ; $4df6: $77
	ld   h, a                                        ; $4df7: $67
	ld   [hl], a                                     ; $4df8: $77
	ld   a, b                                        ; $4df9: $78
	adc  c                                           ; $4dfa: $89
	sbc  c                                           ; $4dfb: $99
	xor  d                                           ; $4dfc: $aa
	sbc  b                                           ; $4dfd: $98
	adc  c                                           ; $4dfe: $89
	add  a                                           ; $4dff: $87
	ld   a, b                                        ; $4e00: $78
	adc  b                                           ; $4e01: $88
	ld   a, b                                        ; $4e02: $78
	add  a                                           ; $4e03: $87
	ld   [hl], a                                     ; $4e04: $77
	ld   [hl], a                                     ; $4e05: $77
	ld   [hl], a                                     ; $4e06: $77
	adc  b                                           ; $4e07: $88
	adc  c                                           ; $4e08: $89
	adc  b                                           ; $4e09: $88
	adc  b                                           ; $4e0a: $88
	adc  b                                           ; $4e0b: $88
	adc  c                                           ; $4e0c: $89
	sbc  c                                           ; $4e0d: $99
	adc  b                                           ; $4e0e: $88
	adc  b                                           ; $4e0f: $88
	ld   [hl], a                                     ; $4e10: $77
	ld   [hl], a                                     ; $4e11: $77
	ld   [hl], a                                     ; $4e12: $77
	add  a                                           ; $4e13: $87
	ld   [hl], a                                     ; $4e14: $77
	ld   a, b                                        ; $4e15: $78
	adc  b                                           ; $4e16: $88
	adc  b                                           ; $4e17: $88
	adc  b                                           ; $4e18: $88
	adc  c                                           ; $4e19: $89
	sbc  c                                           ; $4e1a: $99
	sbc  b                                           ; $4e1b: $98
	adc  b                                           ; $4e1c: $88
	adc  b                                           ; $4e1d: $88
	add  a                                           ; $4e1e: $87
	ld   a, b                                        ; $4e1f: $78
	adc  b                                           ; $4e20: $88
	adc  b                                           ; $4e21: $88
	adc  b                                           ; $4e22: $88
	adc  b                                           ; $4e23: $88
	adc  c                                           ; $4e24: $89
	sbc  b                                           ; $4e25: $98
	adc  b                                           ; $4e26: $88
	adc  b                                           ; $4e27: $88
	adc  b                                           ; $4e28: $88
	adc  b                                           ; $4e29: $88
	adc  b                                           ; $4e2a: $88
	sbc  b                                           ; $4e2b: $98
	adc  b                                           ; $4e2c: $88
	ld   [hl], a                                     ; $4e2d: $77
	adc  b                                           ; $4e2e: $88
	adc  b                                           ; $4e2f: $88
	adc  b                                           ; $4e30: $88
	adc  b                                           ; $4e31: $88
	adc  b                                           ; $4e32: $88
	sbc  c                                           ; $4e33: $99
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
	ld   a, b                                        ; $4e3e: $78
	adc  b                                           ; $4e3f: $88
	adc  b                                           ; $4e40: $88
	sbc  b                                           ; $4e41: $98
	adc  b                                           ; $4e42: $88
	adc  b                                           ; $4e43: $88

Jump_0de_4e44:
	adc  b                                           ; $4e44: $88
	adc  b                                           ; $4e45: $88
	adc  c                                           ; $4e46: $89
	adc  b                                           ; $4e47: $88
	adc  b                                           ; $4e48: $88
	adc  b                                           ; $4e49: $88
	adc  b                                           ; $4e4a: $88
	adc  b                                           ; $4e4b: $88
	adc  b                                           ; $4e4c: $88
	adc  b                                           ; $4e4d: $88
	adc  c                                           ; $4e4e: $89
	sbc  b                                           ; $4e4f: $98
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
	adc  c                                           ; $4e6c: $89
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
	ld   de, $1111                                   ; $4e82: $11 $11 $11
	ld   de, $1111                                   ; $4e85: $11 $11 $11
	ld   de, $1111                                   ; $4e88: $11 $11 $11
	ld   de, $1111                                   ; $4e8b: $11 $11 $11
	ld   de, $1111                                   ; $4e8e: $11 $11 $11
	ld   de, $1111                                   ; $4e91: $11 $11 $11
	ld   de, $1111                                   ; $4e94: $11 $11 $11
	ld   de, $1111                                   ; $4e97: $11 $11 $11
	ld   de, $1111                                   ; $4e9a: $11 $11 $11
	ld   de, $1111                                   ; $4e9d: $11 $11 $11
	ld   de, $1111                                   ; $4ea0: $11 $11 $11
	ld   de, $1111                                   ; $4ea3: $11 $11 $11
	ld   de, $1111                                   ; $4ea6: $11 $11 $11
	ld   de, $1111                                   ; $4ea9: $11 $11 $11
	ld   de, $1111                                   ; $4eac: $11 $11 $11
	ld   de, $1111                                   ; $4eaf: $11 $11 $11
	ld   de, $1111                                   ; $4eb2: $11 $11 $11
	ld   de, $1111                                   ; $4eb5: $11 $11 $11
	ld   de, $0011                                   ; $4eb8: $11 $11 $00
	ld   c, b                                        ; $4ebb: $48
	ld   de, $1111                                   ; $4ebc: $11 $11 $11
	ld   de, $1111                                   ; $4ebf: $11 $11 $11
	ld   de, $1111                                   ; $4ec2: $11 $11 $11
	ld   de, $5413                                   ; $4ec5: $11 $13 $54
	ld   d, h                                        ; $4ec8: $54
	ld   d, h                                        ; $4ec9: $54
	ld   b, c                                        ; $4eca: $41
	rra                                              ; $4ecb: $1f
	rst  $38                                         ; $4ecc: $ff
	pop  af                                          ; $4ecd: $f1
	ld   de, $1211                                   ; $4ece: $11 $11 $12
	ld   b, c                                        ; $4ed1: $41
	ld   de, $dd1c                                   ; $4ed2: $11 $1c $dd
	call z, $c1dd                                    ; $4ed5: $cc $dd $c1
	ld   de, $1111                                   ; $4ed8: $11 $11 $11
	ld   de, $1111                                   ; $4edb: $11 $11 $11
	ld   de, $1111                                   ; $4ede: $11 $11 $11
	ld   de, $1111                                   ; $4ee1: $11 $11 $11
	ld   de, $5411                                   ; $4ee4: $11 $11 $54
	ld   b, h                                        ; $4ee7: $44
	ld   [hl-], a                                    ; $4ee8: $32
	ld   de, $5454                                   ; $4ee9: $11 $54 $54
	ld   h, a                                        ; $4eec: $67
	ld   [hl], d                                     ; $4eed: $72
	ld   de, $1111                                   ; $4eee: $11 $11 $11
	ld   de, $1112                                   ; $4ef1: $11 $12 $11
	ld   [de], a                                     ; $4ef4: $12
	ld   de, $1111                                   ; $4ef5: $11 $11 $11
	ld   h, [hl]                                     ; $4ef8: $66
	halt                                             ; $4ef9: $76
	ld   [de], a                                     ; $4efa: $12
	ld   de, $9988                                   ; $4efb: $11 $88 $99
	ld   h, a                                        ; $4efe: $67
	xor  b                                           ; $4eff: $a8
	ld   a, b                                        ; $4f00: $78
	adc  b                                           ; $4f01: $88
	sub  [hl]                                        ; $4f02: $96
	sbc  d                                           ; $4f03: $9a
	ld   a, c                                        ; $4f04: $79
	add  [hl]                                        ; $4f05: $86
	ld   a, d                                        ; $4f06: $7a
	add  h                                           ; $4f07: $84
	xor  c                                           ; $4f08: $a9
	ld   a, e                                        ; $4f09: $7b
	ld   l, b                                        ; $4f0a: $68
	sbc  b                                           ; $4f0b: $98
	sbc  c                                           ; $4f0c: $99
	add  a                                           ; $4f0d: $87
	add  [hl]                                        ; $4f0e: $86
	xor  c                                           ; $4f0f: $a9
	ld   l, d                                        ; $4f10: $6a
	ld   l, d                                        ; $4f11: $6a
	or   d                                           ; $4f12: $b2
	sbc  [hl]                                        ; $4f13: $9e
	add  hl, sp                                      ; $4f14: $39
	push bc                                          ; $4f15: $c5
	sbc  c                                           ; $4f16: $99
	and  h                                           ; $4f17: $a4
	sbc  e                                           ; $4f18: $9b
	ld   e, c                                        ; $4f19: $59
	ld   l, c                                        ; $4f1a: $69
	add  a                                           ; $4f1b: $87
	ld   [hl], a                                     ; $4f1c: $77
	add  [hl]                                        ; $4f1d: $86
	adc  c                                           ; $4f1e: $89
	ld   a, c                                        ; $4f1f: $79
	ld   [hl], a                                     ; $4f20: $77
	sub  a                                           ; $4f21: $97
	sub  a                                           ; $4f22: $97
	ld   a, b                                        ; $4f23: $78
	adc  b                                           ; $4f24: $88
	adc  c                                           ; $4f25: $89
	adc  b                                           ; $4f26: $88
	sbc  c                                           ; $4f27: $99
	ld   a, b                                        ; $4f28: $78
	adc  b                                           ; $4f29: $88
	adc  b                                           ; $4f2a: $88
	sub  a                                           ; $4f2b: $97
	adc  b                                           ; $4f2c: $88
	adc  b                                           ; $4f2d: $88
	adc  b                                           ; $4f2e: $88
	adc  b                                           ; $4f2f: $88
	adc  c                                           ; $4f30: $89
	ld   a, b                                        ; $4f31: $78
	sub  a                                           ; $4f32: $97
	adc  c                                           ; $4f33: $89
	adc  b                                           ; $4f34: $88
	adc  b                                           ; $4f35: $88
	add  a                                           ; $4f36: $87
	adc  c                                           ; $4f37: $89
	ld   a, b                                        ; $4f38: $78
	add  a                                           ; $4f39: $87
	adc  b                                           ; $4f3a: $88
	adc  c                                           ; $4f3b: $89
	sub  a                                           ; $4f3c: $97
	adc  b                                           ; $4f3d: $88
	ld   a, b                                        ; $4f3e: $78
	ld   a, b                                        ; $4f3f: $78
	add  a                                           ; $4f40: $87
	add  a                                           ; $4f41: $87
	adc  c                                           ; $4f42: $89
	ld   a, c                                        ; $4f43: $79
	add  a                                           ; $4f44: $87
	sbc  b                                           ; $4f45: $98
	adc  b                                           ; $4f46: $88
	adc  b                                           ; $4f47: $88
	adc  b                                           ; $4f48: $88
	adc  c                                           ; $4f49: $89
	adc  b                                           ; $4f4a: $88
	adc  b                                           ; $4f4b: $88
	adc  b                                           ; $4f4c: $88
	adc  b                                           ; $4f4d: $88
	adc  b                                           ; $4f4e: $88
	ld   a, b                                        ; $4f4f: $78
	adc  b                                           ; $4f50: $88
	add  a                                           ; $4f51: $87
	sbc  b                                           ; $4f52: $98
	adc  b                                           ; $4f53: $88
	add  a                                           ; $4f54: $87
	sbc  b                                           ; $4f55: $98
	ld   a, b                                        ; $4f56: $78
	ld   [hl], a                                     ; $4f57: $77
	sub  a                                           ; $4f58: $97
	sbc  b                                           ; $4f59: $98
	ld   a, b                                        ; $4f5a: $78
	sub  a                                           ; $4f5b: $97
	adc  c                                           ; $4f5c: $89
	ld   [hl], a                                     ; $4f5d: $77
	sbc  b                                           ; $4f5e: $98
	add  a                                           ; $4f5f: $87
	adc  c                                           ; $4f60: $89
	adc  b                                           ; $4f61: $88
	ld   a, c                                        ; $4f62: $79
	ld   [hl], a                                     ; $4f63: $77
	sub  a                                           ; $4f64: $97
	adc  c                                           ; $4f65: $89
	add  a                                           ; $4f66: $87
	adc  c                                           ; $4f67: $89
	ld   a, b                                        ; $4f68: $78
	sub  [hl]                                        ; $4f69: $96
	sbc  b                                           ; $4f6a: $98
	ld   a, c                                        ; $4f6b: $79
	adc  b                                           ; $4f6c: $88
	sbc  b                                           ; $4f6d: $98
	ld   a, c                                        ; $4f6e: $79
	add  a                                           ; $4f6f: $87
	sub  a                                           ; $4f70: $97
	sub  a                                           ; $4f71: $97
	ld   a, c                                        ; $4f72: $79
	sub  a                                           ; $4f73: $97
	sbc  b                                           ; $4f74: $98
	ld   a, c                                        ; $4f75: $79
	adc  b                                           ; $4f76: $88
	ld   a, c                                        ; $4f77: $79
	ld   a, b                                        ; $4f78: $78
	adc  b                                           ; $4f79: $88
	add  a                                           ; $4f7a: $87
	sbc  b                                           ; $4f7b: $98
	adc  c                                           ; $4f7c: $89
	ld   a, b                                        ; $4f7d: $78
	adc  b                                           ; $4f7e: $88
	ld   a, b                                        ; $4f7f: $78
	add  a                                           ; $4f80: $87
	sub  a                                           ; $4f81: $97
	sbc  b                                           ; $4f82: $98
	ld   a, c                                        ; $4f83: $79
	ld   [hl], a                                     ; $4f84: $77
	sbc  b                                           ; $4f85: $98
	ld   a, b                                        ; $4f86: $78
	adc  b                                           ; $4f87: $88
	ld   a, c                                        ; $4f88: $79
	add  a                                           ; $4f89: $87
	sub  a                                           ; $4f8a: $97
	adc  c                                           ; $4f8b: $89
	ld   l, c                                        ; $4f8c: $69
	sub  a                                           ; $4f8d: $97
	adc  c                                           ; $4f8e: $89
	add  [hl]                                        ; $4f8f: $86
	sbc  c                                           ; $4f90: $99
	ld   l, b                                        ; $4f91: $68
	sub  a                                           ; $4f92: $97
	sbc  b                                           ; $4f93: $98
	ld   a, b                                        ; $4f94: $78
	ld   [hl], a                                     ; $4f95: $77
	xor  b                                           ; $4f96: $a8
	adc  b                                           ; $4f97: $88
	ld   a, b                                        ; $4f98: $78
	adc  c                                           ; $4f99: $89
	ld   a, b                                        ; $4f9a: $78
	adc  b                                           ; $4f9b: $88
	adc  c                                           ; $4f9c: $89
	add  [hl]                                        ; $4f9d: $86
	sub  a                                           ; $4f9e: $97
	adc  b                                           ; $4f9f: $88
	adc  c                                           ; $4fa0: $89
	ld   l, b                                        ; $4fa1: $68
	sub  a                                           ; $4fa2: $97
	adc  b                                           ; $4fa3: $88
	sbc  b                                           ; $4fa4: $98
	sub  a                                           ; $4fa5: $97
	sbc  c                                           ; $4fa6: $99
	ld   a, b                                        ; $4fa7: $78
	sub  a                                           ; $4fa8: $97
	ld   a, b                                        ; $4fa9: $78
	sub  a                                           ; $4faa: $97
	adc  c                                           ; $4fab: $89
	ld   a, b                                        ; $4fac: $78
	sbc  c                                           ; $4fad: $99
	ld   a, c                                        ; $4fae: $79
	add  a                                           ; $4faf: $87
	and  a                                           ; $4fb0: $a7
	ld   a, d                                        ; $4fb1: $7a
	ld   a, c                                        ; $4fb2: $79
	adc  b                                           ; $4fb3: $88
	ld   a, b                                        ; $4fb4: $78
	sub  a                                           ; $4fb5: $97
	sbc  c                                           ; $4fb6: $99
	ld   a, c                                        ; $4fb7: $79
	add  a                                           ; $4fb8: $87
	sbc  c                                           ; $4fb9: $99
	ld   l, c                                        ; $4fba: $69
	sub  l                                           ; $4fbb: $95
	xor  c                                           ; $4fbc: $a9
	ld   e, d                                        ; $4fbd: $5a
	sub  l                                           ; $4fbe: $95
	xor  d                                           ; $4fbf: $aa
	ld   a, b                                        ; $4fc0: $78
	sbc  b                                           ; $4fc1: $98
	ld   a, e                                        ; $4fc2: $7b
	ld   a, b                                        ; $4fc3: $78
	adc  b                                           ; $4fc4: $88
	sub  [hl]                                        ; $4fc5: $96
	and  [hl]                                        ; $4fc6: $a6
	adc  d                                           ; $4fc7: $8a
	ld   l, c                                        ; $4fc8: $69
	add  a                                           ; $4fc9: $87
	xor  b                                           ; $4fca: $a8
	ld   a, d                                        ; $4fcb: $7a
	sbc  b                                           ; $4fcc: $98
	ld   l, d                                        ; $4fcd: $6a
	sub  [hl]                                        ; $4fce: $96
	and  a                                           ; $4fcf: $a7
	add  a                                           ; $4fd0: $87
	xor  c                                           ; $4fd1: $a9
	ld   d, a                                        ; $4fd2: $57
	and  a                                           ; $4fd3: $a7
	adc  b                                           ; $4fd4: $88
	ld   a, d                                        ; $4fd5: $7a
	ld   a, c                                        ; $4fd6: $79
	and  a                                           ; $4fd7: $a7
	ld   a, e                                        ; $4fd8: $7b
	ld   h, a                                        ; $4fd9: $67
	or   l                                           ; $4fda: $b5
	ld   a, e                                        ; $4fdb: $7b
	ld   e, d                                        ; $4fdc: $5a
	and  [hl]                                        ; $4fdd: $a6
	sbc  b                                           ; $4fde: $98
	ld   a, b                                        ; $4fdf: $78
	sub  l                                           ; $4fe0: $95
	adc  d                                           ; $4fe1: $8a
	ld   a, [hl-]                                    ; $4fe2: $3a
	ld   [hl], l                                     ; $4fe3: $75
	cp   b                                           ; $4fe4: $b8
	ld   l, d                                        ; $4fe5: $6a
	and  [hl]                                        ; $4fe6: $a6
	and  a                                           ; $4fe7: $a7
	ld   a, e                                        ; $4fe8: $7b
	sub  [hl]                                        ; $4fe9: $96
	sbc  c                                           ; $4fea: $99
	adc  b                                           ; $4feb: $88
	ld   a, b                                        ; $4fec: $78
	sub  a                                           ; $4fed: $97
	adc  c                                           ; $4fee: $89
	adc  b                                           ; $4fef: $88
	sub  a                                           ; $4ff0: $97
	adc  d                                           ; $4ff1: $8a
	ld   e, c                                        ; $4ff2: $59
	add  [hl]                                        ; $4ff3: $86
	and  [hl]                                        ; $4ff4: $a6
	adc  b                                           ; $4ff5: $88
	sbc  c                                           ; $4ff6: $99
	ld   l, c                                        ; $4ff7: $69
	sub  a                                           ; $4ff8: $97
	ld   l, d                                        ; $4ff9: $6a
	add  [hl]                                        ; $4ffa: $86
	sbc  d                                           ; $4ffb: $9a
	ld   e, c                                        ; $4ffc: $59
	or   l                                           ; $4ffd: $b5
	sbc  c                                           ; $4ffe: $99
	halt                                             ; $4fff: $76
	sbc  c                                           ; $5000: $99
	ld   a, b                                        ; $5001: $78
	sub  l                                           ; $5002: $95
	adc  e                                           ; $5003: $8b
	ld   c, d                                        ; $5004: $4a
	halt                                             ; $5005: $76
	sub  a                                           ; $5006: $97
	adc  b                                           ; $5007: $88
	ld   [hl], a                                     ; $5008: $77
	sub  a                                           ; $5009: $97
	sbc  b                                           ; $500a: $98
	adc  b                                           ; $500b: $88
	sub  a                                           ; $500c: $97
	ld   l, h                                        ; $500d: $6c
	ld   d, [hl]                                     ; $500e: $56
	and  a                                           ; $500f: $a7
	adc  b                                           ; $5010: $88
	sub  a                                           ; $5011: $97
	adc  c                                           ; $5012: $89
	ld   l, c                                        ; $5013: $69
	ld   h, a                                        ; $5014: $67
	and  l                                           ; $5015: $a5
	sbc  d                                           ; $5016: $9a
	ld   l, c                                        ; $5017: $69
	ld   l, d                                        ; $5018: $6a
	sub  a                                           ; $5019: $97
	add  l                                           ; $501a: $85
	add  $8a                                         ; $501b: $c6 $8a
	ld   a, c                                        ; $501d: $79
	ld   l, d                                        ; $501e: $6a
	ld   h, a                                        ; $501f: $67
	sub  a                                           ; $5020: $97
	sub  [hl]                                        ; $5021: $96
	adc  b                                           ; $5022: $88
	adc  b                                           ; $5023: $88
	ld   a, b                                        ; $5024: $78
	sub  [hl]                                        ; $5025: $96
	adc  d                                           ; $5026: $8a
	ld   d, [hl]                                     ; $5027: $56
	and  a                                           ; $5028: $a7
	ld   l, l                                        ; $5029: $6d
	ld   h, l                                        ; $502a: $65
	ret  c                                           ; $502b: $d8

	ld   c, d                                        ; $502c: $4a
	ld   [hl], l                                     ; $502d: $75
	or   l                                           ; $502e: $b5
	ld   a, e                                        ; $502f: $7b
	ld   c, c                                        ; $5030: $49
	sub  l                                           ; $5031: $95
	sbc  c                                           ; $5032: $99
	ld   e, d                                        ; $5033: $5a
	and  l                                           ; $5034: $a5
	xor  c                                           ; $5035: $a9
	ld   a, [hl-]                                    ; $5036: $3a
	sub  d                                           ; $5037: $92
	ret  z                                           ; $5038: $c8

	inc  a                                           ; $5039: $3c
	sub  [hl]                                        ; $503a: $96
	ld   e, h                                        ; $503b: $5c
	ld   h, [hl]                                     ; $503c: $66
	call nc, Call_0de_68ba                           ; $503d: $d4 $ba $68
	sub  a                                           ; $5040: $97
	ld   a, d                                        ; $5041: $7a
	ld   h, a                                        ; $5042: $67
	and  [hl]                                        ; $5043: $a6
	ld   l, d                                        ; $5044: $6a
	ld   c, d                                        ; $5045: $4a
	and  h                                           ; $5046: $a4
	sbc  b                                           ; $5047: $98
	sbc  c                                           ; $5048: $99
	adc  b                                           ; $5049: $88
	ld   l, e                                        ; $504a: $6b
	add  [hl]                                        ; $504b: $86
	sbc  b                                           ; $504c: $98
	sub  [hl]                                        ; $504d: $96
	ld   a, e                                        ; $504e: $7b
	ld   e, d                                        ; $504f: $5a
	halt                                             ; $5050: $76
	and  a                                           ; $5051: $a7
	sub  a                                           ; $5052: $97
	sub  a                                           ; $5053: $97
	ld   l, e                                        ; $5054: $6b
	ld   a, b                                        ; $5055: $78
	and  l                                           ; $5056: $a5
	rst  ToBoot                                         ; $5057: $c7
	ld   a, h                                        ; $5058: $7c
	ld   a, [hl-]                                    ; $5059: $3a
	add  h                                           ; $505a: $84
	add  $68                                         ; $505b: $c6 $68
	ld   a, c                                        ; $505d: $79
	ld   l, c                                        ; $505e: $69
	sub  a                                           ; $505f: $97
	or   a                                           ; $5060: $b7
	ld   a, e                                        ; $5061: $7b
	adc  b                                           ; $5062: $88
	sbc  c                                           ; $5063: $99
	adc  b                                           ; $5064: $88
	ld   [hl], a                                     ; $5065: $77
	and  [hl]                                        ; $5066: $a6
	sub  [hl]                                        ; $5067: $96
	ld   e, h                                        ; $5068: $5c
	dec  sp                                          ; $5069: $3b
	and  d                                           ; $506a: $a2
	ret  z                                           ; $506b: $c8

	ld   e, d                                        ; $506c: $5a
	add  a                                           ; $506d: $87
	or   a                                           ; $506e: $b7
	ld   e, e                                        ; $506f: $5b
	sub  a                                           ; $5070: $97
	ld   a, b                                        ; $5071: $78
	sbc  c                                           ; $5072: $99
	sub  l                                           ; $5073: $95
	or   [hl]                                        ; $5074: $b6
	adc  h                                           ; $5075: $8c
	add  hl, sp                                      ; $5076: $39
	xor  b                                           ; $5077: $a8
	adc  d                                           ; $5078: $8a
	ld   h, a                                        ; $5079: $67
	or   d                                           ; $507a: $b2
	xor  c                                           ; $507b: $a9
	ld   e, c                                        ; $507c: $59
	ld   a, b                                        ; $507d: $78
	adc  e                                           ; $507e: $8b
	ld   h, a                                        ; $507f: $67
	and  a                                           ; $5080: $a7
	adc  b                                           ; $5081: $88
	add  a                                           ; $5082: $87
	or   l                                           ; $5083: $b5
	sbc  d                                           ; $5084: $9a
	ld   c, d                                        ; $5085: $4a
	adc  b                                           ; $5086: $88
	adc  b                                           ; $5087: $88
	ld   e, e                                        ; $5088: $5b
	ld   [hl], l                                     ; $5089: $75
	add  $a4                                         ; $508a: $c6 $a4
	xor  c                                           ; $508c: $a9
	xor  d                                           ; $508d: $aa
	dec  sp                                          ; $508e: $3b
	adc  c                                           ; $508f: $89
	ld   [hl], a                                     ; $5090: $77
	adc  c                                           ; $5091: $89
	halt                                             ; $5092: $76
	sbc  c                                           ; $5093: $99
	sub  h                                           ; $5094: $94
	sbc  d                                           ; $5095: $9a
	ld   [hl], a                                     ; $5096: $77
	adc  b                                           ; $5097: $88
	adc  c                                           ; $5098: $89
	ld   l, b                                        ; $5099: $68
	adc  b                                           ; $509a: $88
	ld   a, b                                        ; $509b: $78
	adc  b                                           ; $509c: $88
	add  a                                           ; $509d: $87
	add  a                                           ; $509e: $87
	adc  c                                           ; $509f: $89
	halt                                             ; $50a0: $76
	xor  c                                           ; $50a1: $a9
	ld   [hl], a                                     ; $50a2: $77
	xor  b                                           ; $50a3: $a8
	ld   l, h                                        ; $50a4: $6c
	add  hl, sp                                      ; $50a5: $39
	or   [hl]                                        ; $50a6: $b6
	sub  [hl]                                        ; $50a7: $96
	and  l                                           ; $50a8: $a5
	sbc  d                                           ; $50a9: $9a
	ld   d, a                                        ; $50aa: $57
	sub  $3f                                         ; $50ab: $d6 $3f
	ld   [hl], $e5                                   ; $50ad: $36 $e5
	ld   e, [hl]                                     ; $50af: $5e
	ld   [hl], h                                     ; $50b0: $74
	ldh  a, [c]                                      ; $50b1: $f2
	xor  c                                           ; $50b2: $a9
	ld   a, c                                        ; $50b3: $79
	ld   c, l                                        ; $50b4: $4d
	inc  l                                           ; $50b5: $2c
	ld   h, l                                        ; $50b6: $65
	di                                               ; $50b7: $f3
	and  [hl]                                        ; $50b8: $a6
	or   h                                           ; $50b9: $b4
	cp   d                                           ; $50ba: $ba
	inc  l                                           ; $50bb: $2c
	ld   l, d                                        ; $50bc: $6a
	ld   c, e                                        ; $50bd: $4b
	ld   a, c                                        ; $50be: $79
	sub  h                                           ; $50bf: $94
	or   a                                           ; $50c0: $b7
	and  l                                           ; $50c1: $a5
	or   l                                           ; $50c2: $b5
	adc  e                                           ; $50c3: $8b
	dec  sp                                          ; $50c4: $3b
	ld   a, c                                        ; $50c5: $79
	ld   a, b                                        ; $50c6: $78
	sub  [hl]                                        ; $50c7: $96
	xor  c                                           ; $50c8: $a9
	ld   l, b                                        ; $50c9: $68
	sub  l                                           ; $50ca: $95
	or   a                                           ; $50cb: $b7
	ld   l, e                                        ; $50cc: $6b
	ld   h, a                                        ; $50cd: $67
	adc  b                                           ; $50ce: $88
	ld   a, d                                        ; $50cf: $7a
	ld   l, c                                        ; $50d0: $69
	ld   [hl], l                                     ; $50d1: $75
	call nz, Call_0de_6b98                           ; $50d2: $c4 $98 $6b
	ld   h, a                                        ; $50d5: $67
	adc  c                                           ; $50d6: $89
	ld   a, c                                        ; $50d7: $79
	sbc  c                                           ; $50d8: $99
	halt                                             ; $50d9: $76
	and  a                                           ; $50da: $a7
	adc  c                                           ; $50db: $89
	ld   l, d                                        ; $50dc: $6a
	add  [hl]                                        ; $50dd: $86
	sub  a                                           ; $50de: $97
	ld   [hl], a                                     ; $50df: $77
	sbc  b                                           ; $50e0: $98
	ld   a, c                                        ; $50e1: $79
	adc  b                                           ; $50e2: $88
	ld   l, e                                        ; $50e3: $6b
	ld   e, b                                        ; $50e4: $58
	sub  a                                           ; $50e5: $97
	sub  a                                           ; $50e6: $97
	sub  [hl]                                        ; $50e7: $96
	sub  [hl]                                        ; $50e8: $96
	sbc  b                                           ; $50e9: $98
	ld   a, c                                        ; $50ea: $79
	ld   a, c                                        ; $50eb: $79
	ld   l, d                                        ; $50ec: $6a
	add  a                                           ; $50ed: $87
	adc  c                                           ; $50ee: $89
	add  a                                           ; $50ef: $87
	add  [hl]                                        ; $50f0: $86
	sub  a                                           ; $50f1: $97
	adc  c                                           ; $50f2: $89
	add  a                                           ; $50f3: $87
	sbc  c                                           ; $50f4: $99
	ld   l, c                                        ; $50f5: $69
	ld   a, b                                        ; $50f6: $78
	sbc  b                                           ; $50f7: $98
	ld   a, c                                        ; $50f8: $79
	sub  [hl]                                        ; $50f9: $96
	adc  c                                           ; $50fa: $89
	ld   a, b                                        ; $50fb: $78
	sub  a                                           ; $50fc: $97
	ld   a, b                                        ; $50fd: $78
	ld   a, b                                        ; $50fe: $78
	adc  b                                           ; $50ff: $88
	ld   a, b                                        ; $5100: $78
	sub  a                                           ; $5101: $97
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
	adc  c                                           ; $5111: $89
	adc  b                                           ; $5112: $88
	adc  b                                           ; $5113: $88
	adc  b                                           ; $5114: $88
	sub  a                                           ; $5115: $97
	sbc  b                                           ; $5116: $98
	adc  b                                           ; $5117: $88
	adc  b                                           ; $5118: $88
	adc  c                                           ; $5119: $89
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

Call_0de_51da:
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
	add  a                                           ; $5203: $87
	adc  b                                           ; $5204: $88
	adc  b                                           ; $5205: $88
	adc  b                                           ; $5206: $88
	adc  b                                           ; $5207: $88
	sbc  b                                           ; $5208: $98
	adc  b                                           ; $5209: $88
	adc  b                                           ; $520a: $88
	sbc  b                                           ; $520b: $98
	adc  b                                           ; $520c: $88
	sbc  b                                           ; $520d: $98
	ld   h, a                                        ; $520e: $67
	sbc  b                                           ; $520f: $98
	adc  c                                           ; $5210: $89
	adc  b                                           ; $5211: $88
	add  a                                           ; $5212: $87
	adc  d                                           ; $5213: $8a
	sub  a                                           ; $5214: $97
	adc  b                                           ; $5215: $88
	sbc  c                                           ; $5216: $99
	adc  b                                           ; $5217: $88
	ld   a, b                                        ; $5218: $78
	sbc  e                                           ; $5219: $9b
	and  a                                           ; $521a: $a7
	ld   a, c                                        ; $521b: $79
	and  a                                           ; $521c: $a7
	ld   h, a                                        ; $521d: $67
	adc  b                                           ; $521e: $88
	adc  c                                           ; $521f: $89
	adc  b                                           ; $5220: $88
	sbc  c                                           ; $5221: $99
	ld   a, b                                        ; $5222: $78
	sbc  c                                           ; $5223: $99
	sbc  c                                           ; $5224: $99
	ld   h, l                                        ; $5225: $65
	sbc  b                                           ; $5226: $98
	ld   d, a                                        ; $5227: $57
	and  a                                           ; $5228: $a7
	ld   a, d                                        ; $5229: $7a
	sbc  d                                           ; $522a: $9a
	and  a                                           ; $522b: $a7
	ld   a, d                                        ; $522c: $7a
	xor  b                                           ; $522d: $a8
	ld   h, a                                        ; $522e: $67
	cp   a                                           ; $522f: $bf
	ld   [hl], c                                     ; $5230: $71
	call z, $9545                                    ; $5231: $cc $45 $95
	ld   l, h                                        ; $5234: $6c
	ld   h, h                                        ; $5235: $64
	sub  a                                           ; $5236: $97
	ld   b, l                                        ; $5237: $45
	adc  b                                           ; $5238: $88
	ld   l, c                                        ; $5239: $69
	cp   c                                           ; $523a: $b9
	ld   l, c                                        ; $523b: $69
	or   l                                           ; $523c: $b5
	ld   c, d                                        ; $523d: $4a
	add  d                                           ; $523e: $82
	ld   l, d                                        ; $523f: $6a
	ld   [hl], a                                     ; $5240: $77
	xor  b                                           ; $5241: $a8
	sbc  d                                           ; $5242: $9a
	db   $db                                         ; $5243: $db
	adc  d                                           ; $5244: $8a
	sub  l                                           ; $5245: $95
	ld   b, [hl]                                     ; $5246: $46
	ld   sp, $1111                                   ; $5247: $31 $11 $11
	ld   de, $1111                                   ; $524a: $11 $11 $11
	rla                                              ; $524d: $17
	adc  c                                           ; $524e: $89
	rst  $38                                         ; $524f: $ff
	rst  $38                                         ; $5250: $ff
	rst  $38                                         ; $5251: $ff
	rst  $38                                         ; $5252: $ff
	rst  $38                                         ; $5253: $ff
	jp   z, Jump_0de_44a6                            ; $5254: $ca $a6 $44

	ld   b, e                                        ; $5257: $43
	ld   d, [hl]                                     ; $5258: $56
	ld   b, [hl]                                     ; $5259: $46
	ld   d, c                                        ; $525a: $51
	ld   de, $1111                                   ; $525b: $11 $11 $11
	ld   de, $831a                                   ; $525e: $11 $1a $83
	rst  JumpTable                                         ; $5261: $df
	rst  $38                                         ; $5262: $ff
	rst  $38                                         ; $5263: $ff
	rst  $38                                         ; $5264: $ff
	ei                                               ; $5265: $fb
	ld   de, $7412                                   ; $5266: $11 $12 $74
	ld   l, $ff                                      ; $5269: $2e $ff
	rst  $38                                         ; $526b: $ff
	rst  $38                                         ; $526c: $ff
	ld   a, [$1111]                                  ; $526d: $fa $11 $11
	ld   de, $1111                                   ; $5270: $11 $11 $11
	ld   e, $ff                                      ; $5273: $1e $ff
	rst  $38                                         ; $5275: $ff
	rst  $38                                         ; $5276: $ff
	rst  $38                                         ; $5277: $ff
	ld   de, $1136                                   ; $5278: $11 $36 $11
	dec  e                                           ; $527b: $1d
	rst  $38                                         ; $527c: $ff
	rst  $38                                         ; $527d: $ff
	rst  $38                                         ; $527e: $ff
	cp   $51                                         ; $527f: $fe $51
	ld   de, $1111                                   ; $5281: $11 $11 $11
	ld   de, $1111                                   ; $5284: $11 $11 $11
	ld   de, $daff                                   ; $5287: $11 $ff $da
	rst  $38                                         ; $528a: $ff
	rst  $38                                         ; $528b: $ff
	or   c                                           ; $528c: $b1
	rra                                              ; $528d: $1f
	ldh  a, [c]                                      ; $528e: $f2
	ld   c, h                                        ; $528f: $4c
	rst  $38                                         ; $5290: $ff
	rst  $38                                         ; $5291: $ff
	rst  $38                                         ; $5292: $ff
	rst  $38                                         ; $5293: $ff
	adc  c                                           ; $5294: $89
	ld   [hl], d                                     ; $5295: $72
	ld   e, c                                        ; $5296: $59

Call_0de_5297:
	ld   b, c                                        ; $5297: $41
	ld   b, d                                        ; $5298: $42
	ld   de, $1111                                   ; $5299: $11 $11 $11
	ld   de, $ffff                                   ; $529c: $11 $ff $ff
	rst  $38                                         ; $529f: $ff
	rst  $38                                         ; $52a0: $ff
	ld   de, $f116                                   ; $52a1: $11 $16 $f1
	ld   e, a                                        ; $52a4: $5f
	rst  $38                                         ; $52a5: $ff
	rst  $38                                         ; $52a6: $ff
	db   $eb                                         ; $52a7: $eb
	ld   sp, hl                                      ; $52a8: $f9
	ld   de, $bf68                                   ; $52a9: $11 $68 $bf
	ld   a, [$11a9]                                  ; $52ac: $fa $a9 $11
	ld   de, $1111                                   ; $52af: $11 $11 $11
	ld   c, a                                        ; $52b2: $4f
	rst  $38                                         ; $52b3: $ff
	rst  $38                                         ; $52b4: $ff
	rst  $38                                         ; $52b5: $ff
	ld   de, $bf11                                   ; $52b6: $11 $11 $bf
	rst  $38                                         ; $52b9: $ff
	rst  $38                                         ; $52ba: $ff
	rst  $38                                         ; $52bb: $ff
	pop  af                                          ; $52bc: $f1
	ld   de, $6e23                                   ; $52bd: $11 $23 $6e
	rst  $38                                         ; $52c0: $ff
	rst  $38                                         ; $52c1: $ff
	ld   d, d                                        ; $52c2: $52
	ld   hl, $1111                                   ; $52c3: $21 $11 $11
	ld   de, rAUD1LEN                                   ; $52c6: $11 $11 $ff
	rst  $38                                         ; $52c9: $ff
	rst  $38                                         ; $52ca: $ff
	and  c                                           ; $52cb: $a1
	ld   de, $ff18                                   ; $52cc: $11 $18 $ff
	rst  $38                                         ; $52cf: $ff
	rst  $38                                         ; $52d0: $ff
	ei                                               ; $52d1: $fb
	ld   de, $ff16                                   ; $52d2: $11 $16 $ff
	rst  $38                                         ; $52d5: $ff
	rst  $38                                         ; $52d6: $ff
	jp   nc, $1111                                   ; $52d7: $d2 $11 $11

	ld   de, $1111                                   ; $52da: $11 $11 $11
	rra                                              ; $52dd: $1f
	rst  $38                                         ; $52de: $ff
	rst  $38                                         ; $52df: $ff
	cp   b                                           ; $52e0: $b8
	ld   h, c                                        ; $52e1: $61
	ld   de, $ff1f                                   ; $52e2: $11 $1f $ff
	rst  $38                                         ; $52e5: $ff
	rst  $30                                         ; $52e6: $f7
	ld   h, h                                        ; $52e7: $64
	ld   de, $ff1f                                   ; $52e8: $11 $1f $ff
	rst  $38                                         ; $52eb: $ff
	db   $db                                         ; $52ec: $db
	ld   d, c                                        ; $52ed: $51
	ld   de, $1111                                   ; $52ee: $11 $11 $11
	ld   de, $1a11                                   ; $52f1: $11 $11 $1a
	rst  $38                                         ; $52f4: $ff
	rst  $38                                         ; $52f5: $ff
	sub  e                                           ; $52f6: $93
	ld   d, c                                        ; $52f7: $51
	ld   de, $ff1f                                   ; $52f8: $11 $1f $ff
	rst  $38                                         ; $52fb: $ff
	pop  af                                          ; $52fc: $f1
	ld   [de], a                                     ; $52fd: $12
	ld   hl, $ff1c                                   ; $52fe: $21 $1c $ff
	rst  $38                                         ; $5301: $ff
	and  e                                           ; $5302: $a3
	ld   b, h                                        ; $5303: $44
	ld   de, $1111                                   ; $5304: $11 $11 $11
	ld   de, $1111                                   ; $5307: $11 $11 $11
	rst  $38                                         ; $530a: $ff
	cp   $a1                                         ; $530b: $fe $a1
	ld   [de], a                                     ; $530d: $12
	ld   de, $ff1d                                   ; $530e: $11 $1d $ff
	rst  $38                                         ; $5311: $ff
	ldh  a, [c]                                      ; $5312: $f2
	ld   de, $1b11                                   ; $5313: $11 $11 $1b
	rst  $38                                         ; $5316: $ff
	rst  $38                                         ; $5317: $ff
	di                                               ; $5318: $f3
	ld   de, $1111                                   ; $5319: $11 $11 $11
	ld   de, $1111                                   ; $531c: $11 $11 $11
	ld   de, $ffff                                   ; $531f: $11 $ff $ff
	ld   [hl], c                                     ; $5322: $71
	ld   de, $1211                                   ; $5323: $11 $11 $12
	rst  $38                                         ; $5326: $ff
	rst  $38                                         ; $5327: $ff
	rst  $38                                         ; $5328: $ff
	ld   de, $1711                                   ; $5329: $11 $11 $17
	rst  $38                                         ; $532c: $ff
	rst  $38                                         ; $532d: $ff
	ei                                               ; $532e: $fb
	ld   b, c                                        ; $532f: $41
	ld   de, $1111                                   ; $5330: $11 $11 $11
	ld   de, $1111                                   ; $5333: $11 $11 $11
	rra                                              ; $5336: $1f
	rst  $38                                         ; $5337: $ff
	push hl                                          ; $5338: $e5
	ld   [de], a                                     ; $5339: $12
	add  c                                           ; $533a: $81
	ld   de, $ff6f                                   ; $533b: $11 $6f $ff
	db   $fd                                         ; $533e: $fd
	ld   hl, sp+$11                                  ; $533f: $f8 $11
	ld   de, $ff7f                                   ; $5341: $11 $7f $ff
	rst  $38                                         ; $5344: $ff
	db   $eb                                         ; $5345: $eb
	ld   de, $2112                                   ; $5346: $11 $12 $21
	ld   de, $1111                                   ; $5349: $11 $11 $11
	ld   de, $ffff                                   ; $534c: $11 $ff $ff
	or   c                                           ; $534f: $b1
	ld   b, e                                        ; $5350: $43
	ld   de, rAUD1LEN                                   ; $5351: $11 $11 $ff
	rst  $38                                         ; $5354: $ff
	rst  $38                                         ; $5355: $ff
	add  c                                           ; $5356: $81
	ld   de, rAUD1ENV                                   ; $5357: $11 $12 $ff
	rst  $38                                         ; $535a: $ff
	rst  $38                                         ; $535b: $ff
	db   $e4                                         ; $535c: $e4
	ld   de, $1111                                   ; $535d: $11 $11 $11
	ld   de, $1111                                   ; $5360: $11 $11 $11
	ld   [de], a                                     ; $5363: $12
	rst  $38                                         ; $5364: $ff
	ei                                               ; $5365: $fb
	ld   d, h                                        ; $5366: $54
	ld   [hl], e                                     ; $5367: $73
	ld   de, $ff1f                                   ; $5368: $11 $1f $ff
	rst  $38                                         ; $536b: $ff
	rst  $28                                         ; $536c: $ef
	pop  af                                          ; $536d: $f1
	ld   de, $ff1f                                   ; $536e: $11 $1f $ff
	rst  $38                                         ; $5371: $ff
	rst  $38                                         ; $5372: $ff
	pop  af                                          ; $5373: $f1
	ld   de, $1133                                   ; $5374: $11 $33 $11
	ld   de, $1111                                   ; $5377: $11 $11 $11
	rra                                              ; $537a: $1f
	rst  $38                                         ; $537b: $ff
	or   $39                                         ; $537c: $f6 $39
	or   c                                           ; $537e: $b1
	ld   de, $ff1f                                   ; $537f: $11 $1f $ff
	rst  $38                                         ; $5382: $ff
	rst  $38                                         ; $5383: $ff
	pop  hl                                          ; $5384: $e1
	ld   de, $ff5f                                   ; $5385: $11 $5f $ff
	rst  $38                                         ; $5388: $ff
	rst  $38                                         ; $5389: $ff
	or   c                                           ; $538a: $b1
	inc  de                                          ; $538b: $13
	ld   d, c                                        ; $538c: $51
	ld   de, $1111                                   ; $538d: $11 $11 $11
	ld   de, $ff1f                                   ; $5390: $11 $1f $ff
	ld   sp, hl                                      ; $5393: $f9
	ld   a, [hl]                                     ; $5394: $7e

Jump_0de_5395:
	add  c                                           ; $5395: $81

Call_0de_5396:
	ld   de, $ff1f                                   ; $5396: $11 $1f $ff
	rst  $38                                         ; $5399: $ff
	rst  $38                                         ; $539a: $ff
	pop  bc                                          ; $539b: $c1
	ld   de, $df59                                   ; $539c: $11 $59 $df
	rst  $38                                         ; $539f: $ff
	rst  $38                                         ; $53a0: $ff
	db   $d3                                         ; $53a1: $d3
	ld   b, [hl]                                     ; $53a2: $46
	ld   de, $1111                                   ; $53a3: $11 $11 $11
	ld   de, $1811                                   ; $53a6: $11 $11 $18
	rst  $38                                         ; $53a9: $ff
	ei                                               ; $53aa: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53ab: $cf
	or   c                                           ; $53ac: $b1
	ld   de, $ff1f                                   ; $53ad: $11 $1f $ff
	rst  $38                                         ; $53b0: $ff
	rst  $38                                         ; $53b1: $ff
	pop  af                                          ; $53b2: $f1
	ld   de, $4b57                                   ; $53b3: $11 $57 $4b
	rst  $38                                         ; $53b6: $ff
	rst  $38                                         ; $53b7: $ff
	ld   hl, sp+$7d                                  ; $53b8: $f8 $7d
	ld   d, c                                        ; $53ba: $51
	ld   de, $1111                                   ; $53bb: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $53be: $11 $11 $ff
	db   $fc                                         ; $53c1: $fc
	rst  $28                                         ; $53c2: $ef
	pop  af                                          ; $53c3: $f1
	ld   de, $ff18                                   ; $53c4: $11 $18 $ff
	rst  $38                                         ; $53c7: $ff
	rst  $38                                         ; $53c8: $ff
	ei                                               ; $53c9: $fb
	ld   de, $1117                                   ; $53ca: $11 $17 $11
	sbc  a                                           ; $53cd: $9f
	rst  $38                                         ; $53ce: $ff
	rst  $38                                         ; $53cf: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53d0: $cf
	and  c                                           ; $53d1: $a1
	ld   de, $1111                                   ; $53d2: $11 $11 $11
	ld   de, $bf11                                   ; $53d5: $11 $11 $bf
	rst  $38                                         ; $53d8: $ff
	cp   a                                           ; $53d9: $bf
	ei                                               ; $53da: $fb
	ld   de, rAUD1LEN                                   ; $53db: $11 $11 $ff
	rst  $38                                         ; $53de: $ff
	rst  $38                                         ; $53df: $ff
	rst  $38                                         ; $53e0: $ff
	ld   de, $1111                                   ; $53e1: $11 $11 $11
	rra                                              ; $53e4: $1f
	rst  $38                                         ; $53e5: $ff
	rst  $38                                         ; $53e6: $ff
	rst  $38                                         ; $53e7: $ff
	pop  af                                          ; $53e8: $f1
	ld   de, $1111                                   ; $53e9: $11 $11 $11
	ld   de, $1f11                                   ; $53ec: $11 $11 $1f
	rst  $38                                         ; $53ef: $ff
	reti                                             ; $53f0: $d9


	rst  $38                                         ; $53f1: $ff
	ld   d, c                                        ; $53f2: $51
	ld   de, $fe1f                                   ; $53f3: $11 $1f $fe
	rst  $38                                         ; $53f6: $ff
	rst  $38                                         ; $53f7: $ff
	ldh  a, [c]                                      ; $53f8: $f2
	ld   [de], a                                     ; $53f9: $12
	ld   de, rAUD1LEN                                   ; $53fa: $11 $11 $ff
	rst  $38                                         ; $53fd: $ff
	rst  $38                                         ; $53fe: $ff
	cp   $11                                         ; $53ff: $fe $11
	ld   de, $1111                                   ; $5401: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $5404: $11 $11 $ff
	rst  $38                                         ; $5407: $ff
	rst  $38                                         ; $5408: $ff
	push af                                          ; $5409: $f5
	ld   de, $c711                                   ; $540a: $11 $11 $c7
	adc  a                                           ; $540d: $8f
	rst  $38                                         ; $540e: $ff
	rst  $38                                         ; $540f: $ff
	jp   c, $1161                                    ; $5410: $da $61 $11

	ld   e, $ff                                      ; $5413: $1e $ff
	rst  $38                                         ; $5415: $ff
	rst  $38                                         ; $5416: $ff
	rst  $30                                         ; $5417: $f7
	ld   de, $1111                                   ; $5418: $11 $11 $11
	ld   de, $1f11                                   ; $541b: $11 $11 $1f
	rst  $38                                         ; $541e: $ff
	rst  $38                                         ; $541f: $ff
	rst  $38                                         ; $5420: $ff
	ld   hl, $1311                                   ; $5421: $21 $11 $13
	inc  d                                           ; $5424: $14
	rst  $38                                         ; $5425: $ff
	rst  $38                                         ; $5426: $ff
	rst  $38                                         ; $5427: $ff
	db   $fc                                         ; $5428: $fc
	ld   de, $2311                                   ; $5429: $11 $11 $23
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $542c: $cf
	rst  $38                                         ; $542d: $ff
	rst  $38                                         ; $542e: $ff
	ld   sp, hl                                      ; $542f: $f9
	ld   hl, $1111                                   ; $5430: $21 $11 $11
	ld   de, $cf11                                   ; $5433: $11 $11 $cf
	rst  $38                                         ; $5436: $ff
	rst  $38                                         ; $5437: $ff
	rst  $38                                         ; $5438: $ff
	ld   de, $1111                                   ; $5439: $11 $11 $11
	add  hl, de                                      ; $543c: $19
	rst  $38                                         ; $543d: $ff
	rst  $38                                         ; $543e: $ff
	rst  $38                                         ; $543f: $ff
	ei                                               ; $5440: $fb
	ld   de, $1131                                   ; $5441: $11 $31 $11
	ld   a, a                                        ; $5444: $7f
	rst  $38                                         ; $5445: $ff
	rst  $38                                         ; $5446: $ff
	db   $fd                                         ; $5447: $fd
	ld   de, $1111                                   ; $5448: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $544b: $11 $11 $ff
	rst  $38                                         ; $544e: $ff
	rst  $38                                         ; $544f: $ff
	rst  $38                                         ; $5450: $ff
	call nz, $1111                                   ; $5451: $c4 $11 $11
	inc  d                                           ; $5454: $14
	rst  JumpTable                                         ; $5455: $df
	rst  $38                                         ; $5456: $ff
	rst  $38                                         ; $5457: $ff
	rst  $38                                         ; $5458: $ff
	rst  $38                                         ; $5459: $ff
	ld   d, d                                        ; $545a: $52
	ld   sp, $3935                                   ; $545b: $31 $35 $39
	jp   c, $3185                                    ; $545e: $da $85 $31

	ld   de, $1111                                   ; $5461: $11 $11 $11
	ld   e, $65                                      ; $5464: $1e $65
	rst  $38                                         ; $5466: $ff
	rst  $38                                         ; $5467: $ff
	rst  $38                                         ; $5468: $ff
	rst  $38                                         ; $5469: $ff
	ld   h, c                                        ; $546a: $61
	ld   de, $6411                                   ; $546b: $11 $11 $64
	sbc  a                                           ; $546e: $9f
	rst  $38                                         ; $546f: $ff
	rst  $38                                         ; $5470: $ff
	rst  $38                                         ; $5471: $ff
	rst  $38                                         ; $5472: $ff
	cp   c                                           ; $5473: $b9
	ld   h, e                                        ; $5474: $63
	ld   [hl+], a                                    ; $5475: $22
	ld   de, $1111                                   ; $5476: $11 $11 $11
	ld   de, $1111                                   ; $5479: $11 $11 $11
	rst  $20                                         ; $547c: $e7
	cpl                                              ; $547d: $2f
	rst  $38                                         ; $547e: $ff
	rst  $38                                         ; $547f: $ff
	rst  $38                                         ; $5480: $ff
	db   $fc                                         ; $5481: $fc
	inc  d                                           ; $5482: $14
	and  c                                           ; $5483: $a1
	rla                                              ; $5484: $17
	ld   c, b                                        ; $5485: $48
	rst  JumpTable                                         ; $5486: $df
	rst  $38                                         ; $5487: $ff
	rst  $38                                         ; $5488: $ff
	rst  $38                                         ; $5489: $ff
	rst  $38                                         ; $548a: $ff
	db   $eb                                         ; $548b: $eb
	sbc  b                                           ; $548c: $98
	ld   sp, $1111                                   ; $548d: $31 $11 $11
	ld   de, $1111                                   ; $5490: $11 $11 $11
	add  hl, de                                      ; $5493: $19
	pop  de                                          ; $5494: $d1
	xor  a                                           ; $5495: $af
	rst  $38                                         ; $5496: $ff
	rst  $38                                         ; $5497: $ff
	rst  $38                                         ; $5498: $ff
	ld   hl, sp+$49                                  ; $5499: $f8 $49
	ld   d, c                                        ; $549b: $51
	inc  d                                           ; $549c: $14
	inc  h                                           ; $549d: $24
	xor  h                                           ; $549e: $ac
	rst  JumpTable                                         ; $549f: $df
	rst  $38                                         ; $54a0: $ff
	rst  $38                                         ; $54a1: $ff
	rst  $38                                         ; $54a2: $ff
	cp   $c7                                         ; $54a3: $fe $c7
	ld   b, c                                        ; $54a5: $41
	ld   de, $1111                                   ; $54a6: $11 $11 $11
	ld   de, $1611                                   ; $54a9: $11 $11 $16
	ld   d, h                                        ; $54ac: $54
	rst  $38                                         ; $54ad: $ff
	rst  $38                                         ; $54ae: $ff
	rst  $38                                         ; $54af: $ff
	rst  $38                                         ; $54b0: $ff
	db   $fc                                         ; $54b1: $fc
	db   $eb                                         ; $54b2: $eb
	ld   hl, $1111                                   ; $54b3: $21 $11 $11
	ld   [hl], $cf                                   ; $54b6: $36 $cf
	rst  $38                                         ; $54b8: $ff
	rst  $38                                         ; $54b9: $ff
	rst  $38                                         ; $54ba: $ff
	rst  $38                                         ; $54bb: $ff
	ld   a, [$1161]                                  ; $54bc: $fa $61 $11
	ld   de, $1111                                   ; $54bf: $11 $11 $11
	ld   de, $4511                                   ; $54c2: $11 $11 $45
	rst  $38                                         ; $54c5: $ff
	rst  $38                                         ; $54c6: $ff
	rst  $38                                         ; $54c7: $ff
	rst  $38                                         ; $54c8: $ff
	rst  $38                                         ; $54c9: $ff
	db   $fd                                         ; $54ca: $fd
	ld   h, e                                        ; $54cb: $63
	ld   de, $1111                                   ; $54cc: $11 $11 $11
	ld   e, d                                        ; $54cf: $5a
	cp   a                                           ; $54d0: $bf
	rst  $38                                         ; $54d1: $ff
	rst  $38                                         ; $54d2: $ff
	rst  $38                                         ; $54d3: $ff
	rst  $38                                         ; $54d4: $ff
	rst  $10                                         ; $54d5: $d7
	ld   sp, $1111                                   ; $54d6: $31 $11 $11
	ld   de, $1111                                   ; $54d9: $11 $11 $11
	inc  de                                          ; $54dc: $13
	adc  a                                           ; $54dd: $8f
	rst  $38                                         ; $54de: $ff
	rst  $38                                         ; $54df: $ff
	rst  $38                                         ; $54e0: $ff
	rst  $38                                         ; $54e1: $ff
	rst  $38                                         ; $54e2: $ff
	db   $fc                                         ; $54e3: $fc
	ld   h, d                                        ; $54e4: $62
	ld   de, $1111                                   ; $54e5: $11 $11 $11
	daa                                              ; $54e8: $27
	cp   a                                           ; $54e9: $bf
	rst  $38                                         ; $54ea: $ff
	rst  $38                                         ; $54eb: $ff
	rst  $38                                         ; $54ec: $ff
	db   $fd                                         ; $54ed: $fd
	sub  h                                           ; $54ee: $94
	ld   de, $1111                                   ; $54ef: $11 $11 $11
	ld   de, $1111                                   ; $54f2: $11 $11 $11
	ld   a, [de]                                     ; $54f5: $1a
	rst  $38                                         ; $54f6: $ff
	rst  $38                                         ; $54f7: $ff
	rst  $38                                         ; $54f8: $ff
	rst  $38                                         ; $54f9: $ff
	rst  $38                                         ; $54fa: $ff
	rst  $38                                         ; $54fb: $ff
	jp   hl                                          ; $54fc: $e9


	ld   h, c                                        ; $54fd: $61
	ld   de, $1111                                   ; $54fe: $11 $11 $11
	dec  [hl]                                        ; $5501: $35
	adc  h                                           ; $5502: $8c
	rst  $28                                         ; $5503: $ef
	rst  $38                                         ; $5504: $ff
	db   $fc                                         ; $5505: $fc
	or   a                                           ; $5506: $b7
	ld   de, $1111                                   ; $5507: $11 $11 $11
	ld   de, $1111                                   ; $550a: $11 $11 $11
	ld   a, [hl-]                                    ; $550d: $3a
	rst  $28                                         ; $550e: $ef
	rst  $38                                         ; $550f: $ff
	rst  $38                                         ; $5510: $ff
	rst  $38                                         ; $5511: $ff
	rst  $38                                         ; $5512: $ff
	rst  $38                                         ; $5513: $ff
	rst  $38                                         ; $5514: $ff
	add  h                                           ; $5515: $84
	ld   sp, $1111                                   ; $5516: $31 $11 $11
	inc  de                                          ; $5519: $13
	ld   d, l                                        ; $551a: $55
	adc  h                                           ; $551b: $8c
	cp   c                                           ; $551c: $b9
	sbc  d                                           ; $551d: $9a
	ld   [hl], d                                     ; $551e: $72
	ld   de, $1111                                   ; $551f: $11 $11 $11
	ld   de, $1411                                   ; $5522: $11 $11 $14
	ld   a, d                                        ; $5525: $7a
	rst  $38                                         ; $5526: $ff
	rst  $38                                         ; $5527: $ff
	rst  $38                                         ; $5528: $ff
	rst  $38                                         ; $5529: $ff
	rst  $38                                         ; $552a: $ff
	rst  $38                                         ; $552b: $ff
	db   $fc                                         ; $552c: $fc
	xor  c                                           ; $552d: $a9
	ld   b, d                                        ; $552e: $42
	ld   [de], a                                     ; $552f: $12
	ld   de, $5623                                   ; $5530: $11 $23 $56
	ld   h, [hl]                                     ; $5533: $66
	ld   h, a                                        ; $5534: $67
	ld   [hl], e                                     ; $5535: $73
	ld   [de], a                                     ; $5536: $12
	ld   de, $1111                                   ; $5537: $11 $11 $11
	ld   de, $3511                                   ; $553a: $11 $11 $35
	adc  l                                           ; $553d: $8d
	rst  $38                                         ; $553e: $ff
	rst  $38                                         ; $553f: $ff
	rst  $38                                         ; $5540: $ff
	rst  $38                                         ; $5541: $ff
	rst  $38                                         ; $5542: $ff
	rst  $38                                         ; $5543: $ff
	db   $eb                                         ; $5544: $eb
	or   a                                           ; $5545: $b7
	ld   b, e                                        ; $5546: $43
	inc  hl                                          ; $5547: $23
	inc  sp                                          ; $5548: $33
	ld   b, [hl]                                     ; $5549: $46
	ld   [hl], a                                     ; $554a: $77
	ld   a, c                                        ; $554b: $79
	add  a                                           ; $554c: $87
	ld   h, l                                        ; $554d: $65
	ld   hl, $1111                                   ; $554e: $21 $11 $11
	ld   de, $1111                                   ; $5551: $11 $11 $11
	inc  d                                           ; $5554: $14
	ld   l, c                                        ; $5555: $69
	rst  JumpTable                                         ; $5556: $df
	rst  $38                                         ; $5557: $ff
	rst  $38                                         ; $5558: $ff
	rst  $38                                         ; $5559: $ff
	rst  $38                                         ; $555a: $ff
	rst  $38                                         ; $555b: $ff
	db   $fd                                         ; $555c: $fd
	jp   z, Jump_0de_4564                            ; $555d: $ca $64 $45

	ld   b, d                                        ; $5560: $42
	ld   b, a                                        ; $5561: $47
	add  a                                           ; $5562: $87
	adc  d                                           ; $5563: $8a
	xor  b                                           ; $5564: $a8
	ld   d, a                                        ; $5565: $57
	ld   d, c                                        ; $5566: $51
	ld   hl, $1111                                   ; $5567: $21 $11 $11
	ld   de, $1111                                   ; $556a: $11 $11 $11
	ld   b, e                                        ; $556d: $43
	ld   e, h                                        ; $556e: $5c
	cp   [hl]                                        ; $556f: $be
	rst  $38                                         ; $5570: $ff
	rst  $38                                         ; $5571: $ff
	rst  $38                                         ; $5572: $ff
	rst  $38                                         ; $5573: $ff
	rst  $38                                         ; $5574: $ff
	cp   $ca                                         ; $5575: $fe $ca
	and  [hl]                                        ; $5577: $a6
	ld   d, a                                        ; $5578: $57
	ld   h, [hl]                                     ; $5579: $66
	ld   h, a                                        ; $557a: $67
	adc  b                                           ; $557b: $88
	sbc  b                                           ; $557c: $98
	ld   h, [hl]                                     ; $557d: $66
	ld   [hl], e                                     ; $557e: $73
	inc  sp                                          ; $557f: $33
	ld   [hl+], a                                    ; $5580: $22
	ld   de, $1111                                   ; $5581: $11 $11 $11
	ld   de, $1311                                   ; $5584: $11 $11 $13
	dec  [hl]                                        ; $5587: $35
	sbc  c                                           ; $5588: $99
	cp   a                                           ; $5589: $bf
	rst  $38                                         ; $558a: $ff
	rst  $38                                         ; $558b: $ff
	rst  $38                                         ; $558c: $ff
	rst  $38                                         ; $558d: $ff
	rst  $38                                         ; $558e: $ff
	rst  $38                                         ; $558f: $ff
	set  1, c                                        ; $5590: $cb $c9
	ld   l, c                                        ; $5592: $69
	sub  [hl]                                        ; $5593: $96
	ld   a, b                                        ; $5594: $78
	ld   [hl], l                                     ; $5595: $75
	ld   l, b                                        ; $5596: $68
	ld   b, h                                        ; $5597: $44
	ld   h, e                                        ; $5598: $63
	ld   b, h                                        ; $5599: $44
	inc  h                                           ; $559a: $24
	ld   [hl+], a                                    ; $559b: $22
	ld   b, c                                        ; $559c: $41
	ld   [hl+], a                                    ; $559d: $22
	ld   de, $1321                                   ; $559e: $11 $21 $13
	ld   b, h                                        ; $55a1: $44
	ld   d, [hl]                                     ; $55a2: $56
	adc  d                                           ; $55a3: $8a
	cp   l                                           ; $55a4: $bd
	rst  $38                                         ; $55a5: $ff
	rst  $38                                         ; $55a6: $ff
	rst  $38                                         ; $55a7: $ff
	rst  $38                                         ; $55a8: $ff
	rst  $38                                         ; $55a9: $ff
	cp   $bd                                         ; $55aa: $fe $bd
	jp   z, $9668                                    ; $55ac: $ca $68 $96

	ld   h, l                                        ; $55af: $65
	ld   h, a                                        ; $55b0: $67
	ld   [hl], e                                     ; $55b1: $73
	ld   c, d                                        ; $55b2: $4a
	ld   h, e                                        ; $55b3: $63
	halt                                             ; $55b4: $76
	ld   d, [hl]                                     ; $55b5: $56
	ld   h, [hl]                                     ; $55b6: $66
	ld   b, h                                        ; $55b7: $44
	ld   h, d                                        ; $55b8: $62
	scf                                              ; $55b9: $37
	ld   [de], a                                     ; $55ba: $12
	ld   h, c                                        ; $55bb: $61
	dec  [hl]                                        ; $55bc: $35
	ld   d, l                                        ; $55bd: $55
	jr   c, jr_0de_5636                              ; $55be: $38 $76

	cp   d                                           ; $55c0: $ba
	call $dfee                                       ; $55c1: $cd $ee $df
	rst  $38                                         ; $55c4: $ff
	xor  $fb                                         ; $55c5: $ee $fb
	call z, $899c                                    ; $55c7: $cc $9c $89
	ld   h, a                                        ; $55ca: $67
	call nz, $767a                                   ; $55cb: $c4 $7a $76
	ld   a, d                                        ; $55ce: $7a
	ld   [hl], h                                     ; $55cf: $74
	or   a                                           ; $55d0: $b7
	ld   h, a                                        ; $55d1: $67
	ld   [hl], a                                     ; $55d2: $77
	ld   c, b                                        ; $55d3: $48
	ld   h, h                                        ; $55d4: $64
	ld   d, [hl]                                     ; $55d5: $56
	inc  [hl]                                        ; $55d6: $34
	ld   h, l                                        ; $55d7: $65
	inc  h                                           ; $55d8: $24
	sub  d                                           ; $55d9: $92
	ld   d, a                                        ; $55da: $57
	ld   d, l                                        ; $55db: $55
	ld   c, c                                        ; $55dc: $49
	ld   h, a                                        ; $55dd: $67
	ld   a, b                                        ; $55de: $78
	sbc  b                                           ; $55df: $98
	reti                                             ; $55e0: $d9


	cp   h                                           ; $55e1: $bc
	xor  [hl]                                        ; $55e2: $ae
	xor  l                                           ; $55e3: $ad
	jp   z, $beea                                    ; $55e4: $ca $ea $be

	sbc  d                                           ; $55e7: $9a
	xor  e                                           ; $55e8: $ab
	push bc                                          ; $55e9: $c5
	xor  d                                           ; $55ea: $aa
	ld   e, c                                        ; $55eb: $59
	ld   a, c                                        ; $55ec: $79
	ld   h, a                                        ; $55ed: $67
	and  a                                           ; $55ee: $a7
	ld   c, c                                        ; $55ef: $49
	and  c                                           ; $55f0: $a1
	adc  c                                           ; $55f1: $89
	ld   [hl], l                                     ; $55f2: $75
	ld   c, d                                        ; $55f3: $4a
	ld   b, e                                        ; $55f4: $43
	and  e                                           ; $55f5: $a3
	dec  de                                          ; $55f6: $1b
	ld   h, c                                        ; $55f7: $61
	ld   e, b                                        ; $55f8: $58
	ld   [hl], c                                     ; $55f9: $71
	adc  e                                           ; $55fa: $8b
	dec  d                                           ; $55fb: $15
	sub  a                                           ; $55fc: $97
	add  hl, hl                                      ; $55fd: $29
	jp   nz, Jump_0de_79ae                           ; $55fe: $c2 $ae $79

	cp   l                                           ; $5601: $bd
	sbc  b                                           ; $5602: $98
	db   $ec                                         ; $5603: $ec
	xor  l                                           ; $5604: $ad
	cp   e                                           ; $5605: $bb
	sbc  l                                           ; $5606: $9d
	push de                                          ; $5607: $d5
	ld   a, [$785f]                                  ; $5608: $fa $5f $78
	and  l                                           ; $560b: $a5
	or   [hl]                                        ; $560c: $b6
	ld   a, d                                        ; $560d: $7a
	inc  a                                           ; $560e: $3c
	ld   b, h                                        ; $560f: $44
	pop  de                                          ; $5610: $d1
	and  l                                           ; $5611: $a5
	cpl                                              ; $5612: $2f
	add  hl, de                                      ; $5613: $19
	and  d                                           ; $5614: $a2
	sub  d                                           ; $5615: $92
	push de                                          ; $5616: $d5
	ld   e, $35                                      ; $5617: $1e $35
	add  l                                           ; $5619: $85
	and  h                                           ; $561a: $a4
	sbc  d                                           ; $561b: $9a
	jr   c, @-$59                                    ; $561c: $38 $a5

	ld   l, d                                        ; $561e: $6a
	halt                                             ; $561f: $76
	sub  a                                           ; $5620: $97
	xor  c                                           ; $5621: $a9
	ld   e, h                                        ; $5622: $5c
	ld   a, b                                        ; $5623: $78
	and  [hl]                                        ; $5624: $a6
	rst  ToBoot                                         ; $5625: $c7
	cp   c                                           ; $5626: $b9
	sbc  d                                           ; $5627: $9a
	ld   l, h                                        ; $5628: $6c
	ld   l, d                                        ; $5629: $6a
	cp   b                                           ; $562a: $b8
	sub  l                                           ; $562b: $95
	cp   c                                           ; $562c: $b9
	ld   c, b                                        ; $562d: $48
	xor  c                                           ; $562e: $a9
	ld   d, a                                        ; $562f: $57
	ret                                              ; $5630: $c9


	dec  hl                                          ; $5631: $2b
	or   e                                           ; $5632: $b3
	and  [hl]                                        ; $5633: $a6
	ld   a, b                                        ; $5634: $78
	ld   e, d                                        ; $5635: $5a

jr_0de_5636:
	ld   h, h                                        ; $5636: $64
	xor  d                                           ; $5637: $aa
	ld   a, [hl-]                                    ; $5638: $3a
	ld   h, a                                        ; $5639: $67
	or   h                                           ; $563a: $b4
	sbc  c                                           ; $563b: $99
	adc  b                                           ; $563c: $88
	ld   h, a                                        ; $563d: $67
	and  l                                           ; $563e: $a5
	ld   l, e                                        ; $563f: $6b
	ld   h, l                                        ; $5640: $65
	sub  a                                           ; $5641: $97
	add  h                                           ; $5642: $84
	adc  h                                           ; $5643: $8c
	ld   h, $c7                                      ; $5644: $26 $c7
	ld   c, d                                        ; $5646: $4a
	sbc  b                                           ; $5647: $98
	ld   e, c                                        ; $5648: $59
	add  l                                           ; $5649: $85
	xor  c                                           ; $564a: $a9
	ld   h, a                                        ; $564b: $67
	or   [hl]                                        ; $564c: $b6
	and  [hl]                                        ; $564d: $a6
	xor  e                                           ; $564e: $ab
	ld   l, $75                                      ; $564f: $2e $75
	add  $98                                         ; $5651: $c6 $98
	adc  h                                           ; $5653: $8c
	ld   [hl], a                                     ; $5654: $77
	xor  b                                           ; $5655: $a8
	adc  b                                           ; $5656: $88
	ld   a, c                                        ; $5657: $79
	sbc  b                                           ; $5658: $98
	sub  a                                           ; $5659: $97
	ld   a, d                                        ; $565a: $7a
	ld   [hl], a                                     ; $565b: $77
	ld   a, b                                        ; $565c: $78
	halt                                             ; $565d: $76
	sub  [hl]                                        ; $565e: $96
	ld   l, c                                        ; $565f: $69
	add  [hl]                                        ; $5660: $86
	add  a                                           ; $5661: $87
	add  a                                           ; $5662: $87
	ld   e, h                                        ; $5663: $5c
	ld   b, [hl]                                     ; $5664: $46
	and  h                                           ; $5665: $a4
	or   l                                           ; $5666: $b5
	ld   a, d                                        ; $5667: $7a
	ld   d, a                                        ; $5668: $57
	sbc  b                                           ; $5669: $98
	sub  [hl]                                        ; $566a: $96
	adc  d                                           ; $566b: $8a
	ld   e, c                                        ; $566c: $59
	adc  e                                           ; $566d: $8b
	ld   e, d                                        ; $566e: $5a
	or   h                                           ; $566f: $b4
	rst  ToBoot                                         ; $5670: $c7
	sbc  d                                           ; $5671: $9a
	ld   e, e                                        ; $5672: $5b
	ld   l, e                                        ; $5673: $6b
	ld   l, b                                        ; $5674: $68
	or   h                                           ; $5675: $b4
	pop  hl                                          ; $5676: $e1
	xor  h                                           ; $5677: $ac
	dec  l                                           ; $5678: $2d
	ld   l, $54                                      ; $5679: $2e $54
	pop  af                                          ; $567b: $f1
	xor  c                                           ; $567c: $a9
	ld   e, d                                        ; $567d: $5a
	ld   h, a                                        ; $567e: $67
	call nz, Call_0de_497c                           ; $567f: $c4 $7c $49
	ld   e, e                                        ; $5682: $5b
	ld   d, a                                        ; $5683: $57
	and  l                                           ; $5684: $a5
	jp   nz, $5ce7                                   ; $5685: $c2 $e7 $5c

	ld   c, e                                        ; $5688: $4b
	halt                                             ; $5689: $76
	or   [hl]                                        ; $568a: $b6
	add  a                                           ; $568b: $87
	sub  a                                           ; $568c: $97
	ld   a, c                                        ; $568d: $79
	ld   l, d                                        ; $568e: $6a
	ld   a, h                                        ; $568f: $7c
	ld   e, c                                        ; $5690: $59
	and  h                                           ; $5691: $a4
	and  h                                           ; $5692: $a4
	push de                                          ; $5693: $d5
	sub  a                                           ; $5694: $97
	ld   a, h                                        ; $5695: $7c
	inc  a                                           ; $5696: $3c
	ld   h, a                                        ; $5697: $67
	sub  a                                           ; $5698: $97

Jump_0de_5699:
	add  a                                           ; $5699: $87
	sub  a                                           ; $569a: $97
	or   l                                           ; $569b: $b5
	and  a                                           ; $569c: $a7
	xor  b                                           ; $569d: $a8
	ld   e, h                                        ; $569e: $5c
	ld   e, c                                        ; $569f: $59
	sbc  b                                           ; $56a0: $98
	sbc  c                                           ; $56a1: $99
	and  l                                           ; $56a2: $a5
	cp   c                                           ; $56a3: $b9
	ld   l, c                                        ; $56a4: $69
	and  a                                           ; $56a5: $a7
	sbc  b                                           ; $56a6: $98
	ld   a, e                                        ; $56a7: $7b
	ld   l, c                                        ; $56a8: $69
	add  a                                           ; $56a9: $87
	and  a                                           ; $56aa: $a7
	ld   a, c                                        ; $56ab: $79
	sub  [hl]                                        ; $56ac: $96
	adc  b                                           ; $56ad: $88
	halt                                             ; $56ae: $76
	adc  c                                           ; $56af: $89
	sub  [hl]                                        ; $56b0: $96
	adc  d                                           ; $56b1: $8a
	ld   c, d                                        ; $56b2: $4a
	sub  l                                           ; $56b3: $95
	and  [hl]                                        ; $56b4: $a6
	and  [hl]                                        ; $56b5: $a6
	ld   a, h                                        ; $56b6: $7c
	ld   c, e                                        ; $56b7: $4b
	ld   a, b                                        ; $56b8: $78
	sub  [hl]                                        ; $56b9: $96
	push de                                          ; $56ba: $d5
	sbc  c                                           ; $56bb: $99
	ld   l, c                                        ; $56bc: $69
	ld   a, c                                        ; $56bd: $79
	ld   a, d                                        ; $56be: $7a
	ld   e, d                                        ; $56bf: $5a
	and  l                                           ; $56c0: $a5
	or   a                                           ; $56c1: $b7
	adc  c                                           ; $56c2: $89
	ld   l, e                                        ; $56c3: $6b
	ld   a, b                                        ; $56c4: $78
	and  l                                           ; $56c5: $a5
	or   [hl]                                        ; $56c6: $b6
	or   [hl]                                        ; $56c7: $b6
	ld   l, h                                        ; $56c8: $6c
	ld   c, e                                        ; $56c9: $4b
	ld   a, b                                        ; $56ca: $78
	sub  [hl]                                        ; $56cb: $96
	sub  a                                           ; $56cc: $97
	ld   a, e                                        ; $56cd: $7b
	ld   l, c                                        ; $56ce: $69
	sub  l                                           ; $56cf: $95
	push bc                                          ; $56d0: $c5
	push bc                                          ; $56d1: $c5
	ld   a, h                                        ; $56d2: $7c
	ld   c, d                                        ; $56d3: $4a
	ld   l, d                                        ; $56d4: $6a
	ld   [hl], a                                     ; $56d5: $77
	adc  b                                           ; $56d6: $88
	add  a                                           ; $56d7: $87
	sub  a                                           ; $56d8: $97
	sub  [hl]                                        ; $56d9: $96
	sub  [hl]                                        ; $56da: $96
	sub  a                                           ; $56db: $97
	adc  c                                           ; $56dc: $89
	ld   l, e                                        ; $56dd: $6b
	ld   e, d                                        ; $56de: $5a
	ld   a, c                                        ; $56df: $79
	adc  b                                           ; $56e0: $88
	add  [hl]                                        ; $56e1: $86
	call nz, $7bb8                                   ; $56e2: $c4 $b8 $7b
	ld   l, c                                        ; $56e5: $69
	ld   a, d                                        ; $56e6: $7a
	ld   l, c                                        ; $56e7: $69
	add  a                                           ; $56e8: $87
	adc  b                                           ; $56e9: $88
	sub  a                                           ; $56ea: $97
	add  a                                           ; $56eb: $87
	and  l                                           ; $56ec: $a5
	and  [hl]                                        ; $56ed: $a6
	xor  c                                           ; $56ee: $a9
	ld   a, $2b                                      ; $56ef: $3e $2b
	sub  [hl]                                        ; $56f1: $96
	and  [hl]                                        ; $56f2: $a6
	or   a                                           ; $56f3: $b7
	ld   a, d                                        ; $56f4: $7a
	ld   l, b                                        ; $56f5: $68
	sub  [hl]                                        ; $56f6: $96
	call nz, Call_0de_69a9                           ; $56f7: $c4 $a9 $69
	ld   l, e                                        ; $56fa: $6b
	ld   c, c                                        ; $56fb: $49
	ld   a, c                                        ; $56fc: $79
	ld   [hl], a                                     ; $56fd: $77
	and  h                                           ; $56fe: $a4
	add  $99                                         ; $56ff: $c6 $99
	ld   a, b                                        ; $5701: $78
	sub  a                                           ; $5702: $97
	sbc  c                                           ; $5703: $99
	ld   e, d                                        ; $5704: $5a
	ld   a, b                                        ; $5705: $78
	add  a                                           ; $5706: $87
	add  a                                           ; $5707: $87
	adc  b                                           ; $5708: $88
	sub  a                                           ; $5709: $97
	sub  a                                           ; $570a: $97
	sbc  b                                           ; $570b: $98
	ld   l, b                                        ; $570c: $68
	ld   a, c                                        ; $570d: $79
	ld   l, b                                        ; $570e: $68
	sub  [hl]                                        ; $570f: $96
	sub  a                                           ; $5710: $97
	add  a                                           ; $5711: $87
	ld   a, c                                        ; $5712: $79
	ld   a, c                                        ; $5713: $79
	ld   l, c                                        ; $5714: $69
	ld   a, c                                        ; $5715: $79
	sub  l                                           ; $5716: $95
	or   l                                           ; $5717: $b5
	and  a                                           ; $5718: $a7
	ld   a, h                                        ; $5719: $7c
	ld   c, e                                        ; $571a: $4b
	ld   [hl], a                                     ; $571b: $77
	and  [hl]                                        ; $571c: $a6
	and  a                                           ; $571d: $a7
	adc  c                                           ; $571e: $89
	ld   a, b                                        ; $571f: $78
	sub  a                                           ; $5720: $97
	adc  b                                           ; $5721: $88
	ld   a, c                                        ; $5722: $79
	ld   a, b                                        ; $5723: $78
	add  a                                           ; $5724: $87
	adc  c                                           ; $5725: $89
	ld   a, c                                        ; $5726: $79
	add  [hl]                                        ; $5727: $86
	sub  a                                           ; $5728: $97
	adc  c                                           ; $5729: $89
	ld   l, c                                        ; $572a: $69
	add  a                                           ; $572b: $87
	adc  c                                           ; $572c: $89
	add  a                                           ; $572d: $87
	sbc  b                                           ; $572e: $98
	adc  b                                           ; $572f: $88
	ld   a, c                                        ; $5730: $79
	ld   a, b                                        ; $5731: $78
	add  a                                           ; $5732: $87
	sub  a                                           ; $5733: $97
	sub  a                                           ; $5734: $97
	add  a                                           ; $5735: $87
	adc  c                                           ; $5736: $89
	ld   l, c                                        ; $5737: $69
	ld   a, b                                        ; $5738: $78
	sub  [hl]                                        ; $5739: $96
	sbc  b                                           ; $573a: $98
	ld   a, b                                        ; $573b: $78
	adc  c                                           ; $573c: $89
	ld   a, b                                        ; $573d: $78
	sub  a                                           ; $573e: $97
	sbc  b                                           ; $573f: $98
	add  a                                           ; $5740: $87
	sbc  b                                           ; $5741: $98
	ld   a, b                                        ; $5742: $78
	ld   a, b                                        ; $5743: $78
	ld   a, c                                        ; $5744: $79
	add  a                                           ; $5745: $87
	add  a                                           ; $5746: $87
	add  a                                           ; $5747: $87
	sbc  b                                           ; $5748: $98
	ld   a, b                                        ; $5749: $78
	ld   a, b                                        ; $574a: $78
	sub  a                                           ; $574b: $97
	sub  a                                           ; $574c: $97
	adc  c                                           ; $574d: $89
	ld   a, c                                        ; $574e: $79
	ld   a, b                                        ; $574f: $78
	add  a                                           ; $5750: $87
	adc  b                                           ; $5751: $88
	add  a                                           ; $5752: $87
	adc  b                                           ; $5753: $88
	ld   a, b                                        ; $5754: $78
	adc  b                                           ; $5755: $88
	adc  b                                           ; $5756: $88
	adc  b                                           ; $5757: $88
	adc  b                                           ; $5758: $88
	adc  b                                           ; $5759: $88
	ld   a, c                                        ; $575a: $79
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
	sbc  b                                           ; $5823: $98
	adc  b                                           ; $5824: $88
	adc  b                                           ; $5825: $88
	adc  b                                           ; $5826: $88
	adc  b                                           ; $5827: $88
	adc  c                                           ; $5828: $89
	adc  b                                           ; $5829: $88
	sbc  b                                           ; $582a: $98
	adc  c                                           ; $582b: $89
	ld   a, b                                        ; $582c: $78
	adc  c                                           ; $582d: $89
	adc  b                                           ; $582e: $88
	adc  b                                           ; $582f: $88
	adc  b                                           ; $5830: $88
	adc  b                                           ; $5831: $88
	adc  b                                           ; $5832: $88
	adc  b                                           ; $5833: $88
	adc  b                                           ; $5834: $88
	adc  c                                           ; $5835: $89
	sbc  b                                           ; $5836: $98
	adc  c                                           ; $5837: $89
	adc  c                                           ; $5838: $89
	add  a                                           ; $5839: $87
	ld   a, b                                        ; $583a: $78
	sub  a                                           ; $583b: $97
	ld   l, b                                        ; $583c: $68
	add  a                                           ; $583d: $87
	ld   [hl], a                                     ; $583e: $77
	sbc  b                                           ; $583f: $98
	sbc  b                                           ; $5840: $98
	adc  d                                           ; $5841: $8a
	sbc  c                                           ; $5842: $99
	add  a                                           ; $5843: $87
	cp   c                                           ; $5844: $b9
	adc  c                                           ; $5845: $89
	adc  d                                           ; $5846: $8a
	ld   a, c                                        ; $5847: $79
	sub  a                                           ; $5848: $97
	sub  a                                           ; $5849: $97
	add  l                                           ; $584a: $85
	ld   l, b                                        ; $584b: $68
	ld   [hl], a                                     ; $584c: $77
	ld   [hl], a                                     ; $584d: $77
	ld   [hl], a                                     ; $584e: $77
	add  a                                           ; $584f: $87
	ld   h, a                                        ; $5850: $67
	add  a                                           ; $5851: $87
	ld   h, [hl]                                     ; $5852: $66
	adc  b                                           ; $5853: $88
	ld   h, a                                        ; $5854: $67
	add  a                                           ; $5855: $87
	ld   [hl], a                                     ; $5856: $77
	ld   [hl], a                                     ; $5857: $77
	ld   a, b                                        ; $5858: $78
	ld   [hl], a                                     ; $5859: $77
	ld   [hl], a                                     ; $585a: $77
	sub  a                                           ; $585b: $97
	adc  c                                           ; $585c: $89
	ld   a, c                                        ; $585d: $79
	sbc  b                                           ; $585e: $98
	ld   [hl], a                                     ; $585f: $77
	sbc  b                                           ; $5860: $98
	sub  a                                           ; $5861: $97
	ld   a, b                                        ; $5862: $78
	ld   a, c                                        ; $5863: $79
	halt                                             ; $5864: $76
	ld   a, b                                        ; $5865: $78
	add  a                                           ; $5866: $87
	adc  b                                           ; $5867: $88
	adc  b                                           ; $5868: $88
	sbc  b                                           ; $5869: $98
	ld   a, b                                        ; $586a: $78
	xor  c                                           ; $586b: $a9
	ld   a, b                                        ; $586c: $78
	sbc  c                                           ; $586d: $99
	sbc  b                                           ; $586e: $98
	sbc  b                                           ; $586f: $98
	sbc  c                                           ; $5870: $99
	sub  a                                           ; $5871: $97
	adc  d                                           ; $5872: $8a
	add  a                                           ; $5873: $87
	ld   a, b                                        ; $5874: $78
	sbc  b                                           ; $5875: $98
	add  [hl]                                        ; $5876: $86
	ld   d, a                                        ; $5877: $57
	halt                                             ; $5878: $76
	ld   b, [hl]                                     ; $5879: $46
	ld   h, l                                        ; $587a: $65
	ld   h, [hl]                                     ; $587b: $66
	ld   h, [hl]                                     ; $587c: $66
	ld   [hl], a                                     ; $587d: $77
	inc  h                                           ; $587e: $24
	add  a                                           ; $587f: $87
	ld   d, h                                        ; $5880: $54
	ld   h, l                                        ; $5881: $65
	ld   l, b                                        ; $5882: $68
	ld   [hl], l                                     ; $5883: $75
	ld   l, h                                        ; $5884: $6c
	cp   c                                           ; $5885: $b9

Call_0de_5886:
	sbc  l                                           ; $5886: $9d
	db   $fc                                         ; $5887: $fc
	db   $ed                                         ; $5888: $ed
	rst  $38                                         ; $5889: $ff
	rst  $38                                         ; $588a: $ff
	cp   [hl]                                        ; $588b: $be
	db   $fd                                         ; $588c: $fd
	cp   c                                           ; $588d: $b9
	call z, Call_0de_77a9                            ; $588e: $cc $a9 $77
	ld   a, c                                        ; $5891: $79
	ld   h, e                                        ; $5892: $63
	inc  [hl]                                        ; $5893: $34
	ld   h, d                                        ; $5894: $62
	ld   de, $1113                                   ; $5895: $11 $13 $11
	ld   de, $1111                                   ; $5898: $11 $11 $11

Call_0de_589b:
	ld   de, $2713                                   ; $589b: $11 $13 $27
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $589e: $cf
	rst  $38                                         ; $589f: $ff
	rst  $38                                         ; $58a0: $ff
	rst  $38                                         ; $58a1: $ff
	rst  $38                                         ; $58a2: $ff
	rst  $38                                         ; $58a3: $ff
	rst  $38                                         ; $58a4: $ff
	db   $fc                                         ; $58a5: $fc
	add  h                                           ; $58a6: $84
	ld   sp, $1311                                   ; $58a7: $31 $11 $13
	dec  [hl]                                        ; $58aa: $35
	adc  b                                           ; $58ab: $88
	add  a                                           ; $58ac: $87
	add  h                                           ; $58ad: $84
	ld   de, $1111                                   ; $58ae: $11 $11 $11
	ld   de, $1111                                   ; $58b1: $11 $11 $11
	ld   de, $ff49                                   ; $58b4: $11 $49 $ff
	rst  $38                                         ; $58b7: $ff
	rst  $38                                         ; $58b8: $ff
	rst  $38                                         ; $58b9: $ff
	rst  $38                                         ; $58ba: $ff
	rst  $38                                         ; $58bb: $ff
	rst  $38                                         ; $58bc: $ff
	sub  e                                           ; $58bd: $93
	ld   d, c                                        ; $58be: $51
	ld   de, $2411                                   ; $58bf: $11 $11 $24
	ld   l, c                                        ; $58c2: $69
	cp   h                                           ; $58c3: $bc
	cp   b                                           ; $58c4: $b8
	sub  e                                           ; $58c5: $93
	ld   de, $1111                                   ; $58c6: $11 $11 $11
	ld   de, $1111                                   ; $58c9: $11 $11 $11
	inc  d                                           ; $58cc: $14
	rst  JumpTable                                         ; $58cd: $df
	rst  $38                                         ; $58ce: $ff
	rst  $38                                         ; $58cf: $ff
	rst  $38                                         ; $58d0: $ff
	rst  $38                                         ; $58d1: $ff
	rst  $38                                         ; $58d2: $ff
	rst  $38                                         ; $58d3: $ff
	jp   z, $1123                                    ; $58d4: $ca $23 $11

	ld   de, $7a75                                   ; $58d7: $11 $75 $7a
	db   $fd                                         ; $58da: $fd
	and  a                                           ; $58db: $a7
	ld   d, h                                        ; $58dc: $54
	ld   de, $1111                                   ; $58dd: $11 $11 $11
	ld   de, $1111                                   ; $58e0: $11 $11 $11
	ld   de, $ffef                                   ; $58e3: $11 $ef $ff
	rst  $38                                         ; $58e6: $ff
	rst  $38                                         ; $58e7: $ff
	rst  $38                                         ; $58e8: $ff
	rst  $38                                         ; $58e9: $ff
	rst  $38                                         ; $58ea: $ff
	cp   $62                                         ; $58eb: $fe $62
	ld   e, b                                        ; $58ed: $58
	and  [hl]                                        ; $58ee: $a6
	ld   e, h                                        ; $58ef: $5c
	cp   $dc                                         ; $58f0: $fe $dc
	cp   d                                           ; $58f2: $ba
	ld   b, c                                        ; $58f3: $41
	ld   de, $1111                                   ; $58f4: $11 $11 $11
	ld   de, $1111                                   ; $58f7: $11 $11 $11
	ld   de, $ff5f                                   ; $58fa: $11 $5f $ff
	rst  $38                                         ; $58fd: $ff
	rst  $38                                         ; $58fe: $ff
	rst  $38                                         ; $58ff: $ff
	rst  $38                                         ; $5900: $ff
	rst  $38                                         ; $5901: $ff
	ei                                               ; $5902: $fb
	call $bf96                                       ; $5903: $cd $96 $bf
	db   $fc                                         ; $5906: $fc
	rst  $28                                         ; $5907: $ef
	db   $fd                                         ; $5908: $fd
	and  a                                           ; $5909: $a7
	ld   b, c                                        ; $590a: $41
	ld   de, $1111                                   ; $590b: $11 $11 $11
	ld   de, $1111                                   ; $590e: $11 $11 $11
	ld   de, $7f11                                   ; $5911: $11 $11 $7f
	rst  $38                                         ; $5914: $ff
	rst  $38                                         ; $5915: $ff
	rst  $38                                         ; $5916: $ff
	rst  $38                                         ; $5917: $ff
	rst  $38                                         ; $5918: $ff
	rst  $38                                         ; $5919: $ff
	rst  $38                                         ; $591a: $ff
	cp   $99                                         ; $591b: $fe $99
	xor  $c9                                         ; $591d: $ee $c9
	call c, $55c9                                    ; $591f: $dc $c9 $55
	ld   sp, $1111                                   ; $5922: $31 $11 $11
	ld   de, $1111                                   ; $5925: $11 $11 $11
	ld   de, $1111                                   ; $5928: $11 $11 $11
	rst  $38                                         ; $592b: $ff
	rst  $38                                         ; $592c: $ff
	rst  $38                                         ; $592d: $ff
	rst  $38                                         ; $592e: $ff
	rst  $38                                         ; $592f: $ff
	rst  $38                                         ; $5930: $ff
	rst  $38                                         ; $5931: $ff
	rst  $38                                         ; $5932: $ff
	ld   a, [$fe8e]                                  ; $5933: $fa $8e $fe
	xor  d                                           ; $5936: $aa
	rst  $28                                         ; $5937: $ef
	or   [hl]                                        ; $5938: $b6
	ld   h, l                                        ; $5939: $65
	ld   de, $1111                                   ; $593a: $11 $11 $11
	ld   de, $1111                                   ; $593d: $11 $11 $11
	ld   de, $1d11                                   ; $5940: $11 $11 $1d
	rst  $38                                         ; $5943: $ff
	rst  $38                                         ; $5944: $ff
	rst  $38                                         ; $5945: $ff
	rst  $38                                         ; $5946: $ff
	rst  $38                                         ; $5947: $ff
	rst  $38                                         ; $5948: $ff
	rst  $38                                         ; $5949: $ff
	rst  $38                                         ; $594a: $ff
	ld   sp, hl                                      ; $594b: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $594c: $cf
	rst  $38                                         ; $594d: $ff
	db   $fd                                         ; $594e: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $594f: $cf
	and  l                                           ; $5950: $a5
	ld   b, c                                        ; $5951: $41
	ld   de, $1111                                   ; $5952: $11 $11 $11
	ld   de, $1111                                   ; $5955: $11 $11 $11
	ld   de, $2d11                                   ; $5958: $11 $11 $2d
	rst  $38                                         ; $595b: $ff
	rst  $38                                         ; $595c: $ff
	rst  $38                                         ; $595d: $ff
	rst  $38                                         ; $595e: $ff
	rst  $38                                         ; $595f: $ff
	rst  $38                                         ; $5960: $ff
	rst  $38                                         ; $5961: $ff
	rst  $38                                         ; $5962: $ff
	ld   hl, sp-$21                                  ; $5963: $f8 $df
	db   $ec                                         ; $5965: $ec
	call z, $76dc                                    ; $5966: $cc $dc $76
	ld   sp, $1111                                   ; $5969: $31 $11 $11
	ld   de, $1111                                   ; $596c: $11 $11 $11
	ld   de, $1111                                   ; $596f: $11 $11 $11
	ld   c, a                                        ; $5972: $4f
	rst  $38                                         ; $5973: $ff
	rst  $38                                         ; $5974: $ff
	rst  $38                                         ; $5975: $ff
	rst  $38                                         ; $5976: $ff
	rst  $38                                         ; $5977: $ff
	rst  $38                                         ; $5978: $ff
	rst  $38                                         ; $5979: $ff
	rst  $38                                         ; $597a: $ff
	cp   b                                           ; $597b: $b8
	rst  JumpTable                                         ; $597c: $df
	ld   [$fccf], a                                  ; $597d: $ea $cf $fc
	add  d                                           ; $5980: $82
	ld   de, $1111                                   ; $5981: $11 $11 $11
	ld   de, $1111                                   ; $5984: $11 $11 $11
	ld   de, $1311                                   ; $5987: $11 $11 $13
	sbc  a                                           ; $598a: $9f
	rst  $38                                         ; $598b: $ff
	rst  $38                                         ; $598c: $ff
	rst  $38                                         ; $598d: $ff
	rst  $38                                         ; $598e: $ff
	rst  $38                                         ; $598f: $ff
	rst  $38                                         ; $5990: $ff
	rst  $28                                         ; $5991: $ef
	cp   $ab                                         ; $5992: $fe $ab
	cp   $dd                                         ; $5994: $fe $dd
	call z, Call_0de_51da                            ; $5996: $cc $da $51
	ld   de, $1111                                   ; $5999: $11 $11 $11
	ld   de, $1111                                   ; $599c: $11 $11 $11
	ld   de, $6413                                   ; $599f: $11 $13 $64
	rst  $28                                         ; $59a2: $ef
	rst  $38                                         ; $59a3: $ff
	rst  $38                                         ; $59a4: $ff
	rst  $38                                         ; $59a5: $ff
	rst  $38                                         ; $59a6: $ff
	rst  $38                                         ; $59a7: $ff
	rst  $38                                         ; $59a8: $ff
	cp   e                                           ; $59a9: $bb
	rst  $38                                         ; $59aa: $ff
	xor  d                                           ; $59ab: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59ac: $cf
	db   $fd                                         ; $59ad: $fd
	db   $ec                                         ; $59ae: $ec
	cp   c                                           ; $59af: $b9
	ld   d, c                                        ; $59b0: $51
	ld   de, $1111                                   ; $59b1: $11 $11 $11
	ld   de, $1111                                   ; $59b4: $11 $11 $11
	ld   de, $4a13                                   ; $59b7: $11 $13 $4a
	rst  $38                                         ; $59ba: $ff
	rst  $38                                         ; $59bb: $ff
	rst  $38                                         ; $59bc: $ff
	rst  $38                                         ; $59bd: $ff
	rst  $38                                         ; $59be: $ff
	rst  $38                                         ; $59bf: $ff
	rst  $38                                         ; $59c0: $ff
	rst  $28                                         ; $59c1: $ef
	db   $fd                                         ; $59c2: $fd
	xor  h                                           ; $59c3: $ac
	cp   $dd                                         ; $59c4: $fe $dd
	db   $ed                                         ; $59c6: $ed
	and  [hl]                                        ; $59c7: $a6
	ld   hl, $1111                                   ; $59c8: $21 $11 $11
	ld   de, $1111                                   ; $59cb: $11 $11 $11
	ld   de, $1111                                   ; $59ce: $11 $11 $11
	ld   l, a                                        ; $59d1: $6f
	rst  $38                                         ; $59d2: $ff
	rst  $38                                         ; $59d3: $ff
	rst  $38                                         ; $59d4: $ff
	rst  $38                                         ; $59d5: $ff
	rst  $38                                         ; $59d6: $ff
	rst  $38                                         ; $59d7: $ff
	rst  $38                                         ; $59d8: $ff
	db   $fd                                         ; $59d9: $fd
	sub  a                                           ; $59da: $97
	sbc  [hl]                                        ; $59db: $9e
	db   $eb                                         ; $59dc: $eb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59dd: $cf
	cp   $86                                         ; $59de: $fe $86
	ld   d, c                                        ; $59e0: $51
	ld   de, $1111                                   ; $59e1: $11 $11 $11
	ld   de, $1111                                   ; $59e4: $11 $11 $11
	ld   de, $ef11                                   ; $59e7: $11 $11 $ef
	rst  $38                                         ; $59ea: $ff
	rst  $38                                         ; $59eb: $ff
	rst  $38                                         ; $59ec: $ff
	rst  $38                                         ; $59ed: $ff
	rst  $38                                         ; $59ee: $ff
	rst  $38                                         ; $59ef: $ff
	rst  JumpTable                                         ; $59f0: $df
	ei                                               ; $59f1: $fb
	ld   d, a                                        ; $59f2: $57
	call $dfcb                                       ; $59f3: $cd $cb $df
	db   $ec                                         ; $59f6: $ec
	add  l                                           ; $59f7: $85
	ld   de, $1111                                   ; $59f8: $11 $11 $11
	ld   de, $1111                                   ; $59fb: $11 $11 $11
	ld   de, $1511                                   ; $59fe: $11 $11 $15
	rst  $38                                         ; $5a01: $ff
	rst  $38                                         ; $5a02: $ff
	rst  $38                                         ; $5a03: $ff
	rst  $38                                         ; $5a04: $ff
	rst  $38                                         ; $5a05: $ff
	rst  $38                                         ; $5a06: $ff
	rst  $38                                         ; $5a07: $ff
	rst  $38                                         ; $5a08: $ff
	ret  c                                           ; $5a09: $d8

	ld   h, [hl]                                     ; $5a0a: $66
	xor  e                                           ; $5a0b: $ab
	halt                                             ; $5a0c: $76
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a0d: $cf
	or   a                                           ; $5a0e: $b7
	ld   d, [hl]                                     ; $5a0f: $56
	ld   b, c                                        ; $5a10: $41
	ld   de, $1111                                   ; $5a11: $11 $11 $11
	ld   de, $1111                                   ; $5a14: $11 $11 $11
	ld   de, $cf12                                   ; $5a17: $11 $12 $cf
	rst  $38                                         ; $5a1a: $ff
	rst  $38                                         ; $5a1b: $ff
	rst  $38                                         ; $5a1c: $ff
	rst  $38                                         ; $5a1d: $ff
	rst  $38                                         ; $5a1e: $ff
	rst  $38                                         ; $5a1f: $ff
	rst  $38                                         ; $5a20: $ff
	ret                                              ; $5a21: $c9


	halt                                             ; $5a22: $76
	ld   h, [hl]                                     ; $5a23: $66
	sbc  c                                           ; $5a24: $99
	and  a                                           ; $5a25: $a7
	sbc  e                                           ; $5a26: $9b
	halt                                             ; $5a27: $76
	inc  sp                                          ; $5a28: $33
	ld   b, c                                        ; $5a29: $41
	ld   de, $1111                                   ; $5a2a: $11 $11 $11
	ld   de, $1111                                   ; $5a2d: $11 $11 $11
	ld   de, $7715                                   ; $5a30: $11 $15 $77
	xor  a                                           ; $5a33: $af
	rst  $38                                         ; $5a34: $ff
	rst  $38                                         ; $5a35: $ff
	rst  $38                                         ; $5a36: $ff
	rst  $38                                         ; $5a37: $ff
	rst  $38                                         ; $5a38: $ff
	rst  $38                                         ; $5a39: $ff
	db   $ed                                         ; $5a3a: $ed
	call c, $ccbb                                    ; $5a3b: $dc $bb $cc
	jp   z, Jump_0de_76b9                            ; $5a3e: $ca $b9 $76

	halt                                             ; $5a41: $76
	ld   d, l                                        ; $5a42: $55
	ld   b, h                                        ; $5a43: $44
	inc  [hl]                                        ; $5a44: $34
	ld   hl, $1111                                   ; $5a45: $21 $11 $11
	ld   de, $1111                                   ; $5a48: $11 $11 $11
	ld   de, $1312                                   ; $5a4b: $11 $12 $13
	adc  d                                           ; $5a4e: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a4f: $cf
	rst  $38                                         ; $5a50: $ff
	rst  $38                                         ; $5a51: $ff
	rst  $38                                         ; $5a52: $ff
	rst  $38                                         ; $5a53: $ff
	rst  $38                                         ; $5a54: $ff
	rst  $38                                         ; $5a55: $ff
	db   $ed                                         ; $5a56: $ed
	call c, $acba                                    ; $5a57: $dc $ba $ac
	adc  b                                           ; $5a5a: $88
	ld   l, b                                        ; $5a5b: $68
	sub  h                                           ; $5a5c: $94
	ld   h, h                                        ; $5a5d: $64
	ld   b, l                                        ; $5a5e: $45
	ld   de, $1111                                   ; $5a5f: $11 $11 $11
	ld   de, $1111                                   ; $5a62: $11 $11 $11
	ld   de, $1211                                   ; $5a65: $11 $11 $12
	inc  bc                                          ; $5a68: $03
	xor  l                                           ; $5a69: $ad
	rst  JumpTable                                         ; $5a6a: $df
	rst  $38                                         ; $5a6b: $ff
	rst  $38                                         ; $5a6c: $ff
	rst  $38                                         ; $5a6d: $ff
	rst  $38                                         ; $5a6e: $ff
	rst  $38                                         ; $5a6f: $ff
	rst  $38                                         ; $5a70: $ff
	db   $ec                                         ; $5a71: $ec
	sbc  c                                           ; $5a72: $99
	xor  c                                           ; $5a73: $a9
	add  a                                           ; $5a74: $87
	sub  [hl]                                        ; $5a75: $96
	ld   h, a                                        ; $5a76: $67
	ld   d, [hl]                                     ; $5a77: $56
	ld   b, l                                        ; $5a78: $45
	ld   d, h                                        ; $5a79: $54
	ld   hl, $1111                                   ; $5a7a: $21 $11 $11
	ld   de, $1111                                   ; $5a7d: $11 $11 $11
	ld   de, $3211                                   ; $5a80: $11 $11 $32
	ld   [hl], $bd                                   ; $5a83: $36 $bd
	rst  JumpTable                                         ; $5a85: $df
	rst  $38                                         ; $5a86: $ff
	rst  $38                                         ; $5a87: $ff
	rst  $38                                         ; $5a88: $ff
	rst  $38                                         ; $5a89: $ff
	rst  $38                                         ; $5a8a: $ff
	cp   $db                                         ; $5a8b: $fe $db
	sbc  c                                           ; $5a8d: $99
	sbc  e                                           ; $5a8e: $9b
	add  [hl]                                        ; $5a8f: $86
	sub  [hl]                                        ; $5a90: $96
	adc  d                                           ; $5a91: $8a
	ld   c, b                                        ; $5a92: $48
	inc  [hl]                                        ; $5a93: $34
	and  c                                           ; $5a94: $a1
	ld   [hl-], a                                    ; $5a95: $32
	inc  de                                          ; $5a96: $13
	ld   de, $1111                                   ; $5a97: $11 $11 $11
	ld   de, $1111                                   ; $5a9a: $11 $11 $11
	inc  [hl]                                        ; $5a9d: $34
	ld   b, a                                        ; $5a9e: $47
	xor  [hl]                                        ; $5a9f: $ae
	rst  $38                                         ; $5aa0: $ff
	rst  $38                                         ; $5aa1: $ff
	rst  $38                                         ; $5aa2: $ff
	rst  $38                                         ; $5aa3: $ff
	rst  $38                                         ; $5aa4: $ff
	rst  $38                                         ; $5aa5: $ff
	db   $ed                                         ; $5aa6: $ed
	db   $eb                                         ; $5aa7: $eb
	ret  z                                           ; $5aa8: $c8

	sbc  c                                           ; $5aa9: $99
	sbc  c                                           ; $5aaa: $99
	ld   l, b                                        ; $5aab: $68
	ld   h, [hl]                                     ; $5aac: $66
	sub  l                                           ; $5aad: $95
	ld   b, [hl]                                     ; $5aae: $46
	ld   [hl+], a                                    ; $5aaf: $22
	ld   de, $1111                                   ; $5ab0: $11 $11 $11
	ld   de, $1111                                   ; $5ab3: $11 $11 $11
	ld   de, $3332                                   ; $5ab6: $11 $32 $33
	rst  JumpTable                                         ; $5ab9: $df
	rst  $38                                         ; $5aba: $ff
	rst  $38                                         ; $5abb: $ff
	rst  $38                                         ; $5abc: $ff
	rst  $38                                         ; $5abd: $ff
	rst  $38                                         ; $5abe: $ff
	rst  $38                                         ; $5abf: $ff
	db   $dd                                         ; $5ac0: $dd
	db   $fd                                         ; $5ac1: $fd
	ld   d, l                                        ; $5ac2: $55
	ld   [hl], l                                     ; $5ac3: $75
	ld   h, h                                        ; $5ac4: $64
	ld   b, l                                        ; $5ac5: $45
	ld   d, [hl]                                     ; $5ac6: $56
	ld   h, h                                        ; $5ac7: $64
	dec  d                                           ; $5ac8: $15
	ld   d, c                                        ; $5ac9: $51
	ld   de, $1111                                   ; $5aca: $11 $11 $11
	ld   de, $1111                                   ; $5acd: $11 $11 $11
	ld   [de], a                                     ; $5ad0: $12
	inc  sp                                          ; $5ad1: $33
	cp   a                                           ; $5ad2: $bf
	rst  $38                                         ; $5ad3: $ff
	rst  $38                                         ; $5ad4: $ff
	rst  $38                                         ; $5ad5: $ff
	rst  $38                                         ; $5ad6: $ff
	rst  $38                                         ; $5ad7: $ff
	rst  $38                                         ; $5ad8: $ff
	db   $fd                                         ; $5ad9: $fd
	bit  6, c                                        ; $5ada: $cb $71
	inc  de                                          ; $5adc: $13
	ld   [hl-], a                                    ; $5add: $32
	ld   de, $3334                                   ; $5ade: $11 $34 $33
	ld   de, $1131                                   ; $5ae1: $11 $31 $11
	ld   de, $1111                                   ; $5ae4: $11 $11 $11
	ld   de, $2511                                   ; $5ae7: $11 $11 $25
	sbc  h                                           ; $5aea: $9c
	rst  $38                                         ; $5aeb: $ff
	rst  $38                                         ; $5aec: $ff
	rst  $38                                         ; $5aed: $ff
	rst  $38                                         ; $5aee: $ff
	rst  $38                                         ; $5aef: $ff
	rst  $38                                         ; $5af0: $ff
	rst  $38                                         ; $5af1: $ff
	cp   b                                           ; $5af2: $b8
	ld   d, e                                        ; $5af3: $53
	ld   de, $1111                                   ; $5af4: $11 $11 $11
	ld   de, $1113                                   ; $5af7: $11 $13 $11
	ld   de, $1111                                   ; $5afa: $11 $11 $11
	ld   de, $1111                                   ; $5afd: $11 $11 $11
	inc  d                                           ; $5b00: $14
	add  [hl]                                        ; $5b01: $86
	adc  a                                           ; $5b02: $8f
	rst  $38                                         ; $5b03: $ff
	rst  $38                                         ; $5b04: $ff
	rst  $38                                         ; $5b05: $ff
	rst  $38                                         ; $5b06: $ff
	rst  $38                                         ; $5b07: $ff
	rst  $38                                         ; $5b08: $ff
	rst  $30                                         ; $5b09: $f7
	ld   h, h                                        ; $5b0a: $64
	ld   sp, $1111                                   ; $5b0b: $31 $11 $11
	ld   de, $1112                                   ; $5b0e: $11 $12 $11
	ld   de, $1111                                   ; $5b11: $11 $11 $11
	ld   de, $1111                                   ; $5b14: $11 $11 $11
	inc  d                                           ; $5b17: $14
	and  [hl]                                        ; $5b18: $a6
	adc  a                                           ; $5b19: $8f
	rst  $38                                         ; $5b1a: $ff
	rst  $38                                         ; $5b1b: $ff
	rst  $38                                         ; $5b1c: $ff
	rst  $38                                         ; $5b1d: $ff
	rst  $38                                         ; $5b1e: $ff
	rst  $38                                         ; $5b1f: $ff
	ld   a, [$4122]                                  ; $5b20: $fa $22 $41
	ld   de, $1111                                   ; $5b23: $11 $11 $11
	ld   de, $2114                                   ; $5b26: $11 $14 $21
	ld   de, $1111                                   ; $5b29: $11 $11 $11
	ld   de, $1211                                   ; $5b2c: $11 $11 $12
	ld   d, a                                        ; $5b2f: $57
	rst  $28                                         ; $5b30: $ef
	rst  $38                                         ; $5b31: $ff
	rst  $38                                         ; $5b32: $ff
	rst  $38                                         ; $5b33: $ff
	rst  $38                                         ; $5b34: $ff
	rst  $38                                         ; $5b35: $ff
	rst  $38                                         ; $5b36: $ff
	ld   sp, hl                                      ; $5b37: $f9
	ld   hl, $1111                                   ; $5b38: $21 $11 $11
	ld   de, $1111                                   ; $5b3b: $11 $11 $11
	ld   de, $1111                                   ; $5b3e: $11 $11 $11
	ld   de, $1111                                   ; $5b41: $11 $11 $11
	ld   de, $7911                                   ; $5b44: $11 $11 $79
	rst  JumpTable                                         ; $5b47: $df
	rst  $38                                         ; $5b48: $ff
	rst  $38                                         ; $5b49: $ff
	rst  $38                                         ; $5b4a: $ff
	rst  $38                                         ; $5b4b: $ff
	rst  $38                                         ; $5b4c: $ff
	rst  $38                                         ; $5b4d: $ff
	ld   sp, hl                                      ; $5b4e: $f9
	ld   de, $1111                                   ; $5b4f: $11 $11 $11
	ld   de, $2311                                   ; $5b52: $11 $11 $23
	ld   hl, $1111                                   ; $5b55: $21 $11 $11
	ld   de, $1111                                   ; $5b58: $11 $11 $11
	ld   de, $6f13                                   ; $5b5b: $11 $13 $6f
	rst  $38                                         ; $5b5e: $ff
	rst  $38                                         ; $5b5f: $ff
	rst  $38                                         ; $5b60: $ff
	rst  $38                                         ; $5b61: $ff
	rst  $38                                         ; $5b62: $ff
	rst  $38                                         ; $5b63: $ff
	rst  $38                                         ; $5b64: $ff
	ld   [hl], c                                     ; $5b65: $71
	ld   de, $1111                                   ; $5b66: $11 $11 $11
	ld   de, $3223                                   ; $5b69: $11 $23 $32
	ld   [hl+], a                                    ; $5b6c: $22
	ld   de, $1111                                   ; $5b6d: $11 $11 $11
	ld   de, $1111                                   ; $5b70: $11 $11 $11
	ld   d, $bf                                      ; $5b73: $16 $bf
	rst  $38                                         ; $5b75: $ff
	rst  $38                                         ; $5b76: $ff
	rst  $38                                         ; $5b77: $ff
	rst  $38                                         ; $5b78: $ff
	rst  $38                                         ; $5b79: $ff
	rst  $38                                         ; $5b7a: $ff
	ld   sp, hl                                      ; $5b7b: $f9
	ld   d, c                                        ; $5b7c: $51
	ld   de, $1111                                   ; $5b7d: $11 $11 $11
	inc  hl                                          ; $5b80: $23
	inc  [hl]                                        ; $5b81: $34
	inc  sp                                          ; $5b82: $33
	ld   b, d                                        ; $5b83: $42
	ld   de, $1111                                   ; $5b84: $11 $11 $11
	ld   de, $1111                                   ; $5b87: $11 $11 $11
	ld   [hl], $cf                                   ; $5b8a: $36 $cf
	rst  $38                                         ; $5b8c: $ff
	rst  $38                                         ; $5b8d: $ff
	rst  $38                                         ; $5b8e: $ff
	rst  $38                                         ; $5b8f: $ff
	rst  $38                                         ; $5b90: $ff
	rst  $38                                         ; $5b91: $ff
	add  sp, $54                                     ; $5b92: $e8 $54
	ld   de, $1411                                   ; $5b94: $11 $11 $14
	dec  [hl]                                        ; $5b97: $35
	ld   d, e                                        ; $5b98: $53
	ld   d, l                                        ; $5b99: $55
	ld   b, d                                        ; $5b9a: $42
	ld   de, $1111                                   ; $5b9b: $11 $11 $11
	ld   de, $1111                                   ; $5b9e: $11 $11 $11
	ld   d, $af                                      ; $5ba1: $16 $af
	rst  $38                                         ; $5ba3: $ff
	rst  $38                                         ; $5ba4: $ff
	rst  $38                                         ; $5ba5: $ff
	rst  $38                                         ; $5ba6: $ff
	rst  $38                                         ; $5ba7: $ff
	rst  $38                                         ; $5ba8: $ff
	ei                                               ; $5ba9: $fb
	ld   [hl], e                                     ; $5baa: $73
	ld   hl, $3313                                   ; $5bab: $21 $13 $33
	ld   l, b                                        ; $5bae: $68
	sbc  b                                           ; $5baf: $98
	ld   d, l                                        ; $5bb0: $55
	ld   d, e                                        ; $5bb1: $53
	ld   de, $1111                                   ; $5bb2: $11 $11 $11
	ld   de, $1111                                   ; $5bb5: $11 $11 $11
	ld   de, $df7a                                   ; $5bb8: $11 $7a $df
	rst  $38                                         ; $5bbb: $ff
	rst  $38                                         ; $5bbc: $ff
	rst  $38                                         ; $5bbd: $ff
	rst  $38                                         ; $5bbe: $ff
	rst  $38                                         ; $5bbf: $ff
	cp   $cb                                         ; $5bc0: $fe $cb
	ld   [hl], l                                     ; $5bc2: $75
	ld   b, e                                        ; $5bc3: $43

Call_0de_5bc4:
	ld   d, [hl]                                     ; $5bc4: $56
	ld   [hl], a                                     ; $5bc5: $77
	ld   l, b                                        ; $5bc6: $68
	sub  a                                           ; $5bc7: $97
	ld   h, l                                        ; $5bc8: $65
	ld   [hl+], a                                    ; $5bc9: $22
	ld   de, $1111                                   ; $5bca: $11 $11 $11
	ld   de, $1111                                   ; $5bcd: $11 $11 $11
	ld   de, $df6a                                   ; $5bd0: $11 $6a $df
	rst  $38                                         ; $5bd3: $ff
	rst  $38                                         ; $5bd4: $ff
	rst  $38                                         ; $5bd5: $ff
	rst  $38                                         ; $5bd6: $ff
	rst  $38                                         ; $5bd7: $ff
	rst  $38                                         ; $5bd8: $ff
	ret                                              ; $5bd9: $c9


	ld   h, a                                        ; $5bda: $67
	halt                                             ; $5bdb: $76
	ld   h, [hl]                                     ; $5bdc: $66
	ld   a, c                                        ; $5bdd: $79
	sbc  h                                           ; $5bde: $9c
	sub  [hl]                                        ; $5bdf: $96
	ld   h, l                                        ; $5be0: $65
	ld   d, d                                        ; $5be1: $52
	ld   de, $1111                                   ; $5be2: $11 $11 $11
	ld   de, $1111                                   ; $5be5: $11 $11 $11
	ld   de, $ab27                                   ; $5be8: $11 $27 $ab
	rst  $38                                         ; $5beb: $ff
	rst  $38                                         ; $5bec: $ff
	rst  $38                                         ; $5bed: $ff
	rst  $38                                         ; $5bee: $ff
	rst  $38                                         ; $5bef: $ff
	rst  $38                                         ; $5bf0: $ff
	db   $fd                                         ; $5bf1: $fd
	jp   z, $9988                                    ; $5bf2: $ca $88 $99

	xor  c                                           ; $5bf5: $a9
	xor  e                                           ; $5bf6: $ab
	cp   c                                           ; $5bf7: $b9
	add  [hl]                                        ; $5bf8: $86
	ld   b, e                                        ; $5bf9: $43
	ld   de, $1111                                   ; $5bfa: $11 $11 $11
	ld   de, $1111                                   ; $5bfd: $11 $11 $11
	ld   de, $4711                                   ; $5c00: $11 $11 $47
	xor  a                                           ; $5c03: $af
	rst  $38                                         ; $5c04: $ff
	rst  $38                                         ; $5c05: $ff
	rst  $38                                         ; $5c06: $ff
	rst  $38                                         ; $5c07: $ff
	rst  $38                                         ; $5c08: $ff
	rst  $38                                         ; $5c09: $ff
	cp   $ca                                         ; $5c0a: $fe $ca
	xor  c                                           ; $5c0c: $a9
	adc  c                                           ; $5c0d: $89
	sbc  d                                           ; $5c0e: $9a
	xor  d                                           ; $5c0f: $aa
	xor  c                                           ; $5c10: $a9
	ld   [hl], a                                     ; $5c11: $77
	ld   d, d                                        ; $5c12: $52
	ld   de, $1111                                   ; $5c13: $11 $11 $11
	ld   de, $1111                                   ; $5c16: $11 $11 $11
	ld   de, $4911                                   ; $5c19: $11 $11 $49
	rst  JumpTable                                         ; $5c1c: $df
	rst  $38                                         ; $5c1d: $ff
	rst  $38                                         ; $5c1e: $ff
	rst  $38                                         ; $5c1f: $ff
	rst  $38                                         ; $5c20: $ff
	rst  $38                                         ; $5c21: $ff
	rst  $38                                         ; $5c22: $ff
	db   $fd                                         ; $5c23: $fd
	cp   c                                           ; $5c24: $b9
	sbc  b                                           ; $5c25: $98
	sbc  c                                           ; $5c26: $99
	xor  d                                           ; $5c27: $aa
	xor  d                                           ; $5c28: $aa
	xor  d                                           ; $5c29: $aa
	add  a                                           ; $5c2a: $87
	ld   d, d                                        ; $5c2b: $52
	ld   de, $1111                                   ; $5c2c: $11 $11 $11
	ld   de, $1111                                   ; $5c2f: $11 $11 $11
	ld   de, $4911                                   ; $5c32: $11 $11 $49
	rst  $28                                         ; $5c35: $ef
	rst  $38                                         ; $5c36: $ff
	rst  $38                                         ; $5c37: $ff
	rst  $38                                         ; $5c38: $ff
	rst  $38                                         ; $5c39: $ff
	rst  $38                                         ; $5c3a: $ff
	rst  $38                                         ; $5c3b: $ff
	db   $eb                                         ; $5c3c: $eb
	sbc  b                                           ; $5c3d: $98
	ld   [hl], a                                     ; $5c3e: $77
	adc  b                                           ; $5c3f: $88
	cp   e                                           ; $5c40: $bb
	call z, $a8cc                                    ; $5c41: $cc $cc $a8
	ld   h, e                                        ; $5c44: $63
	ld   de, $1111                                   ; $5c45: $11 $11 $11
	ld   de, $1111                                   ; $5c48: $11 $11 $11
	ld   de, $5b11                                   ; $5c4b: $11 $11 $5b
	rst  $38                                         ; $5c4e: $ff
	rst  $38                                         ; $5c4f: $ff
	rst  $38                                         ; $5c50: $ff
	rst  $38                                         ; $5c51: $ff
	rst  $38                                         ; $5c52: $ff
	rst  $38                                         ; $5c53: $ff
	rst  $38                                         ; $5c54: $ff
	db   $db                                         ; $5c55: $db
	sub  a                                           ; $5c56: $97
	ld   h, [hl]                                     ; $5c57: $66
	adc  c                                           ; $5c58: $89
	cp   l                                           ; $5c59: $bd
	xor  $cb                                         ; $5c5a: $ee $cb
	xor  c                                           ; $5c5c: $a9
	ld   [hl], h                                     ; $5c5d: $74
	ld   de, $1111                                   ; $5c5e: $11 $11 $11
	ld   de, $1111                                   ; $5c61: $11 $11 $11
	ld   de, $1911                                   ; $5c64: $11 $11 $19
	rst  $38                                         ; $5c67: $ff
	rst  $38                                         ; $5c68: $ff
	rst  $38                                         ; $5c69: $ff
	rst  $38                                         ; $5c6a: $ff
	rst  $38                                         ; $5c6b: $ff
	rst  $38                                         ; $5c6c: $ff
	cp   $b9                                         ; $5c6d: $fe $b9
	halt                                             ; $5c6f: $76
	ld   d, [hl]                                     ; $5c70: $56
	adc  c                                           ; $5c71: $89
	cp   [hl]                                        ; $5c72: $be
	rst  $38                                         ; $5c73: $ff
	db   $fd                                         ; $5c74: $fd
	jp   c, $1164                                    ; $5c75: $da $64 $11

	ld   de, $1111                                   ; $5c78: $11 $11 $11
	ld   de, $1111                                   ; $5c7b: $11 $11 $11
	ld   de, $ff3a                                   ; $5c7e: $11 $3a $ff
	rst  $38                                         ; $5c81: $ff
	rst  $38                                         ; $5c82: $ff
	rst  $38                                         ; $5c83: $ff
	rst  $38                                         ; $5c84: $ff
	rst  $38                                         ; $5c85: $ff
	cp   $b8                                         ; $5c86: $fe $b8
	ld   h, a                                        ; $5c88: $67
	adc  b                                           ; $5c89: $88
	cp   h                                           ; $5c8a: $bc
	rst  JumpTable                                         ; $5c8b: $df
	rst  $38                                         ; $5c8c: $ff
	db   $fc                                         ; $5c8d: $fc
	xor  c                                           ; $5c8e: $a9
	ld   b, c                                        ; $5c8f: $41
	ld   de, $1111                                   ; $5c90: $11 $11 $11
	ld   de, $1111                                   ; $5c93: $11 $11 $11
	ld   de, $1511                                   ; $5c96: $11 $11 $15
	rst  $28                                         ; $5c99: $ef
	rst  $38                                         ; $5c9a: $ff
	rst  $38                                         ; $5c9b: $ff
	rst  $38                                         ; $5c9c: $ff
	rst  $38                                         ; $5c9d: $ff
	cp   $ef                                         ; $5c9e: $fe $ef
	jp   z, $97a9                                    ; $5ca0: $ca $a9 $97

	sbc  e                                           ; $5ca3: $9b
	rst  JumpTable                                         ; $5ca4: $df
	rst  $38                                         ; $5ca5: $ff
	db   $fd                                         ; $5ca6: $fd
	xor  c                                           ; $5ca7: $a9
	ld   h, d                                        ; $5ca8: $62
	ld   de, $1111                                   ; $5ca9: $11 $11 $11
	ld   de, $1111                                   ; $5cac: $11 $11 $11
	ld   de, $1111                                   ; $5caf: $11 $11 $11
	ld   l, a                                        ; $5cb2: $6f
	rst  $38                                         ; $5cb3: $ff
	rst  $38                                         ; $5cb4: $ff
	rst  $38                                         ; $5cb5: $ff
	rst  $38                                         ; $5cb6: $ff
	rst  $38                                         ; $5cb7: $ff
	call z, $b9dc                                    ; $5cb8: $cc $dc $b9
	xor  e                                           ; $5cbb: $ab
	sbc  e                                           ; $5cbc: $9b
	rst  $28                                         ; $5cbd: $ef
	rst  $38                                         ; $5cbe: $ff
	rst  $38                                         ; $5cbf: $ff
	cp   b                                           ; $5cc0: $b8
	ld   [hl], l                                     ; $5cc1: $75
	ld   hl, $1111                                   ; $5cc2: $21 $11 $11
	ld   de, $1111                                   ; $5cc5: $11 $11 $11
	ld   de, $1111                                   ; $5cc8: $11 $11 $11
	inc  de                                          ; $5ccb: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ccc: $cf
	rst  $38                                         ; $5ccd: $ff
	rst  $38                                         ; $5cce: $ff
	rst  $38                                         ; $5ccf: $ff
	rst  $38                                         ; $5cd0: $ff
	ld   a, [$db8c]                                  ; $5cd1: $fa $8c $db
	jp   z, $cfca                                    ; $5cd4: $ca $ca $cf

	rst  $38                                         ; $5cd7: $ff
	rst  $38                                         ; $5cd8: $ff
	db   $fc                                         ; $5cd9: $fc
	add  a                                           ; $5cda: $87
	ld   d, d                                        ; $5cdb: $52
	ld   de, $1111                                   ; $5cdc: $11 $11 $11
	ld   de, $1111                                   ; $5cdf: $11 $11 $11
	ld   de, $1111                                   ; $5ce2: $11 $11 $11
	ld   bc, $ffcf                                   ; $5ce5: $01 $cf $ff
	rst  $38                                         ; $5ce8: $ff
	rst  $38                                         ; $5ce9: $ff
	rst  $38                                         ; $5cea: $ff
	or   l                                           ; $5ceb: $b5
	ld   c, h                                        ; $5cec: $4c
	cp   $dd                                         ; $5ced: $fe $dd
	db   $fd                                         ; $5cef: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cf0: $cf
	db   $fd                                         ; $5cf1: $fd
	adc  $db                                         ; $5cf2: $ce $db
	halt                                             ; $5cf4: $76
	ld   h, e                                        ; $5cf5: $63
	inc  hl                                          ; $5cf6: $23
	ld   d, l                                        ; $5cf7: $55
	ld   b, e                                        ; $5cf8: $43
	ld   de, $1111                                   ; $5cf9: $11 $11 $11
	ld   de, $1211                                   ; $5cfc: $11 $11 $12
	ld   d, l                                        ; $5cff: $55
	sbc  a                                           ; $5d00: $9f
	rst  $38                                         ; $5d01: $ff
	rst  $38                                         ; $5d02: $ff
	rst  $38                                         ; $5d03: $ff
	cp   $b6                                         ; $5d04: $fe $b6
	ld   e, b                                        ; $5d06: $58
	rst  JumpTable                                         ; $5d07: $df
	rst  $38                                         ; $5d08: $ff
	rst  $38                                         ; $5d09: $ff
	rst  $38                                         ; $5d0a: $ff
	jp   z, $a999                                    ; $5d0b: $ca $99 $a9

	sbc  d                                           ; $5d0e: $9a
	sub  a                                           ; $5d0f: $97
	sbc  c                                           ; $5d10: $99
	sub  a                                           ; $5d11: $97
	ld   h, l                                        ; $5d12: $65
	ld   de, $1111                                   ; $5d13: $11 $11 $11
	ld   de, $1311                                   ; $5d16: $11 $11 $13
	ld   d, h                                        ; $5d19: $54
	dec  d                                           ; $5d1a: $15
	rst  $38                                         ; $5d1b: $ff
	rst  $38                                         ; $5d1c: $ff
	rst  $38                                         ; $5d1d: $ff
	rst  $38                                         ; $5d1e: $ff
	ei                                               ; $5d1f: $fb
	ld   h, h                                        ; $5d20: $64
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d21: $cf
	rst  $38                                         ; $5d22: $ff
	xor  $cb                                         ; $5d23: $ee $cb
	xor  e                                           ; $5d25: $ab
	sub  l                                           ; $5d26: $95
	adc  l                                           ; $5d27: $8d
	cp   $ab                                         ; $5d28: $fe $ab
	sbc  b                                           ; $5d2a: $98
	sbc  d                                           ; $5d2b: $9a
	add  e                                           ; $5d2c: $83
	inc  de                                          ; $5d2d: $13
	ld   de, $1111                                   ; $5d2e: $11 $11 $11
	ld   de, $2911                                   ; $5d31: $11 $11 $29
	ld   [hl], d                                     ; $5d34: $72
	ld   [de], a                                     ; $5d35: $12
	rst  $38                                         ; $5d36: $ff
	rst  $38                                         ; $5d37: $ff
	rst  $38                                         ; $5d38: $ff
	rst  $38                                         ; $5d39: $ff
	db   $fc                                         ; $5d3a: $fc
	inc  sp                                          ; $5d3b: $33
	cp   a                                           ; $5d3c: $bf
	rst  $38                                         ; $5d3d: $ff
	ret                                              ; $5d3e: $c9


	xor  l                                           ; $5d3f: $ad
	db   $fd                                         ; $5d40: $fd
	ld   [hl], l                                     ; $5d41: $75
	sbc  [hl]                                        ; $5d42: $9e
	cp   $a9                                         ; $5d43: $fe $a9
	ld   a, d                                        ; $5d45: $7a
	cp   b                                           ; $5d46: $b8
	ld   h, h                                        ; $5d47: $64
	ld   [hl-], a                                    ; $5d48: $32
	ld   de, $1111                                   ; $5d49: $11 $11 $11
	ld   de, $3711                                   ; $5d4c: $11 $11 $37
	ld   h, e                                        ; $5d4f: $63
	ld   de, $ff6f                                   ; $5d50: $11 $6f $ff
	rst  $38                                         ; $5d53: $ff
	rst  $38                                         ; $5d54: $ff
	db   $fc                                         ; $5d55: $fc
	ld   [hl], e                                     ; $5d56: $73
	ld   l, a                                        ; $5d57: $6f
	rst  $38                                         ; $5d58: $ff
	db   $db                                         ; $5d59: $db
	rst  JumpTable                                         ; $5d5a: $df
	db   $db                                         ; $5d5b: $db
	sub  [hl]                                        ; $5d5c: $96
	ld   l, [hl]                                     ; $5d5d: $6e
	cp   $a8                                         ; $5d5e: $fe $a8
	xor  l                                           ; $5d60: $ad
	ret                                              ; $5d61: $c9


	sub  e                                           ; $5d62: $93
	dec  [hl]                                        ; $5d63: $35
	ld   sp, $1111                                   ; $5d64: $31 $11 $11
	ld   de, $1611                                   ; $5d67: $11 $11 $16
	ld   h, d                                        ; $5d6a: $62
	ld   de, $ff1d                                   ; $5d6b: $11 $1d $ff
	rst  $38                                         ; $5d6e: $ff
	rst  $38                                         ; $5d6f: $ff
	rst  $38                                         ; $5d70: $ff
	or   c                                           ; $5d71: $b1
	dec  de                                          ; $5d72: $1b
	rst  $38                                         ; $5d73: $ff
	ld   a, [$fe9d]                                  ; $5d74: $fa $9d $fe
	or   [hl]                                        ; $5d77: $b6
	jr   c, @+$01                                    ; $5d78: $38 $ff

	ld   hl, sp+$69                                  ; $5d7a: $f8 $69
	db   $dd                                         ; $5d7c: $dd
	or   [hl]                                        ; $5d7d: $b6
	ld   [de], a                                     ; $5d7e: $12
	halt                                             ; $5d7f: $76
	ld   de, $1111                                   ; $5d80: $11 $11 $11
	ld   de, $6411                                   ; $5d83: $11 $11 $64
	ld   hl, $cf11                                   ; $5d86: $21 $11 $cf
	rst  $38                                         ; $5d89: $ff
	rst  $38                                         ; $5d8a: $ff
	rst  $38                                         ; $5d8b: $ff
	rst  $30                                         ; $5d8c: $f7
	inc  d                                           ; $5d8d: $14
	rst  JumpTable                                         ; $5d8e: $df
	rst  $38                                         ; $5d8f: $ff
	cp   h                                           ; $5d90: $bc
	rst  $38                                         ; $5d91: $ff
	ld   [$cf55], a                                  ; $5d92: $ea $55 $cf
	db   $fd                                         ; $5d95: $fd
	adc  b                                           ; $5d96: $88
	adc  $d8                                         ; $5d97: $ce $d8
	ld   b, h                                        ; $5d99: $44
	ld   h, a                                        ; $5d9a: $67
	ld   b, c                                        ; $5d9b: $41
	ld   de, $1111                                   ; $5d9c: $11 $11 $11
	ld   de, $0333                                   ; $5d9f: $11 $33 $03
	ld   de, $ff16                                   ; $5da2: $11 $16 $ff
	cp   $ff                                         ; $5da5: $fe $ff
	rst  $38                                         ; $5da7: $ff
	sub  $7d                                         ; $5da8: $d6 $7d
	rst  $38                                         ; $5daa: $ff
	ld   [$feef], a                                  ; $5dab: $ea $ef $fe
	and  a                                           ; $5dae: $a7
	ld   l, h                                        ; $5daf: $6c
	rst  $38                                         ; $5db0: $ff
	reti                                             ; $5db1: $d9


	xor  [hl]                                        ; $5db2: $ae
	db   $ec                                         ; $5db3: $ec
	add  [hl]                                        ; $5db4: $86
	ld   h, a                                        ; $5db5: $67
	add  l                                           ; $5db6: $85
	ld   de, $1111                                   ; $5db7: $11 $11 $11
	ld   de, $2211                                   ; $5dba: $11 $11 $22
	ld   hl, $3512                                   ; $5dbd: $21 $12 $35
	rst  JumpTable                                         ; $5dc0: $df
	rst  $38                                         ; $5dc1: $ff
	rst  $38                                         ; $5dc2: $ff
	rst  $38                                         ; $5dc3: $ff
	sub  a                                           ; $5dc4: $97
	call $feff                                       ; $5dc5: $cd $ff $fe
	rst  $38                                         ; $5dc8: $ff
	cp   $a9                                         ; $5dc9: $fe $a9
	cp   h                                           ; $5dcb: $bc
	adc  $db                                         ; $5dcc: $ce $db
	cp   e                                           ; $5dce: $bb
	xor  h                                           ; $5dcf: $ac
	cp   b                                           ; $5dd0: $b8
	sub  a                                           ; $5dd1: $97
	ld   d, l                                        ; $5dd2: $55
	ld   hl, $1111                                   ; $5dd3: $21 $11 $11
	ld   de, $1111                                   ; $5dd6: $11 $11 $11
	ld   d, c                                        ; $5dd9: $51
	ld   de, $df13                                   ; $5dda: $11 $13 $df
	rst  $38                                         ; $5ddd: $ff
	rst  $28                                         ; $5dde: $ef
	rst  $38                                         ; $5ddf: $ff
	cp   c                                           ; $5de0: $b9
	adc  [hl]                                        ; $5de1: $8e
	rst  $38                                         ; $5de2: $ff
	ei                                               ; $5de3: $fb
	cp   a                                           ; $5de4: $bf
	cp   $97                                         ; $5de5: $fe $97
	cp   a                                           ; $5de7: $bf
	cp   $db                                         ; $5de8: $fe $db
	xor  l                                           ; $5dea: $ad
	ld   [$7b75], a                                  ; $5deb: $ea $75 $7b
	ld   [hl], e                                     ; $5dee: $73
	ld   b, h                                        ; $5def: $44
	ld   de, $1111                                   ; $5df0: $11 $11 $11
	ld   de, $1411                                   ; $5df3: $11 $11 $14
	ld   d, d                                        ; $5df6: $52
	ld   de, $fedf                                   ; $5df7: $11 $df $fe
	rst  JumpTable                                         ; $5dfa: $df
	rst  $38                                         ; $5dfb: $ff
	ei                                               ; $5dfc: $fb
	ld   a, e                                        ; $5dfd: $7b
	rst  $38                                         ; $5dfe: $ff
	db   $fc                                         ; $5dff: $fc
	rst  JumpTable                                         ; $5e00: $df
	rst  $38                                         ; $5e01: $ff
	cp   c                                           ; $5e02: $b9
	cp   e                                           ; $5e03: $bb
	sbc  $db                                         ; $5e04: $de $db
	cp   [hl]                                        ; $5e06: $be
	ei                                               ; $5e07: $fb
	sbc  c                                           ; $5e08: $99
	ld   [hl], a                                     ; $5e09: $77
	sub  [hl]                                        ; $5e0a: $96
	ld   sp, $1111                                   ; $5e0b: $31 $11 $11
	ld   de, $1111                                   ; $5e0e: $11 $11 $11
	ld   de, $1123                                   ; $5e11: $11 $23 $11
	ld   l, a                                        ; $5e14: $6f
	rst  $38                                         ; $5e15: $ff
	rst  $28                                         ; $5e16: $ef
	rst  $38                                         ; $5e17: $ff
	db   $fc                                         ; $5e18: $fc
	cp   h                                           ; $5e19: $bc
	rst  $38                                         ; $5e1a: $ff
	cp   $cf                                         ; $5e1b: $fe $cf
	cp   $cb                                         ; $5e1d: $fe $cb
	adc  $cd                                         ; $5e1f: $ce $cd
	call z, $ebee                                    ; $5e21: $cc $ee $eb
	sbc  e                                           ; $5e24: $9b
	xor  c                                           ; $5e25: $a9
	ld   h, h                                        ; $5e26: $64
	ld   d, l                                        ; $5e27: $55
	ld   sp, $1111                                   ; $5e28: $31 $11 $11
	ld   de, $1111                                   ; $5e2b: $11 $11 $11
	inc  de                                          ; $5e2e: $13
	ld   b, c                                        ; $5e2f: $41
	add  hl, de                                      ; $5e30: $19
	rst  $38                                         ; $5e31: $ff
	db   $fd                                         ; $5e32: $fd
	rst  $38                                         ; $5e33: $ff
	rst  $38                                         ; $5e34: $ff
	set  5, a                                        ; $5e35: $cb $ef
	rst  $38                                         ; $5e37: $ff
	db   $dd                                         ; $5e38: $dd
	rst  $38                                         ; $5e39: $ff
	ei                                               ; $5e3a: $fb
	xor  l                                           ; $5e3b: $ad
	db   $fc                                         ; $5e3c: $fc
	cp   e                                           ; $5e3d: $bb
	rst  JumpTable                                         ; $5e3e: $df
	jp   c, $abaa                                    ; $5e3f: $da $aa $ab

	sub  l                                           ; $5e42: $95
	ld   d, [hl]                                     ; $5e43: $56
	ld   [hl], l                                     ; $5e44: $75
	ld   de, $1111                                   ; $5e45: $11 $11 $11
	ld   de, $1111                                   ; $5e48: $11 $11 $11
	ld   [de], a                                     ; $5e4b: $12
	ld   hl, $ff7f                                   ; $5e4c: $21 $7f $ff
	rst  $38                                         ; $5e4f: $ff
	rst  $38                                         ; $5e50: $ff
	db   $fd                                         ; $5e51: $fd
	call $acff                                       ; $5e52: $cd $ff $ac
	rst  $38                                         ; $5e55: $ff
	ei                                               ; $5e56: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e57: $cf
	db   $ec                                         ; $5e58: $ec
	cp   d                                           ; $5e59: $ba
	cp   [hl]                                        ; $5e5a: $be
	jp   c, $bca9                                    ; $5e5b: $da $a9 $bc

	sbc  b                                           ; $5e5e: $98
	add  [hl]                                        ; $5e5f: $86
	ld   [hl], a                                     ; $5e60: $77
	ld   sp, $1111                                   ; $5e61: $31 $11 $11
	ld   de, $1111                                   ; $5e64: $11 $11 $11
	ld   de, $1811                                   ; $5e67: $11 $11 $18
	rst  $38                                         ; $5e6a: $ff
	rst  $38                                         ; $5e6b: $ff
	rst  $38                                         ; $5e6c: $ff
	rst  $38                                         ; $5e6d: $ff
	db   $fc                                         ; $5e6e: $fc
	rst  $38                                         ; $5e6f: $ff
	xor  d                                           ; $5e70: $aa
	db   $dd                                         ; $5e71: $dd
	db   $fd                                         ; $5e72: $fd
	xor  [hl]                                        ; $5e73: $ae
	cp   $fa                                         ; $5e74: $fe $fa
	cp   [hl]                                        ; $5e76: $be
	rst  $28                                         ; $5e77: $ef
	or   a                                           ; $5e78: $b7
	call z, Call_0de_779a                            ; $5e79: $cc $9a $77
	sub  a                                           ; $5e7c: $97
	ld   h, h                                        ; $5e7d: $64
	ld   [de], a                                     ; $5e7e: $12
	ld   de, $1111                                   ; $5e7f: $11 $11 $11
	ld   de, $1111                                   ; $5e82: $11 $11 $11
	ld   [de], a                                     ; $5e85: $12
	ld   l, [hl]                                     ; $5e86: $6e
	rst  $38                                         ; $5e87: $ff
	rst  $38                                         ; $5e88: $ff
	rst  $38                                         ; $5e89: $ff
	cp   $ff                                         ; $5e8a: $fe $ff
	jp   c, $cfba                                    ; $5e8c: $da $ba $cf

	call z, $fece                                    ; $5e8f: $cc $ce $fe
	cp   a                                           ; $5e92: $bf
	cp   $d9                                         ; $5e93: $fe $d9
	cp   e                                           ; $5e95: $bb
	xor  d                                           ; $5e96: $aa
	sub  a                                           ; $5e97: $97
	sbc  c                                           ; $5e98: $99
	add  [hl]                                        ; $5e99: $86
	inc  sp                                          ; $5e9a: $33
	ld   b, c                                        ; $5e9b: $41
	ld   de, $1111                                   ; $5e9c: $11 $11 $11
	ld   de, $1111                                   ; $5e9f: $11 $11 $11
	dec  d                                           ; $5ea2: $15
	rst  JumpTable                                         ; $5ea3: $df
	rst  $38                                         ; $5ea4: $ff
	rst  $38                                         ; $5ea5: $ff
	rst  $38                                         ; $5ea6: $ff
	rst  $38                                         ; $5ea7: $ff
	rst  $38                                         ; $5ea8: $ff
	rst  ToBoot                                         ; $5ea9: $c7
	sbc  d                                           ; $5eaa: $9a
	sbc  d                                           ; $5eab: $9a
	xor  d                                           ; $5eac: $aa
	xor  $ef                                         ; $5ead: $ee $ef
	rst  $38                                         ; $5eaf: $ff
	cp   $db                                         ; $5eb0: $fe $db
	xor  e                                           ; $5eb2: $ab
	sub  a                                           ; $5eb3: $97
	add  a                                           ; $5eb4: $87
	sub  a                                           ; $5eb5: $97
	ld   b, [hl]                                     ; $5eb6: $46
	ld   h, h                                        ; $5eb7: $64
	ld   hl, $1111                                   ; $5eb8: $21 $11 $11
	ld   de, $1111                                   ; $5ebb: $11 $11 $11
	ld   de, $cf14                                   ; $5ebe: $11 $14 $cf
	rst  $38                                         ; $5ec1: $ff
	rst  $38                                         ; $5ec2: $ff
	rst  $38                                         ; $5ec3: $ff
	rst  $38                                         ; $5ec4: $ff
	rst  $38                                         ; $5ec5: $ff
	ret  c                                           ; $5ec6: $d8

	ld   h, a                                        ; $5ec7: $67
	sbc  b                                           ; $5ec8: $98
	ld   l, d                                        ; $5ec9: $6a
	adc  $ee                                         ; $5eca: $ce $ee
	rst  $38                                         ; $5ecc: $ff
	rst  $38                                         ; $5ecd: $ff
	db   $fd                                         ; $5ece: $fd
	call c, Call_0de_66a7                            ; $5ecf: $dc $a7 $66
	ld   h, l                                        ; $5ed2: $65
	ld   b, l                                        ; $5ed3: $45
	ld   d, h                                        ; $5ed4: $54
	ld   sp, $1111                                   ; $5ed5: $31 $11 $11
	ld   de, $1111                                   ; $5ed8: $11 $11 $11
	ld   de, $df13                                   ; $5edb: $11 $13 $df
	rst  $38                                         ; $5ede: $ff
	rst  $38                                         ; $5edf: $ff
	rst  $38                                         ; $5ee0: $ff
	rst  $38                                         ; $5ee1: $ff
	rst  $38                                         ; $5ee2: $ff
	rst  $10                                         ; $5ee3: $d7
	ld   [hl], a                                     ; $5ee4: $77
	ld   [hl], l                                     ; $5ee5: $75
	ld   c, c                                        ; $5ee6: $49
	sbc  h                                           ; $5ee7: $9c
	cp   $ff                                         ; $5ee8: $fe $ff
	rst  $38                                         ; $5eea: $ff
	cp   $ec                                         ; $5eeb: $fe $ec
	xor  b                                           ; $5eed: $a8
	ld   d, l                                        ; $5eee: $55
	ld   h, e                                        ; $5eef: $63
	inc  h                                           ; $5ef0: $24
	inc  hl                                          ; $5ef1: $23
	ld   hl, $1111                                   ; $5ef2: $21 $11 $11
	ld   de, $1111                                   ; $5ef5: $11 $11 $11
	ld   de, $af11                                   ; $5ef8: $11 $11 $af
	rst  $38                                         ; $5efb: $ff
	rst  $38                                         ; $5efc: $ff
	rst  $38                                         ; $5efd: $ff
	rst  $38                                         ; $5efe: $ff
	rst  $38                                         ; $5eff: $ff
	ld   [$5574], a                                  ; $5f00: $ea $74 $55
	inc  [hl]                                        ; $5f03: $34
	ld   l, c                                        ; $5f04: $69
	db   $dd                                         ; $5f05: $dd
	rst  $28                                         ; $5f06: $ef
	rst  $38                                         ; $5f07: $ff
	rst  $38                                         ; $5f08: $ff
	rst  $38                                         ; $5f09: $ff
	cp   c                                           ; $5f0a: $b9
	ld   [hl], l                                     ; $5f0b: $75
	ld   b, d                                        ; $5f0c: $42
	ld   [hl+], a                                    ; $5f0d: $22
	ld   [de], a                                     ; $5f0e: $12
	ld   hl, $1111                                   ; $5f0f: $21 $11 $11
	ld   de, $1111                                   ; $5f12: $11 $11 $11
	ld   de, $7d11                                   ; $5f15: $11 $11 $7d
	rst  $38                                         ; $5f18: $ff
	rst  $38                                         ; $5f19: $ff
	rst  $38                                         ; $5f1a: $ff
	rst  $38                                         ; $5f1b: $ff
	rst  $38                                         ; $5f1c: $ff
	ei                                               ; $5f1d: $fb
	ld   [hl], a                                     ; $5f1e: $77
	ld   d, e                                        ; $5f1f: $53
	ld   [hl+], a                                    ; $5f20: $22
	ld   e, b                                        ; $5f21: $58
	cp   e                                           ; $5f22: $bb
	rst  $28                                         ; $5f23: $ef
	rst  $38                                         ; $5f24: $ff
	rst  $38                                         ; $5f25: $ff
	rst  $38                                         ; $5f26: $ff
	jp   z, Jump_0de_4286                            ; $5f27: $ca $86 $42

	ld   de, $1111                                   ; $5f2a: $11 $11 $11
	ld   de, $1111                                   ; $5f2d: $11 $11 $11
	ld   de, $1111                                   ; $5f30: $11 $11 $11
	ld   de, $ff4b                                   ; $5f33: $11 $4b $ff
	rst  $38                                         ; $5f36: $ff
	rst  $38                                         ; $5f37: $ff
	rst  $38                                         ; $5f38: $ff
	rst  $38                                         ; $5f39: $ff
	db   $fc                                         ; $5f3a: $fc
	and  l                                           ; $5f3b: $a5
	ld   b, h                                        ; $5f3c: $44
	ld   [bc], a                                     ; $5f3d: $02
	dec  [hl]                                        ; $5f3e: $35
	cp   d                                           ; $5f3f: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f40: $cf
	rst  $38                                         ; $5f41: $ff
	rst  $38                                         ; $5f42: $ff
	rst  $38                                         ; $5f43: $ff
	db   $ed                                         ; $5f44: $ed
	add  [hl]                                        ; $5f45: $86
	ld   h, e                                        ; $5f46: $63
	ld   de, $1111                                   ; $5f47: $11 $11 $11
	ld   de, $1111                                   ; $5f4a: $11 $11 $11
	ld   de, $1111                                   ; $5f4d: $11 $11 $11
	ld   de, $ff4a                                   ; $5f50: $11 $4a $ff
	rst  $38                                         ; $5f53: $ff
	rst  $38                                         ; $5f54: $ff
	rst  $38                                         ; $5f55: $ff
	rst  $38                                         ; $5f56: $ff
	rst  $38                                         ; $5f57: $ff
	and  h                                           ; $5f58: $a4
	ld   h, h                                        ; $5f59: $64
	ld   [de], a                                     ; $5f5a: $12
	inc  h                                           ; $5f5b: $24
	cp   d                                           ; $5f5c: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f5d: $cf
	rst  $38                                         ; $5f5e: $ff
	rst  $38                                         ; $5f5f: $ff
	rst  $38                                         ; $5f60: $ff
	db   $dd                                         ; $5f61: $dd
	sub  a                                           ; $5f62: $97
	ld   d, d                                        ; $5f63: $52
	ld   de, $1111                                   ; $5f64: $11 $11 $11
	ld   de, $1111                                   ; $5f67: $11 $11 $11
	ld   de, $1111                                   ; $5f6a: $11 $11 $11
	ld   de, $ff5b                                   ; $5f6d: $11 $5b $ff
	rst  $38                                         ; $5f70: $ff
	rst  $38                                         ; $5f71: $ff
	rst  $38                                         ; $5f72: $ff
	rst  $38                                         ; $5f73: $ff
	db   $fd                                         ; $5f74: $fd
	add  h                                           ; $5f75: $84
	ld   h, e                                        ; $5f76: $63
	ld   de, $aa36                                   ; $5f77: $11 $36 $aa
	rst  JumpTable                                         ; $5f7a: $df
	rst  $38                                         ; $5f7b: $ff
	rst  $38                                         ; $5f7c: $ff
	rst  $38                                         ; $5f7d: $ff
	call c, Call_0de_5297                            ; $5f7e: $dc $97 $52
	ld   de, $1111                                   ; $5f81: $11 $11 $11
	ld   de, $1111                                   ; $5f84: $11 $11 $11
	ld   de, $1111                                   ; $5f87: $11 $11 $11
	ld   [de], a                                     ; $5f8a: $12
	cp   a                                           ; $5f8b: $bf
	rst  $38                                         ; $5f8c: $ff
	rst  $38                                         ; $5f8d: $ff
	rst  $38                                         ; $5f8e: $ff
	rst  $38                                         ; $5f8f: $ff
	rst  $38                                         ; $5f90: $ff
	jp   hl                                          ; $5f91: $e9


	ld   h, [hl]                                     ; $5f92: $66
	ld   b, c                                        ; $5f93: $41
	ld   [de], a                                     ; $5f94: $12
	ld   l, c                                        ; $5f95: $69
	xor  l                                           ; $5f96: $ad
	rst  $38                                         ; $5f97: $ff
	rst  $38                                         ; $5f98: $ff
	rst  $38                                         ; $5f99: $ff
	rst  $38                                         ; $5f9a: $ff
	jp   z, $3186                                    ; $5f9b: $ca $86 $31

	ld   de, $1111                                   ; $5f9e: $11 $11 $11
	ld   de, $1111                                   ; $5fa1: $11 $11 $11
	ld   de, $1111                                   ; $5fa4: $11 $11 $11
	rla                                              ; $5fa7: $17
	xor  a                                           ; $5fa8: $af
	rst  $38                                         ; $5fa9: $ff
	rst  $38                                         ; $5faa: $ff
	rst  $38                                         ; $5fab: $ff
	rst  $38                                         ; $5fac: $ff
	rst  $38                                         ; $5fad: $ff
	and  a                                           ; $5fae: $a7
	ld   b, e                                        ; $5faf: $43
	ld   de, $7b23                                   ; $5fb0: $11 $23 $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fb3: $cf
	rst  $38                                         ; $5fb4: $ff
	rst  $38                                         ; $5fb5: $ff
	rst  $38                                         ; $5fb6: $ff
	db   $fd                                         ; $5fb7: $fd
	or   [hl]                                        ; $5fb8: $b6
	ld   d, e                                        ; $5fb9: $53
	ld   de, $2111                                   ; $5fba: $11 $11 $21
	ld   de, $1111                                   ; $5fbd: $11 $11 $11
	ld   de, $1111                                   ; $5fc0: $11 $11 $11
	ld   de, $ff6e                                   ; $5fc3: $11 $6e $ff
	rst  $38                                         ; $5fc6: $ff
	rst  $38                                         ; $5fc7: $ff
	rst  $38                                         ; $5fc8: $ff
	rst  $38                                         ; $5fc9: $ff
	ld   hl, sp+$62                                  ; $5fca: $f8 $62
	ld   hl, $5811                                   ; $5fcc: $21 $11 $58
	sbc  $ff                                         ; $5fcf: $de $ff
	rst  $38                                         ; $5fd1: $ff
	rst  $38                                         ; $5fd2: $ff
	rst  $38                                         ; $5fd3: $ff
	jp   z, Jump_0de_4164                            ; $5fd4: $ca $64 $41

	ld   de, $1112                                   ; $5fd7: $11 $12 $11
	ld   de, $1111                                   ; $5fda: $11 $11 $11
	ld   de, $1111                                   ; $5fdd: $11 $11 $11
	jr   @+$01                                       ; $5fe0: $18 $ff

	rst  $38                                         ; $5fe2: $ff
	rst  $38                                         ; $5fe3: $ff
	rst  $38                                         ; $5fe4: $ff
	rst  $38                                         ; $5fe5: $ff
	db   $fc                                         ; $5fe6: $fc
	add  d                                           ; $5fe7: $82
	ld   de, $2611                                   ; $5fe8: $11 $11 $26
	cp   [hl]                                        ; $5feb: $be
	rst  $38                                         ; $5fec: $ff
	rst  $38                                         ; $5fed: $ff
	rst  $38                                         ; $5fee: $ff
	rst  $38                                         ; $5fef: $ff
	jp   z, $3275                                    ; $5ff0: $ca $75 $32

	ld   [hl+], a                                    ; $5ff3: $22
	ld   de, $1122                                   ; $5ff4: $11 $22 $11
	ld   de, $1111                                   ; $5ff7: $11 $11 $11
	ld   de, $1711                                   ; $5ffa: $11 $11 $17
	rst  $28                                         ; $5ffd: $ef
	rst  $38                                         ; $5ffe: $ff
	rst  $38                                         ; $5fff: $ff
	rst  $38                                         ; $6000: $ff
	rst  $38                                         ; $6001: $ff
	ld   sp, hl                                      ; $6002: $f9
	dec  [hl]                                        ; $6003: $35
	ld   de, $5921                                   ; $6004: $11 $21 $59
	sbc  a                                           ; $6007: $9f
	rst  $38                                         ; $6008: $ff
	rst  $38                                         ; $6009: $ff
	rst  $38                                         ; $600a: $ff
	rst  $38                                         ; $600b: $ff
	rst  ToBoot                                         ; $600c: $c7
	add  h                                           ; $600d: $84
	inc  h                                           ; $600e: $24
	inc  de                                          ; $600f: $13
	ld   d, c                                        ; $6010: $51
	ld   [hl+], a                                    ; $6011: $22
	ld   de, $1111                                   ; $6012: $11 $11 $11
	ld   de, $1111                                   ; $6015: $11 $11 $11
	inc  l                                           ; $6018: $2c
	rst  $38                                         ; $6019: $ff
	rst  $38                                         ; $601a: $ff
	rst  $38                                         ; $601b: $ff
	rst  $38                                         ; $601c: $ff
	rst  $38                                         ; $601d: $ff
	push bc                                          ; $601e: $c5
	inc  sp                                          ; $601f: $33
	ld   [de], a                                     ; $6020: $12
	ld   b, e                                        ; $6021: $43
	ld   a, d                                        ; $6022: $7a
	rst  $38                                         ; $6023: $ff
	rst  $38                                         ; $6024: $ff
	rst  $38                                         ; $6025: $ff
	rst  $38                                         ; $6026: $ff
	db   $dd                                         ; $6027: $dd
	add  h                                           ; $6028: $84
	ld   d, h                                        ; $6029: $54
	inc  [hl]                                        ; $602a: $34
	ld   b, l                                        ; $602b: $45
	ld   d, e                                        ; $602c: $53
	ld   b, d                                        ; $602d: $42
	ld   de, $1111                                   ; $602e: $11 $11 $11
	ld   de, $1611                                   ; $6031: $11 $11 $16
	sbc  l                                           ; $6034: $9d
	rst  $38                                         ; $6035: $ff
	rst  $38                                         ; $6036: $ff
	rst  $38                                         ; $6037: $ff
	rst  $38                                         ; $6038: $ff
	ld   a, [$2761]                                  ; $6039: $fa $61 $27
	halt                                             ; $603c: $76
	ld   e, b                                        ; $603d: $58
	rst  $38                                         ; $603e: $ff
	rst  $38                                         ; $603f: $ff
	rst  $38                                         ; $6040: $ff
	rst  $38                                         ; $6041: $ff
	db   $fc                                         ; $6042: $fc
	ld   h, [hl]                                     ; $6043: $66
	ld   d, [hl]                                     ; $6044: $56
	ld   d, d                                        ; $6045: $52
	ld   d, a                                        ; $6046: $57
	ld   h, [hl]                                     ; $6047: $66
	ld   sp, $1111                                   ; $6048: $31 $11 $11
	ld   de, $1111                                   ; $604b: $11 $11 $11
	inc  d                                           ; $604e: $14
	adc  [hl]                                        ; $604f: $8e
	rst  $38                                         ; $6050: $ff
	rst  $38                                         ; $6051: $ff
	rst  $38                                         ; $6052: $ff
	rst  $38                                         ; $6053: $ff
	db   $fc                                         ; $6054: $fc
	ld   [hl], l                                     ; $6055: $75
	ld   b, l                                        ; $6056: $45
	xor  b                                           ; $6057: $a8
	sbc  h                                           ; $6058: $9c
	rst  JumpTable                                         ; $6059: $df
	rst  $38                                         ; $605a: $ff
	rst  $38                                         ; $605b: $ff
	rst  $38                                         ; $605c: $ff
	jp   c, Jump_0de_5395                            ; $605d: $da $95 $53

	ld   [hl], $67                                   ; $6060: $36 $67

jr_0de_6062:
	sub  h                                           ; $6062: $94
	ld   hl, $1111                                   ; $6063: $21 $11 $11
	ld   de, $1111                                   ; $6066: $11 $11 $11
	jr   z, @+$01                                    ; $6069: $28 $ff

	rst  $38                                         ; $606b: $ff
	rst  $38                                         ; $606c: $ff
	rst  $38                                         ; $606d: $ff
	rst  $38                                         ; $606e: $ff
	jp   c, Jump_0de_6986                            ; $606f: $da $86 $69

	xor  l                                           ; $6072: $ad
	db   $ed                                         ; $6073: $ed
	rst  $38                                         ; $6074: $ff
	rst  $38                                         ; $6075: $ff
	rst  $38                                         ; $6076: $ff
	ei                                               ; $6077: $fb
	sbc  b                                           ; $6078: $98
	ld   d, a                                        ; $6079: $57
	ld   h, l                                        ; $607a: $65
	ld   h, l                                        ; $607b: $65
	ld   [hl], a                                     ; $607c: $77
	ld   sp, $1111                                   ; $607d: $31 $11 $11
	ld   de, $1111                                   ; $6080: $11 $11 $11
	jr   z, jr_0de_6062                              ; $6083: $28 $dd

	rst  $38                                         ; $6085: $ff
	rst  $38                                         ; $6086: $ff
	rst  $38                                         ; $6087: $ff
	db   $fd                                         ; $6088: $fd
	call c, Call_0de_698a                            ; $6089: $dc $8a $69
	ei                                               ; $608c: $fb
	rst  $28                                         ; $608d: $ef
	rst  $38                                         ; $608e: $ff
	rst  $38                                         ; $608f: $ff
	rst  $38                                         ; $6090: $ff
	db   $fc                                         ; $6091: $fc
	ld   l, c                                        ; $6092: $69
	ld   h, l                                        ; $6093: $65
	sub  l                                           ; $6094: $95
	ld   d, [hl]                                     ; $6095: $56
	ld   [hl], $21                                   ; $6096: $36 $21
	ld   de, $1111                                   ; $6098: $11 $11 $11
	ld   de, $5d11                                   ; $609b: $11 $11 $5d
	rst  $38                                         ; $609e: $ff
	rst  $38                                         ; $609f: $ff
	rst  $38                                         ; $60a0: $ff
	rst  $38                                         ; $60a1: $ff
	ei                                               ; $60a2: $fb
	call z, $aacc                                    ; $60a3: $cc $cc $aa
	cp   h                                           ; $60a6: $bc
	rst  $38                                         ; $60a7: $ff
	rst  $38                                         ; $60a8: $ff
	rst  $38                                         ; $60a9: $ff
	rst  $38                                         ; $60aa: $ff
	ret                                              ; $60ab: $c9


	ld   h, [hl]                                     ; $60ac: $66
	sbc  c                                           ; $60ad: $99
	ld   [hl], d                                     ; $60ae: $72
	ld   de, $1111                                   ; $60af: $11 $11 $11
	ld   de, $1111                                   ; $60b2: $11 $11 $11
	ld   de, $af35                                   ; $60b5: $11 $35 $af
	rst  $38                                         ; $60b8: $ff
	rst  $38                                         ; $60b9: $ff
	rst  $38                                         ; $60ba: $ff
	rst  $38                                         ; $60bb: $ff
	rst  $38                                         ; $60bc: $ff
	jp   z, $ccfd                                    ; $60bd: $ca $fd $cc

	xor  a                                           ; $60c0: $af
	db   $fd                                         ; $60c1: $fd
	db   $fd                                         ; $60c2: $fd
	xor  $aa                                         ; $60c3: $ee $aa
	add  l                                           ; $60c5: $85
	halt                                             ; $60c6: $76
	ld   b, h                                        ; $60c7: $44
	ld   hl, $1111                                   ; $60c8: $21 $11 $11
	ld   de, $1111                                   ; $60cb: $11 $11 $11
	ld   [de], a                                     ; $60ce: $12
	ld   a, b                                        ; $60cf: $78
	rst  $38                                         ; $60d0: $ff
	rst  $38                                         ; $60d1: $ff
	rst  $38                                         ; $60d2: $ff
	rst  $38                                         ; $60d3: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60d4: $cf
	call $fffe                                       ; $60d5: $cd $fe $ff
	sbc  a                                           ; $60d8: $9f
	db   $fc                                         ; $60d9: $fc
	ld   sp, hl                                      ; $60da: $f9
	cp   [hl]                                        ; $60db: $be
	ld   e, d                                        ; $60dc: $5a
	or   d                                           ; $60dd: $b2
	ld   d, e                                        ; $60de: $53
	add  hl, hl                                      ; $60df: $29
	ld   hl, $1111                                   ; $60e0: $21 $11 $11
	ld   de, $1111                                   ; $60e3: $11 $11 $11
	ld   de, $ff5f                                   ; $60e6: $11 $5f $ff
	rst  $38                                         ; $60e9: $ff
	rst  $38                                         ; $60ea: $ff
	rst  $38                                         ; $60eb: $ff
	db   $fc                                         ; $60ec: $fc
	rst  $38                                         ; $60ed: $ff
	rst  $38                                         ; $60ee: $ff
	adc  $ff                                         ; $60ef: $ce $ff
	rst  $38                                         ; $60f1: $ff
	rst  JumpTable                                         ; $60f2: $df
	cp   b                                           ; $60f3: $b8
	rst  ToBoot                                         ; $60f4: $c7
	ld   d, l                                        ; $60f5: $55
	dec  [hl]                                        ; $60f6: $35
	ld   de, $1111                                   ; $60f7: $11 $11 $11
	ld   de, $1111                                   ; $60fa: $11 $11 $11
	ld   de, $af15                                   ; $60fd: $11 $15 $af
	rst  $38                                         ; $6100: $ff
	rst  $38                                         ; $6101: $ff
	rst  $38                                         ; $6102: $ff
	rst  $38                                         ; $6103: $ff
	cp   $ff                                         ; $6104: $fe $ff
	rst  $38                                         ; $6106: $ff
	call c, $fffd                                    ; $6107: $dc $fd $ff
	sbc  $a8                                         ; $610a: $de $a8
	and  l                                           ; $610c: $a5
	ld   b, e                                        ; $610d: $43
	ld   de, $1111                                   ; $610e: $11 $11 $11
	ld   de, $1111                                   ; $6111: $11 $11 $11
	ld   de, $af11                                   ; $6114: $11 $11 $af
	rst  $38                                         ; $6117: $ff
	rst  $38                                         ; $6118: $ff
	rst  $38                                         ; $6119: $ff
	rst  $38                                         ; $611a: $ff
	rst  $38                                         ; $611b: $ff
	rst  $38                                         ; $611c: $ff
	rst  $38                                         ; $611d: $ff
	rst  $38                                         ; $611e: $ff
	rst  $28                                         ; $611f: $ef
	ei                                               ; $6120: $fb
	rst  $38                                         ; $6121: $ff
	xor  $55                                         ; $6122: $ee $55
	ld   b, c                                        ; $6124: $41
	ld   sp, $1111                                   ; $6125: $31 $11 $11
	ld   de, $1111                                   ; $6128: $11 $11 $11
	ld   de, $cf13                                   ; $612b: $11 $13 $cf
	rst  $38                                         ; $612e: $ff
	rst  $38                                         ; $612f: $ff
	rst  $38                                         ; $6130: $ff
	rst  $38                                         ; $6131: $ff
	rst  $38                                         ; $6132: $ff
	rst  JumpTable                                         ; $6133: $df
	rst  $38                                         ; $6134: $ff
	cp   $cf                                         ; $6135: $fe $cf
	cp   $ff                                         ; $6137: $fe $ff
	ei                                               ; $6139: $fb
	ld   b, h                                        ; $613a: $44
	ld   sp, $1111                                   ; $613b: $31 $11 $11
	ld   de, $1111                                   ; $613e: $11 $11 $11
	ld   de, $1811                                   ; $6141: $11 $11 $18
	rst  $38                                         ; $6144: $ff
	rst  $38                                         ; $6145: $ff
	rst  $38                                         ; $6146: $ff
	rst  $38                                         ; $6147: $ff
	rst  $38                                         ; $6148: $ff
	rst  $38                                         ; $6149: $ff
	rst  $38                                         ; $614a: $ff
	rst  $38                                         ; $614b: $ff
	rst  $28                                         ; $614c: $ef
	xor  $ff                                         ; $614d: $ee $ff
	ld   [$44aa], a                                  ; $614f: $ea $aa $44
	inc  sp                                          ; $6152: $33
	ld   de, $1111                                   ; $6153: $11 $11 $11
	ld   de, $1111                                   ; $6156: $11 $11 $11
	ld   [de], a                                     ; $6159: $12
	ld   a, a                                        ; $615a: $7f
	rst  $38                                         ; $615b: $ff
	rst  $38                                         ; $615c: $ff
	rst  $38                                         ; $615d: $ff
	rst  $38                                         ; $615e: $ff
	rst  $38                                         ; $615f: $ff
	db   $fd                                         ; $6160: $fd
	rst  $38                                         ; $6161: $ff
	rst  $38                                         ; $6162: $ff
	db   $dd                                         ; $6163: $dd
	cp   e                                           ; $6164: $bb
	db   $fd                                         ; $6165: $fd
	or   a                                           ; $6166: $b7
	ld   h, a                                        ; $6167: $67
	ld   d, d                                        ; $6168: $52
	ld   de, $1111                                   ; $6169: $11 $11 $11
	ld   de, $1111                                   ; $616c: $11 $11 $11
	inc  de                                          ; $616f: $13
	ld   e, l                                        ; $6170: $5d
	rst  $38                                         ; $6171: $ff
	rst  $38                                         ; $6172: $ff
	rst  $38                                         ; $6173: $ff
	cp   $ff                                         ; $6174: $fe $ff
	rst  $38                                         ; $6176: $ff
	rst  $38                                         ; $6177: $ff
	rst  $38                                         ; $6178: $ff
	rst  $38                                         ; $6179: $ff
	xor  c                                           ; $617a: $a9
	jp   z, Jump_0de_67ac                            ; $617b: $ca $ac $67

	ld   de, $1111                                   ; $617e: $11 $11 $11
	ld   de, $1111                                   ; $6181: $11 $11 $11
	ld   de, $af16                                   ; $6184: $11 $16 $af
	rst  $38                                         ; $6187: $ff
	rst  $38                                         ; $6188: $ff
	rst  $38                                         ; $6189: $ff
	rst  $28                                         ; $618a: $ef
	db   $fc                                         ; $618b: $fc
	db   $fc                                         ; $618c: $fc
	rst  $28                                         ; $618d: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $618e: $cf
	ei                                               ; $618f: $fb
	ld   [$689c], a                                  ; $6190: $ea $9c $68
	ld   h, d                                        ; $6193: $62
	ld   de, $1111                                   ; $6194: $11 $11 $11
	ld   de, $1111                                   ; $6197: $11 $11 $11
	ld   de, $9f27                                   ; $619a: $11 $27 $9f
	rst  $38                                         ; $619d: $ff
	db   $fc                                         ; $619e: $fc
	rst  $38                                         ; $619f: $ff
	rst  $38                                         ; $61a0: $ff
	rst  $38                                         ; $61a1: $ff
	db   $fc                                         ; $61a2: $fc
	cp   $fe                                         ; $61a3: $fe $fe
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61a5: $cf
	jp   z, $52b7                                    ; $61a6: $ca $b7 $52

	ld   [de], a                                     ; $61a9: $12
	ld   de, $1111                                   ; $61aa: $11 $11 $11
	ld   de, $1111                                   ; $61ad: $11 $11 $11
	ld   [de], a                                     ; $61b0: $12
	adc  b                                           ; $61b1: $88
	rst  $38                                         ; $61b2: $ff
	rst  $38                                         ; $61b3: $ff
	rst  $38                                         ; $61b4: $ff
	db   $fc                                         ; $61b5: $fc
	rst  $38                                         ; $61b6: $ff
	db   $fd                                         ; $61b7: $fd
	rst  $38                                         ; $61b8: $ff
	rst  $38                                         ; $61b9: $ff
	cp   $c7                                         ; $61ba: $fe $c7
	sub  a                                           ; $61bc: $97
	ld   c, c                                        ; $61bd: $49
	add  l                                           ; $61be: $85
	ld   sp, $1111                                   ; $61bf: $31 $11 $11
	ld   de, $1111                                   ; $61c2: $11 $11 $11
	ld   de, $ef17                                   ; $61c5: $11 $17 $ef
	rst  $38                                         ; $61c8: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61c9: $cf
	rst  $38                                         ; $61ca: $ff
	cp   $ff                                         ; $61cb: $fe $ff
	rst  JumpTable                                         ; $61cd: $df
	rst  $38                                         ; $61ce: $ff
	db   $fd                                         ; $61cf: $fd
	set  1, e                                        ; $61d0: $cb $cb
	and  a                                           ; $61d2: $a7
	inc  hl                                          ; $61d3: $23
	ld   de, $1121                                   ; $61d4: $11 $21 $11
	ld   de, $1111                                   ; $61d7: $11 $11 $11
	ld   de, $ab17                                   ; $61da: $11 $17 $ab
	rst  $28                                         ; $61dd: $ef
	ei                                               ; $61de: $fb
	rst  $38                                         ; $61df: $ff
	rst  $38                                         ; $61e0: $ff
	rst  $38                                         ; $61e1: $ff
	cp   $ff                                         ; $61e2: $fe $ff
	rst  $38                                         ; $61e4: $ff
	jp   hl                                          ; $61e5: $e9


	res  1, e                                        ; $61e6: $cb $8b
	sub  l                                           ; $61e8: $95
	ld   b, c                                        ; $61e9: $41
	ld   de, $1111                                   ; $61ea: $11 $11 $11
	ld   de, $1111                                   ; $61ed: $11 $11 $11
	ld   de, $6f35                                   ; $61f0: $11 $35 $6f
	rst  $38                                         ; $61f3: $ff
	db   $fd                                         ; $61f4: $fd
	rst  $38                                         ; $61f5: $ff
	rst  $38                                         ; $61f6: $ff
	rst  $38                                         ; $61f7: $ff
	db   $fd                                         ; $61f8: $fd
	db   $fd                                         ; $61f9: $fd
	rst  $28                                         ; $61fa: $ef
	call z, $9689                                    ; $61fb: $cc $89 $96
	ld   [hl], l                                     ; $61fe: $75
	ld   sp, $1111                                   ; $61ff: $31 $11 $11
	inc  de                                          ; $6202: $13
	ld   sp, $1111                                   ; $6203: $31 $11 $11
	scf                                              ; $6206: $37
	call $dfdf                                       ; $6207: $cd $df $df
	db   $fd                                         ; $620a: $fd
	rst  $38                                         ; $620b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $620c: $cf
	rst  $38                                         ; $620d: $ff
	db   $fc                                         ; $620e: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $620f: $cf
	xor  h                                           ; $6210: $ac
	ret  c                                           ; $6211: $d8

	ret                                              ; $6212: $c9


	ld   b, a                                        ; $6213: $47
	ld   hl, $1221                                   ; $6214: $21 $21 $12
	ld   [de], a                                     ; $6217: $12
	ld   hl, $1111                                   ; $6218: $21 $11 $11
	ld   [de], a                                     ; $621b: $12
	ld   l, b                                        ; $621c: $68
	xor  h                                           ; $621d: $ac
	rst  $38                                         ; $621e: $ff
	db   $fd                                         ; $621f: $fd
	rst  JumpTable                                         ; $6220: $df
	cp   a                                           ; $6221: $bf
	rst  $38                                         ; $6222: $ff
	cp   $be                                         ; $6223: $fe $be
	db   $dd                                         ; $6225: $dd
	jp   c, Jump_0de_6698                            ; $6226: $da $98 $66

	ld   h, h                                        ; $6229: $64
	ld   [hl-], a                                    ; $622a: $32
	ld   de, $6513                                   ; $622b: $11 $13 $65
	ld   sp, $1111                                   ; $622e: $31 $11 $11
	ld   d, [hl]                                     ; $6231: $56
	adc  e                                           ; $6232: $8b
	sbc  e                                           ; $6233: $9b
	db   $fc                                         ; $6234: $fc
	sbc  $cf                                         ; $6235: $de $cf
	rst  $38                                         ; $6237: $ff
	db   $fd                                         ; $6238: $fd
	db   $fd                                         ; $6239: $fd
	sbc  c                                           ; $623a: $99
	call c, $a9cb                                    ; $623b: $dc $cb $a9
	ld   h, e                                        ; $623e: $63
	ld   d, h                                        ; $623f: $54
	inc  sp                                          ; $6240: $33
	inc  de                                          ; $6241: $13
	ld   sp, $2233                                   ; $6242: $31 $33 $22
	ld   hl, $6924                                   ; $6245: $21 $24 $69
	ld   h, a                                        ; $6248: $67
	cp   e                                           ; $6249: $bb
	cp   d                                           ; $624a: $ba
	cp   h                                           ; $624b: $bc
	xor  [hl]                                        ; $624c: $ae
	xor  $fe                                         ; $624d: $ee $fe
	db   $ec                                         ; $624f: $ec
	xor  e                                           ; $6250: $ab
	add  a                                           ; $6251: $87
	sbc  d                                           ; $6252: $9a
	cp   d                                           ; $6253: $ba
	add  a                                           ; $6254: $87
	ld   b, e                                        ; $6255: $43
	inc  sp                                          ; $6256: $33
	inc  [hl]                                        ; $6257: $34
	ld   b, e                                        ; $6258: $43
	ld   h, [hl]                                     ; $6259: $66
	ld   b, e                                        ; $625a: $43
	ld   [de], a                                     ; $625b: $12
	inc  [hl]                                        ; $625c: $34
	ld   a, b                                        ; $625d: $78
	adc  d                                           ; $625e: $8a
	xor  d                                           ; $625f: $aa
	ld   [hl], a                                     ; $6260: $77
	xor  h                                           ; $6261: $ac
	cp   h                                           ; $6262: $bc
	rst  $28                                         ; $6263: $ef
	cp   d                                           ; $6264: $ba
	cp   c                                           ; $6265: $b9
	adc  c                                           ; $6266: $89
	set  1, d                                        ; $6267: $cb $ca
	sub  [hl]                                        ; $6269: $96
	ld   d, a                                        ; $626a: $57
	ld   b, h                                        ; $626b: $44
	ld   d, l                                        ; $626c: $55
	ld   d, l                                        ; $626d: $55
	ld   h, [hl]                                     ; $626e: $66
	ld   d, h                                        ; $626f: $54
	ld   b, e                                        ; $6270: $43
	inc  [hl]                                        ; $6271: $34
	ld   l, b                                        ; $6272: $68
	sbc  d                                           ; $6273: $9a
	adc  c                                           ; $6274: $89
	ld   h, [hl]                                     ; $6275: $66
	sbc  b                                           ; $6276: $98
	xor  e                                           ; $6277: $ab
	sbc  e                                           ; $6278: $9b
	call z, $88c9                                    ; $6279: $cc $c9 $88
	ld   a, c                                        ; $627c: $79
	xor  e                                           ; $627d: $ab
	cp   e                                           ; $627e: $bb
	add  a                                           ; $627f: $87
	ld   h, [hl]                                     ; $6280: $66
	halt                                             ; $6281: $76
	ld   h, a                                        ; $6282: $67
	ld   h, [hl]                                     ; $6283: $66
	ld   h, [hl]                                     ; $6284: $66
	ld   h, h                                        ; $6285: $64
	ld   b, l                                        ; $6286: $45
	ld   d, [hl]                                     ; $6287: $56
	adc  c                                           ; $6288: $89
	xor  b                                           ; $6289: $a8
	ld   [hl], l                                     ; $628a: $75
	ld   d, l                                        ; $628b: $55
	ld   a, c                                        ; $628c: $79
	xor  e                                           ; $628d: $ab
	xor  c                                           ; $628e: $a9
	sbc  c                                           ; $628f: $99
	xor  e                                           ; $6290: $ab
	xor  c                                           ; $6291: $a9
	sbc  c                                           ; $6292: $99
	adc  b                                           ; $6293: $88
	adc  b                                           ; $6294: $88
	xor  b                                           ; $6295: $a8
	halt                                             ; $6296: $76
	ld   l, b                                        ; $6297: $68
	adc  b                                           ; $6298: $88
	adc  c                                           ; $6299: $89
	add  a                                           ; $629a: $87
	halt                                             ; $629b: $76
	ld   [hl], a                                     ; $629c: $77
	ld   h, [hl]                                     ; $629d: $66
	ld   d, [hl]                                     ; $629e: $56
	ld   [hl], a                                     ; $629f: $77
	adc  b                                           ; $62a0: $88
	adc  c                                           ; $62a1: $89
	sbc  b                                           ; $62a2: $98
	add  a                                           ; $62a3: $87
	ld   [hl], a                                     ; $62a4: $77
	ld   a, d                                        ; $62a5: $7a
	cp   c                                           ; $62a6: $b9
	adc  c                                           ; $62a7: $89
	sbc  c                                           ; $62a8: $99
	xor  c                                           ; $62a9: $a9
	sbc  b                                           ; $62aa: $98
	adc  b                                           ; $62ab: $88
	xor  c                                           ; $62ac: $a9
	xor  b                                           ; $62ad: $a8
	ld   a, b                                        ; $62ae: $78
	halt                                             ; $62af: $76
	ld   [hl], a                                     ; $62b0: $77
	adc  b                                           ; $62b1: $88
	adc  b                                           ; $62b2: $88
	halt                                             ; $62b3: $76
	ld   h, a                                        ; $62b4: $67
	adc  c                                           ; $62b5: $89
	add  a                                           ; $62b6: $87
	adc  b                                           ; $62b7: $88
	sbc  b                                           ; $62b8: $98
	ld   [hl], a                                     ; $62b9: $77
	adc  d                                           ; $62ba: $8a
	cp   d                                           ; $62bb: $ba
	sbc  c                                           ; $62bc: $99
	add  a                                           ; $62bd: $87
	ld   a, b                                        ; $62be: $78
	ld   a, b                                        ; $62bf: $78
	sbc  b                                           ; $62c0: $98
	sbc  c                                           ; $62c1: $99
	xor  d                                           ; $62c2: $aa
	sbc  d                                           ; $62c3: $9a
	add  a                                           ; $62c4: $87
	ld   a, b                                        ; $62c5: $78
	adc  c                                           ; $62c6: $89
	adc  b                                           ; $62c7: $88
	xor  c                                           ; $62c8: $a9
	ld   [hl], a                                     ; $62c9: $77
	ld   a, b                                        ; $62ca: $78
	adc  b                                           ; $62cb: $88
	adc  b                                           ; $62cc: $88
	adc  b                                           ; $62cd: $88
	add  a                                           ; $62ce: $87
	add  a                                           ; $62cf: $87
	ld   a, b                                        ; $62d0: $78
	adc  b                                           ; $62d1: $88
	sbc  b                                           ; $62d2: $98
	sbc  c                                           ; $62d3: $99
	adc  c                                           ; $62d4: $89
	adc  b                                           ; $62d5: $88
	adc  c                                           ; $62d6: $89
	adc  b                                           ; $62d7: $88
	adc  b                                           ; $62d8: $88
	sbc  c                                           ; $62d9: $99
	ld   [hl], a                                     ; $62da: $77
	adc  c                                           ; $62db: $89
	xor  c                                           ; $62dc: $a9
	ld   a, b                                        ; $62dd: $78
	add  a                                           ; $62de: $87
	add  a                                           ; $62df: $87
	ld   [hl], a                                     ; $62e0: $77
	ld   a, c                                        ; $62e1: $79
	sbc  b                                           ; $62e2: $98
	xor  c                                           ; $62e3: $a9
	adc  c                                           ; $62e4: $89
	add  a                                           ; $62e5: $87
	add  a                                           ; $62e6: $87
	ld   a, b                                        ; $62e7: $78
	adc  c                                           ; $62e8: $89
	add  a                                           ; $62e9: $87
	ld   [hl], a                                     ; $62ea: $77
	adc  b                                           ; $62eb: $88
	sbc  b                                           ; $62ec: $98
	adc  c                                           ; $62ed: $89
	sbc  b                                           ; $62ee: $98
	sbc  b                                           ; $62ef: $98
	adc  b                                           ; $62f0: $88
	add  a                                           ; $62f1: $87
	adc  c                                           ; $62f2: $89
	sbc  b                                           ; $62f3: $98
	adc  b                                           ; $62f4: $88
	sbc  b                                           ; $62f5: $98
	adc  b                                           ; $62f6: $88
	adc  b                                           ; $62f7: $88
	adc  b                                           ; $62f8: $88
	adc  b                                           ; $62f9: $88
	adc  c                                           ; $62fa: $89
	ld   [hl], a                                     ; $62fb: $77
	ld   h, a                                        ; $62fc: $67
	ld   a, c                                        ; $62fd: $79
	sbc  d                                           ; $62fe: $9a
	sbc  b                                           ; $62ff: $98
	sub  a                                           ; $6300: $97
	ld   [hl], a                                     ; $6301: $77
	ld   a, b                                        ; $6302: $78
	adc  c                                           ; $6303: $89
	sbc  c                                           ; $6304: $99
	sbc  c                                           ; $6305: $99
	add  a                                           ; $6306: $87
	ld   [hl], a                                     ; $6307: $77
	adc  b                                           ; $6308: $88
	sbc  c                                           ; $6309: $99
	sbc  c                                           ; $630a: $99
	adc  b                                           ; $630b: $88
	adc  b                                           ; $630c: $88
	sbc  c                                           ; $630d: $99
	adc  b                                           ; $630e: $88
	adc  b                                           ; $630f: $88
	sbc  c                                           ; $6310: $99
	ld   [hl], a                                     ; $6311: $77
	adc  b                                           ; $6312: $88
	adc  c                                           ; $6313: $89
	ld   a, c                                        ; $6314: $79
	sbc  b                                           ; $6315: $98
	add  a                                           ; $6316: $87
	adc  b                                           ; $6317: $88
	adc  c                                           ; $6318: $89
	adc  b                                           ; $6319: $88
	sbc  b                                           ; $631a: $98
	sbc  c                                           ; $631b: $99
	sbc  c                                           ; $631c: $99
	ld   [hl], a                                     ; $631d: $77
	ld   [hl], a                                     ; $631e: $77
	adc  c                                           ; $631f: $89
	sbc  b                                           ; $6320: $98
	adc  c                                           ; $6321: $89
	adc  b                                           ; $6322: $88
	add  a                                           ; $6323: $87
	ld   a, b                                        ; $6324: $78
	adc  b                                           ; $6325: $88
	sub  a                                           ; $6326: $97
	ld   [hl], a                                     ; $6327: $77
	ld   a, b                                        ; $6328: $78
	add  a                                           ; $6329: $87
	adc  b                                           ; $632a: $88
	sbc  c                                           ; $632b: $99
	sbc  c                                           ; $632c: $99
	adc  b                                           ; $632d: $88
	add  a                                           ; $632e: $87
	ld   [hl], a                                     ; $632f: $77
	ld   [hl], a                                     ; $6330: $77
	adc  b                                           ; $6331: $88
	adc  b                                           ; $6332: $88
	sbc  c                                           ; $6333: $99
	sbc  b                                           ; $6334: $98
	adc  b                                           ; $6335: $88
	ld   a, b                                        ; $6336: $78
	adc  b                                           ; $6337: $88
	adc  b                                           ; $6338: $88
	adc  b                                           ; $6339: $88
	ld   a, b                                        ; $633a: $78
	adc  b                                           ; $633b: $88
	sbc  c                                           ; $633c: $99
	adc  c                                           ; $633d: $89
	add  a                                           ; $633e: $87
	ld   [hl], a                                     ; $633f: $77
	ld   [hl], a                                     ; $6340: $77
	adc  b                                           ; $6341: $88
	adc  c                                           ; $6342: $89
	adc  c                                           ; $6343: $89
	adc  b                                           ; $6344: $88
	adc  b                                           ; $6345: $88
	adc  b                                           ; $6346: $88
	adc  c                                           ; $6347: $89
	sbc  b                                           ; $6348: $98
	ld   a, b                                        ; $6349: $78
	adc  b                                           ; $634a: $88
	adc  b                                           ; $634b: $88
	adc  b                                           ; $634c: $88
	adc  c                                           ; $634d: $89
	adc  b                                           ; $634e: $88
	add  a                                           ; $634f: $87
	adc  c                                           ; $6350: $89
	adc  c                                           ; $6351: $89
	sbc  b                                           ; $6352: $98
	adc  b                                           ; $6353: $88
	adc  b                                           ; $6354: $88
	adc  b                                           ; $6355: $88
	adc  b                                           ; $6356: $88
	adc  b                                           ; $6357: $88
	adc  b                                           ; $6358: $88
	ld   a, b                                        ; $6359: $78
	sbc  b                                           ; $635a: $98
	sbc  c                                           ; $635b: $99
	adc  b                                           ; $635c: $88
	add  a                                           ; $635d: $87
	ld   [hl], a                                     ; $635e: $77
	ld   a, b                                        ; $635f: $78
	adc  b                                           ; $6360: $88
	sbc  c                                           ; $6361: $99
	adc  b                                           ; $6362: $88
	adc  b                                           ; $6363: $88
	add  a                                           ; $6364: $87
	ld   a, b                                        ; $6365: $78
	adc  b                                           ; $6366: $88
	sbc  c                                           ; $6367: $99
	adc  b                                           ; $6368: $88
	adc  b                                           ; $6369: $88
	adc  b                                           ; $636a: $88
	adc  c                                           ; $636b: $89
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
	ld   de, $1111                                   ; $6386: $11 $11 $11
	ld   de, $1111                                   ; $6389: $11 $11 $11
	ld   de, $1111                                   ; $638c: $11 $11 $11
	ld   de, $1111                                   ; $638f: $11 $11 $11
	ld   de, $1111                                   ; $6392: $11 $11 $11
	ld   de, $1111                                   ; $6395: $11 $11 $11
	ld   de, $1111                                   ; $6398: $11 $11 $11
	ld   de, $1111                                   ; $639b: $11 $11 $11
	ld   de, $1111                                   ; $639e: $11 $11 $11
	ld   de, $1111                                   ; $63a1: $11 $11 $11
	ld   de, $0011                                   ; $63a4: $11 $11 $00
	ld   c, b                                        ; $63a7: $48
	ld   de, $1111                                   ; $63a8: $11 $11 $11
	ld   de, $1111                                   ; $63ab: $11 $11 $11
	ld   de, $1111                                   ; $63ae: $11 $11 $11
	ld   de, $5413                                   ; $63b1: $11 $13 $54
	ld   d, h                                        ; $63b4: $54
	ld   d, h                                        ; $63b5: $54
	ld   b, c                                        ; $63b6: $41
	rra                                              ; $63b7: $1f
	rst  $38                                         ; $63b8: $ff
	pop  af                                          ; $63b9: $f1
	ld   de, $1211                                   ; $63ba: $11 $11 $12
	or   c                                           ; $63bd: $b1
	ld   de, $dd1c                                   ; $63be: $11 $1c $dd
	call z, $c1dd                                    ; $63c1: $cc $dd $c1
	ld   de, $1111                                   ; $63c4: $11 $11 $11
	ld   de, $1111                                   ; $63c7: $11 $11 $11
	ld   de, $1111                                   ; $63ca: $11 $11 $11
	ld   de, $1111                                   ; $63cd: $11 $11 $11
	ld   de, $5411                                   ; $63d0: $11 $11 $54
	ld   b, h                                        ; $63d3: $44
	and  d                                           ; $63d4: $a2
	ld   de, $5454                                   ; $63d5: $11 $54 $54
	ld   h, a                                        ; $63d8: $67
	ld   [hl], d                                     ; $63d9: $72
	ld   de, $1111                                   ; $63da: $11 $11 $11
	ld   de, $1112                                   ; $63dd: $11 $12 $11
	ld   [de], a                                     ; $63e0: $12
	ld   de, $1111                                   ; $63e1: $11 $11 $11
	ld   h, [hl]                                     ; $63e4: $66
	halt                                             ; $63e5: $76
	add  d                                           ; $63e6: $82
	ld   de, $8888                                   ; $63e7: $11 $88 $88
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
	adc  c                                           ; $6413: $89
	adc  b                                           ; $6414: $88
	adc  b                                           ; $6415: $88
	adc  b                                           ; $6416: $88
	adc  b                                           ; $6417: $88
	sbc  b                                           ; $6418: $98
	adc  b                                           ; $6419: $88
	adc  c                                           ; $641a: $89
	adc  b                                           ; $641b: $88
	adc  b                                           ; $641c: $88
	adc  b                                           ; $641d: $88
	sbc  b                                           ; $641e: $98
	adc  b                                           ; $641f: $88
	adc  b                                           ; $6420: $88
	adc  c                                           ; $6421: $89
	adc  b                                           ; $6422: $88
	adc  b                                           ; $6423: $88
	sbc  b                                           ; $6424: $98
	adc  b                                           ; $6425: $88
	adc  b                                           ; $6426: $88
	adc  b                                           ; $6427: $88
	adc  b                                           ; $6428: $88
	sbc  b                                           ; $6429: $98
	adc  b                                           ; $642a: $88
	adc  b                                           ; $642b: $88
	adc  b                                           ; $642c: $88
	adc  b                                           ; $642d: $88
	adc  c                                           ; $642e: $89
	adc  b                                           ; $642f: $88
	adc  b                                           ; $6430: $88
	adc  b                                           ; $6431: $88
	sbc  b                                           ; $6432: $98
	adc  b                                           ; $6433: $88
	adc  c                                           ; $6434: $89
	adc  b                                           ; $6435: $88
	adc  c                                           ; $6436: $89
	adc  b                                           ; $6437: $88
	adc  b                                           ; $6438: $88
	adc  b                                           ; $6439: $88
	adc  b                                           ; $643a: $88
	adc  c                                           ; $643b: $89
	adc  c                                           ; $643c: $89
	adc  b                                           ; $643d: $88
	sbc  b                                           ; $643e: $98
	sbc  b                                           ; $643f: $98
	adc  b                                           ; $6440: $88
	adc  b                                           ; $6441: $88
	adc  c                                           ; $6442: $89
	adc  b                                           ; $6443: $88
	sbc  b                                           ; $6444: $98
	adc  b                                           ; $6445: $88
	sbc  c                                           ; $6446: $99
	adc  b                                           ; $6447: $88
	adc  c                                           ; $6448: $89
	adc  b                                           ; $6449: $88
	adc  b                                           ; $644a: $88
	sbc  b                                           ; $644b: $98
	sbc  b                                           ; $644c: $98
	adc  b                                           ; $644d: $88
	adc  b                                           ; $644e: $88
	adc  c                                           ; $644f: $89
	adc  c                                           ; $6450: $89
	adc  c                                           ; $6451: $89
	adc  b                                           ; $6452: $88
	sbc  b                                           ; $6453: $98
	adc  b                                           ; $6454: $88
	adc  b                                           ; $6455: $88
	adc  b                                           ; $6456: $88
	sbc  b                                           ; $6457: $98
	adc  c                                           ; $6458: $89
	adc  b                                           ; $6459: $88
	adc  c                                           ; $645a: $89
	adc  b                                           ; $645b: $88
	adc  c                                           ; $645c: $89
	adc  b                                           ; $645d: $88
	adc  c                                           ; $645e: $89
	adc  b                                           ; $645f: $88
	sbc  b                                           ; $6460: $98
	sbc  b                                           ; $6461: $98
	adc  c                                           ; $6462: $89
	ld   a, b                                        ; $6463: $78
	adc  c                                           ; $6464: $89
	adc  b                                           ; $6465: $88
	adc  b                                           ; $6466: $88
	sbc  b                                           ; $6467: $98
	sbc  b                                           ; $6468: $98
	adc  c                                           ; $6469: $89
	adc  b                                           ; $646a: $88
	adc  b                                           ; $646b: $88
	sbc  c                                           ; $646c: $99
	adc  b                                           ; $646d: $88
	adc  b                                           ; $646e: $88
	adc  b                                           ; $646f: $88
	adc  b                                           ; $6470: $88
	adc  c                                           ; $6471: $89
	adc  c                                           ; $6472: $89
	sbc  b                                           ; $6473: $98
	sbc  b                                           ; $6474: $98
	adc  c                                           ; $6475: $89
	adc  b                                           ; $6476: $88
	adc  b                                           ; $6477: $88
	adc  c                                           ; $6478: $89
	adc  b                                           ; $6479: $88
	sbc  b                                           ; $647a: $98
	sbc  b                                           ; $647b: $98
	adc  b                                           ; $647c: $88
	sbc  b                                           ; $647d: $98
	adc  b                                           ; $647e: $88
	adc  b                                           ; $647f: $88
	adc  b                                           ; $6480: $88
	adc  b                                           ; $6481: $88
	sbc  b                                           ; $6482: $98
	sbc  b                                           ; $6483: $98
	adc  b                                           ; $6484: $88
	sbc  b                                           ; $6485: $98
	adc  b                                           ; $6486: $88
	adc  b                                           ; $6487: $88
	sbc  c                                           ; $6488: $99
	adc  b                                           ; $6489: $88
	adc  b                                           ; $648a: $88
	adc  b                                           ; $648b: $88
	adc  b                                           ; $648c: $88
	sbc  c                                           ; $648d: $99
	sub  a                                           ; $648e: $97
	adc  b                                           ; $648f: $88
	adc  b                                           ; $6490: $88
	adc  b                                           ; $6491: $88
	sbc  c                                           ; $6492: $99
	sbc  b                                           ; $6493: $98
	adc  b                                           ; $6494: $88
	sbc  b                                           ; $6495: $98
	adc  c                                           ; $6496: $89
	adc  b                                           ; $6497: $88
	adc  b                                           ; $6498: $88
	adc  c                                           ; $6499: $89
	adc  b                                           ; $649a: $88
	sbc  c                                           ; $649b: $99
	add  a                                           ; $649c: $87
	adc  c                                           ; $649d: $89
	sbc  b                                           ; $649e: $98
	adc  b                                           ; $649f: $88
	adc  c                                           ; $64a0: $89
	adc  b                                           ; $64a1: $88
	adc  b                                           ; $64a2: $88
	sbc  c                                           ; $64a3: $99
	adc  b                                           ; $64a4: $88
	sbc  b                                           ; $64a5: $98
	sbc  b                                           ; $64a6: $98
	adc  b                                           ; $64a7: $88
	adc  c                                           ; $64a8: $89
	adc  b                                           ; $64a9: $88
	ld   a, b                                        ; $64aa: $78
	adc  b                                           ; $64ab: $88
	adc  b                                           ; $64ac: $88
	sbc  b                                           ; $64ad: $98
	add  a                                           ; $64ae: $87
	adc  b                                           ; $64af: $88
	ld   a, c                                        ; $64b0: $79
	adc  b                                           ; $64b1: $88
	adc  b                                           ; $64b2: $88
	adc  b                                           ; $64b3: $88
	adc  b                                           ; $64b4: $88
	sub  a                                           ; $64b5: $97
	adc  c                                           ; $64b6: $89
	adc  b                                           ; $64b7: $88
	ld   a, b                                        ; $64b8: $78
	adc  c                                           ; $64b9: $89
	adc  b                                           ; $64ba: $88
	adc  b                                           ; $64bb: $88
	adc  b                                           ; $64bc: $88
	sbc  b                                           ; $64bd: $98
	sbc  b                                           ; $64be: $98
	adc  b                                           ; $64bf: $88
	adc  b                                           ; $64c0: $88
	adc  b                                           ; $64c1: $88
	adc  c                                           ; $64c2: $89
	ld   a, b                                        ; $64c3: $78
	adc  b                                           ; $64c4: $88
	add  a                                           ; $64c5: $87
	ld   a, b                                        ; $64c6: $78
	adc  c                                           ; $64c7: $89
	adc  b                                           ; $64c8: $88
	ld   a, c                                        ; $64c9: $79
	adc  c                                           ; $64ca: $89
	add  a                                           ; $64cb: $87
	sbc  b                                           ; $64cc: $98
	adc  b                                           ; $64cd: $88
	add  a                                           ; $64ce: $87
	adc  b                                           ; $64cf: $88
	ld   a, c                                        ; $64d0: $79
	adc  b                                           ; $64d1: $88
	ld   a, c                                        ; $64d2: $79
	ld   [hl], a                                     ; $64d3: $77
	sbc  b                                           ; $64d4: $98
	adc  b                                           ; $64d5: $88
	ld   a, b                                        ; $64d6: $78
	adc  b                                           ; $64d7: $88
	ld   [hl], a                                     ; $64d8: $77
	adc  b                                           ; $64d9: $88
	adc  b                                           ; $64da: $88
	add  a                                           ; $64db: $87
	add  a                                           ; $64dc: $87
	adc  c                                           ; $64dd: $89
	sbc  b                                           ; $64de: $98
	adc  b                                           ; $64df: $88
	ld   a, b                                        ; $64e0: $78
	adc  b                                           ; $64e1: $88
	add  a                                           ; $64e2: $87
	adc  b                                           ; $64e3: $88
	adc  b                                           ; $64e4: $88
	ld   a, b                                        ; $64e5: $78
	ld   a, c                                        ; $64e6: $79
	adc  b                                           ; $64e7: $88
	sub  a                                           ; $64e8: $97
	sbc  b                                           ; $64e9: $98
	adc  b                                           ; $64ea: $88
	ld   a, b                                        ; $64eb: $78
	adc  b                                           ; $64ec: $88
	ld   a, b                                        ; $64ed: $78
	ld   l, c                                        ; $64ee: $69
	add  a                                           ; $64ef: $87
	add  a                                           ; $64f0: $87
	ld   a, c                                        ; $64f1: $79
	add  a                                           ; $64f2: $87
	sbc  b                                           ; $64f3: $98
	ld   a, b                                        ; $64f4: $78
	adc  b                                           ; $64f5: $88
	add  a                                           ; $64f6: $87
	adc  b                                           ; $64f7: $88
	adc  b                                           ; $64f8: $88
	adc  b                                           ; $64f9: $88
	adc  b                                           ; $64fa: $88
	adc  b                                           ; $64fb: $88
	add  a                                           ; $64fc: $87
	add  [hl]                                        ; $64fd: $86
	adc  c                                           ; $64fe: $89
	ld   a, b                                        ; $64ff: $78
	ld   a, c                                        ; $6500: $79
	adc  c                                           ; $6501: $89
	ld   a, b                                        ; $6502: $78
	adc  b                                           ; $6503: $88
	add  a                                           ; $6504: $87
	add  a                                           ; $6505: $87
	ld   a, c                                        ; $6506: $79
	add  a                                           ; $6507: $87
	ld   a, c                                        ; $6508: $79
	add  a                                           ; $6509: $87
	add  a                                           ; $650a: $87
	ld   a, b                                        ; $650b: $78
	adc  b                                           ; $650c: $88
	ld   a, b                                        ; $650d: $78
	ld   a, c                                        ; $650e: $79
	ld   [hl], a                                     ; $650f: $77
	adc  c                                           ; $6510: $89
	ld   a, b                                        ; $6511: $78
	add  [hl]                                        ; $6512: $86
	sbc  b                                           ; $6513: $98
	ld   a, b                                        ; $6514: $78
	ld   a, c                                        ; $6515: $79
	sub  a                                           ; $6516: $97
	ld   a, b                                        ; $6517: $78
	adc  c                                           ; $6518: $89
	sbc  b                                           ; $6519: $98
	ld   a, c                                        ; $651a: $79
	sbc  b                                           ; $651b: $98
	add  a                                           ; $651c: $87
	ld   a, b                                        ; $651d: $78
	ld   a, c                                        ; $651e: $79
	add  a                                           ; $651f: $87
	add  a                                           ; $6520: $87
	ld   a, c                                        ; $6521: $79
	add  a                                           ; $6522: $87
	sub  a                                           ; $6523: $97
	adc  b                                           ; $6524: $88
	add  a                                           ; $6525: $87
	ld   a, b                                        ; $6526: $78
	ld   a, b                                        ; $6527: $78
	ld   a, b                                        ; $6528: $78
	sub  a                                           ; $6529: $97
	add  a                                           ; $652a: $87
	adc  c                                           ; $652b: $89
	adc  b                                           ; $652c: $88
	ld   a, b                                        ; $652d: $78
	add  a                                           ; $652e: $87
	sbc  b                                           ; $652f: $98
	ld   a, b                                        ; $6530: $78
	adc  b                                           ; $6531: $88
	add  a                                           ; $6532: $87
	ld   a, c                                        ; $6533: $79
	adc  b                                           ; $6534: $88
	adc  b                                           ; $6535: $88
	ld   a, b                                        ; $6536: $78
	adc  b                                           ; $6537: $88
	add  a                                           ; $6538: $87
	adc  b                                           ; $6539: $88
	adc  b                                           ; $653a: $88
	ld   [hl], a                                     ; $653b: $77
	adc  b                                           ; $653c: $88
	adc  b                                           ; $653d: $88
	adc  b                                           ; $653e: $88
	adc  b                                           ; $653f: $88
	adc  b                                           ; $6540: $88
	adc  b                                           ; $6541: $88
	ld   a, b                                        ; $6542: $78
	ld   a, c                                        ; $6543: $79
	add  a                                           ; $6544: $87
	sub  a                                           ; $6545: $97
	add  a                                           ; $6546: $87
	ld   a, c                                        ; $6547: $79
	ld   a, b                                        ; $6548: $78
	sbc  b                                           ; $6549: $98
	ld   a, b                                        ; $654a: $78
	sbc  b                                           ; $654b: $98
	ld   a, b                                        ; $654c: $78
	adc  b                                           ; $654d: $88
	sub  a                                           ; $654e: $97
	ld   [hl], a                                     ; $654f: $77
	adc  b                                           ; $6550: $88
	ld   a, b                                        ; $6551: $78
	add  a                                           ; $6552: $87
	adc  c                                           ; $6553: $89
	adc  b                                           ; $6554: $88
	ld   [hl], a                                     ; $6555: $77
	sbc  d                                           ; $6556: $9a
	add  a                                           ; $6557: $87
	sub  a                                           ; $6558: $97
	adc  b                                           ; $6559: $88
	sub  a                                           ; $655a: $97
	ld   a, b                                        ; $655b: $78
	adc  c                                           ; $655c: $89
	ld   a, b                                        ; $655d: $78
	add  a                                           ; $655e: $87
	add  a                                           ; $655f: $87
	sub  a                                           ; $6560: $97
	adc  c                                           ; $6561: $89
	ld   a, b                                        ; $6562: $78
	ld   [hl], a                                     ; $6563: $77
	ld   a, b                                        ; $6564: $78
	ld   [hl], a                                     ; $6565: $77
	sub  a                                           ; $6566: $97
	adc  b                                           ; $6567: $88
	sbc  b                                           ; $6568: $98
	add  a                                           ; $6569: $87
	ld   a, c                                        ; $656a: $79
	adc  b                                           ; $656b: $88
	ld   a, c                                        ; $656c: $79
	sub  a                                           ; $656d: $97
	ld   a, b                                        ; $656e: $78
	sbc  b                                           ; $656f: $98
	adc  b                                           ; $6570: $88
	adc  b                                           ; $6571: $88
	add  a                                           ; $6572: $87
	adc  b                                           ; $6573: $88
	adc  b                                           ; $6574: $88
	add  a                                           ; $6575: $87
	sbc  b                                           ; $6576: $98
	ld   a, b                                        ; $6577: $78
	add  a                                           ; $6578: $87
	sbc  b                                           ; $6579: $98
	adc  b                                           ; $657a: $88
	ld   a, c                                        ; $657b: $79
	ld   a, b                                        ; $657c: $78
	add  a                                           ; $657d: $87
	ld   [hl], a                                     ; $657e: $77
	add  a                                           ; $657f: $87
	sbc  b                                           ; $6580: $98
	adc  b                                           ; $6581: $88
	adc  b                                           ; $6582: $88
	ld   a, c                                        ; $6583: $79
	sub  a                                           ; $6584: $97
	ld   l, c                                        ; $6585: $69
	add  a                                           ; $6586: $87
	add  a                                           ; $6587: $87
	adc  c                                           ; $6588: $89
	add  a                                           ; $6589: $87
	adc  b                                           ; $658a: $88
	ld   a, c                                        ; $658b: $79
	add  a                                           ; $658c: $87
	adc  b                                           ; $658d: $88
	sbc  c                                           ; $658e: $99
	ld   [hl], a                                     ; $658f: $77
	adc  c                                           ; $6590: $89
	add  a                                           ; $6591: $87
	add  a                                           ; $6592: $87
	adc  b                                           ; $6593: $88
	adc  b                                           ; $6594: $88
	adc  c                                           ; $6595: $89
	ld   a, c                                        ; $6596: $79
	adc  b                                           ; $6597: $88
	ld   a, b                                        ; $6598: $78
	adc  b                                           ; $6599: $88
	ld   [hl], a                                     ; $659a: $77
	adc  b                                           ; $659b: $88
	sub  a                                           ; $659c: $97
	ld   a, b                                        ; $659d: $78
	adc  b                                           ; $659e: $88
	adc  b                                           ; $659f: $88
	add  a                                           ; $65a0: $87
	adc  b                                           ; $65a1: $88
	sbc  b                                           ; $65a2: $98
	adc  c                                           ; $65a3: $89
	ld   a, b                                        ; $65a4: $78
	adc  b                                           ; $65a5: $88
	add  a                                           ; $65a6: $87
	adc  b                                           ; $65a7: $88

Call_0de_65a8:
	ld   a, b                                        ; $65a8: $78
	sub  a                                           ; $65a9: $97
	ld   a, b                                        ; $65aa: $78
	sbc  b                                           ; $65ab: $98
	ld   [hl], a                                     ; $65ac: $77
	ld   a, b                                        ; $65ad: $78
	sbc  c                                           ; $65ae: $99
	ld   [hl], a                                     ; $65af: $77
	add  a                                           ; $65b0: $87
	adc  b                                           ; $65b1: $88
	adc  b                                           ; $65b2: $88
	add  a                                           ; $65b3: $87
	sbc  b                                           ; $65b4: $98
	ld   a, c                                        ; $65b5: $79
	ld   [hl], a                                     ; $65b6: $77
	sbc  c                                           ; $65b7: $99
	ld   a, b                                        ; $65b8: $78
	sub  a                                           ; $65b9: $97
	adc  b                                           ; $65ba: $88
	add  a                                           ; $65bb: $87
	adc  c                                           ; $65bc: $89
	add  a                                           ; $65bd: $87
	add  a                                           ; $65be: $87
	adc  c                                           ; $65bf: $89
	ld   [hl], a                                     ; $65c0: $77
	ld   a, b                                        ; $65c1: $78
	sbc  b                                           ; $65c2: $98
	ld   a, b                                        ; $65c3: $78
	add  a                                           ; $65c4: $87
	adc  b                                           ; $65c5: $88
	adc  b                                           ; $65c6: $88
	sub  a                                           ; $65c7: $97
	ld   [hl], a                                     ; $65c8: $77
	ld   a, b                                        ; $65c9: $78
	sbc  b                                           ; $65ca: $98
	ld   a, b                                        ; $65cb: $78
	sbc  b                                           ; $65cc: $98
	ld   [hl], a                                     ; $65cd: $77
	sbc  c                                           ; $65ce: $99
	add  a                                           ; $65cf: $87
	ld   a, b                                        ; $65d0: $78
	adc  b                                           ; $65d1: $88
	add  a                                           ; $65d2: $87
	adc  b                                           ; $65d3: $88
	ld   a, b                                        ; $65d4: $78
	adc  c                                           ; $65d5: $89
	ld   a, c                                        ; $65d6: $79
	ld   [hl], a                                     ; $65d7: $77
	sbc  b                                           ; $65d8: $98
	ld   a, b                                        ; $65d9: $78
	add  a                                           ; $65da: $87
	adc  c                                           ; $65db: $89
	sub  a                                           ; $65dc: $97
	ld   a, b                                        ; $65dd: $78
	adc  b                                           ; $65de: $88
	add  a                                           ; $65df: $87
	add  a                                           ; $65e0: $87
	ld   a, b                                        ; $65e1: $78
	add  a                                           ; $65e2: $87
	add  a                                           ; $65e3: $87
	ld   a, b                                        ; $65e4: $78
	adc  b                                           ; $65e5: $88
	adc  c                                           ; $65e6: $89
	sbc  b                                           ; $65e7: $98
	ld   a, b                                        ; $65e8: $78
	adc  b                                           ; $65e9: $88
	ld   [hl], a                                     ; $65ea: $77
	adc  b                                           ; $65eb: $88
	add  a                                           ; $65ec: $87
	ld   a, c                                        ; $65ed: $79
	sub  a                                           ; $65ee: $97
	ld   a, b                                        ; $65ef: $78
	adc  b                                           ; $65f0: $88
	ld   [hl], a                                     ; $65f1: $77
	sub  a                                           ; $65f2: $97
	add  a                                           ; $65f3: $87
	ld   a, c                                        ; $65f4: $79
	ld   a, b                                        ; $65f5: $78
	sub  a                                           ; $65f6: $97
	ld   l, b                                        ; $65f7: $68
	xor  c                                           ; $65f8: $a9
	ld   [hl], a                                     ; $65f9: $77
	sbc  b                                           ; $65fa: $98
	ld   [hl], a                                     ; $65fb: $77
	add  a                                           ; $65fc: $87
	adc  c                                           ; $65fd: $89
	ld   [hl], a                                     ; $65fe: $77
	sbc  b                                           ; $65ff: $98
	ld   a, b                                        ; $6600: $78
	ld   a, b                                        ; $6601: $78
	sbc  b                                           ; $6602: $98
	add  a                                           ; $6603: $87
	adc  b                                           ; $6604: $88
	add  a                                           ; $6605: $87
	adc  b                                           ; $6606: $88
	ld   [hl], a                                     ; $6607: $77
	adc  b                                           ; $6608: $88
	adc  b                                           ; $6609: $88
	add  a                                           ; $660a: $87
	adc  b                                           ; $660b: $88
	ld   a, b                                        ; $660c: $78
	ld   a, b                                        ; $660d: $78
	adc  b                                           ; $660e: $88
	adc  b                                           ; $660f: $88
	adc  b                                           ; $6610: $88
	adc  b                                           ; $6611: $88
	ld   [hl], a                                     ; $6612: $77
	adc  b                                           ; $6613: $88
	ld   a, b                                        ; $6614: $78
	add  [hl]                                        ; $6615: $86
	ld   a, c                                        ; $6616: $79
	adc  b                                           ; $6617: $88
	add  a                                           ; $6618: $87
	ld   a, b                                        ; $6619: $78
	add  a                                           ; $661a: $87
	ld   h, a                                        ; $661b: $67
	ld   [hl], a                                     ; $661c: $77
	add  a                                           ; $661d: $87
	ld   [hl], a                                     ; $661e: $77
	adc  b                                           ; $661f: $88
	adc  b                                           ; $6620: $88
	ld   a, b                                        ; $6621: $78
	adc  b                                           ; $6622: $88
	adc  c                                           ; $6623: $89
	sbc  b                                           ; $6624: $98
	adc  b                                           ; $6625: $88
	ld   [hl], a                                     ; $6626: $77
	adc  b                                           ; $6627: $88
	sbc  c                                           ; $6628: $99
	sbc  b                                           ; $6629: $98
	adc  b                                           ; $662a: $88
	adc  b                                           ; $662b: $88
	sbc  c                                           ; $662c: $99
	add  a                                           ; $662d: $87
	ld   a, b                                        ; $662e: $78
	adc  c                                           ; $662f: $89
	sbc  c                                           ; $6630: $99
	sbc  b                                           ; $6631: $98
	sbc  b                                           ; $6632: $98
	adc  b                                           ; $6633: $88
	sbc  b                                           ; $6634: $98
	add  a                                           ; $6635: $87
	ld   [hl], a                                     ; $6636: $77
	adc  c                                           ; $6637: $89
	sbc  b                                           ; $6638: $98
	sbc  c                                           ; $6639: $99
	sbc  b                                           ; $663a: $98
	adc  b                                           ; $663b: $88
	sbc  c                                           ; $663c: $99
	sbc  c                                           ; $663d: $99
	adc  b                                           ; $663e: $88
	ld   [hl], a                                     ; $663f: $77
	adc  b                                           ; $6640: $88
	adc  b                                           ; $6641: $88
	sbc  c                                           ; $6642: $99
	sbc  b                                           ; $6643: $98
	adc  b                                           ; $6644: $88
	ld   a, b                                        ; $6645: $78
	adc  c                                           ; $6646: $89
	sbc  c                                           ; $6647: $99
	sbc  c                                           ; $6648: $99
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

Jump_0de_6698:
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

Call_0de_66a7:
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
	sbc  b                                           ; $66f2: $98
	adc  b                                           ; $66f3: $88
	sbc  c                                           ; $66f4: $99
	sub  a                                           ; $66f5: $97
	ld   a, b                                        ; $66f6: $78
	adc  c                                           ; $66f7: $89
	adc  b                                           ; $66f8: $88
	adc  b                                           ; $66f9: $88
	ld   [hl], a                                     ; $66fa: $77
	ld   [hl], a                                     ; $66fb: $77
	ld   a, b                                        ; $66fc: $78
	adc  c                                           ; $66fd: $89
	sbc  b                                           ; $66fe: $98
	sbc  b                                           ; $66ff: $98
	adc  c                                           ; $6700: $89
	add  a                                           ; $6701: $87
	adc  d                                           ; $6702: $8a
	cp   e                                           ; $6703: $bb
	add  [hl]                                        ; $6704: $86
	ld   l, c                                        ; $6705: $69
	cp   d                                           ; $6706: $ba
	sub  a                                           ; $6707: $97
	ld   a, c                                        ; $6708: $79
	sbc  c                                           ; $6709: $99
	ld   [hl], a                                     ; $670a: $77
	ld   a, b                                        ; $670b: $78
	add  [hl]                                        ; $670c: $86
	ld   d, l                                        ; $670d: $55
	ld   h, a                                        ; $670e: $67
	ld   [hl], a                                     ; $670f: $77
	ld   [hl], a                                     ; $6710: $77
	ld   a, b                                        ; $6711: $78
	adc  b                                           ; $6712: $88
	sbc  e                                           ; $6713: $9b
	sbc  c                                           ; $6714: $99
	ld   a, b                                        ; $6715: $78
	adc  b                                           ; $6716: $88
	ld   h, l                                        ; $6717: $65
	ld   l, c                                        ; $6718: $69
	xor  d                                           ; $6719: $aa
	ld   [hl], l                                     ; $671a: $75
	ld   d, a                                        ; $671b: $57
	adc  c                                           ; $671c: $89
	sbc  b                                           ; $671d: $98
	ld   h, [hl]                                     ; $671e: $66
	ld   a, b                                        ; $671f: $78
	sbc  c                                           ; $6720: $99
	add  a                                           ; $6721: $87
	ld   [hl], a                                     ; $6722: $77
	sbc  d                                           ; $6723: $9a
	sub  a                                           ; $6724: $97
	ld   h, [hl]                                     ; $6725: $66
	ld   [hl], a                                     ; $6726: $77
	add  a                                           ; $6727: $87
	ld   h, a                                        ; $6728: $67
	adc  d                                           ; $6729: $8a
	sbc  c                                           ; $672a: $99
	adc  b                                           ; $672b: $88
	sbc  c                                           ; $672c: $99
	adc  b                                           ; $672d: $88
	add  a                                           ; $672e: $87
	ld   [hl], a                                     ; $672f: $77
	halt                                             ; $6730: $76
	ld   h, [hl]                                     ; $6731: $66
	ld   a, b                                        ; $6732: $78
	adc  b                                           ; $6733: $88
	add  a                                           ; $6734: $87
	sbc  e                                           ; $6735: $9b
	call c, $89ca                                    ; $6736: $dc $ca $89
	adc  c                                           ; $6739: $89
	halt                                             ; $673a: $76
	ld   d, [hl]                                     ; $673b: $56
	halt                                             ; $673c: $76
	ld   [hl], a                                     ; $673d: $77
	ld   [hl], a                                     ; $673e: $77
	ld   [hl], a                                     ; $673f: $77
	ld   h, [hl]                                     ; $6740: $66
	ld   a, b                                        ; $6741: $78
	sbc  b                                           ; $6742: $98
	ld   h, l                                        ; $6743: $65
	inc  sp                                          ; $6744: $33
	ld   b, [hl]                                     ; $6745: $46
	ld   d, l                                        ; $6746: $55
	ld   b, h                                        ; $6747: $44
	ld   d, a                                        ; $6748: $57
	sbc  h                                           ; $6749: $9c
	xor  $de                                         ; $674a: $ee $de
	rst  $38                                         ; $674c: $ff
	rst  $38                                         ; $674d: $ff
	db   $ec                                         ; $674e: $ec
	cp   l                                           ; $674f: $bd
	jp   z, $1174                                    ; $6750: $ca $74 $11

	ld   de, $1111                                   ; $6753: $11 $11 $11
	ld   de, $1212                                   ; $6756: $11 $12 $12
	ld   e, d                                        ; $6759: $5a
	rst  $38                                         ; $675a: $ff
	rst  $38                                         ; $675b: $ff
	rst  $38                                         ; $675c: $ff
	rst  $38                                         ; $675d: $ff
	rst  $38                                         ; $675e: $ff
	cp   $db                                         ; $675f: $fe $db
	sub  [hl]                                        ; $6761: $96
	ld   d, [hl]                                     ; $6762: $56
	ld   h, a                                        ; $6763: $67
	adc  b                                           ; $6764: $88
	ld   h, h                                        ; $6765: $64
	ld   hl, $1111                                   ; $6766: $21 $11 $11
	ld   de, $1311                                   ; $6769: $11 $11 $13
	ld   l, l                                        ; $676c: $6d
	rst  $38                                         ; $676d: $ff
	rst  $38                                         ; $676e: $ff
	rst  $38                                         ; $676f: $ff
	rst  $38                                         ; $6770: $ff
	rst  $38                                         ; $6771: $ff
	ld   sp, hl                                      ; $6772: $f9
	ld   h, e                                        ; $6773: $63
	inc  [hl]                                        ; $6774: $34
	ld   b, l                                        ; $6775: $45
	ld   d, a                                        ; $6776: $57
	sbc  h                                           ; $6777: $9c
	and  l                                           ; $6778: $a5
	ld   de, $1111                                   ; $6779: $11 $11 $11
	ld   de, $3911                                   ; $677c: $11 $11 $39
	rst  $38                                         ; $677f: $ff
	rst  $38                                         ; $6780: $ff
	rst  $38                                         ; $6781: $ff
	rst  $38                                         ; $6782: $ff
	rst  $38                                         ; $6783: $ff
	ld   a, [$1111]                                  ; $6784: $fa $11 $11
	ld   de, $6d23                                   ; $6787: $11 $23 $6d
	db   $fc                                         ; $678a: $fc
	ld   d, c                                        ; $678b: $51
	ld   de, $1111                                   ; $678c: $11 $11 $11
	ld   de, $ff1a                                   ; $678f: $11 $1a $ff
	rst  $38                                         ; $6792: $ff
	rst  $38                                         ; $6793: $ff
	rst  $38                                         ; $6794: $ff

Call_0de_6795:
	rst  $38                                         ; $6795: $ff
	ld   a, [$1111]                                  ; $6796: $fa $11 $11
	ld   de, $8e57                                   ; $6799: $11 $57 $8e
	cp   $82                                         ; $679c: $fe $82
	ld   de, $1111                                   ; $679e: $11 $11 $11
	ld   de, $ff4b                                   ; $67a1: $11 $4b $ff
	rst  $38                                         ; $67a4: $ff
	rst  $38                                         ; $67a5: $ff
	rst  $38                                         ; $67a6: $ff
	rst  $38                                         ; $67a7: $ff
	ld   sp, hl                                      ; $67a8: $f9
	ld   de, $1111                                   ; $67a9: $11 $11 $11

Jump_0de_67ac:
	sbc  d                                           ; $67ac: $9a
	adc  l                                           ; $67ad: $8d
	db   $eb                                         ; $67ae: $eb
	ld   hl, $1111                                   ; $67af: $21 $11 $11
	ld   de, $ff39                                   ; $67b2: $11 $39 $ff
	rst  $38                                         ; $67b5: $ff
	rst  $38                                         ; $67b6: $ff
	rst  $38                                         ; $67b7: $ff
	rst  $38                                         ; $67b8: $ff
	cp   e                                           ; $67b9: $bb
	sub  c                                           ; $67ba: $91
	ld   de, $1d11                                   ; $67bb: $11 $11 $1d
	rst  $38                                         ; $67be: $ff
	db   $db                                         ; $67bf: $db
	ld   d, c                                        ; $67c0: $51
	ld   de, $1111                                   ; $67c1: $11 $11 $11
	ld   h, $af                                      ; $67c4: $26 $af
	rst  $38                                         ; $67c6: $ff
	rst  $38                                         ; $67c7: $ff
	rst  $38                                         ; $67c8: $ff
	rst  $38                                         ; $67c9: $ff
	ld   sp, hl                                      ; $67ca: $f9
	ld   h, c                                        ; $67cb: $61
	ld   de, $1311                                   ; $67cc: $11 $11 $13
	rst  $28                                         ; $67cf: $ef
	db   $fc                                         ; $67d0: $fc
	sub  d                                           ; $67d1: $92
	ld   de, $1111                                   ; $67d2: $11 $11 $11
	ld   d, $af                                      ; $67d5: $16 $af
	rst  $38                                         ; $67d7: $ff
	rst  $38                                         ; $67d8: $ff
	rst  $38                                         ; $67d9: $ff
	rst  $38                                         ; $67da: $ff
	cp   $a4                                         ; $67db: $fe $a4
	ld   de, $1111                                   ; $67dd: $11 $11 $11
	xor  l                                           ; $67e0: $ad
	res  4, e                                        ; $67e1: $cb $a3
	ld   de, $1111                                   ; $67e3: $11 $11 $11
	ld   d, $ac                                      ; $67e6: $16 $ac
	rst  $38                                         ; $67e8: $ff
	rst  $38                                         ; $67e9: $ff
	rst  $38                                         ; $67ea: $ff
	rst  $38                                         ; $67eb: $ff
	rst  $38                                         ; $67ec: $ff
	push hl                                          ; $67ed: $e5
	ld   de, $1111                                   ; $67ee: $11 $11 $11
	ld   a, c                                        ; $67f1: $79
	adc  c                                           ; $67f2: $89
	and  h                                           ; $67f3: $a4
	ld   de, $1111                                   ; $67f4: $11 $11 $11
	ld   a, [hl+]                                    ; $67f7: $2a
	xor  l                                           ; $67f8: $ad
	rst  $38                                         ; $67f9: $ff
	rst  $38                                         ; $67fa: $ff
	rst  $38                                         ; $67fb: $ff
	rst  $38                                         ; $67fc: $ff
	rst  $38                                         ; $67fd: $ff
	ldh  a, [c]                                      ; $67fe: $f2
	ld   de, $4311                                   ; $67ff: $11 $11 $43
	ld   b, [hl]                                     ; $6802: $46
	ld   a, d                                        ; $6803: $7a
	or   d                                           ; $6804: $b2
	ld   de, $1111                                   ; $6805: $11 $11 $11
	rla                                              ; $6808: $17
	ld   a, a                                        ; $6809: $7f
	rst  $38                                         ; $680a: $ff
	rst  $38                                         ; $680b: $ff
	rst  $38                                         ; $680c: $ff
	rst  $38                                         ; $680d: $ff
	rst  $38                                         ; $680e: $ff
	or   c                                           ; $680f: $b1
	ld   de, $4111                                   ; $6810: $11 $11 $41
	dec  d                                           ; $6813: $15
	ld   a, e                                        ; $6814: $7b
	add  c                                           ; $6815: $81
	ld   de, $1111                                   ; $6816: $11 $11 $11
	ld   d, $8f                                      ; $6819: $16 $8f
	rst  $38                                         ; $681b: $ff
	rst  $38                                         ; $681c: $ff
	rst  $38                                         ; $681d: $ff
	rst  $38                                         ; $681e: $ff
	rst  $38                                         ; $681f: $ff
	or   c                                           ; $6820: $b1
	ld   de, $1113                                   ; $6821: $11 $13 $11
	inc  de                                          ; $6824: $13
	ld   a, b                                        ; $6825: $78
	ld   sp, $1111                                   ; $6826: $31 $11 $11
	ld   de, $ff1b                                   ; $6829: $11 $1b $ff
	rst  $38                                         ; $682c: $ff
	rst  $38                                         ; $682d: $ff
	rst  $38                                         ; $682e: $ff
	rst  $38                                         ; $682f: $ff
	rst  $38                                         ; $6830: $ff
	db   $e4                                         ; $6831: $e4
	ld   de, $1114                                   ; $6832: $11 $14 $11
	ld   de, $1125                                   ; $6835: $11 $25 $11
	ld   de, $1111                                   ; $6838: $11 $11 $11
	ld   e, d                                        ; $683b: $5a
	rst  $38                                         ; $683c: $ff
	rst  $38                                         ; $683d: $ff
	rst  $38                                         ; $683e: $ff
	rst  $38                                         ; $683f: $ff
	rst  $38                                         ; $6840: $ff
	rst  $38                                         ; $6841: $ff
	and  h                                           ; $6842: $a4
	ld   de, $1154                                   ; $6843: $11 $54 $11
	ld   de, $1144                                   ; $6846: $11 $44 $11
	ld   de, $1111                                   ; $6849: $11 $11 $11
	rla                                              ; $684c: $17
	rst  $38                                         ; $684d: $ff
	rst  $38                                         ; $684e: $ff
	rst  $38                                         ; $684f: $ff
	rst  $38                                         ; $6850: $ff
	rst  $38                                         ; $6851: $ff
	rst  $38                                         ; $6852: $ff
	add  $35                                         ; $6853: $c6 $35
	ld   d, c                                        ; $6855: $51
	ld   de, $2111                                   ; $6856: $11 $11 $21
	ld   de, $1111                                   ; $6859: $11 $11 $11
	ld   de, $ef15                                   ; $685c: $11 $15 $ef
	rst  $38                                         ; $685f: $ff
	rst  $38                                         ; $6860: $ff
	rst  $38                                         ; $6861: $ff
	rst  $38                                         ; $6862: $ff
	rst  $38                                         ; $6863: $ff
	db   $db                                         ; $6864: $db
	add  [hl]                                        ; $6865: $86
	ld   d, c                                        ; $6866: $51
	ld   de, $1111                                   ; $6867: $11 $11 $11
	ld   de, $1111                                   ; $686a: $11 $11 $11
	ld   de, $3d21                                   ; $686d: $11 $21 $3d
	rst  $38                                         ; $6870: $ff
	rst  $38                                         ; $6871: $ff
	rst  $38                                         ; $6872: $ff
	rst  $38                                         ; $6873: $ff
	rst  $38                                         ; $6874: $ff
	cp   b                                           ; $6875: $b8
	rst  JumpTable                                         ; $6876: $df
	sub  c                                           ; $6877: $91
	ld   de, $2113                                   ; $6878: $11 $13 $21
	ld   de, $1111                                   ; $687b: $11 $11 $11
	ld   de, $1411                                   ; $687e: $11 $11 $14
	cp   a                                           ; $6881: $bf
	rst  $38                                         ; $6882: $ff
	rst  $38                                         ; $6883: $ff
	rst  $38                                         ; $6884: $ff
	rst  $38                                         ; $6885: $ff
	ld   a, [$f9cf]                                  ; $6886: $fa $cf $f9
	ld   de, $4112                                   ; $6889: $11 $12 $41
	ld   de, $1112                                   ; $688c: $11 $12 $11
	ld   de, $1111                                   ; $688f: $11 $11 $11
	ld   c, e                                        ; $6892: $4b
	rst  $38                                         ; $6893: $ff
	rst  $38                                         ; $6894: $ff
	rst  $38                                         ; $6895: $ff
	rst  $38                                         ; $6896: $ff
	rst  $38                                         ; $6897: $ff
	rst  $38                                         ; $6898: $ff
	db   $fc                                         ; $6899: $fc
	add  c                                           ; $689a: $81
	ld   de, $1111                                   ; $689b: $11 $11 $11
	inc  hl                                          ; $689e: $23
	ld   de, $1111                                   ; $689f: $11 $11 $11
	ld   de, $1721                                   ; $68a2: $11 $21 $17
	rst  $38                                         ; $68a5: $ff
	rst  $38                                         ; $68a6: $ff
	rst  $38                                         ; $68a7: $ff
	rst  $38                                         ; $68a8: $ff
	rst  $38                                         ; $68a9: $ff
	rst  $38                                         ; $68aa: $ff
	ei                                               ; $68ab: $fb
	ld   a, b                                        ; $68ac: $78
	ld   b, e                                        ; $68ad: $43
	ld   de, $5414                                   ; $68ae: $11 $14 $54
	ld   de, $1141                                   ; $68b1: $11 $41 $11
	ld   de, $1131                                   ; $68b4: $11 $31 $11
	ld   a, e                                        ; $68b7: $7b
	xor  $ff                                         ; $68b8: $ee $ff

Call_0de_68ba:
	rst  $38                                         ; $68ba: $ff
	rst  $38                                         ; $68bb: $ff
	rst  $38                                         ; $68bc: $ff
	rst  $38                                         ; $68bd: $ff
	or   a                                           ; $68be: $b7
	ld   [$1653], a                                  ; $68bf: $ea $53 $16
	add  h                                           ; $68c2: $84
	ld   d, c                                        ; $68c3: $51
	ld   h, $21                                      ; $68c4: $26 $21
	ld   de, $1111                                   ; $68c6: $11 $11 $11
	ld   bc, $9835                                   ; $68c9: $01 $35 $98
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68cc: $cf
	db   $ed                                         ; $68cd: $ed
	rst  $38                                         ; $68ce: $ff
	rst  $38                                         ; $68cf: $ff
	db   $fc                                         ; $68d0: $fc
	rst  $38                                         ; $68d1: $ff
	jp   c, $8447                                    ; $68d2: $da $47 $84

	ld   d, c                                        ; $68d5: $51
	ld   b, l                                        ; $68d6: $45
	ld   b, [hl]                                     ; $68d7: $46
	inc  de                                          ; $68d8: $13
	and  c                                           ; $68d9: $a1
	ld   b, c                                        ; $68da: $41
	jr   jr_0de_690e                                 ; $68db: $18 $31

	ld   [de], a                                     ; $68dd: $12
	ld   l, c                                        ; $68de: $69
	ld   b, l                                        ; $68df: $45
	sub  a                                           ; $68e0: $97
	rst  $28                                         ; $68e1: $ef
	call $fbbd                                       ; $68e2: $cd $bd $fb
	rst  $38                                         ; $68e5: $ff
	adc  $ab                                         ; $68e6: $ce $ab
	ld   a, b                                        ; $68e8: $78
	add  h                                           ; $68e9: $84
	ret  c                                           ; $68ea: $d8

	dec  hl                                          ; $68eb: $2b
	add  hl, de                                      ; $68ec: $19
	or   c                                           ; $68ed: $b1
	and  d                                           ; $68ee: $a2
	ld   a, [de]                                     ; $68ef: $1a
	sub  l                                           ; $68f0: $95
	ld   d, c                                        ; $68f1: $51
	or   [hl]                                        ; $68f2: $b6
	dec  sp                                          ; $68f3: $3b
	rra                                              ; $68f4: $1f
	ld   b, [hl]                                     ; $68f5: $46
	and  d                                           ; $68f6: $a2
	ld   [$6fc8], a                                  ; $68f7: $ea $c8 $6f
	cp   [hl]                                        ; $68fa: $be
	reti                                             ; $68fb: $d9


	db   $dd                                         ; $68fc: $dd
	ei                                               ; $68fd: $fb
	xor  h                                           ; $68fe: $ac
	ld   e, [hl]                                     ; $68ff: $5e
	push de                                          ; $6900: $d5
	and  a                                           ; $6901: $a7
	ret  z                                           ; $6902: $c8

	sub  l                                           ; $6903: $95
	sbc  d                                           ; $6904: $9a
	ld   l, d                                        ; $6905: $6a
	inc  e                                           ; $6906: $1c
	dec  sp                                          ; $6907: $3b
	ld   h, c                                        ; $6908: $61
	or   c                                           ; $6909: $b1
	sub  a                                           ; $690a: $97
	ld   h, l                                        ; $690b: $65
	rst  ToBoot                                         ; $690c: $c7
	adc  d                                           ; $690d: $8a

jr_0de_690e:
	ld   l, e                                        ; $690e: $6b
	ld   l, h                                        ; $690f: $6c
	ccf                                              ; $6910: $3f
	xor  c                                           ; $6911: $a9
	ldh  a, [c]                                      ; $6912: $f2
	rst  $30                                         ; $6913: $f7
	rst  $28                                         ; $6914: $ef
	ld   l, a                                        ; $6915: $6f
	ld   l, d                                        ; $6916: $6a
	db   $d3                                         ; $6917: $d3
	push de                                          ; $6918: $d5
	ld   a, h                                        ; $6919: $7c
	rra                                              ; $691a: $1f
	rra                                              ; $691b: $1f
	add  hl, de                                      ; $691c: $19
	and  c                                           ; $691d: $a1
	pop  af                                          ; $691e: $f1
	pop  hl                                          ; $691f: $e1
	pop  hl                                          ; $6920: $e1
	push af                                          ; $6921: $f5
	cpl                                              ; $6922: $2f
	rra                                              ; $6923: $1f
	rra                                              ; $6924: $1f
	ld   e, d                                        ; $6925: $5a
	push af                                          ; $6926: $f5
	add  sp, -$32                                    ; $6927: $e8 $ce
	sbc  h                                           ; $6929: $9c
	adc  h                                           ; $692a: $8c
	adc  c                                           ; $692b: $89
	sub  a                                           ; $692c: $97
	push bc                                          ; $692d: $c5
	pop  af                                          ; $692e: $f1
	pop  af                                          ; $692f: $f1
	adc  a                                           ; $6930: $8f
	rra                                              ; $6931: $1f
	dec  de                                          ; $6932: $1b
	add  l                                           ; $6933: $85
	sub  d                                           ; $6934: $92
	db   $e3                                         ; $6935: $e3
	add  $8c                                         ; $6936: $c6 $8c
	cpl                                              ; $6938: $2f
	rra                                              ; $6939: $1f
	ld   [hl], l                                     ; $693a: $75
	pop  af                                          ; $693b: $f1
	pop  af                                          ; $693c: $f1
	call $1f1f                                       ; $693d: $cd $1f $1f
	dec  hl                                          ; $6940: $2b
	ld   l, c                                        ; $6941: $69
	pop  af                                          ; $6942: $f1
	pop  af                                          ; $6943: $f1
	ldh  [c], a                                      ; $6944: $e2
	and  a                                           ; $6945: $a7
	rra                                              ; $6946: $1f
	inc  l                                           ; $6947: $2c
	sub  [hl]                                        ; $6948: $96
	rst  ToBoot                                         ; $6949: $c7
	sub  $9d                                         ; $694a: $d6 $9d
	ld   c, d                                        ; $694c: $4a
	ld   l, h                                        ; $694d: $6c
	ld   e, h                                        ; $694e: $5c
	and  h                                           ; $694f: $a4
	pop  de                                          ; $6950: $d1
	db   $f4                                         ; $6951: $f4
	sbc  h                                           ; $6952: $9c
	rra                                              ; $6953: $1f
	rra                                              ; $6954: $1f
	add  hl, de                                      ; $6955: $19
	or   c                                           ; $6956: $b1
	pop  af                                          ; $6957: $f1
	db   $f4                                         ; $6958: $f4
	ld   a, a                                        ; $6959: $7f
	rra                                              ; $695a: $1f
	ld   a, [hl-]                                    ; $695b: $3a
	xor  b                                           ; $695c: $a8
	adc  b                                           ; $695d: $88
	sbc  b                                           ; $695e: $98
	ld   a, d                                        ; $695f: $7a
	and  l                                           ; $6960: $a5
	cp   d                                           ; $6961: $ba
	ld   e, d                                        ; $6962: $5a
	ld   a, c                                        ; $6963: $79
	sub  e                                           ; $6964: $93
	db   $f4                                         ; $6965: $f4
	sub  a                                           ; $6966: $97
	ld   [hl], a                                     ; $6967: $77
	ld   e, h                                        ; $6968: $5c
	inc  a                                           ; $6969: $3c
	dec  e                                           ; $696a: $1d
	halt                                             ; $696b: $76
	pop  hl                                          ; $696c: $e1
	sub  $8b                                         ; $696d: $d6 $8b
	ld   c, h                                        ; $696f: $4c
	halt                                             ; $6970: $76
	or   h                                           ; $6971: $b4
	and  a                                           ; $6972: $a7
	sbc  c                                           ; $6973: $99
	ld   e, l                                        ; $6974: $5d
	dec  sp                                          ; $6975: $3b
	add  l                                           ; $6976: $85
	and  [hl]                                        ; $6977: $a6
	ld   a, c                                        ; $6978: $79
	ld   c, d                                        ; $6979: $4a
	halt                                             ; $697a: $76
	pop  de                                          ; $697b: $d1
	ret  c                                           ; $697c: $d8

	ccf                                              ; $697d: $3f
	ld   c, c                                        ; $697e: $49
	sub  a                                           ; $697f: $97
	sub  [hl]                                        ; $6980: $96
	ld   a, e                                        ; $6981: $7b
	add  l                                           ; $6982: $85
	and  a                                           ; $6983: $a7
	ld   a, d                                        ; $6984: $7a
	add  a                                           ; $6985: $87

Jump_0de_6986:
	ld   a, c                                        ; $6986: $79
	ld   [hl], a                                     ; $6987: $77
	ld   e, c                                        ; $6988: $59
	add  h                                           ; $6989: $84

Call_0de_698a:
	and  a                                           ; $698a: $a7
	adc  b                                           ; $698b: $88
	ld   c, e                                        ; $698c: $4b
	ld   l, b                                        ; $698d: $68
	and  [hl]                                        ; $698e: $a6
	or   h                                           ; $698f: $b4
	sbc  d                                           ; $6990: $9a
	ld   l, c                                        ; $6991: $69
	sub  a                                           ; $6992: $97
	sbc  b                                           ; $6993: $98
	adc  b                                           ; $6994: $88
	ld   a, e                                        ; $6995: $7b
	ld   h, a                                        ; $6996: $67
	sub  [hl]                                        ; $6997: $96
	sub  l                                           ; $6998: $95
	sub  a                                           ; $6999: $97
	ld   e, e                                        ; $699a: $5b
	add  hl, sp                                      ; $699b: $39
	ld   l, b                                        ; $699c: $68
	add  [hl]                                        ; $699d: $86
	sub  a                                           ; $699e: $97
	adc  b                                           ; $699f: $88
	sub  l                                           ; $69a0: $95
	or   l                                           ; $69a1: $b5
	and  a                                           ; $69a2: $a7
	and  [hl]                                        ; $69a3: $a6
	adc  d                                           ; $69a4: $8a
	ld   e, [hl]                                     ; $69a5: $5e
	ld   a, $3b                                      ; $69a6: $3e $3b
	ld   [hl], a                                     ; $69a8: $77

Call_0de_69a9:
	pop  bc                                          ; $69a9: $c1
	pop  af                                          ; $69aa: $f1
	xor  d                                           ; $69ab: $aa
	ld   a, [hl-]                                    ; $69ac: $3a
	ld   h, [hl]                                     ; $69ad: $66
	sub  a                                           ; $69ae: $97
	ld   l, d                                        ; $69af: $6a
	ld   a, c                                        ; $69b0: $79
	inc  a                                           ; $69b1: $3c
	ld   h, [hl]                                     ; $69b2: $66
	jp   Jump_0de_79b7                               ; $69b3: $c3 $b7 $79


	ld   a, b                                        ; $69b6: $78
	sub  [hl]                                        ; $69b7: $96
	or   l                                           ; $69b8: $b5
	sbc  b                                           ; $69b9: $98
	ld   e, l                                        ; $69ba: $5d
	ld   c, c                                        ; $69bb: $49
	sub  l                                           ; $69bc: $95
	xor  b                                           ; $69bd: $a8
	add  a                                           ; $69be: $87
	ld   a, c                                        ; $69bf: $79
	ld   l, b                                        ; $69c0: $68
	add  a                                           ; $69c1: $87
	ld   l, d                                        ; $69c2: $6a
	ld   [hl], a                                     ; $69c3: $77
	adc  b                                           ; $69c4: $88
	and  l                                           ; $69c5: $a5
	and  [hl]                                        ; $69c6: $a6
	sub  a                                           ; $69c7: $97
	and  a                                           ; $69c8: $a7
	ld   l, b                                        ; $69c9: $68
	sbc  b                                           ; $69ca: $98
	ld   c, l                                        ; $69cb: $4d
	ld   e, b                                        ; $69cc: $58
	sub  [hl]                                        ; $69cd: $96
	or   [hl]                                        ; $69ce: $b6
	ld   a, c                                        ; $69cf: $79
	ld   l, d                                        ; $69d0: $6a
	add  [hl]                                        ; $69d1: $86
	adc  c                                           ; $69d2: $89
	ld   e, c                                        ; $69d3: $59
	ld   a, b                                        ; $69d4: $78
	push bc                                          ; $69d5: $c5
	sbc  b                                           ; $69d6: $98
	sub  l                                           ; $69d7: $95
	or   a                                           ; $69d8: $b7
	ld   l, d                                        ; $69d9: $6a
	ld   l, c                                        ; $69da: $69
	ld   l, c                                        ; $69db: $69
	sbc  b                                           ; $69dc: $98
	ld   a, c                                        ; $69dd: $79
	adc  c                                           ; $69de: $89
	ld   [hl], a                                     ; $69df: $77
	sbc  b                                           ; $69e0: $98
	ld   l, c                                        ; $69e1: $69
	sub  h                                           ; $69e2: $94
	push bc                                          ; $69e3: $c5
	adc  d                                           ; $69e4: $8a
	ld   l, b                                        ; $69e5: $68
	ld   l, c                                        ; $69e6: $69
	ld   a, b                                        ; $69e7: $78
	adc  c                                           ; $69e8: $89
	ld   e, d                                        ; $69e9: $5a
	ld   l, b                                        ; $69ea: $68
	sub  l                                           ; $69eb: $95
	or   l                                           ; $69ec: $b5
	and  [hl]                                        ; $69ed: $a6
	or   [hl]                                        ; $69ee: $b6
	ld   a, d                                        ; $69ef: $7a
	ld   l, c                                        ; $69f0: $69
	ld   a, c                                        ; $69f1: $79
	ld   l, c                                        ; $69f2: $69
	ld   l, c                                        ; $69f3: $69
	ld   a, b                                        ; $69f4: $78
	sub  l                                           ; $69f5: $95
	or   l                                           ; $69f6: $b5
	sbc  c                                           ; $69f7: $99
	ld   c, h                                        ; $69f8: $4c
	ld   l, c                                        ; $69f9: $69
	sub  [hl]                                        ; $69fa: $96
	or   l                                           ; $69fb: $b5
	xor  b                                           ; $69fc: $a8
	adc  b                                           ; $69fd: $88
	ld   a, c                                        ; $69fe: $79
	ld   c, e                                        ; $69ff: $4b
	add  a                                           ; $6a00: $87
	add  a                                           ; $6a01: $87
	or   e                                           ; $6a02: $b3
	rst  ToBoot                                         ; $6a03: $c7
	ld   a, c                                        ; $6a04: $79
	ld   e, [hl]                                     ; $6a05: $5e
	add  hl, sp                                      ; $6a06: $39
	sub  l                                           ; $6a07: $95
	and  [hl]                                        ; $6a08: $a6
	sbc  b                                           ; $6a09: $98
	adc  b                                           ; $6a0a: $88
	ld   l, c                                        ; $6a0b: $69
	sbc  b                                           ; $6a0c: $98
	halt                                             ; $6a0d: $76
	rst  ToBoot                                         ; $6a0e: $c7
	ld   l, e                                        ; $6a0f: $6b
	ld   h, l                                        ; $6a10: $65
	rst  $10                                         ; $6a11: $d7
	ld   l, b                                        ; $6a12: $68
	adc  c                                           ; $6a13: $89
	ld   e, e                                        ; $6a14: $5b
	ld   e, d                                        ; $6a15: $5a
	ld   h, a                                        ; $6a16: $67
	and  l                                           ; $6a17: $a5
	push de                                          ; $6a18: $d5
	and  h                                           ; $6a19: $a4
	ret                                              ; $6a1a: $c9


	ld   c, e                                        ; $6a1b: $4b
	ld   e, e                                        ; $6a1c: $5b
	ld   l, c                                        ; $6a1d: $69
	add  a                                           ; $6a1e: $87
	adc  h                                           ; $6a1f: $8c
	add  hl, de                                      ; $6a20: $19
	call nc, $d5b3                                   ; $6a21: $d4 $b3 $d5
	adc  d                                           ; $6a24: $8a
	ld   e, c                                        ; $6a25: $59
	ld   l, e                                        ; $6a26: $6b
	ld   h, [hl]                                     ; $6a27: $66
	adc  d                                           ; $6a28: $8a
	ld   e, c                                        ; $6a29: $59
	add  [hl]                                        ; $6a2a: $86
	sub  l                                           ; $6a2b: $95
	or   a                                           ; $6a2c: $b7
	adc  d                                           ; $6a2d: $8a
	ld   c, d                                        ; $6a2e: $4a
	ld   l, b                                        ; $6a2f: $68
	and  l                                           ; $6a30: $a5
	sbc  b                                           ; $6a31: $98
	ld   l, e                                        ; $6a32: $6b

jr_0de_6a33:
	ld   h, a                                        ; $6a33: $67
	jp   $88f3                                       ; $6a34: $c3 $f3 $88


	ld   l, l                                        ; $6a37: $6d
	rra                                              ; $6a38: $1f
	ld   b, a                                        ; $6a39: $47
	sbc  b                                           ; $6a3a: $98
	add  [hl]                                        ; $6a3b: $86
	or   e                                           ; $6a3c: $b3
	push de                                          ; $6a3d: $d5
	ld   a, d                                        ; $6a3e: $7a
	inc  a                                           ; $6a3f: $3c
	ld   h, [hl]                                     ; $6a40: $66
	and  l                                           ; $6a41: $a5
	call nz, $2d7d                                   ; $6a42: $c4 $7d $2d
	ld   l, c                                        ; $6a45: $69
	ld   [hl], h                                     ; $6a46: $74
	ldh  a, [c]                                      ; $6a47: $f2
	xor  c                                           ; $6a48: $a9
	ld   l, e                                        ; $6a49: $6b
	inc  a                                           ; $6a4a: $3c
	ld   [hl], l                                     ; $6a4b: $75
	or   l                                           ; $6a4c: $b5
	and  l                                           ; $6a4d: $a5
	rst  ToBoot                                         ; $6a4e: $c7
	ld   e, d                                        ; $6a4f: $5a
	ld   a, b                                        ; $6a50: $78
	add  [hl]                                        ; $6a51: $86
	ld   a, h                                        ; $6a52: $7c
	ld   c, e                                        ; $6a53: $4b
	ld   e, c                                        ; $6a54: $59
	and  [hl]                                        ; $6a55: $a6
	push bc                                          ; $6a56: $c5
	sbc  b                                           ; $6a57: $98
	add  a                                           ; $6a58: $87
	ld   a, c                                        ; $6a59: $79
	add  [hl]                                        ; $6a5a: $86
	or   a                                           ; $6a5b: $b7
	add  a                                           ; $6a5c: $87
	ld   l, [hl]                                     ; $6a5d: $6e
	ld   a, [hl+]                                    ; $6a5e: $2a
	adc  b                                           ; $6a5f: $88
	ld   l, d                                        ; $6a60: $6a
	ld   [hl], l                                     ; $6a61: $75
	or   e                                           ; $6a62: $b3
	jp   nc, $7cb6                                   ; $6a63: $d2 $b6 $7c

	rra                                              ; $6a66: $1f
	dec  de                                          ; $6a67: $1b
	pop  bc                                          ; $6a68: $c1
	pop  af                                          ; $6a69: $f1
	sbc  a                                           ; $6a6a: $9f
	inc  e                                           ; $6a6b: $1c
	or   c                                           ; $6a6c: $b1
	db   $f4                                         ; $6a6d: $f4
	ld   a, e                                        ; $6a6e: $7b
	rra                                              ; $6a6f: $1f
	jr   z, jr_0de_6a33                              ; $6a70: $28 $c1

	db   $e4                                         ; $6a72: $e4
	ld   l, l                                        ; $6a73: $6d
	ld   a, [hl-]                                    ; $6a74: $3a
	and  l                                           ; $6a75: $a5
	jp   nc, $3bc8                                   ; $6a76: $d2 $c8 $3b

	ld   c, e                                        ; $6a79: $4b
	ld   h, [hl]                                     ; $6a7a: $66
	adc  c                                           ; $6a7b: $89
	sbc  b                                           ; $6a7c: $98
	ld   c, e                                        ; $6a7d: $4b
	ld   h, a                                        ; $6a7e: $67
	sub  h                                           ; $6a7f: $94
	rst  ToBoot                                         ; $6a80: $c7
	and  d                                           ; $6a81: $a2
	sub  $5e                                         ; $6a82: $d6 $5e
	inc  e                                           ; $6a84: $1c
	or   d                                           ; $6a85: $b2
	db   $e3                                         ; $6a86: $e3
	adc  l                                           ; $6a87: $8d
	dec  sp                                          ; $6a88: $3b
	ld   l, c                                        ; $6a89: $69
	ld   h, [hl]                                     ; $6a8a: $66
	call nz, Call_0de_4b99                           ; $6a8b: $c4 $99 $4b
	ld   l, b                                        ; $6a8e: $68
	sub  d                                           ; $6a8f: $92
	cp   b                                           ; $6a90: $b8
	ld   e, c                                        ; $6a91: $59
	sub  [hl]                                        ; $6a92: $96
	and  e                                           ; $6a93: $a3
	xor  c                                           ; $6a94: $a9
	ld   e, c                                        ; $6a95: $59
	ld   l, b                                        ; $6a96: $68
	ld   l, h                                        ; $6a97: $6c
	inc  a                                           ; $6a98: $3c
	ld   e, d                                        ; $6a99: $5a
	ld   h, a                                        ; $6a9a: $67
	pop  bc                                          ; $6a9b: $c1
	pop  hl                                          ; $6a9c: $e1
	call nc, $5d98                                   ; $6a9d: $d4 $98 $5d
	dec  e                                           ; $6aa0: $1d
	ld   e, d                                        ; $6aa1: $5a
	ld   l, d                                        ; $6aa2: $6a
	ld   e, b                                        ; $6aa3: $58
	and  l                                           ; $6aa4: $a5
	or   [hl]                                        ; $6aa5: $b6
	or   c                                           ; $6aa6: $b1
	pop  af                                          ; $6aa7: $f1
	ld   a, a                                        ; $6aa8: $7f
	ld   e, $73                                      ; $6aa9: $1e $73
	and  $3f                                         ; $6aab: $e6 $3f
	inc  e                                           ; $6aad: $1c
	add  e                                           ; $6aae: $83
	ldh  [c], a                                      ; $6aaf: $e2
	rst  $10                                         ; $6ab0: $d7
	ld   c, e                                        ; $6ab1: $4b
	ld   l, e                                        ; $6ab2: $6b
	ld   d, [hl]                                     ; $6ab3: $56
	db   $d3                                         ; $6ab4: $d3
	add  $6c                                         ; $6ab5: $c6 $6c
	ld   l, $55                                      ; $6ab7: $2e $55
	sub  $97                                         ; $6ab9: $d6 $97
	ld   a, b                                        ; $6abb: $78
	ld   l, e                                        ; $6abc: $6b
	halt                                             ; $6abd: $76
	and  [hl]                                        ; $6abe: $a6
	or   [hl]                                        ; $6abf: $b6
	ld   e, h                                        ; $6ac0: $5c
	adc  b                                           ; $6ac1: $88
	ld   a, c                                        ; $6ac2: $79
	ld   a, b                                        ; $6ac3: $78
	push bc                                          ; $6ac4: $c5
	ld   l, l                                        ; $6ac5: $6d
	ld   [hl], a                                     ; $6ac6: $77
	sub  [hl]                                        ; $6ac7: $96
	push de                                          ; $6ac8: $d5
	ld   l, e                                        ; $6ac9: $6b
	ld   h, a                                        ; $6aca: $67
	or   h                                           ; $6acb: $b4
	ld   l, d                                        ; $6acc: $6a
	ld   e, [hl]                                     ; $6acd: $5e
	add  hl, de                                      ; $6ace: $19
	jp   $a5b6                                       ; $6acf: $c3 $b6 $a5


	xor  d                                           ; $6ad2: $aa
	ld   l, b                                        ; $6ad3: $68
	rst  ToBoot                                         ; $6ad4: $c7
	ld   e, e                                        ; $6ad5: $5b
	ld   e, e                                        ; $6ad6: $5b
	add  [hl]                                        ; $6ad7: $86
	or   a                                           ; $6ad8: $b7
	ret  c                                           ; $6ad9: $d8

	ld   c, c                                        ; $6ada: $49
	sub  [hl]                                        ; $6adb: $96
	add  a                                           ; $6adc: $87
	and  a                                           ; $6add: $a7
	ld   e, h                                        ; $6ade: $5c
	ld   e, b                                        ; $6adf: $58
	push bc                                          ; $6ae0: $c5
	add  h                                           ; $6ae1: $84
	reti                                             ; $6ae2: $d9


	ld   a, [hl-]                                    ; $6ae3: $3a
	ld   a, c                                        ; $6ae4: $79
	ld   h, [hl]                                     ; $6ae5: $66
	rst  ToBoot                                         ; $6ae6: $c7
	ld   l, d                                        ; $6ae7: $6a
	ld   e, e                                        ; $6ae8: $5b
	and  h                                           ; $6ae9: $a4
	rst  ToBoot                                         ; $6aea: $c7
	xor  h                                           ; $6aeb: $ac
	dec  sp                                          ; $6aec: $3b
	sub  a                                           ; $6aed: $97
	and  a                                           ; $6aee: $a7
	ld   h, a                                        ; $6aef: $67
	sbc  b                                           ; $6af0: $98
	add  a                                           ; $6af1: $87
	ld   a, e                                        ; $6af2: $7b
	ld   a, b                                        ; $6af3: $78
	sub  a                                           ; $6af4: $97
	adc  b                                           ; $6af5: $88
	ld   a, c                                        ; $6af6: $79
	ld   a, b                                        ; $6af7: $78
	and  l                                           ; $6af8: $a5
	ld   a, e                                        ; $6af9: $7b
	sub  [hl]                                        ; $6afa: $96
	ld   l, b                                        ; $6afb: $68
	and  [hl]                                        ; $6afc: $a6
	and  [hl]                                        ; $6afd: $a6
	ld   l, e                                        ; $6afe: $6b
	ld   l, b                                        ; $6aff: $68
	add  a                                           ; $6b00: $87
	sbc  d                                           ; $6b01: $9a
	ld   a, c                                        ; $6b02: $79
	ld   a, b                                        ; $6b03: $78
	rst  ToBoot                                         ; $6b04: $c7
	adc  c                                           ; $6b05: $89
	sbc  b                                           ; $6b06: $98
	adc  b                                           ; $6b07: $88
	sbc  c                                           ; $6b08: $99
	ld   a, c                                        ; $6b09: $79
	adc  c                                           ; $6b0a: $89
	add  a                                           ; $6b0b: $87
	xor  c                                           ; $6b0c: $a9
	ld   a, c                                        ; $6b0d: $79
	ld   [hl], a                                     ; $6b0e: $77
	adc  c                                           ; $6b0f: $89
	ld   [hl], a                                     ; $6b10: $77
	ld   [hl], a                                     ; $6b11: $77
	and  a                                           ; $6b12: $a7
	ld   e, b                                        ; $6b13: $58
	add  a                                           ; $6b14: $87
	ld   [hl], a                                     ; $6b15: $77
	ld   a, b                                        ; $6b16: $78
	ld   h, a                                        ; $6b17: $67
	sub  [hl]                                        ; $6b18: $96
	sbc  c                                           ; $6b19: $99
	ld   [hl], a                                     ; $6b1a: $77
	sbc  b                                           ; $6b1b: $98
	sbc  b                                           ; $6b1c: $98
	ld   a, e                                        ; $6b1d: $7b
	xor  d                                           ; $6b1e: $aa
	add  a                                           ; $6b1f: $87
	ret                                              ; $6b20: $c9


	adc  e                                           ; $6b21: $8b
	xor  c                                           ; $6b22: $a9
	sbc  e                                           ; $6b23: $9b
	ret  z                                           ; $6b24: $c8

	ld   l, e                                        ; $6b25: $6b
	or   [hl]                                        ; $6b26: $b6
	adc  b                                           ; $6b27: $88
	sub  a                                           ; $6b28: $97
	ld   h, [hl]                                     ; $6b29: $66
	ld   [hl], h                                     ; $6b2a: $74
	halt                                             ; $6b2b: $76
	dec  h                                           ; $6b2c: $25
	inc  [hl]                                        ; $6b2d: $34
	ld   b, d                                        ; $6b2e: $42
	ld   [hl+], a                                    ; $6b2f: $22
	inc  h                                           ; $6b30: $24
	ld   d, h                                        ; $6b31: $54
	ld   d, [hl]                                     ; $6b32: $56
	sbc  d                                           ; $6b33: $9a
	xor  h                                           ; $6b34: $ac
	db   $dd                                         ; $6b35: $dd
	rst  $38                                         ; $6b36: $ff
	rst  $38                                         ; $6b37: $ff
	rst  $38                                         ; $6b38: $ff
	rst  $38                                         ; $6b39: $ff
	rst  $38                                         ; $6b3a: $ff
	db   $ec                                         ; $6b3b: $ec
	jp   z, Jump_0de_7587                            ; $6b3c: $ca $87 $75

	ld   sp, $1111                                   ; $6b3f: $31 $11 $11
	ld   de, $1111                                   ; $6b42: $11 $11 $11
	ld   [de], a                                     ; $6b45: $12
	inc  sp                                          ; $6b46: $33
	ld   e, b                                        ; $6b47: $58
	adc  $ff                                         ; $6b48: $ce $ff
	rst  $38                                         ; $6b4a: $ff
	rst  $38                                         ; $6b4b: $ff
	rst  $38                                         ; $6b4c: $ff
	rst  $38                                         ; $6b4d: $ff
	rst  $38                                         ; $6b4e: $ff
	db   $ed                                         ; $6b4f: $ed
	call c, $c9cb                                    ; $6b50: $dc $cb $c9
	adc  c                                           ; $6b53: $89
	ld   [hl], l                                     ; $6b54: $75
	ld   [hl-], a                                    ; $6b55: $32
	ld   de, $1111                                   ; $6b56: $11 $11 $11
	ld   de, $1111                                   ; $6b59: $11 $11 $11
	ld   de, $cf6a                                   ; $6b5c: $11 $6a $cf
	rst  $38                                         ; $6b5f: $ff
	rst  $38                                         ; $6b60: $ff
	rst  $38                                         ; $6b61: $ff
	rst  $38                                         ; $6b62: $ff
	rst  $38                                         ; $6b63: $ff
	cp   $ee                                         ; $6b64: $fe $ee
	cp   e                                           ; $6b66: $bb
	db   $ec                                         ; $6b67: $ec
	cp   d                                           ; $6b68: $ba
	adc  e                                           ; $6b69: $8b
	ld   [hl], h                                     ; $6b6a: $74
	ld   d, d                                        ; $6b6b: $52
	ld   hl, $1111                                   ; $6b6c: $21 $11 $11
	ld   de, $1111                                   ; $6b6f: $11 $11 $11
	ld   de, $cf59                                   ; $6b72: $11 $59 $cf
	rst  $38                                         ; $6b75: $ff
	rst  $38                                         ; $6b76: $ff
	rst  $38                                         ; $6b77: $ff
	rst  $38                                         ; $6b78: $ff
	rst  $38                                         ; $6b79: $ff
	db   $fd                                         ; $6b7a: $fd
	db   $dd                                         ; $6b7b: $dd
	xor  e                                           ; $6b7c: $ab
	xor  e                                           ; $6b7d: $ab
	and  a                                           ; $6b7e: $a7
	sbc  d                                           ; $6b7f: $9a
	sub  a                                           ; $6b80: $97
	ld   h, e                                        ; $6b81: $63
	ld   de, $1111                                   ; $6b82: $11 $11 $11
	ld   de, $1111                                   ; $6b85: $11 $11 $11
	ld   [de], a                                     ; $6b88: $12
	ld   l, c                                        ; $6b89: $69
	cp   a                                           ; $6b8a: $bf
	rst  $38                                         ; $6b8b: $ff
	rst  $38                                         ; $6b8c: $ff
	rst  $38                                         ; $6b8d: $ff
	rst  $38                                         ; $6b8e: $ff
	rst  $38                                         ; $6b8f: $ff
	db   $fd                                         ; $6b90: $fd
	cp   h                                           ; $6b91: $bc
	sub  [hl]                                        ; $6b92: $96
	ld   h, a                                        ; $6b93: $67
	ld   [hl], a                                     ; $6b94: $77
	xor  c                                           ; $6b95: $a9
	add  [hl]                                        ; $6b96: $86
	ld   d, h                                        ; $6b97: $54

Call_0de_6b98:
	ld   sp, $1111                                   ; $6b98: $31 $11 $11
	ld   de, $1111                                   ; $6b9b: $11 $11 $11
	inc  d                                           ; $6b9e: $14
	ld   l, c                                        ; $6b9f: $69
	rst  JumpTable                                         ; $6ba0: $df
	rst  $38                                         ; $6ba1: $ff
	rst  $38                                         ; $6ba2: $ff
	rst  $38                                         ; $6ba3: $ff
	rst  $38                                         ; $6ba4: $ff
	rst  $38                                         ; $6ba5: $ff
	ei                                               ; $6ba6: $fb
	sbc  d                                           ; $6ba7: $9a
	sub  h                                           ; $6ba8: $94
	inc  [hl]                                        ; $6ba9: $34
	ld   l, b                                        ; $6baa: $68
	sbc  b                                           ; $6bab: $98
	sub  a                                           ; $6bac: $97
	ld   [hl], a                                     ; $6bad: $77
	ld   d, c                                        ; $6bae: $51
	ld   de, $1111                                   ; $6baf: $11 $11 $11
	ld   de, $1211                                   ; $6bb2: $11 $11 $12
	ld   l, e                                        ; $6bb5: $6b
	rst  $38                                         ; $6bb6: $ff
	rst  $38                                         ; $6bb7: $ff
	rst  $38                                         ; $6bb8: $ff
	rst  $38                                         ; $6bb9: $ff
	rst  $38                                         ; $6bba: $ff
	rst  $38                                         ; $6bbb: $ff
	ei                                               ; $6bbc: $fb
	ld   h, h                                        ; $6bbd: $64
	ld   d, h                                        ; $6bbe: $54
	ld   [hl+], a                                    ; $6bbf: $22
	inc  [hl]                                        ; $6bc0: $34
	ld   a, d                                        ; $6bc1: $7a
	cp   d                                           ; $6bc2: $ba
	sbc  b                                           ; $6bc3: $98
	ld   [hl], h                                     ; $6bc4: $74
	ld   de, $1111                                   ; $6bc5: $11 $11 $11
	ld   de, $1111                                   ; $6bc8: $11 $11 $11
	ld   c, d                                        ; $6bcb: $4a
	rst  $38                                         ; $6bcc: $ff
	rst  $38                                         ; $6bcd: $ff
	rst  $38                                         ; $6bce: $ff
	rst  $38                                         ; $6bcf: $ff
	rst  $38                                         ; $6bd0: $ff
	rst  $38                                         ; $6bd1: $ff
	db   $fd                                         ; $6bd2: $fd
	ld   h, c                                        ; $6bd3: $61
	ld   de, $2311                                   ; $6bd4: $11 $11 $23
	ld   c, b                                        ; $6bd7: $48
	xor  [hl]                                        ; $6bd8: $ae
	db   $db                                         ; $6bd9: $db
	or   a                                           ; $6bda: $b7
	ld   sp, $1111                                   ; $6bdb: $31 $11 $11
	ld   de, $1111                                   ; $6bde: $11 $11 $11
	ld   d, $df                                      ; $6be1: $16 $df
	rst  $38                                         ; $6be3: $ff
	rst  $38                                         ; $6be4: $ff
	rst  $38                                         ; $6be5: $ff
	rst  $38                                         ; $6be6: $ff
	rst  $38                                         ; $6be7: $ff
	rst  $38                                         ; $6be8: $ff
	and  e                                           ; $6be9: $a3
	ld   de, $0211                                   ; $6bea: $11 $11 $02
	ld   [hl], $9d                                   ; $6bed: $36 $9d
	rst  $38                                         ; $6bef: $ff
	db   $eb                                         ; $6bf0: $eb
	sub  h                                           ; $6bf1: $94
	ld   de, $1111                                   ; $6bf2: $11 $11 $11
	ld   de, $1111                                   ; $6bf5: $11 $11 $11
	sbc  a                                           ; $6bf8: $9f
	rst  $38                                         ; $6bf9: $ff
	rst  $38                                         ; $6bfa: $ff
	rst  $38                                         ; $6bfb: $ff
	rst  $38                                         ; $6bfc: $ff
	rst  $38                                         ; $6bfd: $ff
	db   $fd                                         ; $6bfe: $fd
	and  l                                           ; $6bff: $a5
	ld   de, $1311                                   ; $6c00: $11 $11 $13
	ld   d, [hl]                                     ; $6c03: $56
	sbc  l                                           ; $6c04: $9d
	rst  $38                                         ; $6c05: $ff
	rst  $38                                         ; $6c06: $ff
	ret  c                                           ; $6c07: $d8

	ld   b, c                                        ; $6c08: $41
	ld   de, $1111                                   ; $6c09: $11 $11 $11
	ld   de, $1b11                                   ; $6c0c: $11 $11 $1b
	rst  $38                                         ; $6c0f: $ff
	rst  $38                                         ; $6c10: $ff
	rst  $38                                         ; $6c11: $ff
	rst  $38                                         ; $6c12: $ff
	rst  $38                                         ; $6c13: $ff
	ld   a, [$2166]                                  ; $6c14: $fa $66 $21
	ld   de, $7a11                                   ; $6c17: $11 $11 $7a
	sbc  h                                           ; $6c1a: $9c
	rst  $38                                         ; $6c1b: $ff
	rst  $38                                         ; $6c1c: $ff
	db   $fd                                         ; $6c1d: $fd
	add  l                                           ; $6c1e: $85
	ld   de, $1111                                   ; $6c1f: $11 $11 $11
	ld   de, $1311                                   ; $6c22: $11 $11 $13
	xor  a                                           ; $6c25: $af
	rst  $38                                         ; $6c26: $ff
	rst  $38                                         ; $6c27: $ff
	rst  $38                                         ; $6c28: $ff
	rst  $38                                         ; $6c29: $ff
	rst  $38                                         ; $6c2a: $ff
	and  h                                           ; $6c2b: $a4
	ld   bc, $1111                                   ; $6c2c: $01 $11 $11
	daa                                              ; $6c2f: $27
	rst  JumpTable                                         ; $6c30: $df
	rst  $38                                         ; $6c31: $ff
	rst  $38                                         ; $6c32: $ff
	rst  $38                                         ; $6c33: $ff
	ld   hl, sp+$31                                  ; $6c34: $f8 $31
	ld   de, $1111                                   ; $6c36: $11 $11 $11
	ld   de, $2a11                                   ; $6c39: $11 $11 $2a
	rst  $28                                         ; $6c3c: $ef
	rst  $38                                         ; $6c3d: $ff
	rst  $38                                         ; $6c3e: $ff
	rst  $38                                         ; $6c3f: $ff
	rst  $38                                         ; $6c40: $ff
	rst  $38                                         ; $6c41: $ff
	ld   h, c                                        ; $6c42: $61
	ld   de, $6436                                   ; $6c43: $11 $36 $64
	ld   l, l                                        ; $6c46: $6d
	rst  $38                                         ; $6c47: $ff
	rst  $38                                         ; $6c48: $ff
	rst  $38                                         ; $6c49: $ff
	rst  $38                                         ; $6c4a: $ff
	or   h                                           ; $6c4b: $b4
	ld   de, $1111                                   ; $6c4c: $11 $11 $11
	ld   de, $1111                                   ; $6c4f: $11 $11 $11
	jr   @+$01                                       ; $6c52: $18 $ff

	rst  $38                                         ; $6c54: $ff
	rst  $38                                         ; $6c55: $ff
	rst  $38                                         ; $6c56: $ff
	rst  $38                                         ; $6c57: $ff
	rst  $38                                         ; $6c58: $ff
	db   $d3                                         ; $6c59: $d3
	ld   de, $bb49                                   ; $6c5a: $11 $49 $bb
	ld   a, d                                        ; $6c5d: $7a
	rst  $38                                         ; $6c5e: $ff
	rst  $38                                         ; $6c5f: $ff
	db   $ec                                         ; $6c60: $ec
	call $11c6                                       ; $6c61: $cd $c6 $11
	ld   de, $1111                                   ; $6c64: $11 $11 $11
	ld   de, $1111                                   ; $6c67: $11 $11 $11
	sbc  h                                           ; $6c6a: $9c
	rst  JumpTable                                         ; $6c6b: $df
	rst  $38                                         ; $6c6c: $ff
	rst  $38                                         ; $6c6d: $ff
	rst  $38                                         ; $6c6e: $ff
	rst  $38                                         ; $6c6f: $ff
	db   $fd                                         ; $6c70: $fd
	ld   b, c                                        ; $6c71: $41
	ld   [hl], $ef                                   ; $6c72: $36 $ef
	jp   z, $ffbf                                    ; $6c74: $ca $bf $ff

	ei                                               ; $6c77: $fb
	xor  d                                           ; $6c78: $aa
	bit  0, d                                        ; $6c79: $cb $42
	inc  de                                          ; $6c7b: $13
	ld   b, c                                        ; $6c7c: $41
	ld   de, $1111                                   ; $6c7d: $11 $11 $11
	ld   de, $cd12                                   ; $6c80: $11 $12 $cd
	rst  $38                                         ; $6c83: $ff
	rst  $38                                         ; $6c84: $ff
	rst  $38                                         ; $6c85: $ff
	ret  c                                           ; $6c86: $d8

	xor  l                                           ; $6c87: $ad
	jp   hl                                          ; $6c88: $e9


	ld   l, d                                        ; $6c89: $6a
	rst  $38                                         ; $6c8a: $ff
	rst  $38                                         ; $6c8b: $ff
	rst  $38                                         ; $6c8c: $ff
	rst  $38                                         ; $6c8d: $ff
	db   $fc                                         ; $6c8e: $fc
	ld   [hl], e                                     ; $6c8f: $73
	ld   l, b                                        ; $6c90: $68
	add  [hl]                                        ; $6c91: $86
	ld   b, [hl]                                     ; $6c92: $46
	ld   a, b                                        ; $6c93: $78
	ld   d, c                                        ; $6c94: $51
	ld   de, $1111                                   ; $6c95: $11 $11 $11
	ld   de, $bb13                                   ; $6c98: $11 $13 $bb
	rst  $38                                         ; $6c9b: $ff
	rst  $38                                         ; $6c9c: $ff
	rst  $38                                         ; $6c9d: $ff
	or   [hl]                                        ; $6c9e: $b6
	cp   e                                           ; $6c9f: $bb
	jp   z, $ff9f                                    ; $6ca0: $ca $9f $ff

	rst  $38                                         ; $6ca3: $ff
	rst  $38                                         ; $6ca4: $ff
	rst  $38                                         ; $6ca5: $ff
	db   $eb                                         ; $6ca6: $eb
	ld   [hl+], a                                    ; $6ca7: $22
	ld   d, a                                        ; $6ca8: $57
	ld   h, e                                        ; $6ca9: $63
	ld   e, b                                        ; $6caa: $58
	sbc  c                                           ; $6cab: $99
	ld   b, c                                        ; $6cac: $41
	ld   de, $1111                                   ; $6cad: $11 $11 $11
	ld   de, $de15                                   ; $6cb0: $11 $15 $de
	rst  $38                                         ; $6cb3: $ff
	rst  $38                                         ; $6cb4: $ff
	rst  $38                                         ; $6cb5: $ff
	and  a                                           ; $6cb6: $a7
	cp   h                                           ; $6cb7: $bc
	cp   d                                           ; $6cb8: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cb9: $cf
	rst  $38                                         ; $6cba: $ff
	rst  $38                                         ; $6cbb: $ff
	rst  $38                                         ; $6cbc: $ff
	rst  $38                                         ; $6cbd: $ff
	add  $35                                         ; $6cbe: $c6 $35
	ld   d, l                                        ; $6cc0: $55
	ld   d, l                                        ; $6cc1: $55
	ld   a, c                                        ; $6cc2: $79
	sub  l                                           ; $6cc3: $95
	ld   de, $1111                                   ; $6cc4: $11 $11 $11
	ld   de, $1211                                   ; $6cc7: $11 $11 $12
	ld   a, [hl]                                     ; $6cca: $7e
	rst  $38                                         ; $6ccb: $ff
	rst  $38                                         ; $6ccc: $ff
	rst  $38                                         ; $6ccd: $ff
	cp   d                                           ; $6cce: $ba
	xor  c                                           ; $6ccf: $a9
	cp   [hl]                                        ; $6cd0: $be
	rst  $38                                         ; $6cd1: $ff
	rst  $38                                         ; $6cd2: $ff
	rst  $38                                         ; $6cd3: $ff
	rst  $38                                         ; $6cd4: $ff
	rst  $38                                         ; $6cd5: $ff
	rst  $10                                         ; $6cd6: $d7
	inc  [hl]                                        ; $6cd7: $34
	ld   d, l                                        ; $6cd8: $55
	ld   h, [hl]                                     ; $6cd9: $66
	ld   h, a                                        ; $6cda: $67
	halt                                             ; $6cdb: $76
	ld   de, $1111                                   ; $6cdc: $11 $11 $11
	ld   de, $1311                                   ; $6cdf: $11 $11 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ce2: $cf
	rst  $38                                         ; $6ce3: $ff
	rst  $38                                         ; $6ce4: $ff
	rst  $38                                         ; $6ce5: $ff
	cp   c                                           ; $6ce6: $b9
	xor  a                                           ; $6ce7: $af
	call $ffff                                       ; $6ce8: $cd $ff $ff
	rst  $38                                         ; $6ceb: $ff
	rst  $38                                         ; $6cec: $ff
	rst  $38                                         ; $6ced: $ff
	or   a                                           ; $6cee: $b7
	dec  [hl]                                        ; $6cef: $35
	sub  l                                           ; $6cf0: $95
	ld   b, l                                        ; $6cf1: $45
	ld   e, c                                        ; $6cf2: $59
	ld   [hl], h                                     ; $6cf3: $74
	ld   de, $1111                                   ; $6cf4: $11 $11 $11
	ld   de, $1111                                   ; $6cf7: $11 $11 $11
	ld   l, l                                        ; $6cfa: $6d
	rst  $38                                         ; $6cfb: $ff
	rst  $38                                         ; $6cfc: $ff
	rst  $38                                         ; $6cfd: $ff
	rst  JumpTable                                         ; $6cfe: $df
	cp   h                                           ; $6cff: $bc
	db   $ed                                         ; $6d00: $ed
	rst  $38                                         ; $6d01: $ff
	rst  $38                                         ; $6d02: $ff
	rst  $38                                         ; $6d03: $ff
	rst  $38                                         ; $6d04: $ff
	rst  $38                                         ; $6d05: $ff
	ret  c                                           ; $6d06: $d8

	ld   [hl], l                                     ; $6d07: $75
	ld   d, l                                        ; $6d08: $55
	inc  [hl]                                        ; $6d09: $34
	ld   b, l                                        ; $6d0a: $45
	ld   h, e                                        ; $6d0b: $63
	ld   de, $1111                                   ; $6d0c: $11 $11 $11
	ld   de, $1111                                   ; $6d0f: $11 $11 $11
	ld   c, d                                        ; $6d12: $4a
	rst  $38                                         ; $6d13: $ff
	rst  $38                                         ; $6d14: $ff
	rst  $38                                         ; $6d15: $ff
	rst  $38                                         ; $6d16: $ff
	sbc  $ff                                         ; $6d17: $de $ff
	rst  $38                                         ; $6d19: $ff
	rst  $38                                         ; $6d1a: $ff
	rst  $38                                         ; $6d1b: $ff
	rst  $38                                         ; $6d1c: $ff
	rst  $38                                         ; $6d1d: $ff
	ld   a, [$6587]                                  ; $6d1e: $fa $87 $65
	ld   [hl-], a                                    ; $6d21: $32
	inc  hl                                          ; $6d22: $23
	ld   sp, $1111                                   ; $6d23: $31 $11 $11
	ld   de, $1111                                   ; $6d26: $11 $11 $11
	ld   de, $ef19                                   ; $6d29: $11 $19 $ef
	rst  $38                                         ; $6d2c: $ff
	rst  $38                                         ; $6d2d: $ff
	rst  $38                                         ; $6d2e: $ff
	rst  $38                                         ; $6d2f: $ff
	rst  $38                                         ; $6d30: $ff
	rst  $38                                         ; $6d31: $ff
	rst  $38                                         ; $6d32: $ff
	rst  $38                                         ; $6d33: $ff
	rst  $38                                         ; $6d34: $ff
	rst  $38                                         ; $6d35: $ff
	db   $fc                                         ; $6d36: $fc
	xor  b                                           ; $6d37: $a8
	halt                                             ; $6d38: $76
	ld   [hl-], a                                    ; $6d39: $32
	ld   [hl+], a                                    ; $6d3a: $22
	ld   de, $1111                                   ; $6d3b: $11 $11 $11
	ld   de, $1111                                   ; $6d3e: $11 $11 $11
	ld   de, $bd14                                   ; $6d41: $11 $14 $bd
	rst  $38                                         ; $6d44: $ff
	rst  $38                                         ; $6d45: $ff
	rst  $38                                         ; $6d46: $ff
	rst  $38                                         ; $6d47: $ff
	rst  $38                                         ; $6d48: $ff
	rst  $38                                         ; $6d49: $ff
	rst  $38                                         ; $6d4a: $ff
	rst  $38                                         ; $6d4b: $ff
	rst  $38                                         ; $6d4c: $ff
	rst  $38                                         ; $6d4d: $ff
	db   $fd                                         ; $6d4e: $fd
	cp   d                                           ; $6d4f: $ba
	add  [hl]                                        ; $6d50: $86
	ld   d, e                                        ; $6d51: $53
	ld   hl, $1111                                   ; $6d52: $21 $11 $11
	ld   de, $1111                                   ; $6d55: $11 $11 $11
	ld   de, $1311                                   ; $6d58: $11 $11 $13
	ld   a, d                                        ; $6d5b: $7a
	rst  $28                                         ; $6d5c: $ef
	rst  $38                                         ; $6d5d: $ff
	rst  $38                                         ; $6d5e: $ff
	rst  $38                                         ; $6d5f: $ff
	rst  $38                                         ; $6d60: $ff
	rst  $38                                         ; $6d61: $ff
	rst  $38                                         ; $6d62: $ff
	rst  $38                                         ; $6d63: $ff
	rst  $38                                         ; $6d64: $ff
	rst  $38                                         ; $6d65: $ff
	db   $ec                                         ; $6d66: $ec
	res  3, b                                        ; $6d67: $cb $98
	ld   h, e                                        ; $6d69: $63
	ld   [hl-], a                                    ; $6d6a: $32
	ld   de, $1111                                   ; $6d6b: $11 $11 $11
	ld   de, $1111                                   ; $6d6e: $11 $11 $11
	ld   de, $4711                                   ; $6d71: $11 $11 $47
	cp   a                                           ; $6d74: $bf
	rst  $38                                         ; $6d75: $ff
	rst  $38                                         ; $6d76: $ff
	rst  $38                                         ; $6d77: $ff
	rst  $38                                         ; $6d78: $ff
	rst  $38                                         ; $6d79: $ff
	rst  $38                                         ; $6d7a: $ff
	rst  $38                                         ; $6d7b: $ff
	rst  $38                                         ; $6d7c: $ff
	rst  $38                                         ; $6d7d: $ff
	db   $ec                                         ; $6d7e: $ec
	cp   d                                           ; $6d7f: $ba
	sbc  b                                           ; $6d80: $98
	ld   [hl], l                                     ; $6d81: $75
	ld   b, h                                        ; $6d82: $44
	ld   b, e                                        ; $6d83: $43
	ld   de, $1111                                   ; $6d84: $11 $11 $11
	ld   de, $1111                                   ; $6d87: $11 $11 $11
	ld   de, $2411                                   ; $6d8a: $11 $11 $24
	ld   a, c                                        ; $6d8d: $79
	xor  h                                           ; $6d8e: $ac
	sbc  $ff                                         ; $6d8f: $de $ff
	rst  $38                                         ; $6d91: $ff
	rst  $38                                         ; $6d92: $ff
	rst  $38                                         ; $6d93: $ff
	rst  $38                                         ; $6d94: $ff
	rst  $38                                         ; $6d95: $ff
	rst  $38                                         ; $6d96: $ff
	rst  $38                                         ; $6d97: $ff
	db   $ed                                         ; $6d98: $ed
	res  5, c                                        ; $6d99: $cb $a9
	add  a                                           ; $6d9b: $87
	ld   h, l                                        ; $6d9c: $65
	ld   sp, $1111                                   ; $6d9d: $31 $11 $11
	ld   de, $1111                                   ; $6da0: $11 $11 $11
	ld   de, $1111                                   ; $6da3: $11 $11 $11
	inc  de                                          ; $6da6: $13
	ld   d, a                                        ; $6da7: $57
	xor  [hl]                                        ; $6da8: $ae
	rst  $38                                         ; $6da9: $ff
	rst  $38                                         ; $6daa: $ff
	rst  $38                                         ; $6dab: $ff
	rst  $38                                         ; $6dac: $ff
	rst  $38                                         ; $6dad: $ff
	rst  $38                                         ; $6dae: $ff
	rst  $38                                         ; $6daf: $ff
	rst  $38                                         ; $6db0: $ff
	rst  $38                                         ; $6db1: $ff
	jp   z, Jump_0de_4396                            ; $6db2: $ca $96 $43

	ld   de, $1111                                   ; $6db5: $11 $11 $11
	ld   de, $1111                                   ; $6db8: $11 $11 $11
	ld   de, $1111                                   ; $6dbb: $11 $11 $11
	ld   de, $ae36                                   ; $6dbe: $11 $36 $ae
	rst  $38                                         ; $6dc1: $ff
	rst  $38                                         ; $6dc2: $ff
	rst  $38                                         ; $6dc3: $ff
	rst  $38                                         ; $6dc4: $ff
	rst  $38                                         ; $6dc5: $ff
	rst  $38                                         ; $6dc6: $ff
	rst  $38                                         ; $6dc7: $ff
	rst  $38                                         ; $6dc8: $ff
	rst  $38                                         ; $6dc9: $ff
	db   $db                                         ; $6dca: $db
	sub  [hl]                                        ; $6dcb: $96
	ld   [hl-], a                                    ; $6dcc: $32
	ld   de, $1111                                   ; $6dcd: $11 $11 $11
	ld   de, $1111                                   ; $6dd0: $11 $11 $11
	ld   de, $1111                                   ; $6dd3: $11 $11 $11
	ld   de, $9c25                                   ; $6dd6: $11 $25 $9c
	rst  $38                                         ; $6dd9: $ff
	rst  $38                                         ; $6dda: $ff
	rst  $38                                         ; $6ddb: $ff
	rst  $38                                         ; $6ddc: $ff
	rst  $38                                         ; $6ddd: $ff
	rst  $38                                         ; $6dde: $ff
	rst  $38                                         ; $6ddf: $ff
	rst  $38                                         ; $6de0: $ff
	rst  $38                                         ; $6de1: $ff
	db   $ec                                         ; $6de2: $ec
	sub  [hl]                                        ; $6de3: $96
	ld   b, d                                        ; $6de4: $42
	ld   de, $1111                                   ; $6de5: $11 $11 $11
	ld   de, $1111                                   ; $6de8: $11 $11 $11
	ld   de, $1111                                   ; $6deb: $11 $11 $11
	ld   de, $7b25                                   ; $6dee: $11 $25 $7b
	rst  $38                                         ; $6df1: $ff
	rst  $38                                         ; $6df2: $ff
	rst  $38                                         ; $6df3: $ff
	rst  $38                                         ; $6df4: $ff
	rst  $38                                         ; $6df5: $ff
	rst  $38                                         ; $6df6: $ff
	rst  $38                                         ; $6df7: $ff
	rst  $38                                         ; $6df8: $ff
	rst  $38                                         ; $6df9: $ff
	db   $ec                                         ; $6dfa: $ec
	and  a                                           ; $6dfb: $a7
	ld   b, d                                        ; $6dfc: $42
	ld   de, $1111                                   ; $6dfd: $11 $11 $11
	ld   de, $1111                                   ; $6e00: $11 $11 $11
	ld   de, $1111                                   ; $6e03: $11 $11 $11
	ld   de, $6914                                   ; $6e06: $11 $14 $69
	rst  JumpTable                                         ; $6e09: $df
	rst  $38                                         ; $6e0a: $ff
	rst  $38                                         ; $6e0b: $ff
	rst  $38                                         ; $6e0c: $ff
	rst  $38                                         ; $6e0d: $ff
	rst  $38                                         ; $6e0e: $ff
	rst  $38                                         ; $6e0f: $ff
	rst  $38                                         ; $6e10: $ff
	rst  $38                                         ; $6e11: $ff
	db   $fd                                         ; $6e12: $fd
	xor  b                                           ; $6e13: $a8
	ld   d, e                                        ; $6e14: $53
	ld   de, $1111                                   ; $6e15: $11 $11 $11
	ld   de, $1111                                   ; $6e18: $11 $11 $11
	ld   de, $1111                                   ; $6e1b: $11 $11 $11
	ld   de, $6914                                   ; $6e1e: $11 $14 $69
	rst  JumpTable                                         ; $6e21: $df
	rst  $38                                         ; $6e22: $ff
	rst  $38                                         ; $6e23: $ff
	rst  $38                                         ; $6e24: $ff
	rst  $38                                         ; $6e25: $ff
	rst  $38                                         ; $6e26: $ff
	rst  $38                                         ; $6e27: $ff
	rst  $38                                         ; $6e28: $ff
	rst  $38                                         ; $6e29: $ff
	db   $fd                                         ; $6e2a: $fd
	xor  b                                           ; $6e2b: $a8
	ld   d, e                                        ; $6e2c: $53
	ld   de, $1111                                   ; $6e2d: $11 $11 $11
	ld   de, $1111                                   ; $6e30: $11 $11 $11
	ld   de, $1111                                   ; $6e33: $11 $11 $11
	ld   de, $7a24                                   ; $6e36: $11 $24 $7a
	rst  $28                                         ; $6e39: $ef
	rst  $38                                         ; $6e3a: $ff
	rst  $38                                         ; $6e3b: $ff
	rst  $38                                         ; $6e3c: $ff
	rst  $38                                         ; $6e3d: $ff
	rst  $38                                         ; $6e3e: $ff
	rst  $38                                         ; $6e3f: $ff
	rst  $38                                         ; $6e40: $ff
	rst  $38                                         ; $6e41: $ff
	db   $fd                                         ; $6e42: $fd
	and  a                                           ; $6e43: $a7
	ld   d, e                                        ; $6e44: $53
	ld   de, $1111                                   ; $6e45: $11 $11 $11
	ld   de, $1111                                   ; $6e48: $11 $11 $11
	ld   de, $1111                                   ; $6e4b: $11 $11 $11
	ld   de, $9c36                                   ; $6e4e: $11 $36 $9c
	rst  $38                                         ; $6e51: $ff
	rst  $38                                         ; $6e52: $ff
	rst  $38                                         ; $6e53: $ff
	rst  $38                                         ; $6e54: $ff
	rst  $38                                         ; $6e55: $ff
	rst  $38                                         ; $6e56: $ff
	rst  $38                                         ; $6e57: $ff
	rst  $38                                         ; $6e58: $ff
	rst  $38                                         ; $6e59: $ff
	db   $eb                                         ; $6e5a: $eb
	sub  [hl]                                        ; $6e5b: $96
	ld   sp, $1111                                   ; $6e5c: $31 $11 $11
	ld   de, $1111                                   ; $6e5f: $11 $11 $11
	ld   de, $1111                                   ; $6e62: $11 $11 $11
	ld   de, $6a14                                   ; $6e65: $11 $14 $6a
	rst  $28                                         ; $6e68: $ef
	rst  $38                                         ; $6e69: $ff
	rst  $38                                         ; $6e6a: $ff
	rst  $38                                         ; $6e6b: $ff
	rst  $38                                         ; $6e6c: $ff
	rst  $38                                         ; $6e6d: $ff
	rst  $38                                         ; $6e6e: $ff
	rst  $38                                         ; $6e6f: $ff
	rst  $38                                         ; $6e70: $ff
	db   $fd                                         ; $6e71: $fd
	cp   b                                           ; $6e72: $b8
	ld   d, e                                        ; $6e73: $53
	ld   bc, $1111                                   ; $6e74: $01 $11 $11
	ld   de, $1111                                   ; $6e77: $11 $11 $11
	ld   de, $1111                                   ; $6e7a: $11 $11 $11
	inc  h                                           ; $6e7d: $24
	ld   l, c                                        ; $6e7e: $69
	rst  $28                                         ; $6e7f: $ef
	rst  $38                                         ; $6e80: $ff
	rst  $38                                         ; $6e81: $ff
	rst  $38                                         ; $6e82: $ff
	rst  $38                                         ; $6e83: $ff
	rst  $38                                         ; $6e84: $ff
	rst  $38                                         ; $6e85: $ff
	rst  $38                                         ; $6e86: $ff
	rst  $38                                         ; $6e87: $ff
	sbc  $b7                                         ; $6e88: $de $b7
	ld   sp, $1111                                   ; $6e8a: $31 $11 $11
	ld   de, $1111                                   ; $6e8d: $11 $11 $11
	ld   de, $1111                                   ; $6e90: $11 $11 $11
	ld   l, e                                        ; $6e93: $6b
	call $ffff                                       ; $6e94: $cd $ff $ff
	rst  $38                                         ; $6e97: $ff
	rst  $38                                         ; $6e98: $ff
	rst  $38                                         ; $6e99: $ff
	rst  $38                                         ; $6e9a: $ff
	rst  $38                                         ; $6e9b: $ff
	rst  $38                                         ; $6e9c: $ff
	db   $fc                                         ; $6e9d: $fc
	cp   c                                           ; $6e9e: $b9
	ld   [hl], e                                     ; $6e9f: $73
	ld   de, $1111                                   ; $6ea0: $11 $11 $11
	ld   de, $1111                                   ; $6ea3: $11 $11 $11
	ld   de, $7c11                                   ; $6ea6: $11 $11 $7c
	rst  $38                                         ; $6ea9: $ff
	rst  $38                                         ; $6eaa: $ff
	rst  $38                                         ; $6eab: $ff
	rst  $38                                         ; $6eac: $ff
	rst  $38                                         ; $6ead: $ff
	rst  $38                                         ; $6eae: $ff
	rst  $38                                         ; $6eaf: $ff
	rst  $38                                         ; $6eb0: $ff
	rst  $38                                         ; $6eb1: $ff
	rst  $38                                         ; $6eb2: $ff
	and  a                                           ; $6eb3: $a7
	ld   [hl], h                                     ; $6eb4: $74
	ld   de, $1111                                   ; $6eb5: $11 $11 $11
	ld   de, $1111                                   ; $6eb8: $11 $11 $11
	ld   de, $ae15                                   ; $6ebb: $11 $15 $ae
	rst  $38                                         ; $6ebe: $ff
	rst  $38                                         ; $6ebf: $ff
	rst  $38                                         ; $6ec0: $ff
	rst  $38                                         ; $6ec1: $ff
	rst  $38                                         ; $6ec2: $ff
	rst  $38                                         ; $6ec3: $ff
	rst  $38                                         ; $6ec4: $ff
	rst  $38                                         ; $6ec5: $ff
	rst  $38                                         ; $6ec6: $ff
	db   $fc                                         ; $6ec7: $fc
	ld   [hl], h                                     ; $6ec8: $74
	ld   sp, $1111                                   ; $6ec9: $31 $11 $11
	ld   de, $1111                                   ; $6ecc: $11 $11 $11
	ld   de, $2711                                   ; $6ecf: $11 $11 $27
	rst  $28                                         ; $6ed2: $ef
	rst  $38                                         ; $6ed3: $ff
	rst  $38                                         ; $6ed4: $ff
	rst  $38                                         ; $6ed5: $ff
	rst  $38                                         ; $6ed6: $ff
	rst  $38                                         ; $6ed7: $ff
	rst  $38                                         ; $6ed8: $ff
	rst  $38                                         ; $6ed9: $ff
	rst  $38                                         ; $6eda: $ff
	rst  $38                                         ; $6edb: $ff
	reti                                             ; $6edc: $d9


	ld   b, d                                        ; $6edd: $42
	ld   de, $1111                                   ; $6ede: $11 $11 $11
	ld   de, $1111                                   ; $6ee1: $11 $11 $11
	ld   de, $ae15                                   ; $6ee4: $11 $15 $ae
	rst  $38                                         ; $6ee7: $ff
	rst  $38                                         ; $6ee8: $ff
	rst  $38                                         ; $6ee9: $ff
	rst  $38                                         ; $6eea: $ff
	rst  $38                                         ; $6eeb: $ff
	rst  $38                                         ; $6eec: $ff
	rst  $38                                         ; $6eed: $ff
	rst  $38                                         ; $6eee: $ff
	rst  $38                                         ; $6eef: $ff
	db   $eb                                         ; $6ef0: $eb
	ld   h, h                                        ; $6ef1: $64
	ld   de, $1111                                   ; $6ef2: $11 $11 $11
	ld   de, $1111                                   ; $6ef5: $11 $11 $11
	ld   de, $7b11                                   ; $6ef8: $11 $11 $7b
	rst  JumpTable                                         ; $6efb: $df
	rst  $38                                         ; $6efc: $ff
	rst  $38                                         ; $6efd: $ff
	rst  $38                                         ; $6efe: $ff
	rst  $38                                         ; $6eff: $ff
	rst  $38                                         ; $6f00: $ff
	rst  $38                                         ; $6f01: $ff
	rst  $38                                         ; $6f02: $ff
	rst  $38                                         ; $6f03: $ff
	rst  $38                                         ; $6f04: $ff
	ld   [hl], e                                     ; $6f05: $73
	ld   hl, $1111                                   ; $6f06: $21 $11 $11
	ld   de, $1111                                   ; $6f09: $11 $11 $11
	ld   de, $6c11                                   ; $6f0c: $11 $11 $6c
	rst  $38                                         ; $6f0f: $ff
	cp   $bf                                         ; $6f10: $fe $bf
	rst  $38                                         ; $6f12: $ff
	rst  $38                                         ; $6f13: $ff
	rst  $38                                         ; $6f14: $ff
	rst  $38                                         ; $6f15: $ff
	rst  $38                                         ; $6f16: $ff
	rst  $38                                         ; $6f17: $ff
	cp   $51                                         ; $6f18: $fe $51
	ld   de, $1111                                   ; $6f1a: $11 $11 $11
	ld   de, $1111                                   ; $6f1d: $11 $11 $11
	inc  d                                           ; $6f20: $14
	inc  sp                                          ; $6f21: $33
	ld   l, a                                        ; $6f22: $6f
	rst  $38                                         ; $6f23: $ff
	cp   c                                           ; $6f24: $b9
	rst  $38                                         ; $6f25: $ff
	rst  $38                                         ; $6f26: $ff
	rst  $38                                         ; $6f27: $ff
	rst  $38                                         ; $6f28: $ff
	rst  $38                                         ; $6f29: $ff
	rst  $38                                         ; $6f2a: $ff
	rst  $38                                         ; $6f2b: $ff
	push bc                                          ; $6f2c: $c5
	ld   de, $1111                                   ; $6f2d: $11 $11 $11
	ld   de, $1111                                   ; $6f30: $11 $11 $11
	ld   de, $5724                                   ; $6f33: $11 $24 $57
	rst  $38                                         ; $6f36: $ff
	ei                                               ; $6f37: $fb
	ld   e, a                                        ; $6f38: $5f
	rst  $38                                         ; $6f39: $ff
	rst  $38                                         ; $6f3a: $ff
	rst  $38                                         ; $6f3b: $ff
	rst  $38                                         ; $6f3c: $ff
	rst  $38                                         ; $6f3d: $ff
	rst  $38                                         ; $6f3e: $ff
	db   $fc                                         ; $6f3f: $fc
	ld   sp, $1111                                   ; $6f40: $31 $11 $11
	ld   de, $1111                                   ; $6f43: $11 $11 $11
	ld   de, $3513                                   ; $6f46: $11 $13 $35
	rst  $38                                         ; $6f49: $ff
	ld   sp, hl                                      ; $6f4a: $f9
	ld   c, a                                        ; $6f4b: $4f
	rst  $38                                         ; $6f4c: $ff
	rst  $38                                         ; $6f4d: $ff
	rst  $38                                         ; $6f4e: $ff
	rst  $38                                         ; $6f4f: $ff
	rst  $38                                         ; $6f50: $ff
	rst  $38                                         ; $6f51: $ff
	db   $fd                                         ; $6f52: $fd
	ld   [de], a                                     ; $6f53: $12
	ld   de, $1111                                   ; $6f54: $11 $11 $11
	ld   de, $1111                                   ; $6f57: $11 $11 $11
	ld   h, $15                                      ; $6f5a: $26 $15
	rst  $38                                         ; $6f5c: $ff
	ld   hl, sp+$1f                                  ; $6f5d: $f8 $1f
	rst  $38                                         ; $6f5f: $ff
	rst  $38                                         ; $6f60: $ff
	rst  $38                                         ; $6f61: $ff
	rst  $38                                         ; $6f62: $ff
	rst  $38                                         ; $6f63: $ff
	db   $eb                                         ; $6f64: $eb
	db   $fd                                         ; $6f65: $fd
	ld   de, $1111                                   ; $6f66: $11 $11 $11
	ld   de, $1111                                   ; $6f69: $11 $11 $11
	ld   [hl+], a                                    ; $6f6c: $22
	dec  d                                           ; $6f6d: $15
	ld   a, a                                        ; $6f6e: $7f
	rst  $38                                         ; $6f6f: $ff
	or   c                                           ; $6f70: $b1
	rst  $28                                         ; $6f71: $ef
	rst  $38                                         ; $6f72: $ff
	rst  $38                                         ; $6f73: $ff
	rst  $38                                         ; $6f74: $ff
	rst  $38                                         ; $6f75: $ff
	rst  $38                                         ; $6f76: $ff
	xor  $b1                                         ; $6f77: $ee $b1
	ld   de, $1111                                   ; $6f79: $11 $11 $11
	ld   de, $1111                                   ; $6f7c: $11 $11 $11
	ld   h, l                                        ; $6f7f: $65
	ld   de, $ffff                                   ; $6f80: $11 $ff $ff
	add  hl, de                                      ; $6f83: $19
	rst  $38                                         ; $6f84: $ff
	rst  $38                                         ; $6f85: $ff
	rst  $38                                         ; $6f86: $ff
	rst  $38                                         ; $6f87: $ff
	cp   $ca                                         ; $6f88: $fe $ca
	ret                                              ; $6f8a: $c9


	ld   de, $1111                                   ; $6f8b: $11 $11 $11
	ld   de, $1111                                   ; $6f8e: $11 $11 $11
	ld   de, $ac5b                                   ; $6f91: $11 $5b $ac
	rst  $38                                         ; $6f94: $ff
	db   $f4                                         ; $6f95: $f4
	cp   a                                           ; $6f96: $bf
	rst  $38                                         ; $6f97: $ff
	rst  $38                                         ; $6f98: $ff
	rst  $38                                         ; $6f99: $ff
	rst  $38                                         ; $6f9a: $ff
	db   $fd                                         ; $6f9b: $fd
	adc  b                                           ; $6f9c: $88
	sub  c                                           ; $6f9d: $91
	ld   de, $1111                                   ; $6f9e: $11 $11 $11
	ld   de, $1611                                   ; $6fa1: $11 $11 $16
	daa                                              ; $6fa4: $27
	reti                                             ; $6fa5: $d9


	rst  $38                                         ; $6fa6: $ff
	db   $fc                                         ; $6fa7: $fc
	rra                                              ; $6fa8: $1f
	rst  $38                                         ; $6fa9: $ff
	rst  $38                                         ; $6faa: $ff
	rst  $38                                         ; $6fab: $ff
	rst  $38                                         ; $6fac: $ff
	db   $fd                                         ; $6fad: $fd
	rst  ToBoot                                         ; $6fae: $c7
	ld   [hl], c                                     ; $6faf: $71
	ld   de, $1111                                   ; $6fb0: $11 $11 $11
	ld   de, $1411                                   ; $6fb3: $11 $11 $14
	ld   d, [hl]                                     ; $6fb6: $56
	ld   a, a                                        ; $6fb7: $7f
	rst  $38                                         ; $6fb8: $ff
	db   $e4                                         ; $6fb9: $e4
	sbc  a                                           ; $6fba: $9f
	rst  $38                                         ; $6fbb: $ff
	rst  $38                                         ; $6fbc: $ff
	rst  $38                                         ; $6fbd: $ff
	rst  $38                                         ; $6fbe: $ff
	rst  $38                                         ; $6fbf: $ff
	and  h                                           ; $6fc0: $a4
	ld   h, c                                        ; $6fc1: $61
	ld   de, $1111                                   ; $6fc2: $11 $11 $11
	ld   de, $1711                                   ; $6fc5: $11 $11 $17
	or   $1c                                         ; $6fc8: $f6 $1c
	rst  $38                                         ; $6fca: $ff
	ld   sp, hl                                      ; $6fcb: $f9
	scf                                              ; $6fcc: $37
	rst  $38                                         ; $6fcd: $ff
	rst  $38                                         ; $6fce: $ff
	rst  $38                                         ; $6fcf: $ff
	rst  $38                                         ; $6fd0: $ff
	ei                                               ; $6fd1: $fb
	ld   h, [hl]                                     ; $6fd2: $66
	ld   [hl], c                                     ; $6fd3: $71
	ld   de, $1111                                   ; $6fd4: $11 $11 $11
	ld   de, $1611                                   ; $6fd7: $11 $11 $16
	ld   b, h                                        ; $6fda: $44
	rst  $28                                         ; $6fdb: $ef
	rst  $38                                         ; $6fdc: $ff
	add  sp, -$74                                    ; $6fdd: $e8 $8c
	rst  $38                                         ; $6fdf: $ff
	rst  $38                                         ; $6fe0: $ff
	rst  $38                                         ; $6fe1: $ff
	rst  $38                                         ; $6fe2: $ff
	ei                                               ; $6fe3: $fb
	ld   d, [hl]                                     ; $6fe4: $56
	ld   de, $1111                                   ; $6fe5: $11 $11 $11
	ld   de, $1111                                   ; $6fe8: $11 $11 $11
	jr   c, jr_0de_7003                              ; $6feb: $38 $16

	rst  JumpTable                                         ; $6fed: $df
	db   $fd                                         ; $6fee: $fd
	and  h                                           ; $6fef: $a4
	rst  $38                                         ; $6ff0: $ff
	rst  $38                                         ; $6ff1: $ff
	rst  $38                                         ; $6ff2: $ff
	rst  $38                                         ; $6ff3: $ff
	rst  $38                                         ; $6ff4: $ff
	xor  a                                           ; $6ff5: $af
	ldh  [c], a                                      ; $6ff6: $e2
	ld   de, $1111                                   ; $6ff7: $11 $11 $11
	ld   de, $1111                                   ; $6ffa: $11 $11 $11
	ld   d, e                                        ; $6ffd: $53
	adc  l                                           ; $6ffe: $8d
	rst  $38                                         ; $6fff: $ff
	db   $fc                                         ; $7000: $fc
	ld   a, [hl]                                     ; $7001: $7e
	rst  $38                                         ; $7002: $ff

jr_0de_7003:
	rst  $38                                         ; $7003: $ff
	rst  $38                                         ; $7004: $ff
	rst  $38                                         ; $7005: $ff
	rst  $38                                         ; $7006: $ff
	add  sp, $31                                     ; $7007: $e8 $31
	ld   de, $1111                                   ; $7009: $11 $11 $11
	ld   de, $1f11                                   ; $700c: $11 $11 $1f
	ld   d, c                                        ; $700f: $51
	adc  a                                           ; $7010: $8f
	rst  $38                                         ; $7011: $ff
	di                                               ; $7012: $f3
	ld   e, a                                        ; $7013: $5f
	rst  $38                                         ; $7014: $ff
	rst  $38                                         ; $7015: $ff
	rst  $38                                         ; $7016: $ff
	rst  $38                                         ; $7017: $ff
	sbc  $f6                                         ; $7018: $de $f6
	ld   de, $1111                                   ; $701a: $11 $11 $11
	ld   de, $1111                                   ; $701d: $11 $11 $11
	ld   h, l                                        ; $7020: $65
	ld   a, l                                        ; $7021: $7d
	sbc  $ff                                         ; $7022: $de $ff
	sbc  b                                           ; $7024: $98
	rst  $38                                         ; $7025: $ff
	rst  $38                                         ; $7026: $ff
	rst  $38                                         ; $7027: $ff
	rst  $38                                         ; $7028: $ff
	rst  $38                                         ; $7029: $ff
	db   $fc                                         ; $702a: $fc
	ld   sp, $1111                                   ; $702b: $31 $11 $11
	ld   de, $1111                                   ; $702e: $11 $11 $11
	add  hl, de                                      ; $7031: $19
	ld   d, h                                        ; $7032: $54
	ld   l, l                                        ; $7033: $6d
	rst  $38                                         ; $7034: $ff
	ret                                              ; $7035: $c9


	xor  a                                           ; $7036: $af
	rst  $38                                         ; $7037: $ff
	rst  $38                                         ; $7038: $ff
	rst  $38                                         ; $7039: $ff
	rst  $38                                         ; $703a: $ff
	rst  $38                                         ; $703b: $ff
	push af                                          ; $703c: $f5
	ld   de, $1111                                   ; $703d: $11 $11 $11
	ld   de, $1111                                   ; $7040: $11 $11 $11
	dec  de                                          ; $7043: $1b
	ld   [hl], l                                     ; $7044: $75
	rst  $38                                         ; $7045: $ff
	rst  $38                                         ; $7046: $ff
	sub  e                                           ; $7047: $93

jr_0de_7048:
	rst  JumpTable                                         ; $7048: $df
	rst  $38                                         ; $7049: $ff
	rst  $38                                         ; $704a: $ff
	rst  $38                                         ; $704b: $ff
	rst  $38                                         ; $704c: $ff
	rst  $38                                         ; $704d: $ff
	or   e                                           ; $704e: $b3
	ld   de, $1111                                   ; $704f: $11 $11 $11
	ld   de, $1911                                   ; $7052: $11 $11 $19
	ld   hl, $ffbf                                   ; $7055: $21 $bf $ff
	rst  $30                                         ; $7058: $f7
	sbc  a                                           ; $7059: $9f
	rst  $38                                         ; $705a: $ff
	rst  $38                                         ; $705b: $ff
	rst  $38                                         ; $705c: $ff
	rst  $38                                         ; $705d: $ff
	rst  $38                                         ; $705e: $ff
	ld   sp, hl                                      ; $705f: $f9
	ld   b, c                                        ; $7060: $41
	ld   de, $1111                                   ; $7061: $11 $11 $11
	ld   de, $2111                                   ; $7064: $11 $11 $21
	jr   jr_0de_7048                                 ; $7067: $18 $df

	rst  $38                                         ; $7069: $ff
	ld   [hl], a                                     ; $706a: $77
	rst  $38                                         ; $706b: $ff
	rst  $38                                         ; $706c: $ff
	rst  $38                                         ; $706d: $ff
	rst  $38                                         ; $706e: $ff
	rst  $38                                         ; $706f: $ff
	rst  $38                                         ; $7070: $ff
	ld   a, [$1251]                                  ; $7071: $fa $51 $12
	ld   de, $1111                                   ; $7074: $11 $11 $11
	ld   de, $1711                                   ; $7077: $11 $11 $17
	adc  e                                           ; $707a: $8b
	cp   $6b                                         ; $707b: $fe $6b
	rst  $38                                         ; $707d: $ff
	rst  $38                                         ; $707e: $ff
	rst  $38                                         ; $707f: $ff
	rst  $38                                         ; $7080: $ff
	rst  $38                                         ; $7081: $ff
	rst  $38                                         ; $7082: $ff
	call Call_0de_6795                               ; $7083: $cd $95 $67
	ld   sp, $1121                                   ; $7086: $31 $21 $11
	ld   de, $1111                                   ; $7089: $11 $11 $11
	daa                                              ; $708c: $27
	xor  l                                           ; $708d: $ad
	xor  c                                           ; $708e: $a9
	rst  JumpTable                                         ; $708f: $df
	rst  $38                                         ; $7090: $ff
	rst  $38                                         ; $7091: $ff
	rst  $38                                         ; $7092: $ff
	rst  $38                                         ; $7093: $ff
	rst  $28                                         ; $7094: $ef
	cp   $da                                         ; $7095: $fe $da
	xor  e                                           ; $7097: $ab
	and  h                                           ; $7098: $a4
	ld   d, [hl]                                     ; $7099: $56
	ld   hl, $1111                                   ; $709a: $21 $11 $11
	ld   de, $6411                                   ; $709d: $11 $11 $64
	ld   l, d                                        ; $70a0: $6a
	ld   b, [hl]                                     ; $70a1: $46
	rst  $38                                         ; $70a2: $ff
	rst  $38                                         ; $70a3: $ff
	rst  $38                                         ; $70a4: $ff
	rst  $38                                         ; $70a5: $ff
	db   $fd                                         ; $70a6: $fd
	rst  $38                                         ; $70a7: $ff
	cp   $fd                                         ; $70a8: $fe $fd
	cp   l                                           ; $70aa: $bd
	ld   [hl], l                                     ; $70ab: $75
	ld   h, l                                        ; $70ac: $65
	ld   sp, $1111                                   ; $70ad: $31 $11 $11
	ld   de, $1211                                   ; $70b0: $11 $11 $12
	ld   e, b                                        ; $70b3: $58
	ld   e, b                                        ; $70b4: $58
	rst  $38                                         ; $70b5: $ff
	rst  $38                                         ; $70b6: $ff
	rst  $38                                         ; $70b7: $ff
	rst  $38                                         ; $70b8: $ff
	rst  $38                                         ; $70b9: $ff
	rst  $38                                         ; $70ba: $ff
	db   $fd                                         ; $70bb: $fd
	sbc  $bb                                         ; $70bc: $de $bb
	jp   nz, Jump_0de_4117                           ; $70be: $c2 $17 $41

	ld   de, $1111                                   ; $70c1: $11 $11 $11
	ld   de, $7711                                   ; $70c4: $11 $11 $77
	sbc  b                                           ; $70c7: $98
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70c8: $cf
	rst  $38                                         ; $70c9: $ff
	rst  $38                                         ; $70ca: $ff
	rst  $38                                         ; $70cb: $ff
	rst  $38                                         ; $70cc: $ff
	rst  $38                                         ; $70cd: $ff
	cp   $bc                                         ; $70ce: $fe $bc
	cp   h                                           ; $70d0: $bc
	and  [hl]                                        ; $70d1: $a6
	ld   sp, $1143                                   ; $70d2: $31 $43 $11
	ld   de, $1111                                   ; $70d5: $11 $11 $11
	ld   de, $fe8c                                   ; $70d8: $11 $8c $fe
	cp   a                                           ; $70db: $bf
	rst  $38                                         ; $70dc: $ff
	rst  $38                                         ; $70dd: $ff
	rst  $38                                         ; $70de: $ff
	rst  $38                                         ; $70df: $ff
	call c, $dafe                                    ; $70e0: $dc $fe $da
	xor  d                                           ; $70e3: $aa
	and  a                                           ; $70e4: $a7
	ld   de, $1112                                   ; $70e5: $11 $12 $11
	ld   de, $1111                                   ; $70e8: $11 $11 $11
	inc  d                                           ; $70eb: $14
	rst  JumpTable                                         ; $70ec: $df
	cp   $ef                                         ; $70ed: $fe $ef
	rst  $38                                         ; $70ef: $ff
	rst  $38                                         ; $70f0: $ff
	rst  $38                                         ; $70f1: $ff
	cp   $bc                                         ; $70f2: $fe $bc
	rst  $38                                         ; $70f4: $ff
	sub  a                                           ; $70f5: $97
	sbc  e                                           ; $70f6: $9b
	sub  d                                           ; $70f7: $92
	ld   de, $1111                                   ; $70f8: $11 $11 $11
	ld   de, $1113                                   ; $70fb: $11 $13 $11
	ld   c, a                                        ; $70fe: $4f
	rst  $38                                         ; $70ff: $ff
	rst  $38                                         ; $7100: $ff
	rst  $38                                         ; $7101: $ff
	rst  $38                                         ; $7102: $ff
	rst  JumpTable                                         ; $7103: $df
	rst  $38                                         ; $7104: $ff
	db   $eb                                         ; $7105: $eb
	rst  JumpTable                                         ; $7106: $df
	ld   a, [$d969]                                  ; $7107: $fa $69 $d9
	ld   de, $1111                                   ; $710a: $11 $11 $11
	ld   de, $4111                                   ; $710d: $11 $11 $41
	dec  d                                           ; $7110: $15
	rst  $38                                         ; $7111: $ff
	rst  $38                                         ; $7112: $ff
	rst  $38                                         ; $7113: $ff
	rst  $38                                         ; $7114: $ff
	cp   $ff                                         ; $7115: $fe $ff
	rst  $38                                         ; $7117: $ff
	call z, $b8ff                                    ; $7118: $cc $ff $b8
	sbc  d                                           ; $711b: $9a
	ld   h, c                                        ; $711c: $61
	ld   de, $1111                                   ; $711d: $11 $11 $11
	ld   de, $1112                                   ; $7120: $11 $12 $11
	cp   a                                           ; $7123: $bf
	rst  $38                                         ; $7124: $ff
	rst  $38                                         ; $7125: $ff
	rst  $38                                         ; $7126: $ff
	rst  $38                                         ; $7127: $ff
	rst  $38                                         ; $7128: $ff
	rst  $38                                         ; $7129: $ff
	db   $db                                         ; $712a: $db
	rst  $38                                         ; $712b: $ff
	ld   sp, hl                                      ; $712c: $f9
	ld   a, d                                        ; $712d: $7a
	and  h                                           ; $712e: $a4
	ld   de, $1111                                   ; $712f: $11 $11 $11
	ld   de, $1113                                   ; $7132: $11 $13 $11
	ld   e, $ff                                      ; $7135: $1e $ff
	rst  $38                                         ; $7137: $ff
	rst  $38                                         ; $7138: $ff
	rst  $38                                         ; $7139: $ff
	rst  $28                                         ; $713a: $ef
	rst  $38                                         ; $713b: $ff
	db   $fc                                         ; $713c: $fc
	xor  a                                           ; $713d: $af
	db   $fc                                         ; $713e: $fc
	ld   a, b                                        ; $713f: $78
	xor  b                                           ; $7140: $a8
	ld   hl, $1111                                   ; $7141: $21 $11 $11
	ld   de, $1111                                   ; $7144: $11 $11 $11
	ld   de, $ffff                                   ; $7147: $11 $ff $ff
	rst  $38                                         ; $714a: $ff
	rst  $38                                         ; $714b: $ff
	rst  $38                                         ; $714c: $ff
	rst  $38                                         ; $714d: $ff
	rst  $38                                         ; $714e: $ff
	db   $db                                         ; $714f: $db
	rst  $38                                         ; $7150: $ff
	rst  ToBoot                                         ; $7151: $c7
	xor  h                                           ; $7152: $ac
	ld   [hl], c                                     ; $7153: $71
	ld   de, $1111                                   ; $7154: $11 $11 $11
	ld   de, $1111                                   ; $7157: $11 $11 $11
	ld   c, a                                        ; $715a: $4f
	rst  $38                                         ; $715b: $ff
	rst  $38                                         ; $715c: $ff
	rst  $38                                         ; $715d: $ff
	rst  $38                                         ; $715e: $ff
	rst  $38                                         ; $715f: $ff
	rst  $38                                         ; $7160: $ff
	db   $db                                         ; $7161: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7162: $cf
	ld   hl, sp+$7c                                  ; $7163: $f8 $7c
	or   [hl]                                        ; $7165: $b6
	ld   de, $1111                                   ; $7166: $11 $11 $11
	ld   de, $1111                                   ; $7169: $11 $11 $11
	ld   d, $ff                                      ; $716c: $16 $ff
	rst  $38                                         ; $716e: $ff
	rst  $38                                         ; $716f: $ff
	rst  $38                                         ; $7170: $ff
	rst  $38                                         ; $7171: $ff
	rst  $38                                         ; $7172: $ff
	cp   $cc                                         ; $7173: $fe $cc
	db   $dd                                         ; $7175: $dd
	sbc  d                                           ; $7176: $9a
	cp   d                                           ; $7177: $ba
	ld   d, e                                        ; $7178: $53
	ld   de, $1111                                   ; $7179: $11 $11 $11
	ld   de, $1111                                   ; $717c: $11 $11 $11
	inc  e                                           ; $717f: $1c
	rst  $38                                         ; $7180: $ff
	rst  $38                                         ; $7181: $ff
	rst  $38                                         ; $7182: $ff
	rst  $38                                         ; $7183: $ff
	rst  $38                                         ; $7184: $ff
	rst  $38                                         ; $7185: $ff
	db   $fd                                         ; $7186: $fd
	call z, Call_0de_79cb                            ; $7187: $cc $cb $79
	sub  [hl]                                        ; $718a: $96
	ld   sp, $1111                                   ; $718b: $31 $11 $11
	ld   de, $1111                                   ; $718e: $11 $11 $11
	ld   de, $ff6e                                   ; $7191: $11 $6e $ff
	rst  $38                                         ; $7194: $ff
	rst  $38                                         ; $7195: $ff
	rst  $38                                         ; $7196: $ff
	rst  $38                                         ; $7197: $ff
	rst  $38                                         ; $7198: $ff
	ei                                               ; $7199: $fb
	adc  $b7                                         ; $719a: $ce $b7
	ld   a, b                                        ; $719c: $78
	ld   h, l                                        ; $719d: $65
	ld   hl, $1111                                   ; $719e: $21 $11 $11
	ld   de, $1111                                   ; $71a1: $11 $11 $11
	ld   de, $ff7f                                   ; $71a4: $11 $7f $ff
	rst  $38                                         ; $71a7: $ff
	rst  $38                                         ; $71a8: $ff
	rst  $38                                         ; $71a9: $ff
	rst  $38                                         ; $71aa: $ff
	rst  $38                                         ; $71ab: $ff
	ld   a, [$96bc]                                  ; $71ac: $fa $bc $96
	ld   l, b                                        ; $71af: $68
	add  l                                           ; $71b0: $85
	ld   de, $1111                                   ; $71b1: $11 $11 $11
	ld   de, $1111                                   ; $71b4: $11 $11 $11
	ld   de, $ce7c                                   ; $71b7: $11 $7c $ce
	rst  $38                                         ; $71ba: $ff
	rst  $38                                         ; $71bb: $ff
	rst  $38                                         ; $71bc: $ff
	rst  $38                                         ; $71bd: $ff
	rst  $38                                         ; $71be: $ff
	db   $fc                                         ; $71bf: $fc
	jp   z, Jump_0de_7877                            ; $71c0: $ca $77 $78

	ld   [hl], h                                     ; $71c3: $74
	ld   b, e                                        ; $71c4: $43
	ld   [de], a                                     ; $71c5: $12
	ld   de, $1111                                   ; $71c6: $11 $11 $11
	ld   de, $1211                                   ; $71c9: $11 $11 $12
	sbc  a                                           ; $71cc: $9f
	rst  $38                                         ; $71cd: $ff
	rst  $38                                         ; $71ce: $ff
	rst  $38                                         ; $71cf: $ff
	rst  $38                                         ; $71d0: $ff
	rst  $38                                         ; $71d1: $ff
	db   $fd                                         ; $71d2: $fd
	cp   d                                           ; $71d3: $ba
	xor  b                                           ; $71d4: $a8
	ld   h, l                                        ; $71d5: $65
	ld   l, b                                        ; $71d6: $68
	ld   [hl], l                                     ; $71d7: $75
	inc  sp                                          ; $71d8: $33
	ld   d, l                                        ; $71d9: $55
	ld   de, $1111                                   ; $71da: $11 $11 $11
	ld   de, $1211                                   ; $71dd: $11 $11 $12
	ld   e, e                                        ; $71e0: $5b
	call $ffff                                       ; $71e1: $cd $ff $ff
	rst  $38                                         ; $71e4: $ff
	rst  $38                                         ; $71e5: $ff
	db   $fd                                         ; $71e6: $fd
	call z, Call_0de_79a7                            ; $71e7: $cc $a7 $79
	ld   a, c                                        ; $71ea: $79
	add  a                                           ; $71eb: $87
	ld   d, [hl]                                     ; $71ec: $56
	ld   [hl], h                                     ; $71ed: $74
	ld   b, e                                        ; $71ee: $43
	ld   de, $1111                                   ; $71ef: $11 $11 $11
	ld   de, $2411                                   ; $71f2: $11 $11 $24
	ld   l, b                                        ; $71f5: $68
	sbc  h                                           ; $71f6: $9c
	rst  $38                                         ; $71f7: $ff
	rst  $38                                         ; $71f8: $ff
	rst  $38                                         ; $71f9: $ff
	rst  $38                                         ; $71fa: $ff
	xor  $fe                                         ; $71fb: $ee $fe
	cp   h                                           ; $71fd: $bc
	res  7, d                                        ; $71fe: $cb $ba
	add  a                                           ; $7200: $87
	add  a                                           ; $7201: $87
	ld   [hl], l                                     ; $7202: $75
	ld   b, e                                        ; $7203: $43
	ld   b, e                                        ; $7204: $43
	ld   de, $1111                                   ; $7205: $11 $11 $11
	ld   de, $2311                                   ; $7208: $11 $11 $23
	ld   d, [hl]                                     ; $720b: $56
	ld   h, a                                        ; $720c: $67
	sbc  d                                           ; $720d: $9a
	cp   h                                           ; $720e: $bc
	db   $dd                                         ; $720f: $dd
	rst  $28                                         ; $7210: $ef
	db   $ec                                         ; $7211: $ec
	xor  $ee                                         ; $7212: $ee $ee
	db   $ed                                         ; $7214: $ed
	db   $dd                                         ; $7215: $dd
	db   $db                                         ; $7216: $db
	cp   d                                           ; $7217: $ba
	xor  d                                           ; $7218: $aa
	sub  a                                           ; $7219: $97
	ld   [hl], a                                     ; $721a: $77
	ld   h, l                                        ; $721b: $65
	ld   b, h                                        ; $721c: $44
	ld   b, h                                        ; $721d: $44
	ld   b, h                                        ; $721e: $44
	ld   b, h                                        ; $721f: $44
	ld   b, h                                        ; $7220: $44
	ld   d, l                                        ; $7221: $55
	ld   d, [hl]                                     ; $7222: $56
	ld   h, a                                        ; $7223: $67
	ld   a, b                                        ; $7224: $78
	sbc  c                                           ; $7225: $99
	sbc  e                                           ; $7226: $9b
	xor  e                                           ; $7227: $ab
	cp   h                                           ; $7228: $bc
	call z, $bbcc                                    ; $7229: $cc $cc $bb
	res  5, e                                        ; $722c: $cb $ab
	xor  c                                           ; $722e: $a9
	sbc  c                                           ; $722f: $99
	adc  b                                           ; $7230: $88
	sbc  b                                           ; $7231: $98
	ld   [hl], a                                     ; $7232: $77
	ld   [hl], a                                     ; $7233: $77
	ld   [hl], a                                     ; $7234: $77
	ld   h, [hl]                                     ; $7235: $66
	ld   h, [hl]                                     ; $7236: $66
	ld   h, [hl]                                     ; $7237: $66
	ld   h, [hl]                                     ; $7238: $66
	ld   [hl], a                                     ; $7239: $77
	ld   [hl], a                                     ; $723a: $77
	adc  b                                           ; $723b: $88
	adc  b                                           ; $723c: $88
	sbc  b                                           ; $723d: $98
	sbc  c                                           ; $723e: $99
	sbc  b                                           ; $723f: $98
	adc  b                                           ; $7240: $88
	adc  b                                           ; $7241: $88
	adc  b                                           ; $7242: $88
	adc  b                                           ; $7243: $88
	adc  b                                           ; $7244: $88
	adc  b                                           ; $7245: $88
	adc  c                                           ; $7246: $89
	sbc  b                                           ; $7247: $98
	adc  b                                           ; $7248: $88
	sbc  c                                           ; $7249: $99
	sbc  b                                           ; $724a: $98
	adc  b                                           ; $724b: $88
	adc  b                                           ; $724c: $88
	adc  b                                           ; $724d: $88
	adc  b                                           ; $724e: $88
	adc  b                                           ; $724f: $88
	adc  b                                           ; $7250: $88
	adc  b                                           ; $7251: $88
	ld   [hl], a                                     ; $7252: $77
	ld   [hl], a                                     ; $7253: $77
	ld   [hl], a                                     ; $7254: $77
	ld   [hl], a                                     ; $7255: $77
	ld   [hl], a                                     ; $7256: $77
	ld   [hl], a                                     ; $7257: $77
	ld   [hl], a                                     ; $7258: $77
	ld   [hl], a                                     ; $7259: $77
	adc  b                                           ; $725a: $88
	adc  b                                           ; $725b: $88
	adc  b                                           ; $725c: $88
	adc  b                                           ; $725d: $88
	adc  b                                           ; $725e: $88
	adc  b                                           ; $725f: $88
	adc  b                                           ; $7260: $88
	sbc  b                                           ; $7261: $98
	adc  c                                           ; $7262: $89
	adc  b                                           ; $7263: $88
	adc  b                                           ; $7264: $88
	adc  b                                           ; $7265: $88
	add  a                                           ; $7266: $87
	ld   [hl], a                                     ; $7267: $77
	ld   [hl], a                                     ; $7268: $77
	ld   [hl], a                                     ; $7269: $77
	ld   [hl], a                                     ; $726a: $77
	ld   [hl], a                                     ; $726b: $77
	adc  b                                           ; $726c: $88
	adc  b                                           ; $726d: $88
	adc  b                                           ; $726e: $88
	adc  b                                           ; $726f: $88
	adc  b                                           ; $7270: $88
	adc  b                                           ; $7271: $88
	ld   [hl], a                                     ; $7272: $77
	adc  b                                           ; $7273: $88
	adc  b                                           ; $7274: $88
	adc  b                                           ; $7275: $88
	adc  b                                           ; $7276: $88
	adc  b                                           ; $7277: $88
	adc  b                                           ; $7278: $88
	adc  b                                           ; $7279: $88
	ld   [hl], a                                     ; $727a: $77
	ld   [hl], a                                     ; $727b: $77
	ld   [hl], a                                     ; $727c: $77
	ld   a, b                                        ; $727d: $78
	adc  b                                           ; $727e: $88
	adc  b                                           ; $727f: $88
	adc  b                                           ; $7280: $88
	adc  b                                           ; $7281: $88
	ld   [hl], a                                     ; $7282: $77
	ld   [hl], a                                     ; $7283: $77
	ld   [hl], a                                     ; $7284: $77
	ld   [hl], a                                     ; $7285: $77
	ld   a, b                                        ; $7286: $78
	ld   a, b                                        ; $7287: $78
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
	ld   [hl], a                                     ; $7297: $77
	ld   [hl], a                                     ; $7298: $77
	ld   [hl], a                                     ; $7299: $77
	ld   [hl], a                                     ; $729a: $77
	ld   [hl], a                                     ; $729b: $77
	ld   [hl], a                                     ; $729c: $77
	ld   [hl], a                                     ; $729d: $77
	ld   a, b                                        ; $729e: $78
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
	add  a                                           ; $72ae: $87
	ld   [hl], a                                     ; $72af: $77
	ld   [hl], a                                     ; $72b0: $77
	ld   [hl], a                                     ; $72b1: $77
	ld   [hl], a                                     ; $72b2: $77
	ld   [hl], a                                     ; $72b3: $77
	ld   [hl], a                                     ; $72b4: $77
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
	sbc  b                                           ; $72c0: $98
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
	adc  c                                           ; $72d2: $89
	sbc  c                                           ; $72d3: $99
	sbc  c                                           ; $72d4: $99
	sbc  c                                           ; $72d5: $99
	sbc  c                                           ; $72d6: $99
	sbc  c                                           ; $72d7: $99
	sbc  b                                           ; $72d8: $98
	adc  b                                           ; $72d9: $88
	sbc  c                                           ; $72da: $99
	sbc  c                                           ; $72db: $99
	sbc  c                                           ; $72dc: $99
	sbc  c                                           ; $72dd: $99
	sbc  b                                           ; $72de: $98
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
	sbc  c                                           ; $72ef: $99
	sbc  c                                           ; $72f0: $99
	sbc  c                                           ; $72f1: $99
	sbc  b                                           ; $72f2: $98
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
	sbc  c                                           ; $731c: $99
	add  a                                           ; $731d: $87
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
	adc  c                                           ; $7333: $89
	sbc  b                                           ; $7334: $98
	adc  b                                           ; $7335: $88
	adc  b                                           ; $7336: $88
	adc  b                                           ; $7337: $88
	ld   a, b                                        ; $7338: $78
	adc  b                                           ; $7339: $88
	adc  b                                           ; $733a: $88
	adc  b                                           ; $733b: $88
	adc  b                                           ; $733c: $88
	adc  b                                           ; $733d: $88
	xor  c                                           ; $733e: $a9
	ld   a, b                                        ; $733f: $78
	sub  a                                           ; $7340: $97
	adc  d                                           ; $7341: $8a
	sub  [hl]                                        ; $7342: $96
	ld   a, b                                        ; $7343: $78
	adc  b                                           ; $7344: $88
	sbc  c                                           ; $7345: $99
	ld   l, b                                        ; $7346: $68
	sub  a                                           ; $7347: $97
	adc  b                                           ; $7348: $88
	ld   a, c                                        ; $7349: $79
	xor  c                                           ; $734a: $a9
	ld   [hl], a                                     ; $734b: $77
	sbc  b                                           ; $734c: $98
	ld   a, b                                        ; $734d: $78
	ld   [hl], a                                     ; $734e: $77
	adc  b                                           ; $734f: $88
	ld   [hl], a                                     ; $7350: $77
	ld   a, b                                        ; $7351: $78
	ld   a, c                                        ; $7352: $79
	sub  a                                           ; $7353: $97
	ld   a, d                                        ; $7354: $7a
	sub  [hl]                                        ; $7355: $96
	ld   [hl], a                                     ; $7356: $77
	add  a                                           ; $7357: $87
	ld   [hl], a                                     ; $7358: $77
	ld   [hl], a                                     ; $7359: $77
	ld   a, b                                        ; $735a: $78
	sub  a                                           ; $735b: $97
	adc  b                                           ; $735c: $88
	ld   a, c                                        ; $735d: $79
	add  a                                           ; $735e: $87
	ld   a, b                                        ; $735f: $78
	adc  c                                           ; $7360: $89
	add  [hl]                                        ; $7361: $86
	sbc  b                                           ; $7362: $98
	ld   a, c                                        ; $7363: $79
	ld   [hl], l                                     ; $7364: $75
	ld   a, c                                        ; $7365: $79
	cp   d                                           ; $7366: $ba
	halt                                             ; $7367: $76
	adc  c                                           ; $7368: $89
	halt                                             ; $7369: $76
	ld   a, c                                        ; $736a: $79
	sbc  b                                           ; $736b: $98
	add  a                                           ; $736c: $87
	sbc  c                                           ; $736d: $99
	ld   a, d                                        ; $736e: $7a
	add  a                                           ; $736f: $87
	sbc  c                                           ; $7370: $99
	xor  d                                           ; $7371: $aa
	ld   h, [hl]                                     ; $7372: $66
	xor  b                                           ; $7373: $a8
	ld   [hl], a                                     ; $7374: $77
	sbc  b                                           ; $7375: $98
	adc  b                                           ; $7376: $88
	ld   a, b                                        ; $7377: $78
	ld   a, b                                        ; $7378: $78
	adc  b                                           ; $7379: $88
	ld   [hl], a                                     ; $737a: $77
	add  [hl]                                        ; $737b: $86
	ld   a, c                                        ; $737c: $79
	ld   [hl], a                                     ; $737d: $77
	xor  b                                           ; $737e: $a8
	ld   a, d                                        ; $737f: $7a
	and  a                                           ; $7380: $a7
	xor  c                                           ; $7381: $a9
	adc  h                                           ; $7382: $8c
	halt                                             ; $7383: $76
	xor  c                                           ; $7384: $a9
	adc  c                                           ; $7385: $89
	sbc  e                                           ; $7386: $9b
	xor  c                                           ; $7387: $a9
	xor  b                                           ; $7388: $a8
	ld   a, c                                        ; $7389: $79
	add  l                                           ; $738a: $85
	ld   [hl], a                                     ; $738b: $77
	scf                                              ; $738c: $37
	ld   h, h                                        ; $738d: $64
	ld   h, a                                        ; $738e: $67
	adc  b                                           ; $738f: $88
	ld   h, a                                        ; $7390: $67
	adc  b                                           ; $7391: $88
	add  [hl]                                        ; $7392: $86
	adc  b                                           ; $7393: $88
	ld   a, b                                        ; $7394: $78
	ld   h, [hl]                                     ; $7395: $66
	add  a                                           ; $7396: $87
	ld   h, a                                        ; $7397: $67
	ld   h, [hl]                                     ; $7398: $66
	add  [hl]                                        ; $7399: $86
	halt                                             ; $739a: $76
	ld   l, c                                        ; $739b: $69
	add  [hl]                                        ; $739c: $86
	ld   h, a                                        ; $739d: $67
	ld   a, c                                        ; $739e: $79
	add  [hl]                                        ; $739f: $86
	ld   a, c                                        ; $73a0: $79
	sbc  b                                           ; $73a1: $98
	add  a                                           ; $73a2: $87
	ld   a, b                                        ; $73a3: $78
	sbc  b                                           ; $73a4: $98
	ld   h, a                                        ; $73a5: $67
	add  a                                           ; $73a6: $87
	adc  b                                           ; $73a7: $88
	ld   [hl], a                                     ; $73a8: $77
	sbc  c                                           ; $73a9: $99
	add  a                                           ; $73aa: $87
	adc  b                                           ; $73ab: $88
	adc  c                                           ; $73ac: $89
	ld   [hl], a                                     ; $73ad: $77
	ld   [hl], a                                     ; $73ae: $77
	sub  a                                           ; $73af: $97
	ld   h, [hl]                                     ; $73b0: $66
	ld   [hl], a                                     ; $73b1: $77
	halt                                             ; $73b2: $76
	ld   h, l                                        ; $73b3: $65
	ld   h, [hl]                                     ; $73b4: $66
	ld   h, l                                        ; $73b5: $65
	ld   d, l                                        ; $73b6: $55
	ld   h, [hl]                                     ; $73b7: $66
	ld   h, [hl]                                     ; $73b8: $66
	ld   d, [hl]                                     ; $73b9: $56
	ld   [hl], a                                     ; $73ba: $77
	ld   a, b                                        ; $73bb: $78
	adc  c                                           ; $73bc: $89
	sbc  e                                           ; $73bd: $9b
	cp   e                                           ; $73be: $bb
	call $edde                                       ; $73bf: $cd $de $ed
	xor  $ed                                         ; $73c2: $ee $ed
	call c, $bacb                                    ; $73c4: $dc $cb $ba
	sbc  c                                           ; $73c7: $99
	sbc  b                                           ; $73c8: $98
	adc  b                                           ; $73c9: $88
	ld   h, l                                        ; $73ca: $65
	ld   d, l                                        ; $73cb: $55
	inc  sp                                          ; $73cc: $33
	ld   hl, $1111                                   ; $73cd: $21 $11 $11
	ld   de, $2411                                   ; $73d0: $11 $11 $24
	ld   c, b                                        ; $73d3: $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73d4: $cf
	rst  $38                                         ; $73d5: $ff
	rst  $38                                         ; $73d6: $ff
	rst  $38                                         ; $73d7: $ff
	rst  $38                                         ; $73d8: $ff
	rst  $38                                         ; $73d9: $ff
	cp   $db                                         ; $73da: $fe $db
	call z, $edee                                    ; $73dc: $cc $ee $ed
	rst  $38                                         ; $73df: $ff
	xor  $dc                                         ; $73e0: $ee $dc
	cp   c                                           ; $73e2: $b9
	ld   h, e                                        ; $73e3: $63
	ld   de, $1111                                   ; $73e4: $11 $11 $11
	ld   de, $1111                                   ; $73e7: $11 $11 $11
	ld   de, $8c24                                   ; $73ea: $11 $24 $8c
	rst  $38                                         ; $73ed: $ff
	rst  $38                                         ; $73ee: $ff
	rst  $38                                         ; $73ef: $ff
	rst  $38                                         ; $73f0: $ff
	rst  $38                                         ; $73f1: $ff
	rst  $38                                         ; $73f2: $ff
	db   $fc                                         ; $73f3: $fc
	cp   l                                           ; $73f4: $bd
	db   $ed                                         ; $73f5: $ed
	cp   l                                           ; $73f6: $bd
	sbc  $ee                                         ; $73f7: $de $ee
	xor  d                                           ; $73f9: $aa
	call c, Call_0de_5396                            ; $73fa: $dc $96 $53
	ld   hl, $1111                                   ; $73fd: $21 $11 $11
	ld   de, $1111                                   ; $7400: $11 $11 $11
	ld   de, $7f45                                   ; $7403: $11 $45 $7f
	rst  $38                                         ; $7406: $ff
	rst  $38                                         ; $7407: $ff
	rst  $38                                         ; $7408: $ff
	rst  $38                                         ; $7409: $ff
	db   $fc                                         ; $740a: $fc
	rst  $28                                         ; $740b: $ef
	db   $ed                                         ; $740c: $ed
	call $edef                                       ; $740d: $cd $ef $ed
	xor  $fe                                         ; $7410: $ee $fe
	xor  d                                           ; $7412: $aa
	xor  d                                           ; $7413: $aa
	add  [hl]                                        ; $7414: $86
	ld   b, e                                        ; $7415: $43
	ld   [hl-], a                                    ; $7416: $32
	ld   de, $1111                                   ; $7417: $11 $11 $11
	ld   de, $1111                                   ; $741a: $11 $11 $11
	ld   d, a                                        ; $741d: $57
	rst  $28                                         ; $741e: $ef
	rst  $38                                         ; $741f: $ff
	rst  $38                                         ; $7420: $ff
	rst  $38                                         ; $7421: $ff
	rst  $38                                         ; $7422: $ff
	db   $fd                                         ; $7423: $fd
	call $cdfd                                       ; $7424: $cd $fd $cd
	rst  $28                                         ; $7427: $ef
	rst  $38                                         ; $7428: $ff
	db   $dd                                         ; $7429: $dd
	xor  $a7                                         ; $742a: $ee $a7
	adc  d                                           ; $742c: $8a
	add  l                                           ; $742d: $85
	ld   hl, $1111                                   ; $742e: $21 $11 $11
	ld   de, $1111                                   ; $7431: $11 $11 $11
	ld   de, $7d12                                   ; $7434: $11 $12 $7d
	rst  $38                                         ; $7437: $ff
	rst  $38                                         ; $7438: $ff
	rst  $38                                         ; $7439: $ff
	rst  $38                                         ; $743a: $ff
	cp   $dd                                         ; $743b: $fe $dd
	rst  $38                                         ; $743d: $ff
	call z, $eeff                                    ; $743e: $cc $ff $ee
	call c, $b6de                                    ; $7441: $dc $de $b6
	ld   a, c                                        ; $7444: $79
	sbc  b                                           ; $7445: $98
	ld   d, c                                        ; $7446: $51
	ld   [de], a                                     ; $7447: $12
	ld   hl, $1111                                   ; $7448: $21 $11 $11
	ld   de, $1711                                   ; $744b: $11 $11 $17
	adc  d                                           ; $744e: $8a
	rst  JumpTable                                         ; $744f: $df
	rst  $38                                         ; $7450: $ff
	ld   a, [$ffdf]                                  ; $7451: $fa $df $ff
	db   $dd                                         ; $7454: $dd
	rst  $28                                         ; $7455: $ef
	rst  $38                                         ; $7456: $ff
	sbc  $ff                                         ; $7457: $de $ff
	db   $fd                                         ; $7459: $fd
	sbc  b                                           ; $745a: $98
	xor  e                                           ; $745b: $ab
	ld   [hl], a                                     ; $745c: $77
	add  [hl]                                        ; $745d: $86
	ld   h, h                                        ; $745e: $64
	ld   de, $1111                                   ; $745f: $11 $11 $11
	ld   de, $1111                                   ; $7462: $11 $11 $11
	dec  h                                           ; $7465: $25
	sbc  a                                           ; $7466: $9f
	rst  $38                                         ; $7467: $ff
	rst  $38                                         ; $7468: $ff
	cp   $df                                         ; $7469: $fe $df
	rst  $38                                         ; $746b: $ff
	db   $dd                                         ; $746c: $dd
	rst  $38                                         ; $746d: $ff
	rst  $38                                         ; $746e: $ff
	rst  $28                                         ; $746f: $ef
	rst  $38                                         ; $7470: $ff
	ld   [$9979], a                                  ; $7471: $ea $79 $99
	sub  e                                           ; $7474: $93

jr_0de_7475:
	ld   h, [hl]                                     ; $7475: $66
	ld   [hl-], a                                    ; $7476: $32
	ld   de, $1111                                   ; $7477: $11 $11 $11
	ld   de, $1211                                   ; $747a: $11 $11 $12
	ld   l, c                                        ; $747d: $69
	rst  $38                                         ; $747e: $ff
	rst  $38                                         ; $747f: $ff
	rst  $38                                         ; $7480: $ff
	rst  $38                                         ; $7481: $ff
	cp   $de                                         ; $7482: $fe $de
	rst  $38                                         ; $7484: $ff
	rst  $38                                         ; $7485: $ff
	rst  $38                                         ; $7486: $ff
	rst  $38                                         ; $7487: $ff
	jp   z, $a7ab                                    ; $7488: $ca $ab $a7

	ld   h, a                                        ; $748b: $67
	ld   h, l                                        ; $748c: $65
	ld   sp, $1111                                   ; $748d: $31 $11 $11
	ld   de, $1111                                   ; $7490: $11 $11 $11
	ld   [de], a                                     ; $7493: $12
	ld   l, e                                        ; $7494: $6b
	rst  $38                                         ; $7495: $ff
	rst  $38                                         ; $7496: $ff
	db   $fd                                         ; $7497: $fd
	rst  $38                                         ; $7498: $ff
	rst  $38                                         ; $7499: $ff
	rst  $38                                         ; $749a: $ff
	rst  $38                                         ; $749b: $ff
	rst  $38                                         ; $749c: $ff
	rst  $38                                         ; $749d: $ff
	db   $ed                                         ; $749e: $ed
	db   $fc                                         ; $749f: $fc
	adc  b                                           ; $74a0: $88
	add  a                                           ; $74a1: $87
	ld   [hl], l                                     ; $74a2: $75
	ld   b, d                                        ; $74a3: $42
	ld   sp, $1111                                   ; $74a4: $31 $11 $11
	ld   de, $1311                                   ; $74a7: $11 $11 $13
	sub  h                                           ; $74aa: $94
	ld   l, e                                        ; $74ab: $6b
	rst  $38                                         ; $74ac: $ff
	rst  $38                                         ; $74ad: $ff
	xor  c                                           ; $74ae: $a9
	rst  $38                                         ; $74af: $ff
	cp   $cf                                         ; $74b0: $fe $cf
	rst  $38                                         ; $74b2: $ff
	rst  $38                                         ; $74b3: $ff
	rst  JumpTable                                         ; $74b4: $df
	cp   $a5                                         ; $74b5: $fe $a5
	adc  c                                           ; $74b7: $89
	add  [hl]                                        ; $74b8: $86
	inc  de                                          ; $74b9: $13
	ld   b, e                                        ; $74ba: $43
	ld   de, $1111                                   ; $74bb: $11 $11 $11
	ld   de, $8c11                                   ; $74be: $11 $11 $8c
	ld   h, a                                        ; $74c1: $67
	rst  JumpTable                                         ; $74c2: $df
	cp   $49                                         ; $74c3: $fe $49
	rst  $38                                         ; $74c5: $ff
	rst  $38                                         ; $74c6: $ff
	rst  $28                                         ; $74c7: $ef
	rst  $38                                         ; $74c8: $ff
	rst  $38                                         ; $74c9: $ff
	sbc  $ff                                         ; $74ca: $de $ff
	or   h                                           ; $74cc: $b4
	jr   c, jr_0de_7475                              ; $74cd: $38 $a6

	ld   hl, $1111                                   ; $74cf: $21 $11 $11
	ld   de, $1111                                   ; $74d2: $11 $11 $11
	ld   de, $c89e                                   ; $74d5: $11 $9e $c8
	sbc  a                                           ; $74d8: $9f
	db   $fd                                         ; $74d9: $fd
	set  7, a                                        ; $74da: $cb $ff
	rst  $38                                         ; $74dc: $ff
	rst  $38                                         ; $74dd: $ff
	rst  $38                                         ; $74de: $ff
	rst  $38                                         ; $74df: $ff
	db   $fd                                         ; $74e0: $fd
	ei                                               ; $74e1: $fb
	ld   d, [hl]                                     ; $74e2: $56
	ld   [hl], l                                     ; $74e3: $75
	ld   b, d                                        ; $74e4: $42
	ld   de, $1111                                   ; $74e5: $11 $11 $11
	ld   de, $1111                                   ; $74e8: $11 $11 $11
	jr   c, jr_0de_7568                              ; $74eb: $38 $7b

	rst  $38                                         ; $74ed: $ff
	rst  $38                                         ; $74ee: $ff
	ei                                               ; $74ef: $fb
	rst  $38                                         ; $74f0: $ff
	rst  $38                                         ; $74f1: $ff
	rst  $38                                         ; $74f2: $ff
	rst  $38                                         ; $74f3: $ff
	rst  $38                                         ; $74f4: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74f5: $cf
	ld   sp, hl                                      ; $74f6: $f9
	sub  l                                           ; $74f7: $95
	ld   d, a                                        ; $74f8: $57
	ld   sp, $1111                                   ; $74f9: $31 $11 $11
	ld   de, $1111                                   ; $74fc: $11 $11 $11
	ld   de, $6d89                                   ; $74ff: $11 $89 $6d
	rst  $38                                         ; $7502: $ff
	rst  $38                                         ; $7503: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7504: $cf
	rst  $38                                         ; $7505: $ff
	rst  $38                                         ; $7506: $ff
	rst  $38                                         ; $7507: $ff
	rst  $38                                         ; $7508: $ff
	rst  $38                                         ; $7509: $ff
	cp   $cb                                         ; $750a: $fe $cb
	halt                                             ; $750c: $76
	ld   [hl+], a                                    ; $750d: $22
	ld   de, $1111                                   ; $750e: $11 $11 $11
	ld   de, $1111                                   ; $7511: $11 $11 $11
	ld   c, c                                        ; $7514: $49
	ld   [de], a                                     ; $7515: $12
	rst  $38                                         ; $7516: $ff
	rst  $38                                         ; $7517: $ff
	ld   a, l                                        ; $7518: $7d
	rst  $28                                         ; $7519: $ef
	rst  $38                                         ; $751a: $ff
	rst  $38                                         ; $751b: $ff
	rst  $38                                         ; $751c: $ff
	rst  $38                                         ; $751d: $ff
	rst  $38                                         ; $751e: $ff
	cp   $76                                         ; $751f: $fe $76
	inc  h                                           ; $7521: $24
	ld   hl, $1111                                   ; $7522: $21 $11 $11
	ld   de, $1111                                   ; $7525: $11 $11 $11
	add  c                                           ; $7528: $81
	ld   e, $fd                                      ; $7529: $1e $fd
	rst  $38                                         ; $752b: $ff
	ret  z                                           ; $752c: $c8

	sbc  a                                           ; $752d: $9f
	db   $fd                                         ; $752e: $fd
	rst  $38                                         ; $752f: $ff
	rst  $38                                         ; $7530: $ff
	rst  $38                                         ; $7531: $ff
	xor  $fa                                         ; $7532: $ee $fa
	cp   d                                           ; $7534: $ba
	ld   b, c                                        ; $7535: $41
	ld   de, $1111                                   ; $7536: $11 $11 $11
	ld   de, $3311                                   ; $7539: $11 $11 $33
	ld   de, $fb2f                                   ; $753c: $11 $2f $fb
	ldh  a, [c]                                      ; $753f: $f2
	xor  a                                           ; $7540: $af
	rst  $38                                         ; $7541: $ff
	sbc  $ff                                         ; $7542: $de $ff
	rst  $38                                         ; $7544: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7545: $cf
	ld   a, [$5df5]                                  ; $7546: $fa $f5 $5d
	ld   de, $2111                                   ; $7549: $11 $11 $21
	ld   de, $0711                                   ; $754c: $11 $11 $07
	ld   de, $ff1b                                   ; $754f: $11 $1b $ff
	ld   a, b                                        ; $7552: $78
	ld   a, e                                        ; $7553: $7b
	rst  $38                                         ; $7554: $ff
	cp   a                                           ; $7555: $bf
	rst  $38                                         ; $7556: $ff
	rst  $38                                         ; $7557: $ff
	rst  $28                                         ; $7558: $ef
	rst  $38                                         ; $7559: $ff
	sub  [hl]                                        ; $755a: $96
	ld   d, l                                        ; $755b: $55
	or   e                                           ; $755c: $b3
	ld   de, $1111                                   ; $755d: $11 $11 $11
	ld   de, $611c                                   ; $7560: $11 $1c $61
	dec  hl                                          ; $7563: $2b
	rst  $38                                         ; $7564: $ff
	ld   a, [hl+]                                    ; $7565: $2a
	ld   h, h                                        ; $7566: $64
	rst  $38                                         ; $7567: $ff

jr_0de_7568:
	rst  $28                                         ; $7568: $ef
	rst  $38                                         ; $7569: $ff
	rst  $38                                         ; $756a: $ff
	push af                                          ; $756b: $f5
	sbc  a                                           ; $756c: $9f
	and  l                                           ; $756d: $a5
	ld   b, e                                        ; $756e: $43
	ld   [hl], d                                     ; $756f: $72
	ld   [hl-], a                                    ; $7570: $32
	ld   de, $8611                                   ; $7571: $11 $11 $86
	dec  d                                           ; $7574: $15
	db   $db                                         ; $7575: $db
	ld   [hl], $fa                                   ; $7576: $36 $fa
	rra                                              ; $7578: $1f
	xor  a                                           ; $7579: $af
	rst  $38                                         ; $757a: $ff
	rst  $38                                         ; $757b: $ff
	rst  $38                                         ; $757c: $ff
	xor  a                                           ; $757d: $af
	or   $95                                         ; $757e: $f6 $95
	ld   a, b                                        ; $7580: $78
	dec  d                                           ; $7581: $15
	ld   sp, $1111                                   ; $7582: $31 $11 $11
	inc  e                                           ; $7585: $1c
	ld   l, d                                        ; $7586: $6a

Jump_0de_7587:
	ld   de, $ffff                                   ; $7587: $11 $ff $ff
	ld   d, $ef                                      ; $758a: $16 $ef
	di                                               ; $758c: $f3
	adc  a                                           ; $758d: $8f
	rst  $38                                         ; $758e: $ff
	db   $f4                                         ; $758f: $f4
	ld   a, d                                        ; $7590: $7a
	rl   c                                           ; $7591: $cb $11
	rla                                              ; $7593: $17
	and  c                                           ; $7594: $a1
	ld   de, $ed11                                   ; $7595: $11 $11 $ed
	ld   [de], a                                     ; $7598: $12
	ld   l, c                                        ; $7599: $69
	rst  $38                                         ; $759a: $ff
	ld   h, c                                        ; $759b: $61
	rst  $38                                         ; $759c: $ff
	rst  $38                                         ; $759d: $ff
	xor  c                                           ; $759e: $a9
	rst  $38                                         ; $759f: $ff
	db   $fc                                         ; $75a0: $fc
	cp   l                                           ; $75a1: $bd
	xor  [hl]                                        ; $75a2: $ae
	add  c                                           ; $75a3: $81
	inc  de                                          ; $75a4: $13
	add  c                                           ; $75a5: $81
	ld   de, $1111                                   ; $75a6: $11 $11 $11
	sub  [hl]                                        ; $75a9: $96
	ld   e, $f5                                      ; $75aa: $1e $f5
	rst  $38                                         ; $75ac: $ff
	add  hl, de                                      ; $75ad: $19
	rst  $38                                         ; $75ae: $ff
	rst  $30                                         ; $75af: $f7
	rst  $38                                         ; $75b0: $ff
	rst  JumpTable                                         ; $75b1: $df
	call nc, Call_0de_7bfa                           ; $75b2: $d4 $fa $7b
	ld   de, $4153                                   ; $75b5: $11 $53 $41
	inc  d                                           ; $75b8: $14
	ld   de, $c815                                   ; $75b9: $11 $15 $c8
	cpl                                              ; $75bc: $2f
	rst  $38                                         ; $75bd: $ff
	ld   [hl], a                                     ; $75be: $77
	rst  ToBoot                                         ; $75bf: $c7
	rst  $38                                         ; $75c0: $ff
	rst  $38                                         ; $75c1: $ff
	rst  $28                                         ; $75c2: $ef
	rst  $38                                         ; $75c3: $ff
	xor  h                                           ; $75c4: $ac
	ld   [hl], l                                     ; $75c5: $75
	and  [hl]                                        ; $75c6: $a6
	ld   sp, $1111                                   ; $75c7: $31 $11 $11
	ld   de, $6a16                                   ; $75ca: $11 $16 $6a
	rst  $30                                         ; $75cd: $f7
	ld   e, [hl]                                     ; $75ce: $5e
	xor  l                                           ; $75cf: $ad
	ret  c                                           ; $75d0: $d8

	ei                                               ; $75d1: $fb
	ld   l, a                                        ; $75d2: $6f
	cp   $fe                                         ; $75d3: $fe $fe
	cp   a                                           ; $75d5: $bf
	sub  [hl]                                        ; $75d6: $96
	ld   d, c                                        ; $75d7: $51
	ld   d, e                                        ; $75d8: $53
	ld   de, $1121                                   ; $75d9: $11 $21 $11
	dec  e                                           ; $75dc: $1d
	pop  af                                          ; $75dd: $f1
	add  hl, de                                      ; $75de: $19
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75df: $cf
	and  h                                           ; $75e0: $a4
	and  $9e                                         ; $75e1: $e6 $9e
	rst  $28                                         ; $75e3: $ef
	cp   $fe                                         ; $75e4: $fe $fe
	db   $ed                                         ; $75e6: $ed
	ld   a, c                                        ; $75e7: $79
	ld   h, h                                        ; $75e8: $64
	add  c                                           ; $75e9: $81
	ld   de, $2111                                   ; $75ea: $11 $11 $21
	ld   c, a                                        ; $75ed: $4f
	ld   [hl], l                                     ; $75ee: $75
	inc  h                                           ; $75ef: $24
	rst  $38                                         ; $75f0: $ff
	call nz, $ff1c                                   ; $75f1: $c4 $1c $ff
	ld   e, d                                        ; $75f4: $5a
	xor  a                                           ; $75f5: $af
	ei                                               ; $75f6: $fb
	ld   bc, $51af                                   ; $75f7: $01 $af $51
	ld   de, $113a                                   ; $75fa: $11 $3a $11
	ld   h, [hl]                                     ; $75fd: $66
	dec  sp                                          ; $75fe: $3b
	or   c                                           ; $75ff: $b1
	ld   c, a                                        ; $7600: $4f
	push de                                          ; $7601: $d5
	cp   h                                           ; $7602: $bc
	jr   z, @+$01                                    ; $7603: $28 $ff

	ld   a, a                                        ; $7605: $7f
	jp   hl                                          ; $7606: $e9


	db   $fc                                         ; $7607: $fc
	ld   b, l                                        ; $7608: $45
	sub  [hl]                                        ; $7609: $96
	inc  [hl]                                        ; $760a: $34
	ld   de, $5116                                   ; $760b: $11 $16 $51
	ld   l, a                                        ; $760e: $6f
	ld   d, c                                        ; $760f: $51
	ld   a, l                                        ; $7610: $7d
	rst  $30                                         ; $7611: $f7
	ld   h, [hl]                                     ; $7612: $66
	adc  a                                           ; $7613: $8f
	ld   [$efb7], a                                  ; $7614: $ea $b7 $ef
	db   $fd                                         ; $7617: $fd
	add  l                                           ; $7618: $85
	cp   b                                           ; $7619: $b8
	ld   d, a                                        ; $761a: $57
	ld   de, $5623                                   ; $761b: $11 $23 $56
	ld   b, h                                        ; $761e: $44
	and  a                                           ; $761f: $a7
	adc  h                                           ; $7620: $8c
	ld   c, l                                        ; $7621: $4d
	add  sp, -$5f                                    ; $7622: $e8 $a1
	ld   l, e                                        ; $7624: $6b
	rst  $28                                         ; $7625: $ef
	xor  b                                           ; $7626: $a8
	db   $ed                                         ; $7627: $ed
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7628: $cf
	ld   [hl], e                                     ; $7629: $73
	and  l                                           ; $762a: $a5
	ld   sp, $b611                                   ; $762b: $31 $11 $b6
	add  hl, hl                                      ; $762e: $29
	ld   c, c                                        ; $762f: $49
	ei                                               ; $7630: $fb
	ld   b, d                                        ; $7631: $42
	ld   c, a                                        ; $7632: $4f
	di                                               ; $7633: $f3
	adc  c                                           ; $7634: $89
	ld   a, a                                        ; $7635: $7f
	ld   a, [$ee6c]                                  ; $7636: $fa $6c $ee
	ldh  [c], a                                      ; $7639: $e2
	daa                                              ; $763a: $27
	ld   b, d                                        ; $763b: $42
	ld   hl, $681a                                   ; $763c: $21 $1a $68
	pop  hl                                          ; $763f: $e1
	ld   e, a                                        ; $7640: $5f
	add  sp, $11                                     ; $7641: $e8 $11
	sbc  d                                           ; $7643: $9a
	rst  $38                                         ; $7644: $ff
	ld   d, a                                        ; $7645: $57
	xor  $ef                                         ; $7646: $ee $ef
	ld   [hl+], a                                    ; $7648: $22
	call z, $11a4                                    ; $7649: $cc $a4 $11
	ld   [de], a                                     ; $764c: $12
	add  e                                           ; $764d: $83
	xor  e                                           ; $764e: $ab
	add  hl, de                                      ; $764f: $19
	add  $9b                                         ; $7650: $c6 $9b
	or   c                                           ; $7652: $b1
	ld   e, a                                        ; $7653: $5f
	jp   nz, $3fdf                                   ; $7654: $c2 $df $3f

	push af                                          ; $7657: $f5
	sbc  l                                           ; $7658: $9d
	add  e                                           ; $7659: $83
	add  e                                           ; $765a: $83
	inc  d                                           ; $765b: $14
	ld   h, a                                        ; $765c: $67
	ld   [de], a                                     ; $765d: $12
	ld   l, d                                        ; $765e: $6a
	ld   sp, hl                                      ; $765f: $f9
	ld   sp, $22cf                                   ; $7660: $31 $cf $22
	add  c                                           ; $7663: $81
	rst  $38                                         ; $7664: $ff
	ld   h, c                                        ; $7665: $61
	ei                                               ; $7666: $fb
	ld   l, a                                        ; $7667: $6f
	jp   nc, $8177                                   ; $7668: $d2 $77 $81

	ld   c, d                                        ; $766b: $4a
	inc  h                                           ; $766c: $24
	or   a                                           ; $766d: $b7
	ld   e, l                                        ; $766e: $5d
	pop  bc                                          ; $766f: $c1
	jr   c, @+$7d                                    ; $7670: $38 $7b

	and  [hl]                                        ; $7672: $a6
	xor  [hl]                                        ; $7673: $ae
	ld   d, c                                        ; $7674: $51
	cp   a                                           ; $7675: $bf
	res  4, l                                        ; $7676: $cb $a5
	dec  de                                          ; $7678: $1b
	ld   hl, sp+$42                                  ; $7679: $f8 $42
	jr   c, @-$39                                    ; $767b: $38 $c5

	ld   c, h                                        ; $767d: $4c
	ld   b, l                                        ; $767e: $45
	xor  b                                           ; $767f: $a8
	adc  d                                           ; $7680: $8a
	add  l                                           ; $7681: $85
	add  l                                           ; $7682: $85
	ld   l, h                                        ; $7683: $6c
	rst  $28                                         ; $7684: $ef
	ld   [hl], d                                     ; $7685: $72
	ld   l, d                                        ; $7686: $6a
	rst  $28                                         ; $7687: $ef
	sub  c                                           ; $7688: $91
	ld   e, h                                        ; $7689: $5c
	xor  c                                           ; $768a: $a9
	ld   b, c                                        ; $768b: $41
	ld   a, e                                        ; $768c: $7b
	sub  d                                           ; $768d: $92
	ld   e, e                                        ; $768e: $5b
	bit  0, c                                        ; $768f: $cb $41
	xor  a                                           ; $7691: $af
	sub  e                                           ; $7692: $93
	ld   [hl], a                                     ; $7693: $77
	adc  l                                           ; $7694: $8d
	ld   sp, hl                                      ; $7695: $f9
	dec  [hl]                                        ; $7696: $35
	cp   c                                           ; $7697: $b9
	sbc  l                                           ; $7698: $9d
	ld   [hl], h                                     ; $7699: $74
	ld   e, c                                        ; $769a: $59
	db   $ec                                         ; $769b: $ec
	ld   d, d                                        ; $769c: $52
	ld   b, h                                        ; $769d: $44
	sbc  e                                           ; $769e: $9b
	ld   b, [hl]                                     ; $769f: $46
	ld   h, [hl]                                     ; $76a0: $66
	db   $fc                                         ; $76a1: $fc
	ld   [hl-], a                                    ; $76a2: $32
	adc  e                                           ; $76a3: $8b
	adc  h                                           ; $76a4: $8c
	add  l                                           ; $76a5: $85
	call $9e81                                       ; $76a6: $cd $81 $9e
	rl   e                                           ; $76a9: $cb $13
	adc  c                                           ; $76ab: $89
	rst  $10                                         ; $76ac: $d7
	inc  [hl]                                        ; $76ad: $34
	sbc  b                                           ; $76ae: $98
	adc  d                                           ; $76af: $8a
	ld   l, b                                        ; $76b0: $68
	add  a                                           ; $76b1: $87
	ld   a, b                                        ; $76b2: $78
	sub  a                                           ; $76b3: $97
	and  d                                           ; $76b4: $a2
	ld   l, l                                        ; $76b5: $6d
	jp   z, Jump_0de_4767                            ; $76b6: $ca $67 $47

Jump_0de_76b9:
	and  [hl]                                        ; $76b9: $a6
	and  a                                           ; $76ba: $a7
	ld   h, $c9                                      ; $76bb: $26 $c9
	ld   e, e                                        ; $76bd: $5b
	ld   b, h                                        ; $76be: $44
	add  sp, $28                                     ; $76bf: $e8 $28
	or   h                                           ; $76c1: $b4
	ld   e, d                                        ; $76c2: $5a
	xor  d                                           ; $76c3: $aa
	halt                                             ; $76c4: $76
	ld   a, c                                        ; $76c5: $79
	rst  $30                                         ; $76c6: $f7
	inc  l                                           ; $76c7: $2c
	jp   hl                                          ; $76c8: $e9


	sbc  e                                           ; $76c9: $9b
	ld   b, [hl]                                     ; $76ca: $46
	reti                                             ; $76cb: $d9


	ld   h, [hl]                                     ; $76cc: $66
	ld   d, a                                        ; $76cd: $57
	ld   h, l                                        ; $76ce: $65
	ld   a, b                                        ; $76cf: $78
	xor  e                                           ; $76d0: $ab
	sub  l                                           ; $76d1: $95
	scf                                              ; $76d2: $37
	add  hl, sp                                      ; $76d3: $39
	push de                                          ; $76d4: $d5
	ld   a, b                                        ; $76d5: $78
	adc  e                                           ; $76d6: $8b
	ret  c                                           ; $76d7: $d8

	rla                                              ; $76d8: $17
	adc  $f7                                         ; $76d9: $ce $f7
	ld   de, $9bbc                                   ; $76db: $11 $bc $9b
	ld   b, h                                        ; $76de: $44
	adc  e                                           ; $76df: $8b
	xor  c                                           ; $76e0: $a9
	sub  e                                           ; $76e1: $93
	ld   a, c                                        ; $76e2: $79
	ld   e, b                                        ; $76e3: $58
	halt                                             ; $76e4: $76
	ld   e, b                                        ; $76e5: $58
	sbc  c                                           ; $76e6: $99
	sub  $17                                         ; $76e7: $d6 $17
	cp   d                                           ; $76e9: $ba
	ld   h, a                                        ; $76ea: $67
	ld   l, d                                        ; $76eb: $6a

jr_0de_76ec:
	and  $48                                         ; $76ec: $e6 $48
	jp   z, Jump_0de_7955                            ; $76ee: $ca $55 $79

	xor  c                                           ; $76f1: $a9
	ld   d, h                                        ; $76f2: $54
	cp   d                                           ; $76f3: $ba
	ld   a, c                                        ; $76f4: $79
	inc  [hl]                                        ; $76f5: $34
	cp   c                                           ; $76f6: $b9
	add  hl, sp                                      ; $76f7: $39
	sub  e                                           ; $76f8: $93
	adc  c                                           ; $76f9: $89
	ld   a, e                                        ; $76fa: $7b
	rst  ToBoot                                         ; $76fb: $c7
	ld   b, [hl]                                     ; $76fc: $46
	adc  e                                           ; $76fd: $8b
	jp   z, $dd42                                    ; $76fe: $ca $42 $dd

	ld   h, a                                        ; $7701: $67
	ld   l, b                                        ; $7702: $68
	db   $fc                                         ; $7703: $fc
	ld   de, $b9db                                   ; $7704: $11 $db $b9
	ld   [de], a                                     ; $7707: $12
	xor  l                                           ; $7708: $ad
	ld   [hl], h                                     ; $7709: $74
	ld   d, l                                        ; $770a: $55
	sbc  e                                           ; $770b: $9b
	ld   a, c                                        ; $770c: $79
	ld   l, b                                        ; $770d: $68
	sub  [hl]                                        ; $770e: $96
	adc  e                                           ; $770f: $8b
	rst  $10                                         ; $7710: $d7
	xor  b                                           ; $7711: $a8
	ld   c, d                                        ; $7712: $4a
	sbc  c                                           ; $7713: $99
	bit  4, h                                        ; $7714: $cb $64
	ld   a, d                                        ; $7716: $7a
	jp   z, $5a32                                    ; $7717: $ca $32 $5a

	ret                                              ; $771a: $c9


	ld   b, e                                        ; $771b: $43
	adc  [hl]                                        ; $771c: $8e
	ret  z                                           ; $771d: $c8

	inc  sp                                          ; $771e: $33
	ld   a, d                                        ; $771f: $7a
	sbc  c                                           ; $7720: $99
	cp   c                                           ; $7721: $b9
	sbc  b                                           ; $7722: $98
	ld   a, c                                        ; $7723: $79
	cp   c                                           ; $7724: $b9
	ld   d, l                                        ; $7725: $55
	ld   l, b                                        ; $7726: $68
	db   $db                                         ; $7727: $db
	add  [hl]                                        ; $7728: $86
	ld   [hl], l                                     ; $7729: $75
	ld   e, e                                        ; $772a: $5b
	adc  b                                           ; $772b: $88
	sub  l                                           ; $772c: $95
	ld   a, b                                        ; $772d: $78
	ld   [hl], a                                     ; $772e: $77
	adc  c                                           ; $772f: $89
	ld   l, b                                        ; $7730: $68
	xor  c                                           ; $7731: $a9
	ret                                              ; $7732: $c9


	ld   d, d                                        ; $7733: $52
	ld   c, l                                        ; $7734: $4d
	add  sp, $41                                     ; $7735: $e8 $41
	ld   a, [hl]                                     ; $7737: $7e
	db   $fc                                         ; $7738: $fc
	ld   [hl-], a                                    ; $7739: $32
	ld   c, b                                        ; $773a: $48
	push bc                                          ; $773b: $c5
	jr   c, jr_0de_76ec                              ; $773c: $38 $ae

	cp   b                                           ; $773e: $b8
	ld   d, h                                        ; $773f: $54
	halt                                             ; $7740: $76
	adc  d                                           ; $7741: $8a
	ld   a, c                                        ; $7742: $79
	sub  a                                           ; $7743: $97
	ld   [hl], a                                     ; $7744: $77
	adc  c                                           ; $7745: $89
	ld   [hl], a                                     ; $7746: $77
	ld   l, c                                        ; $7747: $69
	jp   z, Jump_0de_7797                            ; $7748: $ca $97 $77

	ld   l, c                                        ; $774b: $69
	ld   [hl], a                                     ; $774c: $77
	sbc  b                                           ; $774d: $98
	ld   a, c                                        ; $774e: $79
	cp   c                                           ; $774f: $b9
	sub  a                                           ; $7750: $97
	ld   d, a                                        ; $7751: $57
	sbc  d                                           ; $7752: $9a
	add  a                                           ; $7753: $87
	ld   d, h                                        ; $7754: $54
	adc  e                                           ; $7755: $8b
	sub  a                                           ; $7756: $97
	ld   d, l                                        ; $7757: $55
	ld   l, c                                        ; $7758: $69
	ret                                              ; $7759: $c9


	add  [hl]                                        ; $775a: $86
	ld   l, c                                        ; $775b: $69
	add  a                                           ; $775c: $87
	ld   a, b                                        ; $775d: $78
	xor  d                                           ; $775e: $aa
	xor  c                                           ; $775f: $a9
	sbc  c                                           ; $7760: $99
	ld   h, a                                        ; $7761: $67
	adc  c                                           ; $7762: $89
	xor  c                                           ; $7763: $a9
	sbc  b                                           ; $7764: $98
	ld   a, b                                        ; $7765: $78
	sbc  c                                           ; $7766: $99
	add  [hl]                                        ; $7767: $86
	ld   d, [hl]                                     ; $7768: $56
	ld   a, c                                        ; $7769: $79
	adc  c                                           ; $776a: $89
	sbc  b                                           ; $776b: $98
	sbc  d                                           ; $776c: $9a
	sub  [hl]                                        ; $776d: $96
	ld   b, l                                        ; $776e: $45
	sbc  e                                           ; $776f: $9b
	ret  z                                           ; $7770: $c8

	halt                                             ; $7771: $76
	ld   l, c                                        ; $7772: $69
	sbc  b                                           ; $7773: $98
	ld   d, [hl]                                     ; $7774: $56
	adc  d                                           ; $7775: $8a
	cp   c                                           ; $7776: $b9
	ld   d, h                                        ; $7777: $54
	ld   a, b                                        ; $7778: $78
	adc  c                                           ; $7779: $89
	ld   [hl], a                                     ; $777a: $77
	sbc  c                                           ; $777b: $99
	xor  b                                           ; $777c: $a8
	adc  c                                           ; $777d: $89
	adc  c                                           ; $777e: $89
	ld   h, [hl]                                     ; $777f: $66
	sbc  e                                           ; $7780: $9b
	and  [hl]                                        ; $7781: $a6
	ld   l, c                                        ; $7782: $69
	xor  c                                           ; $7783: $a9
	sub  l                                           ; $7784: $95
	ld   b, a                                        ; $7785: $47
	xor  e                                           ; $7786: $ab
	sub  a                                           ; $7787: $97
	ld   d, [hl]                                     ; $7788: $56
	sbc  b                                           ; $7789: $98
	ld   a, b                                        ; $778a: $78
	adc  b                                           ; $778b: $88
	adc  b                                           ; $778c: $88
	ld   a, b                                        ; $778d: $78
	sub  a                                           ; $778e: $97
	ld   a, b                                        ; $778f: $78
	sbc  c                                           ; $7790: $99
	xor  b                                           ; $7791: $a8
	halt                                             ; $7792: $76
	sbc  c                                           ; $7793: $99
	xor  c                                           ; $7794: $a9
	add  a                                           ; $7795: $87
	sbc  b                                           ; $7796: $98

Jump_0de_7797:
	ld   [hl], a                                     ; $7797: $77
	ld   h, [hl]                                     ; $7798: $66
	ld   a, b                                        ; $7799: $78

Call_0de_779a:
	ld   [hl], a                                     ; $779a: $77
	add  a                                           ; $779b: $87
	add  a                                           ; $779c: $87
	ld   h, a                                        ; $779d: $67
	adc  c                                           ; $779e: $89
	adc  b                                           ; $779f: $88
	adc  c                                           ; $77a0: $89
	sbc  b                                           ; $77a1: $98
	adc  c                                           ; $77a2: $89
	add  a                                           ; $77a3: $87
	adc  b                                           ; $77a4: $88
	adc  c                                           ; $77a5: $89
	adc  c                                           ; $77a6: $89
	adc  b                                           ; $77a7: $88
	halt                                             ; $77a8: $76

Call_0de_77a9:
	ld   d, [hl]                                     ; $77a9: $56
	ld   a, c                                        ; $77aa: $79
	sbc  c                                           ; $77ab: $99
	add  a                                           ; $77ac: $87
	ld   [hl], a                                     ; $77ad: $77
	adc  c                                           ; $77ae: $89
	halt                                             ; $77af: $76
	ld   a, c                                        ; $77b0: $79
	cp   d                                           ; $77b1: $ba
	halt                                             ; $77b2: $76
	ld   a, c                                        ; $77b3: $79
	xor  d                                           ; $77b4: $aa
	halt                                             ; $77b5: $76
	ld   a, b                                        ; $77b6: $78
	sbc  c                                           ; $77b7: $99

Call_0de_77b8:
	halt                                             ; $77b8: $76

Call_0de_77b9:
	adc  c                                           ; $77b9: $89
	sbc  b                                           ; $77ba: $98
	halt                                             ; $77bb: $76
	adc  b                                           ; $77bc: $88
	ld   [hl], a                                     ; $77bd: $77
	ld   [hl], a                                     ; $77be: $77
	ld   [hl], a                                     ; $77bf: $77
	sbc  c                                           ; $77c0: $99
	sbc  b                                           ; $77c1: $98
	adc  b                                           ; $77c2: $88
	adc  c                                           ; $77c3: $89
	add  a                                           ; $77c4: $87
	adc  c                                           ; $77c5: $89
	sbc  d                                           ; $77c6: $9a
	sub  a                                           ; $77c7: $97
	ld   h, [hl]                                     ; $77c8: $66
	ld   a, b                                        ; $77c9: $78
	sub  a                                           ; $77ca: $97
	ld   a, b                                        ; $77cb: $78
	sbc  d                                           ; $77cc: $9a
	sub  a                                           ; $77cd: $97
	ld   d, [hl]                                     ; $77ce: $56
	adc  b                                           ; $77cf: $88
	sbc  b                                           ; $77d0: $98
	adc  c                                           ; $77d1: $89
	xor  c                                           ; $77d2: $a9
	ld   [hl], a                                     ; $77d3: $77
	ld   [hl], a                                     ; $77d4: $77
	sbc  b                                           ; $77d5: $98
	ld   [hl], a                                     ; $77d6: $77
	ld   a, b                                        ; $77d7: $78
	sbc  b                                           ; $77d8: $98
	ld   h, [hl]                                     ; $77d9: $66
	ld   [hl], a                                     ; $77da: $77
	adc  c                                           ; $77db: $89
	ld   a, b                                        ; $77dc: $78
	xor  b                                           ; $77dd: $a8
	adc  b                                           ; $77de: $88
	add  a                                           ; $77df: $87
	adc  b                                           ; $77e0: $88
	ld   a, d                                        ; $77e1: $7a
	sbc  c                                           ; $77e2: $99
	adc  b                                           ; $77e3: $88
	ld   [hl], a                                     ; $77e4: $77
	adc  c                                           ; $77e5: $89
	adc  c                                           ; $77e6: $89
	add  a                                           ; $77e7: $87
	ld   [hl], a                                     ; $77e8: $77
	ld   [hl], a                                     ; $77e9: $77
	halt                                             ; $77ea: $76
	ld   a, c                                        ; $77eb: $79
	xor  c                                           ; $77ec: $a9
	sub  a                                           ; $77ed: $97
	ld   a, b                                        ; $77ee: $78
	add  a                                           ; $77ef: $87
	ld   h, a                                        ; $77f0: $67
	adc  d                                           ; $77f1: $8a
	sbc  c                                           ; $77f2: $99
	add  a                                           ; $77f3: $87
	adc  c                                           ; $77f4: $89
	add  a                                           ; $77f5: $87
	ld   h, a                                        ; $77f6: $67
	ld   a, c                                        ; $77f7: $79
	adc  b                                           ; $77f8: $88
	adc  c                                           ; $77f9: $89
	sbc  b                                           ; $77fa: $98
	sbc  c                                           ; $77fb: $99
	adc  b                                           ; $77fc: $88
	ld   [hl], a                                     ; $77fd: $77
	ld   a, b                                        ; $77fe: $78
	sbc  c                                           ; $77ff: $99
	add  a                                           ; $7800: $87
	ld   a, b                                        ; $7801: $78
	sbc  c                                           ; $7802: $99
	ld   [hl], a                                     ; $7803: $77
	ld   a, b                                        ; $7804: $78
	sbc  c                                           ; $7805: $99
	sbc  b                                           ; $7806: $98
	ld   a, b                                        ; $7807: $78
	adc  b                                           ; $7808: $88
	sub  a                                           ; $7809: $97
	ld   [hl], a                                     ; $780a: $77
	adc  b                                           ; $780b: $88
	sbc  c                                           ; $780c: $99
	add  a                                           ; $780d: $87
	adc  b                                           ; $780e: $88
	adc  c                                           ; $780f: $89
	add  a                                           ; $7810: $87
	adc  b                                           ; $7811: $88
	sbc  c                                           ; $7812: $99
	add  a                                           ; $7813: $87
	ld   a, b                                        ; $7814: $78
	adc  b                                           ; $7815: $88
	add  a                                           ; $7816: $87
	adc  c                                           ; $7817: $89
	adc  b                                           ; $7818: $88
	adc  b                                           ; $7819: $88
	adc  c                                           ; $781a: $89
	sbc  b                                           ; $781b: $98
	adc  b                                           ; $781c: $88
	adc  b                                           ; $781d: $88
	adc  c                                           ; $781e: $89
	adc  b                                           ; $781f: $88
	adc  b                                           ; $7820: $88
	adc  b                                           ; $7821: $88
	ld   [hl], a                                     ; $7822: $77
	adc  c                                           ; $7823: $89
	add  a                                           ; $7824: $87
	ld   [hl], a                                     ; $7825: $77
	adc  c                                           ; $7826: $89
	add  a                                           ; $7827: $87
	ld   [hl], a                                     ; $7828: $77
	adc  b                                           ; $7829: $88
	adc  b                                           ; $782a: $88
	ld   [hl], a                                     ; $782b: $77
	adc  c                                           ; $782c: $89
	sbc  b                                           ; $782d: $98
	adc  b                                           ; $782e: $88
	sbc  c                                           ; $782f: $99
	add  a                                           ; $7830: $87
	adc  b                                           ; $7831: $88
	sbc  c                                           ; $7832: $99
	ld   [hl], a                                     ; $7833: $77
	sbc  c                                           ; $7834: $99
	sbc  b                                           ; $7835: $98
	adc  b                                           ; $7836: $88
	sbc  c                                           ; $7837: $99
	adc  b                                           ; $7838: $88
	adc  b                                           ; $7839: $88
	adc  b                                           ; $783a: $88
	ld   [hl], a                                     ; $783b: $77
	adc  b                                           ; $783c: $88
	adc  b                                           ; $783d: $88
	adc  b                                           ; $783e: $88
	sbc  b                                           ; $783f: $98
	ld   [hl], a                                     ; $7840: $77
	adc  b                                           ; $7841: $88
	adc  b                                           ; $7842: $88
	adc  b                                           ; $7843: $88
	sbc  c                                           ; $7844: $99
	sbc  b                                           ; $7845: $98
	sbc  c                                           ; $7846: $99
	adc  b                                           ; $7847: $88
	adc  b                                           ; $7848: $88
	adc  b                                           ; $7849: $88
	add  a                                           ; $784a: $87
	ld   a, b                                        ; $784b: $78
	adc  c                                           ; $784c: $89
	sbc  c                                           ; $784d: $99
	adc  b                                           ; $784e: $88
	adc  b                                           ; $784f: $88
	adc  b                                           ; $7850: $88
	ld   [hl], a                                     ; $7851: $77
	adc  b                                           ; $7852: $88
	sbc  b                                           ; $7853: $98
	adc  b                                           ; $7854: $88
	sbc  b                                           ; $7855: $98
	sbc  b                                           ; $7856: $98
	adc  b                                           ; $7857: $88
	adc  b                                           ; $7858: $88
	adc  b                                           ; $7859: $88
	adc  b                                           ; $785a: $88
	ld   a, b                                        ; $785b: $78
	adc  b                                           ; $785c: $88
	adc  c                                           ; $785d: $89
	sbc  b                                           ; $785e: $98
	adc  b                                           ; $785f: $88
	adc  b                                           ; $7860: $88
	adc  b                                           ; $7861: $88
	adc  b                                           ; $7862: $88
	sbc  b                                           ; $7863: $98
	sbc  b                                           ; $7864: $98
	adc  c                                           ; $7865: $89
	adc  c                                           ; $7866: $89
	adc  b                                           ; $7867: $88
	adc  b                                           ; $7868: $88
	adc  b                                           ; $7869: $88
	add  a                                           ; $786a: $87
	adc  b                                           ; $786b: $88
	adc  b                                           ; $786c: $88
	sbc  b                                           ; $786d: $98
	adc  b                                           ; $786e: $88
	adc  b                                           ; $786f: $88
	adc  b                                           ; $7870: $88
	adc  b                                           ; $7871: $88
	adc  b                                           ; $7872: $88
	adc  b                                           ; $7873: $88
	adc  b                                           ; $7874: $88
	adc  b                                           ; $7875: $88
	adc  b                                           ; $7876: $88

Jump_0de_7877:
	adc  b                                           ; $7877: $88
	add  a                                           ; $7878: $87
	adc  b                                           ; $7879: $88
	adc  b                                           ; $787a: $88
	adc  b                                           ; $787b: $88
	adc  b                                           ; $787c: $88
	adc  b                                           ; $787d: $88
	add  a                                           ; $787e: $87
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
	add  c                                           ; $78a7: $81
	ld   de, $1111                                   ; $78a8: $11 $11 $11
	ld   de, $1111                                   ; $78ab: $11 $11 $11
	ld   de, $1111                                   ; $78ae: $11 $11 $11
	ld   de, $1111                                   ; $78b1: $11 $11 $11
	ld   de, $1111                                   ; $78b4: $11 $11 $11
	ld   de, $1111                                   ; $78b7: $11 $11 $11
	ld   de, $1111                                   ; $78ba: $11 $11 $11
	ld   de, $1111                                   ; $78bd: $11 $11 $11
	ld   de, $1111                                   ; $78c0: $11 $11 $11
	ld   de, $1111                                   ; $78c3: $11 $11 $11
	ld   de, $1111                                   ; $78c6: $11 $11 $11
	ld   de, $1111                                   ; $78c9: $11 $11 $11
	ld   de, $1111                                   ; $78cc: $11 $11 $11
	ld   de, $1111                                   ; $78cf: $11 $11 $11
	nop                                              ; $78d2: $00
	ld   c, b                                        ; $78d3: $48
	ld   de, $1111                                   ; $78d4: $11 $11 $11
	ld   de, $1111                                   ; $78d7: $11 $11 $11
	ld   de, $1111                                   ; $78da: $11 $11 $11
	ld   de, $5413                                   ; $78dd: $11 $13 $54
	ld   d, h                                        ; $78e0: $54
	ld   d, h                                        ; $78e1: $54
	ld   b, c                                        ; $78e2: $41
	rra                                              ; $78e3: $1f
	rst  $38                                         ; $78e4: $ff
	pop  af                                          ; $78e5: $f1
	ld   de, $1411                                   ; $78e6: $11 $11 $14
	sub  c                                           ; $78e9: $91
	ld   de, $dd1c                                   ; $78ea: $11 $1c $dd
	call z, $c1dd                                    ; $78ed: $cc $dd $c1
	ld   de, $1111                                   ; $78f0: $11 $11 $11
	ld   de, $1111                                   ; $78f3: $11 $11 $11
	ld   de, $1111                                   ; $78f6: $11 $11 $11
	ld   de, $1111                                   ; $78f9: $11 $11 $11
	ld   de, $5411                                   ; $78fc: $11 $11 $54
	ld   b, h                                        ; $78ff: $44
	sub  h                                           ; $7900: $94
	ld   de, $5454                                   ; $7901: $11 $54 $54
	ld   h, a                                        ; $7904: $67
	ld   [hl], d                                     ; $7905: $72
	ld   de, $1111                                   ; $7906: $11 $11 $11
	ld   de, $1112                                   ; $7909: $11 $12 $11
	ld   [de], a                                     ; $790c: $12
	ld   de, $1111                                   ; $790d: $11 $11 $11
	ld   h, [hl]                                     ; $7910: $66
	halt                                             ; $7911: $76
	ld   h, h                                        ; $7912: $64
	ld   de, $8888                                   ; $7913: $11 $88 $88
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
	sbc  b                                           ; $7931: $98
	adc  b                                           ; $7932: $88
	ld   a, b                                        ; $7933: $78
	adc  b                                           ; $7934: $88
	adc  b                                           ; $7935: $88
	adc  b                                           ; $7936: $88
	adc  b                                           ; $7937: $88
	sbc  b                                           ; $7938: $98
	ld   a, b                                        ; $7939: $78
	adc  b                                           ; $793a: $88
	adc  b                                           ; $793b: $88
	adc  b                                           ; $793c: $88
	adc  b                                           ; $793d: $88
	sbc  b                                           ; $793e: $98
	adc  b                                           ; $793f: $88
	ld   a, b                                        ; $7940: $78
	adc  b                                           ; $7941: $88
	ld   a, c                                        ; $7942: $79
	adc  b                                           ; $7943: $88
	adc  b                                           ; $7944: $88
	adc  b                                           ; $7945: $88
	add  a                                           ; $7946: $87
	sbc  b                                           ; $7947: $98
	adc  b                                           ; $7948: $88
	ld   a, b                                        ; $7949: $78
	adc  b                                           ; $794a: $88
	adc  b                                           ; $794b: $88
	adc  c                                           ; $794c: $89
	adc  b                                           ; $794d: $88
	adc  b                                           ; $794e: $88
	adc  b                                           ; $794f: $88
	adc  b                                           ; $7950: $88
	adc  b                                           ; $7951: $88
	adc  b                                           ; $7952: $88
	adc  b                                           ; $7953: $88
	adc  b                                           ; $7954: $88

Jump_0de_7955:
	adc  c                                           ; $7955: $89
	add  a                                           ; $7956: $87
	sbc  b                                           ; $7957: $98
	ld   a, c                                        ; $7958: $79
	ld   [hl], a                                     ; $7959: $77
	sub  a                                           ; $795a: $97
	adc  b                                           ; $795b: $88
	ld   a, b                                        ; $795c: $78
	add  a                                           ; $795d: $87
	adc  c                                           ; $795e: $89
	ld   a, b                                        ; $795f: $78
	add  a                                           ; $7960: $87
	adc  c                                           ; $7961: $89
	ld   a, b                                        ; $7962: $78
	adc  b                                           ; $7963: $88
	ld   a, b                                        ; $7964: $78
	add  a                                           ; $7965: $87
	add  a                                           ; $7966: $87
	adc  b                                           ; $7967: $88
	add  a                                           ; $7968: $87
	sbc  b                                           ; $7969: $98
	ld   a, c                                        ; $796a: $79
	ld   a, b                                        ; $796b: $78
	adc  b                                           ; $796c: $88
	ld   a, c                                        ; $796d: $79
	add  a                                           ; $796e: $87
	sub  a                                           ; $796f: $97
	sbc  b                                           ; $7970: $98
	ld   a, b                                        ; $7971: $78
	sbc  b                                           ; $7972: $98
	ld   a, c                                        ; $7973: $79
	adc  b                                           ; $7974: $88
	adc  b                                           ; $7975: $88
	ld   a, b                                        ; $7976: $78
	add  a                                           ; $7977: $87
	add  a                                           ; $7978: $87
	adc  c                                           ; $7979: $89
	ld   [hl], a                                     ; $797a: $77
	sub  [hl]                                        ; $797b: $96
	ld   a, d                                        ; $797c: $7a
	ld   l, c                                        ; $797d: $69
	sub  a                                           ; $797e: $97
	sbc  b                                           ; $797f: $98
	ld   a, c                                        ; $7980: $79
	add  a                                           ; $7981: $87
	adc  c                                           ; $7982: $89
	ld   a, b                                        ; $7983: $78
	adc  b                                           ; $7984: $88
	adc  b                                           ; $7985: $88
	adc  b                                           ; $7986: $88
	ld   a, b                                        ; $7987: $78
	ld   a, b                                        ; $7988: $78
	adc  b                                           ; $7989: $88
	adc  b                                           ; $798a: $88
	adc  b                                           ; $798b: $88
	adc  b                                           ; $798c: $88
	adc  b                                           ; $798d: $88
	adc  b                                           ; $798e: $88
	adc  b                                           ; $798f: $88
	add  a                                           ; $7990: $87
	sbc  b                                           ; $7991: $98
	ld   l, b                                        ; $7992: $68
	add  a                                           ; $7993: $87
	adc  b                                           ; $7994: $88
	ld   a, c                                        ; $7995: $79
	add  a                                           ; $7996: $87
	add  a                                           ; $7997: $87
	adc  c                                           ; $7998: $89
	ld   a, b                                        ; $7999: $78
	sbc  b                                           ; $799a: $98
	add  a                                           ; $799b: $87
	adc  c                                           ; $799c: $89
	ld   a, b                                        ; $799d: $78
	sub  a                                           ; $799e: $97
	sbc  c                                           ; $799f: $99
	ld   l, b                                        ; $79a0: $68
	sub  [hl]                                        ; $79a1: $96
	add  a                                           ; $79a2: $87
	ld   a, b                                        ; $79a3: $78
	sub  [hl]                                        ; $79a4: $96
	adc  d                                           ; $79a5: $8a
	ld   e, c                                        ; $79a6: $59

Call_0de_79a7:
	add  [hl]                                        ; $79a7: $86
	adc  d                                           ; $79a8: $8a
	ld   l, b                                        ; $79a9: $68
	sub  [hl]                                        ; $79aa: $96
	adc  c                                           ; $79ab: $89
	ld   [hl], a                                     ; $79ac: $77
	sub  a                                           ; $79ad: $97

Jump_0de_79ae:
	ld   a, d                                        ; $79ae: $7a
	ld   [hl], a                                     ; $79af: $77
	sbc  b                                           ; $79b0: $98
	add  a                                           ; $79b1: $87
	adc  c                                           ; $79b2: $89
	ld   a, b                                        ; $79b3: $78
	sub  a                                           ; $79b4: $97
	add  a                                           ; $79b5: $87
	adc  c                                           ; $79b6: $89

Jump_0de_79b7:
	ld   a, c                                        ; $79b7: $79
	add  a                                           ; $79b8: $87
	ld   a, b                                        ; $79b9: $78
	sbc  b                                           ; $79ba: $98
	add  a                                           ; $79bb: $87
	sbc  c                                           ; $79bc: $99
	ld   a, b                                        ; $79bd: $78
	add  a                                           ; $79be: $87
	adc  b                                           ; $79bf: $88
	ld   [hl], a                                     ; $79c0: $77
	add  a                                           ; $79c1: $87
	add  a                                           ; $79c2: $87
	ld   a, b                                        ; $79c3: $78
	add  a                                           ; $79c4: $87
	adc  c                                           ; $79c5: $89
	ld   l, b                                        ; $79c6: $68
	and  [hl]                                        ; $79c7: $a6
	adc  d                                           ; $79c8: $8a
	ld   [hl], a                                     ; $79c9: $77
	and  [hl]                                        ; $79ca: $a6

Call_0de_79cb:
	ld   a, c                                        ; $79cb: $79
	ld   [hl], a                                     ; $79cc: $77
	ld   [hl], a                                     ; $79cd: $77
	adc  b                                           ; $79ce: $88
	add  a                                           ; $79cf: $87
	ld   a, b                                        ; $79d0: $78
	adc  b                                           ; $79d1: $88
	adc  c                                           ; $79d2: $89
	ld   l, b                                        ; $79d3: $68
	sub  l                                           ; $79d4: $95
	xor  b                                           ; $79d5: $a8
	ld   l, b                                        ; $79d6: $68
	sub  [hl]                                        ; $79d7: $96
	ld   a, d                                        ; $79d8: $7a
	ld   c, b                                        ; $79d9: $48
	sub  [hl]                                        ; $79da: $96
	adc  b                                           ; $79db: $88
	ld   [hl], a                                     ; $79dc: $77
	sbc  b                                           ; $79dd: $98
	ld   a, c                                        ; $79de: $79
	add  [hl]                                        ; $79df: $86
	adc  c                                           ; $79e0: $89
	ld   a, b                                        ; $79e1: $78
	sub  a                                           ; $79e2: $97
	sbc  c                                           ; $79e3: $99
	ld   l, c                                        ; $79e4: $69
	add  [hl]                                        ; $79e5: $86
	sbc  c                                           ; $79e6: $99
	ld   l, e                                        ; $79e7: $6b
	add  [hl]                                        ; $79e8: $86
	xor  b                                           ; $79e9: $a8
	ld   l, b                                        ; $79ea: $68
	and  [hl]                                        ; $79eb: $a6
	ld   a, c                                        ; $79ec: $79
	halt                                             ; $79ed: $76
	and  [hl]                                        ; $79ee: $a6
	ld   l, c                                        ; $79ef: $69
	halt                                             ; $79f0: $76
	ld   a, b                                        ; $79f1: $78
	ld   [hl], a                                     ; $79f2: $77
	ld   a, b                                        ; $79f3: $78
	ld   [hl], a                                     ; $79f4: $77
	sub  a                                           ; $79f5: $97
	ld   a, b                                        ; $79f6: $78
	ld   [hl], a                                     ; $79f7: $77
	cp   b                                           ; $79f8: $b8
	ld   a, c                                        ; $79f9: $79
	ld   l, c                                        ; $79fa: $69
	add  [hl]                                        ; $79fb: $86
	ld   a, c                                        ; $79fc: $79
	ld   h, a                                        ; $79fd: $67
	and  l                                           ; $79fe: $a5
	ld   a, c                                        ; $79ff: $79
	ld   [hl], a                                     ; $7a00: $77
	sub  a                                           ; $7a01: $97
	ld   a, b                                        ; $7a02: $78
	sbc  b                                           ; $7a03: $98
	sbc  b                                           ; $7a04: $98
	xor  c                                           ; $7a05: $a9
	ld   l, d                                        ; $7a06: $6a
	ld   a, c                                        ; $7a07: $79
	sub  a                                           ; $7a08: $97
	sbc  b                                           ; $7a09: $98
	ld   h, [hl]                                     ; $7a0a: $66
	sub  a                                           ; $7a0b: $97
	adc  b                                           ; $7a0c: $88
	sbc  b                                           ; $7a0d: $98
	adc  c                                           ; $7a0e: $89
	ld   e, c                                        ; $7a0f: $59
	sub  l                                           ; $7a10: $95
	xor  b                                           ; $7a11: $a8
	ld   [hl], a                                     ; $7a12: $77
	ld   a, b                                        ; $7a13: $78
	ld   l, c                                        ; $7a14: $69
	ld   [hl], a                                     ; $7a15: $77
	sub  [hl]                                        ; $7a16: $96
	sub  a                                           ; $7a17: $97
	ld   a, c                                        ; $7a18: $79
	ld   a, d                                        ; $7a19: $7a
	ld   l, b                                        ; $7a1a: $68
	cp   c                                           ; $7a1b: $b9
	ld   a, d                                        ; $7a1c: $7a
	ld   [hl], a                                     ; $7a1d: $77
	and  a                                           ; $7a1e: $a7
	adc  c                                           ; $7a1f: $89
	sbc  b                                           ; $7a20: $98
	adc  b                                           ; $7a21: $88
	ld   a, c                                        ; $7a22: $79
	adc  d                                           ; $7a23: $8a
	sbc  b                                           ; $7a24: $98
	rst  ToBoot                                         ; $7a25: $c7
	xor  e                                           ; $7a26: $ab
	adc  d                                           ; $7a27: $8a
	adc  b                                           ; $7a28: $88
	xor  b                                           ; $7a29: $a8
	ld   a, c                                        ; $7a2a: $79
	ld   h, a                                        ; $7a2b: $67
	sub  a                                           ; $7a2c: $97
	ld   [hl], a                                     ; $7a2d: $77
	sub  a                                           ; $7a2e: $97
	ld   l, b                                        ; $7a2f: $68
	ld   [hl], h                                     ; $7a30: $74
	ld   a, b                                        ; $7a31: $78
	ld   d, [hl]                                     ; $7a32: $56
	ld   h, h                                        ; $7a33: $64
	ld   h, l                                        ; $7a34: $65
	ld   b, l                                        ; $7a35: $45
	ld   d, h                                        ; $7a36: $54
	ld   b, l                                        ; $7a37: $45
	ld   b, l                                        ; $7a38: $45
	ld   b, h                                        ; $7a39: $44
	ld   h, a                                        ; $7a3a: $67
	ld   a, b                                        ; $7a3b: $78
	xor  e                                           ; $7a3c: $ab
	call $ffef                                       ; $7a3d: $cd $ef $ff
	rst  $38                                         ; $7a40: $ff
	rst  $38                                         ; $7a41: $ff
	rst  $38                                         ; $7a42: $ff
	cp   $fa                                         ; $7a43: $fe $fa
	cp   d                                           ; $7a45: $ba
	ld   [hl], a                                     ; $7a46: $77
	ld   [hl], e                                     ; $7a47: $73
	ld   [hl], $11                                   ; $7a48: $36 $11
	ld   sp, $1111                                   ; $7a4a: $31 $11 $11
	ld   de, $1111                                   ; $7a4d: $11 $11 $11
	ld   de, $1514                                   ; $7a50: $11 $14 $15
	reti                                             ; $7a53: $d9


	rst  $28                                         ; $7a54: $ef
	rst  $38                                         ; $7a55: $ff
	rst  $38                                         ; $7a56: $ff
	rst  $38                                         ; $7a57: $ff
	rst  $38                                         ; $7a58: $ff
	rst  $38                                         ; $7a59: $ff
	rst  $38                                         ; $7a5a: $ff
	rst  $38                                         ; $7a5b: $ff
	db   $db                                         ; $7a5c: $db
	ld   [hl], h                                     ; $7a5d: $74
	ld   b, d                                        ; $7a5e: $42
	ld   de, $1111                                   ; $7a5f: $11 $11 $11
	ld   de, $1111                                   ; $7a62: $11 $11 $11
	ld   de, $1111                                   ; $7a65: $11 $11 $11
	ld   de, $6a16                                   ; $7a68: $11 $16 $6a
	rst  $38                                         ; $7a6b: $ff
	rst  $38                                         ; $7a6c: $ff
	rst  $38                                         ; $7a6d: $ff
	rst  $38                                         ; $7a6e: $ff
	rst  $38                                         ; $7a6f: $ff
	rst  $38                                         ; $7a70: $ff
	rst  $38                                         ; $7a71: $ff
	rst  $38                                         ; $7a72: $ff
	cp   $a7                                         ; $7a73: $fe $a7
	ld   d, d                                        ; $7a75: $52
	ld   de, $1111                                   ; $7a76: $11 $11 $11
	ld   de, $1111                                   ; $7a79: $11 $11 $11
	ld   de, $1111                                   ; $7a7c: $11 $11 $11
	ld   de, $7613                                   ; $7a7f: $11 $13 $76
	rst  $38                                         ; $7a82: $ff
	rst  $38                                         ; $7a83: $ff
	rst  $38                                         ; $7a84: $ff
	rst  $38                                         ; $7a85: $ff
	rst  $38                                         ; $7a86: $ff
	rst  $38                                         ; $7a87: $ff
	rst  $38                                         ; $7a88: $ff
	rst  $38                                         ; $7a89: $ff
	cp   $a6                                         ; $7a8a: $fe $a6
	ld   b, c                                        ; $7a8c: $41
	ld   de, $1111                                   ; $7a8d: $11 $11 $11
	ld   de, $1111                                   ; $7a90: $11 $11 $11
	ld   de, $1111                                   ; $7a93: $11 $11 $11
	ld   de, $ca13                                   ; $7a96: $11 $13 $ca
	rst  $38                                         ; $7a99: $ff
	rst  $38                                         ; $7a9a: $ff
	rst  $38                                         ; $7a9b: $ff
	rst  $38                                         ; $7a9c: $ff
	rst  $38                                         ; $7a9d: $ff
	rst  $38                                         ; $7a9e: $ff
	rst  $38                                         ; $7a9f: $ff
	rst  $38                                         ; $7aa0: $ff
	ei                                               ; $7aa1: $fb
	ld   d, h                                        ; $7aa2: $54
	ld   hl, $1111                                   ; $7aa3: $21 $11 $11
	ld   de, $1111                                   ; $7aa6: $11 $11 $11
	ld   de, $1111                                   ; $7aa9: $11 $11 $11
	ld   de, $a711                                   ; $7aac: $11 $11 $a7
	rst  $28                                         ; $7aaf: $ef
	rst  $38                                         ; $7ab0: $ff
	rst  $38                                         ; $7ab1: $ff
	rst  $38                                         ; $7ab2: $ff
	rst  $38                                         ; $7ab3: $ff
	rst  $38                                         ; $7ab4: $ff
	rst  $38                                         ; $7ab5: $ff
	rst  $38                                         ; $7ab6: $ff
	db   $fd                                         ; $7ab7: $fd
	ld   [hl], d                                     ; $7ab8: $72
	ld   de, $1111                                   ; $7ab9: $11 $11 $11
	ld   de, $1111                                   ; $7abc: $11 $11 $11
	ld   de, $1111                                   ; $7abf: $11 $11 $11
	ld   de, $7911                                   ; $7ac2: $11 $11 $79
	rst  $38                                         ; $7ac5: $ff
	rst  $38                                         ; $7ac6: $ff
	rst  $38                                         ; $7ac7: $ff
	rst  $38                                         ; $7ac8: $ff
	rst  $38                                         ; $7ac9: $ff
	rst  $38                                         ; $7aca: $ff
	rst  $38                                         ; $7acb: $ff
	rst  $38                                         ; $7acc: $ff
	db   $fd                                         ; $7acd: $fd
	ld   [hl], c                                     ; $7ace: $71
	ld   de, $1111                                   ; $7acf: $11 $11 $11
	ld   de, $1111                                   ; $7ad2: $11 $11 $11
	ld   de, $1111                                   ; $7ad5: $11 $11 $11
	ld   de, $8c1d                                   ; $7ad8: $11 $1d $8c
	rst  $38                                         ; $7adb: $ff
	rst  $38                                         ; $7adc: $ff
	rst  $38                                         ; $7add: $ff
	rst  $38                                         ; $7ade: $ff
	rst  $38                                         ; $7adf: $ff
	rst  $38                                         ; $7ae0: $ff
	rst  $38                                         ; $7ae1: $ff
	cp   $f8                                         ; $7ae2: $fe $f8
	ld   de, $1111                                   ; $7ae4: $11 $11 $11
	ld   de, $1111                                   ; $7ae7: $11 $11 $11
	ld   de, $1111                                   ; $7aea: $11 $11 $11
	ld   de, $c911                                   ; $7aed: $11 $11 $c9
	rst  $38                                         ; $7af0: $ff
	rst  $38                                         ; $7af1: $ff
	rst  $38                                         ; $7af2: $ff
	rst  $38                                         ; $7af3: $ff
	rst  $38                                         ; $7af4: $ff
	rst  $38                                         ; $7af5: $ff
	rst  $38                                         ; $7af6: $ff
	rst  $38                                         ; $7af7: $ff
	call c, $1141                                    ; $7af8: $dc $41 $11
	ld   de, $1111                                   ; $7afb: $11 $11 $11
	ld   de, $1111                                   ; $7afe: $11 $11 $11
	ld   de, $1111                                   ; $7b01: $11 $11 $11
	adc  h                                           ; $7b04: $8c
	rst  $28                                         ; $7b05: $ef
	rst  $38                                         ; $7b06: $ff
	rst  $38                                         ; $7b07: $ff
	rst  $38                                         ; $7b08: $ff
	rst  $38                                         ; $7b09: $ff
	rst  $38                                         ; $7b0a: $ff
	rst  $38                                         ; $7b0b: $ff
	rst  $38                                         ; $7b0c: $ff
	db   $ed                                         ; $7b0d: $ed
	ld   [hl], c                                     ; $7b0e: $71
	ld   de, $1111                                   ; $7b0f: $11 $11 $11
	ld   de, $1111                                   ; $7b12: $11 $11 $11
	ld   de, $1111                                   ; $7b15: $11 $11 $11
	ld   de, $cf7d                                   ; $7b18: $11 $7d $cf
	rst  $38                                         ; $7b1b: $ff
	rst  $38                                         ; $7b1c: $ff
	rst  $38                                         ; $7b1d: $ff
	rst  $38                                         ; $7b1e: $ff
	rst  $38                                         ; $7b1f: $ff
	rst  $38                                         ; $7b20: $ff
	rst  $38                                         ; $7b21: $ff
	rst  $28                                         ; $7b22: $ef
	and  c                                           ; $7b23: $a1
	ld   de, $1111                                   ; $7b24: $11 $11 $11
	ld   de, $1111                                   ; $7b27: $11 $11 $11
	ld   de, $1111                                   ; $7b2a: $11 $11 $11
	ld   de, $dfba                                   ; $7b2d: $11 $ba $df
	rst  $38                                         ; $7b30: $ff
	rst  $38                                         ; $7b31: $ff
	rst  $38                                         ; $7b32: $ff
	rst  $38                                         ; $7b33: $ff
	rst  $38                                         ; $7b34: $ff
	rst  $38                                         ; $7b35: $ff
	rst  $38                                         ; $7b36: $ff
	rst  JumpTable                                         ; $7b37: $df
	ld   [hl], c                                     ; $7b38: $71
	ld   de, $1111                                   ; $7b39: $11 $11 $11
	ld   de, $1111                                   ; $7b3c: $11 $11 $11
	ld   de, $1111                                   ; $7b3f: $11 $11 $11
	ld   de, $ffbc                                   ; $7b42: $11 $bc $ff
	rst  $38                                         ; $7b45: $ff
	rst  $38                                         ; $7b46: $ff
	rst  $38                                         ; $7b47: $ff
	rst  $38                                         ; $7b48: $ff
	rst  $38                                         ; $7b49: $ff
	rst  $38                                         ; $7b4a: $ff
	rst  $38                                         ; $7b4b: $ff
	cp   $11                                         ; $7b4c: $fe $11
	ld   de, $1111                                   ; $7b4e: $11 $11 $11
	ld   de, $1111                                   ; $7b51: $11 $11 $11
	ld   de, $1111                                   ; $7b54: $11 $11 $11
	add  hl, de                                      ; $7b57: $19
	xor  d                                           ; $7b58: $aa
	rst  $38                                         ; $7b59: $ff
	rst  $38                                         ; $7b5a: $ff
	rst  $38                                         ; $7b5b: $ff
	rst  $38                                         ; $7b5c: $ff
	rst  $38                                         ; $7b5d: $ff
	rst  $38                                         ; $7b5e: $ff
	rst  $38                                         ; $7b5f: $ff
	rst  $38                                         ; $7b60: $ff
	rst  $30                                         ; $7b61: $f7
	ld   de, $1111                                   ; $7b62: $11 $11 $11
	ld   de, $1111                                   ; $7b65: $11 $11 $11
	ld   de, $1111                                   ; $7b68: $11 $11 $11
	ld   de, $7f1b                                   ; $7b6b: $11 $1b $7f
	rst  $38                                         ; $7b6e: $ff
	rst  $38                                         ; $7b6f: $ff
	rst  $38                                         ; $7b70: $ff
	rst  $38                                         ; $7b71: $ff
	rst  $38                                         ; $7b72: $ff
	rst  $38                                         ; $7b73: $ff
	rst  $38                                         ; $7b74: $ff
	rst  $38                                         ; $7b75: $ff
	pop  bc                                          ; $7b76: $c1
	ld   de, $1111                                   ; $7b77: $11 $11 $11
	ld   de, $1111                                   ; $7b7a: $11 $11 $11
	ld   de, $1111                                   ; $7b7d: $11 $11 $11
	ld   de, $ff69                                   ; $7b80: $11 $69 $ff
	rst  $38                                         ; $7b83: $ff
	rst  $38                                         ; $7b84: $ff
	rst  $38                                         ; $7b85: $ff
	rst  $38                                         ; $7b86: $ff
	rst  $38                                         ; $7b87: $ff
	rst  $38                                         ; $7b88: $ff
	rst  $38                                         ; $7b89: $ff
	cp   $11                                         ; $7b8a: $fe $11
	ld   de, $1111                                   ; $7b8c: $11 $11 $11
	ld   de, $1111                                   ; $7b8f: $11 $11 $11
	ld   de, $1111                                   ; $7b92: $11 $11 $11
	ld   d, $7e                                      ; $7b95: $16 $7e
	rst  $38                                         ; $7b97: $ff
	rst  $38                                         ; $7b98: $ff
	rst  $38                                         ; $7b99: $ff
	rst  $38                                         ; $7b9a: $ff
	rst  $38                                         ; $7b9b: $ff
	rst  $38                                         ; $7b9c: $ff
	rst  $38                                         ; $7b9d: $ff
	rst  $38                                         ; $7b9e: $ff
	ldh  a, [c]                                      ; $7b9f: $f2
	inc  de                                          ; $7ba0: $13
	ld   de, $1111                                   ; $7ba1: $11 $11 $11
	ld   de, $1111                                   ; $7ba4: $11 $11 $11
	ld   de, $1111                                   ; $7ba7: $11 $11 $11
	dec  h                                           ; $7baa: $25
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bab: $cf
	rst  $38                                         ; $7bac: $ff
	rst  $38                                         ; $7bad: $ff
	rst  $38                                         ; $7bae: $ff
	rst  $38                                         ; $7baf: $ff
	rst  $38                                         ; $7bb0: $ff
	rst  $38                                         ; $7bb1: $ff
	rst  $38                                         ; $7bb2: $ff
	rst  $38                                         ; $7bb3: $ff
	ld   d, c                                        ; $7bb4: $51
	ld   b, c                                        ; $7bb5: $41
	ld   de, $1111                                   ; $7bb6: $11 $11 $11
	ld   de, $1111                                   ; $7bb9: $11 $11 $11
	ld   de, $1111                                   ; $7bbc: $11 $11 $11
	add  hl, sp                                      ; $7bbf: $39
	rst  $38                                         ; $7bc0: $ff
	rst  $38                                         ; $7bc1: $ff
	rst  $38                                         ; $7bc2: $ff
	rst  $38                                         ; $7bc3: $ff
	rst  $38                                         ; $7bc4: $ff
	rst  $38                                         ; $7bc5: $ff
	rst  $38                                         ; $7bc6: $ff
	rst  $38                                         ; $7bc7: $ff
	ld   sp, hl                                      ; $7bc8: $f9
	inc  de                                          ; $7bc9: $13
	ld   de, $1111                                   ; $7bca: $11 $11 $11
	ld   de, $1111                                   ; $7bcd: $11 $11 $11
	ld   de, $1111                                   ; $7bd0: $11 $11 $11
	inc  d                                           ; $7bd3: $14
	ld   l, a                                        ; $7bd4: $6f
	rst  $38                                         ; $7bd5: $ff
	rst  $38                                         ; $7bd6: $ff
	rst  $38                                         ; $7bd7: $ff
	rst  $38                                         ; $7bd8: $ff
	rst  $38                                         ; $7bd9: $ff
	rst  $38                                         ; $7bda: $ff
	rst  $38                                         ; $7bdb: $ff
	rst  $38                                         ; $7bdc: $ff
	di                                               ; $7bdd: $f3
	inc  hl                                          ; $7bde: $23
	ld   de, $1111                                   ; $7bdf: $11 $11 $11
	ld   de, $1111                                   ; $7be2: $11 $11 $11
	ld   de, $1111                                   ; $7be5: $11 $11 $11
	ld   de, $ff8f                                   ; $7be8: $11 $8f $ff
	rst  $38                                         ; $7beb: $ff
	rst  $38                                         ; $7bec: $ff
	rst  $38                                         ; $7bed: $ff
	rst  $38                                         ; $7bee: $ff
	rst  $38                                         ; $7bef: $ff
	rst  $38                                         ; $7bf0: $ff
	rst  $38                                         ; $7bf1: $ff
	sub  d                                           ; $7bf2: $92
	ld   b, c                                        ; $7bf3: $41
	ld   de, $1111                                   ; $7bf4: $11 $11 $11
	ld   de, $1111                                   ; $7bf7: $11 $11 $11

Call_0de_7bfa:
	ld   de, $1111                                   ; $7bfa: $11 $11 $11
	ld   a, [de]                                     ; $7bfd: $1a
	sbc  a                                           ; $7bfe: $9f
	rst  $38                                         ; $7bff: $ff
	rst  $38                                         ; $7c00: $ff
	rst  $38                                         ; $7c01: $ff
	rst  $38                                         ; $7c02: $ff
	rst  $38                                         ; $7c03: $ff
	rst  $38                                         ; $7c04: $ff
	rst  $38                                         ; $7c05: $ff
	rst  $38                                         ; $7c06: $ff
	ld   [hl], c                                     ; $7c07: $71
	ld   b, c                                        ; $7c08: $41
	ld   de, $1111                                   ; $7c09: $11 $11 $11
	ld   de, $1111                                   ; $7c0c: $11 $11 $11
	ld   de, $1111                                   ; $7c0f: $11 $11 $11
	ld   h, $cf                                      ; $7c12: $26 $cf
	rst  $38                                         ; $7c14: $ff
	rst  $38                                         ; $7c15: $ff
	rst  $38                                         ; $7c16: $ff
	rst  $38                                         ; $7c17: $ff
	rst  $38                                         ; $7c18: $ff
	rst  $38                                         ; $7c19: $ff
	rst  $38                                         ; $7c1a: $ff
	rst  $38                                         ; $7c1b: $ff
	sub  h                                           ; $7c1c: $94
	ld   de, $1111                                   ; $7c1d: $11 $11 $11
	ld   de, $1111                                   ; $7c20: $11 $11 $11
	ld   de, $1111                                   ; $7c23: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7c26: $11 $11 $ff
	rst  $38                                         ; $7c29: $ff
	rst  $38                                         ; $7c2a: $ff
	rst  $38                                         ; $7c2b: $ff
	rst  $38                                         ; $7c2c: $ff
	rst  $38                                         ; $7c2d: $ff
	rst  $38                                         ; $7c2e: $ff
	rst  $38                                         ; $7c2f: $ff
	rst  $38                                         ; $7c30: $ff
	add  h                                           ; $7c31: $84
	ld   sp, $1111                                   ; $7c32: $31 $11 $11
	ld   de, $1111                                   ; $7c35: $11 $11 $11
	ld   de, $1111                                   ; $7c38: $11 $11 $11
	ld   de, $2b14                                   ; $7c3b: $11 $14 $2b
	rst  $38                                         ; $7c3e: $ff
	rst  $38                                         ; $7c3f: $ff
	rst  $38                                         ; $7c40: $ff
	rst  $38                                         ; $7c41: $ff
	rst  $38                                         ; $7c42: $ff
	rst  $38                                         ; $7c43: $ff
	rst  $38                                         ; $7c44: $ff
	rst  $38                                         ; $7c45: $ff
	cp   $ec                                         ; $7c46: $fe $ec
	sbc  b                                           ; $7c48: $98
	ld   h, h                                        ; $7c49: $64
	ld   hl, $1111                                   ; $7c4a: $21 $11 $11
	ld   de, $1111                                   ; $7c4d: $11 $11 $11
	ld   de, $1111                                   ; $7c50: $11 $11 $11
	ld   de, $ce49                                   ; $7c53: $11 $49 $ce
	rst  $38                                         ; $7c56: $ff
	rst  $38                                         ; $7c57: $ff
	rst  $38                                         ; $7c58: $ff
	rst  $38                                         ; $7c59: $ff
	rst  $38                                         ; $7c5a: $ff
	rst  $38                                         ; $7c5b: $ff
	rst  $38                                         ; $7c5c: $ff
	rst  $38                                         ; $7c5d: $ff
	rst  $38                                         ; $7c5e: $ff
	db   $fd                                         ; $7c5f: $fd
	xor  d                                           ; $7c60: $aa
	ld   [hl], l                                     ; $7c61: $75
	ld   [hl-], a                                    ; $7c62: $32
	ld   de, $1111                                   ; $7c63: $11 $11 $11
	ld   de, $1111                                   ; $7c66: $11 $11 $11
	ld   de, $1111                                   ; $7c69: $11 $11 $11
	ld   [hl], $8a                                   ; $7c6c: $36 $8a
	call $ffff                                       ; $7c6e: $cd $ff $ff
	rst  $38                                         ; $7c71: $ff
	rst  $38                                         ; $7c72: $ff
	rst  $38                                         ; $7c73: $ff
	rst  $38                                         ; $7c74: $ff
	rst  $38                                         ; $7c75: $ff
	rst  $38                                         ; $7c76: $ff
	rst  $38                                         ; $7c77: $ff
	cp   $cc                                         ; $7c78: $fe $cc
	xor  c                                           ; $7c7a: $a9
	halt                                             ; $7c7b: $76
	ld   b, e                                        ; $7c7c: $43
	ld   hl, $1111                                   ; $7c7d: $21 $11 $11
	ld   de, $1111                                   ; $7c80: $11 $11 $11
	ld   de, $1211                                   ; $7c83: $11 $11 $12
	dec  [hl]                                        ; $7c86: $35
	ld   l, b                                        ; $7c87: $68
	xor  e                                           ; $7c88: $ab
	cp   l                                           ; $7c89: $bd
	sbc  $ff                                         ; $7c8a: $de $ff
	rst  $38                                         ; $7c8c: $ff
	rst  $38                                         ; $7c8d: $ff
	rst  $38                                         ; $7c8e: $ff
	rst  $38                                         ; $7c8f: $ff
	rst  $38                                         ; $7c90: $ff
	rst  $38                                         ; $7c91: $ff
	rst  $38                                         ; $7c92: $ff
	db   $fd                                         ; $7c93: $fd
	cp   d                                           ; $7c94: $ba
	sub  a                                           ; $7c95: $97
	ld   d, e                                        ; $7c96: $53
	ld   hl, $1111                                   ; $7c97: $21 $11 $11
	ld   de, $1111                                   ; $7c9a: $11 $11 $11
	ld   de, $1111                                   ; $7c9d: $11 $11 $11
	dec  [hl]                                        ; $7ca0: $35
	ld   a, b                                        ; $7ca1: $78
	xor  h                                           ; $7ca2: $ac
	sbc  $ff                                         ; $7ca3: $de $ff
	rst  $38                                         ; $7ca5: $ff
	rst  $38                                         ; $7ca6: $ff
	rst  $38                                         ; $7ca7: $ff
	rst  $38                                         ; $7ca8: $ff
	rst  $38                                         ; $7ca9: $ff
	rst  $38                                         ; $7caa: $ff
	rst  $38                                         ; $7cab: $ff
	rst  $38                                         ; $7cac: $ff
	res  3, b                                        ; $7cad: $cb $98
	ld   h, l                                        ; $7caf: $65
	ld   [hl-], a                                    ; $7cb0: $32
	ld   de, $1111                                   ; $7cb1: $11 $11 $11
	ld   de, $1111                                   ; $7cb4: $11 $11 $11
	ld   de, $1211                                   ; $7cb7: $11 $11 $12
	ld   b, [hl]                                     ; $7cba: $46
	adc  d                                           ; $7cbb: $8a
	cp   h                                           ; $7cbc: $bc
	sbc  $ff                                         ; $7cbd: $de $ff
	rst  $38                                         ; $7cbf: $ff
	rst  $38                                         ; $7cc0: $ff
	rst  $38                                         ; $7cc1: $ff
	rst  $38                                         ; $7cc2: $ff
	rst  $38                                         ; $7cc3: $ff
	rst  $38                                         ; $7cc4: $ff
	rst  $38                                         ; $7cc5: $ff
	db   $ed                                         ; $7cc6: $ed
	cp   e                                           ; $7cc7: $bb
	xor  c                                           ; $7cc8: $a9
	halt                                             ; $7cc9: $76
	ld   d, h                                        ; $7cca: $54
	inc  sp                                          ; $7ccb: $33
	ld   [hl+], a                                    ; $7ccc: $22
	ld   de, $1111                                   ; $7ccd: $11 $11 $11
	ld   de, $0111                                   ; $7cd0: $11 $11 $01
	ld   [de], a                                     ; $7cd3: $12
	inc  [hl]                                        ; $7cd4: $34
	ld   d, [hl]                                     ; $7cd5: $56
	ld   a, b                                        ; $7cd6: $78
	sbc  d                                           ; $7cd7: $9a
	cp   h                                           ; $7cd8: $bc
	call z, $eddd                                    ; $7cd9: $cc $dd $ed
	xor  $ee                                         ; $7cdc: $ee $ee
	xor  $ee                                         ; $7cde: $ee $ee
	xor  $dd                                         ; $7ce0: $ee $dd
	res  7, d                                        ; $7ce2: $cb $ba
	xor  c                                           ; $7ce4: $a9
	add  a                                           ; $7ce5: $87
	halt                                             ; $7ce6: $76
	ld   h, l                                        ; $7ce7: $65
	ld   d, h                                        ; $7ce8: $54
	ld   b, e                                        ; $7ce9: $43
	inc  sp                                          ; $7cea: $33
	ld   [hl+], a                                    ; $7ceb: $22
	ld   [hl+], a                                    ; $7cec: $22
	ld   [hl+], a                                    ; $7ced: $22
	ld   [de], a                                     ; $7cee: $12
	ld   [hl+], a                                    ; $7cef: $22
	inc  sp                                          ; $7cf0: $33
	ld   b, l                                        ; $7cf1: $45
	ld   h, a                                        ; $7cf2: $67
	adc  b                                           ; $7cf3: $88
	sbc  d                                           ; $7cf4: $9a
	xor  d                                           ; $7cf5: $aa
	cp   e                                           ; $7cf6: $bb
	cp   h                                           ; $7cf7: $bc
	call $edcd                                       ; $7cf8: $cd $cd $ed
	sbc  $ed                                         ; $7cfb: $de $ed
	db   $dd                                         ; $7cfd: $dd
	call z, $babb                                    ; $7cfe: $cc $bb $ba
	xor  c                                           ; $7d01: $a9
	sbc  b                                           ; $7d02: $98
	ld   [hl], a                                     ; $7d03: $77
	ld   h, l                                        ; $7d04: $65
	ld   d, h                                        ; $7d05: $54
	ld   b, e                                        ; $7d06: $43
	ld   [hl-], a                                    ; $7d07: $32
	ld   [hl+], a                                    ; $7d08: $22
	ld   de, $1211                                   ; $7d09: $11 $11 $12
	ld   [de], a                                     ; $7d0c: $12
	inc  [hl]                                        ; $7d0d: $34
	ld   d, [hl]                                     ; $7d0e: $56
	ld   h, a                                        ; $7d0f: $67
	adc  c                                           ; $7d10: $89
	xor  d                                           ; $7d11: $aa
	cp   e                                           ; $7d12: $bb
	call z, $ddcc                                    ; $7d13: $cc $cc $dd
	sbc  $ef                                         ; $7d16: $de $ef
	rst  $28                                         ; $7d18: $ef
	cp   $ee                                         ; $7d19: $fe $ee
	sbc  $cb                                         ; $7d1b: $de $cb
	xor  e                                           ; $7d1d: $ab
	call z, $856a                                    ; $7d1e: $cc $6a $85
	sub  [hl]                                        ; $7d21: $96
	ld   [hl-], a                                    ; $7d22: $32
	ld   hl, $1112                                   ; $7d23: $21 $12 $11
	ld   de, $1111                                   ; $7d26: $11 $11 $11
	inc  hl                                          ; $7d29: $23
	inc  d                                           ; $7d2a: $14
	ld   h, [hl]                                     ; $7d2b: $66
	adc  b                                           ; $7d2c: $88
	xor  d                                           ; $7d2d: $aa
	adc  $ed                                         ; $7d2e: $ce $ed
	rst  $38                                         ; $7d30: $ff
	rst  $38                                         ; $7d31: $ff
	rst  $38                                         ; $7d32: $ff
	rst  $38                                         ; $7d33: $ff
	rst  $38                                         ; $7d34: $ff
	cp   $ff                                         ; $7d35: $fe $ff
	db   $ec                                         ; $7d37: $ec
	cp   b                                           ; $7d38: $b8
	add  a                                           ; $7d39: $87
	ld   h, d                                        ; $7d3a: $62
	ld   hl, $1111                                   ; $7d3b: $21 $11 $11
	ld   de, $1111                                   ; $7d3e: $11 $11 $11
	ld   de, $1111                                   ; $7d41: $11 $11 $11
	inc  d                                           ; $7d44: $14
	xor  a                                           ; $7d45: $af
	rst  $38                                         ; $7d46: $ff
	rst  $38                                         ; $7d47: $ff
	rst  $38                                         ; $7d48: $ff
	rst  $38                                         ; $7d49: $ff
	rst  $38                                         ; $7d4a: $ff
	rst  $38                                         ; $7d4b: $ff
	rst  $38                                         ; $7d4c: $ff
	rst  $38                                         ; $7d4d: $ff
	cp   $b9                                         ; $7d4e: $fe $b9
	xor  b                                           ; $7d50: $a8
	inc  sp                                          ; $7d51: $33
	ld   de, $1111                                   ; $7d52: $11 $11 $11
	ld   de, $1111                                   ; $7d55: $11 $11 $11
	ld   de, $1111                                   ; $7d58: $11 $11 $11
	inc  sp                                          ; $7d5b: $33
	ld   d, $ff                                      ; $7d5c: $16 $ff
	rst  $38                                         ; $7d5e: $ff
	rst  $38                                         ; $7d5f: $ff
	rst  $38                                         ; $7d60: $ff
	rst  $38                                         ; $7d61: $ff
	rst  $38                                         ; $7d62: $ff
	rst  $38                                         ; $7d63: $ff
	rst  $38                                         ; $7d64: $ff
	rst  $38                                         ; $7d65: $ff
	db   $eb                                         ; $7d66: $eb
	add  a                                           ; $7d67: $87
	ld   sp, $1111                                   ; $7d68: $31 $11 $11
	ld   de, $1111                                   ; $7d6b: $11 $11 $11
	ld   de, $1111                                   ; $7d6e: $11 $11 $11
	ld   de, $1315                                   ; $7d71: $11 $15 $13
	rst  $38                                         ; $7d74: $ff
	rst  $38                                         ; $7d75: $ff
	rst  $38                                         ; $7d76: $ff
	rst  $38                                         ; $7d77: $ff
	rst  $38                                         ; $7d78: $ff
	rst  $38                                         ; $7d79: $ff
	rst  $38                                         ; $7d7a: $ff
	rst  $38                                         ; $7d7b: $ff
	rst  $38                                         ; $7d7c: $ff
	ld   hl, sp-$6a                                  ; $7d7d: $f8 $96
	ld   de, $1111                                   ; $7d7f: $11 $11 $11
	ld   de, $1111                                   ; $7d82: $11 $11 $11
	ld   de, $1111                                   ; $7d85: $11 $11 $11
	ld   de, $2612                                   ; $7d88: $11 $12 $26
	rst  $28                                         ; $7d8b: $ef
	rst  $38                                         ; $7d8c: $ff
	rst  $38                                         ; $7d8d: $ff
	rst  $38                                         ; $7d8e: $ff
	rst  $38                                         ; $7d8f: $ff
	rst  $38                                         ; $7d90: $ff
	rst  $38                                         ; $7d91: $ff
	rst  $38                                         ; $7d92: $ff
	rst  $38                                         ; $7d93: $ff
	push de                                          ; $7d94: $d5
	ld   [hl], e                                     ; $7d95: $73
	ld   de, $1111                                   ; $7d96: $11 $11 $11
	ld   de, $1111                                   ; $7d99: $11 $11 $11
	ld   de, $1111                                   ; $7d9c: $11 $11 $11
	ld   de, $2e12                                   ; $7d9f: $11 $12 $2e
	rst  $38                                         ; $7da2: $ff
	rst  $38                                         ; $7da3: $ff
	rst  $38                                         ; $7da4: $ff
	rst  $38                                         ; $7da5: $ff
	rst  $38                                         ; $7da6: $ff
	rst  $38                                         ; $7da7: $ff
	rst  $38                                         ; $7da8: $ff
	rst  $38                                         ; $7da9: $ff
	rst  $38                                         ; $7daa: $ff
	and  a                                           ; $7dab: $a7
	ld   d, c                                        ; $7dac: $51
	ld   de, $1111                                   ; $7dad: $11 $11 $11
	ld   de, $1111                                   ; $7db0: $11 $11 $11
	ld   de, $1111                                   ; $7db3: $11 $11 $11
	ld   de, $9f11                                   ; $7db6: $11 $11 $9f
	rst  $38                                         ; $7db9: $ff
	rst  $38                                         ; $7dba: $ff
	rst  $38                                         ; $7dbb: $ff
	rst  $38                                         ; $7dbc: $ff
	rst  $38                                         ; $7dbd: $ff
	rst  $38                                         ; $7dbe: $ff
	rst  $38                                         ; $7dbf: $ff
	rst  $38                                         ; $7dc0: $ff
	cp   $94                                         ; $7dc1: $fe $94
	ld   de, $1111                                   ; $7dc3: $11 $11 $11
	ld   de, $1111                                   ; $7dc6: $11 $11 $11
	ld   de, $1111                                   ; $7dc9: $11 $11 $11
	ld   de, $2411                                   ; $7dcc: $11 $11 $24
	rst  $28                                         ; $7dcf: $ef
	rst  $38                                         ; $7dd0: $ff
	rst  $38                                         ; $7dd1: $ff
	rst  $38                                         ; $7dd2: $ff
	rst  $38                                         ; $7dd3: $ff
	rst  $38                                         ; $7dd4: $ff
	rst  $38                                         ; $7dd5: $ff
	rst  $38                                         ; $7dd6: $ff
	rst  $38                                         ; $7dd7: $ff
	ld   hl, sp+$62                                  ; $7dd8: $f8 $62
	ld   de, $1111                                   ; $7dda: $11 $11 $11
	ld   de, $1111                                   ; $7ddd: $11 $11 $11
	ld   de, $1111                                   ; $7de0: $11 $11 $11
	ld   de, $4611                                   ; $7de3: $11 $11 $46
	rst  $38                                         ; $7de6: $ff
	rst  $38                                         ; $7de7: $ff
	rst  $38                                         ; $7de8: $ff
	rst  $38                                         ; $7de9: $ff
	rst  $38                                         ; $7dea: $ff
	rst  $38                                         ; $7deb: $ff
	rst  $38                                         ; $7dec: $ff
	rst  $38                                         ; $7ded: $ff
	rst  $38                                         ; $7dee: $ff
	sub  $31                                         ; $7def: $d6 $31
	ld   de, $1111                                   ; $7df1: $11 $11 $11
	ld   de, $1111                                   ; $7df4: $11 $11 $11
	ld   de, $1111                                   ; $7df7: $11 $11 $11
	ld   de, $3912                                   ; $7dfa: $11 $12 $39
	rst  $28                                         ; $7dfd: $ef
	rst  $38                                         ; $7dfe: $ff
	rst  $38                                         ; $7dff: $ff
	rst  $38                                         ; $7e00: $ff
	rst  $38                                         ; $7e01: $ff
	rst  $38                                         ; $7e02: $ff
	rst  $38                                         ; $7e03: $ff
	rst  $38                                         ; $7e04: $ff
	rst  $38                                         ; $7e05: $ff
	rst  $10                                         ; $7e06: $d7
	ld   b, c                                        ; $7e07: $41
	ld   de, $1111                                   ; $7e08: $11 $11 $11
	ld   de, $1111                                   ; $7e0b: $11 $11 $11
	ld   de, $1111                                   ; $7e0e: $11 $11 $11
	ld   de, $3611                                   ; $7e11: $11 $11 $36
	cp   a                                           ; $7e14: $bf
	rst  $38                                         ; $7e15: $ff
	rst  $38                                         ; $7e16: $ff
	rst  $38                                         ; $7e17: $ff
	rst  $38                                         ; $7e18: $ff
	rst  $38                                         ; $7e19: $ff
	rst  $38                                         ; $7e1a: $ff
	rst  $38                                         ; $7e1b: $ff
	rst  $38                                         ; $7e1c: $ff
	ei                                               ; $7e1d: $fb
	ld   h, d                                        ; $7e1e: $62
	ld   de, $1111                                   ; $7e1f: $11 $11 $11
	ld   de, $1111                                   ; $7e22: $11 $11 $11
	ld   de, $1111                                   ; $7e25: $11 $11 $11
	ld   de, $0311                                   ; $7e28: $11 $11 $03
	ld   e, e                                        ; $7e2b: $5b
	rst  $38                                         ; $7e2c: $ff
	rst  $38                                         ; $7e2d: $ff
	rst  $38                                         ; $7e2e: $ff
	rst  $38                                         ; $7e2f: $ff
	rst  $38                                         ; $7e30: $ff
	rst  $38                                         ; $7e31: $ff
	rst  $38                                         ; $7e32: $ff
	rst  $38                                         ; $7e33: $ff
	rst  $38                                         ; $7e34: $ff
	and  [hl]                                        ; $7e35: $a6
	ld   sp, $1111                                   ; $7e36: $31 $11 $11
	ld   de, $1111                                   ; $7e39: $11 $11 $11
	ld   de, $1111                                   ; $7e3c: $11 $11 $11
	ld   de, $1111                                   ; $7e3f: $11 $11 $11
	inc  h                                           ; $7e42: $24
	sbc  a                                           ; $7e43: $9f
	rst  $38                                         ; $7e44: $ff
	rst  $38                                         ; $7e45: $ff
	rst  $38                                         ; $7e46: $ff
	rst  $38                                         ; $7e47: $ff
	rst  $38                                         ; $7e48: $ff
	rst  $38                                         ; $7e49: $ff
	rst  $38                                         ; $7e4a: $ff
	rst  $38                                         ; $7e4b: $ff
	cp   $a4                                         ; $7e4c: $fe $a4
	ld   de, $1111                                   ; $7e4e: $11 $11 $11
	ld   de, $1111                                   ; $7e51: $11 $11 $11
	ld   de, $1111                                   ; $7e54: $11 $11 $11
	ld   de, $1111                                   ; $7e57: $11 $11 $11
	ld   [hl], $cf                                   ; $7e5a: $36 $cf
	rst  $38                                         ; $7e5c: $ff
	rst  $38                                         ; $7e5d: $ff
	rst  $38                                         ; $7e5e: $ff
	rst  $38                                         ; $7e5f: $ff
	rst  $38                                         ; $7e60: $ff
	rst  $38                                         ; $7e61: $ff
	rst  $38                                         ; $7e62: $ff
	rst  $38                                         ; $7e63: $ff
	ei                                               ; $7e64: $fb
	sub  a                                           ; $7e65: $97
	ld   b, c                                        ; $7e66: $41
	ld   de, $1111                                   ; $7e67: $11 $11 $11
	ld   de, $1111                                   ; $7e6a: $11 $11 $11
	ld   de, $1111                                   ; $7e6d: $11 $11 $11
	ld   de, $7a13                                   ; $7e70: $11 $13 $7a
	rst  $38                                         ; $7e73: $ff
	rst  $38                                         ; $7e74: $ff
	rst  $38                                         ; $7e75: $ff
	rst  $38                                         ; $7e76: $ff
	rst  $38                                         ; $7e77: $ff
	rst  $38                                         ; $7e78: $ff
	rst  $38                                         ; $7e79: $ff
	rst  $38                                         ; $7e7a: $ff
	rst  $38                                         ; $7e7b: $ff
	ret  z                                           ; $7e7c: $c8

	ld   b, e                                        ; $7e7d: $43
	ld   de, $1111                                   ; $7e7e: $11 $11 $11
	ld   de, $1111                                   ; $7e81: $11 $11 $11
	ld   de, $1111                                   ; $7e84: $11 $11 $11
	ld   de, $3911                                   ; $7e87: $11 $11 $39
	rst  $38                                         ; $7e8a: $ff
	rst  $38                                         ; $7e8b: $ff
	rst  $38                                         ; $7e8c: $ff
	rst  $38                                         ; $7e8d: $ff
	rst  $38                                         ; $7e8e: $ff
	rst  $38                                         ; $7e8f: $ff
	rst  $38                                         ; $7e90: $ff
	rst  $38                                         ; $7e91: $ff
	rst  $38                                         ; $7e92: $ff
	ld   sp, hl                                      ; $7e93: $f9
	ld   h, d                                        ; $7e94: $62
	ld   de, $1111                                   ; $7e95: $11 $11 $11
	ld   de, $1111                                   ; $7e98: $11 $11 $11
	ld   de, $1111                                   ; $7e9b: $11 $11 $11
	ld   de, $2611                                   ; $7e9e: $11 $11 $26
	rst  JumpTable                                         ; $7ea1: $df
	rst  $38                                         ; $7ea2: $ff
	rst  $38                                         ; $7ea3: $ff
	rst  $38                                         ; $7ea4: $ff
	rst  $38                                         ; $7ea5: $ff
	rst  $38                                         ; $7ea6: $ff
	rst  $38                                         ; $7ea7: $ff
	rst  $38                                         ; $7ea8: $ff
	rst  $38                                         ; $7ea9: $ff
	ld   a, [$1174]                                  ; $7eaa: $fa $74 $11
	ld   de, $1111                                   ; $7ead: $11 $11 $11
	ld   de, $1111                                   ; $7eb0: $11 $11 $11
	ld   de, $1111                                   ; $7eb3: $11 $11 $11
	ld   de, $9f14                                   ; $7eb6: $11 $14 $9f
	rst  $38                                         ; $7eb9: $ff
	rst  $38                                         ; $7eba: $ff
	rst  $38                                         ; $7ebb: $ff
	rst  $38                                         ; $7ebc: $ff
	rst  $38                                         ; $7ebd: $ff
	rst  $38                                         ; $7ebe: $ff
	rst  $38                                         ; $7ebf: $ff
	rst  $38                                         ; $7ec0: $ff
	cp   $86                                         ; $7ec1: $fe $86
	ld   hl, $1111                                   ; $7ec3: $21 $11 $11
	ld   de, $1111                                   ; $7ec6: $11 $11 $11
	ld   de, $1111                                   ; $7ec9: $11 $11 $11
	ld   de, $1211                                   ; $7ecc: $11 $11 $12
	adc  l                                           ; $7ecf: $8d
	rst  $38                                         ; $7ed0: $ff
	rst  $38                                         ; $7ed1: $ff
	rst  $38                                         ; $7ed2: $ff
	rst  $38                                         ; $7ed3: $ff
	rst  $38                                         ; $7ed4: $ff
	rst  $38                                         ; $7ed5: $ff
	rst  $38                                         ; $7ed6: $ff
	rst  $38                                         ; $7ed7: $ff
	rst  $38                                         ; $7ed8: $ff
	or   a                                           ; $7ed9: $b7
	ld   d, c                                        ; $7eda: $51
	ld   de, $1111                                   ; $7edb: $11 $11 $11
	ld   de, $1111                                   ; $7ede: $11 $11 $11
	ld   de, $1111                                   ; $7ee1: $11 $11 $11
	ld   de, $4911                                   ; $7ee4: $11 $11 $49
	rst  $38                                         ; $7ee7: $ff
	rst  $38                                         ; $7ee8: $ff
	rst  $38                                         ; $7ee9: $ff
	rst  $38                                         ; $7eea: $ff
	rst  $38                                         ; $7eeb: $ff
	rst  $38                                         ; $7eec: $ff
	rst  $38                                         ; $7eed: $ff
	rst  $38                                         ; $7eee: $ff
	rst  $38                                         ; $7eef: $ff
	ld   a, [$2174]                                  ; $7ef0: $fa $74 $21
	ld   de, $1111                                   ; $7ef3: $11 $11 $11
	ld   de, $1111                                   ; $7ef6: $11 $11 $11
	ld   de, $1111                                   ; $7ef9: $11 $11 $11
	ld   de, $ae15                                   ; $7efc: $11 $15 $ae
	rst  $38                                         ; $7eff: $ff
	rst  $38                                         ; $7f00: $ff
	rst  $38                                         ; $7f01: $ff
	rst  $38                                         ; $7f02: $ff
	rst  $38                                         ; $7f03: $ff
	rst  $38                                         ; $7f04: $ff
	rst  $38                                         ; $7f05: $ff
	rst  $38                                         ; $7f06: $ff
	rst  $38                                         ; $7f07: $ff
	or   [hl]                                        ; $7f08: $b6
	ld   b, d                                        ; $7f09: $42
	ld   de, $1111                                   ; $7f0a: $11 $11 $11
	ld   de, $1111                                   ; $7f0d: $11 $11 $11
	ld   de, $1111                                   ; $7f10: $11 $11 $11
	ld   de, $3811                                   ; $7f13: $11 $11 $38
	cp   a                                           ; $7f16: $bf
	rst  $38                                         ; $7f17: $ff
	rst  $38                                         ; $7f18: $ff
	rst  $38                                         ; $7f19: $ff
	rst  $38                                         ; $7f1a: $ff
	rst  $38                                         ; $7f1b: $ff
	rst  $38                                         ; $7f1c: $ff
	rst  $38                                         ; $7f1d: $ff
	rst  $38                                         ; $7f1e: $ff
	db   $fd                                         ; $7f1f: $fd
	and  [hl]                                        ; $7f20: $a6
	ld   [hl-], a                                    ; $7f21: $32
	ld   de, $1111                                   ; $7f22: $11 $11 $11
	ld   de, $1111                                   ; $7f25: $11 $11 $11
	ld   de, $1111                                   ; $7f28: $11 $11 $11
	ld   de, $1611                                   ; $7f2b: $11 $11 $16
	sbc  l                                           ; $7f2e: $9d
	rst  $38                                         ; $7f2f: $ff
	rst  $38                                         ; $7f30: $ff
	rst  $38                                         ; $7f31: $ff
	rst  $38                                         ; $7f32: $ff
	rst  $38                                         ; $7f33: $ff
	rst  $38                                         ; $7f34: $ff
	rst  $38                                         ; $7f35: $ff
	rst  $38                                         ; $7f36: $ff
	rst  $38                                         ; $7f37: $ff
	ld   [$5486], a                                  ; $7f38: $ea $86 $54
	ld   [hl-], a                                    ; $7f3b: $32
	ld   de, $1111                                   ; $7f3c: $11 $11 $11
	ld   de, $1111                                   ; $7f3f: $11 $11 $11
	ld   de, $1111                                   ; $7f42: $11 $11 $11
	ld   de, $6a14                                   ; $7f45: $11 $14 $6a
	rst  JumpTable                                         ; $7f48: $df
	rst  $38                                         ; $7f49: $ff
	rst  $38                                         ; $7f4a: $ff
	rst  $38                                         ; $7f4b: $ff
	rst  $38                                         ; $7f4c: $ff
	rst  $38                                         ; $7f4d: $ff
	rst  $38                                         ; $7f4e: $ff
	rst  $38                                         ; $7f4f: $ff
	rst  $38                                         ; $7f50: $ff
	rst  $38                                         ; $7f51: $ff
	rst  $38                                         ; $7f52: $ff
	jp   z, $3196                                    ; $7f53: $ca $96 $31

	ld   de, $1111                                   ; $7f56: $11 $11 $11
	ld   de, $1111                                   ; $7f59: $11 $11 $11
	ld   de, $1111                                   ; $7f5c: $11 $11 $11
	ld   de, $7c13                                   ; $7f5f: $11 $13 $7c
	rst  $38                                         ; $7f62: $ff
	rst  $38                                         ; $7f63: $ff
	rst  $38                                         ; $7f64: $ff
	rst  $38                                         ; $7f65: $ff
	rst  $38                                         ; $7f66: $ff
	rst  $38                                         ; $7f67: $ff
	rst  $38                                         ; $7f68: $ff
	rst  $38                                         ; $7f69: $ff
	rst  $38                                         ; $7f6a: $ff
	rst  $38                                         ; $7f6b: $ff
	jp   c, $1174                                    ; $7f6c: $da $74 $11

	ld   de, $1111                                   ; $7f6f: $11 $11 $11
	ld   de, $1111                                   ; $7f72: $11 $11 $11
	ld   de, $1111                                   ; $7f75: $11 $11 $11
	ld   de, $6a12                                   ; $7f78: $11 $12 $6a
	rst  JumpTable                                         ; $7f7b: $df
	rst  $38                                         ; $7f7c: $ff
	rst  $38                                         ; $7f7d: $ff
	rst  $38                                         ; $7f7e: $ff
	rst  $38                                         ; $7f7f: $ff
	rst  $38                                         ; $7f80: $ff
	rst  $38                                         ; $7f81: $ff
	rst  $38                                         ; $7f82: $ff
	rst  $38                                         ; $7f83: $ff
	rst  $38                                         ; $7f84: $ff
	db   $eb                                         ; $7f85: $eb
	add  [hl]                                        ; $7f86: $86
	ld   hl, $1111                                   ; $7f87: $21 $11 $11
	ld   de, $1111                                   ; $7f8a: $11 $11 $11
	ld   de, $1111                                   ; $7f8d: $11 $11 $11
	ld   de, $1111                                   ; $7f90: $11 $11 $11
	inc  d                                           ; $7f93: $14
	adc  d                                           ; $7f94: $8a
	rst  $38                                         ; $7f95: $ff
	rst  $38                                         ; $7f96: $ff
	rst  $38                                         ; $7f97: $ff
	rst  $38                                         ; $7f98: $ff
	rst  $38                                         ; $7f99: $ff
	rst  $38                                         ; $7f9a: $ff
	rst  $38                                         ; $7f9b: $ff
	rst  $38                                         ; $7f9c: $ff
	rst  $38                                         ; $7f9d: $ff
	rst  $38                                         ; $7f9e: $ff
	jp   z, $2164                                    ; $7f9f: $ca $64 $21

	ld   de, $1111                                   ; $7fa2: $11 $11 $11
	ld   de, $1111                                   ; $7fa5: $11 $11 $11
	ld   de, $1111                                   ; $7fa8: $11 $11 $11
	ld   de, $1211                                   ; $7fab: $11 $11 $12
	ld   e, c                                        ; $7fae: $59
	cp   [hl]                                        ; $7faf: $be
	rst  $38                                         ; $7fb0: $ff
	rst  $38                                         ; $7fb1: $ff
	rst  $38                                         ; $7fb2: $ff
	rst  $38                                         ; $7fb3: $ff
	rst  $38                                         ; $7fb4: $ff
	rst  $38                                         ; $7fb5: $ff
	rst  $38                                         ; $7fb6: $ff
	rst  $38                                         ; $7fb7: $ff
	rst  $38                                         ; $7fb8: $ff
	ld   [$4286], a                                  ; $7fb9: $ea $86 $42
	ld   bc, $1111                                   ; $7fbc: $01 $11 $11
	ld   de, $1111                                   ; $7fbf: $11 $11 $11
	ld   de, $1111                                   ; $7fc2: $11 $11 $11
	ld   de, $1111                                   ; $7fc5: $11 $11 $11
	inc  bc                                          ; $7fc8: $03
	ld   l, c                                        ; $7fc9: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fca: $cf
	rst  $38                                         ; $7fcb: $ff
	rst  $38                                         ; $7fcc: $ff
	rst  $38                                         ; $7fcd: $ff
	rst  $38                                         ; $7fce: $ff
	rst  $38                                         ; $7fcf: $ff
	rst  $38                                         ; $7fd0: $ff
	rst  $38                                         ; $7fd1: $ff
	rst  $38                                         ; $7fd2: $ff
	rst  $38                                         ; $7fd3: $ff
	db   $eb                                         ; $7fd4: $eb
	add  [hl]                                        ; $7fd5: $86
	ld   d, e                                        ; $7fd6: $53
	ld   hl, $1111                                   ; $7fd7: $21 $11 $11
	ld   de, $1111                                   ; $7fda: $11 $11 $11
	ld   de, $1111                                   ; $7fdd: $11 $11 $11
	ld   de, $1111                                   ; $7fe0: $11 $11 $11
	ld   [de], a                                     ; $7fe3: $12
	ld   e, c                                        ; $7fe4: $59
	call $ffff                                       ; $7fe5: $cd $ff $ff
	rst  $38                                         ; $7fe8: $ff
	rst  $38                                         ; $7fe9: $ff
	rst  $38                                         ; $7fea: $ff
	rst  $38                                         ; $7feb: $ff
	rst  $38                                         ; $7fec: $ff
	rst  $38                                         ; $7fed: $ff
	rst  $38                                         ; $7fee: $ff
	call c, Call_0de_65a8                            ; $7fef: $dc $a8 $65
	ld   b, e                                        ; $7ff2: $43
	ld   de, $1111                                   ; $7ff3: $11 $11 $11
	ld   de, $1111                                   ; $7ff6: $11 $11 $11
	ld   de, $1111                                   ; $7ff9: $11 $11 $11
	ld   de, $1111                                   ; $7ffc: $11 $11 $11
	inc  h                                           ; $7fff: $24
