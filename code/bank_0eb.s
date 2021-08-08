; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0eb", ROMX[$4000], BANK[$eb]

	adc  b                                           ; $4000: $88
	adc  b                                           ; $4001: $88
	adc  b                                           ; $4002: $88
	adc  b                                           ; $4003: $88
	adc  b                                           ; $4004: $88
	adc  b                                           ; $4005: $88
	adc  b                                           ; $4006: $88
	adc  b                                           ; $4007: $88
	adc  b                                           ; $4008: $88
	adc  b                                           ; $4009: $88
	adc  b                                           ; $400a: $88
	adc  b                                           ; $400b: $88
	adc  b                                           ; $400c: $88
	adc  b                                           ; $400d: $88
	adc  b                                           ; $400e: $88
	adc  b                                           ; $400f: $88
	adc  b                                           ; $4010: $88
	adc  b                                           ; $4011: $88
	adc  b                                           ; $4012: $88
	adc  b                                           ; $4013: $88
	adc  b                                           ; $4014: $88
	adc  b                                           ; $4015: $88
	adc  b                                           ; $4016: $88
	adc  b                                           ; $4017: $88
	adc  b                                           ; $4018: $88
	adc  b                                           ; $4019: $88
	adc  b                                           ; $401a: $88
	adc  b                                           ; $401b: $88
	adc  b                                           ; $401c: $88
	adc  b                                           ; $401d: $88
	adc  b                                           ; $401e: $88
	adc  b                                           ; $401f: $88
	adc  b                                           ; $4020: $88
	adc  b                                           ; $4021: $88
	adc  b                                           ; $4022: $88
	adc  b                                           ; $4023: $88
	adc  b                                           ; $4024: $88
	adc  b                                           ; $4025: $88
	adc  b                                           ; $4026: $88
	adc  b                                           ; $4027: $88
	adc  b                                           ; $4028: $88
	adc  b                                           ; $4029: $88
	adc  b                                           ; $402a: $88
	adc  b                                           ; $402b: $88
	adc  b                                           ; $402c: $88
	adc  b                                           ; $402d: $88
	adc  b                                           ; $402e: $88
	adc  b                                           ; $402f: $88
	adc  b                                           ; $4030: $88
	adc  b                                           ; $4031: $88
	adc  b                                           ; $4032: $88
	adc  b                                           ; $4033: $88
	adc  b                                           ; $4034: $88
	adc  b                                           ; $4035: $88
	adc  b                                           ; $4036: $88
	adc  b                                           ; $4037: $88
	adc  b                                           ; $4038: $88
	ld   de, $1111                                   ; $4039: $11 $11 $11
	ld   de, $1111                                   ; $403c: $11 $11 $11
	ld   de, $1111                                   ; $403f: $11 $11 $11
	ld   de, $1111                                   ; $4042: $11 $11 $11
	ld   de, $1111                                   ; $4045: $11 $11 $11
	ld   de, $1111                                   ; $4048: $11 $11 $11
	ld   de, $1111                                   ; $404b: $11 $11 $11
	ld   de, $1111                                   ; $404e: $11 $11 $11
	ld   de, $1111                                   ; $4051: $11 $11 $11
	ld   de, $0011                                   ; $4054: $11 $11 $00
	ld   c, b                                        ; $4057: $48
	ld   de, $1111                                   ; $4058: $11 $11 $11
	ld   de, $1111                                   ; $405b: $11 $11 $11
	ld   de, $1111                                   ; $405e: $11 $11 $11
	ld   de, $5413                                   ; $4061: $11 $13 $54
	ld   d, h                                        ; $4064: $54
	ld   d, h                                        ; $4065: $54
	ld   b, c                                        ; $4066: $41
	rra                                              ; $4067: $1f
	rst  $38                                         ; $4068: $ff
	pop  af                                          ; $4069: $f1
	ld   de, $1311                                   ; $406a: $11 $11 $13
	ld   de, $1c11                                   ; $406d: $11 $11 $1c
	sbc  $bc                                         ; $4070: $de $bc
	sbc  $b1                                         ; $4072: $de $b1
	ld   de, $1111                                   ; $4074: $11 $11 $11
	ld   de, $1111                                   ; $4077: $11 $11 $11
	ld   de, $1111                                   ; $407a: $11 $11 $11
	ld   de, $1111                                   ; $407d: $11 $11 $11
	ld   de, $5411                                   ; $4080: $11 $11 $54
	ld   b, h                                        ; $4083: $44
	inc  de                                          ; $4084: $13
	ld   de, $5454                                   ; $4085: $11 $54 $54
	ld   h, a                                        ; $4088: $67
	ld   [hl], d                                     ; $4089: $72
	ld   de, $1111                                   ; $408a: $11 $11 $11
	ld   de, $1112                                   ; $408d: $11 $12 $11
	ld   [de], a                                     ; $4090: $12
	ld   de, $1111                                   ; $4091: $11 $11 $11
	ld   h, [hl]                                     ; $4094: $66
	halt                                             ; $4095: $76
	di                                               ; $4096: $f3
	ld   de, $8888                                   ; $4097: $11 $88 $88
	adc  b                                           ; $409a: $88
	adc  b                                           ; $409b: $88
	adc  b                                           ; $409c: $88
	adc  b                                           ; $409d: $88
	adc  b                                           ; $409e: $88
	sbc  c                                           ; $409f: $99
	sbc  b                                           ; $40a0: $98
	adc  b                                           ; $40a1: $88
	adc  c                                           ; $40a2: $89
	adc  b                                           ; $40a3: $88
	add  a                                           ; $40a4: $87
	ld   [hl], a                                     ; $40a5: $77
	ld   [hl], a                                     ; $40a6: $77
	ld   [hl], a                                     ; $40a7: $77
	ld   [hl], a                                     ; $40a8: $77
	adc  b                                           ; $40a9: $88
	sbc  b                                           ; $40aa: $98
	sbc  c                                           ; $40ab: $99
	sbc  d                                           ; $40ac: $9a
	sbc  c                                           ; $40ad: $99
	sbc  b                                           ; $40ae: $98
	adc  b                                           ; $40af: $88
	ld   [hl], a                                     ; $40b0: $77
	ld   [hl], a                                     ; $40b1: $77
	halt                                             ; $40b2: $76
	ld   h, a                                        ; $40b3: $67
	ld   a, b                                        ; $40b4: $78
	adc  c                                           ; $40b5: $89
	adc  c                                           ; $40b6: $89
	sbc  d                                           ; $40b7: $9a
	xor  d                                           ; $40b8: $aa
	sbc  c                                           ; $40b9: $99
	sbc  b                                           ; $40ba: $98
	add  a                                           ; $40bb: $87
	ld   [hl], a                                     ; $40bc: $77
	ld   [hl], a                                     ; $40bd: $77
	halt                                             ; $40be: $76
	ld   h, [hl]                                     ; $40bf: $66
	ld   [hl], a                                     ; $40c0: $77
	adc  b                                           ; $40c1: $88
	sbc  b                                           ; $40c2: $98
	sbc  d                                           ; $40c3: $9a
	xor  d                                           ; $40c4: $aa
	xor  c                                           ; $40c5: $a9
	sbc  c                                           ; $40c6: $99
	sbc  b                                           ; $40c7: $98
	ld   [hl], a                                     ; $40c8: $77
	ld   [hl], a                                     ; $40c9: $77
	ld   h, [hl]                                     ; $40ca: $66
	ld   d, [hl]                                     ; $40cb: $56
	ld   h, a                                        ; $40cc: $67
	adc  b                                           ; $40cd: $88
	adc  c                                           ; $40ce: $89
	sbc  d                                           ; $40cf: $9a
	sbc  c                                           ; $40d0: $99
	xor  d                                           ; $40d1: $aa
	xor  c                                           ; $40d2: $a9
	sbc  c                                           ; $40d3: $99
	add  a                                           ; $40d4: $87
	ld   [hl], a                                     ; $40d5: $77
	ld   [hl], a                                     ; $40d6: $77
	halt                                             ; $40d7: $76
	ld   h, [hl]                                     ; $40d8: $66
	ld   [hl], a                                     ; $40d9: $77
	adc  b                                           ; $40da: $88
	adc  c                                           ; $40db: $89
	sbc  c                                           ; $40dc: $99
	sbc  c                                           ; $40dd: $99
	xor  d                                           ; $40de: $aa
	xor  c                                           ; $40df: $a9
	sub  a                                           ; $40e0: $97
	halt                                             ; $40e1: $76
	ld   [hl], a                                     ; $40e2: $77
	ld   h, [hl]                                     ; $40e3: $66
	ld   d, l                                        ; $40e4: $55
	ld   h, a                                        ; $40e5: $67
	adc  b                                           ; $40e6: $88
	adc  c                                           ; $40e7: $89
	sbc  d                                           ; $40e8: $9a
	xor  d                                           ; $40e9: $aa
	xor  c                                           ; $40ea: $a9
	xor  c                                           ; $40eb: $a9
	sbc  b                                           ; $40ec: $98
	add  a                                           ; $40ed: $87
	ld   [hl], a                                     ; $40ee: $77
	ld   [hl], a                                     ; $40ef: $77
	ld   h, l                                        ; $40f0: $65
	ld   d, [hl]                                     ; $40f1: $56
	ld   a, b                                        ; $40f2: $78
	adc  b                                           ; $40f3: $88
	adc  c                                           ; $40f4: $89
	sbc  d                                           ; $40f5: $9a
	xor  d                                           ; $40f6: $aa
	sbc  c                                           ; $40f7: $99
	sbc  d                                           ; $40f8: $9a
	add  a                                           ; $40f9: $87
	ld   h, [hl]                                     ; $40fa: $66
	ld   [hl], a                                     ; $40fb: $77
	ld   h, l                                        ; $40fc: $65
	ld   b, l                                        ; $40fd: $45
	ld   h, a                                        ; $40fe: $67
	adc  b                                           ; $40ff: $88
	adc  b                                           ; $4100: $88
	sbc  d                                           ; $4101: $9a
	xor  d                                           ; $4102: $aa
	xor  d                                           ; $4103: $aa
	xor  d                                           ; $4104: $aa
	sbc  b                                           ; $4105: $98
	halt                                             ; $4106: $76
	ld   h, a                                        ; $4107: $67
	halt                                             ; $4108: $76
	ld   d, h                                        ; $4109: $54
	ld   d, [hl]                                     ; $410a: $56
	ld   a, b                                        ; $410b: $78
	adc  b                                           ; $410c: $88
	adc  d                                           ; $410d: $8a
	cp   e                                           ; $410e: $bb
	xor  d                                           ; $410f: $aa
	xor  d                                           ; $4110: $aa
	xor  c                                           ; $4111: $a9
	add  a                                           ; $4112: $87
	ld   h, [hl]                                     ; $4113: $66
	ld   [hl], a                                     ; $4114: $77
	ld   h, h                                        ; $4115: $64
	ld   b, l                                        ; $4116: $45
	ld   l, b                                        ; $4117: $68
	sbc  b                                           ; $4118: $98
	adc  b                                           ; $4119: $88
	xor  e                                           ; $411a: $ab
	cp   e                                           ; $411b: $bb
	cp   d                                           ; $411c: $ba
	cp   e                                           ; $411d: $bb
	xor  b                                           ; $411e: $a8
	ld   h, [hl]                                     ; $411f: $66
	ld   h, a                                        ; $4120: $67
	ld   h, l                                        ; $4121: $65
	inc  [hl]                                        ; $4122: $34
	ld   d, a                                        ; $4123: $57
	adc  c                                           ; $4124: $89
	adc  b                                           ; $4125: $88
	xor  d                                           ; $4126: $aa
	call z, $aaaa                                    ; $4127: $cc $aa $aa
	xor  c                                           ; $412a: $a9
	halt                                             ; $412b: $76
	ld   h, a                                        ; $412c: $67
	halt                                             ; $412d: $76
	ld   b, e                                        ; $412e: $43
	ld   b, [hl]                                     ; $412f: $46
	ld   a, c                                        ; $4130: $79
	adc  b                                           ; $4131: $88
	sbc  d                                           ; $4132: $9a
	cp   e                                           ; $4133: $bb
	cp   d                                           ; $4134: $ba
	cp   d                                           ; $4135: $ba
	cp   d                                           ; $4136: $ba
	sub  [hl]                                        ; $4137: $96
	ld   d, [hl]                                     ; $4138: $56
	ld   [hl], a                                     ; $4139: $77
	ld   d, e                                        ; $413a: $53
	dec  [hl]                                        ; $413b: $35
	ld   a, b                                        ; $413c: $78
	sbc  b                                           ; $413d: $98
	adc  c                                           ; $413e: $89
	cp   h                                           ; $413f: $bc
	res  5, e                                        ; $4140: $cb $ab
	cp   d                                           ; $4142: $ba
	sub  a                                           ; $4143: $97
	ld   d, l                                        ; $4144: $55
	ld   h, a                                        ; $4145: $67
	ld   h, h                                        ; $4146: $64
	inc  hl                                          ; $4147: $23
	ld   l, b                                        ; $4148: $68
	adc  c                                           ; $4149: $89
	adc  b                                           ; $414a: $88
	xor  e                                           ; $414b: $ab
	call z, $abbb                                    ; $414c: $cc $bb $ab
	xor  b                                           ; $414f: $a8
	ld   d, l                                        ; $4150: $55
	ld   h, a                                        ; $4151: $67
	ld   h, l                                        ; $4152: $65
	ld   [hl+], a                                    ; $4153: $22
	ld   d, a                                        ; $4154: $57
	adc  c                                           ; $4155: $89
	sbc  c                                           ; $4156: $99
	xor  e                                           ; $4157: $ab
	db   $dd                                         ; $4158: $dd
	cp   e                                           ; $4159: $bb
	xor  d                                           ; $415a: $aa
	sub  l                                           ; $415b: $95
	inc  hl                                          ; $415c: $23
	ld   d, [hl]                                     ; $415d: $56
	halt                                             ; $415e: $76
	inc  h                                           ; $415f: $24
	sbc  l                                           ; $4160: $9d
	cp   $a8                                         ; $4161: $fe $a8
	cp   l                                           ; $4163: $bd
	or   a                                           ; $4164: $b7
	ld   sp, $1156                                   ; $4165: $31 $56 $11
	ld   a, [de]                                     ; $4168: $1a
	rst  $38                                         ; $4169: $ff
	db   $f4                                         ; $416a: $f4
	ld   c, a                                        ; $416b: $4f
	cp   $41                                         ; $416c: $fe $41
	ld   c, [hl]                                     ; $416e: $4e
	sub  $13                                         ; $416f: $d6 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4171: $cf
	add  c                                           ; $4172: $81
	ld   de, $f73f                                   ; $4173: $11 $3f $f7
	xor  e                                           ; $4176: $ab
	xor  h                                           ; $4177: $ac
	sub  h                                           ; $4178: $94
	ld   c, e                                        ; $4179: $4b
	ret  c                                           ; $417a: $d8

	ld   l, c                                        ; $417b: $69
	ld   l, c                                        ; $417c: $69
	add  c                                           ; $417d: $81
	ld   de, $fe1b                                   ; $417e: $11 $1b $fe
	ld   a, c                                        ; $4181: $79
	ld   a, c                                        ; $4182: $79
	and  a                                           ; $4183: $a7
	ld   e, e                                        ; $4184: $5b
	ld   hl, sp+$48                                  ; $4185: $f8 $48
	ld   h, a                                        ; $4187: $67
	and  [hl]                                        ; $4188: $a6
	ld   h, l                                        ; $4189: $65
	ld   de, $b2ef                                   ; $418a: $11 $ef $b2
	ld   l, b                                        ; $418d: $68
	xor  c                                           ; $418e: $a9
	ld   l, c                                        ; $418f: $69
	ei                                               ; $4190: $fb
	ld   d, h                                        ; $4191: $54
	add  a                                           ; $4192: $87
	adc  c                                           ; $4193: $89
	ld   a, c                                        ; $4194: $79
	ld   sp, $f81f                                   ; $4195: $31 $1f $f8
	ld   a, [de]                                     ; $4198: $1a
	cp   d                                           ; $4199: $ba
	halt                                             ; $419a: $76
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $419b: $cf
	add  h                                           ; $419c: $84
	ld   e, c                                        ; $419d: $59
	ld   l, b                                        ; $419e: $68
	and  a                                           ; $419f: $a7
	sub  e                                           ; $41a0: $93
	ld   de, $c1df                                   ; $41a1: $11 $df $c1
	xor  e                                           ; $41a4: $ab
	add  [hl]                                        ; $41a5: $86
	ld   a, h                                        ; $41a6: $7c
	add  sp, $46                                     ; $41a7: $e8 $46
	and  [hl]                                        ; $41a9: $a6

Jump_0eb_41aa:
	ld   e, h                                        ; $41aa: $5c
	sbc  c                                           ; $41ab: $99
	ld   b, c                                        ; $41ac: $41
	add  hl, de                                      ; $41ad: $19
	rst  $38                                         ; $41ae: $ff
	dec  de                                          ; $41af: $1b
	rst  $10                                         ; $41b0: $d7
	halt                                             ; $41b1: $76
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41b2: $cf
	add  e                                           ; $41b3: $83
	ld   l, d                                        ; $41b4: $6a
	ld   d, l                                        ; $41b5: $55
	ret                                              ; $41b6: $c9


	sub  [hl]                                        ; $41b7: $96
	ld   de, $f11f                                   ; $41b8: $11 $1f $f1
	ld   a, [hl]                                     ; $41bb: $7e
	ld   h, [hl]                                     ; $41bc: $66
	ld   l, d                                        ; $41bd: $6a
	ld   a, [$9745]                                  ; $41be: $fa $45 $97
	ld   c, h                                        ; $41c1: $4c
	or   a                                           ; $41c2: $b7
	sub  c                                           ; $41c3: $91
	ld   de, $91ff                                   ; $41c4: $11 $ff $91
	ld   sp, hl                                      ; $41c7: $f9
	ld   d, [hl]                                     ; $41c8: $56
	adc  a                                           ; $41c9: $8f
	push hl                                          ; $41ca: $e5
	ld   c, c                                        ; $41cb: $49
	sub  e                                           ; $41cc: $93
	sbc  h                                           ; $41cd: $9c
	adc  c                                           ; $41ce: $89
	ld   bc, $ff15                                   ; $41cf: $01 $15 $ff
	dec  e                                           ; $41d2: $1d
	jp   $ff67                                       ; $41d3: $c3 $67 $ff


	ld   h, e                                        ; $41d6: $63
	adc  d                                           ; $41d7: $8a
	ld   b, [hl]                                     ; $41d8: $46
	ret  c                                           ; $41d9: $d8

	sub  [hl]                                        ; $41da: $96
	ld   de, $f11f                                   ; $41db: $11 $1f $f1
	ld   a, a                                        ; $41de: $7f
	ld   d, a                                        ; $41df: $57
	ld   a, e                                        ; $41e0: $7b
	ld   sp, hl                                      ; $41e1: $f9
	ld   h, $b5                                      ; $41e2: $26 $b5
	ld   c, [hl]                                     ; $41e4: $4e
	or   a                                           ; $41e5: $b7
	ld   [hl], c                                     ; $41e6: $71
	ld   de, $15ff                                   ; $41e7: $11 $ff $15
	push af                                          ; $41ea: $f5
	ld   d, [hl]                                     ; $41eb: $56
	xor  a                                           ; $41ec: $af
	and  d                                           ; $41ed: $a2
	adc  c                                           ; $41ee: $89
	ld   b, h                                        ; $41ef: $44
	db   $db                                         ; $41f0: $db
	ld   [hl], a                                     ; $41f1: $77
	ld   de, $f41f                                   ; $41f2: $11 $1f $f4
	cpl                                              ; $41f5: $2f
	ld   d, h                                        ; $41f6: $54
	ld   a, b                                        ; $41f7: $78
	db   $fd                                         ; $41f8: $fd
	rla                                              ; $41f9: $17
	and  h                                           ; $41fa: $a4
	ld   c, l                                        ; $41fb: $4d
	ret  z                                           ; $41fc: $c8

	add  c                                           ; $41fd: $81
	ld   de, $a1bf                                   ; $41fe: $11 $bf $a1
	rst  $30                                         ; $4201: $f7
	scf                                              ; $4202: $37
	ld   e, a                                        ; $4203: $5f
	pop  af                                          ; $4204: $f1
	ld   a, h                                        ; $4205: $7c
	ld   b, e                                        ; $4206: $43
	cp   h                                           ; $4207: $bc
	ld   a, c                                        ; $4208: $79
	ld   de, $fb19                                   ; $4209: $11 $19 $fb
	rra                                              ; $420c: $1f
	ld   [hl], d                                     ; $420d: $72
	add  [hl]                                        ; $420e: $86
	rst  $38                                         ; $420f: $ff
	rlca                                             ; $4210: $07
	and  h                                           ; $4211: $a4
	ld   c, l                                        ; $4212: $4d
	add  $71                                         ; $4213: $c6 $71
	ld   de, $51ff                                   ; $4215: $11 $ff $51
	db   $f4                                         ; $4218: $f4
	ld   b, a                                        ; $4219: $47
	ld   l, a                                        ; $421a: $6f
	pop  de                                          ; $421b: $d1
	cp   d                                           ; $421c: $ba
	dec  h                                           ; $421d: $25
	db   $db                                         ; $421e: $db
	ld   h, [hl]                                     ; $421f: $66
	ld   de, $f11f                                   ; $4220: $11 $1f $f1
	ld   l, a                                        ; $4223: $6f
	ld   d, $79                                      ; $4224: $16 $79
	rst  $30                                         ; $4226: $f7
	dec  l                                           ; $4227: $2d
	ld   d, c                                        ; $4228: $51
	adc  l                                           ; $4229: $8d
	add  [hl]                                        ; $422a: $86
	ld   d, c                                        ; $422b: $51
	ld   [de], a                                     ; $422c: $12
	rst  $38                                         ; $422d: $ff
	rra                                              ; $422e: $1f
	pop  bc                                          ; $422f: $c1
	sub  l                                           ; $4230: $95
	rst  $38                                         ; $4231: $ff
	add  hl, de                                      ; $4232: $19
	pop  bc                                          ; $4233: $c1
	ld   c, h                                        ; $4234: $4c
	add  $52                                         ; $4235: $c6 $52
	ld   de, $52ef                                   ; $4237: $11 $ef $52
	di                                               ; $423a: $f3
	ld   c, b                                        ; $423b: $48
	ld   a, a                                        ; $423c: $7f
	and  d                                           ; $423d: $a2
	or   $18                                         ; $423e: $f6 $18
	ret  c                                           ; $4240: $d8

	ld   d, [hl]                                     ; $4241: $56
	ld   de, $f14f                                   ; $4242: $11 $4f $f1
	ld   sp, hl                                      ; $4245: $f9
	add  hl, de                                      ; $4246: $19
	ld   l, a                                        ; $4247: $6f
	pop  af                                          ; $4248: $f1
	db   $ec                                         ; $4249: $ec
	ld   d, $ca                                      ; $424a: $16 $ca
	ld   d, l                                        ; $424c: $55
	ld   hl, $f11f                                   ; $424d: $21 $1f $f1
	cp   a                                           ; $4250: $bf
	ld   d, $7b                                      ; $4251: $16 $7b
	pop  af                                          ; $4253: $f1
	adc  a                                           ; $4254: $8f
	ld   [de], a                                     ; $4255: $12
	bit  4, l                                        ; $4256: $cb $65
	ld   sp, $f41e                                   ; $4258: $31 $1e $f4
	ccf                                              ; $425b: $3f
	ld   [hl-], a                                    ; $425c: $32
	adc  b                                           ; $425d: $88
	push af                                          ; $425e: $f5
	ccf                                              ; $425f: $3f
	ld   b, c                                        ; $4260: $41
	cp   d                                           ; $4261: $ba
	ld   [hl], h                                     ; $4262: $74
	ld   d, c                                        ; $4263: $51
	inc  d                                           ; $4264: $14
	db   $fd                                         ; $4265: $fd
	rra                                              ; $4266: $1f
	and  c                                           ; $4267: $a1
	add  [hl]                                        ; $4268: $86
	ei                                               ; $4269: $fb
	rra                                              ; $426a: $1f
	and  c                                           ; $426b: $a1
	sbc  e                                           ; $426c: $9b
	add  h                                           ; $426d: $84
	ld   d, h                                        ; $426e: $54
	ld   de, $1fff                                   ; $426f: $11 $ff $1f
	pop  af                                          ; $4272: $f1

jr_0eb_4273:
	halt                                             ; $4273: $76
	rst  $38                                         ; $4274: $ff
	rra                                              ; $4275: $1f
	pop  af                                          ; $4276: $f1
	sbc  e                                           ; $4277: $9b
	sub  [hl]                                        ; $4278: $96
	ld   b, l                                        ; $4279: $45

jr_0eb_427a:
	ld   de, $18ff                                   ; $427a: $11 $ff $18
	pop  af                                          ; $427d: $f1
	ld   b, a                                        ; $427e: $47
	cp   a                                           ; $427f: $bf
	jr   jr_0eb_4273                                 ; $4280: $18 $f1

	ld   e, h                                        ; $4282: $5c
	sub  a                                           ; $4283: $97
	dec  [hl]                                        ; $4284: $35
	ld   bc, $31bf                                   ; $4285: $01 $bf $31
	push af                                          ; $4288: $f5
	jr   @+$81                                       ; $4289: $18 $7f

	ld   b, e                                        ; $428b: $43
	di                                               ; $428c: $f3
	dec  hl                                          ; $428d: $2b
	sbc  b                                           ; $428e: $98
	ld   h, $61                                      ; $428f: $26 $61
	rra                                              ; $4291: $1f
	pop  de                                          ; $4292: $d1
	db   $fc                                         ; $4293: $fc
	jr   jr_0eb_4305                                 ; $4294: $18 $6f

	sub  c                                           ; $4296: $91
	ld   hl, sp+$1b                                  ; $4297: $f8 $1b
	sbc  d                                           ; $4299: $9a
	inc  h                                           ; $429a: $24
	sub  c                                           ; $429b: $91
	rra                                              ; $429c: $1f
	pop  af                                          ; $429d: $f1
	rst  $38                                         ; $429e: $ff
	ld   d, $7c                                      ; $429f: $16 $7c
	pop  de                                          ; $42a1: $d1
	rst  $38                                         ; $42a2: $ff
	ld   a, [de]                                     ; $42a3: $1a
	cp   d                                           ; $42a4: $ba
	ld   [hl-], a                                    ; $42a5: $32
	or   c                                           ; $42a6: $b1
	rra                                              ; $42a7: $1f
	pop  af                                          ; $42a8: $f1
	sbc  a                                           ; $42a9: $9f
	inc  de                                          ; $42aa: $13
	sbc  c                                           ; $42ab: $99
	pop  af                                          ; $42ac: $f1
	xor  a                                           ; $42ad: $af
	jr   jr_0eb_427a                                 ; $42ae: $18 $ca

	ld   d, c                                        ; $42b0: $51
	or   c                                           ; $42b1: $b1
	ld   a, [de]                                     ; $42b2: $1a
	di                                               ; $42b3: $f3
	rra                                              ; $42b4: $1f
	add  c                                           ; $42b5: $81
	sbc  b                                           ; $42b6: $98
	pop  af                                          ; $42b7: $f1
	ccf                                              ; $42b8: $3f
	inc  [hl]                                        ; $42b9: $34
	db   $eb                                         ; $42ba: $eb
	ld   [hl], c                                     ; $42bb: $71
	sub  a                                           ; $42bc: $97
	ld   de, $1fff                                   ; $42bd: $11 $ff $1f
	pop  af                                          ; $42c0: $f1
	ld   a, c                                        ; $42c1: $79
	db   $e3                                         ; $42c2: $e3
	rra                                              ; $42c3: $1f
	add  c                                           ; $42c4: $81
	db   $ec                                         ; $42c5: $ec
	and  c                                           ; $42c6: $a1
	ld   l, d                                        ; $42c7: $6a
	ld   de, $1fff                                   ; $42c8: $11 $ff $1f
	pop  af                                          ; $42cb: $f1
	ld   e, d                                        ; $42cc: $5a
	add  $1f                                         ; $42cd: $c6 $1f
	pop  de                                          ; $42cf: $d1
	db   $dd                                         ; $42d0: $dd
	and  c                                           ; $42d1: $a1
	ld   c, l                                        ; $42d2: $4d
	ld   de, $1fff                                   ; $42d3: $11 $ff $1f
	di                                               ; $42d6: $f3
	ld   l, h                                        ; $42d7: $6c
	sub  $1e                                         ; $42d8: $d6 $1e
	pop  bc                                          ; $42da: $c1
	adc  $91                                         ; $42db: $ce $91
	ld   e, e                                        ; $42dd: $5b
	ld   de, $1ffa                                   ; $42de: $11 $fa $1f
	db   $f4                                         ; $42e1: $f4
	xor  l                                           ; $42e2: $ad
	pop  hl                                          ; $42e3: $e1
	ccf                                              ; $42e4: $3f
	ld   sp, $61da                                   ; $42e5: $31 $da $61
	sub  h                                           ; $42e8: $94
	rra                                              ; $42e9: $1f
	pop  af                                          ; $42ea: $f1
	rst  $38                                         ; $42eb: $ff
	ld   e, h                                        ; $42ec: $5c
	cp   l                                           ; $42ed: $bd
	ld   h, e                                        ; $42ee: $63
	push de                                          ; $42ef: $d5
	ld   a, [hl+]                                    ; $42f0: $2a
	add  l                                           ; $42f1: $85
	dec  h                                           ; $42f2: $25
	ld   de, $1ff9                                   ; $42f3: $11 $f9 $1f
	or   l                                           ; $42f6: $b5
	ld   a, [$6ec5]                                  ; $42f7: $fa $c5 $6e
	dec  d                                           ; $42fa: $15
	add  $42                                         ; $42fb: $c6 $42
	ld   h, c                                        ; $42fd: $61
	rra                                              ; $42fe: $1f
	ld   h, c                                        ; $42ff: $61
	ld   sp, hl                                      ; $4300: $f9
	ld   l, [hl]                                     ; $4301: $6e
	xor  l                                           ; $4302: $ad
	ld   b, a                                        ; $4303: $47
	pop  hl                                          ; $4304: $e1

jr_0eb_4305:
	ld   c, h                                        ; $4305: $4c
	ld   [hl], h                                     ; $4306: $74
	scf                                              ; $4307: $37
	ld   de, $1ff6                                   ; $4308: $11 $f6 $1f
	and  a                                           ; $430b: $a7
	ld   [$7dc6], a                                  ; $430c: $ea $c6 $7d
	inc  h                                           ; $430f: $24
	or   a                                           ; $4310: $b7
	ld   b, e                                        ; $4311: $43
	ld   [hl], c                                     ; $4312: $71
	cpl                                              ; $4313: $2f
	ld   b, d                                        ; $4314: $42
	ld   sp, hl                                      ; $4315: $f9
	ld   a, [hl]                                     ; $4316: $7e
	cp   h                                           ; $4317: $bc
	ld   l, c                                        ; $4318: $69
	jp   nc, Jump_0eb_635b                           ; $4319: $d2 $5b $63

	ld   b, a                                        ; $431c: $47
	ld   [de], a                                     ; $431d: $12
	push af                                          ; $431e: $f5
	cpl                                              ; $431f: $2f
	sub  a                                           ; $4320: $97
	db   $ec                                         ; $4321: $ec
	rst  $10                                         ; $4322: $d7
	adc  [hl]                                        ; $4323: $8e
	ld   b, h                                        ; $4324: $44
	and  a                                           ; $4325: $a7
	inc  sp                                          ; $4326: $33
	ld   h, c                                        ; $4327: $61
	ccf                                              ; $4328: $3f
	ld   d, h                                        ; $4329: $54
	ld   hl, sp-$72                                  ; $432a: $f8 $8e
	cp   h                                           ; $432c: $bc
	adc  b                                           ; $432d: $88
	push bc                                          ; $432e: $c5
	ld   l, d                                        ; $432f: $6a
	ld   h, h                                        ; $4330: $64
	ld   b, [hl]                                     ; $4331: $46
	dec  d                                           ; $4332: $15
	db   $f4                                         ; $4333: $f4
	ld   e, [hl]                                     ; $4334: $5e
	ld   a, c                                        ; $4335: $79
	cp   d                                           ; $4336: $ba
	cp   b                                           ; $4337: $b8
	adc  e                                           ; $4338: $8b
	ld   h, a                                        ; $4339: $67
	and  a                                           ; $433a: $a7
	ld   h, [hl]                                     ; $433b: $66
	add  l                                           ; $433c: $85
	ld   l, h                                        ; $433d: $6c
	halt                                             ; $433e: $76
	and  a                                           ; $433f: $a7
	ld   a, c                                        ; $4340: $79
	ld   l, b                                        ; $4341: $68
	ld   [hl], a                                     ; $4342: $77
	sbc  b                                           ; $4343: $98
	adc  c                                           ; $4344: $89
	sbc  c                                           ; $4345: $99
	sbc  c                                           ; $4346: $99
	xor  c                                           ; $4347: $a9
	sbc  c                                           ; $4348: $99
	adc  b                                           ; $4349: $88
	ld   [hl], a                                     ; $434a: $77
	halt                                             ; $434b: $76
	ld   h, [hl]                                     ; $434c: $66
	ld   h, [hl]                                     ; $434d: $66
	ld   a, b                                        ; $434e: $78
	adc  c                                           ; $434f: $89
	sbc  c                                           ; $4350: $99
	sbc  c                                           ; $4351: $99
	sbc  c                                           ; $4352: $99
	sbc  c                                           ; $4353: $99
	xor  c                                           ; $4354: $a9
	sbc  b                                           ; $4355: $98
	add  a                                           ; $4356: $87
	ld   h, [hl]                                     ; $4357: $66
	ld   h, [hl]                                     ; $4358: $66
	ld   h, a                                        ; $4359: $67
	ld   a, b                                        ; $435a: $78
	adc  b                                           ; $435b: $88
	sbc  b                                           ; $435c: $98
	sbc  c                                           ; $435d: $99
	sbc  c                                           ; $435e: $99
	sbc  c                                           ; $435f: $99
	sbc  b                                           ; $4360: $98
	sbc  b                                           ; $4361: $98
	add  a                                           ; $4362: $87
	ld   [hl], a                                     ; $4363: $77
	ld   h, [hl]                                     ; $4364: $66
	ld   [hl], a                                     ; $4365: $77
	ld   [hl], a                                     ; $4366: $77
	adc  b                                           ; $4367: $88
	adc  c                                           ; $4368: $89
	sbc  c                                           ; $4369: $99
	adc  c                                           ; $436a: $89
	sbc  b                                           ; $436b: $98
	sbc  d                                           ; $436c: $9a
	sbc  b                                           ; $436d: $98
	sbc  c                                           ; $436e: $99
	ld   [hl], a                                     ; $436f: $77
	add  a                                           ; $4370: $87
	ld   [hl], a                                     ; $4371: $77
	ld   [hl], a                                     ; $4372: $77
	ld   [hl], a                                     ; $4373: $77
	ld   [hl], a                                     ; $4374: $77
	ld   a, c                                        ; $4375: $79
	adc  c                                           ; $4376: $89
	sbc  c                                           ; $4377: $99
	sbc  c                                           ; $4378: $99
	sbc  c                                           ; $4379: $99
	adc  c                                           ; $437a: $89
	adc  b                                           ; $437b: $88
	adc  b                                           ; $437c: $88
	add  a                                           ; $437d: $87
	ld   [hl], a                                     ; $437e: $77
	halt                                             ; $437f: $76
	ld   [hl], a                                     ; $4380: $77
	ld   a, b                                        ; $4381: $78
	sbc  b                                           ; $4382: $98
	sbc  b                                           ; $4383: $98
	adc  d                                           ; $4384: $8a
	sbc  c                                           ; $4385: $99
	adc  c                                           ; $4386: $89
	adc  b                                           ; $4387: $88
	adc  b                                           ; $4388: $88
	ld   [hl], a                                     ; $4389: $77
	ld   [hl], a                                     ; $438a: $77
	ld   [hl], a                                     ; $438b: $77
	ld   [hl], a                                     ; $438c: $77
	adc  b                                           ; $438d: $88
	sbc  b                                           ; $438e: $98
	sbc  c                                           ; $438f: $99
	adc  c                                           ; $4390: $89
	adc  c                                           ; $4391: $89
	adc  b                                           ; $4392: $88
	adc  b                                           ; $4393: $88
	ld   a, b                                        ; $4394: $78
	add  a                                           ; $4395: $87
	ld   [hl], a                                     ; $4396: $77
	ld   [hl], a                                     ; $4397: $77
	adc  b                                           ; $4398: $88
	adc  b                                           ; $4399: $88
	sbc  c                                           ; $439a: $99
	adc  c                                           ; $439b: $89
	sbc  c                                           ; $439c: $99
	add  a                                           ; $439d: $87
	adc  b                                           ; $439e: $88
	adc  b                                           ; $439f: $88
	adc  b                                           ; $43a0: $88
	adc  b                                           ; $43a1: $88
	add  a                                           ; $43a2: $87
	adc  b                                           ; $43a3: $88
	adc  c                                           ; $43a4: $89
	adc  c                                           ; $43a5: $89
	sbc  b                                           ; $43a6: $98
	adc  b                                           ; $43a7: $88
	add  a                                           ; $43a8: $87
	adc  b                                           ; $43a9: $88
	adc  b                                           ; $43aa: $88
	sbc  b                                           ; $43ab: $98
	adc  b                                           ; $43ac: $88
	adc  b                                           ; $43ad: $88
	ld   a, b                                        ; $43ae: $78
	adc  b                                           ; $43af: $88
	adc  c                                           ; $43b0: $89
	adc  b                                           ; $43b1: $88
	adc  b                                           ; $43b2: $88
	adc  b                                           ; $43b3: $88
	adc  b                                           ; $43b4: $88
	adc  b                                           ; $43b5: $88
	adc  b                                           ; $43b6: $88
	adc  b                                           ; $43b7: $88
	add  a                                           ; $43b8: $87
	adc  b                                           ; $43b9: $88
	adc  b                                           ; $43ba: $88
	sbc  b                                           ; $43bb: $98
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

Jump_0eb_4485:
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

jr_0eb_4540:
	adc  b                                           ; $4540: $88
	adc  b                                           ; $4541: $88

Call_0eb_4542:
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
	sbc  c                                           ; $4556: $99
	sbc  c                                           ; $4557: $99
	adc  b                                           ; $4558: $88
	ld   [hl], a                                     ; $4559: $77

Call_0eb_455a:
	sub  a                                           ; $455a: $97
	ld   l, b                                        ; $455b: $68
	ld   [hl], a                                     ; $455c: $77
	sbc  b                                           ; $455d: $98
	sbc  b                                           ; $455e: $98
	sbc  c                                           ; $455f: $99
	sbc  c                                           ; $4560: $99
	sbc  b                                           ; $4561: $98
	ld   [hl], a                                     ; $4562: $77
	ld   h, l                                        ; $4563: $65
	adc  b                                           ; $4564: $88
	ld   c, c                                        ; $4565: $49
	sub  [hl]                                        ; $4566: $96
	xor  e                                           ; $4567: $ab
	sbc  c                                           ; $4568: $99
	cp   d                                           ; $4569: $ba
	ld   a, b                                        ; $456a: $78
	add  [hl]                                        ; $456b: $86
	ld   d, [hl]                                     ; $456c: $56
	ld   h, e                                        ; $456d: $63
	ld   l, e                                        ; $456e: $6b
	ld   d, a                                        ; $456f: $57
	ret  c                                           ; $4570: $d8

	sbc  h                                           ; $4571: $9c
	and  a                                           ; $4572: $a7
	adc  d                                           ; $4573: $8a
	ld   h, [hl]                                     ; $4574: $66
	sbc  b                                           ; $4575: $98
	ld   d, a                                        ; $4576: $57
	add  l                                           ; $4577: $85
	ld   c, d                                        ; $4578: $4a
	or   e                                           ; $4579: $b3
	xor  l                                           ; $457a: $ad
	ld   e, c                                        ; $457b: $59
	ret                                              ; $457c: $c9


	ld   l, c                                        ; $457d: $69
	or   [hl]                                        ; $457e: $b6
	ld   a, d                                        ; $457f: $7a
	add  l                                           ; $4580: $85
	sub  a                                           ; $4581: $97
	inc  hl                                          ; $4582: $23
	ret  c                                           ; $4583: $d8

	ld   e, $c3                                      ; $4584: $1e $c3
	sbc  $86                                         ; $4586: $de $86
	ret                                              ; $4588: $c9


	jr   c, jr_0eb_4540                              ; $4589: $38 $b5

	ld   e, d                                        ; $458b: $5a
	ld   h, d                                        ; $458c: $62
	ld   a, $91                                      ; $458d: $3e $91
	cp   $2c                                         ; $458f: $fe $2c
	rst  $30                                         ; $4591: $f7
	ld   c, l                                        ; $4592: $4d
	sub  e                                           ; $4593: $93
	sbc  h                                           ; $4594: $9c
	ld   h, l                                        ; $4595: $65
	and  [hl]                                        ; $4596: $a6
	ld   de, $1fdc                                   ; $4597: $11 $dc $1f
	pop  af                                          ; $459a: $f1
	cp   a                                           ; $459b: $bf
	ld   [hl], d                                     ; $459c: $72
	reti                                             ; $459d: $d9


	rlca                                             ; $459e: $07
	or   $4c                                         ; $459f: $f6 $4c
	ld   [hl], c                                     ; $45a1: $71
	rla                                              ; $45a2: $17
	pop  af                                          ; $45a3: $f1
	ccf                                              ; $45a4: $3f
	ld   [hl], e                                     ; $45a5: $73
	cp   $18                                         ; $45a6: $fe $18
	ldh  [c], a                                      ; $45a8: $e2
	ccf                                              ; $45a9: $3f
	or   d                                           ; $45aa: $b2
	xor  d                                           ; $45ab: $aa
	ld   de, $811f                                   ; $45ac: $11 $1f $81
	rst  $38                                         ; $45af: $ff

jr_0eb_45b0:
	rra                                              ; $45b0: $1f
	pop  af                                          ; $45b1: $f1
	ld   e, $61                                      ; $45b2: $1e $61
	rst  JumpTable                                         ; $45b4: $df
	ld   d, a                                        ; $45b5: $57
	call nz, $af11                                   ; $45b6: $c4 $11 $af
	jr   jr_0eb_45b0                                 ; $45b9: $18 $f5

	ccf                                              ; $45bb: $3f
	and  c                                           ; $45bc: $a1
	ld   a, l                                        ; $45bd: $7d
	ld   d, $fd                                      ; $45be: $16 $fd
	ld   c, d                                        ; $45c0: $4a
	add  c                                           ; $45c1: $81
	ld   de, $1ffb                                   ; $45c2: $11 $fb $1f
	pop  af                                          ; $45c5: $f1
	cp   a                                           ; $45c6: $bf
	ld   de, $3db8                                   ; $45c7: $11 $b8 $3d
	ld   hl, sp+$69                                  ; $45ca: $f8 $69
	ld   sp, $f514                                   ; $45cc: $31 $14 $f5
	cpl                                              ; $45cf: $2f
	pop  de                                          ; $45d0: $d1
	call c, $e811                                    ; $45d1: $dc $11 $e8
	adc  a                                           ; $45d4: $8f
	push af                                          ; $45d5: $f5
	ld   b, [hl]                                     ; $45d6: $46
	ld   de, $f11e                                   ; $45d7: $11 $1e $f1
	rst  $28                                         ; $45da: $ef
	ld   de, $16b6                                   ; $45db: $11 $b6 $16
	ld   a, [$c1df]                                  ; $45de: $fa $df $c1
	inc  sp                                          ; $45e1: $33
	ld   de, $f11f                                   ; $45e2: $11 $1f $f1
	rst  $38                                         ; $45e5: $ff
	ld   de, $1cb5                                   ; $45e6: $11 $b5 $1c
	db   $fc                                         ; $45e9: $fc
	rst  JumpTable                                         ; $45ea: $df
	ld   h, c                                        ; $45eb: $61
	inc  sp                                          ; $45ec: $33
	ld   hl, $f13f                                   ; $45ed: $21 $3f $f1
	cp   $11                                         ; $45f0: $fe $11
	sub  $1f                                         ; $45f2: $d6 $1f
	ld   a, [$21ac]                                  ; $45f4: $fa $ac $21
	ld   d, l                                        ; $45f7: $55
	ld   b, c                                        ; $45f8: $41
	rst  JumpTable                                         ; $45f9: $df
	ld   sp, $17f2                                   ; $45fa: $31 $f2 $17
	and  $7f                                         ; $45fd: $e6 $7f
	push hl                                          ; $45ff: $e5
	ld   a, c                                        ; $4600: $79
	ld   [de], a                                     ; $4601: $12
	add  a                                           ; $4602: $87
	ld   hl, $1aff                                   ; $4603: $21 $ff $1a
	pop  af                                          ; $4606: $f1
	ld   e, $f6                                      ; $4607: $1e $f6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4609: $cf
	add  d                                           ; $460a: $82
	sub  [hl]                                        ; $460b: $96
	add  hl, de                                      ; $460c: $19
	sub  [hl]                                        ; $460d: $96
	dec  d                                           ; $460e: $15
	rst  $30                                         ; $460f: $f7
	rra                                              ; $4610: $1f
	sub  c                                           ; $4611: $91
	ld   a, a                                        ; $4612: $7f
	push bc                                          ; $4613: $c5
	db   $ed                                         ; $4614: $ed
	dec  [hl]                                        ; $4615: $35
	or   e                                           ; $4616: $b3
	ld   c, c                                        ; $4617: $49
	ld   h, e                                        ; $4618: $63
	rra                                              ; $4619: $1f
	pop  af                                          ; $461a: $f1
	ld   c, a                                        ; $461b: $4f
	ld   de, $77bf                                   ; $461c: $11 $bf $77
	ld   a, [$9238]                                  ; $461f: $fa $38 $92
	ld   [hl], a                                     ; $4622: $77
	ld   d, c                                        ; $4623: $51
	ld   e, a                                        ; $4624: $5f
	sub  c                                           ; $4625: $91
	ld   sp, hl                                      ; $4626: $f9
	ld   d, $fd                                      ; $4627: $16 $fd
	ld   l, l                                        ; $4629: $6d
	call nc, Call_0eb_455a                           ; $462a: $d4 $5a $45
	sub  [hl]                                        ; $462d: $96
	ld   hl, $17ff                                   ; $462e: $21 $ff $17
	pop  af                                          ; $4631: $f1
	inc  e                                           ; $4632: $1c
	rst  $30                                         ; $4633: $f7
	sbc  a                                           ; $4634: $9f
	ld   [hl], d                                     ; $4635: $72
	sub  a                                           ; $4636: $97
	jr   c, @+$76                                    ; $4637: $38 $74

	dec  e                                           ; $4639: $1d
	pop  af                                          ; $463a: $f1
	rra                                              ; $463b: $1f
	ld   b, c                                        ; $463c: $41
	sbc  a                                           ; $463d: $9f
	or   [hl]                                        ; $463e: $b6
	jp   c, $a426                                    ; $463f: $da $26 $a4

	ld   [hl], a                                     ; $4642: $77
	ld   b, c                                        ; $4643: $41
	ld   c, a                                        ; $4644: $4f
	sub  c                                           ; $4645: $91
	ld   sp, hl                                      ; $4646: $f9
	ld   d, $fe                                      ; $4647: $16 $fe
	ld   l, e                                        ; $4649: $6b
	or   h                                           ; $464a: $b4
	ld   c, d                                        ; $464b: $4a
	ld   d, [hl]                                     ; $464c: $56
	add  l                                           ; $464d: $85
	ld   de, $1cff                                   ; $464e: $11 $ff $1c
	pop  de                                          ; $4651: $d1
	ld   c, [hl]                                     ; $4652: $4e
	rst  $30                                         ; $4653: $f7
	sbc  h                                           ; $4654: $9c
	ld   d, e                                        ; $4655: $53
	and  a                                           ; $4656: $a7
	ld   e, b                                        ; $4657: $58
	ld   b, c                                        ; $4658: $41
	rra                                              ; $4659: $1f
	pop  af                                          ; $465a: $f1
	adc  l                                           ; $465b: $8d
	inc  d                                           ; $465c: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $465d: $cf
	adc  c                                           ; $465e: $89

jr_0eb_465f:
	add  $3a                                         ; $465f: $c6 $3a
	add  l                                           ; $4661: $85
	sub  l                                           ; $4662: $95
	ld   de, $15ff                                   ; $4663: $11 $ff $15
	pop  af                                          ; $4666: $f1
	dec  sp                                          ; $4667: $3b
	ld   sp, hl                                      ; $4668: $f9
	adc  l                                           ; $4669: $8d
	ld   h, d                                        ; $466a: $62
	sbc  c                                           ; $466b: $99
	ld   e, c                                        ; $466c: $59
	ld   b, c                                        ; $466d: $41
	rra                                              ; $466e: $1f
	pop  af                                          ; $466f: $f1
	ccf                                              ; $4670: $3f
	inc  hl                                          ; $4671: $23
	cp   a                                           ; $4672: $bf
	sbc  b                                           ; $4673: $98
	add  $29                                         ; $4674: $c6 $29
	sub  l                                           ; $4676: $95
	sub  h                                           ; $4677: $94
	ld   de, $14ff                                   ; $4678: $11 $ff $14
	pop  hl                                          ; $467b: $e1
	dec  hl                                          ; $467c: $2b
	ld   sp, hl                                      ; $467d: $f9
	adc  h                                           ; $467e: $8c
	ld   h, d                                        ; $467f: $62
	adc  d                                           ; $4680: $8a
	ld   e, b                                        ; $4681: $58
	ld   b, c                                        ; $4682: $41
	rra                                              ; $4683: $1f
	pop  af                                          ; $4684: $f1
	dec  a                                           ; $4685: $3d
	ld   b, c                                        ; $4686: $41
	cp   a                                           ; $4687: $bf
	ld   h, a                                        ; $4688: $67
	db   $e4                                         ; $4689: $e4

Call_0eb_468a:
	dec  de                                          ; $468a: $1b
	sub  [hl]                                        ; $468b: $96
	sub  d                                           ; $468c: $92
	ld   de, $12ff                                   ; $468d: $11 $ff $12
	push hl                                          ; $4690: $e5
	ld   e, $f3                                      ; $4691: $1e $f3
	xor  l                                           ; $4693: $ad
	inc  hl                                          ; $4694: $23
	xor  b                                           ; $4695: $a8
	sbc  c                                           ; $4696: $99
	ld   de, $f11f                                   ; $4697: $11 $1f $f1

Jump_0eb_469a:
	ld   a, $41                                      ; $469a: $3e $41

jr_0eb_469c:
	rst  $38                                         ; $469c: $ff
	inc  l                                           ; $469d: $2c
	pop  bc                                          ; $469e: $c1
	ld   e, d                                        ; $469f: $5a
	ld   a, d                                        ; $46a0: $7a
	ld   h, c                                        ; $46a1: $61
	ld   de, $14ff                                   ; $46a2: $11 $ff $14
	ldh  [c], a                                      ; $46a5: $e2
	rra                                              ; $46a6: $1f
	di                                               ; $46a7: $f3
	jp   z, $a715                                    ; $46a8: $ca $15 $a7

	and  a                                           ; $46ab: $a7
	ld   de, $f11f                                   ; $46ac: $11 $1f $f1
	ld   l, [hl]                                     ; $46af: $6e
	ld   de, $3dff                                   ; $46b0: $11 $ff $3d
	sub  c                                           ; $46b3: $91
	ld   l, c                                        ; $46b4: $69
	ld   a, d                                        ; $46b5: $7a
	ld   d, c                                        ; $46b6: $51
	inc  d                                           ; $46b7: $14
	rst  $38                                         ; $46b8: $ff
	jr   jr_0eb_469c                                 ; $46b9: $18 $e1

	cpl                                              ; $46bb: $2f
	db   $e3                                         ; $46bc: $e3
	and  $17                                         ; $46bd: $e6 $17
	adc  b                                           ; $46bf: $88
	or   h                                           ; $46c0: $b4
	ld   de, $81af                                   ; $46c1: $11 $af $81
	rl   [hl]                                        ; $46c4: $cb $16
	ei                                               ; $46c6: $fb
	ld   e, [hl]                                     ; $46c7: $5e
	ld   b, d                                        ; $46c8: $42
	sbc  c                                           ; $46c9: $99
	sbc  d                                           ; $46ca: $9a
	ld   sp, $f41c                                   ; $46cb: $31 $1c $f4
	inc  e                                           ; $46ce: $1c
	and  c                                           ; $46cf: $a1
	adc  a                                           ; $46d0: $8f
	sub  a                                           ; $46d1: $97
	db   $d3                                         ; $46d2: $d3
	jr   c, jr_0eb_465f                              ; $46d3: $38 $8a

	sub  d                                           ; $46d5: $92
	ld   de, $11ff                                   ; $46d6: $11 $ff $11
	add  sp, $1b                                     ; $46d9: $e8 $1b
	rst  $30                                         ; $46db: $f7
	adc  h                                           ; $46dc: $8c
	inc  h                                           ; $46dd: $24
	sub  a                                           ; $46de: $97
	xor  c                                           ; $46df: $a9
	ld   [hl+], a                                    ; $46e0: $22
	rra                                              ; $46e1: $1f
	pop  af                                          ; $46e2: $f1
	ld   e, $71                                      ; $46e3: $1e $71
	rst  $28                                         ; $46e5: $ef
	ld   l, c                                        ; $46e6: $69
	pop  bc                                          ; $46e7: $c1
	ld   e, d                                        ; $46e8: $5a
	ld   a, d                                        ; $46e9: $7a
	sub  d                                           ; $46ea: $92
	ld   de, $11ff                                   ; $46eb: $11 $ff $11
	and  $1f                                         ; $46ee: $e6 $1f
	or   $aa                                         ; $46f0: $f6 $aa
	dec  d                                           ; $46f2: $15
	sub  a                                           ; $46f3: $97
	xor  b                                           ; $46f4: $a8
	ld   hl, $f11f                                   ; $46f5: $21 $1f $f1
	rra                                              ; $46f8: $1f
	ld   b, c                                        ; $46f9: $41
	rst  $38                                         ; $46fa: $ff
	ld   e, e                                        ; $46fb: $5b
	and  c                                           ; $46fc: $a1
	ld   l, c                                        ; $46fd: $69
	ld   a, e                                        ; $46fe: $7b
	add  d                                           ; $46ff: $82
	ld   bc, $11ff                                   ; $4700: $01 $ff $11
	ldh  a, [c]                                      ; $4703: $f2
	rra                                              ; $4704: $1f
	push af                                          ; $4705: $f5
	jp   z, $8726                                    ; $4706: $ca $26 $87

	or   a                                           ; $4709: $b7
	ld   de, $f11f                                   ; $470a: $11 $1f $f1
	rra                                              ; $470d: $1f
	ld   de, $5bff                                   ; $470e: $11 $ff $5b
	sub  d                                           ; $4711: $92
	ld   l, b                                        ; $4712: $68
	adc  e                                           ; $4713: $8b
	ld   h, c                                        ; $4714: $61
	ld   de, $15ff                                   ; $4715: $11 $ff $15
	pop  hl                                          ; $4718: $e1
	rra                                              ; $4719: $1f
	push af                                          ; $471a: $f5
	rst  $10                                         ; $471b: $d7
	ld   [hl], $79                                   ; $471c: $36 $79
	and  l                                           ; $471e: $a5

Jump_0eb_471f:
	ld   hl, $f13f                                   ; $471f: $21 $3f $f1
	xor  h                                           ; $4722: $ac
	inc  d                                           ; $4723: $14
	db   $fd                                         ; $4724: $fd
	ld   l, h                                        ; $4725: $6c
	ld   [hl], h                                     ; $4726: $74
	ld   b, a                                        ; $4727: $47
	xor  d                                           ; $4728: $aa
	ld   sp, $f61a                                   ; $4729: $31 $1a $f6
	ld   e, $71                                      ; $472c: $1e $71
	cp   a                                           ; $472e: $bf
	sbc  b                                           ; $472f: $98
	or   l                                           ; $4730: $b5
	ld   d, l                                        ; $4731: $55
	adc  d                                           ; $4732: $8a
	add  d                                           ; $4733: $82
	ld   hl, $11ff                                   ; $4734: $21 $ff $11
	di                                               ; $4737: $f3
	rra                                              ; $4738: $1f
	rst  $30                                         ; $4739: $f7
	cp   d                                           ; $473a: $ba
	ld   d, e                                        ; $473b: $53
	ld   c, b                                        ; $473c: $48
	and  a                                           ; $473d: $a7
	ld   de, $f11f                                   ; $473e: $11 $1f $f1
	ld   l, [hl]                                     ; $4741: $6e
	ld   de, $6cff                                   ; $4742: $11 $ff $6c
	sub  l                                           ; $4745: $95
	ld   h, $9a                                      ; $4746: $26 $9a
	ld   d, d                                        ; $4748: $52
	dec  d                                           ; $4749: $15
	db   $fc                                         ; $474a: $fc
	ld   e, $a1                                      ; $474b: $1e $a1
	ld   a, a                                        ; $474d: $7f
	cp   b                                           ; $474e: $b8
	ret  z                                           ; $474f: $c8

	ld   b, d                                        ; $4750: $42
	ld   a, d                                        ; $4751: $7a
	sub  e                                           ; $4752: $93
	ld   hl, $11ff                                   ; $4753: $21 $ff $11
	di                                               ; $4756: $f3
	rra                                              ; $4757: $1f
	rst  $30                                         ; $4758: $f7
	cp   d                                           ; $4759: $ba
	ld   h, d                                        ; $475a: $62
	add  hl, sp                                      ; $475b: $39
	sub  [hl]                                        ; $475c: $96
	ld   hl, $f12f                                   ; $475d: $21 $2f $f1
	xor  l                                           ; $4760: $ad
	inc  de                                          ; $4761: $13
	db   $fd                                         ; $4762: $fd
	ld   a, [hl]                                     ; $4763: $7e
	sub  e                                           ; $4764: $93
	rla                                              ; $4765: $17
	sbc  b                                           ; $4766: $98
	ld   b, d                                        ; $4767: $42
	rra                                              ; $4768: $1f
	pop  af                                          ; $4769: $f1
	rra                                              ; $476a: $1f
	ld   hl, $7bff                                   ; $476b: $21 $ff $7b
	sub  $14                                         ; $476e: $d6 $14
	sub  a                                           ; $4770: $97
	ld   h, h                                        ; $4771: $64
	inc  d                                           ; $4772: $14
	rst  $38                                         ; $4773: $ff
	dec  e                                           ; $4774: $1d
	or   c                                           ; $4775: $b1
	ld   l, a                                        ; $4776: $6f
	ret  z                                           ; $4777: $c8

	jp   hl                                          ; $4778: $e9


	ld   hl, $7689                                   ; $4779: $21 $89 $76
	ld   de, $14ff                                   ; $477c: $11 $ff $14
	pop  af                                          ; $477f: $f1
	rra                                              ; $4780: $1f
	rst  $30                                         ; $4781: $f7
	db   $ec                                         ; $4782: $ec
	ld   d, c                                        ; $4783: $51
	ld   c, c                                        ; $4784: $49
	halt                                             ; $4785: $76
	ld   sp, $11ff                                   ; $4786: $31 $ff $11
	ldh  a, [c]                                      ; $4789: $f2
	rra                                              ; $478a: $1f
	rst  $30                                         ; $478b: $f7
	cp   l                                           ; $478c: $bd
	ld   [hl], c                                     ; $478d: $71
	add  hl, de                                      ; $478e: $19
	add  [hl]                                        ; $478f: $86
	ld   b, c                                        ; $4790: $41
	ld   a, a                                        ; $4791: $7f
	add  c                                           ; $4792: $81
	ld   hl, sp+$19                                  ; $4793: $f8 $19
	ld   a, [$73af]                                  ; $4795: $fa $af $73
	ld   d, $96                                      ; $4798: $16 $96
	ld   b, c                                        ; $479a: $41
	ld   e, a                                        ; $479b: $5f
	pop  af                                          ; $479c: $f1
	db   $fc                                         ; $479d: $fc
	ld   d, $fd                                      ; $479e: $16 $fd
	sbc  a                                           ; $47a0: $9f
	ld   [hl], e                                     ; $47a1: $73
	inc  d                                           ; $47a2: $14
	add  a                                           ; $47a3: $87
	ld   d, c                                        ; $47a4: $51
	ld   l, a                                        ; $47a5: $6f
	pop  de                                          ; $47a6: $d1
	ei                                               ; $47a7: $fb
	ld   d, $fd                                      ; $47a8: $16 $fd
	sbc  a                                           ; $47aa: $9f
	sub  d                                           ; $47ab: $92
	dec  d                                           ; $47ac: $15
	add  l                                           ; $47ad: $85
	ld   d, c                                        ; $47ae: $51
	adc  a                                           ; $47af: $8f
	or   c                                           ; $47b0: $b1
	rst  $30                                         ; $47b1: $f7
	add  hl, de                                      ; $47b2: $19
	db   $fd                                         ; $47b3: $fd
	cp   a                                           ; $47b4: $bf
	sub  d                                           ; $47b5: $92
	ld   d, $84                                      ; $47b6: $16 $84
	ld   b, c                                        ; $47b8: $41
	sbc  a                                           ; $47b9: $9f
	pop  bc                                          ; $47ba: $c1
	or   $19                                         ; $47bb: $f6 $19
	db   $fc                                         ; $47bd: $fc
	cp   a                                           ; $47be: $bf
	sub  e                                           ; $47bf: $93
	dec  d                                           ; $47c0: $15
	ld   [hl], e                                     ; $47c1: $73
	ld   sp, $51ff                                   ; $47c2: $31 $ff $51
	pop  af                                          ; $47c5: $f1
	inc  e                                           ; $47c6: $1c
	db   $fc                                         ; $47c7: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47c8: $cf
	and  c                                           ; $47c9: $a1
	dec  d                                           ; $47ca: $15
	ld   d, d                                        ; $47cb: $52
	ld   hl, $13ff                                   ; $47cc: $21 $ff $13
	pop  af                                          ; $47cf: $f1
	rra                                              ; $47d0: $1f
	ei                                               ; $47d1: $fb
	rst  $28                                         ; $47d2: $ef
	and  c                                           ; $47d3: $a1
	rla                                              ; $47d4: $17
	ld   hl, $ff15                                   ; $47d5: $21 $15 $ff
	dec  e                                           ; $47d8: $1d
	pop  de                                          ; $47d9: $d1
	rra                                              ; $47da: $1f
	ld   sp, hl                                      ; $47db: $f9
	rst  $38                                         ; $47dc: $ff
	ld   h, c                                        ; $47dd: $61
	ld   d, $11                                      ; $47de: $16 $11
	cpl                                              ; $47e0: $2f
	ld   a, [$114f]                                  ; $47e1: $fa $4f $11
	ld   a, a                                        ; $47e4: $7f
	db   $db                                         ; $47e5: $db
	rst  $38                                         ; $47e6: $ff
	ld   de, $1231                                   ; $47e7: $11 $31 $12
	cp   a                                           ; $47ea: $bf
	or   $c8                                         ; $47eb: $f6 $c8
	ld   de, $8ffe                                   ; $47ed: $11 $fe $8f
	db   $f4                                         ; $47f0: $f4
	ld   de, $1e11                                   ; $47f1: $11 $11 $1e
	rst  $38                                         ; $47f4: $ff
	call c, $2c71                                    ; $47f5: $dc $71 $2c
	sbc  e                                           ; $47f8: $9b
	rst  $38                                         ; $47f9: $ff
	ld   b, c                                        ; $47fa: $41
	ld   de, $ff1a                                   ; $47fb: $11 $1a $ff
	rst  $38                                         ; $47fe: $ff
	and  e                                           ; $47ff: $a3
	ld   e, b                                        ; $4800: $58
	ld   l, d                                        ; $4801: $6a
	bit  2, d                                        ; $4802: $cb $52
	ld   de, $9fbf                                   ; $4804: $11 $bf $9f
	ld   sp, hl                                      ; $4807: $f9
	ld   a, l                                        ; $4808: $7d
	add  e                                           ; $4809: $83
	sbc  e                                           ; $480a: $9b
	add  h                                           ; $480b: $84
	ld   b, c                                        ; $480c: $41
	dec  d                                           ; $480d: $15
	db   $fd                                         ; $480e: $fd
	cp   a                                           ; $480f: $bf
	rst  $20                                         ; $4810: $e7
	ld   a, e                                        ; $4811: $7b
	ld   [hl], a                                     ; $4812: $77
	xor  d                                           ; $4813: $aa
	ld   h, d                                        ; $4814: $62
	ld   de, $de2d                                   ; $4815: $11 $2d $de
	db   $fc                                         ; $4818: $fc
	xor  e                                           ; $4819: $ab
	sub  [hl]                                        ; $481a: $96
	ld   a, c                                        ; $481b: $79
	halt                                             ; $481c: $76
	ld   b, c                                        ; $481d: $41
	ld   [de], a                                     ; $481e: $12
	db   $eb                                         ; $481f: $eb
	cp   a                                           ; $4820: $bf
	db   $eb                                         ; $4821: $eb
	xor  e                                           ; $4822: $ab
	add  a                                           ; $4823: $87
	halt                                             ; $4824: $76
	ld   b, c                                        ; $4825: $41
	ld   de, $ce5e                                   ; $4826: $11 $5e $ce
	cp   $ba                                         ; $4829: $fe $ba
	and  a                                           ; $482b: $a7
	ld   [hl], a                                     ; $482c: $77
	ld   h, d                                        ; $482d: $62
	ld   de, $cc1a                                   ; $482e: $11 $1a $cc
	rst  $38                                         ; $4831: $ff
	ld   [$56c8], a                                  ; $4832: $ea $c8 $56
	ld   d, e                                        ; $4835: $53
	ld   de, $ca19                                   ; $4836: $11 $19 $ca
	rst  $38                                         ; $4839: $ff
	set  5, d                                        ; $483a: $cb $ea
	ld   d, a                                        ; $483c: $57
	ld   sp, $3811                                   ; $483d: $31 $11 $38
	xor  a                                           ; $4840: $af
	db   $fc                                         ; $4841: $fc
	call c, Call_0eb_76b7                            ; $4842: $dc $b7 $76
	ld   [hl+], a                                    ; $4845: $22
	ld   [de], a                                     ; $4846: $12
	ld   a, [hl-]                                    ; $4847: $3a
	xor  e                                           ; $4848: $ab
	rst  $38                                         ; $4849: $ff
	db   $ed                                         ; $484a: $ed
	rst  ToBoot                                         ; $484b: $c7
	ld   d, h                                        ; $484c: $54
	ld   de, $7913                                   ; $484d: $11 $13 $79
	xor  [hl]                                        ; $4850: $ae
	xor  $ed                                         ; $4851: $ee $ed
	or   [hl]                                        ; $4853: $b6
	ld   [hl], d                                     ; $4854: $72
	ld   de, $7a12                                   ; $4855: $11 $12 $7a
	xor  a                                           ; $4858: $af
	cp   $de                                         ; $4859: $fe $de
	and  a                                           ; $485b: $a7
	ld   d, c                                        ; $485c: $51
	ld   de, $8914                                   ; $485d: $11 $14 $89
	cp   a                                           ; $4860: $bf
	rst  $38                                         ; $4861: $ff
	xor  $a6                                         ; $4862: $ee $a6
	ld   sp, $2511                                   ; $4864: $31 $11 $25
	adc  d                                           ; $4867: $8a
	rst  $28                                         ; $4868: $ef
	rst  $38                                         ; $4869: $ff
	db   $fc                                         ; $486a: $fc
	add  [hl]                                        ; $486b: $86
	ld   hl, $3511                                   ; $486c: $21 $11 $35
	ld   a, h                                        ; $486f: $7c
	rst  $28                                         ; $4870: $ef
	rst  $38                                         ; $4871: $ff
	ld   [$1194], a                                  ; $4872: $ea $94 $11
	ld   de, $9c47                                   ; $4875: $11 $47 $9c
	sbc  $ff                                         ; $4878: $de $ff
	cp   e                                           ; $487a: $bb
	sub  h                                           ; $487b: $94
	ld   hl, $4611                                   ; $487c: $21 $11 $46
	adc  h                                           ; $487f: $8c
	rst  JumpTable                                         ; $4880: $df
	rst  $38                                         ; $4881: $ff
	cp   d                                           ; $4882: $ba
	ld   [hl], l                                     ; $4883: $75
	ld   b, c                                        ; $4884: $41
	ld   de, $8c45                                   ; $4885: $11 $45 $8c
	sbc  $ef                                         ; $4888: $de $ef
	res  2, h                                        ; $488a: $cb $94
	ld   [hl-], a                                    ; $488c: $32
	ld   hl, $7b35                                   ; $488d: $21 $35 $7b
	adc  $ee                                         ; $4890: $ce $ee
	jp   z, Jump_0eb_4485                            ; $4892: $ca $85 $44

	ld   [hl+], a                                    ; $4895: $22
	ld   b, l                                        ; $4896: $45
	ld   l, d                                        ; $4897: $6a
	call z, $dbde                                    ; $4898: $cc $de $db
	sub  [hl]                                        ; $489b: $96
	ld   d, h                                        ; $489c: $54
	ld   b, e                                        ; $489d: $43
	ld   b, l                                        ; $489e: $45
	ld   l, b                                        ; $489f: $68
	xor  l                                           ; $48a0: $ad
	call $87db                                       ; $48a1: $cd $db $87
	ld   [hl], l                                     ; $48a4: $75
	ld   b, l                                        ; $48a5: $45
	ld   d, l                                        ; $48a6: $55
	ld   d, a                                        ; $48a7: $57
	adc  d                                           ; $48a8: $8a
	cp   h                                           ; $48a9: $bc
	cp   d                                           ; $48aa: $ba
	xor  c                                           ; $48ab: $a9
	halt                                             ; $48ac: $76
	ld   d, [hl]                                     ; $48ad: $56
	ld   d, [hl]                                     ; $48ae: $56
	ld   h, a                                        ; $48af: $67
	adc  b                                           ; $48b0: $88
	sbc  d                                           ; $48b1: $9a
	cp   d                                           ; $48b2: $ba
	xor  d                                           ; $48b3: $aa
	add  a                                           ; $48b4: $87
	halt                                             ; $48b5: $76
	ld   d, [hl]                                     ; $48b6: $56
	ld   [hl], a                                     ; $48b7: $77
	adc  c                                           ; $48b8: $89
	sbc  d                                           ; $48b9: $9a
	xor  d                                           ; $48ba: $aa
	sbc  c                                           ; $48bb: $99
	adc  b                                           ; $48bc: $88
	add  [hl]                                        ; $48bd: $86
	ld   [hl], a                                     ; $48be: $77
	ld   h, a                                        ; $48bf: $67
	ld   a, b                                        ; $48c0: $78
	adc  c                                           ; $48c1: $89
	sbc  c                                           ; $48c2: $99
	adc  c                                           ; $48c3: $89
	adc  b                                           ; $48c4: $88
	ld   [hl], a                                     ; $48c5: $77
	add  a                                           ; $48c6: $87
	ld   [hl], a                                     ; $48c7: $77
	adc  b                                           ; $48c8: $88
	ld   a, b                                        ; $48c9: $78
	sbc  b                                           ; $48ca: $98
	adc  b                                           ; $48cb: $88
	adc  b                                           ; $48cc: $88
	adc  b                                           ; $48cd: $88
	adc  b                                           ; $48ce: $88
	ld   a, b                                        ; $48cf: $78
	adc  b                                           ; $48d0: $88
	adc  b                                           ; $48d1: $88
	sbc  b                                           ; $48d2: $98
	adc  b                                           ; $48d3: $88
	adc  b                                           ; $48d4: $88
	adc  b                                           ; $48d5: $88
	add  a                                           ; $48d6: $87
	adc  b                                           ; $48d7: $88
	adc  b                                           ; $48d8: $88
	adc  b                                           ; $48d9: $88
	adc  b                                           ; $48da: $88
	adc  c                                           ; $48db: $89
	adc  b                                           ; $48dc: $88
	adc  b                                           ; $48dd: $88
	add  a                                           ; $48de: $87
	adc  b                                           ; $48df: $88
	adc  c                                           ; $48e0: $89
	sbc  b                                           ; $48e1: $98
	add  a                                           ; $48e2: $87
	adc  c                                           ; $48e3: $89
	adc  c                                           ; $48e4: $89
	sbc  b                                           ; $48e5: $98
	adc  b                                           ; $48e6: $88
	adc  b                                           ; $48e7: $88
	ld   a, b                                        ; $48e8: $78
	adc  b                                           ; $48e9: $88
	adc  b                                           ; $48ea: $88
	add  a                                           ; $48eb: $87
	adc  c                                           ; $48ec: $89
	ld   a, b                                        ; $48ed: $78
	sbc  b                                           ; $48ee: $98
	adc  c                                           ; $48ef: $89
	ld   a, b                                        ; $48f0: $78
	sbc  b                                           ; $48f1: $98
	sbc  b                                           ; $48f2: $98
	adc  b                                           ; $48f3: $88
	adc  b                                           ; $48f4: $88
	sub  a                                           ; $48f5: $97
	ld   a, c                                        ; $48f6: $79
	adc  b                                           ; $48f7: $88
	adc  b                                           ; $48f8: $88
	ld   a, c                                        ; $48f9: $79
	adc  b                                           ; $48fa: $88
	sbc  b                                           ; $48fb: $98
	adc  c                                           ; $48fc: $89
	adc  c                                           ; $48fd: $89
	add  a                                           ; $48fe: $87
	adc  b                                           ; $48ff: $88
	adc  b                                           ; $4900: $88
	sbc  c                                           ; $4901: $99
	sbc  c                                           ; $4902: $99
	adc  c                                           ; $4903: $89
	adc  b                                           ; $4904: $88
	sbc  b                                           ; $4905: $98
	adc  b                                           ; $4906: $88
	adc  b                                           ; $4907: $88
	adc  b                                           ; $4908: $88
	adc  b                                           ; $4909: $88
	sbc  c                                           ; $490a: $99
	sbc  c                                           ; $490b: $99
	adc  b                                           ; $490c: $88
	adc  b                                           ; $490d: $88
	adc  b                                           ; $490e: $88
	adc  b                                           ; $490f: $88
	adc  b                                           ; $4910: $88
	adc  b                                           ; $4911: $88
	adc  b                                           ; $4912: $88
	adc  b                                           ; $4913: $88
	sbc  b                                           ; $4914: $98
	ld   a, b                                        ; $4915: $78
	add  a                                           ; $4916: $87
	adc  b                                           ; $4917: $88
	sbc  b                                           ; $4918: $98
	adc  c                                           ; $4919: $89
	adc  b                                           ; $491a: $88
	sbc  c                                           ; $491b: $99
	adc  b                                           ; $491c: $88
	adc  b                                           ; $491d: $88
	adc  b                                           ; $491e: $88
	adc  b                                           ; $491f: $88
	adc  b                                           ; $4920: $88
	adc  b                                           ; $4921: $88
	sbc  c                                           ; $4922: $99
	sbc  b                                           ; $4923: $98
	adc  b                                           ; $4924: $88
	add  a                                           ; $4925: $87
	adc  b                                           ; $4926: $88
	adc  b                                           ; $4927: $88
	adc  b                                           ; $4928: $88
	adc  b                                           ; $4929: $88
	adc  c                                           ; $492a: $89
	adc  c                                           ; $492b: $89
	sbc  b                                           ; $492c: $98
	sub  a                                           ; $492d: $97
	ld   a, b                                        ; $492e: $78
	adc  b                                           ; $492f: $88
	adc  c                                           ; $4930: $89
	adc  b                                           ; $4931: $88
	adc  b                                           ; $4932: $88
	adc  b                                           ; $4933: $88
	adc  b                                           ; $4934: $88
	adc  b                                           ; $4935: $88
	adc  b                                           ; $4936: $88
	add  a                                           ; $4937: $87
	adc  b                                           ; $4938: $88
	adc  b                                           ; $4939: $88
	sbc  b                                           ; $493a: $98
	adc  b                                           ; $493b: $88
	adc  b                                           ; $493c: $88
	adc  b                                           ; $493d: $88
	adc  b                                           ; $493e: $88
	adc  b                                           ; $493f: $88
	adc  b                                           ; $4940: $88
	sbc  b                                           ; $4941: $98
	adc  b                                           ; $4942: $88
	adc  b                                           ; $4943: $88
	adc  b                                           ; $4944: $88
	sbc  b                                           ; $4945: $98
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
	sbc  b                                           ; $498d: $98
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
	adc  c                                           ; $499b: $89
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
	add  a                                           ; $49d2: $87
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
	adc  c                                           ; $4a09: $89
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
	ld   a, b                                        ; $4a21: $78
	adc  b                                           ; $4a22: $88
	adc  b                                           ; $4a23: $88
	adc  b                                           ; $4a24: $88
	adc  b                                           ; $4a25: $88
	adc  b                                           ; $4a26: $88
	add  a                                           ; $4a27: $87
	adc  b                                           ; $4a28: $88
	adc  c                                           ; $4a29: $89
	sub  a                                           ; $4a2a: $97
	ld   a, b                                        ; $4a2b: $78
	sbc  b                                           ; $4a2c: $98
	adc  b                                           ; $4a2d: $88
	adc  c                                           ; $4a2e: $89
	add  a                                           ; $4a2f: $87
	ld   [hl], a                                     ; $4a30: $77
	ld   a, c                                        ; $4a31: $79
	add  a                                           ; $4a32: $87
	adc  b                                           ; $4a33: $88
	adc  b                                           ; $4a34: $88
	adc  b                                           ; $4a35: $88
	adc  b                                           ; $4a36: $88
	adc  b                                           ; $4a37: $88
	adc  b                                           ; $4a38: $88
	adc  c                                           ; $4a39: $89
	add  a                                           ; $4a3a: $87
	ld   a, b                                        ; $4a3b: $78
	adc  b                                           ; $4a3c: $88
	adc  b                                           ; $4a3d: $88
	ld   a, b                                        ; $4a3e: $78
	add  a                                           ; $4a3f: $87
	adc  b                                           ; $4a40: $88
	adc  b                                           ; $4a41: $88
	sbc  b                                           ; $4a42: $98
	adc  c                                           ; $4a43: $89
	adc  b                                           ; $4a44: $88
	adc  b                                           ; $4a45: $88
	add  a                                           ; $4a46: $87
	add  a                                           ; $4a47: $87
	add  a                                           ; $4a48: $87
	adc  b                                           ; $4a49: $88
	ld   a, b                                        ; $4a4a: $78
	adc  b                                           ; $4a4b: $88
	adc  b                                           ; $4a4c: $88
	adc  b                                           ; $4a4d: $88
	sbc  b                                           ; $4a4e: $98
	sub  a                                           ; $4a4f: $97
	ld   [hl], a                                     ; $4a50: $77
	ld   [hl], a                                     ; $4a51: $77
	ld   [hl], a                                     ; $4a52: $77
	adc  b                                           ; $4a53: $88
	adc  b                                           ; $4a54: $88
	sbc  c                                           ; $4a55: $99
	xor  d                                           ; $4a56: $aa
	sbc  c                                           ; $4a57: $99
	ld   [hl], a                                     ; $4a58: $77
	halt                                             ; $4a59: $76
	ld   h, a                                        ; $4a5a: $67
	halt                                             ; $4a5b: $76
	ld   [hl], a                                     ; $4a5c: $77
	sbc  c                                           ; $4a5d: $99
	sbc  e                                           ; $4a5e: $9b
	xor  d                                           ; $4a5f: $aa
	xor  b                                           ; $4a60: $a8
	add  a                                           ; $4a61: $87
	ld   [hl], l                                     ; $4a62: $75
	ld   d, [hl]                                     ; $4a63: $56
	ld   h, [hl]                                     ; $4a64: $66
	ld   l, b                                        ; $4a65: $68
	sbc  d                                           ; $4a66: $9a
	xor  e                                           ; $4a67: $ab
	res  5, c                                        ; $4a68: $cb $a9
	sub  a                                           ; $4a6a: $97
	ld   h, l                                        ; $4a6b: $65
	ld   b, l                                        ; $4a6c: $45
	ld   h, l                                        ; $4a6d: $65
	ld   h, a                                        ; $4a6e: $67
	sbc  d                                           ; $4a6f: $9a
	cp   h                                           ; $4a70: $bc
	call c, $8699                                    ; $4a71: $dc $99 $86
	ld   d, h                                        ; $4a74: $54
	inc  [hl]                                        ; $4a75: $34
	ld   d, h                                        ; $4a76: $54
	ld   e, b                                        ; $4a77: $58
	xor  h                                           ; $4a78: $ac
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a79: $cf
	db   $ed                                         ; $4a7a: $ed
	xor  b                                           ; $4a7b: $a8
	ld   [hl], l                                     ; $4a7c: $75
	ld   b, d                                        ; $4a7d: $42
	inc  de                                          ; $4a7e: $13
	ld   d, h                                        ; $4a7f: $54
	ld   l, b                                        ; $4a80: $68
	call $eeef                                       ; $4a81: $cd $ef $ee
	sbc  c                                           ; $4a84: $99
	ld   h, e                                        ; $4a85: $63
	ld   hl, $4613                                   ; $4a86: $21 $13 $46
	ld   a, h                                        ; $4a89: $7c
	rst  $28                                         ; $4a8a: $ef
	rst  $38                                         ; $4a8b: $ff
	db   $fd                                         ; $4a8c: $fd
	add  a                                           ; $4a8d: $87
	ld   b, d                                        ; $4a8e: $42
	ld   de, $5714                                   ; $4a8f: $11 $14 $57
	xor  a                                           ; $4a92: $af
	rst  $38                                         ; $4a93: $ff
	rst  $38                                         ; $4a94: $ff
	ld   hl, sp+$74                                  ; $4a95: $f8 $74
	ld   hl, $3511                                   ; $4a97: $21 $11 $35
	ld   a, d                                        ; $4a9a: $7a
	rst  $38                                         ; $4a9b: $ff
	rst  $38                                         ; $4a9c: $ff
	rst  $38                                         ; $4a9d: $ff
	add  l                                           ; $4a9e: $85
	ld   b, c                                        ; $4a9f: $41
	ld   de, $5813                                   ; $4aa0: $11 $13 $58
	xor  a                                           ; $4aa3: $af
	rst  $38                                         ; $4aa4: $ff
	rst  $38                                         ; $4aa5: $ff
	rst  $30                                         ; $4aa6: $f7
	ld   b, e                                        ; $4aa7: $43
	ld   de, $5611                                   ; $4aa8: $11 $11 $56
	adc  e                                           ; $4aab: $8b
	rst  $38                                         ; $4aac: $ff
	rst  $38                                         ; $4aad: $ff
	cp   $63                                         ; $4aae: $fe $63
	ld   hl, $1511                                   ; $4ab0: $21 $11 $15
	adc  d                                           ; $4ab3: $8a
	rst  $28                                         ; $4ab4: $ef
	rst  $38                                         ; $4ab5: $ff
	rst  $38                                         ; $4ab6: $ff
	call nz, $1121                                   ; $4ab7: $c4 $21 $11
	inc  de                                          ; $4aba: $13
	ld   a, d                                        ; $4abb: $7a
	cp   a                                           ; $4abc: $bf
	rst  $38                                         ; $4abd: $ff
	rst  $38                                         ; $4abe: $ff
	ld   sp, hl                                      ; $4abf: $f9
	ld   [hl-], a                                    ; $4ac0: $32
	ld   de, $6811                                   ; $4ac1: $11 $11 $68
	cp   l                                           ; $4ac4: $bd
	rst  $38                                         ; $4ac5: $ff
	rst  $38                                         ; $4ac6: $ff
	db   $ed                                         ; $4ac7: $ed
	ld   h, d                                        ; $4ac8: $62
	ld   hl, $1711                                   ; $4ac9: $21 $11 $17
	sbc  h                                           ; $4acc: $9c
	rst  $38                                         ; $4acd: $ff
	rst  $38                                         ; $4ace: $ff
	cp   $a3                                         ; $4acf: $fe $a3
	ld   hl, $1611                                   ; $4ad1: $21 $11 $16
	sbc  e                                           ; $4ad4: $9b
	rst  JumpTable                                         ; $4ad5: $df
	rst  $38                                         ; $4ad6: $ff
	rst  $38                                         ; $4ad7: $ff
	ret  c                                           ; $4ad8: $d8

	ld   [hl+], a                                    ; $4ad9: $22
	ld   de, $8811                                   ; $4ada: $11 $11 $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4add: $cf
	rst  $38                                         ; $4ade: $ff
	rst  $38                                         ; $4adf: $ff
	db   $db                                         ; $4ae0: $db
	ld   d, e                                        ; $4ae1: $53
	ld   de, $4911                                   ; $4ae2: $11 $11 $49
	cp   [hl]                                        ; $4ae5: $be
	rst  $38                                         ; $4ae6: $ff
	rst  $38                                         ; $4ae7: $ff
	db   $ed                                         ; $4ae8: $ed
	and  e                                           ; $4ae9: $a3
	ld   hl, $1811                                   ; $4aea: $21 $11 $18
	xor  [hl]                                        ; $4aed: $ae
	rst  $38                                         ; $4aee: $ff
	rst  $38                                         ; $4aef: $ff
	db   $fd                                         ; $4af0: $fd
	rst  ToBoot                                         ; $4af1: $c7
	ld   [hl-], a                                    ; $4af2: $32
	ld   de, $ab11                                   ; $4af3: $11 $11 $ab
	rst  $28                                         ; $4af6: $ef
	rst  $38                                         ; $4af7: $ff
	cp   $ca                                         ; $4af8: $fe $ca
	ld   b, d                                        ; $4afa: $42
	ld   de, $7b11                                   ; $4afb: $11 $11 $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4afe: $cf
	rst  $38                                         ; $4aff: $ff
	cp   $cb                                         ; $4b00: $fe $cb
	add  e                                           ; $4b02: $83
	ld   hl, $1a11                                   ; $4b03: $21 $11 $1a
	adc  $ff                                         ; $4b06: $ce $ff
	rst  $38                                         ; $4b08: $ff
	db   $db                                         ; $4b09: $db
	and  [hl]                                        ; $4b0a: $a6
	ld   hl, $1511                                   ; $4b0b: $21 $11 $15
	cp   l                                           ; $4b0e: $bd
	rst  $38                                         ; $4b0f: $ff
	rst  $38                                         ; $4b10: $ff
	db   $ed                                         ; $4b11: $ed
	cp   c                                           ; $4b12: $b9
	ld   b, e                                        ; $4b13: $43
	ld   de, $9b11                                   ; $4b14: $11 $11 $9b
	rst  $28                                         ; $4b17: $ef
	rst  $38                                         ; $4b18: $ff
	xor  $bb                                         ; $4b19: $ee $bb
	ld   [hl], e                                     ; $4b1b: $73
	ld   hl, $0b11                                   ; $4b1c: $21 $11 $0b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b1f: $cf
	rst  $38                                         ; $4b20: $ff
	db   $fd                                         ; $4b21: $fd
	ld   [$21a5], a                                  ; $4b22: $ea $a5 $21
	ld   de, $cd17                                   ; $4b25: $11 $17 $cd
	rst  $38                                         ; $4b28: $ff
	rst  $38                                         ; $4b29: $ff
	call c, $32b9                                    ; $4b2a: $dc $b9 $32
	ld   de, $bc11                                   ; $4b2d: $11 $11 $bc
	rst  $28                                         ; $4b30: $ef
	rst  $38                                         ; $4b31: $ff
	db   $ed                                         ; $4b32: $ed
	cp   e                                           ; $4b33: $bb
	ld   d, e                                        ; $4b34: $53
	ld   de, $6b11                                   ; $4b35: $11 $11 $6b
	rst  JumpTable                                         ; $4b38: $df
	rst  $38                                         ; $4b39: $ff
	db   $fd                                         ; $4b3a: $fd
	jp   z, $3194                                    ; $4b3b: $ca $94 $31

	ld   de, $ce1a                                   ; $4b3e: $11 $1a $ce
	rst  $38                                         ; $4b41: $ff
	cp   $db                                         ; $4b42: $fe $db
	or   a                                           ; $4b44: $b7
	ld   sp, $1411                                   ; $4b45: $31 $11 $14
	cp   h                                           ; $4b48: $bc
	rst  $38                                         ; $4b49: $ff
	rst  $38                                         ; $4b4a: $ff
	db   $ec                                         ; $4b4b: $ec
	xor  d                                           ; $4b4c: $aa
	ld   b, e                                        ; $4b4d: $43
	ld   de, $ab11                                   ; $4b4e: $11 $11 $ab
	rst  $38                                         ; $4b51: $ff
	rst  $38                                         ; $4b52: $ff
	db   $ed                                         ; $4b53: $ed
	cp   d                                           ; $4b54: $ba
	ld   [hl], e                                     ; $4b55: $73
	ld   de, $5b11                                   ; $4b56: $11 $11 $5b
	sbc  $ff                                         ; $4b59: $de $ff
	db   $fd                                         ; $4b5b: $fd
	res  4, l                                        ; $4b5c: $cb $a5
	ld   hl, $1a11                                   ; $4b5e: $21 $11 $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b61: $cf
	rst  $38                                         ; $4b62: $ff
	rst  $38                                         ; $4b63: $ff
	jp   c, $31a7                                    ; $4b64: $da $a7 $31

	ld   de, $ad16                                   ; $4b67: $11 $16 $ad
	rst  $28                                         ; $4b6a: $ef
	rst  $38                                         ; $4b6b: $ff
	db   $ec                                         ; $4b6c: $ec
	xor  c                                           ; $4b6d: $a9
	ld   b, d                                        ; $4b6e: $42
	ld   de, $9c11                                   ; $4b6f: $11 $11 $9c
	rst  $38                                         ; $4b72: $ff
	rst  $38                                         ; $4b73: $ff
	cp   $aa                                         ; $4b74: $fe $aa
	ld   [hl], e                                     ; $4b76: $73
	ld   de, $7911                                   ; $4b77: $11 $11 $79
	xor  $ff                                         ; $4b7a: $ee $ff
	rst  $38                                         ; $4b7c: $ff
	cp   c                                           ; $4b7d: $b9
	and  h                                           ; $4b7e: $a4
	ld   hl, $2811                                   ; $4b7f: $21 $11 $28
	call $ffff                                       ; $4b82: $cd $ff $ff
	jp   hl                                          ; $4b85: $e9


	or   a                                           ; $4b86: $b7
	ld   b, c                                        ; $4b87: $41
	ld   de, $9d17                                   ; $4b88: $11 $17 $9d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b8b: $cf
	rst  $38                                         ; $4b8c: $ff
	db   $fc                                         ; $4b8d: $fc
	sbc  d                                           ; $4b8e: $9a
	ld   h, e                                        ; $4b8f: $63
	ld   de, $8b12                                   ; $4b90: $11 $12 $8b
	call z, $ffff                                    ; $4b93: $cc $ff $ff
	sbc  d                                           ; $4b96: $9a
	add  l                                           ; $4b97: $85
	ld   de, $5811                                   ; $4b98: $11 $11 $58
	set  5, a                                        ; $4b9b: $cb $ef
	rst  $38                                         ; $4b9d: $ff
	reti                                             ; $4b9e: $d9


	sub  a                                           ; $4b9f: $97
	ld   d, c                                        ; $4ba0: $51
	ld   de, $ac15                                   ; $4ba1: $11 $15 $ac
	sbc  a                                           ; $4ba4: $9f
	rst  $38                                         ; $4ba5: $ff
	ei                                               ; $4ba6: $fb
	xor  c                                           ; $4ba7: $a9
	ld   [hl], l                                     ; $4ba8: $75
	ld   de, $5a11                                   ; $4ba9: $11 $11 $5a
	ret                                              ; $4bac: $c9


	rst  $38                                         ; $4bad: $ff
	rst  $38                                         ; $4bae: $ff
	jp   z, Jump_0eb_5197                            ; $4baf: $ca $97 $51

	ld   de, $bb14                                   ; $4bb2: $11 $14 $bb
	sbc  l                                           ; $4bb5: $9d
	rst  $38                                         ; $4bb6: $ff
	db   $fd                                         ; $4bb7: $fd
	cp   c                                           ; $4bb8: $b9
	ld   h, [hl]                                     ; $4bb9: $66
	ld   de, $3811                                   ; $4bba: $11 $11 $38
	cp   d                                           ; $4bbd: $ba
	call $edff                                       ; $4bbe: $cd $ff $ed
	sub  [hl]                                        ; $4bc1: $96
	ld   h, e                                        ; $4bc2: $63
	ld   de, $5b12                                   ; $4bc3: $11 $12 $5b
	sbc  e                                           ; $4bc6: $9b
	call $ebff                                       ; $4bc7: $cd $ff $eb
	halt                                             ; $4bca: $76
	ld   h, h                                        ; $4bcb: $64
	ld   de, $7a13                                   ; $4bcc: $11 $13 $7a
	adc  e                                           ; $4bcf: $8b
	cp   [hl]                                        ; $4bd0: $be
	cp   $d9                                         ; $4bd1: $fe $d9
	ld   d, [hl]                                     ; $4bd3: $56
	ld   [hl], l                                     ; $4bd4: $75
	ld   hl, $8934                                   ; $4bd5: $21 $34 $89
	adc  c                                           ; $4bd8: $89
	sbc  l                                           ; $4bd9: $9d
	xor  $a8                                         ; $4bda: $ee $a8
	ld   l, b                                        ; $4bdc: $68
	ld   [hl], l                                     ; $4bdd: $75
	ld   [hl-], a                                    ; $4bde: $32
	ld   d, h                                        ; $4bdf: $54
	sbc  c                                           ; $4be0: $99
	adc  c                                           ; $4be1: $89
	xor  h                                           ; $4be2: $ac
	call c, Call_0eb_78a9                            ; $4be3: $dc $a9 $78
	halt                                             ; $4be6: $76
	ld   b, h                                        ; $4be7: $44
	ld   d, l                                        ; $4be8: $55
	adc  c                                           ; $4be9: $89
	adc  b                                           ; $4bea: $88
	adc  d                                           ; $4beb: $8a
	cp   h                                           ; $4bec: $bc
	xor  c                                           ; $4bed: $a9
	adc  c                                           ; $4bee: $89
	add  a                                           ; $4bef: $87
	ld   h, l                                        ; $4bf0: $65
	ld   h, [hl]                                     ; $4bf1: $66
	ld   a, c                                        ; $4bf2: $79
	ld   [hl], a                                     ; $4bf3: $77
	ld   a, b                                        ; $4bf4: $78
	xor  e                                           ; $4bf5: $ab
	xor  c                                           ; $4bf6: $a9
	sbc  b                                           ; $4bf7: $98
	add  a                                           ; $4bf8: $87
	halt                                             ; $4bf9: $76
	ld   h, a                                        ; $4bfa: $67
	ld   a, b                                        ; $4bfb: $78
	add  a                                           ; $4bfc: $87
	ld   [hl], a                                     ; $4bfd: $77
	adc  c                                           ; $4bfe: $89
	sbc  c                                           ; $4bff: $99
	sbc  b                                           ; $4c00: $98
	adc  b                                           ; $4c01: $88
	adc  b                                           ; $4c02: $88
	ld   [hl], a                                     ; $4c03: $77
	add  a                                           ; $4c04: $87
	adc  b                                           ; $4c05: $88
	ld   [hl], a                                     ; $4c06: $77
	ld   [hl], a                                     ; $4c07: $77
	sbc  c                                           ; $4c08: $99
	adc  c                                           ; $4c09: $89
	adc  c                                           ; $4c0a: $89
	sbc  b                                           ; $4c0b: $98
	add  a                                           ; $4c0c: $87
	adc  b                                           ; $4c0d: $88
	ld   a, b                                        ; $4c0e: $78
	ld   [hl], a                                     ; $4c0f: $77
	ld   [hl], a                                     ; $4c10: $77
	ld   a, b                                        ; $4c11: $78
	sbc  c                                           ; $4c12: $99
	xor  c                                           ; $4c13: $a9
	sbc  c                                           ; $4c14: $99
	adc  b                                           ; $4c15: $88
	adc  b                                           ; $4c16: $88
	add  a                                           ; $4c17: $87
	add  a                                           ; $4c18: $87
	halt                                             ; $4c19: $76
	ld   h, a                                        ; $4c1a: $67
	adc  b                                           ; $4c1b: $88
	sbc  b                                           ; $4c1c: $98
	sbc  c                                           ; $4c1d: $99
	sbc  b                                           ; $4c1e: $98
	adc  b                                           ; $4c1f: $88
	adc  b                                           ; $4c20: $88
	ld   a, b                                        ; $4c21: $78
	ld   [hl], a                                     ; $4c22: $77
	ld   [hl], a                                     ; $4c23: $77
	ld   a, b                                        ; $4c24: $78
	adc  b                                           ; $4c25: $88
	adc  b                                           ; $4c26: $88
	sbc  c                                           ; $4c27: $99
	sbc  b                                           ; $4c28: $98
	adc  b                                           ; $4c29: $88
	adc  b                                           ; $4c2a: $88
	adc  b                                           ; $4c2b: $88
	ld   [hl], a                                     ; $4c2c: $77
	ld   [hl], a                                     ; $4c2d: $77
	ld   a, b                                        ; $4c2e: $78
	adc  c                                           ; $4c2f: $89
	sbc  b                                           ; $4c30: $98
	adc  b                                           ; $4c31: $88
	adc  b                                           ; $4c32: $88
	adc  b                                           ; $4c33: $88
	sbc  c                                           ; $4c34: $99
	add  a                                           ; $4c35: $87
	ld   [hl], a                                     ; $4c36: $77
	ld   [hl], a                                     ; $4c37: $77
	ld   a, b                                        ; $4c38: $78
	sbc  b                                           ; $4c39: $98
	adc  b                                           ; $4c3a: $88
	sbc  b                                           ; $4c3b: $98
	adc  c                                           ; $4c3c: $89
	sbc  c                                           ; $4c3d: $99
	sbc  b                                           ; $4c3e: $98
	ld   [hl], a                                     ; $4c3f: $77
	ld   h, [hl]                                     ; $4c40: $66
	ld   [hl], a                                     ; $4c41: $77
	adc  b                                           ; $4c42: $88
	adc  b                                           ; $4c43: $88
	sbc  c                                           ; $4c44: $99
	sbc  c                                           ; $4c45: $99
	sbc  b                                           ; $4c46: $98
	sbc  b                                           ; $4c47: $98
	add  a                                           ; $4c48: $87
	ld   h, [hl]                                     ; $4c49: $66
	ld   h, a                                        ; $4c4a: $67
	ld   a, b                                        ; $4c4b: $78
	adc  b                                           ; $4c4c: $88
	sbc  c                                           ; $4c4d: $99
	sbc  c                                           ; $4c4e: $99
	adc  c                                           ; $4c4f: $89
	adc  b                                           ; $4c50: $88
	add  a                                           ; $4c51: $87
	halt                                             ; $4c52: $76
	ld   h, [hl]                                     ; $4c53: $66
	ld   [hl], a                                     ; $4c54: $77
	adc  b                                           ; $4c55: $88
	adc  c                                           ; $4c56: $89
	sbc  c                                           ; $4c57: $99
	sbc  c                                           ; $4c58: $99
	adc  b                                           ; $4c59: $88
	adc  b                                           ; $4c5a: $88
	add  a                                           ; $4c5b: $87
	ld   h, [hl]                                     ; $4c5c: $66
	ld   h, a                                        ; $4c5d: $67
	adc  b                                           ; $4c5e: $88
	sbc  c                                           ; $4c5f: $99
	adc  c                                           ; $4c60: $89
	sbc  c                                           ; $4c61: $99
	adc  b                                           ; $4c62: $88
	adc  b                                           ; $4c63: $88
	add  a                                           ; $4c64: $87
	ld   [hl], a                                     ; $4c65: $77
	ld   [hl], a                                     ; $4c66: $77
	ld   [hl], a                                     ; $4c67: $77
	adc  c                                           ; $4c68: $89
	sbc  c                                           ; $4c69: $99
	sbc  b                                           ; $4c6a: $98
	adc  b                                           ; $4c6b: $88
	adc  c                                           ; $4c6c: $89
	adc  b                                           ; $4c6d: $88
	ld   [hl], a                                     ; $4c6e: $77
	halt                                             ; $4c6f: $76
	ld   [hl], a                                     ; $4c70: $77
	adc  b                                           ; $4c71: $88
	sbc  b                                           ; $4c72: $98
	adc  b                                           ; $4c73: $88
	sbc  b                                           ; $4c74: $98
	adc  b                                           ; $4c75: $88
	sbc  b                                           ; $4c76: $98
	add  a                                           ; $4c77: $87
	ld   [hl], a                                     ; $4c78: $77
	ld   h, a                                        ; $4c79: $67
	ld   a, b                                        ; $4c7a: $78
	sbc  c                                           ; $4c7b: $99
	adc  c                                           ; $4c7c: $89
	adc  c                                           ; $4c7d: $89
	adc  b                                           ; $4c7e: $88
	adc  c                                           ; $4c7f: $89
	adc  b                                           ; $4c80: $88
	ld   [hl], a                                     ; $4c81: $77
	ld   [hl], a                                     ; $4c82: $77
	ld   a, b                                        ; $4c83: $78
	adc  c                                           ; $4c84: $89
	adc  c                                           ; $4c85: $89
	sbc  c                                           ; $4c86: $99
	adc  b                                           ; $4c87: $88
	sbc  c                                           ; $4c88: $99
	adc  b                                           ; $4c89: $88
	ld   [hl], a                                     ; $4c8a: $77
	ld   [hl], a                                     ; $4c8b: $77
	ld   [hl], a                                     ; $4c8c: $77
	adc  b                                           ; $4c8d: $88
	adc  c                                           ; $4c8e: $89
	sbc  c                                           ; $4c8f: $99
	adc  c                                           ; $4c90: $89
	adc  c                                           ; $4c91: $89
	adc  b                                           ; $4c92: $88
	add  a                                           ; $4c93: $87
	ld   [hl], a                                     ; $4c94: $77
	ld   [hl], a                                     ; $4c95: $77
	adc  b                                           ; $4c96: $88
	sbc  c                                           ; $4c97: $99
	sbc  c                                           ; $4c98: $99
	adc  b                                           ; $4c99: $88
	sbc  b                                           ; $4c9a: $98
	adc  b                                           ; $4c9b: $88
	adc  b                                           ; $4c9c: $88
	ld   [hl], a                                     ; $4c9d: $77
	ld   [hl], a                                     ; $4c9e: $77
	ld   a, b                                        ; $4c9f: $78
	sbc  c                                           ; $4ca0: $99
	sbc  c                                           ; $4ca1: $99
	sbc  c                                           ; $4ca2: $99
	sbc  b                                           ; $4ca3: $98
	adc  b                                           ; $4ca4: $88
	adc  b                                           ; $4ca5: $88
	ld   [hl], a                                     ; $4ca6: $77
	ld   [hl], a                                     ; $4ca7: $77
	ld   a, b                                        ; $4ca8: $78
	sbc  c                                           ; $4ca9: $99
	sbc  c                                           ; $4caa: $99
	sbc  c                                           ; $4cab: $99
	sbc  c                                           ; $4cac: $99
	adc  b                                           ; $4cad: $88
	adc  b                                           ; $4cae: $88
	add  a                                           ; $4caf: $87
	ld   [hl], a                                     ; $4cb0: $77
	ld   [hl], a                                     ; $4cb1: $77
	adc  c                                           ; $4cb2: $89
	adc  c                                           ; $4cb3: $89
	sbc  c                                           ; $4cb4: $99
	sbc  c                                           ; $4cb5: $99
	add  a                                           ; $4cb6: $87
	add  a                                           ; $4cb7: $87
	ld   a, b                                        ; $4cb8: $78
	ld   [hl], a                                     ; $4cb9: $77
	ld   [hl], a                                     ; $4cba: $77
	ld   a, b                                        ; $4cbb: $78
	sbc  c                                           ; $4cbc: $99
	sbc  c                                           ; $4cbd: $99
	xor  c                                           ; $4cbe: $a9
	sbc  b                                           ; $4cbf: $98
	ld   a, b                                        ; $4cc0: $78
	ld   [hl], a                                     ; $4cc1: $77
	add  a                                           ; $4cc2: $87
	ld   [hl], a                                     ; $4cc3: $77
	ld   [hl], a                                     ; $4cc4: $77
	adc  b                                           ; $4cc5: $88
	sbc  d                                           ; $4cc6: $9a
	xor  d                                           ; $4cc7: $aa
	xor  c                                           ; $4cc8: $a9
	sub  a                                           ; $4cc9: $97
	ld   [hl], a                                     ; $4cca: $77
	ld   a, b                                        ; $4ccb: $78
	ld   [hl], a                                     ; $4ccc: $77
	ld   [hl], a                                     ; $4ccd: $77
	ld   a, b                                        ; $4cce: $78
	sbc  c                                           ; $4ccf: $99
	sbc  c                                           ; $4cd0: $99
	xor  c                                           ; $4cd1: $a9
	sbc  b                                           ; $4cd2: $98
	ld   [hl], a                                     ; $4cd3: $77
	ld   [hl], a                                     ; $4cd4: $77
	ld   [hl], a                                     ; $4cd5: $77
	ld   [hl], a                                     ; $4cd6: $77
	ld   [hl], a                                     ; $4cd7: $77
	adc  c                                           ; $4cd8: $89
	sbc  d                                           ; $4cd9: $9a
	xor  d                                           ; $4cda: $aa
	xor  d                                           ; $4cdb: $aa
	sbc  b                                           ; $4cdc: $98
	ld   h, a                                        ; $4cdd: $67
	halt                                             ; $4cde: $76
	ld   [hl], a                                     ; $4cdf: $77
	ld   h, a                                        ; $4ce0: $67
	ld   h, a                                        ; $4ce1: $67
	adc  c                                           ; $4ce2: $89
	xor  d                                           ; $4ce3: $aa
	cp   d                                           ; $4ce4: $ba
	xor  c                                           ; $4ce5: $a9
	sub  [hl]                                        ; $4ce6: $96
	ld   h, [hl]                                     ; $4ce7: $66
	ld   h, [hl]                                     ; $4ce8: $66
	halt                                             ; $4ce9: $76
	ld   h, a                                        ; $4cea: $67
	ld   a, b                                        ; $4ceb: $78
	sbc  d                                           ; $4cec: $9a
	res  7, d                                        ; $4ced: $cb $ba
	sbc  c                                           ; $4cef: $99
	ld   [hl], l                                     ; $4cf0: $75
	ld   h, [hl]                                     ; $4cf1: $66
	ld   d, [hl]                                     ; $4cf2: $56
	ld   h, [hl]                                     ; $4cf3: $66
	ld   [hl], a                                     ; $4cf4: $77
	sbc  d                                           ; $4cf5: $9a
	cp   h                                           ; $4cf6: $bc
	call z, $88ba                                    ; $4cf7: $cc $ba $88
	ld   d, l                                        ; $4cfa: $55
	ld   d, h                                        ; $4cfb: $54
	ld   d, [hl]                                     ; $4cfc: $56
	ld   d, [hl]                                     ; $4cfd: $56
	ld   [hl], a                                     ; $4cfe: $77
	sbc  e                                           ; $4cff: $9b
	cp   l                                           ; $4d00: $bd
	call z, $86c9                                    ; $4d01: $cc $c9 $86
	ld   b, l                                        ; $4d04: $45
	ld   b, h                                        ; $4d05: $44
	ld   d, h                                        ; $4d06: $54
	ld   d, a                                        ; $4d07: $57
	ld   a, c                                        ; $4d08: $79
	call z, $ddee                                    ; $4d09: $cc $ee $dd
	cp   b                                           ; $4d0c: $b8
	ld   h, e                                        ; $4d0d: $63
	ld   b, h                                        ; $4d0e: $44
	inc  [hl]                                        ; $4d0f: $34
	ld   b, h                                        ; $4d10: $44
	ld   h, a                                        ; $4d11: $67
	sbc  h                                           ; $4d12: $9c
	adc  $fd                                         ; $4d13: $ce $fd
	db   $ec                                         ; $4d15: $ec
	sub  [hl]                                        ; $4d16: $96
	inc  sp                                          ; $4d17: $33
	ld   b, d                                        ; $4d18: $42
	inc  sp                                          ; $4d19: $33
	ld   [hl], $78                                   ; $4d1a: $36 $78
	call $eeff                                       ; $4d1c: $cd $ff $ee
	reti                                             ; $4d1f: $d9


	ld   h, e                                        ; $4d20: $63
	inc  sp                                          ; $4d21: $33
	ld   [de], a                                     ; $4d22: $12
	inc  hl                                          ; $4d23: $23
	ld   d, a                                        ; $4d24: $57
	sbc  h                                           ; $4d25: $9c
	rst  $28                                         ; $4d26: $ef
	cp   $ee                                         ; $4d27: $fe $ee
	and  [hl]                                        ; $4d29: $a6
	ld   [hl+], a                                    ; $4d2a: $22
	ld   hl, $2512                                   ; $4d2b: $21 $12 $25
	ld   a, b                                        ; $4d2e: $78
	rst  JumpTable                                         ; $4d2f: $df
	rst  $38                                         ; $4d30: $ff
	cp   $ea                                         ; $4d31: $fe $ea
	ld   h, c                                        ; $4d33: $61
	ld   de, $2211                                   ; $4d34: $11 $11 $22
	ld   d, [hl]                                     ; $4d37: $56
	sbc  [hl]                                        ; $4d38: $9e
	rst  $38                                         ; $4d39: $ff
	rst  $38                                         ; $4d3a: $ff
	db   $fd                                         ; $4d3b: $fd
	and  l                                           ; $4d3c: $a5
	ld   de, $1211                                   ; $4d3d: $11 $11 $12
	dec  [hl]                                        ; $4d40: $35
	ld   a, e                                        ; $4d41: $7b
	rst  $38                                         ; $4d42: $ff
	rst  $38                                         ; $4d43: $ff
	rst  $38                                         ; $4d44: $ff
	ret  z                                           ; $4d45: $c8

	ld   hl, $1321                                   ; $4d46: $21 $21 $13
	inc  h                                           ; $4d49: $24
	ld   a, d                                        ; $4d4a: $7a
	rst  $38                                         ; $4d4b: $ff
	rst  $28                                         ; $4d4c: $ef
	rst  $38                                         ; $4d4d: $ff
	jp   hl                                          ; $4d4e: $e9


	ld   b, c                                        ; $4d4f: $41
	ld   [hl+], a                                    ; $4d50: $22
	inc  de                                          ; $4d51: $13
	ld   [hl-], a                                    ; $4d52: $32
	adc  d                                           ; $4d53: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d54: $cf
	rst  $28                                         ; $4d55: $ef
	db   $fd                                         ; $4d56: $fd
	ld   [$2441], a                                  ; $4d57: $ea $41 $24
	ld   de, $7d61                                   ; $4d5a: $11 $61 $7d
	cp   a                                           ; $4d5d: $bf
	rst  $38                                         ; $4d5e: $ff
	db   $fc                                         ; $4d5f: $fc
	ld   a, [$1441]                                  ; $4d60: $fa $41 $14
	ld   de, $6f81                                   ; $4d63: $11 $81 $6f
	xor  l                                           ; $4d66: $ad
	cp   $fe                                         ; $4d67: $fe $fe
	db   $eb                                         ; $4d69: $eb
	ld   b, e                                        ; $4d6a: $43
	inc  d                                           ; $4d6b: $14
	ld   de, $4f91                                   ; $4d6c: $11 $91 $4f
	sbc  l                                           ; $4d6f: $9d
	db   $fd                                         ; $4d70: $fd
	rst  $38                                         ; $4d71: $ff
	call c, $1453                                    ; $4d72: $dc $53 $14
	ld   de, $1f92                                   ; $4d75: $11 $92 $1f
	xor  e                                           ; $4d78: $ab
	cp   $ff                                         ; $4d79: $fe $ff
	call z, $1354                                    ; $4d7b: $cc $54 $13
	ld   hl, $1f83                                   ; $4d7e: $21 $83 $1f
	cp   d                                           ; $4d81: $ba
	db   $fd                                         ; $4d82: $fd
	rst  $28                                         ; $4d83: $ef
	cp   h                                           ; $4d84: $bc
	ld   h, h                                        ; $4d85: $64
	ld   [de], a                                     ; $4d86: $12
	ld   b, c                                        ; $4d87: $41
	add  l                                           ; $4d88: $85
	rra                                              ; $4d89: $1f
	ret                                              ; $4d8a: $c9


	cp   $ef                                         ; $4d8b: $fe $ef
	call z, $1175                                    ; $4d8d: $cc $75 $11
	ld   d, c                                        ; $4d90: $51
	halt                                             ; $4d91: $76
	rra                                              ; $4d92: $1f
	rst  ToBoot                                         ; $4d93: $c7
	rst  $38                                         ; $4d94: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d95: $cf
	bit  6, l                                        ; $4d96: $cb $75
	ld   de, $7751                                   ; $4d98: $11 $51 $77
	rra                                              ; $4d9b: $1f
	rst  ToBoot                                         ; $4d9c: $c7
	rst  $38                                         ; $4d9d: $ff
	cp   a                                           ; $4d9e: $bf
	res  0, h                                        ; $4d9f: $cb $84
	ld   [de], a                                     ; $4da1: $12
	ld   d, c                                        ; $4da2: $51
	add  [hl]                                        ; $4da3: $86
	rra                                              ; $4da4: $1f
	rst  ToBoot                                         ; $4da5: $c7
	cp   $bf                                         ; $4da6: $fe $bf
	cp   e                                           ; $4da8: $bb
	add  h                                           ; $4da9: $84
	inc  de                                          ; $4daa: $13
	ld   b, c                                        ; $4dab: $41
	and  l                                           ; $4dac: $a5
	rra                                              ; $4dad: $1f
	xor  b                                           ; $4dae: $a8
	db   $fd                                         ; $4daf: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4db0: $cf
	xor  d                                           ; $4db1: $aa
	add  d                                           ; $4db2: $82
	dec  d                                           ; $4db3: $15
	ld   de, $0fd1                                   ; $4db4: $11 $d1 $0f
	ld   a, h                                        ; $4db7: $7c
	ld   a, [$8bef]                                  ; $4db8: $fa $ef $8b
	ld   [hl], c                                     ; $4dbb: $71
	rla                                              ; $4dbc: $17
	ld   de, $7ff1                                   ; $4dbd: $11 $f1 $7f
	ld   e, a                                        ; $4dc0: $5f
	ld   hl, sp-$01                                  ; $4dc1: $f8 $ff
	adc  h                                           ; $4dc3: $8c
	ld   d, c                                        ; $4dc4: $51
	ld   d, $13                                      ; $4dc5: $16 $13
	pop  bc                                          ; $4dc7: $c1
	cp   $5f                                         ; $4dc8: $fe $5f
	ld   sp, hl                                      ; $4dca: $f9
	ei                                               ; $4dcb: $fb
	sbc  e                                           ; $4dcc: $9b
	ld   hl, $1c43                                   ; $4dcd: $21 $43 $1c
	ld   sp, $bff7                                   ; $4dd0: $31 $f7 $bf
	xor  a                                           ; $4dd3: $af
	ld   hl, sp-$38                                  ; $4dd4: $f8 $c8
	ld   de, $1e61                                   ; $4dd6: $11 $61 $1e
	jr   @-$0b                                       ; $4dd9: $18 $f3

	rst  $38                                         ; $4ddb: $ff
	adc  a                                           ; $4ddc: $8f
	add  sp, -$2b                                    ; $4ddd: $e8 $d5
	ld   [de], a                                     ; $4ddf: $12
	ld   h, c                                        ; $4de0: $61
	ld   l, c                                        ; $4de1: $69
	rra                                              ; $4de2: $1f
	and  a                                           ; $4de3: $a7
	db   $fc                                         ; $4de4: $fc
	rst  JumpTable                                         ; $4de5: $df
	xor  d                                           ; $4de6: $aa
	or   c                                           ; $4de7: $b1
	ld   d, $11                                      ; $4de8: $16 $11
	pop  af                                          ; $4dea: $f1
	cpl                                              ; $4deb: $2f
	ld   e, [hl]                                     ; $4dec: $5e
	ei                                               ; $4ded: $fb
	rst  $38                                         ; $4dee: $ff
	sbc  d                                           ; $4def: $9a
	and  c                                           ; $4df0: $a1
	jr   jr_0eb_4e05                                 ; $4df1: $18 $12

	pop  de                                          ; $4df3: $d1
	xor  $5f                                         ; $4df4: $ee $5f
	ld   sp, hl                                      ; $4df6: $f9
	cp   $7d                                         ; $4df7: $fe $7d
	ld   b, c                                        ; $4df9: $41
	ld   h, c                                        ; $4dfa: $61
	dec  e                                           ; $4dfb: $1d
	ld   de, $cff5                                   ; $4dfc: $11 $f5 $cf
	cp   [hl]                                        ; $4dff: $be
	ld   sp, hl                                      ; $4e00: $f9
	cp   e                                           ; $4e01: $bb
	ld   de, $1c81                                   ; $4e02: $11 $81 $1c

jr_0eb_4e05:
	dec  e                                           ; $4e05: $1d
	db   $f4                                         ; $4e06: $f4
	rst  $38                                         ; $4e07: $ff
	xor  a                                           ; $4e08: $af
	rst  $30                                         ; $4e09: $f7
	push bc                                          ; $4e0a: $c5
	rla                                              ; $4e0b: $17
	ld   de, $1fc1                                   ; $4e0c: $11 $c1 $1f
	ld   e, h                                        ; $4e0f: $5c
	ei                                               ; $4e10: $fb
	rst  $38                                         ; $4e11: $ff
	xor  e                                           ; $4e12: $ab
	and  c                                           ; $4e13: $a1
	rla                                              ; $4e14: $17
	ld   de, $bca1                                   ; $4e15: $11 $a1 $bc
	ld   e, a                                        ; $4e18: $5f
	db   $fc                                         ; $4e19: $fc
	rst  $38                                         ; $4e1a: $ff
	sbc  h                                           ; $4e1b: $9c
	ld   d, c                                        ; $4e1c: $51
	ld   h, c                                        ; $4e1d: $61
	ld   a, [de]                                     ; $4e1e: $1a
	ld   de, $dff5                                   ; $4e1f: $11 $f5 $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e22: $cf
	ei                                               ; $4e23: $fb
	cp   d                                           ; $4e24: $ba
	ld   [bc], a                                     ; $4e25: $02
	ld   [hl], c                                     ; $4e26: $71
	add  hl, hl                                      ; $4e27: $29
	inc  e                                           ; $4e28: $1c
	and  a                                           ; $4e29: $a7
	cp   $df                                         ; $4e2a: $fe $df
	ld   [$16c5], a                                  ; $4e2c: $ea $c5 $16
	ld   de, $3e91                                   ; $4e2f: $11 $91 $3e
	ld   e, [hl]                                     ; $4e32: $5e
	db   $fc                                         ; $4e33: $fc
	rst  $38                                         ; $4e34: $ff
	cp   e                                           ; $4e35: $bb
	and  c                                           ; $4e36: $a1
	ld   [hl], $14                                   ; $4e37: $36 $14
	ld   h, c                                        ; $4e39: $61
	ret  z                                           ; $4e3a: $c8

	adc  a                                           ; $4e3b: $8f
	sbc  $fe                                         ; $4e3c: $de $fe
	xor  h                                           ; $4e3e: $ac
	ld   d, c                                        ; $4e3f: $51
	ld   [hl], c                                     ; $4e40: $71
	jr   jr_0eb_4e57                                 ; $4e41: $18 $14

	add  $df                                         ; $4e43: $c6 $df
	adc  $fb                                         ; $4e45: $ce $fb
	cp   e                                           ; $4e47: $bb
	inc  h                                           ; $4e48: $24
	ld   h, c                                        ; $4e49: $61
	ld   b, l                                        ; $4e4a: $45
	dec  de                                          ; $4e4b: $1b
	adc  b                                           ; $4e4c: $88
	db   $fd                                         ; $4e4d: $fd
	rst  JumpTable                                         ; $4e4e: $df
	ld   a, [$17b6]                                  ; $4e4f: $fa $b6 $17
	ld   de, $4b81                                   ; $4e52: $11 $81 $4b
	ld   l, h                                        ; $4e55: $6c
	db   $dd                                         ; $4e56: $dd

jr_0eb_4e57:
	rst  JumpTable                                         ; $4e57: $df
	db   $db                                         ; $4e58: $db
	and  e                                           ; $4e59: $a3
	ld   b, [hl]                                     ; $4e5a: $46
	inc  d                                           ; $4e5b: $14
	ld   d, c                                        ; $4e5c: $51
	sub  a                                           ; $4e5d: $97
	adc  l                                           ; $4e5e: $8d
	call $abff                                       ; $4e5f: $cd $ff $ab
	ld   [hl], d                                     ; $4e62: $72
	ld   [hl], c                                     ; $4e63: $71
	rla                                              ; $4e64: $17
	inc  d                                           ; $4e65: $14
	sub  [hl]                                        ; $4e66: $96
	call z, $fccd                                    ; $4e67: $cc $cd $fc
	cp   e                                           ; $4e6a: $bb
	ld   b, l                                        ; $4e6b: $45
	ld   h, c                                        ; $4e6c: $61
	dec  [hl]                                        ; $4e6d: $35
	jr   jr_0eb_4ee7                                 ; $4e6e: $18 $77

	call z, $fbde                                    ; $4e70: $cc $de $fb
	ret  z                                           ; $4e73: $c8

	ld   b, a                                        ; $4e74: $47
	ld   sp, $3962                                   ; $4e75: $31 $62 $39
	ld   l, d                                        ; $4e78: $6a
	set  3, a                                        ; $4e79: $cb $df
	db   $db                                         ; $4e7b: $db
	or   [hl]                                        ; $4e7c: $b6
	ld   d, a                                        ; $4e7d: $57
	ld   [de], a                                     ; $4e7e: $12
	ld   h, c                                        ; $4e7f: $61
	ld   e, b                                        ; $4e80: $58
	ld   l, d                                        ; $4e81: $6a
	set  3, [hl]                                     ; $4e82: $cb $de
	call z, Call_0eb_66b6                            ; $4e84: $cc $b6 $66
	inc  d                                           ; $4e87: $14
	ld   d, d                                        ; $4e88: $52
	ld   [hl], a                                     ; $4e89: $77
	ld   a, d                                        ; $4e8a: $7a
	xor  d                                           ; $4e8b: $aa
	call $96cb                                       ; $4e8c: $cd $cb $96
	halt                                             ; $4e8f: $76
	dec  h                                           ; $4e90: $25
	ld   d, e                                        ; $4e91: $53
	ld   [hl], a                                     ; $4e92: $77
	ld   a, c                                        ; $4e93: $79
	xor  d                                           ; $4e94: $aa
	cp   h                                           ; $4e95: $bc
	cp   e                                           ; $4e96: $bb
	sub  a                                           ; $4e97: $97
	add  [hl]                                        ; $4e98: $86
	ld   b, [hl]                                     ; $4e99: $46
	ld   d, h                                        ; $4e9a: $54
	ld   [hl], a                                     ; $4e9b: $77
	ld   a, c                                        ; $4e9c: $79
	sbc  d                                           ; $4e9d: $9a
	xor  e                                           ; $4e9e: $ab
	cp   d                                           ; $4e9f: $ba
	xor  b                                           ; $4ea0: $a8
	add  a                                           ; $4ea1: $87
	ld   d, [hl]                                     ; $4ea2: $56
	ld   h, l                                        ; $4ea3: $65
	ld   h, a                                        ; $4ea4: $67
	ld   h, a                                        ; $4ea5: $67
	adc  b                                           ; $4ea6: $88
	sbc  e                                           ; $4ea7: $9b
	cp   e                                           ; $4ea8: $bb
	cp   d                                           ; $4ea9: $ba
	sbc  b                                           ; $4eaa: $98
	ld   h, [hl]                                     ; $4eab: $66
	ld   h, [hl]                                     ; $4eac: $66
	ld   h, [hl]                                     ; $4ead: $66
	ld   h, [hl]                                     ; $4eae: $66
	ld   [hl], a                                     ; $4eaf: $77
	sbc  d                                           ; $4eb0: $9a
	xor  h                                           ; $4eb1: $ac
	cp   d                                           ; $4eb2: $ba
	xor  c                                           ; $4eb3: $a9
	halt                                             ; $4eb4: $76
	ld   h, [hl]                                     ; $4eb5: $66
	ld   h, [hl]                                     ; $4eb6: $66
	ld   h, [hl]                                     ; $4eb7: $66
	ld   h, a                                        ; $4eb8: $67
	adc  c                                           ; $4eb9: $89
	xor  h                                           ; $4eba: $ac
	cp   d                                           ; $4ebb: $ba
	xor  b                                           ; $4ebc: $a8
	add  [hl]                                        ; $4ebd: $86
	ld   h, [hl]                                     ; $4ebe: $66
	ld   h, [hl]                                     ; $4ebf: $66
	ld   h, [hl]                                     ; $4ec0: $66
	ld   h, a                                        ; $4ec1: $67
	adc  c                                           ; $4ec2: $89
	xor  e                                           ; $4ec3: $ab
	cp   e                                           ; $4ec4: $bb
	xor  c                                           ; $4ec5: $a9
	add  a                                           ; $4ec6: $87
	ld   h, [hl]                                     ; $4ec7: $66
	ld   h, [hl]                                     ; $4ec8: $66
	ld   h, [hl]                                     ; $4ec9: $66
	ld   h, a                                        ; $4eca: $67
	ld   a, c                                        ; $4ecb: $79
	xor  e                                           ; $4ecc: $ab
	cp   e                                           ; $4ecd: $bb
	xor  c                                           ; $4ece: $a9
	add  a                                           ; $4ecf: $87
	ld   h, [hl]                                     ; $4ed0: $66
	ld   h, [hl]                                     ; $4ed1: $66
	ld   h, [hl]                                     ; $4ed2: $66
	ld   h, [hl]                                     ; $4ed3: $66
	ld   a, b                                        ; $4ed4: $78
	xor  d                                           ; $4ed5: $aa
	cp   h                                           ; $4ed6: $bc
	xor  d                                           ; $4ed7: $aa
	sub  a                                           ; $4ed8: $97
	ld   h, [hl]                                     ; $4ed9: $66
	ld   h, [hl]                                     ; $4eda: $66
	ld   h, [hl]                                     ; $4edb: $66
	ld   h, [hl]                                     ; $4edc: $66
	ld   a, b                                        ; $4edd: $78
	xor  e                                           ; $4ede: $ab
	cp   h                                           ; $4edf: $bc
	cp   d                                           ; $4ee0: $ba
	sbc  b                                           ; $4ee1: $98
	halt                                             ; $4ee2: $76
	ld   h, [hl]                                     ; $4ee3: $66
	ld   h, [hl]                                     ; $4ee4: $66
	ld   h, [hl]                                     ; $4ee5: $66
	ld   a, b                                        ; $4ee6: $78

jr_0eb_4ee7:
	sbc  d                                           ; $4ee7: $9a
	cp   e                                           ; $4ee8: $bb
	cp   d                                           ; $4ee9: $ba
	sbc  c                                           ; $4eea: $99
	halt                                             ; $4eeb: $76
	ld   h, [hl]                                     ; $4eec: $66
	ld   h, [hl]                                     ; $4eed: $66
	ld   h, [hl]                                     ; $4eee: $66
	ld   h, a                                        ; $4eef: $67
	sbc  d                                           ; $4ef0: $9a

Jump_0eb_4ef1:
	cp   e                                           ; $4ef1: $bb
	jp   z, Jump_0eb_76a9                            ; $4ef2: $ca $a9 $76

	halt                                             ; $4ef5: $76
	ld   h, [hl]                                     ; $4ef6: $66
	ld   h, [hl]                                     ; $4ef7: $66
	ld   h, a                                        ; $4ef8: $67
	adc  d                                           ; $4ef9: $8a
	cp   e                                           ; $4efa: $bb
	res  3, c                                        ; $4efb: $cb $99
	add  a                                           ; $4efd: $87
	halt                                             ; $4efe: $76
	ld   h, [hl]                                     ; $4eff: $66
	ld   h, [hl]                                     ; $4f00: $66
	ld   h, [hl]                                     ; $4f01: $66
	ld   a, c                                        ; $4f02: $79
	xor  e                                           ; $4f03: $ab
	cp   e                                           ; $4f04: $bb
	xor  d                                           ; $4f05: $aa
	sub  a                                           ; $4f06: $97
	halt                                             ; $4f07: $76
	ld   h, [hl]                                     ; $4f08: $66
	ld   h, [hl]                                     ; $4f09: $66
	ld   h, [hl]                                     ; $4f0a: $66
	ld   a, b                                        ; $4f0b: $78
	sbc  d                                           ; $4f0c: $9a
	cp   h                                           ; $4f0d: $bc
	xor  c                                           ; $4f0e: $a9
	sbc  b                                           ; $4f0f: $98
	ld   h, a                                        ; $4f10: $67
	ld   h, [hl]                                     ; $4f11: $66
	ld   h, [hl]                                     ; $4f12: $66
	ld   h, [hl]                                     ; $4f13: $66
	ld   a, b                                        ; $4f14: $78
	sbc  e                                           ; $4f15: $9b
	cp   h                                           ; $4f16: $bc
	cp   d                                           ; $4f17: $ba
	xor  b                                           ; $4f18: $a8
	ld   [hl], a                                     ; $4f19: $77
	ld   h, [hl]                                     ; $4f1a: $66
	ld   h, [hl]                                     ; $4f1b: $66
	ld   h, [hl]                                     ; $4f1c: $66
	ld   h, a                                        ; $4f1d: $67
	adc  d                                           ; $4f1e: $8a
	cp   e                                           ; $4f1f: $bb
	cp   e                                           ; $4f20: $bb
	sbc  b                                           ; $4f21: $98
	ld   [hl], a                                     ; $4f22: $77
	halt                                             ; $4f23: $76
	ld   h, [hl]                                     ; $4f24: $66
	ld   h, l                                        ; $4f25: $65
	ld   h, a                                        ; $4f26: $67
	adc  d                                           ; $4f27: $8a
	xor  e                                           ; $4f28: $ab
	res  3, c                                        ; $4f29: $cb $99
	add  a                                           ; $4f2b: $87
	halt                                             ; $4f2c: $76
	ld   h, [hl]                                     ; $4f2d: $66
	ld   h, l                                        ; $4f2e: $65
	ld   h, a                                        ; $4f2f: $67
	ld   a, c                                        ; $4f30: $79
	cp   d                                           ; $4f31: $ba
	res  5, c                                        ; $4f32: $cb $a9
	add  a                                           ; $4f34: $87
	halt                                             ; $4f35: $76
	ld   h, [hl]                                     ; $4f36: $66
	ld   h, l                                        ; $4f37: $65
	ld   h, [hl]                                     ; $4f38: $66
	ld   a, b                                        ; $4f39: $78
	xor  d                                           ; $4f3a: $aa
	cp   h                                           ; $4f3b: $bc
	xor  d                                           ; $4f3c: $aa
	sbc  b                                           ; $4f3d: $98
	ld   [hl], a                                     ; $4f3e: $77
	ld   h, [hl]                                     ; $4f3f: $66
	ld   h, [hl]                                     ; $4f40: $66
	ld   d, [hl]                                     ; $4f41: $56
	ld   h, a                                        ; $4f42: $67
	sbc  d                                           ; $4f43: $9a
	cp   h                                           ; $4f44: $bc
	jp   z, Jump_0eb_77a8                            ; $4f45: $ca $a8 $77

	ld   h, [hl]                                     ; $4f48: $66
	ld   h, [hl]                                     ; $4f49: $66
	ld   d, l                                        ; $4f4a: $55
	ld   h, a                                        ; $4f4b: $67
	adc  d                                           ; $4f4c: $8a
	xor  e                                           ; $4f4d: $ab
	cp   e                                           ; $4f4e: $bb
	sbc  c                                           ; $4f4f: $99
	ld   [hl], a                                     ; $4f50: $77
	halt                                             ; $4f51: $76
	ld   h, [hl]                                     ; $4f52: $66
	ld   d, l                                        ; $4f53: $55
	ld   h, a                                        ; $4f54: $67
	adc  d                                           ; $4f55: $8a
	xor  e                                           ; $4f56: $ab
	cp   e                                           ; $4f57: $bb
	xor  d                                           ; $4f58: $aa
	add  a                                           ; $4f59: $87
	halt                                             ; $4f5a: $76
	ld   h, [hl]                                     ; $4f5b: $66
	ld   h, l                                        ; $4f5c: $65
	ld   d, [hl]                                     ; $4f5d: $56
	ld   a, c                                        ; $4f5e: $79
	cp   e                                           ; $4f5f: $bb
	cp   e                                           ; $4f60: $bb
	xor  d                                           ; $4f61: $aa
	sub  a                                           ; $4f62: $97
	ld   h, a                                        ; $4f63: $67
	ld   h, [hl]                                     ; $4f64: $66
	ld   h, l                                        ; $4f65: $65
	ld   d, [hl]                                     ; $4f66: $56
	ld   a, b                                        ; $4f67: $78
	xor  d                                           ; $4f68: $aa
	cp   h                                           ; $4f69: $bc
	cp   c                                           ; $4f6a: $b9
	xor  b                                           ; $4f6b: $a8
	ld   h, a                                        ; $4f6c: $67
	ld   h, [hl]                                     ; $4f6d: $66
	ld   h, [hl]                                     ; $4f6e: $66
	ld   d, [hl]                                     ; $4f6f: $56
	ld   h, a                                        ; $4f70: $67
	sbc  d                                           ; $4f71: $9a
	cp   e                                           ; $4f72: $bb
	jp   z, Jump_0eb_76a9                            ; $4f73: $ca $a9 $76

	halt                                             ; $4f76: $76
	ld   h, [hl]                                     ; $4f77: $66
	ld   d, l                                        ; $4f78: $55
	ld   h, a                                        ; $4f79: $67
	adc  c                                           ; $4f7a: $89
	xor  e                                           ; $4f7b: $ab
	cp   e                                           ; $4f7c: $bb
	sbc  c                                           ; $4f7d: $99
	sub  [hl]                                        ; $4f7e: $96
	halt                                             ; $4f7f: $76
	ld   h, [hl]                                     ; $4f80: $66
	ld   h, l                                        ; $4f81: $65
	ld   h, [hl]                                     ; $4f82: $66
	ld   a, c                                        ; $4f83: $79
	xor  e                                           ; $4f84: $ab
	cp   h                                           ; $4f85: $bc
	cp   c                                           ; $4f86: $b9
	sub  a                                           ; $4f87: $97
	ld   h, a                                        ; $4f88: $67
	ld   h, [hl]                                     ; $4f89: $66
	ld   h, l                                        ; $4f8a: $65
	ld   h, [hl]                                     ; $4f8b: $66
	ld   a, b                                        ; $4f8c: $78
	sbc  d                                           ; $4f8d: $9a
	cp   e                                           ; $4f8e: $bb
	cp   c                                           ; $4f8f: $b9
	sbc  b                                           ; $4f90: $98
	ld   h, a                                        ; $4f91: $67
	ld   [hl], l                                     ; $4f92: $75
	halt                                             ; $4f93: $76
	ld   d, [hl]                                     ; $4f94: $56
	ld   h, a                                        ; $4f95: $67
	adc  d                                           ; $4f96: $8a
	xor  e                                           ; $4f97: $ab
	cp   d                                           ; $4f98: $ba
	sbc  c                                           ; $4f99: $99
	ld   h, [hl]                                     ; $4f9a: $66
	add  h                                           ; $4f9b: $84
	ld   h, a                                        ; $4f9c: $67
	ld   d, [hl]                                     ; $4f9d: $56
	ld   [hl], a                                     ; $4f9e: $77
	sbc  d                                           ; $4f9f: $9a
	xor  d                                           ; $4fa0: $aa
	cp   c                                           ; $4fa1: $b9
	adc  c                                           ; $4fa2: $89
	ld   h, h                                        ; $4fa3: $64
	add  l                                           ; $4fa4: $85
	ld   c, c                                        ; $4fa5: $49
	ld   h, [hl]                                     ; $4fa6: $66
	adc  b                                           ; $4fa7: $88
	adc  e                                           ; $4fa8: $8b
	jp   z, Jump_0eb_7ada                            ; $4fa9: $ca $da $7a

	ld   [hl], e                                     ; $4fac: $73
	halt                                             ; $4fad: $76
	jr   c, jr_0eb_5015                              ; $4fae: $38 $65

	sbc  b                                           ; $4fb0: $98

jr_0eb_4fb1:
	adc  d                                           ; $4fb1: $8a
	jp   z, Jump_0eb_69cb                            ; $4fb2: $ca $cb $69

	add  c                                           ; $4fb5: $81
	ld   h, a                                        ; $4fb6: $67
	jr   jr_0eb_502e                                 ; $4fb7: $18 $75

	adc  d                                           ; $4fb9: $8a
	adc  d                                           ; $4fba: $8a
	reti                                             ; $4fbb: $d9


	db   $ec                                         ; $4fbc: $ec
	ld   e, c                                        ; $4fbd: $59
	add  c                                           ; $4fbe: $81
	ld   e, b                                        ; $4fbf: $58
	add  hl, de                                      ; $4fc0: $19
	sub  h                                           ; $4fc1: $94
	sbc  d                                           ; $4fc2: $9a
	adc  e                                           ; $4fc3: $8b
	jp   hl                                          ; $4fc4: $e9


	db   $ec                                         ; $4fc5: $ec
	ld   e, b                                        ; $4fc6: $58
	sub  c                                           ; $4fc7: $91
	ld   e, b                                        ; $4fc8: $58
	add  hl, de                                      ; $4fc9: $19
	add  h                                           ; $4fca: $84
	xor  d                                           ; $4fcb: $aa
	adc  e                                           ; $4fcc: $8b
	ld   sp, hl                                      ; $4fcd: $f9
	db   $db                                         ; $4fce: $db
	ld   c, c                                        ; $4fcf: $49
	add  c                                           ; $4fd0: $81
	ld   h, a                                        ; $4fd1: $67
	add  hl, de                                      ; $4fd2: $19
	ld   [hl], l                                     ; $4fd3: $75
	xor  e                                           ; $4fd4: $ab
	adc  l                                           ; $4fd5: $8d
	ld   hl, sp-$06                                  ; $4fd6: $f8 $fa
	ld   c, d                                        ; $4fd8: $4a
	ld   h, c                                        ; $4fd9: $61
	ld   [hl], h                                     ; $4fda: $74
	dec  de                                          ; $4fdb: $1b
	ld   h, [hl]                                     ; $4fdc: $66
	cp   e                                           ; $4fdd: $bb
	adc  a                                           ; $4fde: $8f
	add  sp, -$09                                    ; $4fdf: $e8 $f7
	ld   c, d                                        ; $4fe1: $4a
	ld   sp, $2ca1                                   ; $4fe2: $31 $a1 $2c
	ld   b, a                                        ; $4fe5: $47
	cp   e                                           ; $4fe6: $bb
	adc  a                                           ; $4fe7: $8f
	cp   d                                           ; $4fe8: $ba
	db   $f4                                         ; $4fe9: $f4
	ld   l, d                                        ; $4fea: $6a
	ld   de, $6ba1                                   ; $4feb: $11 $a1 $6b
	ld   c, d                                        ; $4fee: $4a
	jp   z, $9dbf                                    ; $4fef: $ca $bf $9d

	pop  de                                          ; $4ff2: $d1
	and  a                                           ; $4ff3: $a7
	rla                                              ; $4ff4: $17
	ld   d, c                                        ; $4ff5: $51
	rst  ToBoot                                         ; $4ff6: $c7
	ld   l, e                                        ; $4ff7: $6b
	reti                                             ; $4ff8: $d9


	rst  $38                                         ; $4ff9: $ff
	ld   a, a                                        ; $4ffa: $7f
	ld   h, e                                        ; $4ffb: $63
	pop  bc                                          ; $4ffc: $c1
	ld   a, [de]                                     ; $4ffd: $1a
	inc  de                                          ; $4ffe: $13
	call nz, $c9ad                                   ; $4fff: $c4 $ad $c9
	ld   sp, hl                                      ; $5002: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5003: $cf
	dec  de                                          ; $5004: $1b
	ld   [hl], c                                     ; $5005: $71
	ld   [hl], l                                     ; $5006: $75
	dec  de                                          ; $5007: $1b
	halt                                             ; $5008: $76

jr_0eb_5009:
	db   $dd                                         ; $5009: $dd
	adc  a                                           ; $500a: $8f
	push af                                          ; $500b: $f5
	db   $f4                                         ; $500c: $f4
	ld   a, $11                                      ; $500d: $3e $11
	sub  c                                           ; $500f: $91
	ld   l, e                                        ; $5010: $6b
	ld   c, e                                        ; $5011: $4b
	ld   a, [$6dbf]                                  ; $5012: $fa $bf $6d

jr_0eb_5015:
	pop  de                                          ; $5015: $d1
	db   $e3                                         ; $5016: $e3
	ld   a, [de]                                     ; $5017: $1a

jr_0eb_5018:
	ld   de, $8dd5                                   ; $5018: $11 $d5 $8d
	ret  c                                           ; $501b: $d8

	db   $fc                                         ; $501c: $fc
	adc  a                                           ; $501d: $8f
	jr   jr_0eb_4fb1                                 ; $501e: $18 $91

	sub  h                                           ; $5020: $94
	inc  e                                           ; $5021: $1c
	ld   [hl], a                                     ; $5022: $77
	adc  $9f                                         ; $5023: $ce $9f
	push af                                          ; $5025: $f5
	pop  af                                          ; $5026: $f1
	dec  a                                           ; $5027: $3d
	dec  d                                           ; $5028: $15
	add  c                                           ; $5029: $81
	cp   c                                           ; $502a: $b9
	ld   e, h                                        ; $502b: $5c
	ld   sp, hl                                      ; $502c: $f9
	rst  JumpTable                                         ; $502d: $df

jr_0eb_502e:
	ld   c, a                                        ; $502e: $4f
	ld   h, c                                        ; $502f: $61
	pop  af                                          ; $5030: $f1
	ld   a, [hl+]                                    ; $5031: $2a
	ld   a, [de]                                     ; $5032: $1a
	sub  l                                           ; $5033: $95
	cp   [hl]                                        ; $5034: $be
	cp   h                                           ; $5035: $bc
	push af                                          ; $5036: $f5
	jp   hl                                          ; $5037: $e9


	rra                                              ; $5038: $1f
	ld   de, $8bc1                                   ; $5039: $11 $c1 $8b
	ld   c, h                                        ; $503c: $4c
	db   $eb                                         ; $503d: $eb
	cp   a                                           ; $503e: $bf
	ld   l, [hl]                                     ; $503f: $6e
	and  c                                           ; $5040: $a1
	pop  af                                          ; $5041: $f1
	dec  e                                           ; $5042: $1d
	jr   jr_0eb_5009                                 ; $5043: $18 $c4

	call $f7cb                                       ; $5045: $cd $cb $f7
	db   $db                                         ; $5048: $db
	rra                                              ; $5049: $1f
	ld   de, $8ce1                                   ; $504a: $11 $e1 $8c
	dec  a                                           ; $504d: $3d
	ld   [$6dcf], a                                  ; $504e: $ea $cf $6d
	and  c                                           ; $5051: $a1
	pop  af                                          ; $5052: $f1
	rra                                              ; $5053: $1f
	jr   jr_0eb_5018                                 ; $5054: $18 $c2

	db   $ed                                         ; $5056: $ed
	xor  h                                           ; $5057: $ac
	or   $e9                                         ; $5058: $f6 $e9
	rra                                              ; $505a: $1f
	ld   de, $acd1                                   ; $505b: $11 $d1 $ac
	ld   l, $e9                                      ; $505e: $2e $e9
	rst  $28                                         ; $5060: $ef
	ld   l, a                                        ; $5061: $6f
	ld   [hl], c                                     ; $5062: $71
	pop  af                                          ; $5063: $f1
	inc  a                                           ; $5064: $3c
	inc  e                                           ; $5065: $1c
	sub  e                                           ; $5066: $93
	db   $fc                                         ; $5067: $fc
	sbc  a                                           ; $5068: $9f
	or   $f4                                         ; $5069: $f6 $f4
	ld   e, $16                                      ; $506b: $1e $16
	and  c                                           ; $506d: $a1
	rst  $20                                         ; $506e: $e7
	ld   c, a                                        ; $506f: $4f
	cp   d                                           ; $5070: $ba
	cp   $7f                                         ; $5071: $fe $7f
	dec  d                                           ; $5073: $15
	or   c                                           ; $5074: $b1
	and  l                                           ; $5075: $a5
	rra                                              ; $5076: $1f
	ld   d, [hl]                                     ; $5077: $56
	ld   a, [$b9bf]                                  ; $5078: $fa $bf $b9
	pop  hl                                          ; $507b: $e1
	add  a                                           ; $507c: $87
	dec  e                                           ; $507d: $1d
	ld   de, $aff3                                   ; $507e: $11 $f3 $af
	sbc  h                                           ; $5081: $9c
	ld   hl, sp-$45                                  ; $5082: $f8 $bb
	inc  e                                           ; $5084: $1c
	ld   hl, $5ed1                                   ; $5085: $21 $d1 $5e
	inc  l                                           ; $5088: $2c
	rst  $20                                         ; $5089: $e7
	rst  $38                                         ; $508a: $ff
	ld   a, l                                        ; $508b: $7d
	ld   [hl], c                                     ; $508c: $71
	pop  de                                          ; $508d: $d1
	inc  e                                           ; $508e: $1c
	add  hl, de                                      ; $508f: $19
	pop  bc                                          ; $5090: $c1
	db   $ec                                         ; $5091: $ec
	ld   a, a                                        ; $5092: $7f
	rst  $20                                         ; $5093: $e7
	db   $e4                                         ; $5094: $e4
	dec  a                                           ; $5095: $3d
	dec  d                                           ; $5096: $15
	or   c                                           ; $5097: $b1
	ret                                              ; $5098: $c9


	cpl                                              ; $5099: $2f
	cp   b                                           ; $509a: $b8
	ei                                               ; $509b: $fb
	sbc  [hl]                                        ; $509c: $9e
	ld   d, $b1                                      ; $509d: $16 $b1
	sub  a                                           ; $509f: $97
	rra                                              ; $50a0: $1f
	ld   h, l                                        ; $50a1: $65
	ld   hl, sp-$51                                  ; $50a2: $f8 $af
	adc  d                                           ; $50a4: $8a
	pop  bc                                          ; $50a5: $c1
	sbc  b                                           ; $50a6: $98
	inc  e                                           ; $50a7: $1c
	ld   b, c                                        ; $50a8: $41
	db   $f4                                         ; $50a9: $f4
	ld   a, a                                        ; $50aa: $7f
	ld   l, h                                        ; $50ab: $6c
	rst  $30                                         ; $50ac: $f7
	jp   z, Jump_0eb_611a                            ; $50ad: $ca $1a $61

	jp   $482f                                       ; $50b0: $c3 $2f $48


	or   $ce                                         ; $50b3: $f6 $ce
	ld   a, e                                        ; $50b5: $7b
	sub  c                                           ; $50b6: $91
	and  [hl]                                        ; $50b7: $a6
	inc  e                                           ; $50b8: $1c
	inc  sp                                          ; $50b9: $33
	call nc, Call_0eb_6c9e                           ; $50ba: $d4 $9e $6c
	rst  $20                                         ; $50bd: $e7
	cp   b                                           ; $50be: $b8
	dec  sp                                          ; $50bf: $3b
	ld   h, d                                        ; $50c0: $62
	or   h                                           ; $50c1: $b4
	ld   c, h                                        ; $50c2: $4c
	ld   c, b                                        ; $50c3: $48
	sub  $cc                                         ; $50c4: $d6 $cc
	ld   a, e                                        ; $50c6: $7b
	add  h                                           ; $50c7: $84
	or   a                                           ; $50c8: $b7
	ld   a, [hl-]                                    ; $50c9: $3a
	ld   h, e                                        ; $50ca: $63
	add  $7c                                         ; $50cb: $c6 $7c
	ld   l, d                                        ; $50cd: $6a
	rst  ToBoot                                         ; $50ce: $c7
	xor  d                                           ; $50cf: $aa
	ld   e, d                                        ; $50d0: $5a
	add  h                                           ; $50d1: $84
	add  a                                           ; $50d2: $87
	ld   c, c                                        ; $50d3: $49
	halt                                             ; $50d4: $76
	or   a                                           ; $50d5: $b7
	sbc  h                                           ; $50d6: $9c
	sbc  c                                           ; $50d7: $99
	and  a                                           ; $50d8: $a7
	adc  c                                           ; $50d9: $89
	ld   d, a                                        ; $50da: $57
	sub  l                                           ; $50db: $95
	adc  c                                           ; $50dc: $89
	ld   l, c                                        ; $50dd: $69
	add  a                                           ; $50de: $87
	xor  c                                           ; $50df: $a9
	adc  d                                           ; $50e0: $8a
	add  a                                           ; $50e1: $87
	and  a                                           ; $50e2: $a7
	ld   a, c                                        ; $50e3: $79
	ld   h, [hl]                                     ; $50e4: $66
	add  [hl]                                        ; $50e5: $86
	ld   a, c                                        ; $50e6: $79
	ld   a, c                                        ; $50e7: $79
	xor  b                                           ; $50e8: $a8
	xor  b                                           ; $50e9: $a8
	ld   a, c                                        ; $50ea: $79
	sub  a                                           ; $50eb: $97
	add  a                                           ; $50ec: $87
	ld   l, b                                        ; $50ed: $68
	ld   [hl], a                                     ; $50ee: $77
	add  a                                           ; $50ef: $87
	adc  c                                           ; $50f0: $89
	adc  c                                           ; $50f1: $89
	sbc  b                                           ; $50f2: $98
	sbc  c                                           ; $50f3: $99
	add  a                                           ; $50f4: $87
	add  a                                           ; $50f5: $87
	ld   a, b                                        ; $50f6: $78
	ld   a, b                                        ; $50f7: $78
	ld   [hl], a                                     ; $50f8: $77
	sbc  b                                           ; $50f9: $98
	sbc  c                                           ; $50fa: $99
	adc  c                                           ; $50fb: $89
	sbc  b                                           ; $50fc: $98
	adc  b                                           ; $50fd: $88
	ld   [hl], a                                     ; $50fe: $77
	ld   [hl], a                                     ; $50ff: $77
	add  a                                           ; $5100: $87
	ld   a, c                                        ; $5101: $79
	adc  b                                           ; $5102: $88
	sbc  b                                           ; $5103: $98
	sbc  c                                           ; $5104: $99
	adc  c                                           ; $5105: $89
	add  a                                           ; $5106: $87
	add  a                                           ; $5107: $87
	ld   a, b                                        ; $5108: $78
	ld   a, b                                        ; $5109: $78
	sbc  b                                           ; $510a: $98
	sbc  b                                           ; $510b: $98
	sbc  d                                           ; $510c: $9a
	adc  c                                           ; $510d: $89
	add  a                                           ; $510e: $87
	adc  b                                           ; $510f: $88
	ld   [hl], a                                     ; $5110: $77
	ld   [hl], a                                     ; $5111: $77
	adc  b                                           ; $5112: $88
	adc  c                                           ; $5113: $89
	sbc  c                                           ; $5114: $99
	sbc  b                                           ; $5115: $98
	ld   a, b                                        ; $5116: $78
	add  a                                           ; $5117: $87
	add  a                                           ; $5118: $87
	ld   a, b                                        ; $5119: $78
	adc  b                                           ; $511a: $88
	adc  c                                           ; $511b: $89
	adc  b                                           ; $511c: $88
	adc  b                                           ; $511d: $88
	add  a                                           ; $511e: $87

Jump_0eb_511f:
	ld   [hl], a                                     ; $511f: $77
	ld   a, b                                        ; $5120: $78
	adc  b                                           ; $5121: $88
	sbc  c                                           ; $5122: $99
	adc  b                                           ; $5123: $88
	sbc  c                                           ; $5124: $99
	adc  b                                           ; $5125: $88
	ld   [hl], a                                     ; $5126: $77
	ld   [hl], a                                     ; $5127: $77
	ld   [hl], a                                     ; $5128: $77
	adc  b                                           ; $5129: $88
	sbc  b                                           ; $512a: $98
	adc  b                                           ; $512b: $88
	sbc  c                                           ; $512c: $99
	add  a                                           ; $512d: $87
	adc  b                                           ; $512e: $88
	ld   [hl], a                                     ; $512f: $77
	ld   a, b                                        ; $5130: $78
	adc  c                                           ; $5131: $89
	add  a                                           ; $5132: $87
	ld   a, b                                        ; $5133: $78
	ld   a, b                                        ; $5134: $78
	add  a                                           ; $5135: $87
	ld   a, c                                        ; $5136: $79
	adc  b                                           ; $5137: $88
	sbc  b                                           ; $5138: $98
	sbc  c                                           ; $5139: $99
	adc  b                                           ; $513a: $88
	adc  b                                           ; $513b: $88
	adc  b                                           ; $513c: $88
	add  a                                           ; $513d: $87
	adc  b                                           ; $513e: $88
	adc  b                                           ; $513f: $88
	adc  b                                           ; $5140: $88
	adc  b                                           ; $5141: $88
	adc  b                                           ; $5142: $88
	adc  b                                           ; $5143: $88
	sbc  b                                           ; $5144: $98
	ld   a, b                                        ; $5145: $78
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
	ld   a, b                                        ; $5163: $78
	sub  a                                           ; $5164: $97
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
	sbc  b                                           ; $5172: $98
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
	sbc  b                                           ; $518c: $98
	adc  c                                           ; $518d: $89
	adc  b                                           ; $518e: $88
	adc  b                                           ; $518f: $88
	adc  b                                           ; $5190: $88
	adc  b                                           ; $5191: $88
	adc  b                                           ; $5192: $88
	adc  b                                           ; $5193: $88
	adc  b                                           ; $5194: $88
	adc  b                                           ; $5195: $88
	adc  b                                           ; $5196: $88

Jump_0eb_5197:
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
	adc  c                                           ; $51b4: $89
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
	sbc  b                                           ; $51c1: $98
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
	ld   a, c                                        ; $51de: $79
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
	adc  c                                           ; $51eb: $89
	adc  b                                           ; $51ec: $88
	adc  b                                           ; $51ed: $88
	adc  b                                           ; $51ee: $88
	adc  b                                           ; $51ef: $88
	adc  b                                           ; $51f0: $88
	adc  b                                           ; $51f1: $88
	adc  b                                           ; $51f2: $88
	adc  b                                           ; $51f3: $88
	ld   [hl], a                                     ; $51f4: $77
	sbc  e                                           ; $51f5: $9b
	ld   d, a                                        ; $51f6: $57
	and  l                                           ; $51f7: $a5
	sbc  d                                           ; $51f8: $9a
	ld   l, b                                        ; $51f9: $68
	adc  b                                           ; $51fa: $88
	sbc  c                                           ; $51fb: $99
	ld   [hl], a                                     ; $51fc: $77
	add  a                                           ; $51fd: $87
	adc  c                                           ; $51fe: $89
	ld   [hl], a                                     ; $51ff: $77
	adc  b                                           ; $5200: $88
	ld   a, b                                        ; $5201: $78
	adc  c                                           ; $5202: $89
	adc  b                                           ; $5203: $88
	add  a                                           ; $5204: $87
	adc  b                                           ; $5205: $88
	adc  b                                           ; $5206: $88
	ld   [hl], a                                     ; $5207: $77
	adc  c                                           ; $5208: $89
	adc  b                                           ; $5209: $88
	add  a                                           ; $520a: $87
	sbc  b                                           ; $520b: $98
	add  a                                           ; $520c: $87
	ld   a, b                                        ; $520d: $78
	adc  b                                           ; $520e: $88
	xor  b                                           ; $520f: $a8
	adc  b                                           ; $5210: $88
	ld   a, c                                        ; $5211: $79
	ld   a, b                                        ; $5212: $78
	ld   [hl], a                                     ; $5213: $77
	add  a                                           ; $5214: $87
	sub  a                                           ; $5215: $97
	adc  c                                           ; $5216: $89
	adc  c                                           ; $5217: $89
	ld   a, c                                        ; $5218: $79
	add  a                                           ; $5219: $87
	adc  b                                           ; $521a: $88
	sub  a                                           ; $521b: $97
	ld   a, c                                        ; $521c: $79
	ld   a, c                                        ; $521d: $79
	adc  c                                           ; $521e: $89
	add  a                                           ; $521f: $87
	add  a                                           ; $5220: $87
	add  a                                           ; $5221: $87
	adc  b                                           ; $5222: $88
	ld   [hl], a                                     ; $5223: $77
	adc  b                                           ; $5224: $88
	adc  b                                           ; $5225: $88
	adc  b                                           ; $5226: $88
	ld   [hl], a                                     ; $5227: $77
	adc  b                                           ; $5228: $88
	sbc  b                                           ; $5229: $98
	ld   a, b                                        ; $522a: $78
	add  a                                           ; $522b: $87
	sub  [hl]                                        ; $522c: $96
	adc  b                                           ; $522d: $88
	adc  d                                           ; $522e: $8a
	ld   [hl], a                                     ; $522f: $77
	adc  c                                           ; $5230: $89
	and  a                                           ; $5231: $a7
	add  a                                           ; $5232: $87
	adc  c                                           ; $5233: $89
	ld   a, b                                        ; $5234: $78
	ld   l, c                                        ; $5235: $69
	adc  b                                           ; $5236: $88
	sub  a                                           ; $5237: $97
	sbc  b                                           ; $5238: $98
	adc  b                                           ; $5239: $88
	adc  c                                           ; $523a: $89
	adc  c                                           ; $523b: $89
	sbc  b                                           ; $523c: $98
	ld   a, b                                        ; $523d: $78
	ld   a, c                                        ; $523e: $79
	add  a                                           ; $523f: $87
	adc  b                                           ; $5240: $88
	add  a                                           ; $5241: $87
	add  a                                           ; $5242: $87
	add  a                                           ; $5243: $87
	adc  c                                           ; $5244: $89
	ld   a, b                                        ; $5245: $78
	adc  b                                           ; $5246: $88
	sbc  b                                           ; $5247: $98
	sbc  b                                           ; $5248: $98
	add  a                                           ; $5249: $87
	sub  a                                           ; $524a: $97
	ld   a, c                                        ; $524b: $79
	ld   a, b                                        ; $524c: $78
	add  a                                           ; $524d: $87
	add  a                                           ; $524e: $87
	adc  c                                           ; $524f: $89
	adc  b                                           ; $5250: $88
	adc  c                                           ; $5251: $89
	ld   a, b                                        ; $5252: $78
	add  a                                           ; $5253: $87
	add  a                                           ; $5254: $87
	sub  a                                           ; $5255: $97
	adc  c                                           ; $5256: $89
	ld   a, b                                        ; $5257: $78
	adc  b                                           ; $5258: $88
	add  a                                           ; $5259: $87
	sub  a                                           ; $525a: $97
	add  a                                           ; $525b: $87
	adc  b                                           ; $525c: $88
	ld   a, b                                        ; $525d: $78
	ld   a, b                                        ; $525e: $78
	sub  a                                           ; $525f: $97
	adc  b                                           ; $5260: $88
	adc  c                                           ; $5261: $89
	ld   a, c                                        ; $5262: $79
	sbc  b                                           ; $5263: $98
	adc  b                                           ; $5264: $88
	sub  a                                           ; $5265: $97
	ld   a, b                                        ; $5266: $78
	ld   [hl], a                                     ; $5267: $77
	ld   a, b                                        ; $5268: $78
	adc  b                                           ; $5269: $88
	adc  b                                           ; $526a: $88
	adc  b                                           ; $526b: $88
	sbc  c                                           ; $526c: $99
	adc  b                                           ; $526d: $88
	add  a                                           ; $526e: $87
	adc  b                                           ; $526f: $88
	add  a                                           ; $5270: $87
	sbc  b                                           ; $5271: $98
	adc  b                                           ; $5272: $88
	ld   a, c                                        ; $5273: $79
	adc  c                                           ; $5274: $89
	adc  b                                           ; $5275: $88
	adc  c                                           ; $5276: $89
	adc  b                                           ; $5277: $88
	adc  b                                           ; $5278: $88
	adc  c                                           ; $5279: $89
	adc  c                                           ; $527a: $89
	adc  b                                           ; $527b: $88
	ld   a, c                                        ; $527c: $79
	adc  b                                           ; $527d: $88
	sub  a                                           ; $527e: $97
	adc  b                                           ; $527f: $88
	adc  b                                           ; $5280: $88
	adc  c                                           ; $5281: $89
	ld   a, b                                        ; $5282: $78
	adc  b                                           ; $5283: $88
	adc  b                                           ; $5284: $88
	sub  a                                           ; $5285: $97
	sbc  b                                           ; $5286: $98
	adc  c                                           ; $5287: $89
	ld   a, b                                        ; $5288: $78
	adc  b                                           ; $5289: $88
	adc  b                                           ; $528a: $88
	adc  b                                           ; $528b: $88
	adc  b                                           ; $528c: $88
	adc  b                                           ; $528d: $88
	adc  c                                           ; $528e: $89
	adc  c                                           ; $528f: $89
	adc  b                                           ; $5290: $88
	sbc  b                                           ; $5291: $98
	adc  b                                           ; $5292: $88
	adc  b                                           ; $5293: $88
	adc  c                                           ; $5294: $89
	adc  b                                           ; $5295: $88
	sbc  b                                           ; $5296: $98
	sbc  b                                           ; $5297: $98
	sbc  b                                           ; $5298: $98
	adc  b                                           ; $5299: $88
	adc  c                                           ; $529a: $89
	ld   a, c                                        ; $529b: $79
	adc  b                                           ; $529c: $88
	sbc  b                                           ; $529d: $98
	adc  b                                           ; $529e: $88
	adc  b                                           ; $529f: $88
	sbc  b                                           ; $52a0: $98
	adc  b                                           ; $52a1: $88
	ld   a, c                                        ; $52a2: $79
	adc  b                                           ; $52a3: $88
	adc  b                                           ; $52a4: $88
	adc  b                                           ; $52a5: $88
	sbc  b                                           ; $52a6: $98
	adc  b                                           ; $52a7: $88
	adc  b                                           ; $52a8: $88
	adc  c                                           ; $52a9: $89
	adc  b                                           ; $52aa: $88
	adc  b                                           ; $52ab: $88
	sbc  b                                           ; $52ac: $98
	adc  b                                           ; $52ad: $88
	adc  b                                           ; $52ae: $88
	ld   a, b                                        ; $52af: $78
	adc  b                                           ; $52b0: $88
	adc  b                                           ; $52b1: $88
	adc  b                                           ; $52b2: $88
	adc  b                                           ; $52b3: $88
	sbc  b                                           ; $52b4: $98
	adc  c                                           ; $52b5: $89
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

Jump_0eb_5376:
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

Call_0eb_5397:
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
	adc  c                                           ; $5467: $89
	adc  b                                           ; $5468: $88
	sbc  b                                           ; $5469: $98
	adc  b                                           ; $546a: $88
	adc  b                                           ; $546b: $88
	adc  b                                           ; $546c: $88
	adc  c                                           ; $546d: $89
	adc  b                                           ; $546e: $88
	sbc  b                                           ; $546f: $98
	adc  b                                           ; $5470: $88
	adc  b                                           ; $5471: $88
	adc  b                                           ; $5472: $88
	adc  b                                           ; $5473: $88
	adc  b                                           ; $5474: $88
	adc  b                                           ; $5475: $88
	adc  b                                           ; $5476: $88
	add  a                                           ; $5477: $87
	adc  b                                           ; $5478: $88
	adc  b                                           ; $5479: $88
	sbc  b                                           ; $547a: $98
	adc  c                                           ; $547b: $89
	adc  b                                           ; $547c: $88
	add  a                                           ; $547d: $87
	ld   l, c                                        ; $547e: $69
	add  [hl]                                        ; $547f: $86
	sbc  b                                           ; $5480: $98
	ld   l, b                                        ; $5481: $68
	sbc  b                                           ; $5482: $98
	ld   a, c                                        ; $5483: $79
	adc  b                                           ; $5484: $88
	sbc  d                                           ; $5485: $9a
	sbc  c                                           ; $5486: $99
	and  l                                           ; $5487: $a5
	ld   c, e                                        ; $5488: $4b
	ld   d, e                                        ; $5489: $53
	push bc                                          ; $548a: $c5
	ld   e, c                                        ; $548b: $59
	and  a                                           ; $548c: $a7
	ld   a, h                                        ; $548d: $7c
	sbc  c                                           ; $548e: $99
	res  1, c                                        ; $548f: $cb $89
	ld   d, h                                        ; $5491: $54
	or   c                                           ; $5492: $b1
	dec  sp                                          ; $5493: $3b
	rla                                              ; $5494: $17
	sbc  d                                           ; $5495: $9a
	adc  d                                           ; $5496: $8a
	jp   hl                                          ; $5497: $e9


	db   $dd                                         ; $5498: $dd
	cp   b                                           ; $5499: $b8
	ld   d, c                                        ; $549a: $51
	and  e                                           ; $549b: $a3
	dec  e                                           ; $549c: $1d
	ld   [hl-], a                                    ; $549d: $32
	jp   z, $fca9                                    ; $549e: $ca $a9 $fc

	cp   a                                           ; $54a1: $bf
	and  a                                           ; $54a2: $a7
	ld   sp, $1e73                                   ; $54a3: $31 $73 $1e
	ld   d, d                                        ; $54a6: $52

Jump_0eb_54a7:
	db   $fc                                         ; $54a7: $fc
	jp   z, $affa                                    ; $54a8: $ca $fa $af

	ld   [hl], l                                     ; $54ab: $75
	ld   de, $1f91                                   ; $54ac: $11 $91 $1f

jr_0eb_54af:
	jr   z, jr_0eb_54af                              ; $54af: $28 $fe

	cp   h                                           ; $54b1: $bc
	or   $cb                                         ; $54b2: $f6 $cb
	inc  sp                                          ; $54b4: $33
	dec  d                                           ; $54b5: $15
	add  c                                           ; $54b6: $81
	sbc  $1f                                         ; $54b7: $de $1f
	cp   $6f                                         ; $54b9: $fe $6f
	jp   nz, $21f4                                   ; $54bb: $c2 $f4 $21

	dec  e                                           ; $54be: $1d
	ld   de, $bff2                                   ; $54bf: $11 $f2 $bf
	add  sp, -$51                                    ; $54c2: $e8 $af
	dec  de                                          ; $54c4: $1b
	pop  bc                                          ; $54c5: $c1
	ld   sp, $1f6b                                   ; $54c6: $31 $6b $1f
	pop  af                                          ; $54c9: $f1
	rst  $38                                         ; $54ca: $ff
	call nz, $1ffb                                   ; $54cb: $c4 $fb $1f
	ld   d, h                                        ; $54ce: $54
	ld   hl, $1f99                                   ; $54cf: $21 $99 $1f
	jp   $c3fe                                       ; $54d2: $c3 $fe $c3


	or   $5e                                         ; $54d5: $f6 $5e
	ld   d, [hl]                                     ; $54d7: $56
	ld   de, $1fd5                                   ; $54d8: $11 $d5 $1f
	add  l                                           ; $54db: $85
	rst  $38                                         ; $54dc: $ff
	sub  e                                           ; $54dd: $93
	di                                               ; $54de: $f3
	ld   a, [hl]                                     ; $54df: $7e
	ld   b, h                                        ; $54e0: $44
	ld   de, $1ff2                                   ; $54e1: $11 $f2 $1f
	ld   e, b                                        ; $54e4: $58
	rst  $38                                         ; $54e5: $ff
	ld   [hl], e                                     ; $54e6: $73
	pop  af                                          ; $54e7: $f1
	sbc  [hl]                                        ; $54e8: $9e
	ld   b, e                                        ; $54e9: $43
	ld   de, $2ff1                                   ; $54ea: $11 $f1 $2f
	inc  e                                           ; $54ed: $1c
	rst  $38                                         ; $54ee: $ff
	scf                                              ; $54ef: $37
	pop  af                                          ; $54f0: $f1
	call z, $1142                                    ; $54f1: $cc $42 $11
	pop  af                                          ; $54f4: $f1
	ld   a, a                                        ; $54f5: $7f
	ld   e, $ff                                      ; $54f6: $1e $ff
	ld   a, [de]                                     ; $54f8: $1a
	pop  af                                          ; $54f9: $f1
	ei                                               ; $54fa: $fb
	ld   hl, $f116                                   ; $54fb: $21 $16 $f1
	rst  $38                                         ; $54fe: $ff
	rra                                              ; $54ff: $1f
	rst  $38                                         ; $5500: $ff
	rra                                              ; $5501: $1f
	pop  de                                          ; $5502: $d1
	rst  $30                                         ; $5503: $f7
	ld   hl, $c11b                                   ; $5504: $21 $1b $c1

jr_0eb_5507:
	rst  $38                                         ; $5507: $ff
	cpl                                              ; $5508: $2f
	db   $fd                                         ; $5509: $fd
	rra                                              ; $550a: $1f
	ld   h, c                                        ; $550b: $61
	db   $f4                                         ; $550c: $f4
	ld   b, c                                        ; $550d: $41
	rra                                              ; $550e: $1f
	ld   sp, $6ffb                                   ; $550f: $31 $fb $6f
	rst  $30                                         ; $5512: $f7
	rra                                              ; $5513: $1f
	jr   jr_0eb_5507                                 ; $5514: $18 $f1

	ld   sp, $151f                                   ; $5516: $31 $1f $15
	db   $f4                                         ; $5519: $f4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $551a: $cf
	pop  af                                          ; $551b: $f1
	sbc  a                                           ; $551c: $9f
	rra                                              ; $551d: $1f
	and  d                                           ; $551e: $a2
	ld   de, $1fda                                   ; $551f: $11 $da $1f
	di                                               ; $5522: $f3
	rst  $38                                         ; $5523: $ff
	pop  bc                                          ; $5524: $c1
	push af                                          ; $5525: $f5
	cpl                                              ; $5526: $2f
	ld   [hl+], a                                    ; $5527: $22
	ld   de, $3ff1                                   ; $5528: $11 $f1 $3f
	adc  c                                           ; $552b: $89
	rst  $38                                         ; $552c: $ff
	ld   c, b                                        ; $552d: $48
	pop  af                                          ; $552e: $f1
	jp   c, $1f11                                    ; $552f: $da $11 $1f

	ld   [hl], c                                     ; $5532: $71
	rst  $38                                         ; $5533: $ff
	ld   e, a                                        ; $5534: $5f
	ld   sp, hl                                      ; $5535: $f9
	cpl                                              ; $5536: $2f
	inc  [hl]                                        ; $5537: $34
	pop  af                                          ; $5538: $f1
	ld   de, $1f9f                                   ; $5539: $11 $9f $1f
	db   $f4                                         ; $553c: $f4
	rst  $38                                         ; $553d: $ff
	pop  hl                                          ; $553e: $e1
	ld   a, [$311f]                                  ; $553f: $fa $1f $31
	rla                                              ; $5542: $17
	pop  af                                          ; $5543: $f1
	rst  $38                                         ; $5544: $ff
	ld   e, [hl]                                     ; $5545: $5e
	rst  $38                                         ; $5546: $ff
	rra                                              ; $5547: $1f
	pop  bc                                          ; $5548: $c1
	db   $d3                                         ; $5549: $d3
	ld   de, $1faf                                   ; $554a: $11 $af $1f
	push af                                          ; $554d: $f5
	rst  $28                                         ; $554e: $ef
	pop  af                                          ; $554f: $f1
	ld   sp, hl                                      ; $5550: $f9
	inc  e                                           ; $5551: $1c
	ld   de, $a11f                                   ; $5552: $11 $1f $a1
	rst  $38                                         ; $5555: $ff
	ld   l, a                                        ; $5556: $6f
	ld   a, [$411f]                                  ; $5557: $fa $1f $41
	sub  c                                           ; $555a: $91
	ld   de, $8ff1                                   ; $555b: $11 $f1 $8f
	xor  d                                           ; $555e: $aa
	rst  $38                                         ; $555f: $ff
	dec  de                                          ; $5560: $1b
	pop  af                                          ; $5561: $f1
	ld   [hl], e                                     ; $5562: $73
	ld   de, $1fbc                                   ; $5563: $11 $bc $1f
	ld   sp, hl                                      ; $5566: $f9
	rst  $38                                         ; $5567: $ff
	and  e                                           ; $5568: $a3
	di                                               ; $5569: $f3
	dec  d                                           ; $556a: $15
	ld   de, $1f6f                                   ; $556b: $11 $6f $1f
	ld   a, [$c3ff]                                  ; $556e: $fa $ff $c3
	push af                                          ; $5571: $f5
	inc  de                                          ; $5572: $13
	ld   de, $1f6e                                   ; $5573: $11 $6e $1f
	db   $fd                                         ; $5576: $fd
	rst  $38                                         ; $5577: $ff
	jp   $11d4                                       ; $5578: $c3 $d4 $11


	ld   de, $9fa7                                   ; $557b: $11 $a7 $9f
	rst  $38                                         ; $557e: $ff
	rst  $38                                         ; $557f: $ff
	sbc  c                                           ; $5580: $99
	and  c                                           ; $5581: $a1
	ld   de, $9515                                   ; $5582: $11 $15 $95
	rst  $38                                         ; $5585: $ff
	rst  $38                                         ; $5586: $ff
	cp   $6a                                         ; $5587: $fe $6a
	ld   sp, $5711                                   ; $5589: $31 $11 $57
	ld   c, a                                        ; $558c: $4f
	rst  $38                                         ; $558d: $ff
	rst  $38                                         ; $558e: $ff
	rst  $20                                         ; $558f: $e7
	pop  bc                                          ; $5590: $c1
	ld   de, $5915                                   ; $5591: $11 $15 $59
	rst  $38                                         ; $5594: $ff
	rst  $38                                         ; $5595: $ff
	db   $fc                                         ; $5596: $fc
	ld   a, d                                        ; $5597: $7a
	ld   de, $a311                                   ; $5598: $11 $11 $a3
	cp   a                                           ; $559b: $bf
	rst  $38                                         ; $559c: $ff
	rst  $38                                         ; $559d: $ff
	ld   l, b                                        ; $559e: $68
	add  c                                           ; $559f: $81
	ld   de, $4f25                                   ; $55a0: $11 $25 $4f
	rst  $38                                         ; $55a3: $ff
	rst  $38                                         ; $55a4: $ff
	push bc                                          ; $55a5: $c5
	pop  bc                                          ; $55a6: $c1
	ld   de, $1f17                                   ; $55a7: $11 $17 $1f
	rst  $38                                         ; $55aa: $ff
	rst  $38                                         ; $55ab: $ff
	or   $c1                                         ; $55ac: $f6 $c1
	ld   de, $2b16                                   ; $55ae: $11 $16 $2b
	rst  $38                                         ; $55b1: $ff
	rst  $38                                         ; $55b2: $ff
	ld   hl, sp-$59                                  ; $55b3: $f8 $a7
	ld   de, $5211                                   ; $55b5: $11 $11 $52
	rst  $38                                         ; $55b8: $ff
	rst  $38                                         ; $55b9: $ff
	rst  $38                                         ; $55ba: $ff
	ld   a, l                                        ; $55bb: $7d
	ld   de, $5111                                   ; $55bc: $11 $11 $51
	cp   a                                           ; $55bf: $bf
	rst  $38                                         ; $55c0: $ff
	rst  $38                                         ; $55c1: $ff
	adc  d                                           ; $55c2: $8a
	ld   h, c                                        ; $55c3: $61
	ld   de, $3f15                                   ; $55c4: $11 $15 $3f
	rst  $38                                         ; $55c7: $ff
	rst  $38                                         ; $55c8: $ff
	ld   hl, sp-$4f                                  ; $55c9: $f8 $b1
	ld   de, $2913                                   ; $55cb: $11 $13 $29
	rst  $38                                         ; $55ce: $ff
	rst  $38                                         ; $55cf: $ff
	ei                                               ; $55d0: $fb
	sub  a                                           ; $55d1: $97
	ld   de, $4111                                   ; $55d2: $11 $11 $41
	rst  $28                                         ; $55d5: $ef

Jump_0eb_55d6:
	rst  $38                                         ; $55d6: $ff
	rst  $38                                         ; $55d7: $ff
	adc  l                                           ; $55d8: $8d
	ld   hl, $1211                                   ; $55d9: $21 $11 $12
	ccf                                              ; $55dc: $3f
	rst  $38                                         ; $55dd: $ff
	rst  $38                                         ; $55de: $ff
	ei                                               ; $55df: $fb
	pop  bc                                          ; $55e0: $c1
	ld   de, $2411                                   ; $55e1: $11 $11 $24
	rst  $38                                         ; $55e4: $ff
	rst  $38                                         ; $55e5: $ff
	db   $fd                                         ; $55e6: $fd
	ret                                              ; $55e7: $c9


	ld   de, $1111                                   ; $55e8: $11 $11 $11
	ld   e, a                                        ; $55eb: $5f
	rst  $38                                         ; $55ec: $ff
	rst  $38                                         ; $55ed: $ff
	db   $fc                                         ; $55ee: $fc
	sub  c                                           ; $55ef: $91
	ld   de, $1411                                   ; $55f0: $11 $11 $14
	rst  $38                                         ; $55f3: $ff
	rst  $38                                         ; $55f4: $ff
	cp   $da                                         ; $55f5: $fe $da
	ld   de, $1211                                   ; $55f7: $11 $11 $12
	ld   c, a                                        ; $55fa: $4f
	rst  $38                                         ; $55fb: $ff
	rst  $38                                         ; $55fc: $ff
	db   $ed                                         ; $55fd: $ed
	or   c                                           ; $55fe: $b1
	ld   bc, $4311                                   ; $55ff: $01 $11 $43
	rst  JumpTable                                         ; $5602: $df
	rst  $28                                         ; $5603: $ef
	rst  $38                                         ; $5604: $ff
	cp   l                                           ; $5605: $bd
	ld   sp, $1311                                   ; $5606: $31 $11 $13

jr_0eb_5609:
	jr   c, jr_0eb_5609                              ; $5609: $38 $fe

	rst  $38                                         ; $560b: $ff
	db   $fd                                         ; $560c: $fd
	rst  ToBoot                                         ; $560d: $c7
	ld   [de], a                                     ; $560e: $12
	ld   de, $4d14                                   ; $560f: $11 $14 $4d
	rst  $38                                         ; $5612: $ff
	rst  $38                                         ; $5613: $ff
	db   $fc                                         ; $5614: $fc
	jp   $1111                                       ; $5615: $c3 $11 $11


	inc  sp                                          ; $5618: $33
	ld   l, a                                        ; $5619: $6f
	rst  JumpTable                                         ; $561a: $df
	rst  $38                                         ; $561b: $ff
	db   $ed                                         ; $561c: $ed
	sub  d                                           ; $561d: $92
	ld   hl, $3211                                   ; $561e: $21 $11 $32
	sbc  a                                           ; $5621: $9f
	rst  $28                                         ; $5622: $ef
	rst  $38                                         ; $5623: $ff
	sbc  $63                                         ; $5624: $de $63
	ld   de, $3211                                   ; $5626: $11 $11 $32
	adc  $ef                                         ; $5629: $ce $ef
	rst  $38                                         ; $562b: $ff
	rst  JumpTable                                         ; $562c: $df
	ld   d, e                                        ; $562d: $53
	ld   hl, $3211                                   ; $562e: $21 $11 $32
	call $ffdf                                       ; $5631: $cd $df $ff
	xor  $64                                         ; $5634: $ee $64
	ld   sp, $2111                                   ; $5636: $31 $11 $21
	xor  h                                           ; $5639: $ac
	rst  JumpTable                                         ; $563a: $df
	rst  $38                                         ; $563b: $ff
	rst  $28                                         ; $563c: $ef
	sub  l                                           ; $563d: $95
	ld   b, c                                        ; $563e: $41
	ld   de, $4c21                                   ; $563f: $11 $21 $4c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5642: $cf
	rst  $38                                         ; $5643: $ff
	cp   $d6                                         ; $5644: $fe $d6
	ld   d, d                                        ; $5646: $52
	ld   de, $1911                                   ; $5647: $11 $11 $19
	xor  h                                           ; $564a: $ac
	rst  $38                                         ; $564b: $ff
	rst  $38                                         ; $564c: $ff
	ld   a, [$1175]                                  ; $564d: $fa $75 $11
	ld   de, $9a13                                   ; $5650: $11 $13 $9a
	rst  $28                                         ; $5653: $ef
	rst  $38                                         ; $5654: $ff
	rst  $38                                         ; $5655: $ff
	and  a                                           ; $5656: $a7
	ld   b, c                                        ; $5657: $41
	ld   de, $3911                                   ; $5658: $11 $11 $39
	xor  l                                           ; $565b: $ad
	rst  $38                                         ; $565c: $ff
	rst  $38                                         ; $565d: $ff
	ld   [$1175], a                                  ; $565e: $ea $75 $11
	ld   de, $8a23                                   ; $5661: $11 $23 $8a
	rst  JumpTable                                         ; $5664: $df
	rst  $38                                         ; $5665: $ff
	cp   $b7                                         ; $5666: $fe $b7
	ld   d, d                                        ; $5668: $52
	ld   de, $4612                                   ; $5669: $11 $12 $46
	sbc  e                                           ; $566c: $9b
	rst  JumpTable                                         ; $566d: $df
	rst  $38                                         ; $566e: $ff
	call z, Call_0eb_5397                            ; $566f: $cc $97 $53
	ld   hl, $4724                                   ; $5672: $21 $24 $47
	xor  c                                           ; $5675: $a9
	adc  $ed                                         ; $5676: $ce $ed
	call c, $6598                                    ; $5678: $dc $98 $65
	ld   [hl-], a                                    ; $567b: $32
	inc  [hl]                                        ; $567c: $34
	ld   b, l                                        ; $567d: $45
	adc  c                                           ; $567e: $89
	cp   h                                           ; $567f: $bc
	db   $ed                                         ; $5680: $ed
	call c, Call_0eb_75a9                            ; $5681: $dc $a9 $75

Call_0eb_5684:
	ld   b, e                                        ; $5684: $43
	inc  [hl]                                        ; $5685: $34
	ld   b, l                                        ; $5686: $45
	ld   a, c                                        ; $5687: $79
	sbc  e                                           ; $5688: $9b
	call z, $a8bc                                    ; $5689: $cc $bc $a8
	add  [hl]                                        ; $568c: $86
	ld   h, l                                        ; $568d: $65
	ld   b, l                                        ; $568e: $45
	ld   h, [hl]                                     ; $568f: $66
	ld   a, c                                        ; $5690: $79
	sbc  c                                           ; $5691: $99
	cp   d                                           ; $5692: $ba
	xor  c                                           ; $5693: $a9
	adc  b                                           ; $5694: $88
	sbc  b                                           ; $5695: $98
	adc  b                                           ; $5696: $88
	ld   [hl], a                                     ; $5697: $77
	ld   [hl], a                                     ; $5698: $77
	ld   [hl], a                                     ; $5699: $77
	ld   [hl], a                                     ; $569a: $77
	ld   [hl], a                                     ; $569b: $77
	adc  b                                           ; $569c: $88
	sbc  c                                           ; $569d: $99
	xor  c                                           ; $569e: $a9
	xor  d                                           ; $569f: $aa
	sbc  c                                           ; $56a0: $99
	sbc  b                                           ; $56a1: $98
	ld   [hl], a                                     ; $56a2: $77
	ld   h, [hl]                                     ; $56a3: $66
	ld   h, [hl]                                     ; $56a4: $66
	ld   h, a                                        ; $56a5: $67
	ld   a, b                                        ; $56a6: $78
	sbc  d                                           ; $56a7: $9a
	xor  c                                           ; $56a8: $a9
	xor  c                                           ; $56a9: $a9
	xor  c                                           ; $56aa: $a9
	sbc  b                                           ; $56ab: $98
	ld   [hl], a                                     ; $56ac: $77
	ld   [hl], a                                     ; $56ad: $77
	ld   h, [hl]                                     ; $56ae: $66
	ld   h, [hl]                                     ; $56af: $66
	ld   h, a                                        ; $56b0: $67
	ld   a, c                                        ; $56b1: $79
	sbc  c                                           ; $56b2: $99
	xor  d                                           ; $56b3: $aa
	cp   e                                           ; $56b4: $bb
	sbc  c                                           ; $56b5: $99
	sub  a                                           ; $56b6: $97
	halt                                             ; $56b7: $76
	ld   d, l                                        ; $56b8: $55
	ld   d, l                                        ; $56b9: $55
	ld   d, [hl]                                     ; $56ba: $56
	ld   a, c                                        ; $56bb: $79
	xor  e                                           ; $56bc: $ab
	cp   e                                           ; $56bd: $bb
	xor  d                                           ; $56be: $aa
	sbc  b                                           ; $56bf: $98
	add  a                                           ; $56c0: $87
	ld   h, [hl]                                     ; $56c1: $66
	ld   h, l                                        ; $56c2: $65
	ld   h, [hl]                                     ; $56c3: $66
	ld   h, a                                        ; $56c4: $67
	adc  b                                           ; $56c5: $88
	sbc  d                                           ; $56c6: $9a
	sbc  d                                           ; $56c7: $9a
	sbc  d                                           ; $56c8: $9a
	xor  c                                           ; $56c9: $a9
	adc  c                                           ; $56ca: $89
	add  a                                           ; $56cb: $87
	halt                                             ; $56cc: $76
	ld   h, [hl]                                     ; $56cd: $66
	ld   h, [hl]                                     ; $56ce: $66
	ld   h, a                                        ; $56cf: $67
	ld   a, b                                        ; $56d0: $78
	adc  d                                           ; $56d1: $8a
	xor  d                                           ; $56d2: $aa
	xor  d                                           ; $56d3: $aa
	sbc  c                                           ; $56d4: $99
	adc  b                                           ; $56d5: $88
	halt                                             ; $56d6: $76
	ld   h, [hl]                                     ; $56d7: $66
	ld   h, [hl]                                     ; $56d8: $66
	ld   h, [hl]                                     ; $56d9: $66
	ld   a, b                                        ; $56da: $78
	sbc  b                                           ; $56db: $98
	sbc  d                                           ; $56dc: $9a
	sbc  d                                           ; $56dd: $9a
	sbc  c                                           ; $56de: $99
	adc  b                                           ; $56df: $88
	sbc  b                                           ; $56e0: $98
	add  a                                           ; $56e1: $87
	ld   [hl], a                                     ; $56e2: $77
	ld   [hl], a                                     ; $56e3: $77
	ld   [hl], a                                     ; $56e4: $77
	ld   [hl], a                                     ; $56e5: $77
	ld   a, b                                        ; $56e6: $78
	sbc  b                                           ; $56e7: $98
	sbc  c                                           ; $56e8: $99
	xor  d                                           ; $56e9: $aa
	xor  c                                           ; $56ea: $a9
	sbc  c                                           ; $56eb: $99
	adc  b                                           ; $56ec: $88
	ld   [hl], a                                     ; $56ed: $77
	ld   [hl], a                                     ; $56ee: $77
	halt                                             ; $56ef: $76
	ld   h, a                                        ; $56f0: $67
	ld   [hl], a                                     ; $56f1: $77
	adc  c                                           ; $56f2: $89
	adc  c                                           ; $56f3: $89
	sbc  c                                           ; $56f4: $99
	sbc  c                                           ; $56f5: $99
	sbc  c                                           ; $56f6: $99
	sbc  b                                           ; $56f7: $98
	add  a                                           ; $56f8: $87
	ld   [hl], a                                     ; $56f9: $77
	ld   h, [hl]                                     ; $56fa: $66
	ld   h, [hl]                                     ; $56fb: $66
	ld   h, a                                        ; $56fc: $67
	ld   a, b                                        ; $56fd: $78
	sbc  b                                           ; $56fe: $98
	sbc  c                                           ; $56ff: $99
	xor  d                                           ; $5700: $aa
	xor  d                                           ; $5701: $aa
	sbc  b                                           ; $5702: $98
	sbc  b                                           ; $5703: $98
	add  a                                           ; $5704: $87
	ld   [hl], a                                     ; $5705: $77
	halt                                             ; $5706: $76
	ld   h, [hl]                                     ; $5707: $66
	ld   h, a                                        ; $5708: $67
	ld   a, b                                        ; $5709: $78
	adc  b                                           ; $570a: $88
	adc  c                                           ; $570b: $89
	sbc  d                                           ; $570c: $9a
	sbc  c                                           ; $570d: $99
	sbc  c                                           ; $570e: $99
	sbc  c                                           ; $570f: $99
	add  a                                           ; $5710: $87
	halt                                             ; $5711: $76
	ld   h, [hl]                                     ; $5712: $66
	ld   h, [hl]                                     ; $5713: $66
	ld   h, [hl]                                     ; $5714: $66
	ld   a, b                                        ; $5715: $78
	sbc  b                                           ; $5716: $98
	sbc  d                                           ; $5717: $9a
	sbc  c                                           ; $5718: $99
	sbc  d                                           ; $5719: $9a
	xor  c                                           ; $571a: $a9
	sbc  b                                           ; $571b: $98
	add  a                                           ; $571c: $87
	ld   [hl], a                                     ; $571d: $77
	ld   h, [hl]                                     ; $571e: $66
	ld   h, [hl]                                     ; $571f: $66
	ld   h, [hl]                                     ; $5720: $66
	ld   [hl], a                                     ; $5721: $77
	adc  c                                           ; $5722: $89
	sbc  c                                           ; $5723: $99
	xor  c                                           ; $5724: $a9
	sbc  d                                           ; $5725: $9a
	sbc  d                                           ; $5726: $9a
	sbc  b                                           ; $5727: $98
	sbc  b                                           ; $5728: $98
	ld   [hl], a                                     ; $5729: $77
	halt                                             ; $572a: $76
	ld   h, [hl]                                     ; $572b: $66
	ld   h, [hl]                                     ; $572c: $66
	ld   h, a                                        ; $572d: $67
	ld   [hl], a                                     ; $572e: $77
	adc  b                                           ; $572f: $88
	sbc  c                                           ; $5730: $99
	sbc  d                                           ; $5731: $9a
	xor  d                                           ; $5732: $aa
	xor  c                                           ; $5733: $a9
	xor  c                                           ; $5734: $a9
	sbc  b                                           ; $5735: $98
	ld   [hl], a                                     ; $5736: $77
	ld   h, [hl]                                     ; $5737: $66
	ld   h, [hl]                                     ; $5738: $66
	ld   h, [hl]                                     ; $5739: $66
	ld   h, a                                        ; $573a: $67
	ld   a, b                                        ; $573b: $78
	adc  b                                           ; $573c: $88
	sbc  c                                           ; $573d: $99
	xor  d                                           ; $573e: $aa
	sbc  c                                           ; $573f: $99
	xor  c                                           ; $5740: $a9
	sbc  c                                           ; $5741: $99
	adc  b                                           ; $5742: $88
	add  a                                           ; $5743: $87
	ld   [hl], a                                     ; $5744: $77
	halt                                             ; $5745: $76
	ld   h, [hl]                                     ; $5746: $66
	ld   [hl], a                                     ; $5747: $77
	ld   [hl], a                                     ; $5748: $77
	adc  b                                           ; $5749: $88
	adc  c                                           ; $574a: $89
	sbc  d                                           ; $574b: $9a
	xor  d                                           ; $574c: $aa
	xor  d                                           ; $574d: $aa
	sbc  c                                           ; $574e: $99
	sbc  b                                           ; $574f: $98
	adc  b                                           ; $5750: $88
	ld   [hl], a                                     ; $5751: $77
	ld   [hl], a                                     ; $5752: $77
	ld   [hl], a                                     ; $5753: $77
	ld   [hl], a                                     ; $5754: $77
	ld   [hl], a                                     ; $5755: $77
	adc  b                                           ; $5756: $88
	sbc  c                                           ; $5757: $99
	adc  b                                           ; $5758: $88
	adc  b                                           ; $5759: $88
	adc  b                                           ; $575a: $88
	adc  b                                           ; $575b: $88
	sbc  c                                           ; $575c: $99
	sbc  c                                           ; $575d: $99
	adc  b                                           ; $575e: $88
	adc  b                                           ; $575f: $88
	add  a                                           ; $5760: $87
	ld   [hl], a                                     ; $5761: $77
	ld   [hl], a                                     ; $5762: $77
	ld   [hl], a                                     ; $5763: $77
	adc  b                                           ; $5764: $88
	adc  b                                           ; $5765: $88
	sbc  c                                           ; $5766: $99
	sbc  b                                           ; $5767: $98
	adc  b                                           ; $5768: $88
	adc  c                                           ; $5769: $89
	sbc  b                                           ; $576a: $98
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
	sbc  c                                           ; $5777: $99
	sbc  c                                           ; $5778: $99
	sbc  c                                           ; $5779: $99
	sbc  c                                           ; $577a: $99
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
	adc  c                                           ; $579b: $89
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
	ld   [hl], a                                     ; $57ed: $77
	ld   [hl], a                                     ; $57ee: $77
	ld   [hl], a                                     ; $57ef: $77
	ld   [hl], a                                     ; $57f0: $77
	ld   a, b                                        ; $57f1: $78
	adc  b                                           ; $57f2: $88
	adc  c                                           ; $57f3: $89
	sbc  b                                           ; $57f4: $98
	sbc  c                                           ; $57f5: $99
	sbc  c                                           ; $57f6: $99
	sbc  c                                           ; $57f7: $99
	sbc  b                                           ; $57f8: $98
	adc  b                                           ; $57f9: $88
	add  a                                           ; $57fa: $87
	ld   [hl], a                                     ; $57fb: $77
	ld   [hl], a                                     ; $57fc: $77
	ld   [hl], a                                     ; $57fd: $77
	ld   [hl], a                                     ; $57fe: $77
	adc  b                                           ; $57ff: $88
	sbc  b                                           ; $5800: $98
	adc  c                                           ; $5801: $89
	sbc  c                                           ; $5802: $99
	adc  b                                           ; $5803: $88
	adc  c                                           ; $5804: $89
	adc  c                                           ; $5805: $89
	adc  b                                           ; $5806: $88
	adc  b                                           ; $5807: $88
	ld   [hl], a                                     ; $5808: $77
	halt                                             ; $5809: $76
	ld   h, a                                        ; $580a: $67
	ld   [hl], a                                     ; $580b: $77
	ld   [hl], a                                     ; $580c: $77
	adc  c                                           ; $580d: $89
	sbc  c                                           ; $580e: $99
	sbc  c                                           ; $580f: $99
	sbc  c                                           ; $5810: $99
	sbc  c                                           ; $5811: $99
	adc  c                                           ; $5812: $89
	sbc  b                                           ; $5813: $98
	sbc  c                                           ; $5814: $99
	add  a                                           ; $5815: $87
	halt                                             ; $5816: $76
	ld   h, [hl]                                     ; $5817: $66
	ld   h, a                                        ; $5818: $67
	ld   [hl], a                                     ; $5819: $77
	adc  c                                           ; $581a: $89
	sbc  c                                           ; $581b: $99
	xor  c                                           ; $581c: $a9
	sbc  c                                           ; $581d: $99
	adc  c                                           ; $581e: $89
	sbc  c                                           ; $581f: $99
	sbc  b                                           ; $5820: $98
	sbc  b                                           ; $5821: $98
	adc  b                                           ; $5822: $88
	ld   [hl], a                                     ; $5823: $77
	ld   h, [hl]                                     ; $5824: $66
	ld   h, [hl]                                     ; $5825: $66
	ld   h, a                                        ; $5826: $67
	ld   a, b                                        ; $5827: $78
	adc  d                                           ; $5828: $8a
	xor  c                                           ; $5829: $a9
	xor  c                                           ; $582a: $a9
	sbc  c                                           ; $582b: $99
	sbc  b                                           ; $582c: $98
	sbc  b                                           ; $582d: $98
	adc  c                                           ; $582e: $89
	sbc  c                                           ; $582f: $99
	add  a                                           ; $5830: $87
	ld   h, l                                        ; $5831: $65
	ld   h, [hl]                                     ; $5832: $66
	ld   h, a                                        ; $5833: $67
	ld   a, c                                        ; $5834: $79
	sbc  c                                           ; $5835: $99
	sbc  d                                           ; $5836: $9a
	sbc  c                                           ; $5837: $99
	adc  c                                           ; $5838: $89
	adc  c                                           ; $5839: $89
	adc  b                                           ; $583a: $88
	sbc  c                                           ; $583b: $99
	sbc  c                                           ; $583c: $99
	add  a                                           ; $583d: $87
	ld   h, l                                        ; $583e: $65
	ld   d, l                                        ; $583f: $55
	ld   h, a                                        ; $5840: $67
	ld   a, c                                        ; $5841: $79
	sbc  c                                           ; $5842: $99
	sbc  d                                           ; $5843: $9a
	sbc  b                                           ; $5844: $98
	sbc  c                                           ; $5845: $99
	adc  c                                           ; $5846: $89
	sbc  b                                           ; $5847: $98
	sbc  d                                           ; $5848: $9a
	sbc  b                                           ; $5849: $98
	add  a                                           ; $584a: $87
	ld   d, l                                        ; $584b: $55
	ld   d, l                                        ; $584c: $55
	ld   h, a                                        ; $584d: $67
	adc  d                                           ; $584e: $8a
	xor  d                                           ; $584f: $aa
	xor  d                                           ; $5850: $aa
	sbc  b                                           ; $5851: $98
	sbc  b                                           ; $5852: $98
	adc  b                                           ; $5853: $88
	adc  c                                           ; $5854: $89
	sbc  d                                           ; $5855: $9a
	xor  c                                           ; $5856: $a9
	add  [hl]                                        ; $5857: $86
	ld   d, l                                        ; $5858: $55
	ld   b, l                                        ; $5859: $45
	ld   h, a                                        ; $585a: $67
	adc  c                                           ; $585b: $89
	xor  d                                           ; $585c: $aa
	xor  c                                           ; $585d: $a9
	adc  c                                           ; $585e: $89
	adc  b                                           ; $585f: $88
	sbc  c                                           ; $5860: $99
	sbc  d                                           ; $5861: $9a
	sbc  c                                           ; $5862: $99
	sbc  b                                           ; $5863: $98
	add  [hl]                                        ; $5864: $86
	ld   d, h                                        ; $5865: $54
	ld   b, l                                        ; $5866: $45
	ld   h, a                                        ; $5867: $67
	adc  d                                           ; $5868: $8a
	xor  c                                           ; $5869: $a9
	sbc  d                                           ; $586a: $9a
	adc  b                                           ; $586b: $88
	sbc  b                                           ; $586c: $98
	adc  c                                           ; $586d: $89
	xor  c                                           ; $586e: $a9
	xor  c                                           ; $586f: $a9
	sbc  c                                           ; $5870: $99
	halt                                             ; $5871: $76
	ld   d, h                                        ; $5872: $54
	ld   b, l                                        ; $5873: $45
	ld   a, b                                        ; $5874: $78
	adc  d                                           ; $5875: $8a
	cp   d                                           ; $5876: $ba
	sbc  c                                           ; $5877: $99
	sbc  b                                           ; $5878: $98
	sbc  b                                           ; $5879: $98
	adc  c                                           ; $587a: $89
	sbc  c                                           ; $587b: $99
	xor  d                                           ; $587c: $aa
	sbc  c                                           ; $587d: $99
	ld   [hl], l                                     ; $587e: $75
	ld   b, e                                        ; $587f: $43
	ld   [hl], $77                                   ; $5880: $36 $77
	sbc  e                                           ; $5882: $9b
	sbc  c                                           ; $5883: $99
	xor  c                                           ; $5884: $a9
	adc  c                                           ; $5885: $89
	adc  b                                           ; $5886: $88
	adc  d                                           ; $5887: $8a
	sbc  c                                           ; $5888: $99
	sbc  d                                           ; $5889: $9a
	adc  c                                           ; $588a: $89
	ld   [hl], l                                     ; $588b: $75
	ld   b, e                                        ; $588c: $43
	ld   [hl], $77                                   ; $588d: $36 $77
	xor  d                                           ; $588f: $aa
	xor  c                                           ; $5890: $a9
	sbc  c                                           ; $5891: $99
	adc  b                                           ; $5892: $88
	adc  b                                           ; $5893: $88
	adc  c                                           ; $5894: $89
	sbc  c                                           ; $5895: $99
	xor  d                                           ; $5896: $aa
	sbc  b                                           ; $5897: $98
	ld   [hl], h                                     ; $5898: $74
	inc  sp                                          ; $5899: $33
	ld   [hl], $78                                   ; $589a: $36 $78
	cp   d                                           ; $589c: $ba
	xor  d                                           ; $589d: $aa
	sbc  c                                           ; $589e: $99
	ld   a, b                                        ; $589f: $78
	sbc  b                                           ; $58a0: $98
	sbc  c                                           ; $58a1: $99
	xor  d                                           ; $58a2: $aa
	sbc  c                                           ; $58a3: $99
	sub  a                                           ; $58a4: $97
	ld   h, e                                        ; $58a5: $63
	inc  sp                                          ; $58a6: $33
	ld   b, a                                        ; $58a7: $47
	ld   a, d                                        ; $58a8: $7a
	xor  e                                           ; $58a9: $ab
	cp   c                                           ; $58aa: $b9
	sbc  c                                           ; $58ab: $99
	adc  c                                           ; $58ac: $89
	adc  b                                           ; $58ad: $88
	sbc  c                                           ; $58ae: $99
	xor  c                                           ; $58af: $a9
	sbc  d                                           ; $58b0: $9a
	sub  a                                           ; $58b1: $97
	ld   b, e                                        ; $58b2: $43
	inc  sp                                          ; $58b3: $33
	ld   h, a                                        ; $58b4: $67
	ld   a, d                                        ; $58b5: $7a
	xor  e                                           ; $58b6: $ab
	cp   c                                           ; $58b7: $b9
	xor  b                                           ; $58b8: $a8
	adc  b                                           ; $58b9: $88
	adc  c                                           ; $58ba: $89
	xor  d                                           ; $58bb: $aa
	xor  d                                           ; $58bc: $aa
	xor  c                                           ; $58bd: $a9
	add  [hl]                                        ; $58be: $86
	inc  sp                                          ; $58bf: $33
	inc  hl                                          ; $58c0: $23
	ld   a, b                                        ; $58c1: $78
	adc  d                                           ; $58c2: $8a
	xor  d                                           ; $58c3: $aa
	sbc  c                                           ; $58c4: $99
	sub  a                                           ; $58c5: $97
	sbc  b                                           ; $58c6: $98
	adc  d                                           ; $58c7: $8a
	sbc  c                                           ; $58c8: $99
	xor  d                                           ; $58c9: $aa
	xor  b                                           ; $58ca: $a8
	ld   [hl], l                                     ; $58cb: $75
	ld   [hl+], a                                    ; $58cc: $22
	inc  h                                           ; $58cd: $24
	ld   a, b                                        ; $58ce: $78
	xor  e                                           ; $58cf: $ab
	cp   d                                           ; $58d0: $ba
	xor  d                                           ; $58d1: $aa
	add  a                                           ; $58d2: $87
	sbc  b                                           ; $58d3: $98
	sbc  c                                           ; $58d4: $99
	xor  d                                           ; $58d5: $aa
	xor  d                                           ; $58d6: $aa
	xor  b                                           ; $58d7: $a8
	ld   [hl], e                                     ; $58d8: $73
	ld   [hl+], a                                    ; $58d9: $22
	ld   h, $89                                      ; $58da: $26 $89
	cp   d                                           ; $58dc: $ba
	cp   d                                           ; $58dd: $ba
	xor  c                                           ; $58de: $a9
	adc  b                                           ; $58df: $88
	adc  b                                           ; $58e0: $88
	xor  d                                           ; $58e1: $aa
	xor  d                                           ; $58e2: $aa
	xor  d                                           ; $58e3: $aa
	add  a                                           ; $58e4: $87
	ld   d, d                                        ; $58e5: $52
	ld   [hl+], a                                    ; $58e6: $22
	ld   c, b                                        ; $58e7: $48
	sbc  c                                           ; $58e8: $99
	cp   e                                           ; $58e9: $bb
	xor  c                                           ; $58ea: $a9
	xor  c                                           ; $58eb: $a9
	ld   a, c                                        ; $58ec: $79
	adc  b                                           ; $58ed: $88
	sbc  c                                           ; $58ee: $99
	sbc  d                                           ; $58ef: $9a
	cp   d                                           ; $58f0: $ba
	add  [hl]                                        ; $58f1: $86
	ld   sp, $7923                                   ; $58f2: $31 $23 $79
	sbc  h                                           ; $58f5: $9c
	xor  e                                           ; $58f6: $ab
	sbc  d                                           ; $58f7: $9a
	adc  b                                           ; $58f8: $88
	sbc  c                                           ; $58f9: $99
	adc  d                                           ; $58fa: $8a
	xor  d                                           ; $58fb: $aa
	xor  d                                           ; $58fc: $aa
	sbc  b                                           ; $58fd: $98
	ld   h, e                                        ; $58fe: $63
	ld   [hl+], a                                    ; $58ff: $22
	ld   h, $98                                      ; $5900: $26 $98
	cp   h                                           ; $5902: $bc
	xor  e                                           ; $5903: $ab
	xor  c                                           ; $5904: $a9
	adc  b                                           ; $5905: $88
	sub  a                                           ; $5906: $97
	xor  d                                           ; $5907: $aa
	sbc  d                                           ; $5908: $9a
	cp   d                                           ; $5909: $ba
	sub  a                                           ; $590a: $97
	ld   b, c                                        ; $590b: $41
	ld   [de], a                                     ; $590c: $12
	ld   c, b                                        ; $590d: $48
	sbc  e                                           ; $590e: $9b
	res  7, d                                        ; $590f: $cb $ba
	sbc  b                                           ; $5911: $98
	ld   a, b                                        ; $5912: $78
	sbc  c                                           ; $5913: $99
	sbc  c                                           ; $5914: $99
	xor  d                                           ; $5915: $aa
	xor  b                                           ; $5916: $a8
	ld   h, h                                        ; $5917: $64
	ld   hl, $8925                                   ; $5918: $21 $25 $89
	cp   e                                           ; $591b: $bb
	cp   e                                           ; $591c: $bb
	xor  c                                           ; $591d: $a9
	sbc  b                                           ; $591e: $98
	sbc  c                                           ; $591f: $99
	sbc  c                                           ; $5920: $99
	sbc  e                                           ; $5921: $9b
	xor  c                                           ; $5922: $a9
	sub  [hl]                                        ; $5923: $96
	ld   sp, $5812                                   ; $5924: $31 $12 $58
	xor  d                                           ; $5927: $aa
	call z, $98bb                                    ; $5928: $cc $bb $98
	adc  c                                           ; $592b: $89
	adc  c                                           ; $592c: $89
	sbc  c                                           ; $592d: $99
	sbc  c                                           ; $592e: $99
	add  a                                           ; $592f: $87
	ld   d, e                                        ; $5930: $53
	ld   [hl+], a                                    ; $5931: $22
	ld   b, a                                        ; $5932: $47
	ld   a, c                                        ; $5933: $79
	cp   h                                           ; $5934: $bc
	cp   d                                           ; $5935: $ba
	xor  b                                           ; $5936: $a8
	sbc  d                                           ; $5937: $9a
	adc  c                                           ; $5938: $89
	xor  c                                           ; $5939: $a9
	sbc  d                                           ; $593a: $9a
	sub  a                                           ; $593b: $97
	ld   h, e                                        ; $593c: $63
	ld   [de], a                                     ; $593d: $12
	dec  h                                           ; $593e: $25
	adc  c                                           ; $593f: $89
	cp   l                                           ; $5940: $bd
	cp   d                                           ; $5941: $ba
	cp   d                                           ; $5942: $ba
	ld   a, c                                        ; $5943: $79
	xor  b                                           ; $5944: $a8
	sbc  d                                           ; $5945: $9a
	adc  b                                           ; $5946: $88
	sbc  c                                           ; $5947: $99
	ld   h, l                                        ; $5948: $65
	ld   [hl+], a                                    ; $5949: $22
	inc  [hl]                                        ; $594a: $34
	ld   l, c                                        ; $594b: $69
	cp   e                                           ; $594c: $bb
	res  5, c                                        ; $594d: $cb $a9
	sbc  b                                           ; $594f: $98
	sbc  c                                           ; $5950: $99
	sbc  c                                           ; $5951: $99
	sbc  d                                           ; $5952: $9a
	sbc  b                                           ; $5953: $98
	halt                                             ; $5954: $76
	ld   sp, $6923                                   ; $5955: $31 $23 $69
	xor  e                                           ; $5958: $ab
	res  7, e                                        ; $5959: $cb $bb
	sbc  b                                           ; $595b: $98
	sbc  c                                           ; $595c: $99
	adc  c                                           ; $595d: $89
	sbc  c                                           ; $595e: $99
	xor  b                                           ; $595f: $a8
	add  [hl]                                        ; $5960: $86
	ld   [hl-], a                                    ; $5961: $32
	inc  hl                                          ; $5962: $23
	ld   d, a                                        ; $5963: $57
	adc  d                                           ; $5964: $8a
	res  5, e                                        ; $5965: $cb $ab
	sbc  b                                           ; $5967: $98
	sbc  b                                           ; $5968: $98
	adc  c                                           ; $5969: $89
	xor  c                                           ; $596a: $a9
	sbc  c                                           ; $596b: $99
	sub  a                                           ; $596c: $97
	ld   b, d                                        ; $596d: $42
	ld   [hl+], a                                    ; $596e: $22
	ld   e, b                                        ; $596f: $58
	adc  e                                           ; $5970: $8b
	jp   c, $98bb                                    ; $5971: $da $bb $98

	sbc  c                                           ; $5974: $99
	adc  d                                           ; $5975: $8a
	xor  c                                           ; $5976: $a9
	sbc  c                                           ; $5977: $99
	ld   [hl], a                                     ; $5978: $77
	ld   d, d                                        ; $5979: $52
	ld   [de], a                                     ; $597a: $12
	ld   [hl], $99                                   ; $597b: $36 $99
	xor  e                                           ; $597d: $ab
	cp   d                                           ; $597e: $ba
	cp   b                                           ; $597f: $b8
	sbc  c                                           ; $5980: $99
	sbc  c                                           ; $5981: $99
	xor  c                                           ; $5982: $a9
	sbc  d                                           ; $5983: $9a
	sub  a                                           ; $5984: $97
	ld   h, e                                        ; $5985: $63
	ld   [de], a                                     ; $5986: $12
	ld   h, $9a                                      ; $5987: $26 $9a
	cp   h                                           ; $5989: $bc
	set  1, d                                        ; $598a: $cb $ca
	adc  d                                           ; $598c: $8a
	adc  b                                           ; $598d: $88
	sbc  b                                           ; $598e: $98
	sbc  d                                           ; $598f: $9a
	sbc  b                                           ; $5990: $98
	ld   h, h                                        ; $5991: $64
	ld   hl, $8a44                                   ; $5992: $21 $44 $8a
	sbc  h                                           ; $5995: $9c
	db   $db                                         ; $5996: $db
	res  1, c                                        ; $5997: $cb $89
	sbc  c                                           ; $5999: $99
	sbc  d                                           ; $599a: $9a
	adc  c                                           ; $599b: $89
	sub  a                                           ; $599c: $97
	ld   h, h                                        ; $599d: $64
	ld   [de], a                                     ; $599e: $12
	dec  [hl]                                        ; $599f: $35
	adc  c                                           ; $59a0: $89
	sbc  e                                           ; $59a1: $9b
	jp   c, $89bb                                    ; $59a2: $da $bb $89

	and  a                                           ; $59a5: $a7
	sbc  c                                           ; $59a6: $99
	sbc  b                                           ; $59a7: $98
	xor  b                                           ; $59a8: $a8
	ld   h, l                                        ; $59a9: $65
	ld   hl, $7a35                                   ; $59aa: $21 $35 $7a
	xor  e                                           ; $59ad: $ab
	cp   h                                           ; $59ae: $bc
	xor  d                                           ; $59af: $aa
	xor  b                                           ; $59b0: $a8
	sbc  b                                           ; $59b1: $98
	xor  c                                           ; $59b2: $a9
	adc  c                                           ; $59b3: $89
	adc  b                                           ; $59b4: $88
	ld   h, h                                        ; $59b5: $64
	ld   hl, $7835                                   ; $59b6: $21 $35 $78
	xor  h                                           ; $59b9: $ac
	call c, $98ab                                    ; $59ba: $dc $ab $98
	xor  c                                           ; $59bd: $a9
	sbc  c                                           ; $59be: $99
	sbc  c                                           ; $59bf: $99
	sub  a                                           ; $59c0: $97
	ld   h, h                                        ; $59c1: $64
	ld   hl, $7935                                   ; $59c2: $21 $35 $79
	xor  d                                           ; $59c5: $aa
	res  7, e                                        ; $59c6: $cb $bb
	sbc  b                                           ; $59c8: $98
	xor  c                                           ; $59c9: $a9
	sbc  c                                           ; $59ca: $99
	sbc  b                                           ; $59cb: $98
	add  a                                           ; $59cc: $87
	ld   h, e                                        ; $59cd: $63
	ld   hl, $8936                                   ; $59ce: $21 $36 $89
	xor  e                                           ; $59d1: $ab
	cp   e                                           ; $59d2: $bb
	jp   z, $a8aa                                    ; $59d3: $ca $aa $a8

	sbc  d                                           ; $59d6: $9a
	adc  b                                           ; $59d7: $88
	add  a                                           ; $59d8: $87
	ld   d, e                                        ; $59d9: $53
	ld   [de], a                                     ; $59da: $12
	ld   b, a                                        ; $59db: $47
	sbc  d                                           ; $59dc: $9a
	cp   h                                           ; $59dd: $bc
	jp   z, $89b9                                    ; $59de: $ca $b9 $89

	adc  b                                           ; $59e1: $88
	sbc  c                                           ; $59e2: $99
	adc  c                                           ; $59e3: $89
	add  [hl]                                        ; $59e4: $86
	ld   d, d                                        ; $59e5: $52
	inc  de                                          ; $59e6: $13
	ld   b, a                                        ; $59e7: $47
	sbc  d                                           ; $59e8: $9a
	xor  h                                           ; $59e9: $ac
	cp   d                                           ; $59ea: $ba
	cp   c                                           ; $59eb: $b9
	sbc  c                                           ; $59ec: $99
	sbc  c                                           ; $59ed: $99
	sbc  c                                           ; $59ee: $99
	adc  b                                           ; $59ef: $88
	add  [hl]                                        ; $59f0: $86
	ld   sp, $6813                                   ; $59f1: $31 $13 $68
	sbc  e                                           ; $59f4: $9b
	call z, $a8cb                                    ; $59f5: $cc $cb $a8
	sbc  b                                           ; $59f8: $98
	sbc  c                                           ; $59f9: $99
	adc  c                                           ; $59fa: $89
	adc  b                                           ; $59fb: $88
	ld   [hl], l                                     ; $59fc: $75
	ld   hl, $7a34                                   ; $59fd: $21 $34 $7a
	sbc  e                                           ; $5a00: $9b
	call z, $a9cb                                    ; $5a01: $cc $cb $a9
	sbc  c                                           ; $5a04: $99
	adc  c                                           ; $5a05: $89
	adc  c                                           ; $5a06: $89
	sub  a                                           ; $5a07: $97
	ld   h, e                                        ; $5a08: $63
	ld   de, $9926                                   ; $5a09: $11 $26 $99
	cp   e                                           ; $5a0c: $bb
	call z, $99bb                                    ; $5a0d: $cc $bb $99
	adc  b                                           ; $5a10: $88
	adc  b                                           ; $5a11: $88
	adc  b                                           ; $5a12: $88
	halt                                             ; $5a13: $76
	ld   b, d                                        ; $5a14: $42
	ld   [de], a                                     ; $5a15: $12
	ld   l, c                                        ; $5a16: $69
	sbc  e                                           ; $5a17: $9b
	cp   h                                           ; $5a18: $bc
	cp   h                                           ; $5a19: $bc
	ret  z                                           ; $5a1a: $c8

	xor  c                                           ; $5a1b: $a9
	sbc  d                                           ; $5a1c: $9a
	adc  c                                           ; $5a1d: $89
	ld   a, b                                        ; $5a1e: $78
	ld   [hl], h                                     ; $5a1f: $74
	ld   hl, $9a25                                   ; $5a20: $21 $25 $9a
	sbc  l                                           ; $5a23: $9d
	db   $db                                         ; $5a24: $db
	jp   z, $99a8                                    ; $5a25: $ca $a8 $99

	adc  c                                           ; $5a28: $89
	ld   a, b                                        ; $5a29: $78
	halt                                             ; $5a2a: $76
	ld   b, c                                        ; $5a2b: $41
	ld   [de], a                                     ; $5a2c: $12
	ld   e, c                                        ; $5a2d: $59
	adc  d                                           ; $5a2e: $8a
	cp   e                                           ; $5a2f: $bb
	res  7, c                                        ; $5a30: $cb $b9
	adc  c                                           ; $5a32: $89
	adc  d                                           ; $5a33: $8a
	adc  b                                           ; $5a34: $88
	add  a                                           ; $5a35: $87
	ld   h, h                                        ; $5a36: $64
	ld   hl, $a926                                   ; $5a37: $21 $26 $a9
	cp   [hl]                                        ; $5a3a: $be
	cp   h                                           ; $5a3b: $bc
	jp   c, $899a                                    ; $5a3c: $da $9a $89

	xor  b                                           ; $5a3f: $a8
	ld   a, b                                        ; $5a40: $78
	ld   [hl], l                                     ; $5a41: $75
	ld   b, c                                        ; $5a42: $41
	inc  de                                          ; $5a43: $13
	ld   l, e                                        ; $5a44: $6b
	sbc  h                                           ; $5a45: $9c
	jp   c, $aacc                                    ; $5a46: $da $cc $aa

	sbc  c                                           ; $5a49: $99
	sbc  d                                           ; $5a4a: $9a
	sub  a                                           ; $5a4b: $97
	add  a                                           ; $5a4c: $87
	ld   h, e                                        ; $5a4d: $63
	ld   de, $9b38                                   ; $5a4e: $11 $38 $9b
	call c, $b9cc                                    ; $5a51: $dc $cc $b9
	sbc  c                                           ; $5a54: $99
	ld   a, d                                        ; $5a55: $7a
	xor  b                                           ; $5a56: $a8
	add  a                                           ; $5a57: $87
	ld   h, h                                        ; $5a58: $64
	ld   hl, $9b25                                   ; $5a59: $21 $25 $9b
	xor  l                                           ; $5a5c: $ad
	jp   c, $89db                                    ; $5a5d: $da $db $89

	adc  b                                           ; $5a60: $88
	xor  b                                           ; $5a61: $a8
	add  a                                           ; $5a62: $87
	ld   [hl], l                                     ; $5a63: $75
	ld   hl, $7a24                                   ; $5a64: $21 $24 $7a
	xor  l                                           ; $5a67: $ad
	ld   [$8aea], a                                  ; $5a68: $ea $ea $8a
	ld   a, b                                        ; $5a6b: $78
	sbc  d                                           ; $5a6c: $9a
	add  a                                           ; $5a6d: $87
	add  l                                           ; $5a6e: $85
	ld   b, c                                        ; $5a6f: $41
	inc  de                                          ; $5a70: $13
	ld   e, d                                        ; $5a71: $5a
	call z, $ccfd                                    ; $5a72: $cc $fd $cc
	sbc  b                                           ; $5a75: $98
	add  a                                           ; $5a76: $87
	adc  c                                           ; $5a77: $89
	xor  b                                           ; $5a78: $a8
	halt                                             ; $5a79: $76
	ld   b, d                                        ; $5a7a: $42
	ld   de, $ba49                                   ; $5a7b: $11 $49 $ba
	db   $ed                                         ; $5a7e: $ed
	call $97a7                                       ; $5a7f: $cd $a7 $97
	ld   a, c                                        ; $5a82: $79
	sub  a                                           ; $5a83: $97
	add  a                                           ; $5a84: $87
	ld   b, d                                        ; $5a85: $42
	ld   de, $cb48                                   ; $5a86: $11 $48 $cb
	rst  $28                                         ; $5a89: $ef
	cp   l                                           ; $5a8a: $bd
	or   a                                           ; $5a8b: $b7
	sub  a                                           ; $5a8c: $97
	ld   a, c                                        ; $5a8d: $79
	sbc  b                                           ; $5a8e: $98
	add  a                                           ; $5a8f: $87
	ld   d, d                                        ; $5a90: $52
	ld   de, $ab37                                   ; $5a91: $11 $37 $ab
	rst  $38                                         ; $5a94: $ff
	call $8698                                       ; $5a95: $cd $98 $86
	ld   a, c                                        ; $5a98: $79
	sub  a                                           ; $5a99: $97
	halt                                             ; $5a9a: $76
	ld   b, e                                        ; $5a9b: $43
	ld   [de], a                                     ; $5a9c: $12
	ld   c, b                                        ; $5a9d: $48
	jp   c, $bdef                                    ; $5a9e: $da $ef $bd

	and  a                                           ; $5aa1: $a7
	add  a                                           ; $5aa2: $87
	ld   a, c                                        ; $5aa3: $79
	and  a                                           ; $5aa4: $a7
	ld   h, [hl]                                     ; $5aa5: $66
	ld   sp, $5a12                                   ; $5aa6: $31 $12 $5a
	call z, $cdfe                                    ; $5aa9: $cc $fe $cd
	sub  a                                           ; $5aac: $97
	add  [hl]                                        ; $5aad: $86
	adc  b                                           ; $5aae: $88
	add  a                                           ; $5aaf: $87
	halt                                             ; $5ab0: $76
	ld   sp, $6913                                   ; $5ab1: $31 $13 $69
	cp   [hl]                                        ; $5ab4: $be
	db   $fc                                         ; $5ab5: $fc
	db   $ec                                         ; $5ab6: $ec
	ld   a, c                                        ; $5ab7: $79
	ld   h, [hl]                                     ; $5ab8: $66
	sbc  b                                           ; $5ab9: $98
	add  a                                           ; $5aba: $87
	ld   h, e                                        ; $5abb: $63
	ld   hl, $7c14                                   ; $5abc: $21 $14 $7c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5abf: $cf
	db   $fc                                         ; $5ac0: $fc
	ld   [$6788], a                                  ; $5ac1: $ea $88 $67
	adc  c                                           ; $5ac4: $89
	ld   [hl], a                                     ; $5ac5: $77
	ld   h, d                                        ; $5ac6: $62
	ld   de, $ab35                                   ; $5ac7: $11 $35 $ab
	rst  $28                                         ; $5aca: $ef
	db   $dd                                         ; $5acb: $dd
	ret  c                                           ; $5acc: $d8

	sub  a                                           ; $5acd: $97
	ld   l, b                                        ; $5ace: $68
	sbc  b                                           ; $5acf: $98
	ld   h, [hl]                                     ; $5ad0: $66
	ld   sp, $5712                                   ; $5ad1: $31 $12 $57
	call z, $cdff                                    ; $5ad4: $cc $ff $cd
	or   a                                           ; $5ad7: $b7
	add  a                                           ; $5ad8: $87
	ld   a, b                                        ; $5ad9: $78
	add  a                                           ; $5ada: $87
	ld   h, h                                        ; $5adb: $64
	ld   de, $6c24                                   ; $5adc: $11 $24 $6c
	adc  $fe                                         ; $5adf: $ce $fe
	db   $ec                                         ; $5ae1: $ec
	adc  b                                           ; $5ae2: $88
	ld   [hl], a                                     ; $5ae3: $77
	adc  c                                           ; $5ae4: $89
	ld   h, [hl]                                     ; $5ae5: $66
	ld   d, c                                        ; $5ae6: $51
	ld   [de], a                                     ; $5ae7: $12
	ld   b, [hl]                                     ; $5ae8: $46
	cp   e                                           ; $5ae9: $bb
	rst  JumpTable                                         ; $5aea: $df
	db   $ed                                         ; $5aeb: $ed
	ret                                              ; $5aec: $c9


	ld   [hl], a                                     ; $5aed: $77
	ld   a, b                                        ; $5aee: $78
	sub  a                                           ; $5aef: $97
	ld   d, h                                        ; $5af0: $54
	ld   de, $6b24                                   ; $5af1: $11 $24 $6b
	adc  $fe                                         ; $5af4: $ce $fe
	db   $ec                                         ; $5af6: $ec
	adc  b                                           ; $5af7: $88
	ld   [hl], a                                     ; $5af8: $77
	adc  c                                           ; $5af9: $89
	ld   [hl], l                                     ; $5afa: $75
	ld   b, c                                        ; $5afb: $41
	ld   [de], a                                     ; $5afc: $12
	ld   b, l                                        ; $5afd: $45
	call c, $eeef                                    ; $5afe: $dc $ef $ee
	ret  z                                           ; $5b01: $c8

	halt                                             ; $5b02: $76
	ld   a, c                                        ; $5b03: $79
	sub  a                                           ; $5b04: $97
	ld   d, h                                        ; $5b05: $54
	ld   de, $7d44                                   ; $5b06: $11 $44 $7d
	cp   a                                           ; $5b09: $bf
	db   $fd                                         ; $5b0a: $fd
	db   $db                                         ; $5b0b: $db
	add  a                                           ; $5b0c: $87
	ld   [hl], a                                     ; $5b0d: $77
	adc  c                                           ; $5b0e: $89
	ld   h, h                                        ; $5b0f: $64
	ld   b, c                                        ; $5b10: $41
	inc  d                                           ; $5b11: $14
	ld   c, c                                        ; $5b12: $49
	db   $dd                                         ; $5b13: $dd
	rst  $38                                         ; $5b14: $ff
	call Call_0eb_77a7                               ; $5b15: $cd $a7 $77
	ld   a, b                                        ; $5b18: $78
	sub  [hl]                                        ; $5b19: $96
	ld   d, d                                        ; $5b1a: $52
	ld   de, $bd45                                   ; $5b1b: $11 $45 $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b1e: $cf
	db   $fc                                         ; $5b1f: $fc
	reti                                             ; $5b20: $d9


	ld   h, a                                        ; $5b21: $67
	ld   a, b                                        ; $5b22: $78
	sub  a                                           ; $5b23: $97
	ld   d, h                                        ; $5b24: $54
	ld   de, $7d34                                   ; $5b25: $11 $34 $7d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b28: $cf
	db   $fd                                         ; $5b29: $fd
	db   $db                                         ; $5b2a: $db
	ld   [hl], a                                     ; $5b2b: $77
	ld   a, b                                        ; $5b2c: $78
	adc  b                                           ; $5b2d: $88
	ld   h, l                                        ; $5b2e: $65
	ld   sp, $5b14                                   ; $5b2f: $31 $14 $5b
	adc  $fe                                         ; $5b32: $ce $fe
	db   $ec                                         ; $5b34: $ec
	ld   [hl], a                                     ; $5b35: $77
	ld   h, [hl]                                     ; $5b36: $66
	adc  c                                           ; $5b37: $89
	ld   [hl], l                                     ; $5b38: $75
	ld   sp, $4914                                   ; $5b39: $31 $14 $49
	call c, $ddff                                    ; $5b3c: $dc $ff $dd
	and  [hl]                                        ; $5b3f: $a6
	halt                                             ; $5b40: $76
	ld   a, b                                        ; $5b41: $78
	add  [hl]                                        ; $5b42: $86
	ld   b, c                                        ; $5b43: $41
	ld   [de], a                                     ; $5b44: $12
	ld   b, a                                        ; $5b45: $47
	call $edff                                       ; $5b46: $cd $ff $ed
	rst  ToBoot                                         ; $5b49: $c7
	halt                                             ; $5b4a: $76
	ld   a, b                                        ; $5b4b: $78
	halt                                             ; $5b4c: $76
	ld   b, c                                        ; $5b4d: $41
	ld   de, $cd56                                   ; $5b4e: $11 $56 $cd
	rst  $38                                         ; $5b51: $ff
	db   $ed                                         ; $5b52: $ed
	or   a                                           ; $5b53: $b7
	halt                                             ; $5b54: $76
	ld   a, b                                        ; $5b55: $78
	add  a                                           ; $5b56: $87
	ld   b, d                                        ; $5b57: $42
	ld   de, $bc46                                   ; $5b58: $11 $46 $bc
	rst  $38                                         ; $5b5b: $ff
	rst  $28                                         ; $5b5c: $ef
	ret  z                                           ; $5b5d: $c8

	add  l                                           ; $5b5e: $85
	ld   l, b                                        ; $5b5f: $68
	halt                                             ; $5b60: $76
	ld   b, d                                        ; $5b61: $42
	ld   de, $cd46                                   ; $5b62: $11 $46 $cd
	rst  $38                                         ; $5b65: $ff
	db   $ed                                         ; $5b66: $ed
	cp   c                                           ; $5b67: $b9
	add  [hl]                                        ; $5b68: $86
	ld   h, [hl]                                     ; $5b69: $66
	ld   b, e                                        ; $5b6a: $43
	ld   de, $7b16                                   ; $5b6b: $11 $16 $7b
	db   $ed                                         ; $5b6e: $ed
	rst  $38                                         ; $5b6f: $ff
	db   $db                                         ; $5b70: $db
	and  a                                           ; $5b71: $a7
	ld   h, a                                        ; $5b72: $67
	ld   d, h                                        ; $5b73: $54
	ld   sp, $5912                                   ; $5b74: $31 $12 $59
	cp   h                                           ; $5b77: $bc
	rst  $28                                         ; $5b78: $ef
	db   $ed                                         ; $5b79: $ed
	xor  c                                           ; $5b7a: $a9
	add  [hl]                                        ; $5b7b: $86
	halt                                             ; $5b7c: $76
	ld   b, e                                        ; $5b7d: $43
	ld   de, $9b27                                   ; $5b7e: $11 $27 $9b
	sbc  $ee                                         ; $5b81: $de $ee
	res  3, b                                        ; $5b83: $cb $98
	ld   [hl], a                                     ; $5b85: $77
	ld   h, e                                        ; $5b86: $63
	ld   sp, $7913                                   ; $5b87: $31 $13 $79
	db   $dd                                         ; $5b8a: $dd
	xor  $dc                                         ; $5b8b: $ee $dc
	sbc  d                                           ; $5b8d: $9a
	add  a                                           ; $5b8e: $87
	ld   [hl], h                                     ; $5b8f: $74
	ld   sp, $6911                                   ; $5b90: $31 $11 $69
	cp   [hl]                                        ; $5b93: $be
	cp   $ed                                         ; $5b94: $fe $ed
	sbc  c                                           ; $5b96: $99
	sub  [hl]                                        ; $5b97: $96
	add  [hl]                                        ; $5b98: $86
	ld   [hl-], a                                    ; $5b99: $32
	ld   de, $9c28                                   ; $5b9a: $11 $28 $9c
	db   $fd                                         ; $5b9d: $fd
	rst  $28                                         ; $5b9e: $ef
	xor  d                                           ; $5b9f: $aa
	and  a                                           ; $5ba0: $a7
	halt                                             ; $5ba1: $76
	ld   [hl-], a                                    ; $5ba2: $32
	ld   de, $8b17                                   ; $5ba3: $11 $17 $8b
	cp   $de                                         ; $5ba6: $fe $de
	cp   d                                           ; $5ba8: $ba
	and  [hl]                                        ; $5ba9: $a6
	ld   h, a                                        ; $5baa: $67
	inc  sp                                          ; $5bab: $33
	ld   hl, $9b17                                   ; $5bac: $21 $17 $9b
	cp   $ef                                         ; $5baf: $fe $ef
	cp   d                                           ; $5bb1: $ba
	or   a                                           ; $5bb2: $b7
	ld   d, a                                        ; $5bb3: $57
	ld   [hl+], a                                    ; $5bb4: $22
	ld   de, $ab19                                   ; $5bb5: $11 $19 $ab
	cp   $df                                         ; $5bb8: $fe $df
	cp   b                                           ; $5bba: $b8
	or   a                                           ; $5bbb: $b7
	ld   d, a                                        ; $5bbc: $57
	ld   hl, $1911                                   ; $5bbd: $21 $11 $19
	sbc  h                                           ; $5bc0: $9c
	cp   $ef                                         ; $5bc1: $fe $ef
	sbc  d                                           ; $5bc3: $9a
	and  h                                           ; $5bc4: $a4
	ld   d, [hl]                                     ; $5bc5: $56
	ld   de, $5a11                                   ; $5bc6: $11 $11 $5a
	xor  a                                           ; $5bc9: $af
	db   $fc                                         ; $5bca: $fc
	db   $fd                                         ; $5bcb: $fd
	sbc  d                                           ; $5bcc: $9a
	add  h                                           ; $5bcd: $84
	ld   h, h                                        ; $5bce: $64
	ld   de, $7b11                                   ; $5bcf: $11 $11 $7b
	cp   a                                           ; $5bd2: $bf
	db   $fd                                         ; $5bd3: $fd
	ei                                               ; $5bd4: $fb
	xor  e                                           ; $5bd5: $ab
	ld   h, h                                        ; $5bd6: $64
	ld   d, c                                        ; $5bd7: $51
	ld   de, $b914                                   ; $5bd8: $11 $14 $b9
	rst  $38                                         ; $5bdb: $ff
	rst  JumpTable                                         ; $5bdc: $df
	reti                                             ; $5bdd: $d9


	cp   b                                           ; $5bde: $b8
	ld   b, h                                        ; $5bdf: $44
	ld   hl, $1911                                   ; $5be0: $21 $11 $19
	xor  h                                           ; $5be3: $ac
	db   $fd                                         ; $5be4: $fd
	rst  $38                                         ; $5be5: $ff
	xor  e                                           ; $5be6: $ab
	sub  l                                           ; $5be7: $95
	ld   b, h                                        ; $5be8: $44
	ld   bc, $8a11                                   ; $5be9: $01 $11 $8a
	xor  a                                           ; $5bec: $af
	db   $ed                                         ; $5bed: $ed
	ei                                               ; $5bee: $fb
	xor  d                                           ; $5bef: $aa
	ld   h, h                                        ; $5bf0: $64
	ld   [hl-], a                                    ; $5bf1: $32
	ld   de, $c915                                   ; $5bf2: $11 $15 $c9
	rst  $38                                         ; $5bf5: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bf6: $cf
	cp   d                                           ; $5bf7: $ba
	or   [hl]                                        ; $5bf8: $b6
	ld   b, h                                        ; $5bf9: $44
	ld   de, $4c11                                   ; $5bfa: $11 $11 $4c
	xor  [hl]                                        ; $5bfd: $ae
	db   $fc                                         ; $5bfe: $fc
	db   $fd                                         ; $5bff: $fd
	sbc  e                                           ; $5c00: $9b
	ld   h, h                                        ; $5c01: $64
	ld   b, e                                        ; $5c02: $43
	ld   de, $a913                                   ; $5c03: $11 $13 $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c06: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c07: $cf
	jp   hl                                          ; $5c08: $e9


	rst  ToBoot                                         ; $5c09: $c7
	ld   b, e                                        ; $5c0a: $43
	ld   sp, $4a11                                   ; $5c0b: $31 $11 $4a
	cp   [hl]                                        ; $5c0e: $be
	db   $fc                                         ; $5c0f: $fc
	cp   $ac                                         ; $5c10: $fe $ac
	ld   [hl], h                                     ; $5c12: $74
	ld   sp, $1611                                   ; $5c13: $31 $11 $16
	cp   d                                           ; $5c16: $ba
	rst  $38                                         ; $5c17: $ff
	rst  JumpTable                                         ; $5c18: $df
	res  4, [hl]                                     ; $5c19: $cb $a6
	ld   b, e                                        ; $5c1b: $43
	ld   de, $9b12                                   ; $5c1c: $11 $12 $9b
	cp   a                                           ; $5c1f: $bf
	db   $ed                                         ; $5c20: $ed
	ld   a, [$65bb]                                  ; $5c21: $fa $bb $65
	ld   sp, $3a11                                   ; $5c24: $31 $11 $3a
	sbc  l                                           ; $5c27: $9d
	db   $fd                                         ; $5c28: $fd
	db   $fd                                         ; $5c29: $fd
	xor  e                                           ; $5c2a: $ab
	ld   [hl], l                                     ; $5c2b: $75
	ld   b, d                                        ; $5c2c: $42
	ld   de, $ab16                                   ; $5c2d: $11 $16 $ab
	rst  $38                                         ; $5c30: $ff
	rst  JumpTable                                         ; $5c31: $df
	jp   z, Jump_0eb_54a7                            ; $5c32: $ca $a7 $54

	ld   de, $8a12                                   ; $5c35: $11 $12 $8a
	rst  JumpTable                                         ; $5c38: $df
	xor  $fa                                         ; $5c39: $ee $fa
	cp   c                                           ; $5c3b: $b9
	ld   h, h                                        ; $5c3c: $64
	ld   hl, $5911                                   ; $5c3d: $21 $11 $59
	xor  [hl]                                        ; $5c40: $ae
	db   $ed                                         ; $5c41: $ed
	db   $fc                                         ; $5c42: $fc
	cp   e                                           ; $5c43: $bb
	ld   h, h                                        ; $5c44: $64
	ld   b, c                                        ; $5c45: $41
	ld   [de], a                                     ; $5c46: $12
	jr   c, @-$53                                    ; $5c47: $38 $ab

	db   $fd                                         ; $5c49: $fd
	cp   $ab                                         ; $5c4a: $fe $ab
	add  l                                           ; $5c4c: $85
	ld   b, d                                        ; $5c4d: $42
	ld   de, $ab26                                   ; $5c4e: $11 $26 $ab
	rst  $38                                         ; $5c51: $ff
	cp   $ca                                         ; $5c52: $fe $ca
	sub  l                                           ; $5c54: $95
	ld   [hl-], a                                    ; $5c55: $32
	ld   de, $9b26                                   ; $5c56: $11 $26 $9b
	sbc  $df                                         ; $5c59: $de $df
	res  6, [hl]                                     ; $5c5b: $cb $b6
	ld   b, e                                        ; $5c5d: $43
	ld   de, $8915                                   ; $5c5e: $11 $15 $89
	xor  $ef                                         ; $5c61: $ee $ef
	res  6, a                                        ; $5c63: $cb $b7
	ld   d, e                                        ; $5c65: $53
	ld   de, $8914                                   ; $5c66: $11 $14 $89
	sbc  $df                                         ; $5c69: $de $df
	db   $db                                         ; $5c6b: $db
	or   [hl]                                        ; $5c6c: $b6
	ld   b, h                                        ; $5c6d: $44
	ld   de, $7914                                   ; $5c6e: $11 $14 $79
	call $dcee                                       ; $5c71: $cd $ee $dc
	sub  a                                           ; $5c74: $97
	ld   b, e                                        ; $5c75: $43
	ld   de, $7a25                                   ; $5c76: $11 $25 $7a
	db   $dd                                         ; $5c79: $dd
	xor  $dc                                         ; $5c7a: $ee $dc
	and  [hl]                                        ; $5c7c: $a6
	ld   b, e                                        ; $5c7d: $43
	ld   [bc], a                                     ; $5c7e: $02
	ld   [hl], $99                                   ; $5c7f: $36 $99
	call $dade                                       ; $5c81: $cd $de $da
	sub  [hl]                                        ; $5c84: $96
	ld   d, h                                        ; $5c85: $54
	ld   de, $8935                                   ; $5c86: $11 $35 $89
	call z, $cbde                                    ; $5c89: $cc $de $cb
	sub  [hl]                                        ; $5c8c: $96
	ld   d, e                                        ; $5c8d: $53
	ld   hl, $8935                                   ; $5c8e: $21 $35 $89
	call z, $ccde                                    ; $5c91: $cc $de $cc
	sub  [hl]                                        ; $5c94: $96
	ld   d, e                                        ; $5c95: $53
	ld   de, $7a36                                   ; $5c96: $11 $36 $7a
	call z, $dbed                                    ; $5c99: $cc $ed $db
	sub  [hl]                                        ; $5c9c: $96
	ld   d, e                                        ; $5c9d: $53
	ld   [de], a                                     ; $5c9e: $12
	dec  [hl]                                        ; $5c9f: $35
	sbc  c                                           ; $5ca0: $99
	call $cbde                                       ; $5ca1: $cd $de $cb
	sub  [hl]                                        ; $5ca4: $96
	ld   b, e                                        ; $5ca5: $43
	ld   [de], a                                     ; $5ca6: $12
	ld   b, [hl]                                     ; $5ca7: $46
	adc  c                                           ; $5ca8: $89
	cp   [hl]                                        ; $5ca9: $be
	sbc  $db                                         ; $5caa: $de $db
	sub  l                                           ; $5cac: $95
	ld   b, e                                        ; $5cad: $43
	ld   [hl+], a                                    ; $5cae: $22
	ld   b, [hl]                                     ; $5caf: $46
	adc  d                                           ; $5cb0: $8a
	db   $dd                                         ; $5cb1: $dd
	db   $dd                                         ; $5cb2: $dd
	res  0, [hl]                                     ; $5cb3: $cb $86
	ld   b, d                                        ; $5cb5: $42
	ld   [de], a                                     ; $5cb6: $12
	ld   b, [hl]                                     ; $5cb7: $46
	sbc  d                                           ; $5cb8: $9a
	call $caed                                       ; $5cb9: $cd $ed $ca
	add  l                                           ; $5cbc: $85
	ld   b, d                                        ; $5cbd: $42
	inc  de                                          ; $5cbe: $13
	ld   d, a                                        ; $5cbf: $57
	sbc  d                                           ; $5cc0: $9a
	call z, $badd                                    ; $5cc1: $cc $dd $ba
	add  l                                           ; $5cc4: $85
	ld   b, d                                        ; $5cc5: $42
	inc  hl                                          ; $5cc6: $23
	ld   d, a                                        ; $5cc7: $57
	xor  e                                           ; $5cc8: $ab
	adc  $ec                                         ; $5cc9: $ce $ec
	ret  z                                           ; $5ccb: $c8

	ld   h, l                                        ; $5ccc: $65
	ld   [hl-], a                                    ; $5ccd: $32
	inc  [hl]                                        ; $5cce: $34
	ld   l, b                                        ; $5ccf: $68
	sbc  e                                           ; $5cd0: $9b
	call $b9cc                                       ; $5cd1: $cd $cc $b9
	ld   h, l                                        ; $5cd4: $65
	ld   [hl-], a                                    ; $5cd5: $32
	inc  [hl]                                        ; $5cd6: $34
	ld   a, c                                        ; $5cd7: $79
	xor  l                                           ; $5cd8: $ad
	call z, $a7da                                    ; $5cd9: $cc $da $a7
	ld   d, h                                        ; $5cdc: $54
	ld   [hl+], a                                    ; $5cdd: $22
	ld   b, [hl]                                     ; $5cde: $46
	ld   a, d                                        ; $5cdf: $7a
	cp   h                                           ; $5ce0: $bc
	db   $ed                                         ; $5ce1: $ed
	jp   z, Jump_0eb_5376                            ; $5ce2: $ca $76 $53

	inc  [hl]                                        ; $5ce5: $34
	ld   d, [hl]                                     ; $5ce6: $56
	sbc  d                                           ; $5ce7: $9a
	cp   h                                           ; $5ce8: $bc
	set  1, d                                        ; $5ce9: $cb $ca
	halt                                             ; $5ceb: $76
	ld   b, h                                        ; $5cec: $44
	inc  [hl]                                        ; $5ced: $34
	ld   h, a                                        ; $5cee: $67
	sbc  d                                           ; $5cef: $9a
	cp   e                                           ; $5cf0: $bb
	cp   e                                           ; $5cf1: $bb
	cp   c                                           ; $5cf2: $b9
	add  a                                           ; $5cf3: $87
	ld   b, h                                        ; $5cf4: $44
	inc  [hl]                                        ; $5cf5: $34
	ld   h, a                                        ; $5cf6: $67
	xor  e                                           ; $5cf7: $ab
	cp   h                                           ; $5cf8: $bc
	res  7, b                                        ; $5cf9: $cb $b8
	halt                                             ; $5cfb: $76
	ld   d, h                                        ; $5cfc: $54
	ld   b, h                                        ; $5cfd: $44
	ld   h, a                                        ; $5cfe: $67
	sbc  e                                           ; $5cff: $9b
	xor  e                                           ; $5d00: $ab
	cp   e                                           ; $5d01: $bb
	cp   c                                           ; $5d02: $b9
	ld   [hl], a                                     ; $5d03: $77
	ld   d, l                                        ; $5d04: $55
	ld   d, l                                        ; $5d05: $55
	ld   h, a                                        ; $5d06: $67
	sbc  c                                           ; $5d07: $99
	xor  e                                           ; $5d08: $ab
	cp   e                                           ; $5d09: $bb
	xor  c                                           ; $5d0a: $a9
	ld   [hl], a                                     ; $5d0b: $77
	ld   d, h                                        ; $5d0c: $54
	ld   b, h                                        ; $5d0d: $44
	ld   l, b                                        ; $5d0e: $68
	sbc  d                                           ; $5d0f: $9a
	cp   e                                           ; $5d10: $bb
	cp   d                                           ; $5d11: $ba
	xor  b                                           ; $5d12: $a8
	ld   [hl], a                                     ; $5d13: $77
	ld   d, l                                        ; $5d14: $55
	ld   d, h                                        ; $5d15: $54
	ld   h, a                                        ; $5d16: $67
	sbc  e                                           ; $5d17: $9b
	xor  d                                           ; $5d18: $aa
	xor  d                                           ; $5d19: $aa
	xor  b                                           ; $5d1a: $a8
	ld   [hl], a                                     ; $5d1b: $77
	ld   h, l                                        ; $5d1c: $65
	ld   d, l                                        ; $5d1d: $55
	ld   h, a                                        ; $5d1e: $67
	adc  c                                           ; $5d1f: $89
	xor  d                                           ; $5d20: $aa
	xor  d                                           ; $5d21: $aa
	sbc  b                                           ; $5d22: $98
	ld   [hl], a                                     ; $5d23: $77
	ld   h, [hl]                                     ; $5d24: $66
	ld   h, [hl]                                     ; $5d25: $66
	ld   h, a                                        ; $5d26: $67
	sbc  c                                           ; $5d27: $99
	xor  d                                           ; $5d28: $aa
	xor  c                                           ; $5d29: $a9
	sbc  b                                           ; $5d2a: $98
	add  a                                           ; $5d2b: $87
	ld   [hl], a                                     ; $5d2c: $77
	ld   h, [hl]                                     ; $5d2d: $66
	ld   h, [hl]                                     ; $5d2e: $66
	adc  c                                           ; $5d2f: $89
	sbc  d                                           ; $5d30: $9a
	xor  c                                           ; $5d31: $a9
	xor  b                                           ; $5d32: $a8
	add  a                                           ; $5d33: $87
	halt                                             ; $5d34: $76
	ld   h, [hl]                                     ; $5d35: $66
	ld   h, a                                        ; $5d36: $67
	adc  b                                           ; $5d37: $88
	sbc  c                                           ; $5d38: $99
	sbc  d                                           ; $5d39: $9a
	adc  b                                           ; $5d3a: $88
	sbc  b                                           ; $5d3b: $98
	ld   [hl], a                                     ; $5d3c: $77
	ld   h, [hl]                                     ; $5d3d: $66
	ld   h, a                                        ; $5d3e: $67
	ld   a, c                                        ; $5d3f: $79
	sbc  c                                           ; $5d40: $99
	xor  d                                           ; $5d41: $aa
	sbc  c                                           ; $5d42: $99
	add  a                                           ; $5d43: $87
	ld   [hl], a                                     ; $5d44: $77
	ld   h, [hl]                                     ; $5d45: $66
	ld   [hl], a                                     ; $5d46: $77
	adc  b                                           ; $5d47: $88
	sbc  c                                           ; $5d48: $99
	sbc  c                                           ; $5d49: $99
	sbc  c                                           ; $5d4a: $99
	adc  b                                           ; $5d4b: $88
	add  a                                           ; $5d4c: $87
	ld   [hl], a                                     ; $5d4d: $77
	ld   h, a                                        ; $5d4e: $67
	ld   a, c                                        ; $5d4f: $79
	sbc  d                                           ; $5d50: $9a
	sbc  c                                           ; $5d51: $99
	adc  b                                           ; $5d52: $88
	add  a                                           ; $5d53: $87
	ld   [hl], a                                     ; $5d54: $77
	ld   [hl], a                                     ; $5d55: $77
	ld   a, b                                        ; $5d56: $78
	ld   a, c                                        ; $5d57: $79
	sbc  b                                           ; $5d58: $98
	sbc  c                                           ; $5d59: $99
	sbc  b                                           ; $5d5a: $98
	ld   a, b                                        ; $5d5b: $78
	ld   [hl], a                                     ; $5d5c: $77
	ld   [hl], a                                     ; $5d5d: $77
	ld   [hl], a                                     ; $5d5e: $77
	adc  b                                           ; $5d5f: $88
	sbc  c                                           ; $5d60: $99
	adc  c                                           ; $5d61: $89
	adc  b                                           ; $5d62: $88
	add  a                                           ; $5d63: $87
	adc  b                                           ; $5d64: $88
	ld   [hl], a                                     ; $5d65: $77
	ld   [hl], a                                     ; $5d66: $77
	ld   a, c                                        ; $5d67: $79
	sbc  c                                           ; $5d68: $99
	sbc  c                                           ; $5d69: $99
	sbc  b                                           ; $5d6a: $98
	add  a                                           ; $5d6b: $87
	add  a                                           ; $5d6c: $87
	ld   [hl], a                                     ; $5d6d: $77
	ld   a, b                                        ; $5d6e: $78
	adc  b                                           ; $5d6f: $88
	adc  c                                           ; $5d70: $89
	adc  b                                           ; $5d71: $88
	adc  b                                           ; $5d72: $88
	adc  b                                           ; $5d73: $88
	ld   a, b                                        ; $5d74: $78
	ld   [hl], a                                     ; $5d75: $77
	add  a                                           ; $5d76: $87
	adc  b                                           ; $5d77: $88
	adc  c                                           ; $5d78: $89
	sbc  b                                           ; $5d79: $98
	adc  c                                           ; $5d7a: $89
	adc  b                                           ; $5d7b: $88
	ld   [hl], a                                     ; $5d7c: $77
	ld   [hl], a                                     ; $5d7d: $77
	adc  b                                           ; $5d7e: $88
	adc  b                                           ; $5d7f: $88
	adc  b                                           ; $5d80: $88
	sbc  c                                           ; $5d81: $99
	adc  c                                           ; $5d82: $89
	adc  b                                           ; $5d83: $88
	add  a                                           ; $5d84: $87
	ld   [hl], a                                     ; $5d85: $77
	ld   a, b                                        ; $5d86: $78
	adc  b                                           ; $5d87: $88
	adc  b                                           ; $5d88: $88
	adc  c                                           ; $5d89: $89
	adc  b                                           ; $5d8a: $88
	sbc  c                                           ; $5d8b: $99
	adc  b                                           ; $5d8c: $88
	ld   [hl], a                                     ; $5d8d: $77
	ld   [hl], a                                     ; $5d8e: $77
	adc  b                                           ; $5d8f: $88
	sbc  c                                           ; $5d90: $99
	sbc  b                                           ; $5d91: $98
	adc  c                                           ; $5d92: $89
	add  a                                           ; $5d93: $87
	add  a                                           ; $5d94: $87
	ld   a, b                                        ; $5d95: $78
	adc  b                                           ; $5d96: $88
	adc  b                                           ; $5d97: $88
	adc  b                                           ; $5d98: $88
	adc  c                                           ; $5d99: $89
	sbc  c                                           ; $5d9a: $99
	sbc  b                                           ; $5d9b: $98
	add  a                                           ; $5d9c: $87
	ld   [hl], a                                     ; $5d9d: $77
	ld   [hl], a                                     ; $5d9e: $77
	adc  b                                           ; $5d9f: $88
	adc  c                                           ; $5da0: $89
	sbc  c                                           ; $5da1: $99
	sbc  b                                           ; $5da2: $98
	adc  b                                           ; $5da3: $88
	adc  b                                           ; $5da4: $88
	ld   [hl], a                                     ; $5da5: $77
	ld   [hl], a                                     ; $5da6: $77
	adc  b                                           ; $5da7: $88
	adc  b                                           ; $5da8: $88
	adc  c                                           ; $5da9: $89
	sbc  c                                           ; $5daa: $99
	sbc  b                                           ; $5dab: $98
	adc  b                                           ; $5dac: $88
	ld   [hl], a                                     ; $5dad: $77
	ld   [hl], a                                     ; $5dae: $77
	adc  b                                           ; $5daf: $88
	sbc  c                                           ; $5db0: $99
	sbc  c                                           ; $5db1: $99
	adc  b                                           ; $5db2: $88
	adc  b                                           ; $5db3: $88
	adc  b                                           ; $5db4: $88
	adc  b                                           ; $5db5: $88
	adc  b                                           ; $5db6: $88
	adc  b                                           ; $5db7: $88
	adc  c                                           ; $5db8: $89
	sbc  b                                           ; $5db9: $98
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
	adc  c                                           ; $5dc9: $89
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
	adc  c                                           ; $5de1: $89
	sbc  b                                           ; $5de2: $98
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
	ld   de, $1111                                   ; $5e0f: $11 $11 $11
	ld   de, $1111                                   ; $5e12: $11 $11 $11
	ld   de, $1111                                   ; $5e15: $11 $11 $11
	ld   de, $1111                                   ; $5e18: $11 $11 $11
	ld   de, $1111                                   ; $5e1b: $11 $11 $11
	ld   de, $1111                                   ; $5e1e: $11 $11 $11
	ld   de, $1111                                   ; $5e21: $11 $11 $11
	ld   de, $1111                                   ; $5e24: $11 $11 $11
	ld   de, $1111                                   ; $5e27: $11 $11 $11
	ld   de, $1111                                   ; $5e2a: $11 $11 $11
	ld   de, $1111                                   ; $5e2d: $11 $11 $11
	ld   de, $1111                                   ; $5e30: $11 $11 $11
	ld   de, $1111                                   ; $5e33: $11 $11 $11
	ld   de, $1111                                   ; $5e36: $11 $11 $11
	ld   de, $1111                                   ; $5e39: $11 $11 $11
	ld   de, $1111                                   ; $5e3c: $11 $11 $11
	ld   de, $1111                                   ; $5e3f: $11 $11 $11
	nop                                              ; $5e42: $00
	ld   c, b                                        ; $5e43: $48
	ld   de, $1111                                   ; $5e44: $11 $11 $11
	ld   de, $1111                                   ; $5e47: $11 $11 $11
	ld   de, $1111                                   ; $5e4a: $11 $11 $11
	ld   de, $5413                                   ; $5e4d: $11 $13 $54
	ld   d, h                                        ; $5e50: $54
	ld   d, h                                        ; $5e51: $54
	ld   b, c                                        ; $5e52: $41
	rra                                              ; $5e53: $1f
	rst  $38                                         ; $5e54: $ff
	pop  af                                          ; $5e55: $f1
	ld   de, $1911                                   ; $5e56: $11 $11 $19
	pop  hl                                          ; $5e59: $e1
	ld   de, $de1c                                   ; $5e5a: $11 $1c $de
	cp   h                                           ; $5e5d: $bc
	sbc  $b1                                         ; $5e5e: $de $b1
	ld   de, $1111                                   ; $5e60: $11 $11 $11
	ld   de, $1111                                   ; $5e63: $11 $11 $11
	ld   de, $1111                                   ; $5e66: $11 $11 $11
	ld   de, $1111                                   ; $5e69: $11 $11 $11
	ld   de, $5411                                   ; $5e6c: $11 $11 $54
	ld   b, h                                        ; $5e6f: $44
	jp   hl                                          ; $5e70: $e9


	ld   de, $5454                                   ; $5e71: $11 $54 $54
	ld   h, a                                        ; $5e74: $67
	ld   [hl], d                                     ; $5e75: $72
	ld   de, $1111                                   ; $5e76: $11 $11 $11
	ld   de, $1112                                   ; $5e79: $11 $12 $11
	ld   [de], a                                     ; $5e7c: $12
	ld   de, $1111                                   ; $5e7d: $11 $11 $11
	ld   h, [hl]                                     ; $5e80: $66
	halt                                             ; $5e81: $76
	ret                                              ; $5e82: $c9


	ld   de, $8888                                   ; $5e83: $11 $88 $88
	adc  b                                           ; $5e86: $88
	adc  b                                           ; $5e87: $88
	adc  b                                           ; $5e88: $88
	adc  b                                           ; $5e89: $88
	adc  b                                           ; $5e8a: $88
	sbc  b                                           ; $5e8b: $98
	adc  b                                           ; $5e8c: $88
	add  a                                           ; $5e8d: $87
	adc  b                                           ; $5e8e: $88
	adc  b                                           ; $5e8f: $88
	adc  b                                           ; $5e90: $88
	adc  b                                           ; $5e91: $88
	adc  b                                           ; $5e92: $88
	add  a                                           ; $5e93: $87
	sbc  b                                           ; $5e94: $98
	adc  b                                           ; $5e95: $88
	adc  b                                           ; $5e96: $88
	adc  b                                           ; $5e97: $88
	adc  b                                           ; $5e98: $88
	adc  b                                           ; $5e99: $88
	adc  b                                           ; $5e9a: $88
	sbc  c                                           ; $5e9b: $99
	adc  c                                           ; $5e9c: $89
	sbc  b                                           ; $5e9d: $98
	adc  b                                           ; $5e9e: $88
	add  a                                           ; $5e9f: $87
	ld   [hl], a                                     ; $5ea0: $77
	ld   a, b                                        ; $5ea1: $78
	adc  b                                           ; $5ea2: $88
	adc  b                                           ; $5ea3: $88
	sbc  b                                           ; $5ea4: $98
	adc  b                                           ; $5ea5: $88
	add  a                                           ; $5ea6: $87
	ld   a, b                                        ; $5ea7: $78
	ld   a, b                                        ; $5ea8: $78
	add  a                                           ; $5ea9: $87
	sbc  b                                           ; $5eaa: $98
	adc  b                                           ; $5eab: $88
	sbc  b                                           ; $5eac: $98
	sbc  c                                           ; $5ead: $99
	adc  b                                           ; $5eae: $88
	ld   [hl], a                                     ; $5eaf: $77
	ld   [hl], a                                     ; $5eb0: $77
	add  a                                           ; $5eb1: $87
	adc  b                                           ; $5eb2: $88
	adc  c                                           ; $5eb3: $89
	sub  a                                           ; $5eb4: $97
	adc  b                                           ; $5eb5: $88
	ld   a, c                                        ; $5eb6: $79
	adc  b                                           ; $5eb7: $88
	adc  b                                           ; $5eb8: $88
	ld   a, b                                        ; $5eb9: $78
	sub  a                                           ; $5eba: $97
	adc  b                                           ; $5ebb: $88
	ld   [hl], a                                     ; $5ebc: $77
	adc  b                                           ; $5ebd: $88
	adc  c                                           ; $5ebe: $89
	sbc  d                                           ; $5ebf: $9a
	sbc  c                                           ; $5ec0: $99
	add  a                                           ; $5ec1: $87
	ld   h, [hl]                                     ; $5ec2: $66
	ld   h, [hl]                                     ; $5ec3: $66
	ld   a, b                                        ; $5ec4: $78
	adc  d                                           ; $5ec5: $8a
	xor  d                                           ; $5ec6: $aa
	cp   d                                           ; $5ec7: $ba
	sbc  c                                           ; $5ec8: $99
	ld   [hl], h                                     ; $5ec9: $74
	ld   d, h                                        ; $5eca: $54
	ld   b, [hl]                                     ; $5ecb: $46
	ld   l, b                                        ; $5ecc: $68
	cp   h                                           ; $5ecd: $bc
	call $a7c9                                       ; $5ece: $cd $c9 $a7
	ld   d, l                                        ; $5ed1: $55
	ld   [hl+], a                                    ; $5ed2: $22
	dec  h                                           ; $5ed3: $25
	ld   l, b                                        ; $5ed4: $68
	db   $dd                                         ; $5ed5: $dd
	cp   $db                                         ; $5ed6: $fe $db
	sub  [hl]                                        ; $5ed8: $96
	ld   b, e                                        ; $5ed9: $43
	ld   de, $7b22                                   ; $5eda: $11 $22 $7b
	rst  $28                                         ; $5edd: $ef
	rst  $38                                         ; $5ede: $ff
	db   $eb                                         ; $5edf: $eb
	ld   [hl], e                                     ; $5ee0: $73
	ld   hl, $1411                                   ; $5ee1: $21 $11 $14
	cp   a                                           ; $5ee4: $bf
	rst  $38                                         ; $5ee5: $ff
	rst  $38                                         ; $5ee6: $ff
	jp   hl                                          ; $5ee7: $e9


	ld   sp, $1111                                   ; $5ee8: $31 $11 $11
	ld   a, [hl+]                                    ; $5eeb: $2a
	rst  $28                                         ; $5eec: $ef
	rst  $38                                         ; $5eed: $ff
	rst  $38                                         ; $5eee: $ff
	sub  h                                           ; $5eef: $94
	ld   de, $1111                                   ; $5ef0: $11 $11 $11
	cp   [hl]                                        ; $5ef3: $be
	rst  $38                                         ; $5ef4: $ff
	rst  $38                                         ; $5ef5: $ff
	ld   sp, hl                                      ; $5ef6: $f9
	ld   d, c                                        ; $5ef7: $51
	ld   de, $1b11                                   ; $5ef8: $11 $11 $1b
	rst  JumpTable                                         ; $5efb: $df
	rst  $38                                         ; $5efc: $ff
	rst  $38                                         ; $5efd: $ff
	and  l                                           ; $5efe: $a5
	ld   de, $1111                                   ; $5eff: $11 $11 $11
	xor  a                                           ; $5f02: $af
	rst  $38                                         ; $5f03: $ff
	rst  $38                                         ; $5f04: $ff
	ld   a, [$1141]                                  ; $5f05: $fa $41 $11
	ld   de, $ff1c                                   ; $5f08: $11 $1c $ff
	rst  $38                                         ; $5f0b: $ff
	rst  $38                                         ; $5f0c: $ff
	sub  d                                           ; $5f0d: $92
	ld   de, $1211                                   ; $5f0e: $11 $11 $12
	rst  $38                                         ; $5f11: $ff
	rst  $38                                         ; $5f12: $ff
	rst  $38                                         ; $5f13: $ff
	sub  $11                                         ; $5f14: $d6 $11
	ld   de, $8f11                                   ; $5f16: $11 $11 $8f
	rst  $38                                         ; $5f19: $ff
	rst  $38                                         ; $5f1a: $ff
	ld   sp, hl                                      ; $5f1b: $f9
	ld   hl, $1111                                   ; $5f1c: $21 $11 $11
	ccf                                              ; $5f1f: $3f
	rst  $38                                         ; $5f20: $ff
	rst  $38                                         ; $5f21: $ff
	ei                                               ; $5f22: $fb
	ld   b, c                                        ; $5f23: $41
	ld   de, $1d11                                   ; $5f24: $11 $11 $1d
	rst  $38                                         ; $5f27: $ff
	rst  $38                                         ; $5f28: $ff
	db   $fc                                         ; $5f29: $fc
	ld   h, c                                        ; $5f2a: $61
	ld   de, $1911                                   ; $5f2b: $11 $11 $19
	rst  $38                                         ; $5f2e: $ff
	rst  $38                                         ; $5f2f: $ff
	rst  $38                                         ; $5f30: $ff
	add  c                                           ; $5f31: $81
	ld   de, $1611                                   ; $5f32: $11 $11 $16
	rst  $38                                         ; $5f35: $ff
	rst  $38                                         ; $5f36: $ff
	rst  $38                                         ; $5f37: $ff
	sub  h                                           ; $5f38: $94
	ld   de, $1211                                   ; $5f39: $11 $11 $12
	rst  $38                                         ; $5f3c: $ff
	rst  $38                                         ; $5f3d: $ff
	rst  $38                                         ; $5f3e: $ff
	or   [hl]                                        ; $5f3f: $b6
	ld   de, $1111                                   ; $5f40: $11 $11 $11
	rst  JumpTable                                         ; $5f43: $df
	rst  $38                                         ; $5f44: $ff
	rst  $38                                         ; $5f45: $ff
	ret  z                                           ; $5f46: $c8

	ld   de, $1111                                   ; $5f47: $11 $11 $11
	adc  a                                           ; $5f4a: $8f
	rst  $38                                         ; $5f4b: $ff
	rst  $38                                         ; $5f4c: $ff
	ld   a, [$1111]                                  ; $5f4d: $fa $11 $11
	ld   de, $ff2f                                   ; $5f50: $11 $2f $ff
	rst  $38                                         ; $5f53: $ff
	db   $fc                                         ; $5f54: $fc
	ld   d, c                                        ; $5f55: $51
	ld   de, $1c11                                   ; $5f56: $11 $11 $1c
	rst  $38                                         ; $5f59: $ff
	rst  $38                                         ; $5f5a: $ff
	db   $fd                                         ; $5f5b: $fd
	sub  c                                           ; $5f5c: $91
	ld   de, $1211                                   ; $5f5d: $11 $11 $12
	rst  $38                                         ; $5f60: $ff
	rst  $38                                         ; $5f61: $ff
	rst  $38                                         ; $5f62: $ff
	and  [hl]                                        ; $5f63: $a6
	ld   de, $2111                                   ; $5f64: $11 $11 $21
	cp   a                                           ; $5f67: $bf
	rst  $38                                         ; $5f68: $ff
	rst  $38                                         ; $5f69: $ff
	add  sp, $21                                     ; $5f6a: $e8 $21
	ld   de, $1f11                                   ; $5f6c: $11 $11 $1f
	rst  $38                                         ; $5f6f: $ff
	rst  $38                                         ; $5f70: $ff
	db   $fc                                         ; $5f71: $fc
	ld   d, c                                        ; $5f72: $51
	ld   de, $1a13                                   ; $5f73: $11 $13 $1a
	rst  $38                                         ; $5f76: $ff
	rst  $38                                         ; $5f77: $ff
	rst  $38                                         ; $5f78: $ff
	add  c                                           ; $5f79: $81
	ld   de, $1111                                   ; $5f7a: $11 $11 $11
	rst  $38                                         ; $5f7d: $ff
	rst  $38                                         ; $5f7e: $ff
	rst  $38                                         ; $5f7f: $ff
	or   l                                           ; $5f80: $b5
	ld   de, $3111                                   ; $5f81: $11 $11 $31
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f84: $cf
	rst  $38                                         ; $5f85: $ff
	rst  $38                                         ; $5f86: $ff
	ret  c                                           ; $5f87: $d8

	ld   de, $1111                                   ; $5f88: $11 $11 $11
	cpl                                              ; $5f8b: $2f
	rst  $38                                         ; $5f8c: $ff
	rst  $38                                         ; $5f8d: $ff
	ld   a, [$1141]                                  ; $5f8e: $fa $41 $11
	inc  d                                           ; $5f91: $14
	ld   e, $ff                                      ; $5f92: $1e $ff
	rst  $38                                         ; $5f94: $ff
	db   $fd                                         ; $5f95: $fd
	ld   [hl], c                                     ; $5f96: $71
	ld   de, $1311                                   ; $5f97: $11 $11 $13
	rst  $38                                         ; $5f9a: $ff
	rst  $38                                         ; $5f9b: $ff
	rst  $38                                         ; $5f9c: $ff
	and  e                                           ; $5f9d: $a3
	ld   de, $5111                                   ; $5f9e: $11 $11 $51
	rst  $38                                         ; $5fa1: $ff
	rst  $38                                         ; $5fa2: $ff
	rst  $38                                         ; $5fa3: $ff
	add  $11                                         ; $5fa4: $c6 $11
	ld   de, $6f31                                   ; $5fa6: $11 $31 $6f
	rst  $38                                         ; $5fa9: $ff
	rst  $38                                         ; $5faa: $ff
	ld   sp, hl                                      ; $5fab: $f9
	ld   hl, $1511                                   ; $5fac: $21 $11 $15
	rra                                              ; $5faf: $1f
	rst  $38                                         ; $5fb0: $ff
	rst  $38                                         ; $5fb1: $ff
	db   $ec                                         ; $5fb2: $ec
	ld   h, c                                        ; $5fb3: $61
	ld   de, $0614                                   ; $5fb4: $11 $14 $06
	rst  $38                                         ; $5fb7: $ff
	rst  $38                                         ; $5fb8: $ff
	cp   $a1                                         ; $5fb9: $fe $a1
	ld   de, $6111                                   ; $5fbb: $11 $11 $61
	rst  $38                                         ; $5fbe: $ff
	rst  $38                                         ; $5fbf: $ff
	cp   $b6                                         ; $5fc0: $fe $b6
	ld   de, $5111                                   ; $5fc2: $11 $11 $51
	ld   l, a                                        ; $5fc5: $6f
	rst  $38                                         ; $5fc6: $ff
	rst  $38                                         ; $5fc7: $ff
	jp   z, $1111                                    ; $5fc8: $ca $11 $11

	ld   d, $1f                                      ; $5fcb: $16 $1f
	rst  $38                                         ; $5fcd: $ff
	rst  $38                                         ; $5fce: $ff
	db   $eb                                         ; $5fcf: $eb
	ld   d, c                                        ; $5fd0: $51
	ld   de, $1b16                                   ; $5fd1: $11 $16 $1b
	rst  $38                                         ; $5fd4: $ff
	rst  $38                                         ; $5fd5: $ff
	db   $ec                                         ; $5fd6: $ec
	sub  c                                           ; $5fd7: $91
	ld   de, $2212                                   ; $5fd8: $11 $12 $22
	rst  $38                                         ; $5fdb: $ff
	rst  $38                                         ; $5fdc: $ff
	db   $fc                                         ; $5fdd: $fc
	and  d                                           ; $5fde: $a2
	ld   de, $5111                                   ; $5fdf: $11 $11 $51
	rst  $38                                         ; $5fe2: $ff
	rst  $38                                         ; $5fe3: $ff
	cp   $c5                                         ; $5fe4: $fe $c5
	ld   de, $6111                                   ; $5fe6: $11 $11 $61
	sbc  a                                           ; $5fe9: $9f
	rst  $38                                         ; $5fea: $ff
	rst  $38                                         ; $5feb: $ff
	ret  c                                           ; $5fec: $d8

	ld   de, $1311                                   ; $5fed: $11 $11 $13
	cpl                                              ; $5ff0: $2f
	rst  $38                                         ; $5ff1: $ff
	rst  $38                                         ; $5ff2: $ff
	jp   c, $1111                                    ; $5ff3: $da $11 $11

	ld   d, $1f                                      ; $5ff6: $16 $1f
	rst  $38                                         ; $5ff8: $ff
	rst  $38                                         ; $5ff9: $ff
	bit  4, c                                        ; $5ffa: $cb $61
	ld   de, $1c16                                   ; $5ffc: $11 $16 $1c
	rst  $38                                         ; $5fff: $ff
	rst  $38                                         ; $6000: $ff
	db   $ed                                         ; $6001: $ed
	ld   h, c                                        ; $6002: $61
	ld   de, $3312                                   ; $6003: $11 $12 $33
	rst  $38                                         ; $6006: $ff
	rst  $38                                         ; $6007: $ff
	db   $fd                                         ; $6008: $fd
	sub  e                                           ; $6009: $93
	ld   de, $6111                                   ; $600a: $11 $11 $61
	rst  $38                                         ; $600d: $ff
	rst  $38                                         ; $600e: $ff
	cp   $c5                                         ; $600f: $fe $c5
	ld   de, $4311                                   ; $6011: $11 $11 $43
	ld   l, a                                        ; $6014: $6f
	rst  $38                                         ; $6015: $ff
	rst  $38                                         ; $6016: $ff
	jp   z, $1121                                    ; $6017: $ca $21 $11

	jr   jr_0eb_603b                                 ; $601a: $18 $1f

	rst  $38                                         ; $601c: $ff
	rst  $38                                         ; $601d: $ff
	db   $db                                         ; $601e: $db
	ld   h, c                                        ; $601f: $61
	ld   de, $6512                                   ; $6020: $11 $12 $65
	rst  $38                                         ; $6023: $ff
	rst  $38                                         ; $6024: $ff
	ei                                               ; $6025: $fb
	sub  h                                           ; $6026: $94
	ld   de, $8211                                   ; $6027: $11 $11 $82
	rst  $28                                         ; $602a: $ef
	rst  $38                                         ; $602b: $ff
	db   $fd                                         ; $602c: $fd
	or   l                                           ; $602d: $b5
	ld   de, $1811                                   ; $602e: $11 $11 $18
	ld   e, a                                        ; $6031: $5f
	rst  $38                                         ; $6032: $ff
	rst  $38                                         ; $6033: $ff
	or   a                                           ; $6034: $b7
	ld   h, c                                        ; $6035: $61
	ld   de, $3a16                                   ; $6036: $11 $16 $3a
	rst  $38                                         ; $6039: $ff
	rst  $38                                         ; $603a: $ff

jr_0eb_603b:
	ei                                               ; $603b: $fb
	ld   [hl], c                                     ; $603c: $71
	ld   de, $6511                                   ; $603d: $11 $11 $65
	rst  $38                                         ; $6040: $ff
	rst  $38                                         ; $6041: $ff
	rst  $38                                         ; $6042: $ff
	add  [hl]                                        ; $6043: $86
	ld   de, $1911                                   ; $6044: $11 $11 $19
	ld   c, a                                        ; $6047: $4f
	rst  $38                                         ; $6048: $ff
	rst  $38                                         ; $6049: $ff
	ld   sp, hl                                      ; $604a: $f9
	ld   [hl], c                                     ; $604b: $71
	ld   de, $9411                                   ; $604c: $11 $11 $94
	rst  $38                                         ; $604f: $ff
	rst  $38                                         ; $6050: $ff
	cp   $a7                                         ; $6051: $fe $a7
	ld   hl, $1811                                   ; $6053: $21 $11 $18
	ld   a, c                                        ; $6056: $79
	rst  $38                                         ; $6057: $ff
	rst  $38                                         ; $6058: $ff
	call z, $11a4                                    ; $6059: $cc $a4 $11
	ld   de, $aa16                                   ; $605c: $11 $16 $aa
	rst  $38                                         ; $605f: $ff
	rst  $38                                         ; $6060: $ff
	cp   h                                           ; $6061: $bc
	or   h                                           ; $6062: $b4
	inc  d                                           ; $6063: $14
	ld   de, $b611                                   ; $6064: $11 $11 $b6
	rst  $38                                         ; $6067: $ff
	rst  $38                                         ; $6068: $ff
	ei                                               ; $6069: $fb
	reti                                             ; $606a: $d9


	ld   b, [hl]                                     ; $606b: $46
	ld   sp, $1911                                   ; $606c: $31 $11 $19
	ld   a, a                                        ; $606f: $7f
	rst  $38                                         ; $6070: $ff
	rst  $38                                         ; $6071: $ff
	db   $db                                         ; $6072: $db
	or   l                                           ; $6073: $b5
	ld   d, e                                        ; $6074: $53
	ld   de, $9a11                                   ; $6075: $11 $11 $9a
	xor  a                                           ; $6078: $af
	rst  $38                                         ; $6079: $ff
	cp   $ab                                         ; $607a: $fe $ab
	ld   h, d                                        ; $607c: $62
	ld   d, c                                        ; $607d: $51
	ld   de, $fb11                                   ; $607e: $11 $11 $fb
	rst  $28                                         ; $6081: $ef
	rst  $38                                         ; $6082: $ff
	ld   a, [$32b7]                                  ; $6083: $fa $b7 $32
	ld   sp, $1811                                   ; $6086: $31 $11 $18
	db   $fc                                         ; $6089: $fc
	rst  $38                                         ; $608a: $ff
	rst  $38                                         ; $608b: $ff
	rst  $10                                         ; $608c: $d7
	sub  [hl]                                        ; $608d: $96
	inc  h                                           ; $608e: $24
	ld   sp, $1d11                                   ; $608f: $31 $11 $1d
	cp   h                                           ; $6092: $bc
	rst  $38                                         ; $6093: $ff
	rst  $28                                         ; $6094: $ef
	cp   d                                           ; $6095: $ba
	sub  h                                           ; $6096: $94
	ld   d, h                                        ; $6097: $54
	ld   de, $5c11                                   ; $6098: $11 $11 $5c
	cp   a                                           ; $609b: $bf
	rst  $38                                         ; $609c: $ff
	cp   $bb                                         ; $609d: $fe $bb
	ld   [hl], l                                     ; $609f: $75
	ld   d, d                                        ; $60a0: $52
	ld   de, $ad11                                   ; $60a1: $11 $11 $ad
	xor  a                                           ; $60a4: $af
	rst  $38                                         ; $60a5: $ff
	db   $fd                                         ; $60a6: $fd
	cp   e                                           ; $60a7: $bb
	ld   d, d                                        ; $60a8: $52
	ld   b, c                                        ; $60a9: $41
	ld   de, $cf13                                   ; $60aa: $11 $13 $cf
	rst  $28                                         ; $60ad: $ef
	rst  $38                                         ; $60ae: $ff
	db   $fc                                         ; $60af: $fc
	add  h                                           ; $60b0: $84
	ld   b, e                                        ; $60b1: $43
	ld   [de], a                                     ; $60b2: $12
	ld   de, $dc18                                   ; $60b3: $11 $18 $dc
	rst  $38                                         ; $60b6: $ff
	rst  $38                                         ; $60b7: $ff
	db   $db                                         ; $60b8: $db
	and  l                                           ; $60b9: $a5
	ld   d, l                                        ; $60ba: $55
	ld   de, $1711                                   ; $60bb: $11 $11 $17
	call c, $feff                                    ; $60be: $dc $ff $fe
	ei                                               ; $60c1: $fb
	sub  l                                           ; $60c2: $95
	ld   d, c                                        ; $60c3: $51
	ld   de, $1a11                                   ; $60c4: $11 $11 $1a
	rst  JumpTable                                         ; $60c7: $df
	rst  $38                                         ; $60c8: $ff
	cp   $eb                                         ; $60c9: $fe $eb
	ld   b, l                                        ; $60cb: $45
	ld   sp, $1111                                   ; $60cc: $31 $11 $11
	ld   c, e                                        ; $60cf: $4b
	rst  $38                                         ; $60d0: $ff
	rst  $38                                         ; $60d1: $ff
	db   $fd                                         ; $60d2: $fd
	sub  $63                                         ; $60d3: $d6 $63
	ld   [de], a                                     ; $60d5: $12
	ld   hl, $4f11                                   ; $60d6: $21 $11 $4f
	cp   a                                           ; $60d9: $bf
	rst  $38                                         ; $60da: $ff
	rst  JumpTable                                         ; $60db: $df
	or   a                                           ; $60dc: $b7
	ld   h, h                                        ; $60dd: $64
	ld   [hl-], a                                    ; $60de: $32
	ld   hl, $5b11                                   ; $60df: $21 $11 $5b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60e2: $cf
	rst  $38                                         ; $60e3: $ff
	rst  JumpTable                                         ; $60e4: $df
	rst  $20                                         ; $60e5: $e7
	add  l                                           ; $60e6: $85
	ld   hl, $1121                                   ; $60e7: $21 $21 $11
	ld   e, h                                        ; $60ea: $5c
	cp   [hl]                                        ; $60eb: $be
	rst  $38                                         ; $60ec: $ff
	rst  $28                                         ; $60ed: $ef
	sub  $74                                         ; $60ee: $d6 $74
	ld   de, $1111                                   ; $60f0: $11 $11 $11
	ld   e, l                                        ; $60f3: $5d
	rst  JumpTable                                         ; $60f4: $df
	rst  $38                                         ; $60f5: $ff
	rst  $28                                         ; $60f6: $ef
	or   l                                           ; $60f7: $b5
	ld   d, h                                        ; $60f8: $54
	ld   [de], a                                     ; $60f9: $12
	ld   b, d                                        ; $60fa: $42
	ld   de, $9f4b                                   ; $60fb: $11 $4b $9f
	rst  $38                                         ; $60fe: $ff
	db   $fd                                         ; $60ff: $fd
	ret  z                                           ; $6100: $c8

	ld   h, [hl]                                     ; $6101: $66
	inc  sp                                          ; $6102: $33
	ld   b, e                                        ; $6103: $43
	ld   de, $ac17                                   ; $6104: $11 $17 $ac
	rst  $38                                         ; $6107: $ff
	rst  $38                                         ; $6108: $ff
	ei                                               ; $6109: $fb
	ld   a, b                                        ; $610a: $78
	ld   [hl-], a                                    ; $610b: $32
	ld   [hl-], a                                    ; $610c: $32
	ld   de, $9b15                                   ; $610d: $11 $15 $9b
	rst  $38                                         ; $6110: $ff
	rst  $38                                         ; $6111: $ff
	db   $fc                                         ; $6112: $fc
	ld   [hl], a                                     ; $6113: $77
	ld   sp, $1112                                   ; $6114: $31 $12 $11
	inc  d                                           ; $6117: $14
	adc  h                                           ; $6118: $8c
	rst  $38                                         ; $6119: $ff

Jump_0eb_611a:
	rst  $38                                         ; $611a: $ff
	xor  $67                                         ; $611b: $ee $67
	ld   d, c                                        ; $611d: $51
	ld   [de], a                                     ; $611e: $12
	ld   de, $7b14                                   ; $611f: $11 $14 $7b
	rst  $38                                         ; $6122: $ff
	rst  $38                                         ; $6123: $ff
	cp   $96                                         ; $6124: $fe $96
	ld   h, d                                        ; $6126: $62
	inc  hl                                          ; $6127: $23
	ld   b, c                                        ; $6128: $41
	ld   de, $bf69                                   ; $6129: $11 $69 $bf
	rst  $38                                         ; $612c: $ff
	cp   $c9                                         ; $612d: $fe $c9
	ld   [hl], l                                     ; $612f: $75
	ld   [de], a                                     ; $6130: $12
	ld   [hl-], a                                    ; $6131: $32
	ld   de, $ae38                                   ; $6132: $11 $38 $ae
	rst  $38                                         ; $6135: $ff
	rst  $38                                         ; $6136: $ff
	ld   [$1174], a                                  ; $6137: $ea $74 $11
	ld   hl, $3711                                   ; $613a: $21 $11 $37
	sbc  a                                           ; $613d: $9f
	rst  $38                                         ; $613e: $ff
	rst  $38                                         ; $613f: $ff
	ld   sp, hl                                      ; $6140: $f9
	add  l                                           ; $6141: $85
	ld   de, $1112                                   ; $6142: $11 $12 $11
	inc  h                                           ; $6145: $24
	call $fdef                                       ; $6146: $cd $ef $fd
	cp   $77                                         ; $6149: $fe $77
	ld   b, c                                        ; $614b: $41
	inc  h                                           ; $614c: $24
	ld   b, e                                        ; $614d: $43
	ld   bc, $cd6b                                   ; $614e: $01 $6b $cd
	rst  $38                                         ; $6151: $ff
	rst  $38                                         ; $6152: $ff
	cp   d                                           ; $6153: $ba
	ld   d, d                                        ; $6154: $52
	ld   [hl+], a                                    ; $6155: $22
	ld   b, l                                        ; $6156: $45
	ld   hl, $8d37                                   ; $6157: $21 $37 $8d
	rst  $38                                         ; $615a: $ff
	rst  $38                                         ; $615b: $ff
	ld   a, [$1294]                                  ; $615c: $fa $94 $12
	dec  d                                           ; $615f: $15
	ld   sp, $7d14                                   ; $6160: $31 $14 $7d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6163: $cf
	db   $fd                                         ; $6164: $fd
	rst  $38                                         ; $6165: $ff
	ld   a, c                                        ; $6166: $79
	inc  sp                                          ; $6167: $33
	inc  hl                                          ; $6168: $23
	ld   d, e                                        ; $6169: $53
	ld   de, $bd57                                   ; $616a: $11 $57 $bd
	rst  $38                                         ; $616d: $ff
	rst  JumpTable                                         ; $616e: $df
	ret  c                                           ; $616f: $d8

	ld   [hl], d                                     ; $6170: $72
	inc  h                                           ; $6171: $24
	ld   b, l                                        ; $6172: $45
	ld   d, c                                        ; $6173: $51
	inc  h                                           ; $6174: $24
	ld   a, h                                        ; $6175: $7c
	sbc  a                                           ; $6176: $9f
	ei                                               ; $6177: $fb
	db   $fd                                         ; $6178: $fd
	sbc  c                                           ; $6179: $99
	ld   b, h                                        ; $617a: $44
	ld   b, l                                        ; $617b: $45
	ld   d, l                                        ; $617c: $55
	ld   de, $cb44                                   ; $617d: $11 $44 $cb
	xor  a                                           ; $6180: $af
	rst  $28                                         ; $6181: $ef
	ei                                               ; $6182: $fb
	add  l                                           ; $6183: $85
	ld   b, e                                        ; $6184: $43
	dec  [hl]                                        ; $6185: $35

jr_0eb_6186:
	ld   h, d                                        ; $6186: $62
	dec  d                                           ; $6187: $15
	scf                                              ; $6188: $37

jr_0eb_6189:
	jp   hl                                          ; $6189: $e9


	rst  $28                                         ; $618a: $ef
	sbc  $e9                                         ; $618b: $de $e9
	ld   [hl], h                                     ; $618d: $74
	ld   d, l                                        ; $618e: $55
	ld   b, l                                        ; $618f: $45
	ld   sp, $6b13                                   ; $6190: $31 $13 $6b
	cp   [hl]                                        ; $6193: $be
	rst  $38                                         ; $6194: $ff
	rst  $38                                         ; $6195: $ff
	ret                                              ; $6196: $c9


	ld   d, h                                        ; $6197: $54
	ld   b, e                                        ; $6198: $43
	ld   h, [hl]                                     ; $6199: $66

jr_0eb_619a:
	ld   de, $ad31                                   ; $619a: $11 $31 $ad
	sbc  a                                           ; $619d: $9f
	rst  $38                                         ; $619e: $ff
	cp   $a6                                         ; $619f: $fe $a6
	ld   d, h                                        ; $61a1: $54
	ld   b, h                                        ; $61a2: $44
	ld   [hl], d                                     ; $61a3: $72
	ld   [de], a                                     ; $61a4: $12
	ld   d, $c6                                      ; $61a5: $16 $c6
	rst  $38                                         ; $61a7: $ff
	rst  JumpTable                                         ; $61a8: $df
	db   $fc                                         ; $61a9: $fc
	ld   [hl], h                                     ; $61aa: $74
	ld   b, e                                        ; $61ab: $43
	ld   b, a                                        ; $61ac: $47
	ld   h, c                                        ; $61ad: $61
	ld   [de], a                                     ; $61ae: $12
	jr   jr_0eb_619a                                 ; $61af: $18 $e9

	rst  $28                                         ; $61b1: $ef
	cp   $fb                                         ; $61b2: $fe $fb
	ld   d, l                                        ; $61b4: $55
	ld   b, h                                        ; $61b5: $44
	ld   e, b                                        ; $61b6: $58
	ld   h, c                                        ; $61b7: $61
	ld   [de], a                                     ; $61b8: $12
	jr   jr_0eb_6186                                 ; $61b9: $18 $cb

	rst  $38                                         ; $61bb: $ff
	rst  $38                                         ; $61bc: $ff
	ld   a, [$4565]                                  ; $61bd: $fa $65 $45
	ld   e, b                                        ; $61c0: $58
	ld   sp, $2811                                   ; $61c1: $31 $11 $28
	cp   d                                           ; $61c4: $ba
	rst  $38                                         ; $61c5: $ff
	rst  $28                                         ; $61c6: $ef
	jp   z, $5564                                    ; $61c7: $ca $64 $55

	ld   e, b                                        ; $61ca: $58
	ld   [hl], c                                     ; $61cb: $71
	ld   [de], a                                     ; $61cc: $12
	jr   jr_0eb_6189                                 ; $61cd: $18 $ba

	rst  $38                                         ; $61cf: $ff
	rst  $38                                         ; $61d0: $ff
	db   $db                                         ; $61d1: $db
	ld   [hl], l                                     ; $61d2: $75
	ld   [hl], $58                                   ; $61d3: $36 $58
	ld   [hl], c                                     ; $61d5: $71
	ld   de, $c915                                   ; $61d6: $11 $15 $c9
	rst  $38                                         ; $61d9: $ff
	rst  $38                                         ; $61da: $ff
	call Call_0eb_5684                               ; $61db: $cd $84 $56
	ld   b, [hl]                                     ; $61de: $46
	add  c                                           ; $61df: $81
	ld   de, $9915                                   ; $61e0: $11 $15 $99
	cp   $ff                                         ; $61e3: $fe $ff
	db   $fd                                         ; $61e5: $fd
	sbc  b                                           ; $61e6: $98
	ld   b, l                                        ; $61e7: $45
	ld   d, [hl]                                     ; $61e8: $56
	ld   h, d                                        ; $61e9: $62
	ld   de, $9a12                                   ; $61ea: $11 $12 $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61ed: $cf
	rst  $38                                         ; $61ee: $ff
	db   $fd                                         ; $61ef: $fd
	or   l                                           ; $61f0: $b5
	ld   d, l                                        ; $61f1: $55
	ld   h, [hl]                                     ; $61f2: $66
	ld   h, [hl]                                     ; $61f3: $66
	ld   hl, $7b11                                   ; $61f4: $21 $11 $7b
	ld   a, a                                        ; $61f7: $7f
	rst  $38                                         ; $61f8: $ff
	rst  $38                                         ; $61f9: $ff
	add  $63                                         ; $61fa: $c6 $63
	ld   d, a                                        ; $61fc: $57
	ld   d, a                                        ; $61fd: $57
	ld   hl, $3711                                   ; $61fe: $21 $11 $37
	db   $dd                                         ; $6201: $dd
	rst  $38                                         ; $6202: $ff
	rst  $38                                         ; $6203: $ff
	cp   d                                           ; $6204: $ba
	ld   h, e                                        ; $6205: $63
	ld   b, l                                        ; $6206: $45
	ld   e, b                                        ; $6207: $58
	ld   [hl], c                                     ; $6208: $71
	ld   de, wTitleScreenGirlHairAnimIdx                                   ; $6209: $11 $12 $cc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $620c: $cf
	rst  $38                                         ; $620d: $ff
	adc  $63                                         ; $620e: $ce $63
	ld   d, a                                        ; $6210: $57
	ld   b, [hl]                                     ; $6211: $46
	and  d                                           ; $6212: $a2
	ld   bc, $7c12                                   ; $6213: $01 $12 $7c
	rst  $38                                         ; $6216: $ff
	rst  $38                                         ; $6217: $ff
	db   $fd                                         ; $6218: $fd

jr_0eb_6219:
	or   l                                           ; $6219: $b5
	ld   b, e                                        ; $621a: $43
	ld   h, [hl]                                     ; $621b: $66
	add  a                                           ; $621c: $87
	ld   hl, $3a12                                   ; $621d: $21 $12 $3a
	cp   a                                           ; $6220: $bf
	rst  $28                                         ; $6221: $ef
	db   $fc                                         ; $6222: $fc
	jp   hl                                          ; $6223: $e9


	ld   h, h                                        ; $6224: $64
	ld   h, a                                        ; $6225: $67
	dec  sp                                          ; $6226: $3b
	ld   d, c                                        ; $6227: $51
	ld   de, $ce21                                   ; $6228: $11 $21 $ce
	rst  JumpTable                                         ; $622b: $df
	rst  $38                                         ; $622c: $ff
	db   $ed                                         ; $622d: $ed
	ld   [hl], l                                     ; $622e: $75
	dec  [hl]                                        ; $622f: $35
	ld   h, [hl]                                     ; $6230: $66
	sub  h                                           ; $6231: $94
	ld   de, $3e21                                   ; $6232: $11 $21 $3e
	cp   a                                           ; $6235: $bf
	rst  $38                                         ; $6236: $ff
	db   $fd                                         ; $6237: $fd
	sub  $24                                         ; $6238: $d6 $24
	ld   d, h                                        ; $623a: $54
	ld   a, b                                        ; $623b: $78
	ld   sp, $1812                                   ; $623c: $31 $12 $18
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $623f: $cf
	rst  $38                                         ; $6240: $ff
	db   $fd                                         ; $6241: $fd
	jp   z, $3962                                    ; $6242: $ca $62 $39

	ld   c, c                                        ; $6245: $49
	sub  h                                           ; $6246: $94
	ld   de, $ac21                                   ; $6247: $11 $21 $ac
	rst  $28                                         ; $624a: $ef
	rst  $38                                         ; $624b: $ff
	db   $dd                                         ; $624c: $dd
	or   e                                           ; $624d: $b3
	ld   h, $55                                      ; $624e: $26 $55
	or   h                                           ; $6250: $b4
	ld   de, $3c13                                   ; $6251: $11 $13 $3c
	rst  $28                                         ; $6254: $ef
	rst  $38                                         ; $6255: $ff
	db   $fc                                         ; $6256: $fc
	ret  z                                           ; $6257: $c8

	inc  sp                                          ; $6258: $33
	ld   d, h                                        ; $6259: $54
	ld   e, c                                        ; $625a: $59
	ld   h, c                                        ; $625b: $61
	ld   [de], a                                     ; $625c: $12
	jr   jr_0eb_6219                                 ; $625d: $18 $ba

	rst  $38                                         ; $625f: $ff
	rst  $38                                         ; $6260: $ff
	db   $ed                                         ; $6261: $ed
	ld   h, h                                        ; $6262: $64
	ld   d, [hl]                                     ; $6263: $56
	jr   c, @+$74                                    ; $6264: $38 $72

	ld   de, $be21                                   ; $6266: $11 $21 $be
	cp   a                                           ; $6269: $bf
	rst  $38                                         ; $626a: $ff
	rst  JumpTable                                         ; $626b: $df
	and  h                                           ; $626c: $a4
	ld   b, h                                        ; $626d: $44
	ld   b, l                                        ; $626e: $45
	and  h                                           ; $626f: $a4
	ld   de, $3d12                                   ; $6270: $11 $12 $3d
	cp   [hl]                                        ; $6273: $be
	rst  $38                                         ; $6274: $ff
	rst  $38                                         ; $6275: $ff
	ret  c                                           ; $6276: $d8

	ld   b, e                                        ; $6277: $43
	ld   b, l                                        ; $6278: $45
	ld   e, b                                        ; $6279: $58
	ld   sp, $1611                                   ; $627a: $31 $11 $16
	db   $ec                                         ; $627d: $ec
	rst  $38                                         ; $627e: $ff
	rst  $38                                         ; $627f: $ff
	db   $dd                                         ; $6280: $dd
	ld   b, d                                        ; $6281: $42
	ld   b, l                                        ; $6282: $45
	ld   b, a                                        ; $6283: $47
	ld   [hl], c                                     ; $6284: $71
	ld   de, wTitleScreenFrameCountForUpdatingMiddleBitTileMapAttr                                   ; $6285: $11 $13 $cc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6288: $cf
	rst  $38                                         ; $6289: $ff
	cp   $a3                                         ; $628a: $fe $a3
	ld   d, l                                        ; $628c: $55
	dec  [hl]                                        ; $628d: $35
	add  e                                           ; $628e: $83
	ld   de, $6d21                                   ; $628f: $11 $21 $6d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6292: $cf
	rst  $38                                         ; $6293: $ff
	db   $fd                                         ; $6294: $fd
	call nc, Call_0eb_4542                           ; $6295: $d4 $42 $45
	ld   [hl], a                                     ; $6298: $77
	ld   hl, $1d12                                   ; $6299: $21 $12 $1d
	cp   d                                           ; $629c: $ba
	cp   $ff                                         ; $629d: $fe $ff
	ld   a, [$2645]                                  ; $629f: $fa $45 $26
	ld   c, b                                        ; $62a2: $48
	ld   h, c                                        ; $62a3: $61
	ld   de, $f913                                   ; $62a4: $11 $13 $f9
	rst  $38                                         ; $62a7: $ff
	rst  $38                                         ; $62a8: $ff
	db   $fd                                         ; $62a9: $fd
	ld   [hl], l                                     ; $62aa: $75
	inc  [hl]                                        ; $62ab: $34
	ld   d, l                                        ; $62ac: $55
	and  h                                           ; $62ad: $a4
	ld   de, $7c11                                   ; $62ae: $11 $11 $7c
	xor  a                                           ; $62b1: $af
	rst  $38                                         ; $62b2: $ff
	cp   $d6                                         ; $62b3: $fe $d6
	ld   b, e                                        ; $62b5: $43
	ld   b, [hl]                                     ; $62b6: $46
	halt                                             ; $62b7: $76
	ld   hl, $1a12                                   ; $62b8: $21 $12 $1a
	db   $fc                                         ; $62bb: $fc
	rst  $38                                         ; $62bc: $ff
	cp   $ea                                         ; $62bd: $fe $ea
	inc  sp                                          ; $62bf: $33
	ld   b, h                                        ; $62c0: $44
	ld   e, b                                        ; $62c1: $58
	ld   d, c                                        ; $62c2: $51
	ld   [de], a                                     ; $62c3: $12
	ld   d, $f8                                      ; $62c4: $16 $f8
	rst  $38                                         ; $62c6: $ff
	rst  $38                                         ; $62c7: $ff
	rst  $28                                         ; $62c8: $ef
	ld   d, [hl]                                     ; $62c9: $56
	ld   b, e                                        ; $62ca: $43
	ld   d, l                                        ; $62cb: $55
	ld   [hl], c                                     ; $62cc: $71
	ld   de, $ae11                                   ; $62cd: $11 $11 $ae
	sbc  a                                           ; $62d0: $9f
	rst  $38                                         ; $62d1: $ff
	rst  $38                                         ; $62d2: $ff
	and  h                                           ; $62d3: $a4
	ld   h, d                                        ; $62d4: $62
	ld   d, l                                        ; $62d5: $55
	add  l                                           ; $62d6: $85
	ld   de, $2b12                                   ; $62d7: $11 $12 $2b
	cp   [hl]                                        ; $62da: $be
	rst  $38                                         ; $62db: $ff
	db   $fd                                         ; $62dc: $fd
	ld   sp, hl                                      ; $62dd: $f9
	ld   d, h                                        ; $62de: $54
	ld   b, h                                        ; $62df: $44
	jr   c, jr_0eb_6313                              ; $62e0: $38 $31

	ld   [de], a                                     ; $62e2: $12
	rlca                                             ; $62e3: $07
	ld   sp, hl                                      ; $62e4: $f9
	rst  $38                                         ; $62e5: $ff
	rst  $38                                         ; $62e6: $ff
	db   $ec                                         ; $62e7: $ec
	ld   d, l                                        ; $62e8: $55
	inc  [hl]                                        ; $62e9: $34
	ld   h, [hl]                                     ; $62ea: $66
	ld   [hl], c                                     ; $62eb: $71
	ld   de, $9c13                                   ; $62ec: $11 $13 $9c
	rst  JumpTable                                         ; $62ef: $df
	rst  $38                                         ; $62f0: $ff
	cp   $c6                                         ; $62f1: $fe $c6
	ld   d, h                                        ; $62f3: $54
	ld   d, d                                        ; $62f4: $52
	ld   d, h                                        ; $62f5: $54
	ld   de, $4f31                                   ; $62f6: $11 $31 $4f
	xor  a                                           ; $62f9: $af
	rst  $38                                         ; $62fa: $ff
	db   $fd                                         ; $62fb: $fd
	rst  $30                                         ; $62fc: $f7
	ld   d, l                                        ; $62fd: $55
	dec  [hl]                                        ; $62fe: $35
	ld   b, a                                        ; $62ff: $47
	ld   hl, $1712                                   ; $6300: $21 $12 $17
	ld   a, [$ffff]                                  ; $6303: $fa $ff $ff
	xor  $46                                         ; $6306: $ee $46
	ld   d, d                                        ; $6308: $52
	ld   b, a                                        ; $6309: $47
	ld   h, c                                        ; $630a: $61
	ld   hl, $bc23                                   ; $630b: $21 $23 $bc
	rst  JumpTable                                         ; $630e: $df
	rst  $38                                         ; $630f: $ff
	cp   $a5                                         ; $6310: $fe $a5
	ld   d, d                                        ; $6312: $52

jr_0eb_6313:
	ld   [hl], h                                     ; $6313: $74
	ld   h, h                                        ; $6314: $64
	ld   de, $5e22                                   ; $6315: $11 $22 $5e
	adc  $ff                                         ; $6318: $ce $ff
	cp   $d6                                         ; $631a: $fe $d6
	ld   h, h                                        ; $631c: $64
	ld   b, h                                        ; $631d: $44
	ld   d, h                                        ; $631e: $54
	ld   de, $2913                                   ; $631f: $11 $13 $29
	db   $ec                                         ; $6322: $ec
	rst  $38                                         ; $6323: $ff
	rst  $38                                         ; $6324: $ff
	db   $fc                                         ; $6325: $fc
	ld   d, [hl]                                     ; $6326: $56
	inc  [hl]                                        ; $6327: $34
	ld   b, [hl]                                     ; $6328: $46
	ld   d, c                                        ; $6329: $51
	ld   de, $bd22                                   ; $632a: $11 $22 $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $632d: $cf
	rst  $38                                         ; $632e: $ff
	rst  $38                                         ; $632f: $ff
	sub  l                                           ; $6330: $95
	ld   d, e                                        ; $6331: $53
	ld   b, l                                        ; $6332: $45
	ld   d, e                                        ; $6333: $53
	ld   de, $7f21                                   ; $6334: $11 $21 $7f
	sbc  a                                           ; $6337: $9f
	rst  $38                                         ; $6338: $ff
	rst  $38                                         ; $6339: $ff
	push bc                                          ; $633a: $c5
	ld   h, l                                        ; $633b: $65
	ld   b, l                                        ; $633c: $45
	ld   h, l                                        ; $633d: $65
	ld   de, $3a11                                   ; $633e: $11 $11 $3a
	sbc  l                                           ; $6341: $9d
	rst  $38                                         ; $6342: $ff
	rst  $38                                         ; $6343: $ff
	ld   sp, hl                                      ; $6344: $f9
	ld   h, h                                        ; $6345: $64
	inc  [hl]                                        ; $6346: $34
	ld   b, [hl]                                     ; $6347: $46
	ld   b, e                                        ; $6348: $43
	ld   de, $9c35                                   ; $6349: $11 $35 $9c
	rst  $38                                         ; $634c: $ff
	rst  $38                                         ; $634d: $ff
	db   $ec                                         ; $634e: $ec
	and  [hl]                                        ; $634f: $a6
	dec  [hl]                                        ; $6350: $35
	ld   d, h                                        ; $6351: $54
	ld   [hl], e                                     ; $6352: $73
	ld   de, $7d22                                   ; $6353: $11 $22 $7d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6356: $cf
	rst  $38                                         ; $6357: $ff
	db   $fd                                         ; $6358: $fd
	or   [hl]                                        ; $6359: $b6
	ld   b, h                                        ; $635a: $44

Jump_0eb_635b:
	ld   b, h                                        ; $635b: $44
	ld   h, l                                        ; $635c: $65
	ld   de, $1c12                                   ; $635d: $11 $12 $1c
	db   $db                                         ; $6360: $db
	rst  $38                                         ; $6361: $ff
	cp   $fa                                         ; $6362: $fe $fa
	ld   d, [hl]                                     ; $6364: $56
	ld   b, e                                        ; $6365: $43
	ld   b, [hl]                                     ; $6366: $46
	ld   b, c                                        ; $6367: $41
	ld   de, $bb18                                   ; $6368: $11 $18 $bb
	rst  $38                                         ; $636b: $ff
	rst  $38                                         ; $636c: $ff
	ei                                               ; $636d: $fb
	ld   h, a                                        ; $636e: $67
	inc  h                                           ; $636f: $24
	ld   d, l                                        ; $6370: $55
	ld   d, d                                        ; $6371: $52
	ld   de, $ab22                                   ; $6372: $11 $22 $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6375: $cf
	rst  $38                                         ; $6376: $ff
	db   $fd                                         ; $6377: $fd
	or   [hl]                                        ; $6378: $b6
	ld   d, e                                        ; $6379: $53
	ld   b, e                                        ; $637a: $43
	ld   d, e                                        ; $637b: $53
	ld   de, $7c11                                   ; $637c: $11 $11 $7c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $637f: $cf
	rst  $38                                         ; $6380: $ff
	cp   $d7                                         ; $6381: $fe $d7
	ld   d, e                                        ; $6383: $53
	ld   d, e                                        ; $6384: $53
	ld   d, a                                        ; $6385: $57
	ld   de, $2c11                                   ; $6386: $11 $11 $2c
	xor  l                                           ; $6389: $ad
	rst  $38                                         ; $638a: $ff
	rst  $38                                         ; $638b: $ff
	ld   sp, hl                                      ; $638c: $f9
	ld   h, l                                        ; $638d: $65
	inc  h                                           ; $638e: $24
	ld   b, [hl]                                     ; $638f: $46
	ld   hl, $1811                                   ; $6390: $21 $11 $18
	set  7, a                                        ; $6393: $cb $ff
	rst  $38                                         ; $6395: $ff
	db   $fd                                         ; $6396: $fd
	halt                                             ; $6397: $76
	dec  h                                           ; $6398: $25
	inc  h                                           ; $6399: $24
	ld   d, c                                        ; $639a: $51
	ld   [de], a                                     ; $639b: $12
	inc  h                                           ; $639c: $24
	db   $db                                         ; $639d: $db
	rst  $38                                         ; $639e: $ff
	rst  $38                                         ; $639f: $ff
	rst  JumpTable                                         ; $63a0: $df
	add  a                                           ; $63a1: $87
	dec  [hl]                                        ; $63a2: $35
	ld   [hl-], a                                    ; $63a3: $32
	add  c                                           ; $63a4: $81
	ld   de, $ac21                                   ; $63a5: $11 $21 $ac
	xor  a                                           ; $63a8: $af
	rst  $38                                         ; $63a9: $ff
	rst  $38                                         ; $63aa: $ff
	or   [hl]                                        ; $63ab: $b6
	ld   h, e                                        ; $63ac: $63
	ld   b, l                                        ; $63ad: $45
	ld   d, h                                        ; $63ae: $54
	ld   de, $7e21                                   ; $63af: $11 $21 $7e
	adc  a                                           ; $63b2: $8f
	rst  $38                                         ; $63b3: $ff
	cp   $e7                                         ; $63b4: $fe $e7
	ld   h, h                                        ; $63b6: $64
	inc  [hl]                                        ; $63b7: $34
	ld   b, [hl]                                     ; $63b8: $46
	ld   de, $4a11                                   ; $63b9: $11 $11 $4a
	xor  [hl]                                        ; $63bc: $ae
	rst  $38                                         ; $63bd: $ff
	rst  $38                                         ; $63be: $ff
	jp   c, $3373                                    ; $63bf: $da $73 $33

	ld   [hl], $21                                   ; $63c2: $36 $21
	ld   [de], a                                     ; $63c4: $12
	add  hl, hl                                      ; $63c5: $29
	db   $fd                                         ; $63c6: $fd
	rst  $38                                         ; $63c7: $ff
	rst  $38                                         ; $63c8: $ff
	db   $db                                         ; $63c9: $db
	ld   [hl], e                                     ; $63ca: $73
	ld   h, d                                        ; $63cb: $62
	ld   b, [hl]                                     ; $63cc: $46
	ld   b, c                                        ; $63cd: $41
	ld   de, $9a1b                                   ; $63ce: $11 $1b $9a
	db   $fd                                         ; $63d1: $fd
	rst  $38                                         ; $63d2: $ff
	db   $fc                                         ; $63d3: $fc
	sub  [hl]                                        ; $63d4: $96
	inc  hl                                          ; $63d5: $23
	inc  h                                           ; $63d6: $24
	ld   b, c                                        ; $63d7: $41
	ld   de, $a919                                   ; $63d8: $11 $19 $a9
	rst  $38                                         ; $63db: $ff
	rst  $38                                         ; $63dc: $ff
	db   $fc                                         ; $63dd: $fc
	and  a                                           ; $63de: $a7
	inc  hl                                          ; $63df: $23
	ld   [hl-], a                                    ; $63e0: $32
	ld   d, d                                        ; $63e1: $52
	ld   de, $ab16                                   ; $63e2: $11 $16 $ab
	rst  $38                                         ; $63e5: $ff
	rst  $38                                         ; $63e6: $ff
	db   $fc                                         ; $63e7: $fc
	and  a                                           ; $63e8: $a7
	dec  [hl]                                        ; $63e9: $35
	inc  [hl]                                        ; $63ea: $34
	ld   b, e                                        ; $63eb: $43
	ld   de, $da22                                   ; $63ec: $11 $22 $da
	rst  $28                                         ; $63ef: $ef
	rst  $38                                         ; $63f0: $ff
	cp   $a7                                         ; $63f1: $fe $a7
	ld   d, e                                        ; $63f3: $53
	ld   b, e                                        ; $63f4: $43
	ld   b, e                                        ; $63f5: $43
	ld   de, $9b14                                   ; $63f6: $11 $14 $9b
	rst  $38                                         ; $63f9: $ff
	rst  $38                                         ; $63fa: $ff
	db   $fd                                         ; $63fb: $fd
	sbc  b                                           ; $63fc: $98
	inc  [hl]                                        ; $63fd: $34
	inc  sp                                          ; $63fe: $33
	ld   d, c                                        ; $63ff: $51
	ld   de, $a915                                   ; $6400: $11 $15 $a9
	rst  $38                                         ; $6403: $ff
	rst  $38                                         ; $6404: $ff
	db   $fd                                         ; $6405: $fd
	sbc  b                                           ; $6406: $98
	inc  hl                                          ; $6407: $23
	ld   [hl-], a                                    ; $6408: $32
	ld   h, d                                        ; $6409: $62
	ld   de, $db13                                   ; $640a: $11 $13 $db
	rst  $28                                         ; $640d: $ef
	rst  $38                                         ; $640e: $ff
	db   $fc                                         ; $640f: $fc
	and  [hl]                                        ; $6410: $a6
	ld   b, d                                        ; $6411: $42
	ld   [hl-], a                                    ; $6412: $32
	ld   b, d                                        ; $6413: $42
	ld   [de], a                                     ; $6414: $12
	dec  d                                           ; $6415: $15
	cp   e                                           ; $6416: $bb
	rst  $38                                         ; $6417: $ff
	rst  $38                                         ; $6418: $ff
	db   $fc                                         ; $6419: $fc
	sub  a                                           ; $641a: $97
	inc  hl                                          ; $641b: $23
	ld   [hl-], a                                    ; $641c: $32
	ld   sp, $1911                                   ; $641d: $31 $11 $19
	xor  h                                           ; $6420: $ac
	rst  $38                                         ; $6421: $ff
	rst  $38                                         ; $6422: $ff
	ld   a, [$2495]                                  ; $6423: $fa $95 $24
	inc  hl                                          ; $6426: $23
	ld   b, c                                        ; $6427: $41
	ld   de, $be37                                   ; $6428: $11 $37 $be
	rst  $38                                         ; $642b: $ff
	rst  $38                                         ; $642c: $ff
	ld   [$2293], a                                  ; $642d: $ea $93 $22
	ld   [hl+], a                                    ; $6430: $22
	ld   de, $4a12                                   ; $6431: $11 $12 $4a
	rst  $28                                         ; $6434: $ef
	rst  $38                                         ; $6435: $ff
	rst  $38                                         ; $6436: $ff
	xor  c                                           ; $6437: $a9
	ld   [hl], d                                     ; $6438: $72
	ld   sp, $1131                                   ; $6439: $31 $31 $11
	inc  d                                           ; $643c: $14
	adc  e                                           ; $643d: $8b
	rst  JumpTable                                         ; $643e: $df
	rst  $38                                         ; $643f: $ff
	cp   $99                                         ; $6440: $fe $99
	ld   [hl-], a                                    ; $6442: $32
	ld   hl, $1131                                   ; $6443: $21 $31 $11
	dec  d                                           ; $6446: $15
	call z, $ffff                                    ; $6447: $cc $ff $ff
	db   $fc                                         ; $644a: $fc
	sbc  b                                           ; $644b: $98
	inc  de                                          ; $644c: $13
	ld   hl, $1111                                   ; $644d: $21 $11 $11
	ld   l, c                                        ; $6450: $69
	adc  a                                           ; $6451: $8f
	rst  $38                                         ; $6452: $ff
	rst  $38                                         ; $6453: $ff
	ld   [$2292], a                                  ; $6454: $ea $92 $22
	ld   [de], a                                     ; $6457: $12
	ld   de, $6c13                                   ; $6458: $11 $13 $6c
	cp   $ff                                         ; $645b: $fe $ff
	rst  $38                                         ; $645d: $ff
	sbc  d                                           ; $645e: $9a
	ld   b, c                                        ; $645f: $41
	ld   [hl+], a                                    ; $6460: $22
	ld   sp, $1811                                   ; $6461: $31 $11 $18
	xor  a                                           ; $6464: $af
	rst  $38                                         ; $6465: $ff
	rst  $38                                         ; $6466: $ff
	db   $fc                                         ; $6467: $fc
	ld   [hl], a                                     ; $6468: $77
	ld   [hl+], a                                    ; $6469: $22
	ld   [de], a                                     ; $646a: $12
	ld   de, $5a11                                   ; $646b: $11 $11 $5a
	adc  $ff                                         ; $646e: $ce $ff
	rst  $38                                         ; $6470: $ff
	jp   z, $1284                                    ; $6471: $ca $84 $12

	ld   hl, $1611                                   ; $6474: $21 $11 $16
	sbc  l                                           ; $6477: $9d
	rst  $38                                         ; $6478: $ff
	rst  $38                                         ; $6479: $ff
	ei                                               ; $647a: $fb
	adc  c                                           ; $647b: $89
	ld   [hl+], a                                    ; $647c: $22
	ld   [de], a                                     ; $647d: $12
	ld   de, $5a11                                   ; $647e: $11 $11 $5a
	rst  JumpTable                                         ; $6481: $df
	rst  $38                                         ; $6482: $ff
	rst  $38                                         ; $6483: $ff
	ret  c                                           ; $6484: $d8

	add  h                                           ; $6485: $84
	ld   [de], a                                     ; $6486: $12
	ld   hl, $1511                                   ; $6487: $21 $11 $15
	xor  l                                           ; $648a: $ad
	rst  $38                                         ; $648b: $ff
	rst  $38                                         ; $648c: $ff
	db   $fd                                         ; $648d: $fd
	ld   a, c                                        ; $648e: $79
	ld   b, c                                        ; $648f: $41
	inc  de                                          ; $6490: $13
	ld   de, $6911                                   ; $6491: $11 $11 $69
	rst  JumpTable                                         ; $6494: $df
	rst  $38                                         ; $6495: $ff
	rst  $38                                         ; $6496: $ff
	or   a                                           ; $6497: $b7
	ld   h, e                                        ; $6498: $63
	ld   [de], a                                     ; $6499: $12
	ld   b, c                                        ; $649a: $41
	ld   de, $bd17                                   ; $649b: $11 $17 $bd
	rst  $38                                         ; $649e: $ff
	rst  $38                                         ; $649f: $ff
	ld   a, [$2177]                                  ; $64a0: $fa $77 $21
	ld   [hl+], a                                    ; $64a3: $22
	ld   de, $8b11                                   ; $64a4: $11 $11 $8b
	rst  JumpTable                                         ; $64a7: $df
	rst  $38                                         ; $64a8: $ff
	rst  $38                                         ; $64a9: $ff
	sbc  b                                           ; $64aa: $98
	ld   h, c                                        ; $64ab: $61
	ld   [bc], a                                     ; $64ac: $02
	ld   de, $3811                                   ; $64ad: $11 $11 $38
	rst  JumpTable                                         ; $64b0: $df
	rst  $38                                         ; $64b1: $ff
	rst  $38                                         ; $64b2: $ff
	ret  c                                           ; $64b3: $d8

	ld   [hl], e                                     ; $64b4: $73
	ld   de, $1221                                   ; $64b5: $11 $21 $12
	jr   @-$42                                       ; $64b8: $18 $bc

	rst  $38                                         ; $64ba: $ff
	rst  $38                                         ; $64bb: $ff
	ld   a, [$1177]                                  ; $64bc: $fa $77 $11
	ld   hl, $1211                                   ; $64bf: $21 $11 $12
	sbc  h                                           ; $64c2: $9c
	rst  $38                                         ; $64c3: $ff
	rst  $38                                         ; $64c4: $ff
	rst  $38                                         ; $64c5: $ff
	add  a                                           ; $64c6: $87
	ld   sp, $1112                                   ; $64c7: $31 $12 $11
	ld   de, $ff5b                                   ; $64ca: $11 $5b $ff
	rst  $38                                         ; $64cd: $ff
	rst  $38                                         ; $64ce: $ff
	ret  z                                           ; $64cf: $c8

	ld   b, e                                        ; $64d0: $43
	ld   de, $1221                                   ; $64d1: $11 $21 $12
	ld   c, c                                        ; $64d4: $49
	rst  $28                                         ; $64d5: $ef
	rst  $38                                         ; $64d6: $ff
	rst  $38                                         ; $64d7: $ff
	ret  c                                           ; $64d8: $d8

	ld   d, l                                        ; $64d9: $55
	ld   de, $1111                                   ; $64da: $11 $11 $11
	ld   b, [hl]                                     ; $64dd: $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64de: $cf
	rst  $38                                         ; $64df: $ff
	rst  $38                                         ; $64e0: $ff
	ei                                               ; $64e1: $fb
	ld   [hl], l                                     ; $64e2: $75
	ld   sp, $1111                                   ; $64e3: $31 $11 $11
	dec  d                                           ; $64e6: $15
	sbc  l                                           ; $64e7: $9d
	rst  $38                                         ; $64e8: $ff
	rst  $38                                         ; $64e9: $ff
	cp   $96                                         ; $64ea: $fe $96
	ld   [hl+], a                                    ; $64ec: $22
	ld   de, $1311                                   ; $64ed: $11 $11 $13
	ld   a, d                                        ; $64f0: $7a
	rst  $38                                         ; $64f1: $ff
	rst  $38                                         ; $64f2: $ff
	rst  $38                                         ; $64f3: $ff
	and  a                                           ; $64f4: $a7
	ld   [hl-], a                                    ; $64f5: $32
	ld   de, $1111                                   ; $64f6: $11 $11 $11
	ld   a, d                                        ; $64f9: $7a
	rst  $38                                         ; $64fa: $ff
	rst  $38                                         ; $64fb: $ff
	rst  $38                                         ; $64fc: $ff
	cp   c                                           ; $64fd: $b9
	ld   d, c                                        ; $64fe: $51
	ld   de, $1111                                   ; $64ff: $11 $11 $11
	ld   c, b                                        ; $6502: $48
	rst  $38                                         ; $6503: $ff
	rst  $38                                         ; $6504: $ff
	rst  $38                                         ; $6505: $ff
	reti                                             ; $6506: $d9


	ld   d, e                                        ; $6507: $53
	ld   de, $1111                                   ; $6508: $11 $11 $11
	ld   b, [hl]                                     ; $650b: $46
	cp   a                                           ; $650c: $bf
	rst  $38                                         ; $650d: $ff
	rst  $38                                         ; $650e: $ff
	db   $db                                         ; $650f: $db
	ld   h, d                                        ; $6510: $62
	ld   sp, $1111                                   ; $6511: $31 $11 $11
	scf                                              ; $6514: $37
	xor  a                                           ; $6515: $af
	rst  $38                                         ; $6516: $ff
	rst  $38                                         ; $6517: $ff
	jp   c, $2182                                    ; $6518: $da $82 $21

	ld   de, $1711                                   ; $651b: $11 $11 $17
	xor  a                                           ; $651e: $af
	rst  $38                                         ; $651f: $ff
	rst  $38                                         ; $6520: $ff
	ei                                               ; $6521: $fb
	add  e                                           ; $6522: $83
	ld   hl, $1111                                   ; $6523: $21 $11 $11
	rla                                              ; $6526: $17
	ld   a, a                                        ; $6527: $7f
	rst  $38                                         ; $6528: $ff
	rst  $38                                         ; $6529: $ff
	db   $ed                                         ; $652a: $ed
	ld   [hl], h                                     ; $652b: $74
	ld   de, $1111                                   ; $652c: $11 $11 $11
	daa                                              ; $652f: $27
	ld   a, [hl]                                     ; $6530: $7e
	rst  $38                                         ; $6531: $ff
	rst  $38                                         ; $6532: $ff
	call c, $1294                                    ; $6533: $dc $94 $12
	ld   de, $1511                                   ; $6536: $11 $11 $15
	sbc  [hl]                                        ; $6539: $9e
	rst  $38                                         ; $653a: $ff
	rst  $38                                         ; $653b: $ff
	cp   $b4                                         ; $653c: $fe $b4
	ld   hl, $1111                                   ; $653e: $21 $11 $11
	ld   d, $8f                                      ; $6541: $16 $8f
	rst  $38                                         ; $6543: $ff
	rst  $38                                         ; $6544: $ff
	db   $fc                                         ; $6545: $fc
	and  h                                           ; $6546: $a4
	ld   de, $1111                                   ; $6547: $11 $11 $11
	ld   h, $af                                      ; $654a: $26 $af
	rst  $38                                         ; $654c: $ff
	rst  $38                                         ; $654d: $ff
	xor  $94                                         ; $654e: $ee $94
	ld   hl, $1111                                   ; $6550: $21 $11 $11
	ld   h, $af                                      ; $6553: $26 $af
	rst  $38                                         ; $6555: $ff
	rst  $38                                         ; $6556: $ff
	db   $fc                                         ; $6557: $fc
	sub  h                                           ; $6558: $94
	ld   de, $1111                                   ; $6559: $11 $11 $11
	ld   h, $9f                                      ; $655c: $26 $9f
	rst  $38                                         ; $655e: $ff
	rst  $38                                         ; $655f: $ff
	db   $fd                                         ; $6560: $fd
	add  l                                           ; $6561: $85
	ld   de, $1111                                   ; $6562: $11 $11 $11
	inc  h                                           ; $6565: $24
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6566: $cf
	rst  $38                                         ; $6567: $ff
	rst  $38                                         ; $6568: $ff
	db   $dd                                         ; $6569: $dd
	ld   [hl], d                                     ; $656a: $72
	ld   de, $1111                                   ; $656b: $11 $11 $11
	scf                                              ; $656e: $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $656f: $cf
	rst  $38                                         ; $6570: $ff
	rst  $38                                         ; $6571: $ff
	db   $eb                                         ; $6572: $eb
	ld   h, d                                        ; $6573: $62
	ld   de, $1211                                   ; $6574: $11 $11 $12
	jr   c, @-$2f                                    ; $6577: $38 $cf

	rst  $38                                         ; $6579: $ff
	cp   $eb                                         ; $657a: $fe $eb
	ld   b, e                                        ; $657c: $43
	ld   de, $1111                                   ; $657d: $11 $11 $11
	ld   a, b                                        ; $6580: $78
	rst  JumpTable                                         ; $6581: $df
	rst  $38                                         ; $6582: $ff
	rst  $38                                         ; $6583: $ff
	cp   d                                           ; $6584: $ba
	ld   d, c                                        ; $6585: $51
	ld   de, $1111                                   ; $6586: $11 $11 $11
	ld   l, d                                        ; $6589: $6a
	rst  $38                                         ; $658a: $ff
	rst  $38                                         ; $658b: $ff
	rst  $38                                         ; $658c: $ff
	ret  z                                           ; $658d: $c8

	ld   b, c                                        ; $658e: $41
	ld   de, $1311                                   ; $658f: $11 $11 $13
	ld   a, e                                        ; $6592: $7b
	rst  $38                                         ; $6593: $ff
	rst  $38                                         ; $6594: $ff
	db   $fd                                         ; $6595: $fd
	and  [hl]                                        ; $6596: $a6
	ld   hl, $1111                                   ; $6597: $21 $11 $11
	inc  b                                           ; $659a: $04
	sbc  l                                           ; $659b: $9d
	rst  $38                                         ; $659c: $ff
	rst  $38                                         ; $659d: $ff
	sbc  $c4                                         ; $659e: $de $c4
	ld   hl, $1111                                   ; $65a0: $21 $11 $11
	ld   d, $9f                                      ; $65a3: $16 $9f
	rst  $38                                         ; $65a5: $ff
	rst  $38                                         ; $65a6: $ff
	db   $eb                                         ; $65a7: $eb
	add  h                                           ; $65a8: $84
	ld   de, $1111                                   ; $65a9: $11 $11 $11
	ld   c, c                                        ; $65ac: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65ad: $cf
	rst  $38                                         ; $65ae: $ff
	rst  $38                                         ; $65af: $ff
	ld   [$1152], a                                  ; $65b0: $ea $52 $11
	ld   de, $5911                                   ; $65b3: $11 $11 $59
	rst  $38                                         ; $65b6: $ff
	rst  $38                                         ; $65b7: $ff
	rst  $38                                         ; $65b8: $ff
	rst  $10                                         ; $65b9: $d7
	ld   b, c                                        ; $65ba: $41
	ld   de, $1411                                   ; $65bb: $11 $11 $14
	adc  [hl]                                        ; $65be: $8e
	rst  $38                                         ; $65bf: $ff
	rst  $38                                         ; $65c0: $ff
	cp   $b4                                         ; $65c1: $fe $b4
	ld   de, $1111                                   ; $65c3: $11 $11 $11
	daa                                              ; $65c6: $27
	cp   a                                           ; $65c7: $bf
	rst  $38                                         ; $65c8: $ff
	rst  $38                                         ; $65c9: $ff
	db   $dd                                         ; $65ca: $dd
	ld   [hl], d                                     ; $65cb: $72
	ld   de, $1111                                   ; $65cc: $11 $11 $11
	ld   e, l                                        ; $65cf: $5d
	rst  $38                                         ; $65d0: $ff
	rst  $38                                         ; $65d1: $ff
	rst  $38                                         ; $65d2: $ff
	db   $e4                                         ; $65d3: $e4
	ld   b, c                                        ; $65d4: $41
	ld   de, $1711                                   ; $65d5: $11 $11 $17
	xor  a                                           ; $65d8: $af
	rst  $38                                         ; $65d9: $ff
	rst  $38                                         ; $65da: $ff
	cp   $83                                         ; $65db: $fe $83
	ld   de, $1111                                   ; $65dd: $11 $11 $11
	inc  l                                           ; $65e0: $2c
	rst  $38                                         ; $65e1: $ff
	rst  $38                                         ; $65e2: $ff
	rst  $38                                         ; $65e3: $ff
	ld   hl, sp+$41                                  ; $65e4: $f8 $41
	ld   de, $1311                                   ; $65e6: $11 $11 $13
	cp   [hl]                                        ; $65e9: $be
	rst  $38                                         ; $65ea: $ff
	rst  $38                                         ; $65eb: $ff
	cp   $86                                         ; $65ec: $fe $86
	ld   de, $1111                                   ; $65ee: $11 $11 $11
	add  hl, sp                                      ; $65f1: $39
	rst  $38                                         ; $65f2: $ff
	rst  $38                                         ; $65f3: $ff
	rst  $38                                         ; $65f4: $ff
	call c, $1141                                    ; $65f5: $dc $41 $11
	ld   de, $ae12                                   ; $65f8: $11 $12 $ae
	rst  $38                                         ; $65fb: $ff
	rst  $38                                         ; $65fc: $ff
	db   $fd                                         ; $65fd: $fd
	and  h                                           ; $65fe: $a4
	ld   de, $1111                                   ; $65ff: $11 $11 $11
	ld   a, [de]                                     ; $6602: $1a
	rst  $28                                         ; $6603: $ef
	rst  $38                                         ; $6604: $ff
	cp   $fb                                         ; $6605: $fe $fb
	ld   d, c                                        ; $6607: $51
	ld   de, $1111                                   ; $6608: $11 $11 $11
	sbc  [hl]                                        ; $660b: $9e
	rst  $38                                         ; $660c: $ff
	rst  $38                                         ; $660d: $ff
	db   $fd                                         ; $660e: $fd
	and  e                                           ; $660f: $a3
	ld   de, $1111                                   ; $6610: $11 $11 $11
	add  hl, hl                                      ; $6613: $29
	rst  JumpTable                                         ; $6614: $df
	rst  $38                                         ; $6615: $ff
	cp   $ea                                         ; $6616: $fe $ea
	ld   b, c                                        ; $6618: $41
	ld   de, $1211                                   ; $6619: $11 $11 $12
	xor  l                                           ; $661c: $ad
	rst  $38                                         ; $661d: $ff
	rst  $38                                         ; $661e: $ff
	cp   $94                                         ; $661f: $fe $94
	ld   de, $1111                                   ; $6621: $11 $11 $11
	ld   a, [hl+]                                    ; $6624: $2a
	rst  $28                                         ; $6625: $ef
	rst  $38                                         ; $6626: $ff
	rst  $38                                         ; $6627: $ff
	ret  c                                           ; $6628: $d8

	ld   d, c                                        ; $6629: $51
	ld   de, $1211                                   ; $662a: $11 $11 $12
	sbc  a                                           ; $662d: $9f
	rst  $38                                         ; $662e: $ff
	rst  $38                                         ; $662f: $ff
	cp   $84                                         ; $6630: $fe $84
	ld   de, $1111                                   ; $6632: $11 $11 $11
	ld   a, [hl+]                                    ; $6635: $2a
	rst  $38                                         ; $6636: $ff
	rst  $38                                         ; $6637: $ff
	rst  $38                                         ; $6638: $ff
	and  $41                                         ; $6639: $e6 $41
	ld   de, $1411                                   ; $663b: $11 $11 $14
	xor  a                                           ; $663e: $af
	rst  $38                                         ; $663f: $ff
	rst  $38                                         ; $6640: $ff
	db   $fd                                         ; $6641: $fd
	ld   [hl], e                                     ; $6642: $73
	ld   de, $1111                                   ; $6643: $11 $11 $11
	ld   c, [hl]                                     ; $6646: $4e
	rst  $38                                         ; $6647: $ff
	rst  $38                                         ; $6648: $ff
	rst  $38                                         ; $6649: $ff
	and  [hl]                                        ; $664a: $a6
	ld   sp, $1111                                   ; $664b: $31 $11 $11
	dec  h                                           ; $664e: $25
	rst  $38                                         ; $664f: $ff
	rst  $38                                         ; $6650: $ff
	rst  $38                                         ; $6651: $ff
	ld   a, [$1151]                                  ; $6652: $fa $51 $11
	ld   de, $af12                                   ; $6655: $11 $12 $af
	rst  $38                                         ; $6658: $ff
	rst  $38                                         ; $6659: $ff
	db   $fd                                         ; $665a: $fd
	ld   h, h                                        ; $665b: $64
	ld   de, $1111                                   ; $665c: $11 $11 $11
	ld   c, l                                        ; $665f: $4d
	rst  $38                                         ; $6660: $ff
	rst  $38                                         ; $6661: $ff
	rst  $38                                         ; $6662: $ff
	or   [hl]                                        ; $6663: $b6
	ld   sp, $1111                                   ; $6664: $31 $11 $11
	ld   d, $ef                                      ; $6667: $16 $ef
	rst  $38                                         ; $6669: $ff
	rst  $38                                         ; $666a: $ff
	db   $ec                                         ; $666b: $ec
	ld   h, c                                        ; $666c: $61
	ld   de, $1211                                   ; $666d: $11 $11 $12
	sbc  a                                           ; $6670: $9f
	rst  $38                                         ; $6671: $ff
	rst  $38                                         ; $6672: $ff
	rst  $38                                         ; $6673: $ff
	ld   [hl], h                                     ; $6674: $74
	ld   de, $1111                                   ; $6675: $11 $11 $11
	inc  a                                           ; $6678: $3c
	rst  $38                                         ; $6679: $ff
	rst  $38                                         ; $667a: $ff
	rst  $38                                         ; $667b: $ff
	or   l                                           ; $667c: $b5
	ld   sp, $1111                                   ; $667d: $31 $11 $11
	ld   d, $ff                                      ; $6680: $16 $ff
	rst  $38                                         ; $6682: $ff
	rst  $38                                         ; $6683: $ff
	ld   hl, sp+$51                                  ; $6684: $f8 $51
	ld   de, $1211                                   ; $6686: $11 $11 $12
	sbc  a                                           ; $6689: $9f

jr_0eb_668a:
	rst  $38                                         ; $668a: $ff
	rst  $38                                         ; $668b: $ff
	db   $fd                                         ; $668c: $fd
	and  l                                           ; $668d: $a5
	ld   de, $1111                                   ; $668e: $11 $11 $11
	ld   a, $ff                                      ; $6691: $3e $ff
	rst  $38                                         ; $6693: $ff
	rst  $38                                         ; $6694: $ff
	and  a                                           ; $6695: $a7
	ld   sp, $1111                                   ; $6696: $31 $11 $11
	jr   jr_0eb_668a                                 ; $6699: $18 $ef

	rst  $38                                         ; $669b: $ff
	rst  $38                                         ; $669c: $ff
	jp   c, $1151                                    ; $669d: $da $51 $11

	ld   de, $ef14                                   ; $66a0: $11 $14 $ef
	rst  $38                                         ; $66a3: $ff
	rst  $38                                         ; $66a4: $ff
	ld   sp, hl                                      ; $66a5: $f9
	ld   [hl], e                                     ; $66a6: $73
	ld   de, $1311                                   ; $66a7: $11 $11 $13
	adc  a                                           ; $66aa: $8f
	rst  $38                                         ; $66ab: $ff
	rst  $38                                         ; $66ac: $ff
	db   $fc                                         ; $66ad: $fc
	and  h                                           ; $66ae: $a4
	ld   de, $1111                                   ; $66af: $11 $11 $11
	ld   c, a                                        ; $66b2: $4f
	rst  $38                                         ; $66b3: $ff
	rst  $38                                         ; $66b4: $ff
	rst  $38                                         ; $66b5: $ff

Call_0eb_66b6:
	sub  [hl]                                        ; $66b6: $96
	ld   sp, $1111                                   ; $66b7: $31 $11 $11
	dec  sp                                          ; $66ba: $3b
	rst  $38                                         ; $66bb: $ff
	rst  $38                                         ; $66bc: $ff
	rst  $38                                         ; $66bd: $ff
	xor  b                                           ; $66be: $a8
	ld   b, c                                        ; $66bf: $41
	ld   de, $2711                                   ; $66c0: $11 $11 $27
	rst  $38                                         ; $66c3: $ff
	rst  $38                                         ; $66c4: $ff
	rst  $38                                         ; $66c5: $ff
	add  sp, $51                                     ; $66c6: $e8 $51
	ld   de, $2311                                   ; $66c8: $11 $11 $23
	rst  JumpTable                                         ; $66cb: $df
	rst  $38                                         ; $66cc: $ff
	rst  $38                                         ; $66cd: $ff
	ld   sp, hl                                      ; $66ce: $f9
	add  c                                           ; $66cf: $81
	ld   de, $1311                                   ; $66d0: $11 $11 $13
	sbc  a                                           ; $66d3: $9f
	rst  $38                                         ; $66d4: $ff
	rst  $38                                         ; $66d5: $ff
	db   $fd                                         ; $66d6: $fd
	add  h                                           ; $66d7: $84
	ld   de, $1111                                   ; $66d8: $11 $11 $11
	xor  a                                           ; $66db: $af
	rst  $38                                         ; $66dc: $ff
	rst  $38                                         ; $66dd: $ff
	cp   $76                                         ; $66de: $fe $76
	ld   de, $1111                                   ; $66e0: $11 $11 $11
	ld   l, a                                        ; $66e3: $6f
	rst  $38                                         ; $66e4: $ff
	rst  $38                                         ; $66e5: $ff
	rst  $38                                         ; $66e6: $ff
	ld   [hl], a                                     ; $66e7: $77
	ld   de, $1111                                   ; $66e8: $11 $11 $11
	ld   c, e                                        ; $66eb: $4b
	rst  $38                                         ; $66ec: $ff
	rst  $38                                         ; $66ed: $ff
	rst  $38                                         ; $66ee: $ff
	cp   b                                           ; $66ef: $b8
	ld   sp, $1111                                   ; $66f0: $31 $11 $11
	ld   b, a                                        ; $66f3: $47
	rst  $28                                         ; $66f4: $ef
	rst  $38                                         ; $66f5: $ff
	rst  $38                                         ; $66f6: $ff
	ret                                              ; $66f7: $c9


	ld   b, c                                        ; $66f8: $41
	ld   de, $1711                                   ; $66f9: $11 $11 $17
	cp   $ff                                         ; $66fc: $fe $ff
	rst  $38                                         ; $66fe: $ff
	ld   sp, hl                                      ; $66ff: $f9
	ld   [hl], c                                     ; $6700: $71
	ld   de, $2611                                   ; $6701: $11 $11 $26
	rst  JumpTable                                         ; $6704: $df
	rst  $38                                         ; $6705: $ff
	rst  $38                                         ; $6706: $ff
	ld   a, [$1171]                                  ; $6707: $fa $71 $11
	ld   de, $ce14                                   ; $670a: $11 $14 $ce
	rst  $38                                         ; $670d: $ff
	rst  $38                                         ; $670e: $ff
	ei                                               ; $670f: $fb
	ld   h, h                                        ; $6710: $64
	ld   de, $1211                                   ; $6711: $11 $11 $12
	xor  [hl]                                        ; $6714: $ae
	rst  $38                                         ; $6715: $ff
	rst  $38                                         ; $6716: $ff
	cp   $84                                         ; $6717: $fe $84
	ld   de, $1211                                   ; $6719: $11 $11 $12
	sbc  [hl]                                        ; $671c: $9e
	rst  $28                                         ; $671d: $ef
	rst  $38                                         ; $671e: $ff
	cp   $77                                         ; $671f: $fe $77
	ld   de, $1111                                   ; $6721: $11 $11 $11
	ld   a, l                                        ; $6724: $7d
	rst  $38                                         ; $6725: $ff
	rst  $38                                         ; $6726: $ff
	rst  $38                                         ; $6727: $ff
	sbc  b                                           ; $6728: $98
	ld   de, $1311                                   ; $6729: $11 $11 $13
	ld   c, e                                        ; $672c: $4b
	rst  $38                                         ; $672d: $ff
	rst  $38                                         ; $672e: $ff
	rst  $38                                         ; $672f: $ff
	xor  d                                           ; $6730: $aa
	ld   hl, $1111                                   ; $6731: $21 $11 $11
	ld   e, e                                        ; $6734: $5b
	rst  $38                                         ; $6735: $ff
	rst  $38                                         ; $6736: $ff
	rst  $38                                         ; $6737: $ff
	jp   hl                                          ; $6738: $e9


	ld   h, c                                        ; $6739: $61
	ld   de, $2a11                                   ; $673a: $11 $11 $2a
	rst  $28                                         ; $673d: $ef
	rst  $38                                         ; $673e: $ff
	rst  $38                                         ; $673f: $ff
	ret                                              ; $6740: $c9


	ld   sp, $1111                                   ; $6741: $31 $11 $11
	jr   c, @-$21                                    ; $6744: $38 $dd

	rst  $38                                         ; $6746: $ff
	rst  $38                                         ; $6747: $ff
	ret  z                                           ; $6748: $c8

	ld   h, c                                        ; $6749: $61
	ld   de, $4711                                   ; $674a: $11 $11 $47
	rst  JumpTable                                         ; $674d: $df
	rst  $38                                         ; $674e: $ff
	rst  $38                                         ; $674f: $ff
	ld   [$1151], a                                  ; $6750: $ea $51 $11
	ld   de, $fe27                                   ; $6753: $11 $27 $fe
	rst  $38                                         ; $6756: $ff
	rst  $38                                         ; $6757: $ff
	ld   sp, hl                                      ; $6758: $f9
	ld   h, c                                        ; $6759: $61
	ld   de, $0711                                   ; $675a: $11 $11 $07
	call $ffff                                       ; $675d: $cd $ff $ff
	ld   sp, hl                                      ; $6760: $f9
	ld   [hl], c                                     ; $6761: $71
	ld   de, $1611                                   ; $6762: $11 $11 $16
	adc  $ff                                         ; $6765: $ce $ff
	rst  $38                                         ; $6767: $ff
	ld   sp, hl                                      ; $6768: $f9
	ld   [hl], d                                     ; $6769: $72
	ld   de, $1611                                   ; $676a: $11 $11 $16
	cp   [hl]                                        ; $676d: $be
	rst  $38                                         ; $676e: $ff
	rst  $38                                         ; $676f: $ff
	ld   sp, hl                                      ; $6770: $f9
	ld   [hl], c                                     ; $6771: $71
	ld   de, $1511                                   ; $6772: $11 $11 $15
	xor  d                                           ; $6775: $aa
	rst  $38                                         ; $6776: $ff
	rst  $38                                         ; $6777: $ff
	ld   a, [$1183]                                  ; $6778: $fa $83 $11
	ld   de, $ac16                                   ; $677b: $11 $16 $ac
	rst  $38                                         ; $677e: $ff
	rst  $38                                         ; $677f: $ff
	ld   a, [$11a2]                                  ; $6780: $fa $a2 $11
	ld   de, $ae15                                   ; $6783: $11 $15 $ae
	rst  $38                                         ; $6786: $ff
	rst  $38                                         ; $6787: $ff
	ld   sp, hl                                      ; $6788: $f9
	add  c                                           ; $6789: $81
	ld   de, $1711                                   ; $678a: $11 $11 $17
	xor  [hl]                                        ; $678d: $ae
	rst  $38                                         ; $678e: $ff
	rst  $38                                         ; $678f: $ff
	ld   sp, hl                                      ; $6790: $f9
	sub  c                                           ; $6791: $91
	ld   de, $1611                                   ; $6792: $11 $11 $16
	xor  l                                           ; $6795: $ad
	rst  $38                                         ; $6796: $ff
	rst  $38                                         ; $6797: $ff
	ld   a, [$1171]                                  ; $6798: $fa $71 $11
	ld   de, $af17                                   ; $679b: $11 $17 $af
	rst  $38                                         ; $679e: $ff
	rst  $38                                         ; $679f: $ff
	ld   sp, hl                                      ; $67a0: $f9
	sub  c                                           ; $67a1: $91
	ld   de, $1611                                   ; $67a2: $11 $11 $16
	adc  a                                           ; $67a5: $8f
	rst  $38                                         ; $67a6: $ff
	rst  $38                                         ; $67a7: $ff
	ei                                               ; $67a8: $fb
	ld   h, c                                        ; $67a9: $61
	ld   de, $1611                                   ; $67aa: $11 $11 $16
	xor  a                                           ; $67ad: $af
	rst  $38                                         ; $67ae: $ff
	rst  $38                                         ; $67af: $ff
	call z, $1151                                    ; $67b0: $cc $51 $11
	ld   de, $9f27                                   ; $67b3: $11 $27 $9f
	rst  $38                                         ; $67b6: $ff
	rst  $38                                         ; $67b7: $ff
	sla  c                                           ; $67b8: $cb $21
	ld   de, $5711                                   ; $67ba: $11 $11 $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67bd: $cf
	rst  $38                                         ; $67be: $ff
	rst  $38                                         ; $67bf: $ff
	cp   c                                           ; $67c0: $b9
	ld   hl, $1111                                   ; $67c1: $21 $11 $11
	adc  b                                           ; $67c4: $88
	rst  JumpTable                                         ; $67c5: $df
	rst  $38                                         ; $67c6: $ff
	rst  $38                                         ; $67c7: $ff
	xor  c                                           ; $67c8: $a9
	ld   de, $1211                                   ; $67c9: $11 $11 $12
	ld   a, b                                        ; $67cc: $78
	rst  $38                                         ; $67cd: $ff
	rst  $38                                         ; $67ce: $ff
	rst  $38                                         ; $67cf: $ff
	or   a                                           ; $67d0: $b7
	ld   de, $1211                                   ; $67d1: $11 $11 $12
	ld   l, d                                        ; $67d4: $6a
	rst  $38                                         ; $67d5: $ff
	rst  $38                                         ; $67d6: $ff
	ei                                               ; $67d7: $fb
	or   h                                           ; $67d8: $b4
	ld   de, $1311                                   ; $67d9: $11 $11 $13
	ld   a, e                                        ; $67dc: $7b
	rst  $38                                         ; $67dd: $ff
	rst  $38                                         ; $67de: $ff
	db   $fd                                         ; $67df: $fd
	and  c                                           ; $67e0: $a1
	ld   de, $1611                                   ; $67e1: $11 $11 $16
	ld   a, h                                        ; $67e4: $7c
	rst  $38                                         ; $67e5: $ff
	rst  $38                                         ; $67e6: $ff
	db   $db                                         ; $67e7: $db
	sub  c                                           ; $67e8: $91
	ld   de, $3711                                   ; $67e9: $11 $11 $37
	ld   a, a                                        ; $67ec: $7f
	rst  $38                                         ; $67ed: $ff
	rst  $38                                         ; $67ee: $ff
	ld   [$1161], a                                  ; $67ef: $ea $61 $11
	ld   de, $8f47                                   ; $67f2: $11 $47 $8f
	rst  $38                                         ; $67f5: $ff
	rst  $38                                         ; $67f6: $ff
	cp   c                                           ; $67f7: $b9
	ld   hl, $1411                                   ; $67f8: $21 $11 $14
	adc  b                                           ; $67fb: $88
	rst  $38                                         ; $67fc: $ff
	rst  $38                                         ; $67fd: $ff
	ld   a, [$11d6]                                  ; $67fe: $fa $d6 $11
	ld   de, $3e14                                   ; $6801: $11 $14 $3e
	rst  $38                                         ; $6804: $ff
	rst  $38                                         ; $6805: $ff
	db   $ec                                         ; $6806: $ec
	sub  c                                           ; $6807: $91
	ld   de, $1511                                   ; $6808: $11 $11 $15
	ld   a, a                                        ; $680b: $7f
	rst  $38                                         ; $680c: $ff
	rst  $38                                         ; $680d: $ff
	db   $dd                                         ; $680e: $dd
	ld   d, c                                        ; $680f: $51
	ld   de, $5611                                   ; $6810: $11 $11 $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6813: $cf
	rst  $38                                         ; $6814: $ff
	db   $fc                                         ; $6815: $fc
	reti                                             ; $6816: $d9


	ld   hl, $1311                                   ; $6817: $21 $11 $13
	ld   d, [hl]                                     ; $681a: $56
	rst  $38                                         ; $681b: $ff
	rst  $38                                         ; $681c: $ff
	db   $fc                                         ; $681d: $fc
	or   h                                           ; $681e: $b4
	ld   de, $1411                                   ; $681f: $11 $11 $14
	ld   l, l                                        ; $6822: $6d
	rst  $38                                         ; $6823: $ff
	rst  $38                                         ; $6824: $ff
	rst  JumpTable                                         ; $6825: $df
	ld   d, c                                        ; $6826: $51
	ld   de, $4511                                   ; $6827: $11 $11 $45
	sbc  a                                           ; $682a: $9f
	rst  $38                                         ; $682b: $ff
	cp   $f9                                         ; $682c: $fe $f9
	ld   hl, $1411                                   ; $682e: $21 $11 $14
	ld   c, c                                        ; $6831: $49
	rst  $38                                         ; $6832: $ff
	rst  $38                                         ; $6833: $ff
	sbc  $b1                                         ; $6834: $de $b1
	ld   de, $2611                                   ; $6836: $11 $11 $26
	ld   l, a                                        ; $6839: $6f
	rst  $38                                         ; $683a: $ff
	cp   $bb                                         ; $683b: $fe $bb
	ld   sp, $1311                                   ; $683d: $31 $11 $13
	ld   d, h                                        ; $6840: $54
	rst  $38                                         ; $6841: $ff
	rst  $38                                         ; $6842: $ff
	db   $fd                                         ; $6843: $fd
	db   $e4                                         ; $6844: $e4
	ld   de, $2411                                   ; $6845: $11 $11 $24
	ld   l, a                                        ; $6848: $6f
	rst  $38                                         ; $6849: $ff
	rst  $38                                         ; $684a: $ff
	call $1141                                       ; $684b: $cd $41 $11
	ld   de, $df54                                   ; $684e: $11 $54 $df
	rst  $38                                         ; $6851: $ff
	db   $fd                                         ; $6852: $fd
	push de                                          ; $6853: $d5
	ld   sp, $1311                                   ; $6854: $31 $11 $13
	ld   l, h                                        ; $6857: $6c
	rst  $38                                         ; $6858: $ff
	rst  $38                                         ; $6859: $ff
	sbc  $71                                         ; $685a: $de $71
	ld   de, $6511                                   ; $685c: $11 $11 $65
	xor  a                                           ; $685f: $af
	rst  JumpTable                                         ; $6860: $df
	db   $fc                                         ; $6861: $fc
	add  sp, $21                                     ; $6862: $e8 $21
	ld   de, $2e15                                   ; $6864: $11 $15 $2e
	db   $fd                                         ; $6867: $fd
	rst  $38                                         ; $6868: $ff
	rst  JumpTable                                         ; $6869: $df
	ld   h, c                                        ; $686a: $61
	ld   sp, $4213                                   ; $686b: $31 $13 $42
	db   $dd                                         ; $686e: $dd
	rst  $38                                         ; $686f: $ff
	db   $fd                                         ; $6870: $fd
	ret  z                                           ; $6871: $c8

	inc  de                                          ; $6872: $13
	ld   de, $3b25                                   ; $6873: $11 $25 $3b
	db   $fc                                         ; $6876: $fc
	rst  $38                                         ; $6877: $ff
	call $1151                                       ; $6878: $cd $51 $11
	inc  de                                          ; $687b: $13
	ld   h, h                                        ; $687c: $64
	rst  $38                                         ; $687d: $ff
	rst  $28                                         ; $687e: $ef
	ld   a, [$12c5]                                  ; $687f: $fa $c5 $12
	ld   de, $4f37                                   ; $6882: $11 $37 $4f
	db   $fd                                         ; $6885: $fd
	rst  $38                                         ; $6886: $ff
	rst  $10                                         ; $6887: $d7

jr_0eb_6888:
	ld   [hl], c                                     ; $6888: $71
	ld   de, $5815                                   ; $6889: $11 $15 $58
	rst  $28                                         ; $688c: $ef
	rst  $38                                         ; $688d: $ff
	db   $eb                                         ; $688e: $eb
	add  c                                           ; $688f: $81
	ld   de, $a311                                   ; $6890: $11 $11 $a3
	cp   a                                           ; $6893: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6894: $cf
	db   $fc                                         ; $6895: $fc
	sbc  b                                           ; $6896: $98
	ld   hl, $2611                                   ; $6897: $21 $11 $26
	ld   l, [hl]                                     ; $689a: $6e
	cp   $fe                                         ; $689b: $fe $fe
	ret  z                                           ; $689d: $c8

	ld   d, d                                        ; $689e: $52
	ld   de, $5914                                   ; $689f: $11 $14 $59
	db   $ed                                         ; $68a2: $ed
	rst  $38                                         ; $68a3: $ff
	db   $fc                                         ; $68a4: $fc
	sub  l                                           ; $68a5: $95
	ld   de, $6711                                   ; $68a6: $11 $11 $67
	call $eeff                                       ; $68a9: $cd $ff $ee
	sub  [hl]                                        ; $68ac: $96
	ld   b, d                                        ; $68ad: $42
	ld   de, $7c45                                   ; $68ae: $11 $45 $7c
	cp   $ff                                         ; $68b1: $fe $ff
	cp   d                                           ; $68b3: $ba
	ld   d, e                                        ; $68b4: $53
	ld   de, $7714                                   ; $68b5: $11 $14 $77
	rst  JumpTable                                         ; $68b8: $df
	rst  JumpTable                                         ; $68b9: $df
	jp   c, $21a5                                    ; $68ba: $da $a5 $21

	ld   [de], a                                     ; $68bd: $12
	ld   d, [hl]                                     ; $68be: $56
	xor  [hl]                                        ; $68bf: $ae
	db   $fc                                         ; $68c0: $fc
	db   $fd                                         ; $68c1: $fd
	adc  c                                           ; $68c2: $89
	ld   b, d                                        ; $68c3: $42
	ld   de, $a616                                   ; $68c4: $11 $16 $a6
	rst  $38                                         ; $68c7: $ff
	sbc  a                                           ; $68c8: $9f
	rst  ToBoot                                         ; $68c9: $c7
	halt                                             ; $68ca: $76
	inc  de                                          ; $68cb: $13
	ld   de, $9eb6                                   ; $68cc: $11 $b6 $9e
	ei                                               ; $68cf: $fb
	cp   $77                                         ; $68d0: $fe $77
	ld   d, e                                        ; $68d2: $53
	ld   [de], a                                     ; $68d3: $12
	ld   [hl], $a9                                   ; $68d4: $36 $a9
	db   $fd                                         ; $68d6: $fd
	db   $ed                                         ; $68d7: $ed
	xor  h                                           ; $68d8: $ac
	ld   d, l                                        ; $68d9: $55
	ld   sp, $7922                                   ; $68da: $31 $22 $79
	xor  a                                           ; $68dd: $af
	rst  $28                                         ; $68de: $ef
	add  sp, $75                                     ; $68df: $e8 $75
	ld   sp, $6823                                   ; $68e1: $31 $23 $68
	sbc  l                                           ; $68e4: $9d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68e5: $cf
	call z, Call_0eb_74c4                            ; $68e6: $cc $c4 $74
	ld   de, $6a36                                   ; $68e9: $11 $36 $6a
	cp   $fd                                         ; $68ec: $fe $fd
	ret                                              ; $68ee: $c9


	ld   b, [hl]                                     ; $68ef: $46
	ld   hl, $7923                                   ; $68f0: $21 $23 $79
	sbc  a                                           ; $68f3: $9f
	xor  $db                                         ; $68f4: $ee $db
	and  d                                           ; $68f6: $a2
	ld   h, d                                        ; $68f7: $62
	inc  d                                           ; $68f8: $14
	jr   c, jr_0eb_6888                              ; $68f9: $38 $8d

	rst  $28                                         ; $68fb: $ef
	jp   z, Jump_0eb_55d6                            ; $68fc: $ca $d6 $55

	ld   sp, $4a27                                   ; $68ff: $31 $27 $4a
	cp   [hl]                                        ; $6902: $be
	db   $fc                                         ; $6903: $fc
	jp   hl                                          ; $6904: $e9


	ld   [hl], l                                     ; $6905: $75
	ld   [hl-], a                                    ; $6906: $32
	inc  d                                           ; $6907: $14
	ld   d, a                                        ; $6908: $57
	call z, $acff                                    ; $6909: $cc $ff $ac
	sub  l                                           ; $690c: $95
	ld   h, l                                        ; $690d: $65
	inc  de                                          ; $690e: $13
	ld   d, l                                        ; $690f: $55
	ld   a, d                                        ; $6910: $7a
	call $caec                                       ; $6911: $cd $ec $ca
	ld   h, l                                        ; $6914: $65
	ld   b, c                                        ; $6915: $41
	dec  h                                           ; $6916: $25
	ld   e, c                                        ; $6917: $59
	cp   [hl]                                        ; $6918: $be
	db   $ed                                         ; $6919: $ed
	cp   e                                           ; $691a: $bb
	add  l                                           ; $691b: $85
	ld   d, h                                        ; $691c: $54
	inc  de                                          ; $691d: $13
	ld   h, [hl]                                     ; $691e: $66
	cp   d                                           ; $691f: $ba
	xor  $ab                                         ; $6920: $ee $ab
	cp   b                                           ; $6922: $b8
	ld   b, a                                        ; $6923: $47
	ld   de, $9a54                                   ; $6924: $11 $54 $9a
	call $bbcb                                       ; $6927: $cd $cb $bb
	ld   [hl], a                                     ; $692a: $77
	ld   b, c                                        ; $692b: $41
	dec  h                                           ; $692c: $25
	ld   c, c                                        ; $692d: $49
	sbc  h                                           ; $692e: $9c
	db   $fc                                         ; $692f: $fc
	db   $db                                         ; $6930: $db
	sub  l                                           ; $6931: $95
	ld   h, e                                        ; $6932: $63
	inc  d                                           ; $6933: $14
	ld   d, [hl]                                     ; $6934: $56
	xor  e                                           ; $6935: $ab
	xor  a                                           ; $6936: $af
	xor  e                                           ; $6937: $ab
	rst  ToBoot                                         ; $6938: $c7
	ld   [hl], l                                     ; $6939: $75
	ld   b, c                                        ; $693a: $41
	ld   d, l                                        ; $693b: $55
	ld   e, h                                        ; $693c: $5c
	adc  h                                           ; $693d: $8c
	db   $eb                                         ; $693e: $eb
	cp   e                                           ; $693f: $bb
	ld   [hl], l                                     ; $6940: $75
	ld   h, h                                        ; $6941: $64
	ld   d, $56                                      ; $6942: $16 $56
	xor  e                                           ; $6944: $ab
	cp   h                                           ; $6945: $bc
	cp   d                                           ; $6946: $ba
	cp   b                                           ; $6947: $b8
	ld   d, [hl]                                     ; $6948: $56
	ld   hl, $8b65                                   ; $6949: $21 $65 $8b
	cp   h                                           ; $694c: $bc
	res  1, d                                        ; $694d: $cb $8a
	ld   h, l                                        ; $694f: $65
	ld   h, e                                        ; $6950: $63
	ld   b, a                                        ; $6951: $47
	ld   h, a                                        ; $6952: $67
	xor  d                                           ; $6953: $aa
	call z, $97bb                                    ; $6954: $cc $bb $97
	ld   h, h                                        ; $6957: $64
	inc  h                                           ; $6958: $24
	ld   b, a                                        ; $6959: $47
	xor  d                                           ; $695a: $aa
	db   $db                                         ; $695b: $db
	cp   d                                           ; $695c: $ba
	sub  a                                           ; $695d: $97
	ld   [hl], l                                     ; $695e: $75
	inc  [hl]                                        ; $695f: $34
	ld   b, a                                        ; $6960: $47
	adc  c                                           ; $6961: $89
	cp   h                                           ; $6962: $bc
	xor  e                                           ; $6963: $ab
	xor  d                                           ; $6964: $aa
	add  a                                           ; $6965: $87
	ld   h, d                                        ; $6966: $62
	ld   b, l                                        ; $6967: $45
	ld   d, a                                        ; $6968: $57
	xor  e                                           ; $6969: $ab
	call z, $979c                                    ; $696a: $cc $9c $97
	ld   h, h                                        ; $696d: $64
	ld   b, h                                        ; $696e: $44
	ld   h, a                                        ; $696f: $67
	adc  d                                           ; $6970: $8a
	cp   e                                           ; $6971: $bb
	sbc  e                                           ; $6972: $9b
	sbc  b                                           ; $6973: $98
	ld   [hl], a                                     ; $6974: $77
	ld   d, h                                        ; $6975: $54
	ld   h, l                                        ; $6976: $65
	ld   a, c                                        ; $6977: $79
	sbc  c                                           ; $6978: $99
	cp   d                                           ; $6979: $ba
	sbc  h                                           ; $697a: $9c
	sbc  c                                           ; $697b: $99
	ld   [hl], l                                     ; $697c: $75
	ld   b, [hl]                                     ; $697d: $46
	halt                                             ; $697e: $76
	xor  c                                           ; $697f: $a9
	sbc  e                                           ; $6980: $9b
	sbc  d                                           ; $6981: $9a
	xor  b                                           ; $6982: $a8
	add  a                                           ; $6983: $87
	ld   d, l                                        ; $6984: $55
	ld   h, a                                        ; $6985: $67
	ld   l, d                                        ; $6986: $6a
	sbc  d                                           ; $6987: $9a
	cp   d                                           ; $6988: $ba
	adc  c                                           ; $6989: $89
	add  a                                           ; $698a: $87
	add  l                                           ; $698b: $85
	ld   d, a                                        ; $698c: $57
	ld   [hl], a                                     ; $698d: $77
	xor  c                                           ; $698e: $a9
	sbc  d                                           ; $698f: $9a
	sub  a                                           ; $6990: $97
	sbc  b                                           ; $6991: $98
	ld   [hl], a                                     ; $6992: $77
	ld   d, l                                        ; $6993: $55
	ld   a, b                                        ; $6994: $78
	ld   a, c                                        ; $6995: $79
	sbc  c                                           ; $6996: $99
	xor  d                                           ; $6997: $aa
	adc  d                                           ; $6998: $8a
	add  [hl]                                        ; $6999: $86
	ld   [hl], l                                     ; $699a: $75
	ld   l, b                                        ; $699b: $68
	sbc  c                                           ; $699c: $99
	xor  c                                           ; $699d: $a9
	adc  d                                           ; $699e: $8a
	sbc  b                                           ; $699f: $98
	sbc  b                                           ; $69a0: $98
	ld   [hl], a                                     ; $69a1: $77
	ld   d, [hl]                                     ; $69a2: $56
	ld   [hl], a                                     ; $69a3: $77
	sbc  d                                           ; $69a4: $9a
	sbc  c                                           ; $69a5: $99
	sbc  b                                           ; $69a6: $98
	adc  b                                           ; $69a7: $88
	adc  b                                           ; $69a8: $88
	halt                                             ; $69a9: $76
	ld   h, a                                        ; $69aa: $67
	adc  b                                           ; $69ab: $88
	xor  c                                           ; $69ac: $a9
	adc  c                                           ; $69ad: $89
	adc  b                                           ; $69ae: $88
	adc  c                                           ; $69af: $89
	ld   [hl], a                                     ; $69b0: $77
	ld   h, [hl]                                     ; $69b1: $66
	sbc  b                                           ; $69b2: $98
	adc  e                                           ; $69b3: $8b
	sbc  c                                           ; $69b4: $99
	sbc  c                                           ; $69b5: $99
	ld   [hl], a                                     ; $69b6: $77
	add  [hl]                                        ; $69b7: $86
	halt                                             ; $69b8: $76
	ld   l, c                                        ; $69b9: $69
	adc  c                                           ; $69ba: $89
	xor  d                                           ; $69bb: $aa
	adc  d                                           ; $69bc: $8a
	sub  a                                           ; $69bd: $97
	add  a                                           ; $69be: $87
	ld   [hl], a                                     ; $69bf: $77
	ld   [hl], a                                     ; $69c0: $77
	adc  b                                           ; $69c1: $88
	adc  d                                           ; $69c2: $8a
	sbc  c                                           ; $69c3: $99
	xor  c                                           ; $69c4: $a9
	adc  c                                           ; $69c5: $89
	halt                                             ; $69c6: $76
	halt                                             ; $69c7: $76
	ld   l, b                                        ; $69c8: $68
	ld   a, b                                        ; $69c9: $78
	xor  d                                           ; $69ca: $aa

Jump_0eb_69cb:
	xor  d                                           ; $69cb: $aa
	sbc  b                                           ; $69cc: $98
	add  a                                           ; $69cd: $87
	ld   h, a                                        ; $69ce: $67
	ld   h, a                                        ; $69cf: $67
	adc  b                                           ; $69d0: $88
	sbc  d                                           ; $69d1: $9a
	xor  c                                           ; $69d2: $a9
	sbc  b                                           ; $69d3: $98
	adc  b                                           ; $69d4: $88
	ld   [hl], a                                     ; $69d5: $77
	halt                                             ; $69d6: $76
	ld   a, b                                        ; $69d7: $78
	ld   a, b                                        ; $69d8: $78
	sbc  b                                           ; $69d9: $98
	sbc  c                                           ; $69da: $99
	sbc  c                                           ; $69db: $99
	sub  a                                           ; $69dc: $97
	halt                                             ; $69dd: $76
	ld   h, a                                        ; $69de: $67
	ld   a, b                                        ; $69df: $78
	adc  c                                           ; $69e0: $89
	sbc  c                                           ; $69e1: $99
	sbc  c                                           ; $69e2: $99
	adc  b                                           ; $69e3: $88
	ld   [hl], a                                     ; $69e4: $77
	ld   [hl], a                                     ; $69e5: $77
	adc  b                                           ; $69e6: $88
	sbc  c                                           ; $69e7: $99
	sbc  c                                           ; $69e8: $99
	adc  b                                           ; $69e9: $88
	ld   a, b                                        ; $69ea: $78
	ld   [hl], a                                     ; $69eb: $77
	adc  b                                           ; $69ec: $88
	sbc  c                                           ; $69ed: $99
	sbc  b                                           ; $69ee: $98
	sbc  b                                           ; $69ef: $98
	adc  b                                           ; $69f0: $88
	ld   a, b                                        ; $69f1: $78
	ld   a, b                                        ; $69f2: $78
	adc  c                                           ; $69f3: $89
	adc  c                                           ; $69f4: $89
	sbc  b                                           ; $69f5: $98
	adc  b                                           ; $69f6: $88
	adc  b                                           ; $69f7: $88
	adc  b                                           ; $69f8: $88
	sbc  c                                           ; $69f9: $99
	adc  b                                           ; $69fa: $88
	ld   [hl], a                                     ; $69fb: $77
	adc  b                                           ; $69fc: $88
	adc  c                                           ; $69fd: $89
	sbc  b                                           ; $69fe: $98
	adc  c                                           ; $69ff: $89
	ld   a, b                                        ; $6a00: $78
	ld   [hl], a                                     ; $6a01: $77
	ld   [hl], a                                     ; $6a02: $77
	adc  b                                           ; $6a03: $88
	adc  b                                           ; $6a04: $88
	sbc  b                                           ; $6a05: $98
	sbc  b                                           ; $6a06: $98
	adc  b                                           ; $6a07: $88
	ld   a, b                                        ; $6a08: $78
	ld   a, b                                        ; $6a09: $78
	adc  b                                           ; $6a0a: $88
	sbc  b                                           ; $6a0b: $98
	adc  b                                           ; $6a0c: $88
	adc  b                                           ; $6a0d: $88
	adc  b                                           ; $6a0e: $88
	ld   a, b                                        ; $6a0f: $78
	add  a                                           ; $6a10: $87
	sbc  b                                           ; $6a11: $98
	adc  b                                           ; $6a12: $88
	adc  b                                           ; $6a13: $88
	sbc  b                                           ; $6a14: $98
	adc  b                                           ; $6a15: $88
	adc  b                                           ; $6a16: $88
	adc  b                                           ; $6a17: $88
	ld   a, b                                        ; $6a18: $78
	add  a                                           ; $6a19: $87
	adc  b                                           ; $6a1a: $88
	adc  c                                           ; $6a1b: $89
	adc  b                                           ; $6a1c: $88
	sbc  c                                           ; $6a1d: $99
	adc  b                                           ; $6a1e: $88
	ld   [hl], a                                     ; $6a1f: $77
	adc  b                                           ; $6a20: $88
	adc  b                                           ; $6a21: $88
	adc  b                                           ; $6a22: $88
	sbc  b                                           ; $6a23: $98
	adc  b                                           ; $6a24: $88
	adc  b                                           ; $6a25: $88
	adc  b                                           ; $6a26: $88
	adc  b                                           ; $6a27: $88
	adc  b                                           ; $6a28: $88
	adc  b                                           ; $6a29: $88
	adc  b                                           ; $6a2a: $88
	adc  c                                           ; $6a2b: $89
	adc  c                                           ; $6a2c: $89
	adc  b                                           ; $6a2d: $88
	add  a                                           ; $6a2e: $87
	adc  b                                           ; $6a2f: $88
	adc  b                                           ; $6a30: $88
	adc  b                                           ; $6a31: $88
	adc  c                                           ; $6a32: $89
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
	sbc  b                                           ; $6a41: $98
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
	sbc  c                                           ; $6a74: $99
	sbc  c                                           ; $6a75: $99
	sbc  b                                           ; $6a76: $98
	adc  b                                           ; $6a77: $88
	adc  b                                           ; $6a78: $88
	adc  b                                           ; $6a79: $88
	adc  b                                           ; $6a7a: $88
	sbc  c                                           ; $6a7b: $99
	sbc  c                                           ; $6a7c: $99
	sbc  c                                           ; $6a7d: $99
	adc  b                                           ; $6a7e: $88
	adc  b                                           ; $6a7f: $88
	adc  b                                           ; $6a80: $88
	adc  b                                           ; $6a81: $88
	adc  b                                           ; $6a82: $88
	adc  c                                           ; $6a83: $89
	sbc  c                                           ; $6a84: $99
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

Jump_0eb_6a99:
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
	sbc  b                                           ; $6ab7: $98
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
	adc  c                                           ; $6ad1: $89
	adc  b                                           ; $6ad2: $88
	adc  b                                           ; $6ad3: $88
	adc  b                                           ; $6ad4: $88
	adc  b                                           ; $6ad5: $88
	add  a                                           ; $6ad6: $87
	adc  b                                           ; $6ad7: $88
	adc  c                                           ; $6ad8: $89
	adc  b                                           ; $6ad9: $88
	adc  b                                           ; $6ada: $88
	adc  b                                           ; $6adb: $88
	adc  b                                           ; $6adc: $88
	adc  b                                           ; $6add: $88
	sbc  b                                           ; $6ade: $98
	adc  b                                           ; $6adf: $88
	adc  b                                           ; $6ae0: $88
	adc  b                                           ; $6ae1: $88
	adc  c                                           ; $6ae2: $89
	adc  b                                           ; $6ae3: $88
	adc  b                                           ; $6ae4: $88
	ld   a, b                                        ; $6ae5: $78
	ld   a, b                                        ; $6ae6: $78
	adc  b                                           ; $6ae7: $88
	adc  b                                           ; $6ae8: $88
	sub  a                                           ; $6ae9: $97
	adc  b                                           ; $6aea: $88
	ld   a, b                                        ; $6aeb: $78
	adc  b                                           ; $6aec: $88
	adc  c                                           ; $6aed: $89
	adc  b                                           ; $6aee: $88
	add  a                                           ; $6aef: $87
	adc  b                                           ; $6af0: $88
	ld   a, b                                        ; $6af1: $78
	adc  b                                           ; $6af2: $88
	adc  b                                           ; $6af3: $88
	adc  b                                           ; $6af4: $88
	adc  b                                           ; $6af5: $88
	sub  a                                           ; $6af6: $97
	sbc  b                                           ; $6af7: $98
	ld   a, c                                        ; $6af8: $79
	adc  b                                           ; $6af9: $88
	adc  b                                           ; $6afa: $88
	ld   a, b                                        ; $6afb: $78
	add  a                                           ; $6afc: $87
	adc  c                                           ; $6afd: $89
	ld   [hl], a                                     ; $6afe: $77
	add  a                                           ; $6aff: $87
	adc  b                                           ; $6b00: $88
	adc  b                                           ; $6b01: $88
	sbc  b                                           ; $6b02: $98
	adc  c                                           ; $6b03: $89
	ld   [hl], a                                     ; $6b04: $77
	adc  b                                           ; $6b05: $88
	adc  c                                           ; $6b06: $89
	sbc  c                                           ; $6b07: $99
	sbc  b                                           ; $6b08: $98
	add  a                                           ; $6b09: $87
	ld   a, b                                        ; $6b0a: $78
	ld   [hl], a                                     ; $6b0b: $77
	adc  c                                           ; $6b0c: $89
	adc  c                                           ; $6b0d: $89
	add  a                                           ; $6b0e: $87
	ld   [hl], a                                     ; $6b0f: $77
	halt                                             ; $6b10: $76
	ld   [hl], a                                     ; $6b11: $77
	sbc  c                                           ; $6b12: $99
	xor  d                                           ; $6b13: $aa
	adc  c                                           ; $6b14: $89
	ld   [hl], a                                     ; $6b15: $77
	ld   [hl], a                                     ; $6b16: $77
	ld   h, a                                        ; $6b17: $67
	sbc  b                                           ; $6b18: $98
	xor  c                                           ; $6b19: $a9
	adc  b                                           ; $6b1a: $88
	add  a                                           ; $6b1b: $87
	ld   [hl], a                                     ; $6b1c: $77
	ld   h, a                                        ; $6b1d: $67
	sbc  c                                           ; $6b1e: $99
	adc  d                                           ; $6b1f: $8a
	sub  a                                           ; $6b20: $97
	sub  a                                           ; $6b21: $97
	ld   [hl], a                                     ; $6b22: $77
	halt                                             ; $6b23: $76
	ld   l, c                                        ; $6b24: $69
	sbc  d                                           ; $6b25: $9a
	xor  b                                           ; $6b26: $a8
	sbc  b                                           ; $6b27: $98
	ld   [hl], a                                     ; $6b28: $77
	halt                                             ; $6b29: $76
	ld   h, a                                        ; $6b2a: $67
	ld   a, c                                        ; $6b2b: $79
	xor  e                                           ; $6b2c: $ab
	cp   b                                           ; $6b2d: $b8
	sbc  c                                           ; $6b2e: $99
	ld   d, [hl]                                     ; $6b2f: $56
	ld   h, h                                        ; $6b30: $64
	ld   h, a                                        ; $6b31: $67
	ld   a, d                                        ; $6b32: $7a
	cp   d                                           ; $6b33: $ba
	sbc  h                                           ; $6b34: $9c
	halt                                             ; $6b35: $76
	sub  h                                           ; $6b36: $94
	ld   d, [hl]                                     ; $6b37: $56
	ld   h, [hl]                                     ; $6b38: $66
	cp   d                                           ; $6b39: $ba
	xor  h                                           ; $6b3a: $ac
	xor  d                                           ; $6b3b: $aa
	ld   a, b                                        ; $6b3c: $78
	ld   d, l                                        ; $6b3d: $55
	ld   h, l                                        ; $6b3e: $65
	ld   a, b                                        ; $6b3f: $78
	cp   c                                           ; $6b40: $b9
	xor  e                                           ; $6b41: $ab
	adc  b                                           ; $6b42: $88
	ld   [hl], a                                     ; $6b43: $77
	ld   d, [hl]                                     ; $6b44: $56
	ld   h, [hl]                                     ; $6b45: $66
	sbc  e                                           ; $6b46: $9b
	xor  d                                           ; $6b47: $aa
	and  a                                           ; $6b48: $a7
	sub  a                                           ; $6b49: $97
	ld   d, [hl]                                     ; $6b4a: $56

Call_0eb_6b4b:
	ld   [hl], l                                     ; $6b4b: $75
	ld   a, h                                        ; $6b4c: $7c
	cp   d                                           ; $6b4d: $ba
	xor  d                                           ; $6b4e: $aa
	ld   h, a                                        ; $6b4f: $67
	add  h                                           ; $6b50: $84
	ld   h, [hl]                                     ; $6b51: $66
	ld   e, c                                        ; $6b52: $59
	cp   e                                           ; $6b53: $bb
	xor  h                                           ; $6b54: $ac
	add  [hl]                                        ; $6b55: $86
	sub  l                                           ; $6b56: $95
	ld   d, [hl]                                     ; $6b57: $56
	ld   h, l                                        ; $6b58: $65
	xor  h                                           ; $6b59: $ac
	adc  l                                           ; $6b5a: $8d
	sub  a                                           ; $6b5b: $97
	sub  a                                           ; $6b5c: $97
	ld   b, l                                        ; $6b5d: $45
	add  e                                           ; $6b5e: $83
	ld   a, l                                        ; $6b5f: $7d
	xor  d                                           ; $6b60: $aa
	ret                                              ; $6b61: $c9


	ld   l, c                                        ; $6b62: $69
	ld   h, e                                        ; $6b63: $63
	ld   h, a                                        ; $6b64: $67
	add  hl, sp                                      ; $6b65: $39
	ld   hl, sp-$63                                  ; $6b66: $f8 $9d
	ld   h, [hl]                                     ; $6b68: $66
	and  l                                           ; $6b69: $a5
	add  hl, sp                                      ; $6b6a: $39
	ld   d, l                                        ; $6b6b: $55
	db   $db                                         ; $6b6c: $db
	adc  h                                           ; $6b6d: $8c
	and  h                                           ; $6b6e: $a4

jr_0eb_6b6f:
	and  a                                           ; $6b6f: $a7
	scf                                              ; $6b70: $37
	add  h                                           ; $6b71: $84
	sbc  a                                           ; $6b72: $9f
	sbc  c                                           ; $6b73: $99
	push hl                                          ; $6b74: $e5
	ld   l, c                                        ; $6b75: $69
	dec  [hl]                                        ; $6b76: $35
	add  l                                           ; $6b77: $85
	ld   a, [hl]                                     ; $6b78: $7e
	or   a                                           ; $6b79: $b7
	ret  c                                           ; $6b7a: $d8

	ld   c, c                                        ; $6b7b: $49
	ld   h, e                                        ; $6b7c: $63
	sub  [hl]                                        ; $6b7d: $96
	ld   e, l                                        ; $6b7e: $5d
	ret  z                                           ; $6b7f: $c8

	cp   c                                           ; $6b80: $b9
	ld   c, c                                        ; $6b81: $49
	ld   h, h                                        ; $6b82: $64
	ld   h, a                                        ; $6b83: $67
	ld   e, e                                        ; $6b84: $5b
	rst  $30                                         ; $6b85: $f7
	cp   h                                           ; $6b86: $bc
	scf                                              ; $6b87: $37
	sub  e                                           ; $6b88: $93
	ld   e, c                                        ; $6b89: $59
	ld   l, d                                        ; $6b8a: $6a
	jp   hl                                          ; $6b8b: $e9


	xor  d                                           ; $6b8c: $aa
	ld   b, a                                        ; $6b8d: $47
	ld   [hl], h                                     ; $6b8e: $74
	ld   l, b                                        ; $6b8f: $68
	ld   e, d                                        ; $6b90: $5a
	jp   hl                                          ; $6b91: $e9


	xor  d                                           ; $6b92: $aa
	ld   b, a                                        ; $6b93: $47
	ld   [hl], h                                     ; $6b94: $74
	ld   [hl], a                                     ; $6b95: $77
	ld   l, d                                        ; $6b96: $6a
	rst  $10                                         ; $6b97: $d7
	cp   h                                           ; $6b98: $bc
	ld   c, b                                        ; $6b99: $48
	ld   [hl], e                                     ; $6b9a: $73
	ld   a, c                                        ; $6b9b: $79
	ld   c, h                                        ; $6b9c: $4c
	ret  c                                           ; $6b9d: $d8

	cp   e                                           ; $6b9e: $bb
	ld   d, l                                        ; $6b9f: $55
	and  e                                           ; $6ba0: $a3
	ld   l, c                                        ; $6ba1: $69
	ld   c, e                                        ; $6ba2: $4b
	ld   [$658b], a                                  ; $6ba3: $ea $8b $65
	sub  h                                           ; $6ba6: $94
	ld   e, b                                        ; $6ba7: $58
	ld   l, d                                        ; $6ba8: $6a
	ret  c                                           ; $6ba9: $d8

	xor  e                                           ; $6baa: $ab
	ld   d, [hl]                                     ; $6bab: $56
	ld   [hl], l                                     ; $6bac: $75
	ld   h, a                                        ; $6bad: $67
	ld   a, e                                        ; $6bae: $7b
	jp   c, Jump_0eb_469a                            ; $6baf: $da $9a $46

	ld   [hl], l                                     ; $6bb2: $75
	halt                                             ; $6bb3: $76
	xor  l                                           ; $6bb4: $ad
	sbc  d                                           ; $6bb5: $9a
	and  h                                           ; $6bb6: $a4
	add  [hl]                                        ; $6bb7: $86
	ld   d, [hl]                                     ; $6bb8: $56
	ld   l, b                                        ; $6bb9: $68
	xor  h                                           ; $6bba: $ac
	sbc  h                                           ; $6bbb: $9c
	ld   [hl], h                                     ; $6bbc: $74
	and  e                                           ; $6bbd: $a3
	ld   [hl], a                                     ; $6bbe: $77
	ld   l, c                                        ; $6bbf: $69
	reti                                             ; $6bc0: $d9


	ld   a, [hl]                                     ; $6bc1: $7e
	ld   b, l                                        ; $6bc2: $45
	sub  e                                           ; $6bc3: $93
	ld   h, a                                        ; $6bc4: $67
	ld   a, c                                        ; $6bc5: $79
	jp   c, $557d                                    ; $6bc6: $da $7d $55

	sub  l                                           ; $6bc9: $95
	ld   h, [hl]                                     ; $6bca: $66
	cp   d                                           ; $6bcb: $ba
	adc  d                                           ; $6bcc: $8a
	and  [hl]                                        ; $6bcd: $a6
	ld   l, b                                        ; $6bce: $68
	ld   b, a                                        ; $6bcf: $47
	ld   l, b                                        ; $6bd0: $68
	sbc  e                                           ; $6bd1: $9b
	xor  b                                           ; $6bd2: $a8
	and  [hl]                                        ; $6bd3: $a6
	add  h                                           ; $6bd4: $84
	add  a                                           ; $6bd5: $87
	inc  a                                           ; $6bd6: $3c
	cp   c                                           ; $6bd7: $b9
	ld   a, [hl]                                     ; $6bd8: $7e
	ld   b, l                                        ; $6bd9: $45
	and  e                                           ; $6bda: $a3
	ld   l, b                                        ; $6bdb: $68
	sbc  d                                           ; $6bdc: $9a
	ret                                              ; $6bdd: $c9


	adc  c                                           ; $6bde: $89
	ld   d, [hl]                                     ; $6bdf: $56
	ld   l, b                                        ; $6be0: $68
	ld   d, a                                        ; $6be1: $57
	cp   d                                           ; $6be2: $ba
	xor  c                                           ; $6be3: $a9
	sub  e                                           ; $6be4: $93
	ld   a, b                                        ; $6be5: $78
	jr   c, jr_0eb_6b6f                              ; $6be6: $38 $87

	call z, Call_0eb_736d                            ; $6be8: $cc $6d $73
	sub  l                                           ; $6beb: $95
	ld   [hl], l                                     ; $6bec: $75
	adc  d                                           ; $6bed: $8a
	bit  7, e                                        ; $6bee: $cb $7b
	ld   b, a                                        ; $6bf0: $47
	add  l                                           ; $6bf1: $85
	halt                                             ; $6bf2: $76
	xor  h                                           ; $6bf3: $ac
	adc  d                                           ; $6bf4: $8a
	sub  [hl]                                        ; $6bf5: $96
	ld   d, a                                        ; $6bf6: $57
	ld   h, l                                        ; $6bf7: $65
	ld   a, d                                        ; $6bf8: $7a

Jump_0eb_6bf9:
	xor  e                                           ; $6bf9: $ab
	xor  d                                           ; $6bfa: $aa
	halt                                             ; $6bfb: $76
	halt                                             ; $6bfc: $76
	ld   h, [hl]                                     ; $6bfd: $66
	adc  e                                           ; $6bfe: $8b
	xor  b                                           ; $6bff: $a8
	add  $58                                         ; $6c00: $c6 $58
	ld   b, a                                        ; $6c02: $47
	halt                                             ; $6c03: $76
	xor  l                                           ; $6c04: $ad
	ld   a, b                                        ; $6c05: $78
	jp   nc, $397a                                   ; $6c06: $d2 $7a $39

	ld   l, e                                        ; $6c09: $6b
	cp   b                                           ; $6c0a: $b8
	cp   b                                           ; $6c0b: $b8
	add  [hl]                                        ; $6c0c: $86
	ld   [hl], l                                     ; $6c0d: $75
	add  [hl]                                        ; $6c0e: $86
	ld   a, h                                        ; $6c0f: $7c
	adc  c                                           ; $6c10: $89
	sub  a                                           ; $6c11: $97
	ld   d, a                                        ; $6c12: $57
	add  [hl]                                        ; $6c13: $86
	adc  c                                           ; $6c14: $89
	cp   d                                           ; $6c15: $ba
	sbc  b                                           ; $6c16: $98
	add  l                                           ; $6c17: $85
	ld   d, a                                        ; $6c18: $57
	ld   e, b                                        ; $6c19: $58
	ld   a, h                                        ; $6c1a: $7c
	xor  b                                           ; $6c1b: $a8
	cp   b                                           ; $6c1c: $b8
	ld   d, [hl]                                     ; $6c1d: $56
	ld   h, a                                        ; $6c1e: $67
	ld   h, a                                        ; $6c1f: $67
	res  1, d                                        ; $6c20: $cb $8a
	sub  e                                           ; $6c22: $93
	ld   l, c                                        ; $6c23: $69
	ld   b, a                                        ; $6c24: $47
	sbc  e                                           ; $6c25: $9b
	cp   b                                           ; $6c26: $b8
	xor  c                                           ; $6c27: $a9
	ld   b, a                                        ; $6c28: $47
	halt                                             ; $6c29: $76
	ld   l, d                                        ; $6c2a: $6a
	sbc  e                                           ; $6c2b: $9b
	or   [hl]                                        ; $6c2c: $b6
	and  l                                           ; $6c2d: $a5
	ld   d, a                                        ; $6c2e: $57
	ld   d, a                                        ; $6c2f: $57
	adc  h                                           ; $6c30: $8c
	xor  c                                           ; $6c31: $a9
	cp   b                                           ; $6c32: $b8
	ld   d, [hl]                                     ; $6c33: $56
	add  l                                           ; $6c34: $85
	ld   a, b                                        ; $6c35: $78
	sbc  h                                           ; $6c36: $9c
	sbc  b                                           ; $6c37: $98
	and  [hl]                                        ; $6c38: $a6
	ld   h, a                                        ; $6c39: $67
	halt                                             ; $6c3a: $76
	ld   l, e                                        ; $6c3b: $6b
	cp   b                                           ; $6c3c: $b8
	cp   c                                           ; $6c3d: $b9
	ld   d, [hl]                                     ; $6c3e: $56
	sub  [hl]                                        ; $6c3f: $96
	ld   e, b                                        ; $6c40: $58
	xor  e                                           ; $6c41: $ab
	sbc  b                                           ; $6c42: $98
	and  l                                           ; $6c43: $a5
	ld   l, b                                        ; $6c44: $68
	ld   d, a                                        ; $6c45: $57
	xor  c                                           ; $6c46: $a9
	xor  d                                           ; $6c47: $aa
	sbc  c                                           ; $6c48: $99
	halt                                             ; $6c49: $76
	ld   [hl], l                                     ; $6c4a: $75
	ld   a, b                                        ; $6c4b: $78
	ld   a, h                                        ; $6c4c: $7c
	adc  b                                           ; $6c4d: $88
	and  h                                           ; $6c4e: $a4
	adc  b                                           ; $6c4f: $88
	ld   h, a                                        ; $6c50: $67
	sbc  d                                           ; $6c51: $9a
	xor  l                                           ; $6c52: $ad
	ld   [hl], a                                     ; $6c53: $77
	ld   [hl], l                                     ; $6c54: $75
	ld   h, l                                        ; $6c55: $65
	add  [hl]                                        ; $6c56: $86
	xor  l                                           ; $6c57: $ad
	ld   a, c                                        ; $6c58: $79
	and  [hl]                                        ; $6c59: $a6
	ld   l, b                                        ; $6c5a: $68
	ld   h, [hl]                                     ; $6c5b: $66
	adc  d                                           ; $6c5c: $8a
	or   a                                           ; $6c5d: $b7
	adc  e                                           ; $6c5e: $8b
	ld   b, l                                        ; $6c5f: $45
	or   l                                           ; $6c60: $b5
	ld   a, b                                        ; $6c61: $78
	xor  e                                           ; $6c62: $ab
	sbc  c                                           ; $6c63: $99
	and  l                                           ; $6c64: $a5
	ld   [hl], a                                     ; $6c65: $77
	ld   h, [hl]                                     ; $6c66: $66
	ld   a, c                                        ; $6c67: $79
	xor  d                                           ; $6c68: $aa
	ld   a, d                                        ; $6c69: $7a
	ld   [hl], l                                     ; $6c6a: $75
	and  l                                           ; $6c6b: $a5
	sub  [hl]                                        ; $6c6c: $96
	sbc  e                                           ; $6c6d: $9b
	adc  e                                           ; $6c6e: $8b
	add  [hl]                                        ; $6c6f: $86
	ld   h, a                                        ; $6c70: $67
	ld   l, b                                        ; $6c71: $68
	ld   a, b                                        ; $6c72: $78
	ret                                              ; $6c73: $c9


	ld   l, h                                        ; $6c74: $6c
	ld   h, h                                        ; $6c75: $64
	sub  l                                           ; $6c76: $95
	ld   [hl], a                                     ; $6c77: $77
	cp   e                                           ; $6c78: $bb
	adc  d                                           ; $6c79: $8a
	and  l                                           ; $6c7a: $a5
	ld   e, d                                        ; $6c7b: $5a
	scf                                              ; $6c7c: $37
	adc  b                                           ; $6c7d: $88
	xor  c                                           ; $6c7e: $a9
	xor  c                                           ; $6c7f: $a9
	ld   [hl], a                                     ; $6c80: $77
	add  l                                           ; $6c81: $85
	ld   a, c                                        ; $6c82: $79
	ld   a, d                                        ; $6c83: $7a
	and  [hl]                                        ; $6c84: $a6
	and  a                                           ; $6c85: $a7
	ld   c, d                                        ; $6c86: $4a
	ld   b, a                                        ; $6c87: $47
	sub  a                                           ; $6c88: $97
	cp   c                                           ; $6c89: $b9
	cp   b                                           ; $6c8a: $b8
	add  [hl]                                        ; $6c8b: $86
	add  a                                           ; $6c8c: $87
	ld   e, c                                        ; $6c8d: $59
	ld   a, d                                        ; $6c8e: $7a
	sub  a                                           ; $6c8f: $97
	add  $58                                         ; $6c90: $c6 $58
	ld   h, [hl]                                     ; $6c92: $66
	ld   a, d                                        ; $6c93: $7a
	xor  c                                           ; $6c94: $a9
	adc  e                                           ; $6c95: $8b
	ld   [hl], l                                     ; $6c96: $75
	and  l                                           ; $6c97: $a5
	ld   h, a                                        ; $6c98: $67
	adc  d                                           ; $6c99: $8a
	ld   a, c                                        ; $6c9a: $79
	and  [hl]                                        ; $6c9b: $a6
	ld   a, c                                        ; $6c9c: $79
	ld   h, a                                        ; $6c9d: $67

Call_0eb_6c9e:
	ld   a, c                                        ; $6c9e: $79
	xor  d                                           ; $6c9f: $aa
	ld   a, d                                        ; $6ca0: $7a
	ld   [hl], l                                     ; $6ca1: $75
	add  [hl]                                        ; $6ca2: $86
	halt                                             ; $6ca3: $76
	sbc  d                                           ; $6ca4: $9a
	adc  b                                           ; $6ca5: $88
	xor  c                                           ; $6ca6: $a9
	ld   c, c                                        ; $6ca7: $49
	ld   [hl], a                                     ; $6ca8: $77
	ld   l, h                                        ; $6ca9: $6c
	or   l                                           ; $6caa: $b5
	cp   c                                           ; $6cab: $b9
	ld   b, a                                        ; $6cac: $47
	and  d                                           ; $6cad: $a2
	sbc  c                                           ; $6cae: $99
	ld   a, e                                        ; $6caf: $7b
	adc  e                                           ; $6cb0: $8b
	ld   l, b                                        ; $6cb1: $68
	ld   h, a                                        ; $6cb2: $67
	sub  l                                           ; $6cb3: $95
	ld   a, b                                        ; $6cb4: $78
	or   a                                           ; $6cb5: $b7
	xor  d                                           ; $6cb6: $aa
	ld   c, d                                        ; $6cb7: $4a
	add  h                                           ; $6cb8: $84
	sub  [hl]                                        ; $6cb9: $96
	ld   a, e                                        ; $6cba: $7b
	and  a                                           ; $6cbb: $a7
	cp   d                                           ; $6cbc: $ba
	ld   c, c                                        ; $6cbd: $49
	ld   [hl], h                                     ; $6cbe: $74
	add  a                                           ; $6cbf: $87
	sbc  b                                           ; $6cc0: $98
	sbc  b                                           ; $6cc1: $98
	ld   a, b                                        ; $6cc2: $78
	ld   h, a                                        ; $6cc3: $67
	add  [hl]                                        ; $6cc4: $86
	sbc  d                                           ; $6cc5: $9a
	sbc  b                                           ; $6cc6: $98
	sbc  c                                           ; $6cc7: $99
	ld   l, c                                        ; $6cc8: $69
	ld   [hl], l                                     ; $6cc9: $75
	sbc  b                                           ; $6cca: $98
	ld   a, e                                        ; $6ccb: $7b
	ld   a, c                                        ; $6ccc: $79
	and  [hl]                                        ; $6ccd: $a6
	ld   a, b                                        ; $6cce: $78
	halt                                             ; $6ccf: $76
	sbc  c                                           ; $6cd0: $99
	xor  d                                           ; $6cd1: $aa
	adc  d                                           ; $6cd2: $8a
	ld   h, a                                        ; $6cd3: $67
	halt                                             ; $6cd4: $76
	halt                                             ; $6cd5: $76
	cp   c                                           ; $6cd6: $b9
	adc  c                                           ; $6cd7: $89
	sub  [hl]                                        ; $6cd8: $96
	ld   a, c                                        ; $6cd9: $79
	ld   e, b                                        ; $6cda: $58
	adc  c                                           ; $6cdb: $89
	xor  c                                           ; $6cdc: $a9
	sub  [hl]                                        ; $6cdd: $96
	add  a                                           ; $6cde: $87
	ld   d, a                                        ; $6cdf: $57
	ld   l, b                                        ; $6ce0: $68
	adc  d                                           ; $6ce1: $8a
	sbc  b                                           ; $6ce2: $98
	sub  a                                           ; $6ce3: $97
	ld   a, b                                        ; $6ce4: $78
	ld   [hl], a                                     ; $6ce5: $77
	ld   a, b                                        ; $6ce6: $78
	xor  d                                           ; $6ce7: $aa
	ld   a, h                                        ; $6ce8: $7c
	ld   [hl], h                                     ; $6ce9: $74
	and  [hl]                                        ; $6cea: $a6
	ld   l, c                                        ; $6ceb: $69
	ld   a, b                                        ; $6cec: $78
	cp   d                                           ; $6ced: $ba
	ld   l, c                                        ; $6cee: $69
	add  l                                           ; $6cef: $85
	and  a                                           ; $6cf0: $a7
	ld   l, c                                        ; $6cf1: $69
	rst  ToBoot                                         ; $6cf2: $c7
	sbc  l                                           ; $6cf3: $9d
	daa                                              ; $6cf4: $27
	sub  e                                           ; $6cf5: $93
	adc  b                                           ; $6cf6: $88
	adc  d                                           ; $6cf7: $8a
	sbc  c                                           ; $6cf8: $99
	or   [hl]                                        ; $6cf9: $b6
	ld   l, d                                        ; $6cfa: $6a
	ld   d, a                                        ; $6cfb: $57
	ld   a, c                                        ; $6cfc: $79
	cp   b                                           ; $6cfd: $b8
	ld   a, d                                        ; $6cfe: $7a
	ld   h, l                                        ; $6cff: $65
	sub  l                                           ; $6d00: $95
	ld   l, b                                        ; $6d01: $68
	sbc  d                                           ; $6d02: $9a
	sbc  b                                           ; $6d03: $98
	or   [hl]                                        ; $6d04: $b6
	ld   l, d                                        ; $6d05: $6a
	ld   h, a                                        ; $6d06: $67
	ld   a, b                                        ; $6d07: $78
	xor  c                                           ; $6d08: $a9
	sub  a                                           ; $6d09: $97
	add  [hl]                                        ; $6d0a: $86
	add  [hl]                                        ; $6d0b: $86
	adc  b                                           ; $6d0c: $88
	ld   a, d                                        ; $6d0d: $7a
	sbc  c                                           ; $6d0e: $99
	and  a                                           ; $6d0f: $a7
	ld   l, c                                        ; $6d10: $69
	ld   d, a                                        ; $6d11: $57
	ld   [hl], a                                     ; $6d12: $77
	xor  d                                           ; $6d13: $aa
	xor  b                                           ; $6d14: $a8
	add  a                                           ; $6d15: $87
	add  a                                           ; $6d16: $87
	ld   l, c                                        ; $6d17: $69
	adc  c                                           ; $6d18: $89
	or   [hl]                                        ; $6d19: $b6
	cp   b                                           ; $6d1a: $b8
	ld   a, [hl-]                                    ; $6d1b: $3a
	ld   h, [hl]                                     ; $6d1c: $66
	ld   l, d                                        ; $6d1d: $6a
	sub  a                                           ; $6d1e: $97
	ret  z                                           ; $6d1f: $c8

	add  a                                           ; $6d20: $87
	add  a                                           ; $6d21: $87
	ld   l, c                                        ; $6d22: $69
	ld   c, d                                        ; $6d23: $4a
	and  [hl]                                        ; $6d24: $a6
	adc  d                                           ; $6d25: $8a
	ld   h, l                                        ; $6d26: $65
	sub  [hl]                                        ; $6d27: $96
	ld   e, c                                        ; $6d28: $59
	sbc  c                                           ; $6d29: $99
	sbc  c                                           ; $6d2a: $99
	and  l                                           ; $6d2b: $a5
	add  a                                           ; $6d2c: $87
	ld   d, a                                        ; $6d2d: $57
	ld   l, c                                        ; $6d2e: $69
	xor  c                                           ; $6d2f: $a9
	sbc  c                                           ; $6d30: $99
	ld   a, b                                        ; $6d31: $78
	sub  l                                           ; $6d32: $95
	add  a                                           ; $6d33: $87
	ld   a, e                                        ; $6d34: $7b
	ld   a, b                                        ; $6d35: $78
	or   [hl]                                        ; $6d36: $b6
	ld   l, c                                        ; $6d37: $69
	ld   [hl], a                                     ; $6d38: $77
	sbc  c                                           ; $6d39: $99
	xor  d                                           ; $6d3a: $aa
	sbc  d                                           ; $6d3b: $9a
	ld   [hl], l                                     ; $6d3c: $75
	sub  [hl]                                        ; $6d3d: $96
	halt                                             ; $6d3e: $76
	ld   a, h                                        ; $6d3f: $7c
	adc  b                                           ; $6d40: $88
	or   a                                           ; $6d41: $b7
	ld   a, b                                        ; $6d42: $78
	halt                                             ; $6d43: $76
	ld   a, b                                        ; $6d44: $78
	xor  c                                           ; $6d45: $a9
	ld   l, e                                        ; $6d46: $6b
	sub  h                                           ; $6d47: $94
	sub  a                                           ; $6d48: $97
	ld   d, a                                        ; $6d49: $57
	sbc  c                                           ; $6d4a: $99
	sbc  d                                           ; $6d4b: $9a
	adc  c                                           ; $6d4c: $89
	ld   [hl], a                                     ; $6d4d: $77
	ld   h, a                                        ; $6d4e: $67
	halt                                             ; $6d4f: $76
	cp   c                                           ; $6d50: $b9
	adc  c                                           ; $6d51: $89
	sub  a                                           ; $6d52: $97
	ld   [hl], a                                     ; $6d53: $77
	ld   h, a                                        ; $6d54: $67
	ld   a, d                                        ; $6d55: $7a
	cp   c                                           ; $6d56: $b9
	sbc  d                                           ; $6d57: $9a
	halt                                             ; $6d58: $76
	sub  [hl]                                        ; $6d59: $96
	ld   h, a                                        ; $6d5a: $67
	adc  d                                           ; $6d5b: $8a
	adc  c                                           ; $6d5c: $89
	sub  [hl]                                        ; $6d5d: $96
	add  a                                           ; $6d5e: $87
	ld   a, c                                        ; $6d5f: $79
	ld   l, c                                        ; $6d60: $69
	ret  z                                           ; $6d61: $c8

	ld   a, h                                        ; $6d62: $7c
	ld   h, l                                        ; $6d63: $65
	or   l                                           ; $6d64: $b5
	ld   e, b                                        ; $6d65: $58
	ld   l, d                                        ; $6d66: $6a
	or   a                                           ; $6d67: $b7
	sbc  d                                           ; $6d68: $9a
	ld   e, b                                        ; $6d69: $58
	sub  a                                           ; $6d6a: $97
	ld   [hl], a                                     ; $6d6b: $77
	xor  c                                           ; $6d6c: $a9
	adc  c                                           ; $6d6d: $89
	halt                                             ; $6d6e: $76
	sub  [hl]                                        ; $6d6f: $96
	ld   [hl], a                                     ; $6d70: $77
	ld   a, c                                        ; $6d71: $79
	xor  c                                           ; $6d72: $a9
	adc  c                                           ; $6d73: $89
	ld   a, b                                        ; $6d74: $78
	ld   [hl], a                                     ; $6d75: $77
	add  l                                           ; $6d76: $85
	xor  c                                           ; $6d77: $a9
	ld   a, d                                        ; $6d78: $7a
	add  l                                           ; $6d79: $85
	sbc  b                                           ; $6d7a: $98
	ld   h, a                                        ; $6d7b: $67
	sbc  c                                           ; $6d7c: $99
	xor  d                                           ; $6d7d: $aa
	ld   a, b                                        ; $6d7e: $78
	ld   [hl], a                                     ; $6d7f: $77
	ld   h, [hl]                                     ; $6d80: $66
	halt                                             ; $6d81: $76
	sbc  d                                           ; $6d82: $9a
	sub  a                                           ; $6d83: $97
	xor  b                                           ; $6d84: $a8
	ld   [hl], a                                     ; $6d85: $77
	ld   a, b                                        ; $6d86: $78
	ld   l, c                                        ; $6d87: $69
	cp   c                                           ; $6d88: $b9
	ld   a, d                                        ; $6d89: $7a
	ld   [hl], l                                     ; $6d8a: $75
	sub  l                                           ; $6d8b: $95
	ld   [hl], a                                     ; $6d8c: $77
	ld   a, e                                        ; $6d8d: $7b
	sub  a                                           ; $6d8e: $97
	xor  b                                           ; $6d8f: $a8
	ld   e, c                                        ; $6d90: $59
	halt                                             ; $6d91: $76
	adc  b                                           ; $6d92: $88
	or   [hl]                                        ; $6d93: $b6
	sbc  d                                           ; $6d94: $9a
	ld   h, a                                        ; $6d95: $67
	sub  a                                           ; $6d96: $97
	ld   l, d                                        ; $6d97: $6a
	adc  d                                           ; $6d98: $8a
	and  a                                           ; $6d99: $a7
	or   [hl]                                        ; $6d9a: $b6
	ld   a, b                                        ; $6d9b: $78
	ld   h, a                                        ; $6d9c: $67
	ld   l, c                                        ; $6d9d: $69
	xor  c                                           ; $6d9e: $a9
	adc  d                                           ; $6d9f: $8a
	ld   h, a                                        ; $6da0: $67
	sub  [hl]                                        ; $6da1: $96
	add  [hl]                                        ; $6da2: $86
	cp   d                                           ; $6da3: $ba
	ld   e, d                                        ; $6da4: $5a
	sub  e                                           ; $6da5: $93
	sbc  b                                           ; $6da6: $98
	ld   c, c                                        ; $6da7: $49
	ld   a, c                                        ; $6da8: $79
	rst  ToBoot                                         ; $6da9: $c7
	sbc  e                                           ; $6daa: $9b
	ld   e, c                                        ; $6dab: $59
	sub  l                                           ; $6dac: $95
	add  [hl]                                        ; $6dad: $86
	sbc  c                                           ; $6dae: $99
	sbc  b                                           ; $6daf: $98
	sbc  b                                           ; $6db0: $98
	ld   l, c                                        ; $6db1: $69
	ld   [hl], a                                     ; $6db2: $77
	adc  b                                           ; $6db3: $88
	jp   z, $856a                                    ; $6db4: $ca $6a $85

	add  a                                           ; $6db7: $87
	ld   h, [hl]                                     ; $6db8: $66
	sbc  d                                           ; $6db9: $9a
	adc  b                                           ; $6dba: $88
	cp   b                                           ; $6dbb: $b8
	ld   e, d                                        ; $6dbc: $5a
	ld   h, a                                        ; $6dbd: $67
	add  [hl]                                        ; $6dbe: $86
	jp   z, $9678                                    ; $6dbf: $ca $78 $96

	ld   a, b                                        ; $6dc2: $78
	ld   d, a                                        ; $6dc3: $57
	ld   a, d                                        ; $6dc4: $7a
	and  [hl]                                        ; $6dc5: $a6
	xor  c                                           ; $6dc6: $a9
	ld   l, b                                        ; $6dc7: $68
	add  [hl]                                        ; $6dc8: $86
	ld   [hl], a                                     ; $6dc9: $77
	adc  c                                           ; $6dca: $89
	ld   a, c                                        ; $6dcb: $79
	sub  [hl]                                        ; $6dcc: $96
	adc  b                                           ; $6dcd: $88
	ld   l, b                                        ; $6dce: $68
	adc  d                                           ; $6dcf: $8a
	or   a                                           ; $6dd0: $b7
	sbc  c                                           ; $6dd1: $99
	ld   c, d                                        ; $6dd2: $4a
	ld   [hl], l                                     ; $6dd3: $75
	add  [hl]                                        ; $6dd4: $86
	adc  d                                           ; $6dd5: $8a
	sub  a                                           ; $6dd6: $97
	and  a                                           ; $6dd7: $a7
	ld   a, c                                        ; $6dd8: $79
	ld   [hl], a                                     ; $6dd9: $77
	ld   l, d                                        ; $6dda: $6a
	sub  a                                           ; $6ddb: $97
	sbc  c                                           ; $6ddc: $99
	ld   e, b                                        ; $6ddd: $58
	and  e                                           ; $6dde: $a3
	sbc  b                                           ; $6ddf: $98
	ld   a, e                                        ; $6de0: $7b
	sbc  b                                           ; $6de1: $98
	sub  a                                           ; $6de2: $97
	ld   a, b                                        ; $6de3: $78
	ld   d, a                                        ; $6de4: $57
	ld   [hl], l                                     ; $6de5: $75
	xor  d                                           ; $6de6: $aa
	ld   l, d                                        ; $6de7: $6a
	and  a                                           ; $6de8: $a7
	adc  c                                           ; $6de9: $89
	ld   [hl], a                                     ; $6dea: $77
	ld   a, c                                        ; $6deb: $79
	or   [hl]                                        ; $6dec: $b6
	sbc  d                                           ; $6ded: $9a
	ld   e, b                                        ; $6dee: $58
	add  a                                           ; $6def: $87
	ld   h, a                                        ; $6df0: $67
	xor  h                                           ; $6df1: $ac
	ld   l, d                                        ; $6df2: $6a
	call nz, Call_0eb_468a                           ; $6df3: $c4 $8a $46
	sub  a                                           ; $6df6: $97
	sbc  b                                           ; $6df7: $98
	sbc  d                                           ; $6df8: $9a
	ld   [hl], a                                     ; $6df9: $77
	adc  b                                           ; $6dfa: $88
	ld   h, a                                        ; $6dfb: $67
	adc  d                                           ; $6dfc: $8a
	sbc  c                                           ; $6dfd: $99
	and  [hl]                                        ; $6dfe: $a6
	sub  a                                           ; $6dff: $97
	ld   e, b                                        ; $6e00: $58
	ld   h, [hl]                                     ; $6e01: $66
	cp   d                                           ; $6e02: $ba
	ld   e, e                                        ; $6e03: $5b
	and  l                                           ; $6e04: $a5
	sbc  b                                           ; $6e05: $98
	ld   h, a                                        ; $6e06: $67
	adc  d                                           ; $6e07: $8a
	add  [hl]                                        ; $6e08: $86
	xor  b                                           ; $6e09: $a8
	ld   e, c                                        ; $6e0a: $59
	halt                                             ; $6e0b: $76
	ld   [hl], a                                     ; $6e0c: $77
	sbc  d                                           ; $6e0d: $9a
	adc  d                                           ; $6e0e: $8a
	ld   [hl], a                                     ; $6e0f: $77
	sub  l                                           ; $6e10: $95
	add  a                                           ; $6e11: $87
	ld   e, c                                        ; $6e12: $59
	and  [hl]                                        ; $6e13: $a6
	adc  e                                           ; $6e14: $8b
	ld   e, c                                        ; $6e15: $59
	sub  l                                           ; $6e16: $95
	sub  a                                           ; $6e17: $97
	adc  d                                           ; $6e18: $8a
	adc  b                                           ; $6e19: $88
	sub  [hl]                                        ; $6e1a: $96
	ld   a, b                                        ; $6e1b: $78
	ld   e, b                                        ; $6e1c: $58
	ld   h, a                                        ; $6e1d: $67
	cp   c                                           ; $6e1e: $b9
	sbc  d                                           ; $6e1f: $9a
	ld   a, b                                        ; $6e20: $78
	sub  a                                           ; $6e21: $97
	ld   [hl], a                                     ; $6e22: $77
	ld   a, d                                        ; $6e23: $7a
	sub  [hl]                                        ; $6e24: $96
	or   a                                           ; $6e25: $b7
	ld   e, c                                        ; $6e26: $59
	ld   h, a                                        ; $6e27: $67
	add  a                                           ; $6e28: $87
	adc  h                                           ; $6e29: $8c
	and  [hl]                                        ; $6e2a: $a6
	cp   b                                           ; $6e2b: $b8
	ld   l, c                                        ; $6e2c: $69
	halt                                             ; $6e2d: $76
	ld   l, c                                        ; $6e2e: $69
	and  [hl]                                        ; $6e2f: $a6
	adc  e                                           ; $6e30: $8b
	ld   h, a                                        ; $6e31: $67
	and  a                                           ; $6e32: $a7
	ld   l, b                                        ; $6e33: $68
	sbc  c                                           ; $6e34: $99
	sub  a                                           ; $6e35: $97
	sub  a                                           ; $6e36: $97
	ld   a, b                                        ; $6e37: $78
	ld   h, a                                        ; $6e38: $67
	ld   h, a                                        ; $6e39: $67
	xor  c                                           ; $6e3a: $a9
	adc  d                                           ; $6e3b: $8a
	add  a                                           ; $6e3c: $87
	sub  a                                           ; $6e3d: $97
	halt                                             ; $6e3e: $76
	ld   a, c                                        ; $6e3f: $79
	sub  [hl]                                        ; $6e40: $96
	and  a                                           ; $6e41: $a7
	ld   l, d                                        ; $6e42: $6a
	ld   h, a                                        ; $6e43: $67
	add  a                                           ; $6e44: $87
	xor  e                                           ; $6e45: $ab
	adc  b                                           ; $6e46: $88
	sub  [hl]                                        ; $6e47: $96
	add  a                                           ; $6e48: $87
	ld   h, [hl]                                     ; $6e49: $66
	ld   l, b                                        ; $6e4a: $68
	xor  b                                           ; $6e4b: $a8
	sbc  d                                           ; $6e4c: $9a
	ld   l, c                                        ; $6e4d: $69
	sub  [hl]                                        ; $6e4e: $96
	adc  b                                           ; $6e4f: $88
	ld   l, d                                        ; $6e50: $6a
	and  [hl]                                        ; $6e51: $a6
	sbc  b                                           ; $6e52: $98
	ld   l, c                                        ; $6e53: $69
	ld   h, a                                        ; $6e54: $67
	add  [hl]                                        ; $6e55: $86
	xor  d                                           ; $6e56: $aa
	ld   a, d                                        ; $6e57: $7a
	add  [hl]                                        ; $6e58: $86
	sub  [hl]                                        ; $6e59: $96
	ld   h, a                                        ; $6e5a: $67
	ld   [hl], a                                     ; $6e5b: $77
	cp   b                                           ; $6e5c: $b8
	ld   a, e                                        ; $6e5d: $7b
	ld   l, b                                        ; $6e5e: $68
	sub  a                                           ; $6e5f: $97
	add  [hl]                                        ; $6e60: $86
	sbc  e                                           ; $6e61: $9b
	halt                                             ; $6e62: $76
	push bc                                          ; $6e63: $c5
	ld   l, d                                        ; $6e64: $6a
	ld   d, a                                        ; $6e65: $57
	ld   a, b                                        ; $6e66: $78
	sbc  d                                           ; $6e67: $9a
	sbc  d                                           ; $6e68: $9a
	and  [hl]                                        ; $6e69: $a6
	sub  a                                           ; $6e6a: $97
	ld   [hl], a                                     ; $6e6b: $77
	ld   l, d                                        ; $6e6c: $6a
	sub  a                                           ; $6e6d: $97
	adc  b                                           ; $6e6e: $88
	ld   l, c                                        ; $6e6f: $69
	ld   [hl], a                                     ; $6e70: $77
	add  a                                           ; $6e71: $87
	xor  e                                           ; $6e72: $ab
	ld   a, d                                        ; $6e73: $7a
	sub  l                                           ; $6e74: $95
	add  a                                           ; $6e75: $87
	ld   d, a                                        ; $6e76: $57
	ld   [hl], a                                     ; $6e77: $77
	xor  d                                           ; $6e78: $aa
	sbc  c                                           ; $6e79: $99
	adc  b                                           ; $6e7a: $88
	sub  a                                           ; $6e7b: $97
	add  [hl]                                        ; $6e7c: $86
	ld   a, d                                        ; $6e7d: $7a
	sub  a                                           ; $6e7e: $97
	sbc  b                                           ; $6e7f: $98
	ld   l, c                                        ; $6e80: $69
	halt                                             ; $6e81: $76
	add  a                                           ; $6e82: $87
	sbc  e                                           ; $6e83: $9b
	ld   a, c                                        ; $6e84: $79
	and  [hl]                                        ; $6e85: $a6
	add  a                                           ; $6e86: $87
	ld   h, [hl]                                     ; $6e87: $66
	ld   l, b                                        ; $6e88: $68
	xor  c                                           ; $6e89: $a9
	ld   a, e                                        ; $6e8a: $7b
	sub  [hl]                                        ; $6e8b: $96
	and  a                                           ; $6e8c: $a7
	ld   l, b                                        ; $6e8d: $68
	ld   a, c                                        ; $6e8e: $79
	and  a                                           ; $6e8f: $a7
	adc  d                                           ; $6e90: $8a
	ld   h, a                                        ; $6e91: $67
	sub  [hl]                                        ; $6e92: $96
	ld   [hl], a                                     ; $6e93: $77
	adc  d                                           ; $6e94: $8a
	adc  b                                           ; $6e95: $88
	or   [hl]                                        ; $6e96: $b6
	sbc  c                                           ; $6e97: $99
	ld   h, a                                        ; $6e98: $67
	halt                                             ; $6e99: $76
	sbc  d                                           ; $6e9a: $9a
	ld   l, d                                        ; $6e9b: $6a
	sub  l                                           ; $6e9c: $95
	and  a                                           ; $6e9d: $a7
	ld   [hl], a                                     ; $6e9e: $77
	ld   a, b                                        ; $6e9f: $78
	xor  d                                           ; $6ea0: $aa
	adc  d                                           ; $6ea1: $8a
	ld   l, b                                        ; $6ea2: $68
	add  [hl]                                        ; $6ea3: $86
	add  [hl]                                        ; $6ea4: $86
	ld   a, d                                        ; $6ea5: $7a
	and  a                                           ; $6ea6: $a7
	cp   c                                           ; $6ea7: $b9
	ld   l, d                                        ; $6ea8: $6a
	ld   [hl], a                                     ; $6ea9: $77
	ld   [hl], a                                     ; $6eaa: $77
	ld   a, b                                        ; $6eab: $78
	and  a                                           ; $6eac: $a7
	sbc  c                                           ; $6ead: $99
	ld   [hl], a                                     ; $6eae: $77
	add  a                                           ; $6eaf: $87
	ld   l, b                                        ; $6eb0: $68
	cp   d                                           ; $6eb1: $ba
	ld   a, c                                        ; $6eb2: $79
	add  l                                           ; $6eb3: $85
	sub  a                                           ; $6eb4: $97
	ld   d, a                                        ; $6eb5: $57
	ld   [hl], a                                     ; $6eb6: $77
	xor  c                                           ; $6eb7: $a9
	ld   a, d                                        ; $6eb8: $7a
	adc  b                                           ; $6eb9: $88
	sub  a                                           ; $6eba: $97
	add  a                                           ; $6ebb: $87
	ld   l, c                                        ; $6ebc: $69
	and  [hl]                                        ; $6ebd: $a6
	sbc  c                                           ; $6ebe: $99
	ld   l, d                                        ; $6ebf: $6a
	ld   [hl], a                                     ; $6ec0: $77
	sub  [hl]                                        ; $6ec1: $96
	adc  d                                           ; $6ec2: $8a
	sub  a                                           ; $6ec3: $97
	cp   b                                           ; $6ec4: $b8
	ld   a, c                                        ; $6ec5: $79
	ld   [hl], a                                     ; $6ec6: $77
	ld   [hl], a                                     ; $6ec7: $77
	ld   a, e                                        ; $6ec8: $7b
	add  a                                           ; $6ec9: $87
	and  a                                           ; $6eca: $a7
	adc  b                                           ; $6ecb: $88
	ld   [hl], a                                     ; $6ecc: $77
	ld   h, a                                        ; $6ecd: $67
	xor  c                                           ; $6ece: $a9
	ld   a, d                                        ; $6ecf: $7a
	add  [hl]                                        ; $6ed0: $86
	and  a                                           ; $6ed1: $a7
	ld   [hl], a                                     ; $6ed2: $77
	ld   a, b                                        ; $6ed3: $78
	xor  b                                           ; $6ed4: $a8
	ld   a, e                                        ; $6ed5: $7b
	ld   [hl], a                                     ; $6ed6: $77
	sub  a                                           ; $6ed7: $97
	ld   [hl], a                                     ; $6ed8: $77
	ld   a, c                                        ; $6ed9: $79
	and  [hl]                                        ; $6eda: $a6
	adc  d                                           ; $6edb: $8a
	ld   l, b                                        ; $6edc: $68
	sub  [hl]                                        ; $6edd: $96
	ld   [hl], a                                     ; $6ede: $77
	ld   a, c                                        ; $6edf: $79
	and  a                                           ; $6ee0: $a7
	sbc  b                                           ; $6ee1: $98
	ld   a, c                                        ; $6ee2: $79
	ld   h, a                                        ; $6ee3: $67
	add  [hl]                                        ; $6ee4: $86
	ld   a, d                                        ; $6ee5: $7a
	sbc  b                                           ; $6ee6: $98
	and  a                                           ; $6ee7: $a7
	adc  d                                           ; $6ee8: $8a
	ld   l, b                                        ; $6ee9: $68
	ld   [hl], l                                     ; $6eea: $75
	ld   a, d                                        ; $6eeb: $7a
	ld   [hl], a                                     ; $6eec: $77
	cp   b                                           ; $6eed: $b8
	ld   a, c                                        ; $6eee: $79
	add  a                                           ; $6eef: $87
	ld   [hl], a                                     ; $6ef0: $77
	adc  d                                           ; $6ef1: $8a
	adc  c                                           ; $6ef2: $89
	and  [hl]                                        ; $6ef3: $a6
	adc  b                                           ; $6ef4: $88
	ld   h, a                                        ; $6ef5: $67
	ld   h, [hl]                                     ; $6ef6: $66
	sbc  d                                           ; $6ef7: $9a
	sbc  c                                           ; $6ef8: $99
	sub  a                                           ; $6ef9: $97
	sbc  b                                           ; $6efa: $98
	ld   h, a                                        ; $6efb: $67
	halt                                             ; $6efc: $76
	adc  d                                           ; $6efd: $8a
	ld   a, c                                        ; $6efe: $79
	sub  a                                           ; $6eff: $97
	sub  a                                           ; $6f00: $97
	ld   a, b                                        ; $6f01: $78
	ld   h, a                                        ; $6f02: $67
	sbc  c                                           ; $6f03: $99
	adc  d                                           ; $6f04: $8a
	adc  b                                           ; $6f05: $88
	sub  [hl]                                        ; $6f06: $96
	ld   [hl], a                                     ; $6f07: $77
	ld   h, a                                        ; $6f08: $67
	xor  c                                           ; $6f09: $a9
	ld   a, d                                        ; $6f0a: $7a
	add  [hl]                                        ; $6f0b: $86
	xor  b                                           ; $6f0c: $a8
	ld   h, a                                        ; $6f0d: $67
	ld   [hl], a                                     ; $6f0e: $77
	cp   c                                           ; $6f0f: $b9
	ld   a, e                                        ; $6f10: $7b
	ld   [hl], a                                     ; $6f11: $77
	sub  [hl]                                        ; $6f12: $96
	ld   h, a                                        ; $6f13: $67
	ld   h, a                                        ; $6f14: $67
	xor  c                                           ; $6f15: $a9
	adc  d                                           ; $6f16: $8a
	sbc  b                                           ; $6f17: $98
	sub  a                                           ; $6f18: $97
	ld   [hl], a                                     ; $6f19: $77
	ld   h, [hl]                                     ; $6f1a: $66
	xor  c                                           ; $6f1b: $a9
	ld   a, d                                        ; $6f1c: $7a
	sub  a                                           ; $6f1d: $97
	sbc  b                                           ; $6f1e: $98
	ld   a, b                                        ; $6f1f: $78
	halt                                             ; $6f20: $76
	sbc  d                                           ; $6f21: $9a
	ld   a, c                                        ; $6f22: $79
	add  [hl]                                        ; $6f23: $86
	sbc  b                                           ; $6f24: $98
	ld   h, a                                        ; $6f25: $67
	add  [hl]                                        ; $6f26: $86
	sbc  e                                           ; $6f27: $9b
	adc  d                                           ; $6f28: $8a
	sub  a                                           ; $6f29: $97
	adc  b                                           ; $6f2a: $88
	ld   h, a                                        ; $6f2b: $67
	ld   [hl], l                                     ; $6f2c: $75
	adc  d                                           ; $6f2d: $8a
	adc  b                                           ; $6f2e: $88
	cp   b                                           ; $6f2f: $b8
	ld   a, c                                        ; $6f30: $79
	add  [hl]                                        ; $6f31: $86
	ld   [hl], a                                     ; $6f32: $77
	ld   l, d                                        ; $6f33: $6a
	adc  c                                           ; $6f34: $89
	sbc  b                                           ; $6f35: $98
	adc  c                                           ; $6f36: $89
	add  [hl]                                        ; $6f37: $86
	add  a                                           ; $6f38: $87
	ld   l, c                                        ; $6f39: $69
	xor  b                                           ; $6f3a: $a8
	sbc  d                                           ; $6f3b: $9a
	ld   a, b                                        ; $6f3c: $78
	add  [hl]                                        ; $6f3d: $86
	ld   [hl], a                                     ; $6f3e: $77
	ld   h, a                                        ; $6f3f: $67
	xor  c                                           ; $6f40: $a9
	ld   a, d                                        ; $6f41: $7a
	add  a                                           ; $6f42: $87
	and  a                                           ; $6f43: $a7
	ld   [hl], a                                     ; $6f44: $77
	ld   [hl], a                                     ; $6f45: $77
	sbc  d                                           ; $6f46: $9a
	adc  c                                           ; $6f47: $89
	sbc  b                                           ; $6f48: $98
	adc  b                                           ; $6f49: $88
	ld   [hl], a                                     ; $6f4a: $77
	add  [hl]                                        ; $6f4b: $86
	sbc  d                                           ; $6f4c: $9a
	adc  c                                           ; $6f4d: $89
	sub  a                                           ; $6f4e: $97
	sbc  c                                           ; $6f4f: $99
	ld   [hl], a                                     ; $6f50: $77
	halt                                             ; $6f51: $76
	ld   a, b                                        ; $6f52: $78
	sbc  b                                           ; $6f53: $98
	adc  c                                           ; $6f54: $89
	adc  b                                           ; $6f55: $88
	add  a                                           ; $6f56: $87
	ld   [hl], a                                     ; $6f57: $77
	ld   [hl], a                                     ; $6f58: $77
	sbc  c                                           ; $6f59: $99
	adc  c                                           ; $6f5a: $89
	adc  c                                           ; $6f5b: $89
	adc  b                                           ; $6f5c: $88
	add  a                                           ; $6f5d: $87
	ld   [hl], a                                     ; $6f5e: $77
	ld   a, d                                        ; $6f5f: $7a
	adc  b                                           ; $6f60: $88
	sbc  b                                           ; $6f61: $98
	ld   a, c                                        ; $6f62: $79
	ld   [hl], a                                     ; $6f63: $77
	add  a                                           ; $6f64: $87
	ld   a, c                                        ; $6f65: $79
	sbc  b                                           ; $6f66: $98
	sbc  c                                           ; $6f67: $99
	adc  b                                           ; $6f68: $88
	add  a                                           ; $6f69: $87
	ld   [hl], a                                     ; $6f6a: $77
	halt                                             ; $6f6b: $76
	adc  d                                           ; $6f6c: $8a
	adc  b                                           ; $6f6d: $88
	xor  b                                           ; $6f6e: $a8
	adc  d                                           ; $6f6f: $8a
	ld   [hl], a                                     ; $6f70: $77
	sub  [hl]                                        ; $6f71: $96
	ld   a, c                                        ; $6f72: $79
	adc  b                                           ; $6f73: $88
	adc  c                                           ; $6f74: $89
	ld   a, b                                        ; $6f75: $78
	add  a                                           ; $6f76: $87
	ld   a, b                                        ; $6f77: $78
	ld   h, a                                        ; $6f78: $67
	adc  c                                           ; $6f79: $89
	adc  c                                           ; $6f7a: $89
	xor  c                                           ; $6f7b: $a9
	adc  b                                           ; $6f7c: $88
	ld   [hl], a                                     ; $6f7d: $77
	halt                                             ; $6f7e: $76
	ld   l, b                                        ; $6f7f: $68
	adc  c                                           ; $6f80: $89
	sbc  d                                           ; $6f81: $9a
	sbc  b                                           ; $6f82: $98
	sub  a                                           ; $6f83: $97
	ld   a, b                                        ; $6f84: $78
	ld   [hl], a                                     ; $6f85: $77
	adc  c                                           ; $6f86: $89
	adc  c                                           ; $6f87: $89
	sbc  c                                           ; $6f88: $99
	adc  b                                           ; $6f89: $88
	add  [hl]                                        ; $6f8a: $86
	ld   [hl], a                                     ; $6f8b: $77
	ld   h, a                                        ; $6f8c: $67
	adc  b                                           ; $6f8d: $88
	adc  c                                           ; $6f8e: $89
	xor  c                                           ; $6f8f: $a9
	sbc  b                                           ; $6f90: $98
	ld   [hl], a                                     ; $6f91: $77
	ld   [hl], a                                     ; $6f92: $77
	ld   l, b                                        ; $6f93: $68
	adc  c                                           ; $6f94: $89
	adc  c                                           ; $6f95: $89
	sbc  c                                           ; $6f96: $99
	adc  b                                           ; $6f97: $88
	ld   [hl], a                                     ; $6f98: $77
	add  a                                           ; $6f99: $87
	ld   a, b                                        ; $6f9a: $78
	adc  c                                           ; $6f9b: $89
	adc  c                                           ; $6f9c: $89
	adc  b                                           ; $6f9d: $88
	sbc  b                                           ; $6f9e: $98
	ld   a, b                                        ; $6f9f: $78
	halt                                             ; $6fa0: $76
	adc  b                                           ; $6fa1: $88
	sbc  b                                           ; $6fa2: $98
	sbc  c                                           ; $6fa3: $99
	adc  b                                           ; $6fa4: $88
	add  a                                           ; $6fa5: $87
	ld   [hl], a                                     ; $6fa6: $77
	ld   [hl], a                                     ; $6fa7: $77
	adc  c                                           ; $6fa8: $89
	adc  b                                           ; $6fa9: $88
	sbc  c                                           ; $6faa: $99
	sbc  c                                           ; $6fab: $99
	add  a                                           ; $6fac: $87
	ld   [hl], a                                     ; $6fad: $77
	ld   h, a                                        ; $6fae: $67
	adc  c                                           ; $6faf: $89
	adc  b                                           ; $6fb0: $88
	sbc  b                                           ; $6fb1: $98
	adc  b                                           ; $6fb2: $88
	add  a                                           ; $6fb3: $87
	ld   [hl], a                                     ; $6fb4: $77
	ld   [hl], a                                     ; $6fb5: $77
	sbc  c                                           ; $6fb6: $99
	adc  c                                           ; $6fb7: $89
	sbc  c                                           ; $6fb8: $99
	sbc  c                                           ; $6fb9: $99
	add  a                                           ; $6fba: $87
	ld   [hl], a                                     ; $6fbb: $77
	ld   [hl], a                                     ; $6fbc: $77
	adc  b                                           ; $6fbd: $88
	adc  c                                           ; $6fbe: $89
	sbc  b                                           ; $6fbf: $98
	adc  b                                           ; $6fc0: $88
	add  a                                           ; $6fc1: $87
	ld   [hl], a                                     ; $6fc2: $77
	ld   [hl], a                                     ; $6fc3: $77
	ld   a, b                                        ; $6fc4: $78
	sbc  b                                           ; $6fc5: $98
	sbc  c                                           ; $6fc6: $99
	sbc  c                                           ; $6fc7: $99
	sbc  b                                           ; $6fc8: $98
	ld   [hl], a                                     ; $6fc9: $77
	ld   [hl], a                                     ; $6fca: $77
	ld   a, b                                        ; $6fcb: $78
	adc  c                                           ; $6fcc: $89
	adc  b                                           ; $6fcd: $88
	adc  b                                           ; $6fce: $88
	sbc  b                                           ; $6fcf: $98
	ld   [hl], a                                     ; $6fd0: $77
	ld   [hl], a                                     ; $6fd1: $77
	ld   a, b                                        ; $6fd2: $78
	adc  b                                           ; $6fd3: $88
	adc  b                                           ; $6fd4: $88
	adc  b                                           ; $6fd5: $88
	sbc  b                                           ; $6fd6: $98
	add  a                                           ; $6fd7: $87
	ld   [hl], a                                     ; $6fd8: $77
	ld   [hl], a                                     ; $6fd9: $77
	adc  b                                           ; $6fda: $88
	sbc  b                                           ; $6fdb: $98
	adc  c                                           ; $6fdc: $89
	adc  c                                           ; $6fdd: $89
	adc  b                                           ; $6fde: $88
	ld   [hl], a                                     ; $6fdf: $77
	add  a                                           ; $6fe0: $87
	ld   a, b                                        ; $6fe1: $78
	adc  c                                           ; $6fe2: $89
	adc  c                                           ; $6fe3: $89
	sbc  c                                           ; $6fe4: $99
	adc  b                                           ; $6fe5: $88
	add  a                                           ; $6fe6: $87
	adc  b                                           ; $6fe7: $88
	ld   [hl], a                                     ; $6fe8: $77
	adc  b                                           ; $6fe9: $88
	sbc  c                                           ; $6fea: $99
	sbc  b                                           ; $6feb: $98
	sbc  c                                           ; $6fec: $99
	sbc  b                                           ; $6fed: $98
	add  a                                           ; $6fee: $87
	add  a                                           ; $6fef: $87
	ld   [hl], a                                     ; $6ff0: $77
	adc  b                                           ; $6ff1: $88
	sbc  b                                           ; $6ff2: $98
	adc  b                                           ; $6ff3: $88
	adc  c                                           ; $6ff4: $89
	adc  b                                           ; $6ff5: $88
	ld   [hl], a                                     ; $6ff6: $77
	ld   [hl], a                                     ; $6ff7: $77
	ld   [hl], a                                     ; $6ff8: $77
	adc  b                                           ; $6ff9: $88
	sbc  b                                           ; $6ffa: $98
	adc  b                                           ; $6ffb: $88
	sbc  b                                           ; $6ffc: $98
	add  a                                           ; $6ffd: $87
	ld   [hl], a                                     ; $6ffe: $77
	ld   [hl], a                                     ; $6fff: $77
	ld   a, b                                        ; $7000: $78
	adc  c                                           ; $7001: $89
	adc  c                                           ; $7002: $89
	sbc  b                                           ; $7003: $98
	sbc  b                                           ; $7004: $98
	adc  b                                           ; $7005: $88
	ld   [hl], a                                     ; $7006: $77
	add  a                                           ; $7007: $87
	ld   a, b                                        ; $7008: $78
	adc  b                                           ; $7009: $88
	adc  c                                           ; $700a: $89
	sbc  c                                           ; $700b: $99
	sbc  b                                           ; $700c: $98
	adc  b                                           ; $700d: $88
	adc  b                                           ; $700e: $88
	adc  b                                           ; $700f: $88
	ld   [hl], a                                     ; $7010: $77
	adc  b                                           ; $7011: $88
	adc  c                                           ; $7012: $89
	sbc  c                                           ; $7013: $99
	sbc  c                                           ; $7014: $99
	adc  b                                           ; $7015: $88
	adc  b                                           ; $7016: $88
	ld   a, b                                        ; $7017: $78
	ld   [hl], a                                     ; $7018: $77
	ld   a, b                                        ; $7019: $78
	adc  b                                           ; $701a: $88
	sbc  c                                           ; $701b: $99
	sbc  c                                           ; $701c: $99
	adc  b                                           ; $701d: $88
	adc  b                                           ; $701e: $88
	adc  b                                           ; $701f: $88
	ld   a, b                                        ; $7020: $78
	adc  b                                           ; $7021: $88
	adc  b                                           ; $7022: $88
	adc  c                                           ; $7023: $89
	sbc  c                                           ; $7024: $99
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

Call_0eb_711f:
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

Jump_0eb_725a:
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

Call_0eb_736d:
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
	adc  c                                           ; $7380: $89
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
	adc  c                                           ; $73d7: $89
	adc  b                                           ; $73d8: $88
	adc  b                                           ; $73d9: $88
	adc  b                                           ; $73da: $88
	adc  b                                           ; $73db: $88
	adc  b                                           ; $73dc: $88
	adc  c                                           ; $73dd: $89
	ld   a, b                                        ; $73de: $78
	sbc  b                                           ; $73df: $98
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
	sbc  b                                           ; $73ed: $98
	adc  b                                           ; $73ee: $88
	ld   a, b                                        ; $73ef: $78
	adc  b                                           ; $73f0: $88
	adc  b                                           ; $73f1: $88
	adc  b                                           ; $73f2: $88
	adc  b                                           ; $73f3: $88
	add  a                                           ; $73f4: $87
	adc  b                                           ; $73f5: $88
	ld   a, c                                        ; $73f6: $79
	adc  b                                           ; $73f7: $88
	adc  b                                           ; $73f8: $88
	adc  b                                           ; $73f9: $88
	adc  b                                           ; $73fa: $88
	adc  b                                           ; $73fb: $88
	adc  b                                           ; $73fc: $88
	sub  a                                           ; $73fd: $97
	adc  b                                           ; $73fe: $88
	adc  c                                           ; $73ff: $89
	adc  b                                           ; $7400: $88
	adc  b                                           ; $7401: $88
	adc  b                                           ; $7402: $88
	adc  b                                           ; $7403: $88
	sbc  b                                           ; $7404: $98
	adc  b                                           ; $7405: $88
	sub  a                                           ; $7406: $97
	adc  b                                           ; $7407: $88
	adc  b                                           ; $7408: $88
	adc  b                                           ; $7409: $88
	adc  b                                           ; $740a: $88
	ld   a, b                                        ; $740b: $78
	adc  b                                           ; $740c: $88
	adc  b                                           ; $740d: $88
	adc  b                                           ; $740e: $88
	add  a                                           ; $740f: $87
	adc  b                                           ; $7410: $88
	adc  b                                           ; $7411: $88
	sub  a                                           ; $7412: $97
	adc  c                                           ; $7413: $89
	ld   a, b                                        ; $7414: $78
	adc  b                                           ; $7415: $88
	adc  b                                           ; $7416: $88
	adc  b                                           ; $7417: $88
	adc  b                                           ; $7418: $88
	adc  b                                           ; $7419: $88
	adc  b                                           ; $741a: $88
	adc  b                                           ; $741b: $88
	adc  b                                           ; $741c: $88
	sub  a                                           ; $741d: $97
	adc  b                                           ; $741e: $88
	adc  b                                           ; $741f: $88
	adc  b                                           ; $7420: $88
	adc  c                                           ; $7421: $89
	ld   a, b                                        ; $7422: $78
	sub  a                                           ; $7423: $97
	adc  c                                           ; $7424: $89
	adc  b                                           ; $7425: $88
	sbc  b                                           ; $7426: $98
	adc  b                                           ; $7427: $88
	adc  b                                           ; $7428: $88
	adc  c                                           ; $7429: $89
	adc  b                                           ; $742a: $88
	adc  b                                           ; $742b: $88
	adc  b                                           ; $742c: $88
	adc  b                                           ; $742d: $88
	ld   a, c                                        ; $742e: $79
	adc  b                                           ; $742f: $88
	sbc  b                                           ; $7430: $98
	adc  b                                           ; $7431: $88
	sbc  b                                           ; $7432: $98
	adc  b                                           ; $7433: $88
	adc  b                                           ; $7434: $88
	adc  b                                           ; $7435: $88
	ld   [hl], a                                     ; $7436: $77
	add  a                                           ; $7437: $87
	adc  c                                           ; $7438: $89
	adc  b                                           ; $7439: $88
	adc  b                                           ; $743a: $88
	adc  c                                           ; $743b: $89
	sbc  b                                           ; $743c: $98
	adc  b                                           ; $743d: $88
	add  a                                           ; $743e: $87
	add  a                                           ; $743f: $87
	ld   [hl], a                                     ; $7440: $77
	ld   [hl], a                                     ; $7441: $77
	adc  c                                           ; $7442: $89
	adc  b                                           ; $7443: $88
	sbc  c                                           ; $7444: $99
	sbc  c                                           ; $7445: $99
	adc  b                                           ; $7446: $88
	adc  b                                           ; $7447: $88
	ld   [hl], a                                     ; $7448: $77
	ld   [hl], a                                     ; $7449: $77
	ld   a, b                                        ; $744a: $78
	ld   a, b                                        ; $744b: $78
	sbc  b                                           ; $744c: $98
	sbc  c                                           ; $744d: $99
	sbc  b                                           ; $744e: $98
	xor  b                                           ; $744f: $a8
	adc  c                                           ; $7450: $89
	add  a                                           ; $7451: $87
	add  a                                           ; $7452: $87
	ld   l, b                                        ; $7453: $68
	ld   h, a                                        ; $7454: $67
	sbc  b                                           ; $7455: $98
	adc  d                                           ; $7456: $8a
	sbc  b                                           ; $7457: $98
	cp   b                                           ; $7458: $b8
	ld   a, d                                        ; $7459: $7a
	sub  [hl]                                        ; $745a: $96
	and  a                                           ; $745b: $a7
	ld   c, b                                        ; $745c: $48
	ld   h, l                                        ; $745d: $65
	adc  c                                           ; $745e: $89
	ld   l, d                                        ; $745f: $6a
	and  a                                           ; $7460: $a7
	xor  e                                           ; $7461: $ab
	ld   a, c                                        ; $7462: $79
	sbc  c                                           ; $7463: $99
	ld   [hl], a                                     ; $7464: $77
	sub  h                                           ; $7465: $94
	ld   a, b                                        ; $7466: $78
	ld   b, a                                        ; $7467: $47
	add  [hl]                                        ; $7468: $86
	ld   a, c                                        ; $7469: $79
	sbc  b                                           ; $746a: $98
	xor  c                                           ; $746b: $a9
	sbc  e                                           ; $746c: $9b
	adc  c                                           ; $746d: $89
	sub  a                                           ; $746e: $97
	ld   a, e                                        ; $746f: $7b
	ld   h, l                                        ; $7470: $65
	or   e                                           ; $7471: $b3
	ld   l, d                                        ; $7472: $6a
	ld   d, a                                        ; $7473: $57
	sub  a                                           ; $7474: $97
	ld   a, d                                        ; $7475: $7a
	sbc  c                                           ; $7476: $99
	cp   c                                           ; $7477: $b9
	sbc  h                                           ; $7478: $9c
	sub  a                                           ; $7479: $97
	ld   l, e                                        ; $747a: $6b
	ld   [hl], d                                     ; $747b: $72
	db   $d3                                         ; $747c: $d3
	ld   c, h                                        ; $747d: $4c
	ld   h, $97                                      ; $747e: $26 $97
	ld   l, e                                        ; $7480: $6b
	sub  [hl]                                        ; $7481: $96
	bit  7, l                                        ; $7482: $cb $7d
	and  [hl]                                        ; $7484: $a6
	and  l                                           ; $7485: $a5
	xor  c                                           ; $7486: $a9
	dec  e                                           ; $7487: $1d
	inc  h                                           ; $7488: $24
	jp   nz, $6779                                   ; $7489: $c2 $79 $67

	xor  d                                           ; $748c: $aa
	ld   a, h                                        ; $748d: $7c
	or   a                                           ; $748e: $b7
	add  sp, $68                                     ; $748f: $e8 $68
	xor  c                                           ; $7491: $a9
	rra                                              ; $7492: $1f
	ld   hl, $5bf1                                   ; $7493: $21 $f1 $5b
	ld   h, l                                        ; $7496: $65
	reti                                             ; $7497: $d9


	ld   l, l                                        ; $7498: $6d
	or   [hl]                                        ; $7499: $b6
	ld   [$7b5a], a                                  ; $749a: $ea $5a $7b
	dec  e                                           ; $749d: $1d
	ld   h, c                                        ; $749e: $61
	ldh  a, [c]                                      ; $749f: $f2
	ld   c, d                                        ; $74a0: $4a
	ld   h, l                                        ; $74a1: $65
	cp   d                                           ; $74a2: $ba
	ld   a, l                                        ; $74a3: $7d
	rst  $10                                         ; $74a4: $d7
	db   $db                                         ; $74a5: $db
	ld   a, [hl-]                                    ; $74a6: $3a
	sub  [hl]                                        ; $74a7: $96
	rra                                              ; $74a8: $1f
	ld   de, $7af1                                   ; $74a9: $11 $f1 $7a
	ld   d, [hl]                                     ; $74ac: $56
	jp   hl                                          ; $74ad: $e9


	ld   a, a                                        ; $74ae: $7f
	cp   c                                           ; $74af: $b9
	ld   hl, sp+$4a                                  ; $74b0: $f8 $4a
	and  d                                           ; $74b2: $a2
	ld   c, a                                        ; $74b3: $4f
	add  hl, de                                      ; $74b4: $19
	or   c                                           ; $74b5: $b1
	rst  ToBoot                                         ; $74b6: $c7
	ld   e, c                                        ; $74b7: $59
	push hl                                          ; $74b8: $e5
	xor  a                                           ; $74b9: $af
	adc  d                                           ; $74ba: $8a
	db   $f4                                         ; $74bb: $f4
	ld   a, e                                        ; $74bc: $7b

jr_0eb_74bd:
	ld   [hl], c                                     ; $74bd: $71
	cp   b                                           ; $74be: $b8
	rra                                              ; $74bf: $1f
	ld   de, $5ce5                                   ; $74c0: $11 $e5 $5c
	push bc                                          ; $74c3: $c5

Call_0eb_74c4:
	db   $fc                                         ; $74c4: $fc
	ld   a, a                                        ; $74c5: $7f
	jp   Jump_0eb_41aa                               ; $74c6: $c3 $aa $41


	pop  af                                          ; $74c9: $f1
	rra                                              ; $74ca: $1f
	add  hl, de                                      ; $74cb: $19
	and  h                                           ; $74cc: $a4
	adc  [hl]                                        ; $74cd: $8e
	adc  b                                           ; $74ce: $88
	ld   sp, hl                                      ; $74cf: $f9
	xor  a                                           ; $74d0: $af
	ld   [hl], l                                     ; $74d1: $75
	ret  z                                           ; $74d2: $c8

	ld   h, $c1                                      ; $74d3: $26 $c1
	rst  $10                                         ; $74d5: $d7
	ld   e, $56                                      ; $74d6: $1e $56
	xor  h                                           ; $74d8: $ac
	ld   l, [hl]                                     ; $74d9: $6e
	ret  c                                           ; $74da: $d8

	db   $dd                                         ; $74db: $dd
	ld   c, c                                        ; $74dc: $49
	call nz, $211d                                   ; $74dd: $c4 $1d $21
	pop  af                                          ; $74e0: $f1
	ld   a, h                                        ; $74e1: $7c
	jr   c, jr_0eb_74bd                              ; $74e2: $38 $d9

	adc  a                                           ; $74e4: $8f
	sbc  e                                           ; $74e5: $9b
	ld   hl, sp+$5b                                  ; $74e6: $f8 $5b
	sub  d                                           ; $74e8: $92
	ld   l, h                                        ; $74e9: $6c
	ld   a, [de]                                     ; $74ea: $1a
	add  c                                           ; $74eb: $81
	push hl                                          ; $74ec: $e5
	ld   e, e                                        ; $74ed: $5b
	add  $de                                         ; $74ee: $c6 $de
	adc  l                                           ; $74f0: $8d
	push bc                                          ; $74f1: $c5
	ld   a, e                                        ; $74f2: $7b
	ld   b, d                                        ; $74f3: $42
	pop  bc                                          ; $74f4: $c1
	rra                                              ; $74f5: $1f
	rla                                              ; $74f6: $17
	jp   nc, $99ad                                   ; $74f7: $d2 $ad $99

	ld   sp, hl                                      ; $74fa: $f9
	call $a886                                       ; $74fb: $cd $86 $a8
	ld   h, $c1                                      ; $74fe: $26 $c1
	xor  b                                           ; $7500: $a8
	ld   e, $55                                      ; $7501: $1e $55
	bit  7, [hl]                                     ; $7503: $cb $7e
	ret  c                                           ; $7505: $d8

	db   $eb                                         ; $7506: $eb
	ld   h, a                                        ; $7507: $67
	or   l                                           ; $7508: $b5
	inc  e                                           ; $7509: $1c
	ld   hl, $7df1                                   ; $750a: $21 $f1 $7d
	dec  hl                                          ; $750d: $2b
	ret  c                                           ; $750e: $d8

	sbc  a                                           ; $750f: $9f
	adc  h                                           ; $7510: $8c
	ret  c                                           ; $7511: $d8

	ld   l, d                                        ; $7512: $6a
	sub  c                                           ; $7513: $91
	ld   a, d                                        ; $7514: $7a
	dec  e                                           ; $7515: $1d
	ld   h, c                                        ; $7516: $61
	db   $f4                                         ; $7517: $f4
	ld   l, l                                        ; $7518: $6d
	or   a                                           ; $7519: $b7
	ei                                               ; $751a: $fb
	adc  [hl]                                        ; $751b: $8e
	and  [hl]                                        ; $751c: $a6
	adc  h                                           ; $751d: $8c
	inc  sp                                          ; $751e: $33
	pop  de                                          ; $751f: $d1
	ccf                                              ; $7520: $3f
	dec  de                                          ; $7521: $1b
	and  c                                           ; $7522: $a1
	call z, $f76c                                    ; $7523: $cc $6c $f7
	call c, $b776                                    ; $7526: $dc $76 $b7
	inc  e                                           ; $7529: $1c
	ld   d, c                                        ; $752a: $51
	pop  af                                          ; $752b: $f1
	rra                                              ; $752c: $1f
	add  hl, de                                      ; $752d: $19
	add  sp, -$71                                    ; $752e: $e8 $8f
	sbc  e                                           ; $7530: $9b
	add  sp, $69                                     ; $7531: $e8 $69
	or   c                                           ; $7533: $b1
	ld   l, l                                        ; $7534: $6d
	ld   a, [de]                                     ; $7535: $1a

jr_0eb_7536:
	and  c                                           ; $7536: $a1
	or   $3d                                         ; $7537: $f6 $3d
	and  [hl]                                        ; $7539: $a6
	db   $fc                                         ; $753a: $fc
	adc  [hl]                                        ; $753b: $8e
	and  a                                           ; $753c: $a7
	ld   l, h                                        ; $753d: $6c
	ld   b, c                                        ; $753e: $41
	pop  hl                                          ; $753f: $e1
	rra                                              ; $7540: $1f
	ld   a, [de]                                     ; $7541: $1a
	pop  de                                          ; $7542: $d1
	call z, $f76c                                    ; $7543: $cc $6c $f7
	db   $db                                         ; $7546: $db
	halt                                             ; $7547: $76
	xor  b                                           ; $7548: $a8
	dec  e                                           ; $7549: $1d
	ld   d, c                                        ; $754a: $51
	pop  af                                          ; $754b: $f1
	cpl                                              ; $754c: $2f
	jr   jr_0eb_7536                                 ; $754d: $18 $e7

	sbc  a                                           ; $754f: $9f
	ld   a, e                                        ; $7550: $7b
	rst  $20                                         ; $7551: $e7
	ld   l, c                                        ; $7552: $69
	or   c                                           ; $7553: $b1
	adc  e                                           ; $7554: $8b
	dec  e                                           ; $7555: $1d

jr_0eb_7556:
	add  c                                           ; $7556: $81
	db   $f4                                         ; $7557: $f4
	ld   c, a                                        ; $7558: $4f
	add  [hl]                                        ; $7559: $86
	ld   sp, hl                                      ; $755a: $f9
	xor  [hl]                                        ; $755b: $ae
	add  a                                           ; $755c: $87
	ld   a, h                                        ; $755d: $7c
	inc  h                                           ; $755e: $24
	pop  af                                          ; $755f: $f1
	ld   a, a                                        ; $7560: $7f
	ld   e, $a1                                      ; $7561: $1e $a1
	db   $eb                                         ; $7563: $eb
	ld   e, a                                        ; $7564: $5f
	rst  $10                                         ; $7565: $d7
	ld   sp, hl                                      ; $7566: $f9
	halt                                             ; $7567: $76
	push bc                                          ; $7568: $c5
	rra                                              ; $7569: $1f
	ld   de, $9ef1                                   ; $756a: $11 $f1 $9e
	inc  e                                           ; $756d: $1c
	db   $e3                                         ; $756e: $e3
	rst  JumpTable                                         ; $756f: $df
	ld   e, a                                        ; $7570: $5f
	and  a                                           ; $7571: $a7
	ld   a, d                                        ; $7572: $7a
	add  c                                           ; $7573: $81
	db   $e4                                         ; $7574: $e4
	rra                                              ; $7575: $1f
	ld   [de], a                                     ; $7576: $12
	pop  af                                          ; $7577: $f1
	sbc  a                                           ; $7578: $9f
	ld   e, e                                        ; $7579: $5b
	or   $ec                                         ; $757a: $f6 $ec
	ld   h, a                                        ; $757c: $67
	sbc  d                                           ; $757d: $9a
	dec  e                                           ; $757e: $1d
	ld   [hl], c                                     ; $757f: $71
	pop  af                                          ; $7580: $f1
	rra                                              ; $7581: $1f
	ld   d, $f5                                      ; $7582: $16 $f5
	sbc  a                                           ; $7584: $9f
	ld   e, h                                        ; $7585: $5c
	push hl                                          ; $7586: $e5
	ld   a, b                                        ; $7587: $78
	and  c                                           ; $7588: $a1
	xor  d                                           ; $7589: $aa
	rra                                              ; $758a: $1f
	ld   d, c                                        ; $758b: $51
	db   $f4                                         ; $758c: $f4
	ld   c, a                                        ; $758d: $4f
	halt                                             ; $758e: $76
	rst  $30                                         ; $758f: $f7
	xor  a                                           ; $7590: $af
	ld   h, a                                        ; $7591: $67
	ld   a, h                                        ; $7592: $7c
	jr   jr_0eb_7556                                 ; $7593: $18 $c1

	ld   hl, sp+$1f                                  ; $7595: $f8 $1f
	ld   h, d                                        ; $7597: $62
	ld   sp, hl                                      ; $7598: $f9
	ld   e, a                                        ; $7599: $5f
	adc  c                                           ; $759a: $89
	or   $68                                         ; $759b: $f6 $68
	or   c                                           ; $759d: $b1
	sbc  h                                           ; $759e: $9c
	rra                                              ; $759f: $1f
	ld   [hl], c                                     ; $75a0: $71
	or   $2f                                         ; $75a1: $f6 $2f
	sub  l                                           ; $75a3: $95
	rst  $30                                         ; $75a4: $f7
	sbc  a                                           ; $75a5: $9f
	ld   h, [hl]                                     ; $75a6: $66
	sbc  h                                           ; $75a7: $9c
	ld   a, [de]                                     ; $75a8: $1a

Call_0eb_75a9:
	or   c                                           ; $75a9: $b1
	or   $1f                                         ; $75aa: $f6 $1f
	ld   h, d                                        ; $75ac: $62
	ld   hl, sp+$5f                                  ; $75ad: $f8 $5f
	ld   l, d                                        ; $75af: $6a
	push hl                                          ; $75b0: $e5
	ld   l, c                                        ; $75b1: $69
	and  c                                           ; $75b2: $a1
	ret                                              ; $75b3: $c9


	rra                                              ; $75b4: $1f
	ld   b, c                                        ; $75b5: $41
	push af                                          ; $75b6: $f5
	ccf                                              ; $75b7: $3f
	halt                                             ; $75b8: $76
	push af                                          ; $75b9: $f5
	xor  [hl]                                        ; $75ba: $ae
	ld   d, [hl]                                     ; $75bb: $56
	sbc  d                                           ; $75bc: $9a
	ld   e, $71                                      ; $75bd: $1e $71
	ldh  a, [c]                                      ; $75bf: $f2
	rra                                              ; $75c0: $1f
	ld   b, e                                        ; $75c1: $43
	or   $6f                                         ; $75c2: $f6 $6f
	ld   e, e                                        ; $75c4: $5b
	db   $f4                                         ; $75c5: $f4
	ld   e, e                                        ; $75c6: $5b
	ld   [hl], c                                     ; $75c7: $71
	ldh  a, [c]                                      ; $75c8: $f2
	rra                                              ; $75c9: $1f
	ld   [de], a                                     ; $75ca: $12
	ldh  a, [c]                                      ; $75cb: $f2
	ld   l, a                                        ; $75cc: $6f
	add  hl, sp                                      ; $75cd: $39
	db   $f4                                         ; $75ce: $f4
	db   $dd                                         ; $75cf: $dd
	ld   b, l                                        ; $75d0: $45
	db   $d3                                         ; $75d1: $d3
	rra                                              ; $75d2: $1f
	ld   [de], a                                     ; $75d3: $12
	pop  af                                          ; $75d4: $f1
	adc  a                                           ; $75d5: $8f
	ld   a, [de]                                     ; $75d6: $1a
	ldh  a, [c]                                      ; $75d7: $f2
	rst  JumpTable                                         ; $75d8: $df
	ld   c, [hl]                                     ; $75d9: $4e
	or   e                                           ; $75da: $b3
	ld   a, l                                        ; $75db: $7d
	dec  d                                           ; $75dc: $15
	pop  af                                          ; $75dd: $f1
	xor  l                                           ; $75de: $ad
	dec  e                                           ; $75df: $1d
	pop  de                                          ; $75e0: $d1
	cp   $2f                                         ; $75e1: $fe $2f
	push bc                                          ; $75e3: $c5
	ld   hl, sp+$39                                  ; $75e4: $f8 $39
	pop  bc                                          ; $75e6: $c1
	jp   z, Jump_0eb_511f                            ; $75e7: $ca $1f $51

	rst  $30                                         ; $75ea: $f7
	cpl                                              ; $75eb: $2f
	and  l                                           ; $75ec: $a5
	ld   hl, sp-$72                                  ; $75ed: $f8 $8e
	ld   d, e                                        ; $75ef: $53
	sub  $1f                                         ; $75f0: $d6 $1f
	ld   de, $4ff1                                   ; $75f2: $11 $f1 $4f
	ld   [hl], $f4                                   ; $75f5: $36 $f4
	xor  a                                           ; $75f7: $af
	ld   c, l                                        ; $75f8: $4d
	jp   nz, $136e                                   ; $75f9: $c2 $6e $13

	pop  af                                          ; $75fc: $f1
	sbc  [hl]                                        ; $75fd: $9e
	dec  e                                           ; $75fe: $1d
	pop  hl                                          ; $75ff: $e1
	rst  JumpTable                                         ; $7600: $df
	cpl                                              ; $7601: $2f
	push hl                                          ; $7602: $e5
	jp   hl                                          ; $7603: $e9


	add  hl, hl                                      ; $7604: $29
	or   c                                           ; $7605: $b1
	jp   c, Jump_0eb_511f                            ; $7606: $da $1f $51

jr_0eb_7609:
	ld   hl, sp+$2f                                  ; $7609: $f8 $2f
	sub  h                                           ; $760b: $94
	ld   hl, sp+$7f                                  ; $760c: $f8 $7f
	ld   d, d                                        ; $760e: $52
	db   $e3                                         ; $760f: $e3
	rra                                              ; $7610: $1f
	ld   de, $6ff1                                   ; $7611: $11 $f1 $6f
	jr   z, jr_0eb_7609                              ; $7614: $28 $f3

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7616: $cf
	ld   c, e                                        ; $7617: $4b
	or   c                                           ; $7618: $b1
	ld   a, [hl]                                     ; $7619: $7e
	jr   @-$0d                                       ; $761a: $18 $f1

	ld   [$b11f], a                                  ; $761c: $ea $1f $b1
	cp   $2f                                         ; $761f: $fe $2f
	or   l                                           ; $7621: $b5
	rst  $20                                         ; $7622: $e7
	ld   e, $61                                      ; $7623: $1e $61
	pop  af                                          ; $7625: $f1
	rra                                              ; $7626: $1f
	inc  d                                           ; $7627: $14
	db   $f4                                         ; $7628: $f4
	ld   l, a                                        ; $7629: $6f
	ld   e, c                                        ; $762a: $59
	or   $ac                                         ; $762b: $f6 $ac
	inc  sp                                          ; $762d: $33
	pop  af                                          ; $762e: $f1
	ccf                                              ; $762f: $3f
	dec  de                                          ; $7630: $1b
	pop  af                                          ; $7631: $f1
	adc  $1d                                         ; $7632: $ce $1d
	ldh  a, [c]                                      ; $7634: $f2
	db   $fc                                         ; $7635: $fc
	ld   l, l                                        ; $7636: $6d
	add  c                                           ; $7637: $81
	xor  d                                           ; $7638: $aa
	rra                                              ; $7639: $1f
	ld   d, c                                        ; $763a: $51
	ldh  a, [c]                                      ; $763b: $f2
	rra                                              ; $763c: $1f
	ld   [hl], h                                     ; $763d: $74
	ld   hl, sp+$6f                                  ; $763e: $f8 $6f
	ld   a, b                                        ; $7640: $78
	push bc                                          ; $7641: $c5
	cpl                                              ; $7642: $2f
	ld   de, $9ff1                                   ; $7643: $11 $f1 $9f

Jump_0eb_7646:
	inc  e                                           ; $7646: $1c
	ldh  a, [c]                                      ; $7647: $f2
	cp   a                                           ; $7648: $bf
	ld   l, $e5                                      ; $7649: $2e $e5
	cp   d                                           ; $764b: $ba
	ld   a, [de]                                     ; $764c: $1a
	or   c                                           ; $764d: $b1
	or   $1f                                         ; $764e: $f6 $1f
	ld   sp, $3ff8                                   ; $7650: $31 $f8 $3f
	add  l                                           ; $7653: $85
	ld   hl, sp-$74                                  ; $7654: $f8 $8c
	ld   h, c                                        ; $7656: $61
	pop  af                                          ; $7657: $f1
	rra                                              ; $7658: $1f
	ld   d, $f1                                      ; $7659: $16 $f1
	xor  a                                           ; $765b: $af
	ld   a, [hl-]                                    ; $765c: $3a
	di                                               ; $765d: $f3
	rst  JumpTable                                         ; $765e: $df
	ld   l, e                                        ; $765f: $6b
	and  c                                           ; $7660: $a1
	ld   a, [hl]                                     ; $7661: $7e
	dec  e                                           ; $7662: $1d
	or   c                                           ; $7663: $b1
	or   $1f                                         ; $7664: $f6 $1f
	and  e                                           ; $7666: $a3
	ei                                               ; $7667: $fb
	ld   c, a                                        ; $7668: $4f
	sub  a                                           ; $7669: $97
	rst  ToBoot                                         ; $766a: $c7
	rra                                              ; $766b: $1f
	ld   hl, $4ff1                                   ; $766c: $21 $f1 $4f
	ld   a, [de]                                     ; $766f: $1a
	db   $f4                                         ; $7670: $f4
	sbc  a                                           ; $7671: $9f
	inc  a                                           ; $7672: $3c
	or   $aa                                         ; $7673: $f6 $aa
	ld   h, $e1                                      ; $7675: $26 $e1
	call z, Call_0eb_711f                            ; $7677: $cc $1f $71
	ei                                               ; $767a: $fb
	cpl                                              ; $767b: $2f
	jp   Jump_0eb_6bf9                               ; $767c: $c3 $f9 $6b


	ld   [hl], c                                     ; $767f: $71
	db   $f4                                         ; $7680: $f4
	rra                                              ; $7681: $1f
	inc  de                                          ; $7682: $13
	pop  af                                          ; $7683: $f1
	adc  a                                           ; $7684: $8f
	ld   c, b                                        ; $7685: $48
	db   $f4                                         ; $7686: $f4
	xor  a                                           ; $7687: $af
	ld   l, c                                        ; $7688: $69
	and  d                                           ; $7689: $a2
	ld   l, [hl]                                     ; $768a: $6e
	dec  e                                           ; $768b: $1d
	or   c                                           ; $768c: $b1
	or   $1f                                         ; $768d: $f6 $1f
	and  e                                           ; $768f: $a3
	ei                                               ; $7690: $fb
	ld   c, a                                        ; $7691: $4f
	sub  a                                           ; $7692: $97
	and  a                                           ; $7693: $a7
	rra                                              ; $7694: $1f
	ld   hl, $6ff1                                   ; $7695: $21 $f1 $6f
	ld   a, [de]                                     ; $7698: $1a
	db   $f4                                         ; $7699: $f4
	sbc  a                                           ; $769a: $9f
	ld   c, h                                        ; $769b: $4c
	and  $9a                                         ; $769c: $e6 $9a
	rla                                              ; $769e: $17
	pop  hl                                          ; $769f: $e1
	ld   [$511f], a                                  ; $76a0: $ea $1f $51
	ld   sp, hl                                      ; $76a3: $f9
	ccf                                              ; $76a4: $3f
	and  l                                           ; $76a5: $a5
	ld   sp, hl                                      ; $76a6: $f9
	ld   a, d                                        ; $76a7: $7a
	ld   [hl], c                                     ; $76a8: $71

Jump_0eb_76a9:
	ldh  [c], a                                      ; $76a9: $e2
	rra                                              ; $76aa: $1f
	rla                                              ; $76ab: $17
	pop  af                                          ; $76ac: $f1
	cp   a                                           ; $76ad: $bf
	ld   c, c                                        ; $76ae: $49
	db   $f4                                         ; $76af: $f4
	adc  $6a                                         ; $76b0: $ce $6a
	and  d                                           ; $76b2: $a2
	adc  l                                           ; $76b3: $8d
	rra                                              ; $76b4: $1f
	ld   [hl], c                                     ; $76b5: $71
	db   $f4                                         ; $76b6: $f4

Call_0eb_76b7:
	ccf                                              ; $76b7: $3f
	sub  h                                           ; $76b8: $94
	ld   a, [$975f]                                  ; $76b9: $fa $5f $97
	sub  [hl]                                        ; $76bc: $96
	rra                                              ; $76bd: $1f
	ld   de, $9ff1                                   ; $76be: $11 $f1 $9f
	ld   a, [de]                                     ; $76c1: $1a
	di                                               ; $76c2: $f3
	xor  a                                           ; $76c3: $af
	inc  a                                           ; $76c4: $3c
	rst  $10                                         ; $76c5: $d7
	sbc  d                                           ; $76c6: $9a
	ld   h, $f1                                      ; $76c7: $26 $f1
	call c, Call_0eb_711f                            ; $76c9: $dc $1f $71
	ld   a, [$a43e]                                  ; $76cc: $fa $3e $a4
	ld   hl, sp+$79                                  ; $76cf: $f8 $79
	ld   [hl], c                                     ; $76d1: $71
	and  $1f                                         ; $76d2: $e6 $1f
	inc  de                                          ; $76d4: $13
	pop  af                                          ; $76d5: $f1
	ld   a, a                                        ; $76d6: $7f
	ld   b, [hl]                                     ; $76d7: $46
	db   $f4                                         ; $76d8: $f4
	adc  l                                           ; $76d9: $8d
	ld   l, b                                        ; $76da: $68
	and  h                                           ; $76db: $a4
	ld   c, a                                        ; $76dc: $4f
	rla                                              ; $76dd: $17
	pop  af                                          ; $76de: $f1
	db   $fd                                         ; $76df: $fd
	dec  e                                           ; $76e0: $1d
	jp   nz, $3dcc                                   ; $76e1: $c2 $cc $3d

	or   [hl]                                        ; $76e4: $b6
	xor  b                                           ; $76e5: $a8
	dec  de                                          ; $76e6: $1b
	add  c                                           ; $76e7: $81
	ldh  a, [c]                                      ; $76e8: $f2
	rra                                              ; $76e9: $1f
	ld   d, $f6                                      ; $76ea: $16 $f6
	ld   e, a                                        ; $76ec: $5f
	ld   d, a                                        ; $76ed: $57
	rst  $20                                         ; $76ee: $e7
	ld   a, d                                        ; $76ef: $7a
	ld   d, e                                        ; $76f0: $53
	pop  af                                          ; $76f1: $f1
	ld   a, a                                        ; $76f2: $7f
	rra                                              ; $76f3: $1f
	pop  bc                                          ; $76f4: $c1
	call c, $d33c                                    ; $76f5: $dc $3c $d3
	db   $db                                         ; $76f8: $db

jr_0eb_76f9:
	ld   l, b                                        ; $76f9: $68
	sub  c                                           ; $76fa: $91
	cp   c                                           ; $76fb: $b9
	rra                                              ; $76fc: $1f
	ld   hl, $6ff1                                   ; $76fd: $21 $f1 $6f
	ld   h, l                                        ; $7700: $65
	push af                                          ; $7701: $f5
	ld   a, [hl]                                     ; $7702: $7e
	ld   [hl], a                                     ; $7703: $77
	sub  l                                           ; $7704: $95
	ld   c, a                                        ; $7705: $4f
	jr   jr_0eb_76f9                                 ; $7706: $18 $f1

	ei                                               ; $7708: $fb
	dec  e                                           ; $7709: $1d
	or   e                                           ; $770a: $b3
	cp   e                                           ; $770b: $bb
	inc  a                                           ; $770c: $3c
	sub  [hl]                                        ; $770d: $96
	sub  a                                           ; $770e: $97
	inc  l                                           ; $770f: $2c
	ld   h, c                                        ; $7710: $61
	pop  af                                          ; $7711: $f1
	ld   e, a                                        ; $7712: $5f
	add  hl, de                                      ; $7713: $19
	push hl                                          ; $7714: $e5
	ld   l, a                                        ; $7715: $6f
	ld   c, c                                        ; $7716: $49
	sub  $89                                         ; $7717: $d6 $89
	ld   [hl], $e1                                   ; $7719: $36 $e1
	db   $eb                                         ; $771b: $eb
	rra                                              ; $771c: $1f
	ld   h, e                                        ; $771d: $63
	jp   hl                                          ; $771e: $e9


	ld   c, l                                        ; $771f: $4d
	and  h                                           ; $7720: $a4
	ret  c                                           ; $7721: $d8

	ld   a, c                                        ; $7722: $79
	ld   d, e                                        ; $7723: $53
	pop  af                                          ; $7724: $f1
	ld   l, a                                        ; $7725: $6f
	rra                                              ; $7726: $1f
	pop  bc                                          ; $7727: $c1
	db   $eb                                         ; $7728: $eb
	ld   c, d                                        ; $7729: $4a
	db   $d3                                         ; $772a: $d3
	jp   z, Jump_0eb_725a                            ; $772b: $ca $5a $72

	push de                                          ; $772e: $d5
	rra                                              ; $772f: $1f
	rla                                              ; $7730: $17
	pop  af                                          ; $7731: $f1
	xor  l                                           ; $7732: $ad
	ld   d, a                                        ; $7733: $57
	db   $f4                                         ; $7734: $f4
	xor  h                                           ; $7735: $ac
	ld   e, c                                        ; $7736: $59
	add  d                                           ; $7737: $82
	xor  d                                           ; $7738: $aa
	rra                                              ; $7739: $1f
	ld   b, c                                        ; $773a: $41
	ldh  a, [c]                                      ; $773b: $f2
	ld   a, [hl]                                     ; $773c: $7e
	ld   [hl], l                                     ; $773d: $75
	and  $6e                                         ; $773e: $e6 $6e

jr_0eb_7740:
	ld   h, a                                        ; $7740: $67
	and  h                                           ; $7741: $a4
	ld   l, [hl]                                     ; $7742: $6e
	dec  e                                           ; $7743: $1d
	or   c                                           ; $7744: $b1
	or   $4d                                         ; $7745: $f6 $4d
	sub  h                                           ; $7747: $94
	ret                                              ; $7748: $c9


	ld   c, l                                        ; $7749: $4d
	add  [hl]                                        ; $774a: $86
	and  l                                           ; $774b: $a5

jr_0eb_774c:
	ld   c, [hl]                                     ; $774c: $4e
	jr   jr_0eb_7740                                 ; $774d: $18 $f1

	ld   a, [$b53d]                                  ; $774f: $fa $3d $b5
	xor  h                                           ; $7752: $ac
	inc  a                                           ; $7753: $3c
	sub  [hl]                                        ; $7754: $96
	sub  a                                           ; $7755: $97
	dec  l                                           ; $7756: $2d
	inc  hl                                          ; $7757: $23
	pop  af                                          ; $7758: $f1
	call z, $b62b                                    ; $7759: $cc $2b $b6
	adc  l                                           ; $775c: $8d
	ld   c, e                                        ; $775d: $4b
	or   [hl]                                        ; $775e: $b6
	adc  b                                           ; $775f: $88
	inc  l                                           ; $7760: $2c
	ld   h, c                                        ; $7761: $61
	pop  af                                          ; $7762: $f1
	sbc  a                                           ; $7763: $9f
	dec  de                                          ; $7764: $1b
	or   a                                           ; $7765: $b7
	ld   a, [hl]                                     ; $7766: $7e
	ld   e, d                                        ; $7767: $5a
	add  $88                                         ; $7768: $c6 $88
	add  hl, sp                                      ; $776a: $39
	add  c                                           ; $776b: $81
	pop  af                                          ; $776c: $f1
	ld   l, a                                        ; $776d: $6f
	dec  de                                          ; $776e: $1b
	or   a                                           ; $776f: $b7
	ld   a, l                                        ; $7770: $7d
	ld   l, c                                        ; $7771: $69
	add  $88                                         ; $7772: $c6 $88
	ld   c, c                                        ; $7774: $49
	sub  c                                           ; $7775: $91
	ldh  a, [c]                                      ; $7776: $f2
	ld   c, a                                        ; $7777: $4f
	ld   a, [de]                                     ; $7778: $1a
	cp   b                                           ; $7779: $b8
	ld   l, l                                        ; $777a: $6d
	ld   l, b                                        ; $777b: $68
	add  $87                                         ; $777c: $c6 $87
	ld   c, b                                        ; $777e: $48
	or   c                                           ; $777f: $b1
	push af                                          ; $7780: $f5
	rra                                              ; $7781: $1f
	jr   z, jr_0eb_774c                              ; $7782: $28 $c8

	ld   l, l                                        ; $7784: $6d
	add  [hl]                                        ; $7785: $86
	sub  $78                                         ; $7786: $d6 $78
	ld   b, a                                        ; $7788: $47
	and  c                                           ; $7789: $a1
	or   $1f                                         ; $778a: $f6 $1f
	add  hl, hl                                      ; $778c: $29
	xor  c                                           ; $778d: $a9
	ld   l, h                                        ; $778e: $6c
	add  [hl]                                        ; $778f: $86
	sub  $89                                         ; $7790: $d6 $89
	ld   d, [hl]                                     ; $7792: $56
	pop  de                                          ; $7793: $d1
	jp   z, Jump_0eb_471f                            ; $7794: $ca $1f $47

	cp   c                                           ; $7797: $b9
	ld   l, d                                        ; $7798: $6a
	and  l                                           ; $7799: $a5
	ret  z                                           ; $779a: $c8

	ld   a, b                                        ; $779b: $78
	ld   h, l                                        ; $779c: $65
	pop  bc                                          ; $779d: $c1
	jp   z, Jump_0eb_471f                            ; $779e: $ca $1f $47

	xor  b                                           ; $77a1: $a8
	ld   a, d                                        ; $77a2: $7a
	or   h                                           ; $77a3: $b4
	ret  c                                           ; $77a4: $d8

	ld   a, c                                        ; $77a5: $79
	ld   h, l                                        ; $77a6: $65

Call_0eb_77a7:
	pop  bc                                          ; $77a7: $c1

Jump_0eb_77a8:
	xor  e                                           ; $77a8: $ab
	rra                                              ; $77a9: $1f
	ld   d, a                                        ; $77aa: $57
	cp   b                                           ; $77ab: $b8
	ld   a, c                                        ; $77ac: $79
	or   l                                           ; $77ad: $b5
	ret  z                                           ; $77ae: $c8

	ld   l, c                                        ; $77af: $69
	ld   d, [hl]                                     ; $77b0: $56
	or   c                                           ; $77b1: $b1
	cp   e                                           ; $77b2: $bb
	rra                                              ; $77b3: $1f
	ld   d, a                                        ; $77b4: $57
	cp   c                                           ; $77b5: $b9
	ld   a, c                                        ; $77b6: $79
	or   l                                           ; $77b7: $b5
	ret  z                                           ; $77b8: $c8

	ld   l, c                                        ; $77b9: $69
	ld   h, l                                        ; $77ba: $65
	pop  bc                                          ; $77bb: $c1
	sbc  e                                           ; $77bc: $9b
	ld   e, $58                                      ; $77bd: $1e $58
	sbc  c                                           ; $77bf: $99
	adc  b                                           ; $77c0: $88
	push bc                                          ; $77c1: $c5
	ret                                              ; $77c2: $c9


	ld   a, b                                        ; $77c3: $78
	ld   h, a                                        ; $77c4: $67
	and  c                                           ; $77c5: $a1
	rst  ToBoot                                         ; $77c6: $c7
	ld   l, $3a                                      ; $77c7: $2e $3a
	adc  c                                           ; $77c9: $89
	ld   a, d                                        ; $77ca: $7a
	or   l                                           ; $77cb: $b5
	rst  ToBoot                                         ; $77cc: $c7
	adc  b                                           ; $77cd: $88
	ld   e, b                                        ; $77ce: $58
	sub  c                                           ; $77cf: $91
	sub  $4e                                         ; $77d0: $d6 $4e
	ld   a, [hl-]                                    ; $77d2: $3a
	sbc  c                                           ; $77d3: $99
	ld   a, d                                        ; $77d4: $7a
	and  [hl]                                        ; $77d5: $a6
	rst  ToBoot                                         ; $77d6: $c7
	adc  c                                           ; $77d7: $89
	ld   e, b                                        ; $77d8: $58
	sub  d                                           ; $77d9: $92
	push de                                          ; $77da: $d5
	ld   c, l                                        ; $77db: $4d
	ld   c, c                                        ; $77dc: $49
	adc  c                                           ; $77dd: $89
	ld   a, e                                        ; $77de: $7b
	and  a                                           ; $77df: $a7
	rst  ToBoot                                         ; $77e0: $c7
	sbc  b                                           ; $77e1: $98
	ld   l, c                                        ; $77e2: $69
	ld   h, h                                        ; $77e3: $64
	db   $d3                                         ; $77e4: $d3
	adc  d                                           ; $77e5: $8a
	ld   c, d                                        ; $77e6: $4a
	adc  c                                           ; $77e7: $89
	ld   a, e                                        ; $77e8: $7b
	adc  b                                           ; $77e9: $88
	or   [hl]                                        ; $77ea: $b6
	and  a                                           ; $77eb: $a7
	ld   l, c                                        ; $77ec: $69
	ld   h, l                                        ; $77ed: $65
	jp   Jump_0eb_6a99                               ; $77ee: $c3 $99 $6a


	adc  d                                           ; $77f1: $8a
	ld   a, h                                        ; $77f2: $7c
	ld   a, c                                        ; $77f3: $79
	and  a                                           ; $77f4: $a7
	sub  a                                           ; $77f5: $97
	ld   a, b                                        ; $77f6: $78
	ld   c, b                                        ; $77f7: $48
	add  e                                           ; $77f8: $83
	and  [hl]                                        ; $77f9: $a6
	ld   a, b                                        ; $77fa: $78
	adc  c                                           ; $77fb: $89
	adc  e                                           ; $77fc: $8b
	ld   a, e                                        ; $77fd: $7b
	sub  a                                           ; $77fe: $97
	sub  [hl]                                        ; $77ff: $96
	adc  b                                           ; $7800: $88
	ld   c, d                                        ; $7801: $4a
	ld   [hl], l                                     ; $7802: $75
	or   l                                           ; $7803: $b5
	sbc  b                                           ; $7804: $98
	adc  b                                           ; $7805: $88
	sbc  d                                           ; $7806: $9a
	ld   a, h                                        ; $7807: $7c
	adc  b                                           ; $7808: $88
	sub  a                                           ; $7809: $97
	sub  [hl]                                        ; $780a: $96
	ld   e, d                                        ; $780b: $5a
	ld   d, a                                        ; $780c: $57
	sub  l                                           ; $780d: $95
	add  a                                           ; $780e: $87
	sub  a                                           ; $780f: $97
	cp   b                                           ; $7810: $b8
	adc  e                                           ; $7811: $8b
	ld   a, c                                        ; $7812: $79
	add  a                                           ; $7813: $87
	sub  [hl]                                        ; $7814: $96
	ld   l, c                                        ; $7815: $69
	ld   c, c                                        ; $7816: $49
	add  [hl]                                        ; $7817: $86
	sbc  b                                           ; $7818: $98
	add  a                                           ; $7819: $87
	cp   b                                           ; $781a: $b8
	xor  d                                           ; $781b: $aa
	ld   a, d                                        ; $781c: $7a
	adc  b                                           ; $781d: $88
	sub  [hl]                                        ; $781e: $96
	ld   a, c                                        ; $781f: $79
	ld   e, b                                        ; $7820: $58
	halt                                             ; $7821: $76
	adc  b                                           ; $7822: $88
	adc  b                                           ; $7823: $88
	xor  b                                           ; $7824: $a8
	xor  d                                           ; $7825: $aa
	adc  c                                           ; $7826: $89
	adc  c                                           ; $7827: $89
	add  [hl]                                        ; $7828: $86
	adc  c                                           ; $7829: $89
	ld   l, b                                        ; $782a: $68
	ld   [hl], a                                     ; $782b: $77
	adc  b                                           ; $782c: $88
	ld   a, c                                        ; $782d: $79
	xor  b                                           ; $782e: $a8
	sbc  c                                           ; $782f: $99
	sbc  c                                           ; $7830: $99
	adc  b                                           ; $7831: $88
	add  a                                           ; $7832: $87
	adc  b                                           ; $7833: $88
	ld   l, b                                        ; $7834: $68
	halt                                             ; $7835: $76
	add  a                                           ; $7836: $87
	ld   a, c                                        ; $7837: $79
	sbc  c                                           ; $7838: $99
	sbc  c                                           ; $7839: $99
	adc  c                                           ; $783a: $89
	adc  b                                           ; $783b: $88
	add  a                                           ; $783c: $87
	adc  b                                           ; $783d: $88
	ld   l, b                                        ; $783e: $68
	halt                                             ; $783f: $76
	ld   [hl], a                                     ; $7840: $77
	ld   a, c                                        ; $7841: $79
	adc  c                                           ; $7842: $89
	xor  c                                           ; $7843: $a9
	adc  c                                           ; $7844: $89
	sbc  b                                           ; $7845: $98
	add  a                                           ; $7846: $87
	adc  b                                           ; $7847: $88
	ld   l, b                                        ; $7848: $68
	halt                                             ; $7849: $76
	add  a                                           ; $784a: $87
	ld   a, b                                        ; $784b: $78
	adc  b                                           ; $784c: $88
	xor  c                                           ; $784d: $a9
	adc  c                                           ; $784e: $89
	sbc  b                                           ; $784f: $98
	add  a                                           ; $7850: $87
	adc  b                                           ; $7851: $88
	ld   l, b                                        ; $7852: $68
	halt                                             ; $7853: $76
	add  a                                           ; $7854: $87
	ld   a, b                                        ; $7855: $78
	adc  b                                           ; $7856: $88
	xor  c                                           ; $7857: $a9
	sbc  c                                           ; $7858: $99
	adc  b                                           ; $7859: $88
	sub  a                                           ; $785a: $97
	add  a                                           ; $785b: $87
	ld   l, b                                        ; $785c: $68
	halt                                             ; $785d: $76
	ld   [hl], a                                     ; $785e: $77
	ld   a, b                                        ; $785f: $78
	sbc  b                                           ; $7860: $98
	xor  b                                           ; $7861: $a8
	sbc  c                                           ; $7862: $99
	adc  c                                           ; $7863: $89
	add  a                                           ; $7864: $87
	add  a                                           ; $7865: $87
	ld   a, b                                        ; $7866: $78
	ld   [hl], a                                     ; $7867: $77
	ld   [hl], a                                     ; $7868: $77
	ld   a, b                                        ; $7869: $78
	sbc  c                                           ; $786a: $99
	xor  b                                           ; $786b: $a8
	sbc  c                                           ; $786c: $99
	sbc  c                                           ; $786d: $99
	add  a                                           ; $786e: $87
	add  a                                           ; $786f: $87
	ld   [hl], a                                     ; $7870: $77
	ld   [hl], a                                     ; $7871: $77
	ld   [hl], a                                     ; $7872: $77
	ld   a, b                                        ; $7873: $78
	sbc  c                                           ; $7874: $99
	sbc  b                                           ; $7875: $98
	sbc  c                                           ; $7876: $99
	adc  b                                           ; $7877: $88

Call_0eb_7878:
	ld   a, b                                        ; $7878: $78
	add  a                                           ; $7879: $87
	ld   [hl], a                                     ; $787a: $77
	ld   h, a                                        ; $787b: $67
	ld   [hl], a                                     ; $787c: $77
	adc  b                                           ; $787d: $88
	sbc  c                                           ; $787e: $99
	sbc  b                                           ; $787f: $98
	xor  b                                           ; $7880: $a8
	adc  c                                           ; $7881: $89
	ld   a, b                                        ; $7882: $78
	add  a                                           ; $7883: $87
	ld   [hl], a                                     ; $7884: $77
	ld   [hl], a                                     ; $7885: $77
	ld   [hl], a                                     ; $7886: $77
	adc  b                                           ; $7887: $88
	adc  d                                           ; $7888: $8a
	sbc  c                                           ; $7889: $99
	sbc  b                                           ; $788a: $98
	sbc  b                                           ; $788b: $98
	ld   a, b                                        ; $788c: $78
	ld   [hl], a                                     ; $788d: $77
	ld   [hl], a                                     ; $788e: $77
	ld   [hl], a                                     ; $788f: $77
	ld   [hl], a                                     ; $7890: $77
	sbc  b                                           ; $7891: $98
	sbc  c                                           ; $7892: $99
	adc  c                                           ; $7893: $89
	sbc  b                                           ; $7894: $98
	sbc  b                                           ; $7895: $98
	ld   a, b                                        ; $7896: $78
	ld   [hl], a                                     ; $7897: $77
	halt                                             ; $7898: $76
	ld   [hl], a                                     ; $7899: $77
	ld   a, b                                        ; $789a: $78
	adc  c                                           ; $789b: $89
	sbc  c                                           ; $789c: $99
	adc  c                                           ; $789d: $89
	sbc  b                                           ; $789e: $98
	add  a                                           ; $789f: $87
	adc  b                                           ; $78a0: $88
	ld   [hl], a                                     ; $78a1: $77
	halt                                             ; $78a2: $76
	ld   [hl], a                                     ; $78a3: $77
	ld   a, b                                        ; $78a4: $78
	adc  c                                           ; $78a5: $89
	sbc  c                                           ; $78a6: $99
	sbc  c                                           ; $78a7: $99
	adc  b                                           ; $78a8: $88

Call_0eb_78a9:
	sub  a                                           ; $78a9: $97
	add  a                                           ; $78aa: $87
	ld   [hl], a                                     ; $78ab: $77
	ld   [hl], a                                     ; $78ac: $77
	ld   [hl], a                                     ; $78ad: $77
	ld   a, c                                        ; $78ae: $79
	adc  b                                           ; $78af: $88
	sbc  b                                           ; $78b0: $98
	sbc  c                                           ; $78b1: $99
	adc  b                                           ; $78b2: $88
	add  a                                           ; $78b3: $87
	sub  a                                           ; $78b4: $97
	ld   [hl], a                                     ; $78b5: $77
	ld   [hl], a                                     ; $78b6: $77
	ld   [hl], a                                     ; $78b7: $77
	ld   a, b                                        ; $78b8: $78
	sbc  c                                           ; $78b9: $99
	sbc  b                                           ; $78ba: $98
	sbc  c                                           ; $78bb: $99
	adc  b                                           ; $78bc: $88
	adc  b                                           ; $78bd: $88
	add  a                                           ; $78be: $87
	ld   [hl], a                                     ; $78bf: $77
	ld   h, a                                        ; $78c0: $67
	ld   [hl], a                                     ; $78c1: $77
	adc  b                                           ; $78c2: $88
	sbc  c                                           ; $78c3: $99
	sbc  b                                           ; $78c4: $98
	sbc  b                                           ; $78c5: $98
	adc  b                                           ; $78c6: $88
	ld   a, b                                        ; $78c7: $78
	add  a                                           ; $78c8: $87
	ld   [hl], a                                     ; $78c9: $77
	ld   [hl], a                                     ; $78ca: $77
	ld   [hl], a                                     ; $78cb: $77
	adc  c                                           ; $78cc: $89
	sbc  c                                           ; $78cd: $99
	adc  b                                           ; $78ce: $88
	sbc  b                                           ; $78cf: $98
	adc  c                                           ; $78d0: $89
	ld   a, b                                        ; $78d1: $78
	add  a                                           ; $78d2: $87
	add  a                                           ; $78d3: $87
	ld   [hl], a                                     ; $78d4: $77
	ld   [hl], a                                     ; $78d5: $77
	adc  c                                           ; $78d6: $89
	sbc  c                                           ; $78d7: $99
	adc  c                                           ; $78d8: $89
	sbc  b                                           ; $78d9: $98
	adc  b                                           ; $78da: $88
	ld   a, c                                        ; $78db: $79
	ld   [hl], a                                     ; $78dc: $77
	add  a                                           ; $78dd: $87
	ld   [hl], a                                     ; $78de: $77
	ld   [hl], a                                     ; $78df: $77
	sbc  c                                           ; $78e0: $99
	adc  c                                           ; $78e1: $89
	sbc  c                                           ; $78e2: $99
	sbc  b                                           ; $78e3: $98
	adc  b                                           ; $78e4: $88
	ld   a, c                                        ; $78e5: $79
	ld   [hl], a                                     ; $78e6: $77
	ld   [hl], a                                     ; $78e7: $77
	ld   [hl], a                                     ; $78e8: $77
	ld   [hl], a                                     ; $78e9: $77
	sbc  c                                           ; $78ea: $99
	adc  b                                           ; $78eb: $88
	adc  b                                           ; $78ec: $88
	adc  b                                           ; $78ed: $88
	adc  b                                           ; $78ee: $88
	adc  c                                           ; $78ef: $89
	ld   [hl], a                                     ; $78f0: $77
	halt                                             ; $78f1: $76
	ld   [hl], a                                     ; $78f2: $77
	ld   [hl], a                                     ; $78f3: $77
	sbc  b                                           ; $78f4: $98
	adc  b                                           ; $78f5: $88
	sbc  c                                           ; $78f6: $99
	adc  b                                           ; $78f7: $88
	adc  b                                           ; $78f8: $88
	adc  c                                           ; $78f9: $89
	ld   [hl], a                                     ; $78fa: $77
	ld   [hl], a                                     ; $78fb: $77
	ld   [hl], a                                     ; $78fc: $77
	ld   a, b                                        ; $78fd: $78
	sbc  b                                           ; $78fe: $98
	adc  b                                           ; $78ff: $88
	sbc  b                                           ; $7900: $98
	adc  b                                           ; $7901: $88
	adc  b                                           ; $7902: $88
	adc  c                                           ; $7903: $89
	ld   [hl], a                                     ; $7904: $77
	halt                                             ; $7905: $76
	ld   [hl], a                                     ; $7906: $77
	ld   a, b                                        ; $7907: $78
	sbc  b                                           ; $7908: $98
	adc  b                                           ; $7909: $88
	sbc  b                                           ; $790a: $98
	adc  b                                           ; $790b: $88
	adc  b                                           ; $790c: $88
	adc  c                                           ; $790d: $89
	ld   [hl], a                                     ; $790e: $77
	ld   [hl], a                                     ; $790f: $77
	ld   [hl], a                                     ; $7910: $77
	ld   a, b                                        ; $7911: $78
	sbc  b                                           ; $7912: $98
	adc  c                                           ; $7913: $89
	sbc  b                                           ; $7914: $98
	adc  b                                           ; $7915: $88
	adc  b                                           ; $7916: $88
	adc  c                                           ; $7917: $89
	ld   a, b                                        ; $7918: $78
	ld   [hl], a                                     ; $7919: $77
	ld   [hl], a                                     ; $791a: $77
	ld   a, b                                        ; $791b: $78
	adc  b                                           ; $791c: $88
	adc  c                                           ; $791d: $89
	sbc  b                                           ; $791e: $98
	adc  b                                           ; $791f: $88
	adc  b                                           ; $7920: $88
	adc  c                                           ; $7921: $89
	ld   a, b                                        ; $7922: $78
	ld   [hl], a                                     ; $7923: $77
	ld   [hl], a                                     ; $7924: $77
	ld   a, b                                        ; $7925: $78
	adc  b                                           ; $7926: $88
	adc  c                                           ; $7927: $89
	sbc  b                                           ; $7928: $98
	adc  b                                           ; $7929: $88
	adc  b                                           ; $792a: $88
	sbc  c                                           ; $792b: $99
	ld   a, b                                        ; $792c: $78
	ld   [hl], a                                     ; $792d: $77
	ld   [hl], a                                     ; $792e: $77
	ld   a, b                                        ; $792f: $78
	adc  b                                           ; $7930: $88
	adc  c                                           ; $7931: $89
	sbc  b                                           ; $7932: $98
	adc  b                                           ; $7933: $88
	sbc  b                                           ; $7934: $98
	adc  b                                           ; $7935: $88
	ld   a, b                                        ; $7936: $78
	ld   [hl], a                                     ; $7937: $77
	ld   [hl], a                                     ; $7938: $77
	ld   a, b                                        ; $7939: $78
	adc  b                                           ; $793a: $88
	adc  c                                           ; $793b: $89
	sbc  b                                           ; $793c: $98
	adc  b                                           ; $793d: $88
	sbc  b                                           ; $793e: $98
	adc  b                                           ; $793f: $88
	ld   a, b                                        ; $7940: $78
	ld   [hl], a                                     ; $7941: $77
	ld   [hl], a                                     ; $7942: $77
	ld   a, b                                        ; $7943: $78
	adc  b                                           ; $7944: $88
	sbc  c                                           ; $7945: $99
	sbc  b                                           ; $7946: $98
	adc  b                                           ; $7947: $88
	sbc  b                                           ; $7948: $98
	adc  c                                           ; $7949: $89
	ld   [hl], a                                     ; $794a: $77
	add  a                                           ; $794b: $87
	ld   [hl], a                                     ; $794c: $77
	ld   [hl], a                                     ; $794d: $77
	adc  b                                           ; $794e: $88
	sbc  c                                           ; $794f: $99
	sbc  b                                           ; $7950: $98
	adc  c                                           ; $7951: $89
	sbc  b                                           ; $7952: $98
	adc  c                                           ; $7953: $89
	ld   [hl], a                                     ; $7954: $77
	add  [hl]                                        ; $7955: $86
	ld   [hl], a                                     ; $7956: $77
	ld   [hl], a                                     ; $7957: $77
	sbc  b                                           ; $7958: $98
	sbc  c                                           ; $7959: $99
	adc  b                                           ; $795a: $88
	adc  c                                           ; $795b: $89
	sbc  b                                           ; $795c: $98
	adc  c                                           ; $795d: $89
	ld   [hl], a                                     ; $795e: $77
	add  a                                           ; $795f: $87
	ld   [hl], a                                     ; $7960: $77
	ld   [hl], a                                     ; $7961: $77
	sbc  b                                           ; $7962: $98
	sbc  b                                           ; $7963: $98
	sbc  b                                           ; $7964: $98
	adc  c                                           ; $7965: $89
	sbc  b                                           ; $7966: $98
	adc  d                                           ; $7967: $8a
	ld   l, b                                        ; $7968: $68
	ld   [hl], a                                     ; $7969: $77
	ld   [hl], a                                     ; $796a: $77
	ld   [hl], a                                     ; $796b: $77
	sub  a                                           ; $796c: $97
	adc  c                                           ; $796d: $89
	adc  c                                           ; $796e: $89
	adc  c                                           ; $796f: $89
	and  a                                           ; $7970: $a7
	adc  c                                           ; $7971: $89
	ld   l, c                                        ; $7972: $69
	ld   [hl], a                                     ; $7973: $77
	ld   a, b                                        ; $7974: $78
	ld   [hl], a                                     ; $7975: $77
	sub  a                                           ; $7976: $97
	sbc  b                                           ; $7977: $98
	adc  c                                           ; $7978: $89
	adc  b                                           ; $7979: $88
	sub  a                                           ; $797a: $97
	adc  b                                           ; $797b: $88
	ld   l, c                                        ; $797c: $69
	ld   h, a                                        ; $797d: $67
	ld   l, b                                        ; $797e: $68
	ld   [hl], a                                     ; $797f: $77
	and  [hl]                                        ; $7980: $a6
	xor  b                                           ; $7981: $a8
	adc  b                                           ; $7982: $88
	adc  d                                           ; $7983: $8a
	ld   [hl], a                                     ; $7984: $77
	and  [hl]                                        ; $7985: $a6
	adc  c                                           ; $7986: $89
	ld   l, b                                        ; $7987: $68
	ld   l, b                                        ; $7988: $68
	ld   l, d                                        ; $7989: $6a
	adc  b                                           ; $798a: $88
	or   a                                           ; $798b: $b7
	and  a                                           ; $798c: $a7
	sbc  c                                           ; $798d: $99
	ld   l, d                                        ; $798e: $6a
	halt                                             ; $798f: $76
	and  [hl]                                        ; $7990: $a6
	halt                                             ; $7991: $76
	add  a                                           ; $7992: $87
	ld   a, e                                        ; $7993: $7b
	ld   l, h                                        ; $7994: $6c
	adc  b                                           ; $7995: $88

jr_0eb_7996:
	add  a                                           ; $7996: $87
	or   l                                           ; $7997: $b5
	sbc  c                                           ; $7998: $99
	ld   c, d                                        ; $7999: $4a
	ld   h, a                                        ; $799a: $67
	ld   [hl], a                                     ; $799b: $77
	add  [hl]                                        ; $799c: $86
	add  $ba                                         ; $799d: $c6 $ba
	ld   a, c                                        ; $799f: $79
	ld   l, e                                        ; $79a0: $6b
	ld   d, a                                        ; $79a1: $57
	and  e                                           ; $79a2: $a3
	sub  a                                           ; $79a3: $97
	ld   l, b                                        ; $79a4: $68
	ld   l, b                                        ; $79a5: $68
	ld   e, h                                        ; $79a6: $5c
	ld   a, d                                        ; $79a7: $7a
	or   a                                           ; $79a8: $b7
	and  [hl]                                        ; $79a9: $a6
	push bc                                          ; $79aa: $c5
	ld   a, h                                        ; $79ab: $7c
	ld   a, [hl+]                                    ; $79ac: $2a
	ld   h, [hl]                                     ; $79ad: $66
	add  a                                           ; $79ae: $87
	add  l                                           ; $79af: $85
	rst  ToBoot                                         ; $79b0: $c7
	xor  h                                           ; $79b1: $ac
	ld   a, d                                        ; $79b2: $7a
	ld   l, e                                        ; $79b3: $6b
	ld   d, a                                        ; $79b4: $57
	or   d                                           ; $79b5: $b2
	or   a                                           ; $79b6: $b7
	ld   e, b                                        ; $79b7: $58
	ld   l, c                                        ; $79b8: $69
	ld   e, h                                        ; $79b9: $5c
	ld   a, d                                        ; $79ba: $7a
	add  $b6                                         ; $79bb: $c6 $b6
	jp   $1c8a                                       ; $79bd: $c3 $8a $1c


	ld   d, [hl]                                     ; $79c0: $56
	ld   [hl], a                                     ; $79c1: $77
	add  [hl]                                        ; $79c2: $86
	push hl                                          ; $79c3: $e5
	bit  7, c                                        ; $79c4: $cb $79
	ld   l, e                                        ; $79c6: $6b
	dec  hl                                          ; $79c7: $2b
	add  c                                           ; $79c8: $81
	call nc, Call_0eb_7878                           ; $79c9: $d4 $78 $78
	ld   a, [hl]                                     ; $79cc: $7e
	ld   e, [hl]                                     ; $79cd: $5e
	sub  a                                           ; $79ce: $97
	sbc  b                                           ; $79cf: $98
	and  c                                           ; $79d0: $a1
	ldh  a, [c]                                      ; $79d1: $f2
	ld   e, h                                        ; $79d2: $5c
	ld   a, [de]                                     ; $79d3: $1a
	ld   l, d                                        ; $79d4: $6a
	ld   c, h                                        ; $79d5: $4c
	and  [hl]                                        ; $79d6: $a6
	or   $a6                                         ; $79d7: $f6 $a6
	and  [hl]                                        ; $79d9: $a6
	ccf                                              ; $79da: $3f
	add  hl, de                                      ; $79db: $19
	sub  d                                           ; $79dc: $92
	or   [hl]                                        ; $79dd: $b6
	and  l                                           ; $79de: $a5
	ret  c                                           ; $79df: $d8

	sbc  [hl]                                        ; $79e0: $9e
	ld   e, d                                        ; $79e1: $5a
	ld   l, h                                        ; $79e2: $6c
	jr   jr_0eb_7996                                 ; $79e3: $18 $b1

	di                                               ; $79e5: $f3
	ld   a, b                                        ; $79e6: $78
	adc  c                                           ; $79e7: $89
	ld   l, a                                        ; $79e8: $6f
	ccf                                              ; $79e9: $3f
	sub  a                                           ; $79ea: $97
	sub  a                                           ; $79eb: $97
	and  c                                           ; $79ec: $a1
	di                                               ; $79ed: $f3
	ccf                                              ; $79ee: $3f
	dec  de                                          ; $79ef: $1b
	ld   a, d                                        ; $79f0: $7a
	ld   l, e                                        ; $79f1: $6b
	push de                                          ; $79f2: $d5
	push af                                          ; $79f3: $f5
	sub  a                                           ; $79f4: $97
	or   h                                           ; $79f5: $b4
	ld   c, a                                        ; $79f6: $4f
	ld   e, $73                                      ; $79f7: $1e $73
	add  $a4                                         ; $79f9: $c6 $a4
	db   $f4                                         ; $79fb: $f4
	call Call_0eb_6b4b                               ; $79fc: $cd $4b $6b
	ld   e, $41                                      ; $79ff: $1e $41
	pop  af                                          ; $7a01: $f1
	cp   b                                           ; $7a02: $b8
	sub  [hl]                                        ; $7a03: $96
	cp   l                                           ; $7a04: $bd
	ld   c, a                                        ; $7a05: $4f
	ld   e, b                                        ; $7a06: $58
	adc  d                                           ; $7a07: $8a
	dec  [hl]                                        ; $7a08: $35
	pop  af                                          ; $7a09: $f1
	or   $3d                                         ; $7a0a: $f6 $3d
	ld   l, d                                        ; $7a0c: $6a
	ld   e, a                                        ; $7a0d: $5f
	ld   a, $c3                                      ; $7a0e: $3e $c3
	and  a                                           ; $7a10: $a7
	sub  c                                           ; $7a11: $91
	pop  af                                          ; $7a12: $f1
	ld   c, a                                        ; $7a13: $4f
	inc  e                                           ; $7a14: $1c
	ld   a, c                                        ; $7a15: $79
	ld   e, l                                        ; $7a16: $5d
	sub  [hl]                                        ; $7a17: $96
	di                                               ; $7a18: $f3
	xor  b                                           ; $7a19: $a8
	and  c                                           ; $7a1a: $a1
	jp   z, $171f                                    ; $7a1b: $ca $1f $17

	or   a                                           ; $7a1e: $b7
	adc  c                                           ; $7a1f: $89
	ldh  a, [c]                                      ; $7a20: $f2
	or   $5b                                         ; $7a21: $f6 $5b
	sub  e                                           ; $7a23: $93
	ld   c, a                                        ; $7a24: $4f
	ld   e, $81                                      ; $7a25: $1e $81
	and  $96                                         ; $7a27: $e6 $96
	db   $f4                                         ; $7a29: $f4
	db   $dd                                         ; $7a2a: $dd
	dec  de                                          ; $7a2b: $1b
	sub  l                                           ; $7a2c: $95
	rra                                              ; $7a2d: $1f
	ld   d, $f1                                      ; $7a2e: $16 $f1
	add  sp, -$6a                                    ; $7a30: $e8 $96
	rst  $30                                         ; $7a32: $f7
	adc  a                                           ; $7a33: $8f
	ld   a, [de]                                     ; $7a34: $1a
	sub  a                                           ; $7a35: $97
	rra                                              ; $7a36: $1f
	ld   b, c                                        ; $7a37: $41
	pop  af                                          ; $7a38: $f1
	xor  e                                           ; $7a39: $ab
	ld   [hl], a                                     ; $7a3a: $77
	db   $dd                                         ; $7a3b: $dd
	ccf                                              ; $7a3c: $3f
	ld   [hl], $b7                                   ; $7a3d: $36 $b7
	inc  e                                           ; $7a3f: $1c
	and  c                                           ; $7a40: $a1
	pop  af                                          ; $7a41: $f1
	ld   c, a                                        ; $7a42: $4f
	ld   [hl], a                                     ; $7a43: $77
	cp   a                                           ; $7a44: $bf
	rra                                              ; $7a45: $1f
	ld   [hl], d                                     ; $7a46: $72
	ret  c                                           ; $7a47: $d8

	rla                                              ; $7a48: $17
	pop  af                                          ; $7a49: $f1
	ld   hl, sp+$1f                                  ; $7a4a: $f8 $1f
	ld   l, b                                        ; $7a4c: $68
	adc  a                                           ; $7a4d: $8f
	rra                                              ; $7a4e: $1f
	pop  bc                                          ; $7a4f: $c1
	jp   c, $f113                                    ; $7a50: $da $13 $f1

	cp   a                                           ; $7a53: $bf
	rra                                              ; $7a54: $1f
	add  a                                           ; $7a55: $87
	ld   a, a                                        ; $7a56: $7f
	ld   c, e                                        ; $7a57: $4b
	pop  af                                          ; $7a58: $f1
	xor  e                                           ; $7a59: $ab
	ld   de, $6ff1                                   ; $7a5a: $11 $f1 $6f
	rra                                              ; $7a5d: $1f
	and  a                                           ; $7a5e: $a7
	ld   l, a                                        ; $7a5f: $6f
	ld   [hl], a                                     ; $7a60: $77
	pop  af                                          ; $7a61: $f1
	sbc  e                                           ; $7a62: $9b
	ld   b, c                                        ; $7a63: $41
	pop  af                                          ; $7a64: $f1
	rra                                              ; $7a65: $1f
	inc  e                                           ; $7a66: $1c
	sub  $7e                                         ; $7a67: $d6 $7e
	or   e                                           ; $7a69: $b3
	pop  af                                          ; $7a6a: $f1
	ld   e, [hl]                                     ; $7a6b: $5e
	ld   sp, $1ff2                                   ; $7a6c: $31 $f2 $1f
	ld   a, [de]                                     ; $7a6f: $1a
	and  $7e                                         ; $7a70: $e6 $7e
	jp   nz, Jump_0eb_4ef1                           ; $7a72: $c2 $f1 $4e

	ld   b, c                                        ; $7a75: $41
	rst  $30                                         ; $7a76: $f7
	rra                                              ; $7a77: $1f
	dec  d                                           ; $7a78: $15
	db   $f4                                         ; $7a79: $f4
	adc  l                                           ; $7a7a: $8d
	pop  de                                          ; $7a7b: $d1
	db   $f4                                         ; $7a7c: $f4
	rra                                              ; $7a7d: $1f
	ld   b, c                                        ; $7a7e: $41
	or   $1f                                         ; $7a7f: $f6 $1f
	inc  d                                           ; $7a81: $14
	push af                                          ; $7a82: $f5
	ld   a, h                                        ; $7a83: $7c
	pop  de                                          ; $7a84: $d1
	push af                                          ; $7a85: $f5
	rra                                              ; $7a86: $1f
	ld   b, c                                        ; $7a87: $41
	or   $1f                                         ; $7a88: $f6 $1f
	inc  d                                           ; $7a8a: $14
	push af                                          ; $7a8b: $f5
	ld   a, l                                        ; $7a8c: $7d
	pop  hl                                          ; $7a8d: $e1
	push af                                          ; $7a8e: $f5
	rra                                              ; $7a8f: $1f
	ld   sp, $1ff5                                   ; $7a90: $31 $f5 $1f
	inc  d                                           ; $7a93: $14
	push af                                          ; $7a94: $f5
	ld   l, l                                        ; $7a95: $6d
	pop  de                                          ; $7a96: $d1
	push af                                          ; $7a97: $f5
	rra                                              ; $7a98: $1f
	ld   sp, $1ff3                                   ; $7a99: $31 $f3 $1f
	dec  d                                           ; $7a9c: $15
	push af                                          ; $7a9d: $f5
	ld   l, a                                        ; $7a9e: $6f
	or   d                                           ; $7a9f: $b2
	di                                               ; $7aa0: $f3
	rra                                              ; $7aa1: $1f
	ld   de, $1ff1                                   ; $7aa2: $11 $f1 $1f
	add  hl, de                                      ; $7aa5: $19
	push af                                          ; $7aa6: $f5
	ld   l, a                                        ; $7aa7: $6f
	sub  e                                           ; $7aa8: $93
	pop  af                                          ; $7aa9: $f1
	ccf                                              ; $7aaa: $3f
	ld   de, $4ff1                                   ; $7aab: $11 $f1 $4f
	dec  de                                          ; $7aae: $1b
	db   $e4                                         ; $7aaf: $e4
	ld   a, a                                        ; $7ab0: $7f
	ld   h, [hl]                                     ; $7ab1: $66
	pop  af                                          ; $7ab2: $f1
	ld   a, a                                        ; $7ab3: $7f
	dec  d                                           ; $7ab4: $15
	pop  af                                          ; $7ab5: $f1
	xor  a                                           ; $7ab6: $af
	rra                                              ; $7ab7: $1f
	call nz, $398f                                   ; $7ab8: $c4 $8f $39
	pop  af                                          ; $7abb: $f1
	adc  $1c                                         ; $7abc: $ce $1c
	pop  af                                          ; $7abe: $f1
	db   $fc                                         ; $7abf: $fc
	rra                                              ; $7ac0: $1f
	and  l                                           ; $7ac1: $a5
	cp   a                                           ; $7ac2: $bf
	ld   e, $c1                                      ; $7ac3: $1e $c1
	ld   sp, hl                                      ; $7ac5: $f9
	rra                                              ; $7ac6: $1f
	sub  c                                           ; $7ac7: $91
	db   $f4                                         ; $7ac8: $f4
	rra                                              ; $7ac9: $1f
	ld   h, l                                        ; $7aca: $65
	sbc  $1f                                         ; $7acb: $de $1f
	ld   h, c                                        ; $7acd: $61
	pop  af                                          ; $7ace: $f1
	rra                                              ; $7acf: $1f
	ld   de, $8ff1                                   ; $7ad0: $11 $f1 $8f
	ld   d, a                                        ; $7ad3: $57
	ld   sp, hl                                      ; $7ad4: $f9
	ld   e, a                                        ; $7ad5: $5f
	dec  d                                           ; $7ad6: $15
	pop  af                                          ; $7ad7: $f1
	ld   e, a                                        ; $7ad8: $5f
	ld   a, [de]                                     ; $7ad9: $1a

Jump_0eb_7ada:
	pop  af                                          ; $7ada: $f1
	db   $fd                                         ; $7adb: $fd
	ld   c, d                                        ; $7adc: $4a
	db   $f4                                         ; $7add: $f4
	xor  a                                           ; $7ade: $af
	dec  e                                           ; $7adf: $1d
	pop  bc                                          ; $7ae0: $c1
	db   $fc                                         ; $7ae1: $fc
	rra                                              ; $7ae2: $1f
	add  c                                           ; $7ae3: $81
	ld   hl, sp+$4d                                  ; $7ae4: $f8 $4d
	pop  af                                          ; $7ae6: $f1
	ld   hl, sp+$1f                                  ; $7ae7: $f8 $1f
	ld   sp, $1ff1                                   ; $7ae9: $31 $f1 $1f
	ld   d, $f5                                      ; $7aec: $16 $f5
	ld   l, a                                        ; $7aee: $6f
	add  h                                           ; $7aef: $84
	pop  af                                          ; $7af0: $f1
	ld   c, a                                        ; $7af1: $4f
	inc  d                                           ; $7af2: $14
	pop  af                                          ; $7af3: $f1
	xor  a                                           ; $7af4: $af
	ld   e, $e3                                      ; $7af5: $1e $e3
	sbc  a                                           ; $7af7: $9f
	ld   a, [hl-]                                    ; $7af8: $3a
	pop  af                                          ; $7af9: $f1
	db   $dd                                         ; $7afa: $dd
	rra                                              ; $7afb: $1f
	or   c                                           ; $7afc: $b1
	rst  $30                                         ; $7afd: $f7
	rra                                              ; $7afe: $1f
	sub  e                                           ; $7aff: $93
	xor  $0f                                         ; $7b00: $ee $0f
	ld   [hl], c                                     ; $7b02: $71
	di                                               ; $7b03: $f3
	rra                                              ; $7b04: $1f
	ld   de, $7ff1                                   ; $7b05: $11 $f1 $7f
	ld   d, [hl]                                     ; $7b08: $56
	ld   sp, hl                                      ; $7b09: $f9
	ld   c, a                                        ; $7b0a: $4f
	dec  d                                           ; $7b0b: $15
	pop  af                                          ; $7b0c: $f1
	adc  a                                           ; $7b0d: $8f
	ld   e, $f1                                      ; $7b0e: $1e $f1
	db   $fc                                         ; $7b10: $fc
	ld   c, e                                        ; $7b11: $4b
	ldh  a, [c]                                      ; $7b12: $f2
	call c, $811f                                    ; $7b13: $dc $1f $81
	push af                                          ; $7b16: $f5
	rra                                              ; $7b17: $1f
	inc  sp                                          ; $7b18: $33
	rst  $30                                         ; $7b19: $f7
	ld   e, a                                        ; $7b1a: $5f
	or   e                                           ; $7b1b: $b3
	di                                               ; $7b1c: $f3
	cpl                                              ; $7b1d: $2f
	ld   [de], a                                     ; $7b1e: $12
	pop  af                                          ; $7b1f: $f1
	sbc  a                                           ; $7b20: $9f
	dec  e                                           ; $7b21: $1d
	db   $e4                                         ; $7b22: $e4
	sbc  a                                           ; $7b23: $9f
	dec  sp                                          ; $7b24: $3b
	pop  hl                                          ; $7b25: $e1
	db   $db                                         ; $7b26: $db
	rra                                              ; $7b27: $1f
	and  c                                           ; $7b28: $a1
	or   $1f                                         ; $7b29: $f6 $1f
	sub  h                                           ; $7b2b: $94
	db   $fd                                         ; $7b2c: $fd
	rra                                              ; $7b2d: $1f
	ld   d, c                                        ; $7b2e: $51
	pop  af                                          ; $7b2f: $f1
	rra                                              ; $7b30: $1f
	inc  de                                          ; $7b31: $13
	pop  af                                          ; $7b32: $f1
	xor  a                                           ; $7b33: $af
	ld   b, a                                        ; $7b34: $47
	push af                                          ; $7b35: $f5
	ld   a, a                                        ; $7b36: $7f
	ld   a, [de]                                     ; $7b37: $1a
	pop  af                                          ; $7b38: $f1
	sbc  $1f                                         ; $7b39: $de $1f
	and  c                                           ; $7b3b: $a1
	ei                                               ; $7b3c: $fb

jr_0eb_7b3d:
	ld   a, $f1                                      ; $7b3d: $3e $f1
	ld   sp, hl                                      ; $7b3f: $f9
	rra                                              ; $7b40: $1f
	ld   sp, $1ff1                                   ; $7b41: $31 $f1 $1f
	rla                                              ; $7b44: $17
	push af                                          ; $7b45: $f5
	ld   l, a                                        ; $7b46: $6f
	ld   [hl], l                                     ; $7b47: $75
	pop  af                                          ; $7b48: $f1
	ld   a, a                                        ; $7b49: $7f
	jr   jr_0eb_7b3d                                 ; $7b4a: $18 $f1

	db   $fd                                         ; $7b4c: $fd
	rra                                              ; $7b4d: $1f
	jp   $1ecf                                       ; $7b4e: $c3 $cf $1e


	or   c                                           ; $7b51: $b1
	or   $1f                                         ; $7b52: $f6 $1f
	ld   hl, $5ff1                                   ; $7b54: $21 $f1 $5f
	ld   h, l                                        ; $7b57: $65
	ld   a, [$143f]                                  ; $7b58: $fa $3f $14
	pop  af                                          ; $7b5b: $f1
	ld   e, a                                        ; $7b5c: $5f
	inc  e                                           ; $7b5d: $1c
	pop  af                                          ; $7b5e: $f1
	db   $dd                                         ; $7b5f: $dd
	ld   a, [hl-]                                    ; $7b60: $3a
	ldh  a, [c]                                      ; $7b61: $f2
	call $911f                                       ; $7b62: $cd $1f $91
	or   $1f                                         ; $7b65: $f6 $1f
	inc  sp                                          ; $7b67: $33
	rst  $30                                         ; $7b68: $f7
	ld   c, a                                        ; $7b69: $4f
	or   d                                           ; $7b6a: $b2
	ldh  a, [c]                                      ; $7b6b: $f2
	cpl                                              ; $7b6c: $2f
	ld   [de], a                                     ; $7b6d: $12
	pop  af                                          ; $7b6e: $f1
	adc  a                                           ; $7b6f: $8f
	inc  e                                           ; $7b70: $1c
	call nc, $3b9f                                   ; $7b71: $d4 $9f $3b
	pop  af                                          ; $7b74: $f1
	db   $db                                         ; $7b75: $db
	rra                                              ; $7b76: $1f
	sub  c                                           ; $7b77: $91
	db   $f4                                         ; $7b78: $f4
	rra                                              ; $7b79: $1f
	add  h                                           ; $7b7a: $84
	db   $fd                                         ; $7b7b: $fd
	cpl                                              ; $7b7c: $2f
	ld   d, c                                        ; $7b7d: $51
	pop  af                                          ; $7b7e: $f1
	rra                                              ; $7b7f: $1f
	ld   d, $f1                                      ; $7b80: $16 $f1
	cp   [hl]                                        ; $7b82: $be
	ld   c, b                                        ; $7b83: $48
	push af                                          ; $7b84: $f5
	sbc  a                                           ; $7b85: $9f
	dec  de                                          ; $7b86: $1b
	pop  bc                                          ; $7b87: $c1
	db   $eb                                         ; $7b88: $eb
	rra                                              ; $7b89: $1f
	ld   [hl], c                                     ; $7b8a: $71
	ld   hl, sp+$4f                                  ; $7b8b: $f8 $4f
	pop  hl                                          ; $7b8d: $e1
	or   $1f                                         ; $7b8e: $f6 $1f
	ld   de, $4ff1                                   ; $7b90: $11 $f1 $4f
	dec  de                                          ; $7b93: $1b
	push af                                          ; $7b94: $f5
	adc  a                                           ; $7b95: $8f
	ld   l, b                                        ; $7b96: $68
	pop  af                                          ; $7b97: $f1
	cp   [hl]                                        ; $7b98: $be
	ld   e, $b1                                      ; $7b99: $1e $b1
	or   $1f                                         ; $7b9b: $f6 $1f
	add  h                                           ; $7b9d: $84
	xor  $2f                                         ; $7b9e: $ee $2f
	ld   h, c                                        ; $7ba0: $61
	pop  af                                          ; $7ba1: $f1
	rra                                              ; $7ba2: $1f
	inc  d                                           ; $7ba3: $14
	pop  af                                          ; $7ba4: $f1
	xor  [hl]                                        ; $7ba5: $ae
	ld   c, c                                        ; $7ba6: $49
	push af                                          ; $7ba7: $f5
	adc  a                                           ; $7ba8: $8f
	dec  de                                          ; $7ba9: $1b
	pop  de                                          ; $7baa: $d1
	ld   a, [$611f]                                  ; $7bab: $fa $1f $61
	ld   hl, sp+$4f                                  ; $7bae: $f8 $4f
	ldh  [c], a                                      ; $7bb0: $e2
	or   $1f                                         ; $7bb1: $f6 $1f
	ld   de, $5ff1                                   ; $7bb3: $11 $f1 $5f
	ld   a, [de]                                     ; $7bb6: $1a
	db   $e4                                         ; $7bb7: $e4
	sbc  a                                           ; $7bb8: $9f
	ld   e, c                                        ; $7bb9: $59
	pop  af                                          ; $7bba: $f1
	call z, $911f                                    ; $7bbb: $cc $1f $91
	push af                                          ; $7bbe: $f5
	rra                                              ; $7bbf: $1f
	add  h                                           ; $7bc0: $84
	db   $fd                                         ; $7bc1: $fd
	cpl                                              ; $7bc2: $2f
	ld   h, c                                        ; $7bc3: $61
	pop  af                                          ; $7bc4: $f1
	rra                                              ; $7bc5: $1f
	dec  d                                           ; $7bc6: $15
	pop  af                                          ; $7bc7: $f1
	cp   [hl]                                        ; $7bc8: $be
	ld   c, b                                        ; $7bc9: $48
	push af                                          ; $7bca: $f5
	xor  a                                           ; $7bcb: $af
	inc  e                                           ; $7bcc: $1c
	pop  de                                          ; $7bcd: $d1
	ld   a, [$511f]                                  ; $7bce: $fa $1f $51
	ld   hl, sp+$4f                                  ; $7bd1: $f8 $4f
	ldh  [c], a                                      ; $7bd3: $e2
	rst  $30                                         ; $7bd4: $f7
	rra                                              ; $7bd5: $1f
	ld   de, $3ff1                                   ; $7bd6: $11 $f1 $3f
	ld   a, [de]                                     ; $7bd9: $1a
	db   $e4                                         ; $7bda: $e4
	sbc  a                                           ; $7bdb: $9f
	ld   l, c                                        ; $7bdc: $69
	pop  af                                          ; $7bdd: $f1
	cp   [hl]                                        ; $7bde: $be
	dec  e                                           ; $7bdf: $1d
	pop  bc                                          ; $7be0: $c1
	rst  $30                                         ; $7be1: $f7
	rra                                              ; $7be2: $1f
	sub  h                                           ; $7be3: $94
	rst  $28                                         ; $7be4: $ef
	ccf                                              ; $7be5: $3f
	and  c                                           ; $7be6: $a1
	ldh  a, [c]                                      ; $7be7: $f2
	rra                                              ; $7be8: $1f
	ld   de, $7ff1                                   ; $7be9: $11 $f1 $7f
	ld   b, a                                        ; $7bec: $47

jr_0eb_7bed:
	ld   hl, sp+$7f                                  ; $7bed: $f8 $7f
	add  hl, de                                      ; $7bef: $19
	pop  af                                          ; $7bf0: $f1
	xor  a                                           ; $7bf1: $af
	ld   e, $a1                                      ; $7bf2: $1e $a1
	ld   sp, hl                                      ; $7bf4: $f9
	ld   c, l                                        ; $7bf5: $4d
	di                                               ; $7bf6: $f3
	db   $fd                                         ; $7bf7: $fd
	rra                                              ; $7bf8: $1f
	ld   [hl], c                                     ; $7bf9: $71
	ldh  a, [c]                                      ; $7bfa: $f2
	rra                                              ; $7bfb: $1f
	inc  d                                           ; $7bfc: $14
	push af                                          ; $7bfd: $f5
	ld   l, a                                        ; $7bfe: $6f
	or   l                                           ; $7bff: $b5
	di                                               ; $7c00: $f3
	ld   e, a                                        ; $7c01: $5f
	inc  d                                           ; $7c02: $14
	pop  af                                          ; $7c03: $f1
	ld   a, [hl]                                     ; $7c04: $7e
	dec  de                                          ; $7c05: $1b
	or   h                                           ; $7c06: $b4
	xor  a                                           ; $7c07: $af
	ld   l, h                                        ; $7c08: $6c
	pop  af                                          ; $7c09: $f1
	db   $ed                                         ; $7c0a: $ed
	ld   e, $a1                                      ; $7c0b: $1e $a1
	push af                                          ; $7c0d: $f5
	ld   e, $75                                      ; $7c0e: $1e $75
	rst  JumpTable                                         ; $7c10: $df
	ld   c, a                                        ; $7c11: $4f
	and  c                                           ; $7c12: $a1
	di                                               ; $7c13: $f3
	rra                                              ; $7c14: $1f
	ld   de, $6cf1                                   ; $7c15: $11 $f1 $6c
	ld   d, a                                        ; $7c18: $57
	ld   a, [$297f]                                  ; $7c19: $fa $7f $29
	pop  af                                          ; $7c1c: $f1
	adc  a                                           ; $7c1d: $8f
	add  hl, de                                      ; $7c1e: $19
	or   c                                           ; $7c1f: $b1
	ret                                              ; $7c20: $c9


	ld   e, d                                        ; $7c21: $5a
	or   $cf                                         ; $7c22: $f6 $cf
	rra                                              ; $7c24: $1f
	and  c                                           ; $7c25: $a1
	rst  $30                                         ; $7c26: $f7
	rra                                              ; $7c27: $1f
	ld   sp, $6cd6                                   ; $7c28: $31 $d6 $6c
	call nc, $3ff8                                   ; $7c2b: $d4 $f8 $3f
	ld   [hl+], a                                    ; $7c2e: $22
	pop  af                                          ; $7c2f: $f1
	cpl                                              ; $7c30: $2f
	rla                                              ; $7c31: $17
	or   l                                           ; $7c32: $b5
	ld   a, a                                        ; $7c33: $7f
	sub  a                                           ; $7c34: $97
	pop  af                                          ; $7c35: $f1
	xor  a                                           ; $7c36: $af
	ld   a, [de]                                     ; $7c37: $1a
	pop  de                                          ; $7c38: $d1
	xor  c                                           ; $7c39: $a9
	dec  de                                          ; $7c3a: $1b
	ld   [hl], l                                     ; $7c3b: $75
	xor  a                                           ; $7c3c: $af
	ld   e, [hl]                                     ; $7c3d: $5e
	pop  hl                                          ; $7c3e: $e1
	rst  $30                                         ; $7c3f: $f7
	rra                                              ; $7c40: $1f
	ld   b, c                                        ; $7c41: $41
	pop  af                                          ; $7c42: $f1
	dec  sp                                          ; $7c43: $3b
	ld   h, [hl]                                     ; $7c44: $66
	db   $dd                                         ; $7c45: $dd
	ld   e, a                                        ; $7c46: $5f
	ld   d, a                                        ; $7c47: $57
	pop  af                                          ; $7c48: $f1
	sbc  [hl]                                        ; $7c49: $9e
	jr   jr_0eb_7bed                                 ; $7c4a: $18 $a1

	sbc  b                                           ; $7c4c: $98
	ld   l, b                                        ; $7c4d: $68
	or   $ce                                         ; $7c4e: $f6 $ce
	rra                                              ; $7c50: $1f
	ld   [hl], c                                     ; $7c51: $71
	ldh  a, [c]                                      ; $7c52: $f2
	dec  hl                                          ; $7c53: $2b
	dec  h                                           ; $7c54: $25
	sub  a                                           ; $7c55: $97
	ld   l, l                                        ; $7c56: $6d
	or   a                                           ; $7c57: $b7
	di                                               ; $7c58: $f3
	db   $ec                                         ; $7c59: $ec
	rra                                              ; $7c5a: $1f
	ld   [hl-], a                                    ; $7c5b: $32
	or   d                                           ; $7c5c: $b2
	ld   h, a                                        ; $7c5d: $67
	sub  [hl]                                        ; $7c5e: $96
	bit  5, a                                        ; $7c5f: $cb $6f
	ld   c, [hl]                                     ; $7c61: $4e
	or   c                                           ; $7c62: $b1
	ldh  a, [c]                                      ; $7c63: $f2
	ld   c, e                                        ; $7c64: $4b
	rla                                              ; $7c65: $17
	ld   l, b                                        ; $7c66: $68
	ld   l, l                                        ; $7c67: $6d
	sub  a                                           ; $7c68: $97
	di                                               ; $7c69: $f3
	rst  $30                                         ; $7c6a: $f7
	ld   c, a                                        ; $7c6b: $4f
	add  hl, de                                      ; $7c6c: $19
	ld   [hl], d                                     ; $7c6d: $72
	halt                                             ; $7c6e: $76
	sub  [hl]                                        ; $7c6f: $96
	rst  $20                                         ; $7c70: $e7
	cp   e                                           ; $7c71: $bb
	ld   e, a                                        ; $7c72: $5f
	inc  l                                           ; $7c73: $2c
	sub  c                                           ; $7c74: $91
	jp   nz, $8866                                   ; $7c75: $c2 $66 $88

	adc  h                                           ; $7c78: $8c
	ld   e, l                                        ; $7c79: $5d
	ld   l, h                                        ; $7c7a: $6c
	and  e                                           ; $7c7b: $a3
	pop  af                                          ; $7c7c: $f1
	sbc  b                                           ; $7c7d: $98
	jr   c, jr_0eb_7ce9                              ; $7c7e: $38 $69

	ld   l, l                                        ; $7c80: $6d
	ld   a, d                                        ; $7c81: $7a
	or   [hl]                                        ; $7c82: $b6
	ldh  a, [c]                                      ; $7c83: $f2
	ret                                              ; $7c84: $c9


	dec  hl                                          ; $7c85: $2b
	scf                                              ; $7c86: $37
	ld   e, c                                        ; $7c87: $59
	ld   l, c                                        ; $7c88: $69
	push bc                                          ; $7c89: $c5
	add  $d7                                         ; $7c8a: $c6 $d7
	ld   a, l                                        ; $7c8c: $7d
	ld   a, [de]                                     ; $7c8d: $1a
	ld   d, l                                        ; $7c8e: $55
	halt                                             ; $7c8f: $76
	sub  [hl]                                        ; $7c90: $96
	push de                                          ; $7c91: $d5
	cp   b                                           ; $7c92: $b8
	xor  e                                           ; $7c93: $ab
	ld   c, [hl]                                     ; $7c94: $4e
	jr   z, @-$7a                                    ; $7c95: $28 $84

	add  [hl]                                        ; $7c97: $86
	and  l                                           ; $7c98: $a5
	rst  ToBoot                                         ; $7c99: $c7
	sbc  d                                           ; $7c9a: $9a
	adc  e                                           ; $7c9b: $8b
	ld   c, h                                        ; $7c9c: $4c
	ld   d, [hl]                                     ; $7c9d: $56
	and  h                                           ; $7c9e: $a4
	add  [hl]                                        ; $7c9f: $86
	sub  [hl]                                        ; $7ca0: $96
	cp   b                                           ; $7ca1: $b8
	adc  d                                           ; $7ca2: $8a
	ld   a, e                                        ; $7ca3: $7b
	ld   c, e                                        ; $7ca4: $4b
	ld   h, [hl]                                     ; $7ca5: $66
	and  h                                           ; $7ca6: $a4
	add  [hl]                                        ; $7ca7: $86
	sub  [hl]                                        ; $7ca8: $96
	cp   b                                           ; $7ca9: $b8
	ld   a, d                                        ; $7caa: $7a
	ld   a, e                                        ; $7cab: $7b
	ld   l, d                                        ; $7cac: $6a
	halt                                             ; $7cad: $76
	sub  l                                           ; $7cae: $95
	add  [hl]                                        ; $7caf: $86
	add  [hl]                                        ; $7cb0: $86
	cp   c                                           ; $7cb1: $b9
	adc  d                                           ; $7cb2: $8a
	adc  e                                           ; $7cb3: $8b
	ld   l, d                                        ; $7cb4: $6a
	halt                                             ; $7cb5: $76
	sub  l                                           ; $7cb6: $95
	ld   [hl], a                                     ; $7cb7: $77
	sub  a                                           ; $7cb8: $97
	sbc  b                                           ; $7cb9: $98
	adc  d                                           ; $7cba: $8a
	sbc  c                                           ; $7cbb: $99
	ld   a, e                                        ; $7cbc: $7b
	ld   [hl], a                                     ; $7cbd: $77
	add  [hl]                                        ; $7cbe: $86
	ld   [hl], a                                     ; $7cbf: $77
	ld   [hl], a                                     ; $7cc0: $77
	and  a                                           ; $7cc1: $a7
	adc  d                                           ; $7cc2: $8a
	sbc  d                                           ; $7cc3: $9a
	adc  c                                           ; $7cc4: $89
	ld   a, b                                        ; $7cc5: $78
	halt                                             ; $7cc6: $76
	ld   [hl], a                                     ; $7cc7: $77
	add  a                                           ; $7cc8: $87
	adc  b                                           ; $7cc9: $88
	sbc  d                                           ; $7cca: $9a
	sbc  d                                           ; $7ccb: $9a
	sbc  c                                           ; $7ccc: $99
	ld   [hl], a                                     ; $7ccd: $77
	ld   [hl], a                                     ; $7cce: $77
	ld   [hl], a                                     ; $7ccf: $77
	ld   [hl], a                                     ; $7cd0: $77
	adc  b                                           ; $7cd1: $88
	sbc  d                                           ; $7cd2: $9a
	xor  b                                           ; $7cd3: $a8
	sbc  b                                           ; $7cd4: $98
	ld   a, c                                        ; $7cd5: $79
	ld   [hl], a                                     ; $7cd6: $77
	ld   [hl], a                                     ; $7cd7: $77
	ld   a, b                                        ; $7cd8: $78
	adc  b                                           ; $7cd9: $88
	sbc  b                                           ; $7cda: $98
	sbc  c                                           ; $7cdb: $99
	adc  c                                           ; $7cdc: $89
	add  a                                           ; $7cdd: $87
	ld   [hl], a                                     ; $7cde: $77
	ld   [hl], a                                     ; $7cdf: $77
	add  a                                           ; $7ce0: $87
	sbc  b                                           ; $7ce1: $98
	sbc  c                                           ; $7ce2: $99
	sbc  b                                           ; $7ce3: $98
	sbc  b                                           ; $7ce4: $98
	ld   [hl], a                                     ; $7ce5: $77
	ld   [hl], a                                     ; $7ce6: $77
	add  a                                           ; $7ce7: $87
	adc  b                                           ; $7ce8: $88

jr_0eb_7ce9:
	sbc  b                                           ; $7ce9: $98
	adc  c                                           ; $7cea: $89
	sbc  b                                           ; $7ceb: $98
	add  a                                           ; $7cec: $87
	ld   [hl], a                                     ; $7ced: $77
	ld   a, b                                        ; $7cee: $78
	adc  c                                           ; $7cef: $89
	adc  b                                           ; $7cf0: $88
	adc  c                                           ; $7cf1: $89
	sbc  b                                           ; $7cf2: $98
	add  a                                           ; $7cf3: $87
	ld   [hl], a                                     ; $7cf4: $77
	ld   a, b                                        ; $7cf5: $78
	adc  c                                           ; $7cf6: $89
	sbc  c                                           ; $7cf7: $99
	sbc  c                                           ; $7cf8: $99
	adc  b                                           ; $7cf9: $88
	add  a                                           ; $7cfa: $87
	ld   [hl], a                                     ; $7cfb: $77
	ld   a, b                                        ; $7cfc: $78
	adc  c                                           ; $7cfd: $89
	adc  c                                           ; $7cfe: $89
	sbc  c                                           ; $7cff: $99
	adc  c                                           ; $7d00: $89
	adc  b                                           ; $7d01: $88
	add  a                                           ; $7d02: $87
	adc  b                                           ; $7d03: $88
	adc  b                                           ; $7d04: $88
	adc  b                                           ; $7d05: $88
	adc  c                                           ; $7d06: $89
	adc  b                                           ; $7d07: $88
	adc  b                                           ; $7d08: $88
	adc  b                                           ; $7d09: $88
	adc  b                                           ; $7d0a: $88
	adc  b                                           ; $7d0b: $88
	sbc  b                                           ; $7d0c: $98
	adc  b                                           ; $7d0d: $88
	adc  b                                           ; $7d0e: $88
	adc  b                                           ; $7d0f: $88
	ld   a, b                                        ; $7d10: $78
	adc  b                                           ; $7d11: $88
	sbc  b                                           ; $7d12: $98
	adc  c                                           ; $7d13: $89
	adc  b                                           ; $7d14: $88
	adc  b                                           ; $7d15: $88
	adc  b                                           ; $7d16: $88
	adc  b                                           ; $7d17: $88
	adc  b                                           ; $7d18: $88
	adc  b                                           ; $7d19: $88
	adc  c                                           ; $7d1a: $89
	adc  b                                           ; $7d1b: $88
	sbc  b                                           ; $7d1c: $98
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
	adc  c                                           ; $7e3a: $89
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
	adc  c                                           ; $7e4e: $89
	ld   a, b                                        ; $7e4f: $78
	adc  b                                           ; $7e50: $88
	adc  b                                           ; $7e51: $88
	adc  b                                           ; $7e52: $88
	sbc  b                                           ; $7e53: $98
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
	adc  c                                           ; $7e7f: $89
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
	adc  c                                           ; $7e8a: $89
	sbc  b                                           ; $7e8b: $98
	adc  b                                           ; $7e8c: $88
	adc  b                                           ; $7e8d: $88
	adc  b                                           ; $7e8e: $88
	ld   [hl], a                                     ; $7e8f: $77
	adc  b                                           ; $7e90: $88
	adc  b                                           ; $7e91: $88
	adc  b                                           ; $7e92: $88
	adc  b                                           ; $7e93: $88
	adc  c                                           ; $7e94: $89
	sbc  c                                           ; $7e95: $99
	adc  b                                           ; $7e96: $88
	sbc  b                                           ; $7e97: $98
	ld   [hl], a                                     ; $7e98: $77
	ld   [hl], a                                     ; $7e99: $77
	ld   [hl], a                                     ; $7e9a: $77
	ld   a, b                                        ; $7e9b: $78
	sbc  c                                           ; $7e9c: $99
	sbc  c                                           ; $7e9d: $99
	sbc  b                                           ; $7e9e: $98
	sbc  b                                           ; $7e9f: $98
	sbc  c                                           ; $7ea0: $99
	ld   [hl], a                                     ; $7ea1: $77
	halt                                             ; $7ea2: $76
	ld   [hl], a                                     ; $7ea3: $77
	ld   a, b                                        ; $7ea4: $78
	adc  b                                           ; $7ea5: $88
	sbc  c                                           ; $7ea6: $99
	sbc  c                                           ; $7ea7: $99
	xor  d                                           ; $7ea8: $aa
	sub  a                                           ; $7ea9: $97
	adc  b                                           ; $7eaa: $88
	ld   h, a                                        ; $7eab: $67
	ld   h, [hl]                                     ; $7eac: $66
	ld   l, b                                        ; $7ead: $68
	ld   [hl], a                                     ; $7eae: $77
	xor  c                                           ; $7eaf: $a9
	sbc  d                                           ; $7eb0: $9a
	sbc  c                                           ; $7eb1: $99
	adc  c                                           ; $7eb2: $89
	ld   [hl], a                                     ; $7eb3: $77
	add  [hl]                                        ; $7eb4: $86
	halt                                             ; $7eb5: $76
	ld   h, a                                        ; $7eb6: $67
	ld   a, c                                        ; $7eb7: $79
	sbc  d                                           ; $7eb8: $9a
	sbc  d                                           ; $7eb9: $9a
	xor  c                                           ; $7eba: $a9
	xor  c                                           ; $7ebb: $a9
	sub  [hl]                                        ; $7ebc: $96
	ld   a, b                                        ; $7ebd: $78
	ld   b, [hl]                                     ; $7ebe: $46
	ld   h, l                                        ; $7ebf: $65
	ld   h, a                                        ; $7ec0: $67
	sbc  c                                           ; $7ec1: $99
	xor  h                                           ; $7ec2: $ac
	cp   e                                           ; $7ec3: $bb
	xor  e                                           ; $7ec4: $ab
	add  a                                           ; $7ec5: $87
	ld   h, h                                        ; $7ec6: $64
	ld   h, h                                        ; $7ec7: $64
	ld   b, l                                        ; $7ec8: $45
	ld   d, [hl]                                     ; $7ec9: $56
	ld   a, d                                        ; $7eca: $7a
	cp   e                                           ; $7ecb: $bb
	db   $ed                                         ; $7ecc: $ed
	db   $db                                         ; $7ecd: $db
	cp   c                                           ; $7ece: $b9
	halt                                             ; $7ecf: $76
	inc  [hl]                                        ; $7ed0: $34
	ld   b, c                                        ; $7ed1: $41
	inc  [hl]                                        ; $7ed2: $34
	ld   [hl], a                                     ; $7ed3: $77
	sbc  l                                           ; $7ed4: $9d
	adc  $ff                                         ; $7ed5: $ce $ff
	jp   c, $31a5                                    ; $7ed7: $da $a5 $31

	ld   [hl-], a                                    ; $7eda: $32
	inc  de                                          ; $7edb: $13
	ld   b, [hl]                                     ; $7edc: $46
	ld   a, e                                        ; $7edd: $7b
	db   $fd                                         ; $7ede: $fd
	rst  $38                                         ; $7edf: $ff
	db   $fd                                         ; $7ee0: $fd
	cp   c                                           ; $7ee1: $b9
	ld   sp, $1111                                   ; $7ee2: $31 $11 $11
	ld   b, l                                        ; $7ee5: $45
	ld   e, d                                        ; $7ee6: $5a
	rst  $38                                         ; $7ee7: $ff
	rst  $38                                         ; $7ee8: $ff
	db   $fd                                         ; $7ee9: $fd
	call z, $1141                                    ; $7eea: $cc $41 $11
	ld   de, $7814                                   ; $7eed: $11 $14 $78
	rst  $38                                         ; $7ef0: $ff
	rst  $38                                         ; $7ef1: $ff
	rst  $38                                         ; $7ef2: $ff
	jp   z, $1161                                    ; $7ef3: $ca $61 $11

	ld   de, $7b14                                   ; $7ef6: $11 $14 $7b
	rst  $38                                         ; $7ef9: $ff
	rst  $38                                         ; $7efa: $ff
	rst  $38                                         ; $7efb: $ff
	ret  z                                           ; $7efc: $c8

	ld   [hl], c                                     ; $7efd: $71
	ld   de, $1411                                   ; $7efe: $11 $11 $14
	sbc  h                                           ; $7f01: $9c
	rst  $38                                         ; $7f02: $ff
	rst  $38                                         ; $7f03: $ff
	rst  $38                                         ; $7f04: $ff
	or   [hl]                                        ; $7f05: $b6
	ld   h, c                                        ; $7f06: $61
	ld   de, $1511                                   ; $7f07: $11 $11 $15
	sbc  [hl]                                        ; $7f0a: $9e
	rst  $38                                         ; $7f0b: $ff
	rst  $38                                         ; $7f0c: $ff
	cp   $b5                                         ; $7f0d: $fe $b5
	ld   b, c                                        ; $7f0f: $41
	ld   de, $1711                                   ; $7f10: $11 $11 $17
	cp   [hl]                                        ; $7f13: $be
	rst  $38                                         ; $7f14: $ff
	rst  $38                                         ; $7f15: $ff
	db   $fd                                         ; $7f16: $fd
	add  h                                           ; $7f17: $84
	ld   sp, $1111                                   ; $7f18: $31 $11 $11
	add  hl, de                                      ; $7f1b: $19
	xor  $ff                                         ; $7f1c: $ee $ff
	rst  $38                                         ; $7f1e: $ff
	db   $fc                                         ; $7f1f: $fc
	ld   h, e                                        ; $7f20: $63
	ld   sp, $1111                                   ; $7f21: $31 $11 $11
	ld   a, [hl+]                                    ; $7f24: $2a
	rst  $38                                         ; $7f25: $ff
	rst  $38                                         ; $7f26: $ff
	rst  $38                                         ; $7f27: $ff
	ld   a, [$3152]                                  ; $7f28: $fa $52 $31
	ld   de, $3a12                                   ; $7f2b: $11 $12 $3a
	rst  $38                                         ; $7f2e: $ff
	rst  $38                                         ; $7f2f: $ff
	db   $fd                                         ; $7f30: $fd
	db   $db                                         ; $7f31: $db
	ld   d, c                                        ; $7f32: $51
	ld   hl, $2211                                   ; $7f33: $21 $11 $22
	ld   c, e                                        ; $7f36: $4b
	rst  $38                                         ; $7f37: $ff
	rst  $38                                         ; $7f38: $ff
	db   $fd                                         ; $7f39: $fd
	cp   c                                           ; $7f3a: $b9
	ld   b, c                                        ; $7f3b: $41
	ld   sp, $2311                                   ; $7f3c: $31 $11 $23
	ld   l, h                                        ; $7f3f: $6c
	rst  $28                                         ; $7f40: $ef
	rst  $38                                         ; $7f41: $ff
	cp   $c7                                         ; $7f42: $fe $c7
	ld   h, c                                        ; $7f44: $61
	ld   de, $1411                                   ; $7f45: $11 $11 $14
	ld   l, e                                        ; $7f48: $6b
	rst  JumpTable                                         ; $7f49: $df
	rst  $38                                         ; $7f4a: $ff
	db   $fd                                         ; $7f4b: $fd
	or   a                                           ; $7f4c: $b7
	ld   [hl], c                                     ; $7f4d: $71
	inc  hl                                          ; $7f4e: $23
	ld   de, $5914                                   ; $7f4f: $11 $14 $59
	cp   a                                           ; $7f52: $bf
	rst  $38                                         ; $7f53: $ff
	rst  $38                                         ; $7f54: $ff
	rst  $20                                         ; $7f55: $e7
	ld   [hl], l                                     ; $7f56: $75
	ld   [de], a                                     ; $7f57: $12
	ld   hl, $5812                                   ; $7f58: $21 $12 $58
	cp   d                                           ; $7f5b: $ba
	rst  $38                                         ; $7f5c: $ff
	rst  $38                                         ; $7f5d: $ff
	ei                                               ; $7f5e: $fb
	halt                                             ; $7f5f: $76
	ld   b, c                                        ; $7f60: $41
	inc  hl                                          ; $7f61: $23
	ld   de, $9b37                                   ; $7f62: $11 $37 $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f65: $cf
	rst  $38                                         ; $7f66: $ff
	db   $fd                                         ; $7f67: $fd
	sub  l                                           ; $7f68: $95
	ld   h, e                                        ; $7f69: $63
	inc  d                                           ; $7f6a: $14
	ld   [hl-], a                                    ; $7f6b: $32
	dec  d                                           ; $7f6c: $15
	ld   a, d                                        ; $7f6d: $7a
	xor  h                                           ; $7f6e: $ac
	cp   $ef                                         ; $7f6f: $fe $ef
	reti                                             ; $7f71: $d9


	ld   h, [hl]                                     ; $7f72: $66
	inc  sp                                          ; $7f73: $33
	ld   b, e                                        ; $7f74: $43
	ld   hl, $a947                                   ; $7f75: $21 $47 $a9
	cp   a                                           ; $7f78: $bf
	db   $ed                                         ; $7f79: $ed
	cp   $94                                         ; $7f7a: $fe $94
	ld   [hl], e                                     ; $7f7c: $73
	dec  [hl]                                        ; $7f7d: $35
	ld   d, e                                        ; $7f7e: $53
	inc  d                                           ; $7f7f: $14
	ld   a, e                                        ; $7f80: $7b
	xor  b                                           ; $7f81: $a8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f82: $cf
	xor  $da                                         ; $7f83: $ee $da
	ld   h, h                                        ; $7f85: $64
	ld   h, h                                        ; $7f86: $64
	ld   d, [hl]                                     ; $7f87: $56
	ld   b, d                                        ; $7f88: $42
	ld   h, $9a                                      ; $7f89: $26 $9a
	adc  d                                           ; $7f8b: $8a
	db   $dd                                         ; $7f8c: $dd
	rst  $28                                         ; $7f8d: $ef
	rst  ToBoot                                         ; $7f8e: $c7
	ld   h, [hl]                                     ; $7f8f: $66
	ld   b, l                                        ; $7f90: $45
	ld   [hl], l                                     ; $7f91: $75
	ld   sp, $a959                                   ; $7f92: $31 $59 $a9
	sbc  e                                           ; $7f95: $9b
	set  5, [hl]                                     ; $7f96: $cb $ee
	or   [hl]                                        ; $7f98: $b6
	ld   b, [hl]                                     ; $7f99: $46
	ld   b, [hl]                                     ; $7f9a: $46
	ld   d, l                                        ; $7f9b: $55
	inc  hl                                          ; $7f9c: $23

jr_0eb_7f9d:
	adc  b                                           ; $7f9d: $88
	sub  a                                           ; $7f9e: $97
	xor  l                                           ; $7f9f: $ad
	sbc  $dd                                         ; $7fa0: $de $dd
	ld   [hl], h                                     ; $7fa2: $74
	ld   b, [hl]                                     ; $7fa3: $46
	ld   [hl], a                                     ; $7fa4: $77
	ld   [hl], h                                     ; $7fa5: $74
	dec  h                                           ; $7fa6: $25
	ld   [hl], a                                     ; $7fa7: $77
	ld   [hl], a                                     ; $7fa8: $77
	xor  [hl]                                        ; $7fa9: $ae
	cp   $da                                         ; $7faa: $fe $da
	ld   h, e                                        ; $7fac: $63
	ld   h, a                                        ; $7fad: $67
	ld   [hl], a                                     ; $7fae: $77
	ld   d, e                                        ; $7faf: $53
	ld   d, $87                                      ; $7fb0: $16 $87
	add  a                                           ; $7fb2: $87
	sbc  $cf                                         ; $7fb3: $de $cf
	jp   c, Jump_0eb_7646                            ; $7fb5: $da $46 $76

	halt                                             ; $7fb8: $76
	ld   d, c                                        ; $7fb9: $51
	ld   h, $88                                      ; $7fba: $26 $88
	ld   a, b                                        ; $7fbc: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fbd: $cf
	rst  $28                                         ; $7fbe: $ef
	ret                                              ; $7fbf: $c9


	ld   b, h                                        ; $7fc0: $44
	halt                                             ; $7fc1: $76
	ld   [hl], l                                     ; $7fc2: $75
	ld   sp, $8a49                                   ; $7fc3: $31 $49 $8a
	sbc  e                                           ; $7fc6: $9b
	sbc  h                                           ; $7fc7: $9c
	rst  $38                                         ; $7fc8: $ff
	add  $54                                         ; $7fc9: $c6 $54
	ld   d, a                                        ; $7fcb: $57
	ld   h, l                                        ; $7fcc: $65
	ld   [hl+], a                                    ; $7fcd: $22
	ld   e, b                                        ; $7fce: $58
	xor  d                                           ; $7fcf: $aa
	cp   b                                           ; $7fd0: $b8
	sbc  e                                           ; $7fd1: $9b
	rst  $38                                         ; $7fd2: $ff
	sbc  b                                           ; $7fd3: $98
	ld   d, h                                        ; $7fd4: $54
	ld   d, [hl]                                     ; $7fd5: $56
	add  h                                           ; $7fd6: $84
	ld   [hl-], a                                    ; $7fd7: $32
	ld   a, c                                        ; $7fd8: $79
	sbc  d                                           ; $7fd9: $9a
	adc  d                                           ; $7fda: $8a
	sbc  [hl]                                        ; $7fdb: $9e
	db   $fc                                         ; $7fdc: $fc
	and  [hl]                                        ; $7fdd: $a6
	ld   d, l                                        ; $7fde: $55
	ld   [hl], a                                     ; $7fdf: $77
	ld   d, h                                        ; $7fe0: $54
	inc  de                                          ; $7fe1: $13
	adc  c                                           ; $7fe2: $89
	sbc  c                                           ; $7fe3: $99
	cp   d                                           ; $7fe4: $ba
	xor  l                                           ; $7fe5: $ad
	db   $ed                                         ; $7fe6: $ed
	ld   [hl], l                                     ; $7fe7: $75
	ld   h, l                                        ; $7fe8: $65
	ld   h, l                                        ; $7fe9: $65
	ld   d, e                                        ; $7fea: $53
	dec  d                                           ; $7feb: $15
	cp   c                                           ; $7fec: $b9
	xor  d                                           ; $7fed: $aa
	xor  h                                           ; $7fee: $ac
	call $76ca                                       ; $7fef: $cd $ca $76
	ld   h, [hl]                                     ; $7ff2: $66
	ld   [hl], l                                     ; $7ff3: $75
	ld   b, c                                        ; $7ff4: $41
	ld   b, a                                        ; $7ff5: $47
	ld   a, d                                        ; $7ff6: $7a
	xor  d                                           ; $7ff7: $aa
	sbc  h                                           ; $7ff8: $9c
	db   $ec                                         ; $7ff9: $ec
	xor  b                                           ; $7ffa: $a8
	ld   [hl], l                                     ; $7ffb: $75
	ld   [hl], a                                     ; $7ffc: $77
	ld   h, h                                        ; $7ffd: $64
	db   $21                                         ; $7ffe: $21
	db   $38                                         ; $7fff: $38
