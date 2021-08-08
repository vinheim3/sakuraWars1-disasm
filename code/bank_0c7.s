; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0c7", ROMX[$4000], BANK[$c7]

	xor  a                                           ; $4000: $af
	rst  $38                                         ; $4001: $ff
	rst  $38                                         ; $4002: $ff
	rst  $38                                         ; $4003: $ff
	rst  $38                                         ; $4004: $ff
	rst  $38                                         ; $4005: $ff
	db   $fd                                         ; $4006: $fd
	ld   [hl], d                                     ; $4007: $72
	ld   de, $1111                                   ; $4008: $11 $11 $11
	ld   de, $1214                                   ; $400b: $11 $14 $12
	cp   a                                           ; $400e: $bf
	rst  $38                                         ; $400f: $ff
	rst  $38                                         ; $4010: $ff
	rst  $38                                         ; $4011: $ff
	rst  $38                                         ; $4012: $ff
	rst  $38                                         ; $4013: $ff
	db   $fd                                         ; $4014: $fd
	ld   h, c                                        ; $4015: $61
	ld   de, $1111                                   ; $4016: $11 $11 $11
	ld   de, $1314                                   ; $4019: $11 $14 $13
	cp   a                                           ; $401c: $bf
	rst  $38                                         ; $401d: $ff
	rst  $38                                         ; $401e: $ff
	rst  $38                                         ; $401f: $ff
	rst  $38                                         ; $4020: $ff
	rst  $38                                         ; $4021: $ff
	cp   $91                                         ; $4022: $fe $91
	ld   de, $1111                                   ; $4024: $11 $11 $11
	ld   de, $3114                                   ; $4027: $11 $14 $31
	xor  a                                           ; $402a: $af
	rst  $38                                         ; $402b: $ff
	rst  $38                                         ; $402c: $ff
	rst  $38                                         ; $402d: $ff
	rst  $38                                         ; $402e: $ff
	rst  $38                                         ; $402f: $ff
	db   $ed                                         ; $4030: $ed
	add  c                                           ; $4031: $81
	ld   de, $1111                                   ; $4032: $11 $11 $11
	ld   de, $8311                                   ; $4035: $11 $11 $83
	sbc  a                                           ; $4038: $9f
	rst  $38                                         ; $4039: $ff
	rst  $38                                         ; $403a: $ff
	rst  $38                                         ; $403b: $ff
	rst  $38                                         ; $403c: $ff
	rst  $38                                         ; $403d: $ff
	call c, $1183                                    ; $403e: $dc $83 $11
	ld   de, $1111                                   ; $4041: $11 $11 $11
	ld   de, $7db5                                   ; $4044: $11 $b5 $7d
	rst  $38                                         ; $4047: $ff
	rst  $38                                         ; $4048: $ff
	rst  $38                                         ; $4049: $ff
	rst  $38                                         ; $404a: $ff
	rst  $38                                         ; $404b: $ff
	cp   l                                           ; $404c: $bd
	sub  e                                           ; $404d: $93
	ld   de, $1111                                   ; $404e: $11 $11 $11
	ld   de, $6a11                                   ; $4051: $11 $11 $6a
	ld   l, l                                        ; $4054: $6d
	rst  $38                                         ; $4055: $ff
	rst  $38                                         ; $4056: $ff
	rst  $38                                         ; $4057: $ff
	rst  $38                                         ; $4058: $ff
	rst  $38                                         ; $4059: $ff
	jp   c, $1184                                    ; $405a: $da $84 $11

	ld   de, $1111                                   ; $405d: $11 $11 $11
	ld   de, $ad2f                                   ; $4060: $11 $2f $ad
	rst  $38                                         ; $4063: $ff
	rst  $38                                         ; $4064: $ff
	rst  $38                                         ; $4065: $ff
	rst  $38                                         ; $4066: $ff
	rst  $38                                         ; $4067: $ff
	rst  $30                                         ; $4068: $f7
	ld   h, [hl]                                     ; $4069: $66
	ld   sp, $1111                                   ; $406a: $31 $11 $11
	ld   de, $1931                                   ; $406d: $11 $31 $19
	db   $fd                                         ; $4070: $fd
	rst  JumpTable                                         ; $4071: $df
	rst  $38                                         ; $4072: $ff
	rst  $38                                         ; $4073: $ff
	rst  $38                                         ; $4074: $ff
	rst  $28                                         ; $4075: $ef
	ei                                               ; $4076: $fb
	ld   [hl], h                                     ; $4077: $74
	ld   h, d                                        ; $4078: $62
	ld   de, $1111                                   ; $4079: $11 $11 $11
	ld   d, $11                                      ; $407c: $16 $11
	rst  JumpTable                                         ; $407e: $df
	db   $ed                                         ; $407f: $ed
	rst  $38                                         ; $4080: $ff
	rst  $38                                         ; $4081: $ff
	rst  $38                                         ; $4082: $ff
	db   $fc                                         ; $4083: $fc
	rst  $38                                         ; $4084: $ff
	and  l                                           ; $4085: $a5
	dec  [hl]                                        ; $4086: $35
	ld   sp, $1111                                   ; $4087: $31 $11 $11
	ld   de, $1ea1                                   ; $408a: $11 $a1 $1e
	db   $fd                                         ; $408d: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $408e: $cf
	rst  $38                                         ; $408f: $ff
	rst  $38                                         ; $4090: $ff
	rst  $38                                         ; $4091: $ff
	cp   h                                           ; $4092: $bc
	ei                                               ; $4093: $fb
	ld   d, e                                        ; $4094: $53
	ld   d, l                                        ; $4095: $55
	ld   de, $1111                                   ; $4096: $11 $11 $11
	ld   a, [de]                                     ; $4099: $1a
	ld   hl, $fccf                                   ; $409a: $21 $cf $fc
	rst  $38                                         ; $409d: $ff
	rst  $38                                         ; $409e: $ff
	rst  $38                                         ; $409f: $ff
	ei                                               ; $40a0: $fb
	cp   a                                           ; $40a1: $bf
	rst  ToBoot                                         ; $40a2: $c7
	inc  h                                           ; $40a3: $24
	ld   [hl], c                                     ; $40a4: $71
	ld   de, $1111                                   ; $40a5: $11 $11 $11
	ld   c, c                                        ; $40a8: $49
	dec  d                                           ; $40a9: $15
	rst  $38                                         ; $40aa: $ff
	db   $ed                                         ; $40ab: $ed
	rst  $38                                         ; $40ac: $ff
	rst  $38                                         ; $40ad: $ff
	rst  $38                                         ; $40ae: $ff
	ld   hl, sp-$23                                  ; $40af: $f8 $dd
	sub  e                                           ; $40b1: $93
	rla                                              ; $40b2: $17
	ld   h, c                                        ; $40b3: $61
	ld   de, $1111                                   ; $40b4: $11 $11 $11
	or   c                                           ; $40b7: $b1
	rra                                              ; $40b8: $1f
	rst  $38                                         ; $40b9: $ff
	cp   a                                           ; $40ba: $bf
	rst  $38                                         ; $40bb: $ff
	db   $fc                                         ; $40bc: $fc
	rst  $38                                         ; $40bd: $ff
	sbc  c                                           ; $40be: $99
	cp   l                                           ; $40bf: $bd
	ld   h, c                                        ; $40c0: $61
	ld   c, c                                        ; $40c1: $49
	ld   hl, $1111                                   ; $40c2: $21 $11 $11
	inc  de                                          ; $40c5: $13
	or   c                                           ; $40c6: $b1
	cpl                                              ; $40c7: $2f
	rst  $38                                         ; $40c8: $ff
	rst  JumpTable                                         ; $40c9: $df
	rst  $38                                         ; $40ca: $ff
	db   $ec                                         ; $40cb: $ec
	rst  $38                                         ; $40cc: $ff
	ld   a, d                                        ; $40cd: $7a
	cp   e                                           ; $40ce: $bb
	ld   sp, $1157                                   ; $40cf: $31 $57 $11
	ld   de, $1311                                   ; $40d2: $11 $11 $13
	pop  bc                                          ; $40d5: $c1
	ld   e, a                                        ; $40d6: $5f
	rst  $38                                         ; $40d7: $ff
	rst  JumpTable                                         ; $40d8: $df
	rst  $38                                         ; $40d9: $ff
	db   $db                                         ; $40da: $db
	rst  $38                                         ; $40db: $ff
	ld   [hl], a                                     ; $40dc: $77
	xor  c                                           ; $40dd: $a9
	ld   hl, $1157                                   ; $40de: $21 $57 $11
	ld   de, $1711                                   ; $40e1: $11 $11 $17
	pop  bc                                          ; $40e4: $c1
	sbc  a                                           ; $40e5: $9f
	rst  $38                                         ; $40e6: $ff
	rst  JumpTable                                         ; $40e7: $df
	rst  $38                                         ; $40e8: $ff
	cp   d                                           ; $40e9: $ba
	cp   $66                                         ; $40ea: $fe $66
	sbc  b                                           ; $40ec: $98
	ld   hl, $3148                                   ; $40ed: $21 $48 $31
	ld   de, $1511                                   ; $40f0: $11 $11 $15

jr_0c7_40f3:
	pop  de                                          ; $40f3: $d1
	ld   a, a                                        ; $40f4: $7f
	rst  $38                                         ; $40f5: $ff
	rst  JumpTable                                         ; $40f6: $df
	rst  $38                                         ; $40f7: $ff
	xor  b                                           ; $40f8: $a8
	rst  $38                                         ; $40f9: $ff
	ld   h, h                                        ; $40fa: $64
	ld   l, c                                        ; $40fb: $69
	ld   sp, $5139                                   ; $40fc: $31 $39 $51
	ld   de, $1411                                   ; $40ff: $11 $11 $14
	pop  hl                                          ; $4102: $e1
	adc  a                                           ; $4103: $8f
	rst  $38                                         ; $4104: $ff
	rst  $28                                         ; $4105: $ef
	rst  $38                                         ; $4106: $ff
	and  [hl]                                        ; $4107: $a6
	rst  $38                                         ; $4108: $ff
	ld   [hl], d                                     ; $4109: $72
	ld   l, b                                        ; $410a: $68
	ld   b, c                                        ; $410b: $41
	add  hl, sp                                      ; $410c: $39
	ld   h, e                                        ; $410d: $63
	ld   de, $1111                                   ; $410e: $11 $11 $11
	di                                               ; $4111: $f3
	ld   l, a                                        ; $4112: $6f
	rst  $38                                         ; $4113: $ff
	rst  JumpTable                                         ; $4114: $df
	rst  $38                                         ; $4115: $ff
	call nz, Call_0c7_74ff                           ; $4116: $c4 $ff $74
	jr   c, jr_0c7_416c                              ; $4119: $38 $51

	add  hl, sp                                      ; $411b: $39
	add  h                                           ; $411c: $84
	ld   de, $1111                                   ; $411d: $11 $11 $11
	add  $4f                                         ; $4120: $c6 $4f
	rst  $38                                         ; $4122: $ff
	rst  $38                                         ; $4123: $ff
	rst  $38                                         ; $4124: $ff
	push hl                                          ; $4125: $e5
	rst  JumpTable                                         ; $4126: $df
	sub  h                                           ; $4127: $94
	scf                                              ; $4128: $37
	ld   h, d                                        ; $4129: $62
	ld   a, [hl-]                                    ; $412a: $3a
	and  l                                           ; $412b: $a5
	ld   hl, $1111                                   ; $412c: $21 $11 $11
	ret  z                                           ; $412f: $c8

	cpl                                              ; $4130: $2f
	rst  $38                                         ; $4131: $ff
	rst  $38                                         ; $4132: $ff
	rst  $38                                         ; $4133: $ff
	push af                                          ; $4134: $f5
	xor  a                                           ; $4135: $af
	or   h                                           ; $4136: $b4
	ld   h, $65                                      ; $4137: $26 $65
	jr   c, jr_0c7_40f3                              ; $4139: $38 $b8

	ld   b, c                                        ; $413b: $41
	ld   de, $9a11                                   ; $413c: $11 $11 $9a
	rra                                              ; $413f: $1f
	rst  $38                                         ; $4140: $ff
	rst  $38                                         ; $4141: $ff
	rst  $38                                         ; $4142: $ff
	ld   hl, sp+$7f                                  ; $4143: $f8 $7f
	push bc                                          ; $4145: $c5
	ld   b, [hl]                                     ; $4146: $46
	ld   [hl], h                                     ; $4147: $74
	ld   b, a                                        ; $4148: $47
	cp   c                                           ; $4149: $b9
	ld   d, c                                        ; $414a: $51
	ld   de, $1f11                                   ; $414b: $11 $11 $1f
	ld   a, [hl+]                                    ; $414e: $2a
	rst  $38                                         ; $414f: $ff
	rst  $38                                         ; $4150: $ff
	rst  $38                                         ; $4151: $ff
	db   $eb                                         ; $4152: $eb
	ld   c, a                                        ; $4153: $4f
	rst  $30                                         ; $4154: $f7
	ld   b, l                                        ; $4155: $45
	ld   h, a                                        ; $4156: $67
	ld   d, l                                        ; $4157: $55
	cp   e                                           ; $4158: $bb
	ld   [hl], d                                     ; $4159: $72
	ld   de, $1e11                                   ; $415a: $11 $11 $1e
	ld   d, l                                        ; $415d: $55
	rst  $38                                         ; $415e: $ff
	db   $fd                                         ; $415f: $fd
	rst  $38                                         ; $4160: $ff
	call c, $fa5c                                    ; $4161: $dc $5c $fa
	ld   b, h                                        ; $4164: $44
	add  a                                           ; $4165: $87
	ld   b, l                                        ; $4166: $45
	xor  e                                           ; $4167: $ab
	ld   [hl], d                                     ; $4168: $72
	ld   de, $1b11                                   ; $4169: $11 $11 $1b

jr_0c7_416c:
	add  [hl]                                        ; $416c: $86
	rst  $38                                         ; $416d: $ff
	rst  $38                                         ; $416e: $ff
	rst  $38                                         ; $416f: $ff
	rst  $28                                         ; $4170: $ef
	ld   l, d                                        ; $4171: $6a
	ld   a, [$6764]                                  ; $4172: $fa $64 $67
	ld   h, l                                        ; $4175: $65
	adc  d                                           ; $4176: $8a
	sub  h                                           ; $4177: $94
	ld   de, $1811                                   ; $4178: $11 $11 $18
	sub  d                                           ; $417b: $92
	rst  $38                                         ; $417c: $ff
	rst  $38                                         ; $417d: $ff
	rst  $38                                         ; $417e: $ff
	db   $ed                                         ; $417f: $ed
	ld   a, b                                        ; $4180: $78
	db   $fc                                         ; $4181: $fc
	ld   d, l                                        ; $4182: $55
	ld   h, a                                        ; $4183: $67
	ld   d, h                                        ; $4184: $54
	adc  d                                           ; $4185: $8a
	add  e                                           ; $4186: $83
	ld   de, $1711                                   ; $4187: $11 $11 $17
	and  e                                           ; $418a: $a3
	rst  $38                                         ; $418b: $ff
	rst  $38                                         ; $418c: $ff
	rst  $38                                         ; $418d: $ff
	rst  JumpTable                                         ; $418e: $df
	sbc  b                                           ; $418f: $98
	db   $fd                                         ; $4190: $fd
	ld   [hl], h                                     ; $4191: $74
	ld   h, a                                        ; $4192: $67
	ld   d, h                                        ; $4193: $54
	adc  d                                           ; $4194: $8a

Jump_0c7_4195:
	ld   [hl], h                                     ; $4195: $74

Call_0c7_4196:
	ld   de, $1611                                   ; $4196: $11 $11 $16
	and  e                                           ; $4199: $a3
	rst  $38                                         ; $419a: $ff
	rst  $38                                         ; $419b: $ff
	rst  $38                                         ; $419c: $ff
	cp   $9a                                         ; $419d: $fe $9a
	db   $fd                                         ; $419f: $fd
	add  l                                           ; $41a0: $85
	ld   [hl], a                                     ; $41a1: $77
	ld   b, l                                        ; $41a2: $45
	ld   a, d                                        ; $41a3: $7a
	ld   [hl], e                                     ; $41a4: $73
	ld   de, $1911                                   ; $41a5: $11 $11 $19
	add  d                                           ; $41a8: $82
	rst  $38                                         ; $41a9: $ff
	rst  $38                                         ; $41aa: $ff
	rst  $38                                         ; $41ab: $ff
	cp   $8b                                         ; $41ac: $fe $8b
	ei                                               ; $41ae: $fb
	add  [hl]                                        ; $41af: $86
	ld   [hl], a                                     ; $41b0: $77
	inc  [hl]                                        ; $41b1: $34
	adc  c                                           ; $41b2: $89
	ld   d, c                                        ; $41b3: $51
	ld   de, $1c11                                   ; $41b4: $11 $11 $1c
	ld   d, l                                        ; $41b7: $55
	rst  $38                                         ; $41b8: $ff
	rst  $38                                         ; $41b9: $ff
	rst  $38                                         ; $41ba: $ff
	db   $ed                                         ; $41bb: $ed
	ld   l, [hl]                                     ; $41bc: $6e
	ld   a, [$8766]                                  ; $41bd: $fa $66 $87
	ld   b, e                                        ; $41c0: $43
	adc  c                                           ; $41c1: $89
	ld   sp, $1111                                   ; $41c2: $31 $11 $11
	ld   c, e                                        ; $41c5: $4b
	ld   l, $ff                                      ; $41c6: $2e $ff
	cp   $ff                                         ; $41c8: $fe $ff
	call c, $f77f                                    ; $41ca: $dc $7f $f7
	add  [hl]                                        ; $41cd: $86
	add  [hl]                                        ; $41ce: $86
	dec  d                                           ; $41cf: $15
	sub  l                                           ; $41d0: $95
	ld   de, $1111                                   ; $41d1: $11 $11 $11
	or   [hl]                                        ; $41d4: $b6
	ld   c, a                                        ; $41d5: $4f
	rst  $38                                         ; $41d6: $ff
	db   $fd                                         ; $41d7: $fd
	rst  $38                                         ; $41d8: $ff
	ret  c                                           ; $41d9: $d8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41da: $cf
	rst  ToBoot                                         ; $41db: $c7
	ld   a, b                                        ; $41dc: $78
	add  e                                           ; $41dd: $83
	rla                                              ; $41de: $17
	add  e                                           ; $41df: $83
	ld   de, $1511                                   ; $41e0: $11 $11 $15
	and  h                                           ; $41e3: $a4
	rst  $28                                         ; $41e4: $ef
	rst  $38                                         ; $41e5: $ff
	rst  $38                                         ; $41e6: $ff
	rst  $38                                         ; $41e7: $ff
	ret                                              ; $41e8: $c9


	rst  $38                                         ; $41e9: $ff
	sbc  b                                           ; $41ea: $98
	ld   [hl], a                                     ; $41eb: $77
	ld   d, e                                        ; $41ec: $53
	ld   b, a                                        ; $41ed: $47
	ld   b, c                                        ; $41ee: $41
	ld   de, $1b11                                   ; $41ef: $11 $11 $1b
	add  hl, hl                                      ; $41f2: $29
	rst  $38                                         ; $41f3: $ff
	rst  $38                                         ; $41f4: $ff
	rst  $38                                         ; $41f5: $ff
	rst  $28                                         ; $41f6: $ef
	sbc  a                                           ; $41f7: $9f
	ei                                               ; $41f8: $fb
	adc  d                                           ; $41f9: $8a
	add  [hl]                                        ; $41fa: $86
	ld   b, e                                        ; $41fb: $43
	ld   h, h                                        ; $41fc: $64
	ld   de, $1111                                   ; $41fd: $11 $11 $11
	or   h                                           ; $4200: $b4
	ld   c, a                                        ; $4201: $4f
	rst  $38                                         ; $4202: $ff
	rst  $38                                         ; $4203: $ff
	rst  $38                                         ; $4204: $ff
	ld   [$b8df], a                                  ; $4205: $ea $df $b8
	sbc  d                                           ; $4208: $9a
	ld   h, h                                        ; $4209: $64
	ld   [hl], $51                                   ; $420a: $36 $51
	ld   de, $1911                                   ; $420c: $11 $11 $19
	ld   h, c                                        ; $420f: $61
	rst  $38                                         ; $4210: $ff
	rst  $38                                         ; $4211: $ff
	rst  $38                                         ; $4212: $ff
	rst  $38                                         ; $4213: $ff
	cp   h                                           ; $4214: $bc
	db   $fd                                         ; $4215: $fd
	adc  c                                           ; $4216: $89
	xor  b                                           ; $4217: $a8
	ld   b, d                                        ; $4218: $42
	ld   d, [hl]                                     ; $4219: $56
	ld   de, $1111                                   ; $421a: $11 $11 $11
	ld   [hl], a                                     ; $421d: $77
	rra                                              ; $421e: $1f
	rst  $38                                         ; $421f: $ff
	rst  $38                                         ; $4220: $ff
	rst  $38                                         ; $4221: $ff
	db   $fd                                         ; $4222: $fd
	cp   a                                           ; $4223: $bf
	ld   hl, sp-$65                                  ; $4224: $f8 $9b
	add  h                                           ; $4226: $84
	inc  [hl]                                        ; $4227: $34
	ld   [hl], c                                     ; $4228: $71
	ld   de, $1311                                   ; $4229: $11 $11 $13
	ld   [hl], c                                     ; $422c: $71
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $422d: $cf
	rst  $38                                         ; $422e: $ff
	rst  $38                                         ; $422f: $ff
	rst  $38                                         ; $4230: $ff
	db   $ec                                         ; $4231: $ec
	rst  $38                                         ; $4232: $ff
	xor  d                                           ; $4233: $aa
	xor  c                                           ; $4234: $a9
	ld   b, e                                        ; $4235: $43
	ld   d, [hl]                                     ; $4236: $56
	ld   de, $1111                                   ; $4237: $11 $11 $11
	jr   z, @+$1b                                    ; $423a: $28 $19

	rst  $38                                         ; $423c: $ff
	rst  $38                                         ; $423d: $ff
	rst  $38                                         ; $423e: $ff
	rst  $38                                         ; $423f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4240: $cf
	ld   a, [$95bb]                                  ; $4241: $fa $bb $95
	dec  [hl]                                        ; $4244: $35
	ld   h, c                                        ; $4245: $61
	ld   de, $1111                                   ; $4246: $11 $11 $11
	add  c                                           ; $4249: $81
	ld   a, a                                        ; $424a: $7f
	rst  $38                                         ; $424b: $ff
	rst  $38                                         ; $424c: $ff
	rst  $38                                         ; $424d: $ff
	db   $fc                                         ; $424e: $fc
	rst  $38                                         ; $424f: $ff
	cp   e                                           ; $4250: $bb
	jp   z, Jump_0c7_5653                            ; $4251: $ca $53 $56

	ld   de, $1111                                   ; $4254: $11 $11 $11
	rla                                              ; $4257: $17
	ld   d, $fd                                      ; $4258: $16 $fd
	xor  $ff                                         ; $425a: $ee $ff
	rst  $38                                         ; $425c: $ff
	rst  $38                                         ; $425d: $ff
	ei                                               ; $425e: $fb
	cp   l                                           ; $425f: $bd
	and  [hl]                                        ; $4260: $a6
	ld   b, l                                        ; $4261: $45
	ld   h, c                                        ; $4262: $61
	ld   de, $1111                                   ; $4263: $11 $11 $11
	ld   h, c                                        ; $4266: $61
	ld   l, a                                        ; $4267: $6f
	call $ffdf                                       ; $4268: $cd $df $ff
	rst  $38                                         ; $426b: $ff
	rst  $38                                         ; $426c: $ff
	call Call_0c7_56eb                               ; $426d: $cd $eb $56
	ld   h, l                                        ; $4270: $65
	ld   de, $1111                                   ; $4271: $11 $11 $11
	dec  d                                           ; $4274: $15
	dec  d                                           ; $4275: $15
	db   $ec                                         ; $4276: $ec
	cp   [hl]                                        ; $4277: $be
	rst  $38                                         ; $4278: $ff
	rst  $38                                         ; $4279: $ff
	rst  $38                                         ; $427a: $ff
	db   $fd                                         ; $427b: $fd
	rst  $28                                         ; $427c: $ef
	or   [hl]                                        ; $427d: $b6
	ld   h, [hl]                                     ; $427e: $66
	ld   b, c                                        ; $427f: $41
	ld   de, $1111                                   ; $4280: $11 $11 $11
	ld   b, c                                        ; $4283: $41
	dec  a                                           ; $4284: $3d

Jump_0c7_4285:
	cp   b                                           ; $4285: $b8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4286: $cf
	rst  $38                                         ; $4287: $ff
	rst  $38                                         ; $4288: $ff
	rst  $38                                         ; $4289: $ff
	rst  $28                                         ; $428a: $ef
	db   $fc                                         ; $428b: $fc
	ld   a, b                                        ; $428c: $78

jr_0c7_428d:
	ld   [hl], h                                     ; $428d: $74
	ld   de, $1111                                   ; $428e: $11 $11 $11
	inc  de                                          ; $4291: $13
	ld   [de], a                                     ; $4292: $12
	reti                                             ; $4293: $d9


	ld   l, h                                        ; $4294: $6c
	rst  $38                                         ; $4295: $ff

Call_0c7_4296:
	rst  $38                                         ; $4296: $ff
	rst  $38                                         ; $4297: $ff
	rst  $38                                         ; $4298: $ff
	rst  $38                                         ; $4299: $ff
	ret  z                                           ; $429a: $c8

	sbc  c                                           ; $429b: $99
	ld   b, c                                        ; $429c: $41
	ld   de, $1111                                   ; $429d: $11 $11 $11
	ld   de, $752a                                   ; $42a0: $11 $2a $75
	xor  a                                           ; $42a3: $af
	db   $ed                                         ; $42a4: $ed
	rst  $38                                         ; $42a5: $ff
	rst  $38                                         ; $42a6: $ff
	rst  $38                                         ; $42a7: $ff
	db   $fd                                         ; $42a8: $fd
	cp   d                                           ; $42a9: $ba
	add  l                                           ; $42aa: $85
	ld   hl, $1111                                   ; $42ab: $21 $11 $11
	ld   de, $7711                                   ; $42ae: $11 $11 $77
	scf                                              ; $42b1: $37
	xor  $bf                                         ; $42b2: $ee $bf
	rst  $38                                         ; $42b4: $ff
	rst  $38                                         ; $42b5: $ff
	rst  $38                                         ; $42b6: $ff
	db   $fd                                         ; $42b7: $fd
	cp   d                                           ; $42b8: $ba

Call_0c7_42b9:
	ld   [hl], h                                     ; $42b9: $74
	ld   sp, $1111                                   ; $42ba: $31 $11 $11
	ld   de, $7412                                   ; $42bd: $11 $12 $74
	jr   c, jr_0c7_428d                              ; $42c0: $38 $cb

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42c2: $cf
	rst  $38                                         ; $42c3: $ff
	rst  $38                                         ; $42c4: $ff
	rst  $38                                         ; $42c5: $ff
	db   $fd                                         ; $42c6: $fd
	cp   d                                           ; $42c7: $ba

Call_0c7_42c8:
	add  l                                           ; $42c8: $85
	ld   d, e                                        ; $42c9: $53
	ld   hl, $1211                                   ; $42ca: $21 $11 $12
	inc  de                                          ; $42cd: $13
	ld   d, e                                        ; $42ce: $53
	ld   [hl], $87                                   ; $42cf: $36 $87
	xor  l                                           ; $42d1: $ad
	xor  $ef                                         ; $42d2: $ee $ef
	rst  $38                                         ; $42d4: $ff
	rst  $28                                         ; $42d5: $ef
	db   $ec                                         ; $42d6: $ec
	cp   d                                           ; $42d7: $ba
	sub  [hl]                                        ; $42d8: $96
	ld   d, h                                        ; $42d9: $54
	ld   sp, $0111                                   ; $42da: $31 $11 $01
	ld   de, $4512                                   ; $42dd: $11 $12 $45
	ld   l, b                                        ; $42e0: $68
	call $ffdf                                       ; $42e1: $cd $df $ff
	rst  $38                                         ; $42e4: $ff
	cp   $ee                                         ; $42e5: $fe $ee
	reti                                             ; $42e7: $d9


	add  a                                           ; $42e8: $87
	ld   d, e                                        ; $42e9: $53
	ld   de, $1111                                   ; $42ea: $11 $11 $11
	ld   de, $3512                                   ; $42ed: $11 $12 $35
	ld   a, e                                        ; $42f0: $7b
	call $ffef                                       ; $42f1: $cd $ef $ff
	rst  $38                                         ; $42f4: $ff
	rst  $38                                         ; $42f5: $ff
	db   $ed                                         ; $42f6: $ed
	cp   c                                           ; $42f7: $b9
	ld   [hl], l                                     ; $42f8: $75
	ld   [hl-], a                                    ; $42f9: $32
	ld   de, $1111                                   ; $42fa: $11 $11 $11
	ld   de, $5712                                   ; $42fd: $11 $12 $57
	sbc  h                                           ; $4300: $9c
	rst  JumpTable                                         ; $4301: $df
	rst  $38                                         ; $4302: $ff
	rst  $38                                         ; $4303: $ff
	rst  $38                                         ; $4304: $ff
	rst  $38                                         ; $4305: $ff
	db   $eb                                         ; $4306: $eb
	xor  b                                           ; $4307: $a8
	ld   d, e                                        ; $4308: $53
	ld   hl, $1111                                   ; $4309: $21 $11 $11
	ld   de, $2411                                   ; $430c: $11 $11 $24
	ld   l, c                                        ; $430f: $69
	cp   h                                           ; $4310: $bc
	rst  $28                                         ; $4311: $ef
	rst  $38                                         ; $4312: $ff
	rst  $38                                         ; $4313: $ff
	rst  $38                                         ; $4314: $ff
	rst  $38                                         ; $4315: $ff
	db   $db                                         ; $4316: $db
	sub  [hl]                                        ; $4317: $96
	ld   b, e                                        ; $4318: $43
	ld   de, $1111                                   ; $4319: $11 $11 $11
	ld   de, $3511                                   ; $431c: $11 $11 $35
	ld   a, e                                        ; $431f: $7b
	db   $dd                                         ; $4320: $dd
	rst  $38                                         ; $4321: $ff
	rst  $38                                         ; $4322: $ff
	rst  $38                                         ; $4323: $ff
	rst  $38                                         ; $4324: $ff
	db   $fd                                         ; $4325: $fd
	cp   c                                           ; $4326: $b9
	ld   [hl], l                                     ; $4327: $75
	ld   b, d                                        ; $4328: $42
	ld   de, $1111                                   ; $4329: $11 $11 $11
	ld   de, $4712                                   ; $432c: $11 $12 $47
	sbc  h                                           ; $432f: $9c
	rst  $28                                         ; $4330: $ef
	rst  $38                                         ; $4331: $ff
	rst  $38                                         ; $4332: $ff
	rst  $38                                         ; $4333: $ff
	rst  $38                                         ; $4334: $ff
	db   $ec                                         ; $4335: $ec
	xor  b                                           ; $4336: $a8
	ld   h, h                                        ; $4337: $64
	ld   hl, $1111                                   ; $4338: $21 $11 $11
	ld   de, $2411                                   ; $433b: $11 $11 $24
	ld   l, c                                        ; $433e: $69
	call $ffef                                       ; $433f: $cd $ef $ff
	rst  $38                                         ; $4342: $ff
	rst  $38                                         ; $4343: $ff
	cp   $db                                         ; $4344: $fe $db
	add  [hl]                                        ; $4346: $86
	ld   d, e                                        ; $4347: $53
	ld   de, $1111                                   ; $4348: $11 $11 $11
	ld   de, $3511                                   ; $434b: $11 $11 $35
	ld   a, e                                        ; $434e: $7b
	sbc  $ff                                         ; $434f: $de $ff
	rst  $38                                         ; $4351: $ff
	rst  $38                                         ; $4352: $ff
	rst  $38                                         ; $4353: $ff
	db   $fd                                         ; $4354: $fd
	jp   z, Jump_0c7_4285                            ; $4355: $ca $85 $42

	ld   de, $1111                                   ; $4358: $11 $11 $11
	ld   de, $4612                                   ; $435b: $11 $12 $46
	sbc  e                                           ; $435e: $9b
	rst  JumpTable                                         ; $435f: $df
	rst  $38                                         ; $4360: $ff
	rst  $38                                         ; $4361: $ff
	rst  $38                                         ; $4362: $ff
	rst  $38                                         ; $4363: $ff
	db   $ed                                         ; $4364: $ed
	cp   c                                           ; $4365: $b9
	ld   [hl], l                                     ; $4366: $75
	ld   sp, $1111                                   ; $4367: $31 $11 $11
	ld   de, $1311                                   ; $436a: $11 $11 $13
	ld   d, a                                        ; $436d: $57
	xor  h                                           ; $436e: $ac
	rst  $28                                         ; $436f: $ef
	rst  $38                                         ; $4370: $ff
	rst  $38                                         ; $4371: $ff
	rst  $38                                         ; $4372: $ff
	rst  $38                                         ; $4373: $ff
	db   $ec                                         ; $4374: $ec
	xor  b                                           ; $4375: $a8
	ld   h, h                                        ; $4376: $64
	ld   hl, $1111                                   ; $4377: $21 $11 $11
	ld   de, $2311                                   ; $437a: $11 $11 $23
	ld   e, b                                        ; $437d: $58
	xor  l                                           ; $437e: $ad
	rst  JumpTable                                         ; $437f: $df
	rst  $38                                         ; $4380: $ff
	rst  $38                                         ; $4381: $ff
	rst  $38                                         ; $4382: $ff
	rst  $38                                         ; $4383: $ff
	call c, Call_0c7_5497                            ; $4384: $dc $97 $54
	ld   hl, $1111                                   ; $4387: $21 $11 $11
	ld   de, $2411                                   ; $438a: $11 $11 $24
	ld   l, c                                        ; $438d: $69
	cp   l                                           ; $438e: $bd
	rst  $28                                         ; $438f: $ef
	rst  $38                                         ; $4390: $ff
	rst  $38                                         ; $4391: $ff
	rst  $38                                         ; $4392: $ff
	cp   $db                                         ; $4393: $fe $db
	sub  a                                           ; $4395: $97
	ld   d, h                                        ; $4396: $54
	ld   hl, $1111                                   ; $4397: $21 $11 $11
	ld   de, $2411                                   ; $439a: $11 $11 $24
	ld   l, c                                        ; $439d: $69
	cp   h                                           ; $439e: $bc
	rst  $28                                         ; $439f: $ef
	rst  $38                                         ; $43a0: $ff
	rst  $38                                         ; $43a1: $ff
	rst  $38                                         ; $43a2: $ff
	cp   $dc                                         ; $43a3: $fe $dc
	sub  a                                           ; $43a5: $97
	ld   d, h                                        ; $43a6: $54
	ld   hl, $1111                                   ; $43a7: $21 $11 $11
	ld   de, $2411                                   ; $43aa: $11 $11 $24
	ld   l, d                                        ; $43ad: $6a
	call z, $ffff                                    ; $43ae: $cc $ff $ff
	rst  $38                                         ; $43b1: $ff
	rst  $38                                         ; $43b2: $ff
	cp   $dc                                         ; $43b3: $fe $dc
	sub  a                                           ; $43b5: $97
	ld   h, h                                        ; $43b6: $64
	ld   de, $1111                                   ; $43b7: $11 $11 $11
	ld   de, $2411                                   ; $43ba: $11 $11 $24
	ld   l, d                                        ; $43bd: $6a
	call z, $ffef                                    ; $43be: $cc $ef $ff
	rst  $38                                         ; $43c1: $ff
	rst  $38                                         ; $43c2: $ff
	rst  $38                                         ; $43c3: $ff
	db   $db                                         ; $43c4: $db
	sub  a                                           ; $43c5: $97
	ld   h, h                                        ; $43c6: $64
	ld   hl, $1111                                   ; $43c7: $21 $11 $11
	ld   de, $2311                                   ; $43ca: $11 $11 $23
	ld   e, b                                        ; $43cd: $58
	cp   h                                           ; $43ce: $bc
	rst  $28                                         ; $43cf: $ef
	rst  $38                                         ; $43d0: $ff
	rst  $38                                         ; $43d1: $ff
	rst  $38                                         ; $43d2: $ff
	rst  $38                                         ; $43d3: $ff
	db   $dd                                         ; $43d4: $dd
	xor  b                                           ; $43d5: $a8
	ld   h, l                                        ; $43d6: $65
	ld   hl, $1111                                   ; $43d7: $21 $11 $11
	ld   de, $1311                                   ; $43da: $11 $11 $13
	ld   b, a                                        ; $43dd: $47
	xor  h                                           ; $43de: $ac
	rst  $28                                         ; $43df: $ef
	rst  $38                                         ; $43e0: $ff
	rst  $38                                         ; $43e1: $ff
	rst  $38                                         ; $43e2: $ff
	rst  $38                                         ; $43e3: $ff
	db   $fd                                         ; $43e4: $fd
	ret                                              ; $43e5: $c9


	halt                                             ; $43e6: $76
	ld   b, c                                        ; $43e7: $41
	ld   de, $1111                                   ; $43e8: $11 $11 $11
	ld   de, $3512                                   ; $43eb: $11 $12 $35
	sbc  e                                           ; $43ee: $9b
	rst  JumpTable                                         ; $43ef: $df
	rst  $38                                         ; $43f0: $ff
	rst  $38                                         ; $43f1: $ff
	rst  $38                                         ; $43f2: $ff
	rst  $38                                         ; $43f3: $ff
	cp   $ca                                         ; $43f4: $fe $ca
	sub  a                                           ; $43f6: $97
	ld   d, e                                        ; $43f7: $53
	ld   de, $1111                                   ; $43f8: $11 $11 $11
	ld   de, $2311                                   ; $43fb: $11 $11 $23
	ld   l, c                                        ; $43fe: $69
	call $ffff                                       ; $43ff: $cd $ff $ff
	rst  $38                                         ; $4402: $ff
	rst  $38                                         ; $4403: $ff
	rst  $38                                         ; $4404: $ff
	db   $dd                                         ; $4405: $dd
	cp   b                                           ; $4406: $b8
	ld   [hl], l                                     ; $4407: $75
	ld   sp, $1101                                   ; $4408: $31 $01 $11
	ld   de, $1211                                   ; $440b: $11 $11 $12
	ld   b, [hl]                                     ; $440e: $46
	sbc  h                                           ; $440f: $9c
	rst  JumpTable                                         ; $4410: $df
	rst  $38                                         ; $4411: $ff
	rst  $38                                         ; $4412: $ff
	rst  $38                                         ; $4413: $ff
	rst  $38                                         ; $4414: $ff
	db   $fd                                         ; $4415: $fd
	jp   c, Jump_0c7_5397                            ; $4416: $da $97 $53

	ld   de, $1111                                   ; $4419: $11 $11 $11
	ld   de, $2311                                   ; $441c: $11 $11 $23
	ld   e, b                                        ; $441f: $58
	xor  l                                           ; $4420: $ad
	rst  $38                                         ; $4421: $ff
	rst  $38                                         ; $4422: $ff
	rst  $38                                         ; $4423: $ff
	rst  $38                                         ; $4424: $ff
	rst  $38                                         ; $4425: $ff
	db   $ed                                         ; $4426: $ed
	ret                                              ; $4427: $c9


	add  [hl]                                        ; $4428: $86
	ld   b, d                                        ; $4429: $42
	ld   de, $1111                                   ; $442a: $11 $11 $11
	ld   de, $2411                                   ; $442d: $11 $11 $24
	ld   a, c                                        ; $4430: $79
	call $ffff                                       ; $4431: $cd $ff $ff
	rst  $38                                         ; $4434: $ff
	rst  $38                                         ; $4435: $ff
	rst  $38                                         ; $4436: $ff
	call c, Call_0c7_76a9                            ; $4437: $dc $a9 $76
	ld   b, d                                        ; $443a: $42
	ld   de, $1111                                   ; $443b: $11 $11 $11
	ld   de, $2411                                   ; $443e: $11 $11 $24
	ld   a, c                                        ; $4441: $79
	adc  $ff                                         ; $4442: $ce $ff
	rst  $38                                         ; $4444: $ff
	rst  $38                                         ; $4445: $ff
	rst  $38                                         ; $4446: $ff
	rst  $38                                         ; $4447: $ff
	db   $dd                                         ; $4448: $dd
	xor  c                                           ; $4449: $a9
	add  [hl]                                        ; $444a: $86
	ld   b, e                                        ; $444b: $43
	ld   hl, $1111                                   ; $444c: $21 $11 $11
	ld   de, $2411                                   ; $444f: $11 $11 $24
	ld   a, c                                        ; $4452: $79
	xor  h                                           ; $4453: $ac
	rst  $38                                         ; $4454: $ff
	rst  $38                                         ; $4455: $ff
	rst  $38                                         ; $4456: $ff
	rst  $38                                         ; $4457: $ff
	cp   $ed                                         ; $4458: $fe $ed
	jp   z, Jump_0c7_6497                            ; $445a: $ca $97 $64

	ld   [hl-], a                                    ; $445d: $32
	ld   de, $1111                                   ; $445e: $11 $11 $11
	ld   de, $5813                                   ; $4461: $11 $13 $58
	sbc  d                                           ; $4464: $9a
	sbc  $ef                                         ; $4465: $de $ef
	rst  $38                                         ; $4467: $ff
	rst  $38                                         ; $4468: $ff
	rst  $38                                         ; $4469: $ff
	xor  $dc                                         ; $446a: $ee $dc
	xor  d                                           ; $446c: $aa
	add  [hl]                                        ; $446d: $86
	ld   d, h                                        ; $446e: $54
	ld   [hl-], a                                    ; $446f: $32
	ld   de, $1111                                   ; $4470: $11 $11 $11
	ld   de, $7835                                   ; $4473: $11 $35 $78
	xor  h                                           ; $4476: $ac
	db   $dd                                         ; $4477: $dd
	rst  $28                                         ; $4478: $ef
	cp   $ff                                         ; $4479: $fe $ff
	xor  $ed                                         ; $447b: $ee $ed
	res  5, c                                        ; $447d: $cb $a9
	add  a                                           ; $447f: $87
	ld   d, h                                        ; $4480: $54
	ld   [hl-], a                                    ; $4481: $32
	ld   de, $1111                                   ; $4482: $11 $11 $11

Jump_0c7_4485:
	ld   [de], a                                     ; $4485: $12
	ld   b, [hl]                                     ; $4486: $46
	ld   a, b                                        ; $4487: $78
	xor  e                                           ; $4488: $ab
	call $deee                                       ; $4489: $cd $ee $de
	rst  $28                                         ; $448c: $ef
	xor  $ed                                         ; $448d: $ee $ed
	call z, $97b9                                    ; $448f: $cc $b9 $97
	ld   h, h                                        ; $4492: $64
	ld   b, d                                        ; $4493: $42
	ld   de, $1111                                   ; $4494: $11 $11 $11
	ld   [de], a                                     ; $4497: $12
	ld   b, [hl]                                     ; $4498: $46
	ld   a, b                                        ; $4499: $78
	xor  e                                           ; $449a: $ab
	cp   e                                           ; $449b: $bb
	call z, $edcc                                    ; $449c: $cc $cc $ed
	db   $ed                                         ; $449f: $ed
	db   $ed                                         ; $44a0: $ed
	call z, $99ca                                    ; $44a1: $cc $ca $99
	add  [hl]                                        ; $44a4: $86
	ld   d, h                                        ; $44a5: $54
	ld   sp, $1111                                   ; $44a6: $31 $11 $11
	ld   [de], a                                     ; $44a9: $12
	inc  [hl]                                        ; $44aa: $34
	ld   h, a                                        ; $44ab: $67
	ld   a, c                                        ; $44ac: $79
	xor  d                                           ; $44ad: $aa
	xor  e                                           ; $44ae: $ab
	cp   e                                           ; $44af: $bb
	call z, $dddc                                    ; $44b0: $cc $dc $dd
	call $bbcc                                       ; $44b3: $cd $cc $bb
	xor  c                                           ; $44b6: $a9
	ld   [hl], a                                     ; $44b7: $77
	ld   h, h                                        ; $44b8: $64
	ld   [hl-], a                                    ; $44b9: $32
	ld   hl, $2312                                   ; $44ba: $21 $12 $23
	ld   b, l                                        ; $44bd: $45
	ld   h, a                                        ; $44be: $67
	adc  c                                           ; $44bf: $89
	sbc  c                                           ; $44c0: $99
	xor  d                                           ; $44c1: $aa
	sbc  d                                           ; $44c2: $9a
	cp   d                                           ; $44c3: $ba
	xor  h                                           ; $44c4: $ac
	call $dcdc                                       ; $44c5: $cd $dc $dc
	cp   h                                           ; $44c8: $bc
	cp   c                                           ; $44c9: $b9
	sbc  c                                           ; $44ca: $99
	halt                                             ; $44cb: $76
	ld   d, h                                        ; $44cc: $54
	ld   [hl-], a                                    ; $44cd: $32
	ld   [hl+], a                                    ; $44ce: $22
	inc  sp                                          ; $44cf: $33
	ld   b, l                                        ; $44d0: $45
	ld   h, [hl]                                     ; $44d1: $66
	ld   h, a                                        ; $44d2: $67
	adc  b                                           ; $44d3: $88
	adc  c                                           ; $44d4: $89
	adc  c                                           ; $44d5: $89
	adc  c                                           ; $44d6: $89
	xor  d                                           ; $44d7: $aa
	cp   h                                           ; $44d8: $bc
	call $cccd                                       ; $44d9: $cd $cd $cc
	db   $db                                         ; $44dc: $db
	cp   d                                           ; $44dd: $ba
	sbc  b                                           ; $44de: $98
	halt                                             ; $44df: $76
	ld   d, h                                        ; $44e0: $54
	inc  sp                                          ; $44e1: $33
	ld   [hl+], a                                    ; $44e2: $22
	inc  [hl]                                        ; $44e3: $34
	ld   b, l                                        ; $44e4: $45
	ld   h, [hl]                                     ; $44e5: $66
	ld   h, a                                        ; $44e6: $67
	ld   [hl], a                                     ; $44e7: $77
	adc  b                                           ; $44e8: $88
	adc  b                                           ; $44e9: $88
	sbc  b                                           ; $44ea: $98
	sbc  d                                           ; $44eb: $9a
	xor  e                                           ; $44ec: $ab
	call z, $ccdd                                    ; $44ed: $cc $dd $cc
	call c, $a9ca                                    ; $44f0: $dc $ca $a9
	sub  a                                           ; $44f3: $97
	ld   h, l                                        ; $44f4: $65
	ld   b, h                                        ; $44f5: $44
	inc  sp                                          ; $44f6: $33
	inc  sp                                          ; $44f7: $33
	ld   b, h                                        ; $44f8: $44
	ld   d, l                                        ; $44f9: $55
	ld   h, [hl]                                     ; $44fa: $66
	ld   [hl], a                                     ; $44fb: $77
	ld   [hl], a                                     ; $44fc: $77
	ld   a, b                                        ; $44fd: $78
	adc  b                                           ; $44fe: $88
	adc  c                                           ; $44ff: $89
	sbc  d                                           ; $4500: $9a
	cp   e                                           ; $4501: $bb
	call z, $cddc                                    ; $4502: $cc $dc $cd
	call z, $99ab                                    ; $4505: $cc $ab $99
	sub  a                                           ; $4508: $97
	ld   [hl], l                                     ; $4509: $75
	ld   d, h                                        ; $450a: $54
	ld   b, e                                        ; $450b: $43
	inc  [hl]                                        ; $450c: $34
	ld   b, h                                        ; $450d: $44
	ld   d, l                                        ; $450e: $55
	ld   d, [hl]                                     ; $450f: $56
	ld   h, a                                        ; $4510: $67
	ld   [hl], a                                     ; $4511: $77
	ld   [hl], a                                     ; $4512: $77
	adc  b                                           ; $4513: $88
	sbc  c                                           ; $4514: $99
	adc  d                                           ; $4515: $8a
	cp   h                                           ; $4516: $bc
	cp   h                                           ; $4517: $bc
	db   $dd                                         ; $4518: $dd
	db   $dd                                         ; $4519: $dd
	db   $dd                                         ; $451a: $dd
	xor  e                                           ; $451b: $ab
	sbc  c                                           ; $451c: $99
	add  [hl]                                        ; $451d: $86
	ld   h, [hl]                                     ; $451e: $66
	ld   d, h                                        ; $451f: $54
	inc  sp                                          ; $4520: $33
	inc  sp                                          ; $4521: $33
	inc  [hl]                                        ; $4522: $34
	ld   b, l                                        ; $4523: $45
	ld   h, l                                        ; $4524: $65
	halt                                             ; $4525: $76
	ld   a, b                                        ; $4526: $78
	ld   a, c                                        ; $4527: $79
	adc  d                                           ; $4528: $8a
	xor  c                                           ; $4529: $a9
	cp   d                                           ; $452a: $ba
	cp   d                                           ; $452b: $ba
	cp   h                                           ; $452c: $bc
	cp   h                                           ; $452d: $bc
	call z, $cacb                                    ; $452e: $cc $cb $ca
	sbc  b                                           ; $4531: $98
	ld   a, b                                        ; $4532: $78
	ld   h, l                                        ; $4533: $65
	ld   h, h                                        ; $4534: $64
	inc  sp                                          ; $4535: $33
	inc  sp                                          ; $4536: $33
	inc  hl                                          ; $4537: $23
	ld   b, h                                        ; $4538: $44
	ld   d, [hl]                                     ; $4539: $56
	ld   a, b                                        ; $453a: $78
	ld   a, d                                        ; $453b: $7a
	sbc  c                                           ; $453c: $99
	xor  c                                           ; $453d: $a9
	cp   c                                           ; $453e: $b9
	xor  e                                           ; $453f: $ab
	xor  d                                           ; $4540: $aa
	xor  h                                           ; $4541: $ac
	cp   d                                           ; $4542: $ba
	res  7, e                                        ; $4543: $cb $bb
	xor  d                                           ; $4545: $aa
	add  a                                           ; $4546: $87
	ld   [hl], a                                     ; $4547: $77
	ld   [hl], h                                     ; $4548: $74
	ld   h, [hl]                                     ; $4549: $66
	inc  hl                                          ; $454a: $23
	inc  sp                                          ; $454b: $33
	inc  sp                                          ; $454c: $33
	ld   d, [hl]                                     ; $454d: $56
	ld   d, [hl]                                     ; $454e: $56
	ld   a, b                                        ; $454f: $78
	ld   a, b                                        ; $4550: $78
	cp   c                                           ; $4551: $b9
	sbc  d                                           ; $4552: $9a
	xor  h                                           ; $4553: $ac
	xor  e                                           ; $4554: $ab
	ret                                              ; $4555: $c9


	cp   e                                           ; $4556: $bb
	cp   e                                           ; $4557: $bb
	cp   l                                           ; $4558: $bd
	xor  d                                           ; $4559: $aa
	xor  c                                           ; $455a: $a9
	add  [hl]                                        ; $455b: $86
	ld   [hl], a                                     ; $455c: $77
	ld   h, e                                        ; $455d: $63
	ld   b, [hl]                                     ; $455e: $46
	ld   de, $3243                                   ; $455f: $11 $43 $32
	ld   d, [hl]                                     ; $4562: $56
	ld   d, a                                        ; $4563: $57
	adc  c                                           ; $4564: $89
	sbc  c                                           ; $4565: $99
	cp   e                                           ; $4566: $bb
	cp   d                                           ; $4567: $ba
	db   $dd                                         ; $4568: $dd
	sbc  h                                           ; $4569: $9c
	db   $db                                         ; $456a: $db
	cp   e                                           ; $456b: $bb
	jp   c, $aabc                                    ; $456c: $da $bc $aa

	adc  b                                           ; $456f: $88
	ld   h, l                                        ; $4570: $65
	ld   [hl], d                                     ; $4571: $72
	ld   h, $11                                      ; $4572: $26 $11
	ld   sp, $4622                                   ; $4574: $31 $22 $46
	ld   c, b                                        ; $4577: $48
	ld   a, d                                        ; $4578: $7a
	xor  b                                           ; $4579: $a8
	call z, $ddbd                                    ; $457a: $cc $bd $dd
	cp   h                                           ; $457d: $bc
	db   $eb                                         ; $457e: $eb
	call c, $accc                                    ; $457f: $dc $cc $ac
	sbc  c                                           ; $4582: $99
	ld   [hl], h                                     ; $4583: $74
	ld   h, a                                        ; $4584: $67
	ld   sp, $1164                                   ; $4585: $31 $64 $11
	ld   sp, $7512                                   ; $4588: $31 $12 $75
	ld   l, c                                        ; $458b: $69
	sbc  l                                           ; $458c: $9d
	sbc  e                                           ; $458d: $9b
	db   $fc                                         ; $458e: $fc
	call z, $9ffd                                    ; $458f: $cc $fd $9f

Call_0c7_4592:
	db   $ec                                         ; $4592: $ec
	call z, $aad8                                    ; $4593: $cc $d8 $aa
	ld   h, l                                        ; $4596: $65
	daa                                              ; $4597: $27
	ld   d, c                                        ; $4598: $51
	dec  h                                           ; $4599: $25
	ld   de, $1114                                   ; $459a: $11 $14 $11
	ld   a, b                                        ; $459d: $78
	ld   l, b                                        ; $459e: $68
	adc  [hl]                                        ; $459f: $8e
	jp   z, $fcff                                    ; $45a0: $ca $ff $fc

	rst  $38                                         ; $45a3: $ff
	cp   l                                           ; $45a4: $bd
	rst  $38                                         ; $45a5: $ff
	cp   b                                           ; $45a6: $b8
	db   $eb                                         ; $45a7: $eb
	ld   [hl], a                                     ; $45a8: $77
	ld   b, h                                        ; $45a9: $44
	dec  d                                           ; $45aa: $15
	ld   de, $1161                                   ; $45ab: $11 $61 $11
	inc  de                                          ; $45ae: $13
	inc  de                                          ; $45af: $13
	call nz, $cfad                                   ; $45b0: $c4 $ad $cf
	cp   a                                           ; $45b3: $bf
	rst  $38                                         ; $45b4: $ff
	db   $fc                                         ; $45b5: $fc
	rst  $38                                         ; $45b6: $ff
	xor  [hl]                                        ; $45b7: $ae
	call z, $d589                                    ; $45b8: $cc $89 $d5
	ld   b, e                                        ; $45bb: $43
	ld   de, $1431                                   ; $45bc: $11 $31 $14
	ld   b, c                                        ; $45bf: $41
	inc  d                                           ; $45c0: $14
	ld   h, c                                        ; $45c1: $61
	rra                                              ; $45c2: $1f
	xor  b                                           ; $45c3: $a8
	rst  $28                                         ; $45c4: $ef
	db   $fc                                         ; $45c5: $fc
	rst  $38                                         ; $45c6: $ff
	rst  $38                                         ; $45c7: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45c8: $cf
	ld   hl, sp-$56                                  ; $45c9: $f8 $aa
	push bc                                          ; $45cb: $c5
	ld   c, e                                        ; $45cc: $4b
	ld   d, c                                        ; $45cd: $51
	ld   de, $1132                                   ; $45ce: $11 $32 $11
	ld   [hl], h                                     ; $45d1: $74
	ld   de, $147a                                   ; $45d2: $11 $7a $14
	db   $fd                                         ; $45d5: $fd
	xor  l                                           ; $45d6: $ad
	rst  $38                                         ; $45d7: $ff
	cp   a                                           ; $45d8: $bf
	rst  $38                                         ; $45d9: $ff
	jp   hl                                          ; $45da: $e9


	db   $fd                                         ; $45db: $fd
	halt                                             ; $45dc: $76
	ld   a, h                                        ; $45dd: $7c
	ld   [hl-], a                                    ; $45de: $32
	ld   [hl], h                                     ; $45df: $74
	ld   de, $1117                                   ; $45e0: $11 $17 $11
	dec  de                                          ; $45e3: $1b
	ld   de, $912e                                   ; $45e4: $11 $2e $91
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45e7: $cf
	db   $fd                                         ; $45e8: $fd
	rst  $28                                         ; $45e9: $ef
	rst  $38                                         ; $45ea: $ff
	rst  $38                                         ; $45eb: $ff
	ei                                               ; $45ec: $fb
	sbc  e                                           ; $45ed: $9b
	cp   b                                           ; $45ee: $b8
	ld   d, $82                                      ; $45ef: $16 $82
	ld   de, $1431                                   ; $45f1: $11 $31 $14
	ld   h, c                                        ; $45f4: $61
	add  hl, de                                      ; $45f5: $19
	ld   d, c                                        ; $45f6: $51
	inc  e                                           ; $45f7: $1c
	call nc, $ffbf                                   ; $45f8: $d4 $bf $ff
	rst  $38                                         ; $45fb: $ff
	rst  $38                                         ; $45fc: $ff
	ei                                               ; $45fd: $fb
	db   $fd                                         ; $45fe: $fd
	sub  a                                           ; $45ff: $97
	ld   e, d                                        ; $4600: $5a
	ld   [hl-], a                                    ; $4601: $32
	ld   b, h                                        ; $4602: $44
	ld   b, c                                        ; $4603: $41
	ld   de, $6115                                   ; $4604: $11 $15 $61
	dec  de                                          ; $4607: $1b
	ld   h, c                                        ; $4608: $61
	cpl                                              ; $4609: $2f
	db   $e4                                         ; $460a: $e4
	cp   a                                           ; $460b: $bf
	rst  $38                                         ; $460c: $ff
	rst  $28                                         ; $460d: $ef
	rst  $38                                         ; $460e: $ff
	ld   a, [$95dc]                                  ; $460f: $fa $dc $95
	ld   c, c                                        ; $4612: $49
	ld   b, c                                        ; $4613: $41
	ld   b, h                                        ; $4614: $44
	ld   h, c                                        ; $4615: $61
	ld   de, $7116                                   ; $4616: $11 $16 $71
	dec  de                                          ; $4619: $1b
	add  c                                           ; $461a: $81
	ld   e, $f6                                      ; $461b: $1e $f6
	cp   a                                           ; $461d: $bf
	rst  $38                                         ; $461e: $ff
	rst  JumpTable                                         ; $461f: $df
	rst  $38                                         ; $4620: $ff
	ld   sp, hl                                      ; $4621: $f9
	xor  h                                           ; $4622: $ac
	or   l                                           ; $4623: $b5
	jr   jr_0c7_4699                                 ; $4624: $18 $73

	inc  [hl]                                        ; $4626: $34
	ld   [hl], e                                     ; $4627: $73
	ld   de, $8116                                   ; $4628: $11 $16 $81
	ld   a, [de]                                     ; $462b: $1a
	sub  d                                           ; $462c: $92
	inc  e                                           ; $462d: $1c
	ld   hl, sp-$31                                  ; $462e: $f8 $cf
	rst  $38                                         ; $4630: $ff
	rst  $38                                         ; $4631: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4632: $cf
	ld   sp, hl                                      ; $4633: $f9
	ld   a, c                                        ; $4634: $79
	add  $16                                         ; $4635: $c6 $16
	ld   [hl], l                                     ; $4637: $75
	ld   b, h                                        ; $4638: $44
	ld   h, h                                        ; $4639: $64
	ld   de, $a117                                   ; $463a: $11 $17 $a1
	add  hl, de                                      ; $463d: $19
	sub  l                                           ; $463e: $95
	dec  hl                                          ; $463f: $2b
	ld   a, [$ffef]                                  ; $4640: $fa $ef $ff
	rst  $38                                         ; $4643: $ff
	xor  l                                           ; $4644: $ad
	ld   a, [$a767]                                  ; $4645: $fa $67 $a7
	dec  h                                           ; $4648: $25
	ld   d, [hl]                                     ; $4649: $56
	ld   h, l                                        ; $464a: $65
	ld   d, e                                        ; $464b: $53
	ld   sp, $9116                                   ; $464c: $31 $16 $91
	rla                                              ; $464f: $17
	add  [hl]                                        ; $4650: $86
	inc  a                                           ; $4651: $3c
	ei                                               ; $4652: $fb
	rst  $38                                         ; $4653: $ff
	rst  $38                                         ; $4654: $ff
	rst  $38                                         ; $4655: $ff
	xor  e                                           ; $4656: $ab
	ld   a, [$9677]                                  ; $4657: $fa $77 $96
	ld   b, [hl]                                     ; $465a: $46
	ld   d, l                                        ; $465b: $55
	ld   [hl], a                                     ; $465c: $77
	ld   h, e                                        ; $465d: $63
	ld   hl, $9116                                   ; $465e: $21 $16 $91
	rla                                              ; $4661: $17
	sub  [hl]                                        ; $4662: $96
	ld   c, e                                        ; $4663: $4b
	db   $eb                                         ; $4664: $eb
	rst  $38                                         ; $4665: $ff
	rst  $38                                         ; $4666: $ff
	rst  $38                                         ; $4667: $ff
	xor  e                                           ; $4668: $ab
	jp   hl                                          ; $4669: $e9


	ld   h, a                                        ; $466a: $67
	add  [hl]                                        ; $466b: $86
	ld   b, [hl]                                     ; $466c: $46
	ld   h, l                                        ; $466d: $65
	ld   a, b                                        ; $466e: $78
	ld   h, h                                        ; $466f: $64
	ld   hl, $9114                                   ; $4670: $21 $14 $91
	dec  d                                           ; $4673: $15
	ld   [hl], a                                     ; $4674: $77
	ld   e, e                                        ; $4675: $5b
	db   $eb                                         ; $4676: $eb
	rst  $38                                         ; $4677: $ff

Jump_0c7_4678:
	rst  $38                                         ; $4678: $ff
	rst  $38                                         ; $4679: $ff
	xor  c                                           ; $467a: $a9
	jp   hl                                          ; $467b: $e9


	ld   h, [hl]                                     ; $467c: $66
	halt                                             ; $467d: $76
	ld   b, a                                        ; $467e: $47
	halt                                             ; $467f: $76
	adc  c                                           ; $4680: $89
	ld   [hl], l                                     ; $4681: $75
	ld   hl, $a113                                   ; $4682: $21 $13 $a1
	inc  d                                           ; $4685: $14
	ld   [hl], a                                     ; $4686: $77
	ld   l, e                                        ; $4687: $6b
	db   $fc                                         ; $4688: $fc
	rst  $38                                         ; $4689: $ff
	rst  $38                                         ; $468a: $ff
	rst  $38                                         ; $468b: $ff
	xor  c                                           ; $468c: $a9
	reti                                             ; $468d: $d9


	ld   d, [hl]                                     ; $468e: $56
	halt                                             ; $468f: $76
	ld   d, a                                        ; $4690: $57
	halt                                             ; $4691: $76
	sbc  d                                           ; $4692: $9a
	add  [hl]                                        ; $4693: $86
	ld   sp, $9411                                   ; $4694: $31 $11 $94
	ld   [de], a                                     ; $4697: $12
	ld   d, a                                        ; $4698: $57

jr_0c7_4699:
	ld   a, d                                        ; $4699: $7a
	db   $fc                                         ; $469a: $fc
	rst  $38                                         ; $469b: $ff
	rst  $38                                         ; $469c: $ff
	rst  $38                                         ; $469d: $ff
	sub  a                                           ; $469e: $97
	jp   z, Jump_0c7_7655                            ; $469f: $ca $55 $76

	ld   e, b                                        ; $46a2: $58
	add  a                                           ; $46a3: $87
	adc  e                                           ; $46a4: $8b
	and  a                                           ; $46a5: $a7
	ld   d, c                                        ; $46a6: $51
	ld   de, $1167                                   ; $46a7: $11 $67 $11
	ld   b, l                                        ; $46aa: $45
	ld   a, e                                        ; $46ab: $7b
	cp   $df                                         ; $46ac: $fe $df
	rst  $38                                         ; $46ae: $ff
	cp   $a6                                         ; $46af: $fe $a6
	sbc  e                                           ; $46b1: $9b
	ld   d, l                                        ; $46b2: $55
	ld   h, l                                        ; $46b3: $65
	ld   d, a                                        ; $46b4: $57
	xor  b                                           ; $46b5: $a8
	ld   a, e                                        ; $46b6: $7b
	cp   c                                           ; $46b7: $b9
	add  e                                           ; $46b8: $83
	ld   de, $2119                                   ; $46b9: $11 $19 $21
	ld   [hl-], a                                    ; $46bc: $32
	ld   e, c                                        ; $46bd: $59
	rst  $38                                         ; $46be: $ff
	cp   a                                           ; $46bf: $bf
	rst  $38                                         ; $46c0: $ff
	rst  $38                                         ; $46c1: $ff
	add  $4b                                         ; $46c2: $c6 $4b
	ld   [hl], h                                     ; $46c4: $74
	ld   h, h                                        ; $46c5: $64
	ld   b, [hl]                                     ; $46c6: $46
	sbc  e                                           ; $46c7: $9b
	adc  d                                           ; $46c8: $8a
	cp   d                                           ; $46c9: $ba
	and  [hl]                                        ; $46ca: $a6
	ld   bc, $7114                                   ; $46cb: $01 $14 $71
	ld   [hl+], a                                    ; $46ce: $22
	rla                                              ; $46cf: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46d0: $cf
	db   $fd                                         ; $46d1: $fd
	rst  $38                                         ; $46d2: $ff
	rst  $38                                         ; $46d3: $ff
	ld   [$9435], a                                  ; $46d4: $ea $35 $94
	ld   h, [hl]                                     ; $46d7: $66
	dec  [hl]                                        ; $46d8: $35
	ld   a, h                                        ; $46d9: $7c
	cp   d                                           ; $46da: $ba
	res  7, e                                        ; $46db: $cb $bb
	ld   d, c                                        ; $46dd: $51
	ld   de, $1443                                   ; $46de: $11 $43 $14
	ld   de, $ff7f                                   ; $46e1: $11 $7f $ff
	rst  $38                                         ; $46e4: $ff
	rst  $38                                         ; $46e5: $ff
	db   $fd                                         ; $46e6: $fd
	sub  c                                           ; $46e7: $91
	ld   b, l                                        ; $46e8: $45
	jr   c, jr_0c7_473e                              ; $46e9: $38 $53

	ld   d, a                                        ; $46eb: $57
	db   $dd                                         ; $46ec: $dd
	adc  $ab                                         ; $46ed: $ce $ab
	and  h                                           ; $46ef: $a4
	ld   de, $1112                                   ; $46f0: $11 $12 $11
	ld   b, c                                        ; $46f3: $41
	jr   z, @+$01                                    ; $46f4: $28 $ff

	rst  $38                                         ; $46f6: $ff
	rst  $38                                         ; $46f7: $ff
	rst  $38                                         ; $46f8: $ff
	rst  $10                                         ; $46f9: $d7
	inc  de                                          ; $46fa: $13
	inc  hl                                          ; $46fb: $23
	add  l                                           ; $46fc: $85
	ld   b, l                                        ; $46fd: $45
	ld   a, [hl]                                     ; $46fe: $7e
	rst  $28                                         ; $46ff: $ef
	ei                                               ; $4700: $fb
	cp   b                                           ; $4701: $b8
	ld   sp, $1111                                   ; $4702: $31 $11 $11
	dec  d                                           ; $4705: $15
	inc  de                                          ; $4706: $13
	sbc  a                                           ; $4707: $9f
	rst  $38                                         ; $4708: $ff
	rst  $38                                         ; $4709: $ff
	rst  $38                                         ; $470a: $ff
	db   $fd                                         ; $470b: $fd
	ld   [hl], c                                     ; $470c: $71
	ld   de, $5517                                   ; $470d: $11 $17 $55
	ld   h, a                                        ; $4710: $67
	sbc  $ff                                         ; $4711: $de $ff
	res  0, e                                        ; $4713: $cb $83
	ld   de, $1111                                   ; $4715: $11 $11 $11
	ld   b, d                                        ; $4718: $42
	add  hl, sp                                      ; $4719: $39
	rst  $38                                         ; $471a: $ff
	rst  $38                                         ; $471b: $ff
	rst  $38                                         ; $471c: $ff
	rst  $38                                         ; $471d: $ff
	rst  ToBoot                                         ; $471e: $c7
	ld   de, $6611                                   ; $471f: $11 $11 $66
	ld   h, a                                        ; $4722: $67
	adc  [hl]                                        ; $4723: $8e
	rst  $38                                         ; $4724: $ff
	cp   $d9                                         ; $4725: $fe $d9
	ld   sp, $1111                                   ; $4727: $31 $11 $11
	ld   [de], a                                     ; $472a: $12
	inc  sp                                          ; $472b: $33
	adc  [hl]                                        ; $472c: $8e
	rst  $38                                         ; $472d: $ff
	rst  $38                                         ; $472e: $ff
	rst  $38                                         ; $472f: $ff
	db   $fc                                         ; $4730: $fc
	add  c                                           ; $4731: $81
	ld   de, $6612                                   ; $4732: $11 $12 $66
	sbc  b                                           ; $4735: $98
	rst  JumpTable                                         ; $4736: $df
	rst  $38                                         ; $4737: $ff
	cp   $b5                                         ; $4738: $fe $b5
	ld   de, $1111                                   ; $473a: $11 $11 $11
	inc  d                                           ; $473d: $14

jr_0c7_473e:
	ld   [hl], $cf                                   ; $473e: $36 $cf
	rst  $38                                         ; $4740: $ff
	rst  $38                                         ; $4741: $ff
	rst  $28                                         ; $4742: $ef
	ret  z                                           ; $4743: $c8

	ld   sp, $1411                                   ; $4744: $31 $11 $14
	ld   a, c                                        ; $4747: $79
	cp   h                                           ; $4748: $bc
	rst  $38                                         ; $4749: $ff
	rst  $38                                         ; $474a: $ff
	rst  $38                                         ; $474b: $ff
	sub  d                                           ; $474c: $92
	ld   de, $1111                                   ; $474d: $11 $11 $11
	dec  d                                           ; $4750: $15
	ld   l, d                                        ; $4751: $6a
	rst  $38                                         ; $4752: $ff
	rst  $38                                         ; $4753: $ff
	rst  $38                                         ; $4754: $ff
	call c, $1195                                    ; $4755: $dc $95 $11
	ld   de, $9d15                                   ; $4758: $11 $15 $9d
	rst  JumpTable                                         ; $475b: $df
	rst  $38                                         ; $475c: $ff
	rst  $38                                         ; $475d: $ff
	cp   $61                                         ; $475e: $fe $61
	ld   de, $1111                                   ; $4760: $11 $11 $11
	jr   z, @-$72                                    ; $4763: $28 $8c

	rst  $38                                         ; $4765: $ff
	rst  $38                                         ; $4766: $ff
	rst  $38                                         ; $4767: $ff
	xor  d                                           ; $4768: $aa
	ld   d, d                                        ; $4769: $52
	ld   de, $1711                                   ; $476a: $11 $11 $17
	cp   a                                           ; $476d: $bf
	rst  $38                                         ; $476e: $ff
	rst  $38                                         ; $476f: $ff

jr_0c7_4770:
	rst  $38                                         ; $4770: $ff
	db   $fd                                         ; $4771: $fd
	ld   d, c                                        ; $4772: $51
	ld   de, $1111                                   ; $4773: $11 $11 $11
	inc  a                                           ; $4776: $3c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4777: $cf
	rst  $38                                         ; $4778: $ff
	rst  $38                                         ; $4779: $ff
	rst  $38                                         ; $477a: $ff
	halt                                             ; $477b: $76
	ld   hl, $1111                                   ; $477c: $21 $11 $11
	jr   jr_0c7_4770                                 ; $477f: $18 $ef

	rst  $38                                         ; $4781: $ff
	rst  $38                                         ; $4782: $ff
	rst  $38                                         ; $4783: $ff
	cp   $51                                         ; $4784: $fe $51
	ld   de, $1111                                   ; $4786: $11 $11 $11
	ld   l, $ff                                      ; $4789: $2e $ff
	rst  $38                                         ; $478b: $ff
	rst  $38                                         ; $478c: $ff
	rst  $38                                         ; $478d: $ff
	ld   [hl], d                                     ; $478e: $72
	ld   de, $1111                                   ; $478f: $11 $11 $11
	rla                                              ; $4792: $17
	rst  $38                                         ; $4793: $ff
	rst  $38                                         ; $4794: $ff
	rst  $38                                         ; $4795: $ff
	rst  $38                                         ; $4796: $ff
	cp   $71                                         ; $4797: $fe $71
	ld   de, $1111                                   ; $4799: $11 $11 $11
	ld   c, l                                        ; $479c: $4d
	rst  $38                                         ; $479d: $ff
	rst  $38                                         ; $479e: $ff
	rst  $38                                         ; $479f: $ff
	rst  $38                                         ; $47a0: $ff
	and  c                                           ; $47a1: $a1
	ld   de, $1111                                   ; $47a2: $11 $11 $11
	ld   [de], a                                     ; $47a5: $12
	rst  $38                                         ; $47a6: $ff
	rst  $38                                         ; $47a7: $ff
	rst  $38                                         ; $47a8: $ff
	rst  $38                                         ; $47a9: $ff
	db   $fd                                         ; $47aa: $fd
	sub  c                                           ; $47ab: $91
	ld   de, $1111                                   ; $47ac: $11 $11 $11
	ld   a, h                                        ; $47af: $7c
	rst  $38                                         ; $47b0: $ff
	rst  $38                                         ; $47b1: $ff
	rst  $38                                         ; $47b2: $ff
	rst  $38                                         ; $47b3: $ff
	pop  af                                          ; $47b4: $f1
	ld   de, $1111                                   ; $47b5: $11 $11 $11
	ld   de, $ffef                                   ; $47b8: $11 $ef $ff
	rst  $38                                         ; $47bb: $ff
	rst  $38                                         ; $47bc: $ff
	db   $fd                                         ; $47bd: $fd
	and  e                                           ; $47be: $a3
	ld   de, $1111                                   ; $47bf: $11 $11 $11
	ld   a, l                                        ; $47c2: $7d
	rst  $38                                         ; $47c3: $ff
	rst  $38                                         ; $47c4: $ff
	rst  $38                                         ; $47c5: $ff
	rst  $38                                         ; $47c6: $ff
	db   $f4                                         ; $47c7: $f4
	ld   de, $1111                                   ; $47c8: $11 $11 $11
	ld   de, $ff8f                                   ; $47cb: $11 $8f $ff
	rst  $38                                         ; $47ce: $ff
	rst  $38                                         ; $47cf: $ff
	db   $ed                                         ; $47d0: $ed
	sub  l                                           ; $47d1: $95
	ld   de, $1111                                   ; $47d2: $11 $11 $11
	ld   a, $ff                                      ; $47d5: $3e $ff
	rst  $38                                         ; $47d7: $ff
	rst  $38                                         ; $47d8: $ff
	rst  $38                                         ; $47d9: $ff
	ld   hl, sp+$11                                  ; $47da: $f8 $11
	ld   de, $1111                                   ; $47dc: $11 $11 $11
	ld   e, a                                        ; $47df: $5f
	rst  $38                                         ; $47e0: $ff
	rst  $38                                         ; $47e1: $ff
	rst  $38                                         ; $47e2: $ff
	res  2, a                                        ; $47e3: $cb $97
	ld   bc, $1111                                   ; $47e5: $01 $11 $11
	ld   e, $ff                                      ; $47e8: $1e $ff
	rst  $38                                         ; $47ea: $ff
	rst  $38                                         ; $47eb: $ff
	rst  $38                                         ; $47ec: $ff
	ei                                               ; $47ed: $fb
	ld   de, $1111                                   ; $47ee: $11 $11 $11
	ld   de, $ff3c                                   ; $47f1: $11 $3c $ff
	rst  $38                                         ; $47f4: $ff
	rst  $38                                         ; $47f5: $ff
	jp   z, $41a7                                    ; $47f6: $ca $a7 $41

	ld   de, $1b11                                   ; $47f9: $11 $11 $1b
	rst  $38                                         ; $47fc: $ff
	rst  $38                                         ; $47fd: $ff
	rst  $38                                         ; $47fe: $ff
	rst  $38                                         ; $47ff: $ff
	rst  $38                                         ; $4800: $ff
	ld   sp, $1111                                   ; $4801: $31 $11 $11
	ld   de, $ff28                                   ; $4804: $11 $28 $ff
	rst  $38                                         ; $4807: $ff
	rst  $38                                         ; $4808: $ff
	ret                                              ; $4809: $c9


	sbc  b                                           ; $480a: $98
	ld   [hl], c                                     ; $480b: $71
	ld   de, $1611                                   ; $480c: $11 $11 $16
	rst  $38                                         ; $480f: $ff
	rst  $38                                         ; $4810: $ff
	rst  $38                                         ; $4811: $ff
	rst  $38                                         ; $4812: $ff
	rst  $38                                         ; $4813: $ff
	add  c                                           ; $4814: $81
	ld   de, $2311                                   ; $4815: $11 $11 $23
	ld   b, [hl]                                     ; $4818: $46
	rst  $28                                         ; $4819: $ef
	rst  $38                                         ; $481a: $ff
	rst  $38                                         ; $481b: $ff
	rst  ToBoot                                         ; $481c: $c7
	ld   a, b                                        ; $481d: $78
	add  e                                           ; $481e: $83
	ld   de, $1611                                   ; $481f: $11 $11 $16
	rst  $38                                         ; $4822: $ff
	rst  $38                                         ; $4823: $ff
	cp   e                                           ; $4824: $bb
	rst  $38                                         ; $4825: $ff
	rst  $38                                         ; $4826: $ff
	and  c                                           ; $4827: $a1
	ld   de, $8914                                   ; $4828: $11 $14 $89
	ld   [hl], a                                     ; $482b: $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $482c: $cf
	rst  $38                                         ; $482d: $ff
	rst  $38                                         ; $482e: $ff
	or   l                                           ; $482f: $b5
	ld   d, [hl]                                     ; $4830: $56
	add  l                                           ; $4831: $85
	ld   de, $1811                                   ; $4832: $11 $11 $18
	rst  $38                                         ; $4835: $ff
	cp   $89                                         ; $4836: $fe $89
	rst  JumpTable                                         ; $4838: $df
	rst  $38                                         ; $4839: $ff
	add  c                                           ; $483a: $81
	ld   de, $aa17                                   ; $483b: $11 $17 $aa
	sbc  b                                           ; $483e: $98
	cp   a                                           ; $483f: $bf
	rst  $38                                         ; $4840: $ff
	rst  $38                                         ; $4841: $ff
	add  h                                           ; $4842: $84
	ld   b, [hl]                                     ; $4843: $46
	add  h                                           ; $4844: $84
	ld   de, $1a11                                   ; $4845: $11 $11 $1a
	rst  $38                                         ; $4848: $ff
	db   $fc                                         ; $4849: $fc
	ld   a, b                                        ; $484a: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $484b: $cf
	rst  $38                                         ; $484c: $ff
	ld   [hl], c                                     ; $484d: $71
	ld   de, $aa18                                   ; $484e: $11 $18 $aa
	adc  b                                           ; $4851: $88
	cp   a                                           ; $4852: $bf
	rst  $38                                         ; $4853: $ff
	rst  $38                                         ; $4854: $ff
	ld   [hl], h                                     ; $4855: $74
	ld   d, a                                        ; $4856: $57
	add  h                                           ; $4857: $84
	ld   de, $1a11                                   ; $4858: $11 $11 $1a
	rst  $38                                         ; $485b: $ff
	ld   sp, hl                                      ; $485c: $f9
	ld   l, b                                        ; $485d: $68
	rst  $28                                         ; $485e: $ef
	rst  $38                                         ; $485f: $ff
	ld   d, c                                        ; $4860: $51
	ld   de, $b94a                                   ; $4861: $11 $4a $b9
	ld   a, b                                        ; $4864: $78
	cp   a                                           ; $4865: $bf
	rst  $38                                         ; $4866: $ff
	db   $fd                                         ; $4867: $fd
	ld   h, l                                        ; $4868: $65
	ld   l, c                                        ; $4869: $69
	add  d                                           ; $486a: $82
	ld   de, $4c11                                   ; $486b: $11 $11 $4c
	rst  $38                                         ; $486e: $ff
	rst  ToBoot                                         ; $486f: $c7
	ld   l, e                                        ; $4870: $6b
	rst  $38                                         ; $4871: $ff
	cp   $21                                         ; $4872: $fe $21
	ld   de, $b789                                   ; $4874: $11 $89 $b7
	ld   e, c                                        ; $4877: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4878: $cf
	rst  $38                                         ; $4879: $ff
	ld   sp, hl                                      ; $487a: $f9
	ld   h, a                                        ; $487b: $67
	adc  d                                           ; $487c: $8a
	ld   h, c                                        ; $487d: $61
	ld   de, $8e11                                   ; $487e: $11 $11 $8e
	db   $fc                                         ; $4881: $fc
	ld   [hl], l                                     ; $4882: $75
	adc  a                                           ; $4883: $8f
	rst  $38                                         ; $4884: $ff
	rst  $30                                         ; $4885: $f7
	ld   de, $9a17                                   ; $4886: $11 $17 $9a
	sub  h                                           ; $4889: $94
	ld   l, d                                        ; $488a: $6a
	rst  $38                                         ; $488b: $ff
	rst  $38                                         ; $488c: $ff
	or   a                                           ; $488d: $b7
	ld   a, c                                        ; $488e: $79
	xor  c                                           ; $488f: $a9
	ld   hl, $1611                                   ; $4890: $21 $11 $16
	rst  JumpTable                                         ; $4893: $df
	and  [hl]                                        ; $4894: $a6
	ld   b, [hl]                                     ; $4895: $46
	rst  $38                                         ; $4896: $ff
	rst  $38                                         ; $4897: $ff
	or   h                                           ; $4898: $b4
	inc  hl                                          ; $4899: $23
	adc  e                                           ; $489a: $8b
	cp   d                                           ; $489b: $ba
	ld   b, l                                        ; $489c: $45
	adc  e                                           ; $489d: $8b
	rst  $38                                         ; $489e: $ff
	db   $eb                                         ; $489f: $eb
	ld   [hl], a                                     ; $48a0: $77
	adc  d                                           ; $48a1: $8a
	sub  e                                           ; $48a2: $93
	ld   de, $5b11                                   ; $48a3: $11 $11 $5b
	jp   hl                                          ; $48a6: $e9


	ld   d, e                                        ; $48a7: $53
	ld   e, l                                        ; $48a8: $5d
	rst  $38                                         ; $48a9: $ff
	ei                                               ; $48aa: $fb
	ld   h, h                                        ; $48ab: $64
	ld   e, c                                        ; $48ac: $59
	cp   h                                           ; $48ad: $bc
	or   [hl]                                        ; $48ae: $b6
	ld   d, a                                        ; $48af: $57
	cp   a                                           ; $48b0: $bf
	cp   $b7                                         ; $48b1: $fe $b7
	ld   a, b                                        ; $48b3: $78
	adc  b                                           ; $48b4: $88
	ld   sp, $1611                                   ; $48b5: $31 $11 $16
	xor  e                                           ; $48b8: $ab
	ld   [hl], h                                     ; $48b9: $74
	ld   [hl], $df                                   ; $48ba: $36 $df
	rst  $38                                         ; $48bc: $ff
	rst  ToBoot                                         ; $48bd: $c7
	ld   h, a                                        ; $48be: $67
	xor  l                                           ; $48bf: $ad
	jp   c, $7b76                                    ; $48c0: $da $76 $7b

	call c, Call_0c7_66b9                            ; $48c3: $dc $b9 $66
	ld   [hl], a                                     ; $48c6: $77
	ld   h, d                                        ; $48c7: $62
	ld   de, $7914                                   ; $48c8: $11 $14 $79
	sub  [hl]                                        ; $48cb: $96
	ld   b, h                                        ; $48cc: $44
	sbc  l                                           ; $48cd: $9d
	rst  $38                                         ; $48ce: $ff
	ld   [$9b98], a                                  ; $48cf: $ea $98 $9b
	db   $dd                                         ; $48d2: $dd
	xor  c                                           ; $48d3: $a9
	adc  b                                           ; $48d4: $88
	xor  d                                           ; $48d5: $aa
	cp   d                                           ; $48d6: $ba
	ld   [hl], a                                     ; $48d7: $77
	ld   h, [hl]                                     ; $48d8: $66
	ld   d, h                                        ; $48d9: $54
	ld   bc, $5714                                   ; $48da: $01 $14 $57
	halt                                             ; $48dd: $76
	ld   b, e                                        ; $48de: $43
	ld   a, e                                        ; $48df: $7b
	sbc  $dc                                         ; $48e0: $de $dc
	sbc  c                                           ; $48e2: $99
	xor  e                                           ; $48e3: $ab
	call $99db                                       ; $48e4: $cd $db $99
	sbc  c                                           ; $48e7: $99
	xor  d                                           ; $48e8: $aa
	adc  b                                           ; $48e9: $88
	ld   [hl], a                                     ; $48ea: $77
	ld   h, l                                        ; $48eb: $65
	ld   [hl-], a                                    ; $48ec: $32
	dec  [hl]                                        ; $48ed: $35
	ld   d, l                                        ; $48ee: $55
	ld   d, l                                        ; $48ef: $55
	ld   b, e                                        ; $48f0: $43
	ld   d, a                                        ; $48f1: $57
	sbc  d                                           ; $48f2: $9a
	xor  e                                           ; $48f3: $ab
	sbc  c                                           ; $48f4: $99
	xor  e                                           ; $48f5: $ab
	call z, $a9cc                                    ; $48f6: $cc $cc $a9
	xor  c                                           ; $48f9: $a9
	xor  e                                           ; $48fa: $ab
	res  7, c                                        ; $48fb: $cb $b9
	add  a                                           ; $48fd: $87
	ld   h, l                                        ; $48fe: $65
	ld   d, l                                        ; $48ff: $55
	ld   d, e                                        ; $4900: $53
	ld   [hl+], a                                    ; $4901: $22
	ld   de, $5624                                   ; $4902: $11 $24 $56
	ld   a, c                                        ; $4905: $79
	sbc  d                                           ; $4906: $9a
	cp   e                                           ; $4907: $bb
	call z, $cccd                                    ; $4908: $cc $cd $cc
	call z, $edcc                                    ; $490b: $cc $cc $ed
	db   $dd                                         ; $490e: $dd
	cp   c                                           ; $490f: $b9
	ld   h, l                                        ; $4910: $65
	ld   d, l                                        ; $4911: $55
	ld   b, d                                        ; $4912: $42
	ld   de, $1211                                   ; $4913: $11 $11 $12
	ld   b, l                                        ; $4916: $45
	ld   h, a                                        ; $4917: $67
	sbc  c                                           ; $4918: $99
	xor  h                                           ; $4919: $ac
	call $dccc                                       ; $491a: $cd $cc $dc
	db   $dd                                         ; $491d: $dd
	call $ddee                                       ; $491e: $cd $ee $dd
	jp   z, Jump_0c7_4485                            ; $4921: $ca $85 $44

	ld   b, d                                        ; $4924: $42
	ld   de, $1111                                   ; $4925: $11 $11 $11
	inc  [hl]                                        ; $4928: $34
	ld   d, a                                        ; $4929: $57
	adc  b                                           ; $492a: $88
	sbc  h                                           ; $492b: $9c
	db   $dd                                         ; $492c: $dd
	db   $dd                                         ; $492d: $dd
	call z, $ddde                                    ; $492e: $cc $de $dd
	cp   $ee                                         ; $4931: $fe $ee
	call c, Call_0c7_5497                            ; $4933: $dc $97 $54
	ld   b, d                                        ; $4936: $42
	ld   de, $1111                                   ; $4937: $11 $11 $11
	inc  de                                          ; $493a: $13
	ld   b, [hl]                                     ; $493b: $46
	adc  c                                           ; $493c: $89
	sbc  e                                           ; $493d: $9b
	db   $dd                                         ; $493e: $dd
	rst  $28                                         ; $493f: $ef
	db   $ed                                         ; $4940: $ed
	adc  $ed                                         ; $4941: $ce $ed
	rst  $28                                         ; $4943: $ef
	db   $ed                                         ; $4944: $ed
	res  2, a                                        ; $4945: $cb $97
	ld   h, h                                        ; $4947: $64
	ld   b, e                                        ; $4948: $43
	ld   de, $1111                                   ; $4949: $11 $11 $11
	ld   [de], a                                     ; $494c: $12
	dec  [hl]                                        ; $494d: $35
	adc  b                                           ; $494e: $88
	sbc  e                                           ; $494f: $9b
	sbc  $ee                                         ; $4950: $de $ee
	cp   $ee                                         ; $4952: $fe $ee
	db   $ed                                         ; $4954: $ed
	xor  $fe                                         ; $4955: $ee $fe
	res  2, a                                        ; $4957: $cb $97
	ld   d, h                                        ; $4959: $54
	ld   b, e                                        ; $495a: $43
	ld   de, $1111                                   ; $495b: $11 $11 $11
	ld   [de], a                                     ; $495e: $12
	dec  [hl]                                        ; $495f: $35
	ld   a, b                                        ; $4960: $78
	sbc  e                                           ; $4961: $9b
	sbc  $ef                                         ; $4962: $de $ef
	rst  $38                                         ; $4964: $ff
	xor  $ee                                         ; $4965: $ee $ee
	rst  $28                                         ; $4967: $ef
	xor  $cc                                         ; $4968: $ee $cc
	sub  a                                           ; $496a: $97
	ld   d, h                                        ; $496b: $54
	ld   b, e                                        ; $496c: $43
	ld   de, $1111                                   ; $496d: $11 $11 $11
	ld   de, $7835                                   ; $4970: $11 $35 $78
	xor  h                                           ; $4973: $ac
	xor  $ff                                         ; $4974: $ee $ff
	rst  $38                                         ; $4976: $ff
	rst  $38                                         ; $4977: $ff
	cp   $ff                                         ; $4978: $fe $ff
	db   $ed                                         ; $497a: $ed
	res  4, [hl]                                     ; $497b: $cb $a6
	ld   b, e                                        ; $497d: $43
	ld   sp, $1111                                   ; $497e: $31 $11 $11
	ld   de, $3511                                   ; $4981: $11 $11 $35
	adc  c                                           ; $4984: $89
	xor  l                                           ; $4985: $ad
	xor  $ef                                         ; $4986: $ee $ef
	rst  $38                                         ; $4988: $ff
	rst  $38                                         ; $4989: $ff
	rst  $38                                         ; $498a: $ff
	rst  $38                                         ; $498b: $ff
	db   $ec                                         ; $498c: $ec
	res  0, l                                        ; $498d: $cb $85
	inc  sp                                          ; $498f: $33
	ld   hl, $1111                                   ; $4990: $21 $11 $11
	ld   de, $3611                                   ; $4993: $11 $11 $36
	sbc  c                                           ; $4996: $99
	call $ffef                                       ; $4997: $cd $ef $ff
	rst  $38                                         ; $499a: $ff
	rst  $38                                         ; $499b: $ff
	rst  $38                                         ; $499c: $ff
	rst  $38                                         ; $499d: $ff
	db   $ed                                         ; $499e: $ed
	ret                                              ; $499f: $c9


	ld   h, e                                        ; $49a0: $63
	ld   [hl+], a                                    ; $49a1: $22
	ld   de, $1111                                   ; $49a2: $11 $11 $11
	ld   de, $5812                                   ; $49a5: $11 $12 $58
	xor  e                                           ; $49a8: $ab
	rst  $28                                         ; $49a9: $ef
	rst  $38                                         ; $49aa: $ff

Call_0c7_49ab:
	rst  $38                                         ; $49ab: $ff
	rst  $38                                         ; $49ac: $ff
	rst  $38                                         ; $49ad: $ff
	rst  $38                                         ; $49ae: $ff
	cp   $cd                                         ; $49af: $fe $cd
	and  a                                           ; $49b1: $a7
	ld   b, d                                        ; $49b2: $42
	ld   hl, $1111                                   ; $49b3: $21 $11 $11
	ld   de, $1411                                   ; $49b6: $11 $11 $14
	ld   a, c                                        ; $49b9: $79
	xor  l                                           ; $49ba: $ad
	xor  $ff                                         ; $49bb: $ee $ff
	rst  $38                                         ; $49bd: $ff
	rst  $38                                         ; $49be: $ff
	rst  $38                                         ; $49bf: $ff
	rst  $38                                         ; $49c0: $ff
	db   $fd                                         ; $49c1: $fd
	call z, $2284                                    ; $49c2: $cc $84 $22
	ld   de, $1111                                   ; $49c5: $11 $11 $11
	ld   de, $4711                                   ; $49c8: $11 $11 $47
	sbc  e                                           ; $49cb: $9b
	rst  JumpTable                                         ; $49cc: $df
	rst  $38                                         ; $49cd: $ff
	rst  $38                                         ; $49ce: $ff
	rst  $38                                         ; $49cf: $ff
	rst  $38                                         ; $49d0: $ff
	rst  $38                                         ; $49d1: $ff
	rst  $38                                         ; $49d2: $ff
	call c, Call_0c7_42c8                            ; $49d3: $dc $c8 $42
	ld   hl, $1111                                   ; $49d6: $21 $11 $11
	ld   de, $1411                                   ; $49d9: $11 $11 $14
	ld   a, c                                        ; $49dc: $79
	cp   l                                           ; $49dd: $bd
	rst  $38                                         ; $49de: $ff
	rst  $38                                         ; $49df: $ff
	rst  $38                                         ; $49e0: $ff
	rst  $38                                         ; $49e1: $ff
	rst  $38                                         ; $49e2: $ff
	rst  $38                                         ; $49e3: $ff
	db   $ed                                         ; $49e4: $ed
	bit  4, e                                        ; $49e5: $cb $63
	ld   hl, $1111                                   ; $49e7: $21 $11 $11
	ld   de, $1111                                   ; $49ea: $11 $11 $11
	ld   c, b                                        ; $49ed: $48
	sbc  h                                           ; $49ee: $9c
	rst  $28                                         ; $49ef: $ef
	rst  $38                                         ; $49f0: $ff
	rst  $38                                         ; $49f1: $ff
	rst  $38                                         ; $49f2: $ff
	rst  $38                                         ; $49f3: $ff
	rst  $38                                         ; $49f4: $ff
	cp   $cc                                         ; $49f5: $fe $cc
	sub  h                                           ; $49f7: $94
	ld   [hl+], a                                    ; $49f8: $22
	ld   de, $1111                                   ; $49f9: $11 $11 $11
	ld   de, $2711                                   ; $49fc: $11 $11 $27
	sbc  c                                           ; $49ff: $99
	rst  $28                                         ; $4a00: $ef
	rst  $38                                         ; $4a01: $ff
	rst  $38                                         ; $4a02: $ff
	rst  $38                                         ; $4a03: $ff
	rst  $38                                         ; $4a04: $ff
	rst  $38                                         ; $4a05: $ff
	cp   $dc                                         ; $4a06: $fe $dc
	or   l                                           ; $4a08: $b5
	ld   [hl+], a                                    ; $4a09: $22
	ld   de, $1111                                   ; $4a0a: $11 $11 $11
	ld   de, $1611                                   ; $4a0d: $11 $11 $16
	sbc  c                                           ; $4a10: $99
	rst  JumpTable                                         ; $4a11: $df
	rst  $38                                         ; $4a12: $ff
	rst  $38                                         ; $4a13: $ff
	rst  $38                                         ; $4a14: $ff
	rst  $38                                         ; $4a15: $ff
	rst  $38                                         ; $4a16: $ff
	rst  $38                                         ; $4a17: $ff
	call c, $12b5                                    ; $4a18: $dc $b5 $12
	ld   de, $1111                                   ; $4a1b: $11 $11 $11
	ld   de, $1611                                   ; $4a1e: $11 $11 $16
	adc  c                                           ; $4a21: $89
	rst  JumpTable                                         ; $4a22: $df
	rst  $38                                         ; $4a23: $ff
	rst  $38                                         ; $4a24: $ff
	rst  $38                                         ; $4a25: $ff
	rst  $38                                         ; $4a26: $ff
	rst  $38                                         ; $4a27: $ff
	cp   $dc                                         ; $4a28: $fe $dc
	and  h                                           ; $4a2a: $a4
	ld   [de], a                                     ; $4a2b: $12
	ld   de, $1111                                   ; $4a2c: $11 $11 $11
	ld   de, $3811                                   ; $4a2f: $11 $11 $38
	sbc  d                                           ; $4a32: $9a
	rst  $38                                         ; $4a33: $ff
	rst  $38                                         ; $4a34: $ff
	rst  $38                                         ; $4a35: $ff
	rst  $38                                         ; $4a36: $ff
	rst  $38                                         ; $4a37: $ff
	rst  $38                                         ; $4a38: $ff
	db   $fc                                         ; $4a39: $fc
	xor  c                                           ; $4a3a: $a9
	ld   d, c                                        ; $4a3b: $51
	ld   de, $1111                                   ; $4a3c: $11 $11 $11
	ld   de, $1311                                   ; $4a3f: $11 $11 $13
	adc  e                                           ; $4a42: $8b
	cp   a                                           ; $4a43: $bf
	rst  $38                                         ; $4a44: $ff
	rst  $38                                         ; $4a45: $ff
	rst  $38                                         ; $4a46: $ff
	rst  $38                                         ; $4a47: $ff
	rst  $38                                         ; $4a48: $ff
	cp   $b8                                         ; $4a49: $fe $b8
	ld   d, d                                        ; $4a4b: $52
	ld   de, $1111                                   ; $4a4c: $11 $11 $11
	ld   de, $1211                                   ; $4a4f: $11 $11 $12
	ld   l, d                                        ; $4a52: $6a
	sbc  $ff                                         ; $4a53: $de $ff
	rst  $38                                         ; $4a55: $ff
	rst  $38                                         ; $4a56: $ff
	rst  $38                                         ; $4a57: $ff
	rst  $38                                         ; $4a58: $ff
	call z, $4198                                    ; $4a59: $cc $98 $41
	ld   de, $1111                                   ; $4a5c: $11 $11 $11
	ld   de, $1211                                   ; $4a5f: $11 $11 $12
	ld   a, d                                        ; $4a62: $7a
	rst  $38                                         ; $4a63: $ff
	rst  $38                                         ; $4a64: $ff
	rst  $38                                         ; $4a65: $ff
	rst  $38                                         ; $4a66: $ff
	rst  $38                                         ; $4a67: $ff
	rst  $38                                         ; $4a68: $ff
	call c, $1173                                    ; $4a69: $dc $73 $11
	ld   de, $1111                                   ; $4a6c: $11 $11 $11
	ld   de, $1511                                   ; $4a6f: $11 $11 $15
	call $ffff                                       ; $4a72: $cd $ff $ff
	rst  $38                                         ; $4a75: $ff
	rst  $38                                         ; $4a76: $ff
	rst  $38                                         ; $4a77: $ff
	rst  $38                                         ; $4a78: $ff
	reti                                             ; $4a79: $d9


	ld   hl, $1111                                   ; $4a7a: $21 $11 $11
	ld   de, $1111                                   ; $4a7d: $11 $11 $11
	ld   de, $8f8d                                   ; $4a80: $11 $8d $8f
	rst  $38                                         ; $4a83: $ff
	rst  $38                                         ; $4a84: $ff
	rst  $38                                         ; $4a85: $ff
	rst  $38                                         ; $4a86: $ff
	rst  $38                                         ; $4a87: $ff
	cp   $92                                         ; $4a88: $fe $92
	ld   de, $1111                                   ; $4a8a: $11 $11 $11
	ld   de, $1111                                   ; $4a8d: $11 $11 $11
	dec  e                                           ; $4a90: $1d
	and  a                                           ; $4a91: $a7
	rst  $38                                         ; $4a92: $ff
	rst  $38                                         ; $4a93: $ff
	rst  $38                                         ; $4a94: $ff
	rst  $38                                         ; $4a95: $ff
	rst  $38                                         ; $4a96: $ff
	rst  $38                                         ; $4a97: $ff
	rst  $30                                         ; $4a98: $f7
	ld   bc, $1111                                   ; $4a99: $01 $11 $11
	ld   de, $1111                                   ; $4a9c: $11 $11 $11
	dec  d                                           ; $4a9f: $15
	di                                               ; $4aa0: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4aa1: $cf
	rst  $38                                         ; $4aa2: $ff
	rst  $38                                         ; $4aa3: $ff
	rst  $38                                         ; $4aa4: $ff
	rst  $38                                         ; $4aa5: $ff
	rst  $38                                         ; $4aa6: $ff
	ld   sp, hl                                      ; $4aa7: $f9
	ld   hl, $1111                                   ; $4aa8: $21 $11 $11
	ld   de, $1111                                   ; $4aab: $11 $11 $11
	inc  de                                          ; $4aae: $13
	ldh  [c], a                                      ; $4aaf: $e2
	adc  a                                           ; $4ab0: $8f
	cp   $ff                                         ; $4ab1: $fe $ff
	rst  $38                                         ; $4ab3: $ff
	rst  $38                                         ; $4ab4: $ff
	rst  $38                                         ; $4ab5: $ff
	ld   a, [$1142]                                  ; $4ab6: $fa $42 $11
	ld   de, $1111                                   ; $4ab9: $11 $11 $11
	ld   de, $a115                                   ; $4abc: $11 $15 $a1
	cp   a                                           ; $4abf: $bf
	rst  $38                                         ; $4ac0: $ff
	rst  $38                                         ; $4ac1: $ff
	rst  $38                                         ; $4ac2: $ff
	rst  $38                                         ; $4ac3: $ff
	rst  $38                                         ; $4ac4: $ff
	ld   hl, sp+$41                                  ; $4ac5: $f8 $41
	ld   de, $4111                                   ; $4ac7: $11 $11 $41
	ld   de, $1811                                   ; $4aca: $11 $11 $18
	ld   h, d                                        ; $4acd: $62
	rst  $38                                         ; $4ace: $ff
	rst  JumpTable                                         ; $4acf: $df
	rst  $38                                         ; $4ad0: $ff
	rst  $38                                         ; $4ad1: $ff
	rst  $38                                         ; $4ad2: $ff
	rst  $38                                         ; $4ad3: $ff
	push de                                          ; $4ad4: $d5
	ld   sp, $1111                                   ; $4ad5: $31 $11 $11
	ld   de, $1111                                   ; $4ad8: $11 $11 $11
	ld   d, [hl]                                     ; $4adb: $56
	dec  sp                                          ; $4adc: $3b
	rst  $38                                         ; $4add: $ff
	rst  $38                                         ; $4ade: $ff
	rst  $38                                         ; $4adf: $ff
	rst  $38                                         ; $4ae0: $ff
	cp   $ff                                         ; $4ae1: $fe $ff
	ld   d, e                                        ; $4ae3: $53
	ld   de, $1211                                   ; $4ae4: $11 $11 $12
	ld   de, $1431                                   ; $4ae7: $11 $31 $14
	ld   b, h                                        ; $4aea: $44
	ld   a, a                                        ; $4aeb: $7f
	db   $fd                                         ; $4aec: $fd
	rst  $38                                         ; $4aed: $ff
	rst  $38                                         ; $4aee: $ff
	rst  $38                                         ; $4aef: $ff
	rst  $28                                         ; $4af0: $ef
	push af                                          ; $4af1: $f5
	ld   [hl-], a                                    ; $4af2: $32
	ld   de, $1111                                   ; $4af3: $11 $11 $11
	ld   de, $2411                                   ; $4af6: $11 $11 $24
	ld   h, [hl]                                     ; $4af9: $66
	rst  $38                                         ; $4afa: $ff
	rst  $28                                         ; $4afb: $ef
	rst  $38                                         ; $4afc: $ff
	rst  $38                                         ; $4afd: $ff
	cp   $ff                                         ; $4afe: $fe $ff
	ld   h, d                                        ; $4b00: $62
	inc  d                                           ; $4b01: $14
	ld   de, $1361                                   ; $4b02: $11 $61 $13
	ld   de, $7511                                   ; $4b05: $11 $11 $75
	xor  a                                           ; $4b08: $af
	rst  $38                                         ; $4b09: $ff
	rst  $38                                         ; $4b0a: $ff
	rst  $38                                         ; $4b0b: $ff
	rst  $38                                         ; $4b0c: $ff
	rst  $38                                         ; $4b0d: $ff
	call nc, $1115                                   ; $4b0e: $d4 $15 $11
	ld   de, $1111                                   ; $4b11: $11 $11 $11
	ld   de, $2f58                                   ; $4b14: $11 $58 $2f
	db   $fc                                         ; $4b17: $fc
	rst  $38                                         ; $4b18: $ff
	rst  $38                                         ; $4b19: $ff
	rst  $38                                         ; $4b1a: $ff
	rst  $38                                         ; $4b1b: $ff
	rst  $30                                         ; $4b1c: $f7
	inc  d                                           ; $4b1d: $14
	ld   hl, $1111                                   ; $4b1e: $21 $11 $11
	ld   de, $4a11                                   ; $4b21: $11 $11 $4a
	rra                                              ; $4b24: $1f
	db   $fd                                         ; $4b25: $fd
	rst  $38                                         ; $4b26: $ff
	rst  $38                                         ; $4b27: $ff
	rst  $38                                         ; $4b28: $ff
	rst  $38                                         ; $4b29: $ff
	rst  $30                                         ; $4b2a: $f7
	dec  d                                           ; $4b2b: $15
	ld   de, $1111                                   ; $4b2c: $11 $11 $11
	ld   de, $7611                                   ; $4b2f: $11 $11 $76
	ccf                                              ; $4b32: $3f
	rst  $38                                         ; $4b33: $ff
	rst  $38                                         ; $4b34: $ff
	rst  $38                                         ; $4b35: $ff
	rst  $38                                         ; $4b36: $ff
	rst  $38                                         ; $4b37: $ff
	db   $f4                                         ; $4b38: $f4
	daa                                              ; $4b39: $27
	ld   de, $1121                                   ; $4b3a: $11 $21 $11
	ld   de, $b111                                   ; $4b3d: $11 $11 $b1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b40: $cf
	rst  JumpTable                                         ; $4b41: $df
	rst  $38                                         ; $4b42: $ff
	rst  $38                                         ; $4b43: $ff
	rst  $38                                         ; $4b44: $ff
	rst  $38                                         ; $4b45: $ff
	jp   nz, $1161                                   ; $4b46: $c2 $61 $11

	ld   de, $1111                                   ; $4b49: $11 $11 $11
	rla                                              ; $4b4c: $17
	scf                                              ; $4b4d: $37
	db   $fd                                         ; $4b4e: $fd
	rst  $38                                         ; $4b4f: $ff
	rst  $38                                         ; $4b50: $ff
	rst  $38                                         ; $4b51: $ff
	rst  $38                                         ; $4b52: $ff
	db   $fd                                         ; $4b53: $fd
	ld   b, [hl]                                     ; $4b54: $46
	ld   sp, $1111                                   ; $4b55: $31 $11 $11
	ld   de, $5411                                   ; $4b58: $11 $11 $54
	ld   e, a                                        ; $4b5b: $5f
	rst  $28                                         ; $4b5c: $ef
	rst  $38                                         ; $4b5d: $ff
	rst  $38                                         ; $4b5e: $ff
	rst  $38                                         ; $4b5f: $ff
	rst  $38                                         ; $4b60: $ff
	push de                                          ; $4b61: $d5
	ld   [hl], d                                     ; $4b62: $72
	ld   de, $1111                                   ; $4b63: $11 $11 $11
	ld   de, $2a17                                   ; $4b66: $11 $17 $2a
	db   $fd                                         ; $4b69: $fd
	rst  $38                                         ; $4b6a: $ff
	rst  $38                                         ; $4b6b: $ff
	rst  $38                                         ; $4b6c: $ff
	rst  $38                                         ; $4b6d: $ff
	ld   a, [$1166]                                  ; $4b6e: $fa $66 $11
	ld   de, $1111                                   ; $4b71: $11 $11 $11
	ld   de, $fe62                                   ; $4b74: $11 $62 $fe
	rst  $38                                         ; $4b77: $ff
	rst  $38                                         ; $4b78: $ff
	rst  $38                                         ; $4b79: $ff
	rst  $38                                         ; $4b7a: $ff
	db   $fc                                         ; $4b7b: $fc
	ld   h, a                                        ; $4b7c: $67
	ld   sp, $1111                                   ; $4b7d: $31 $11 $11
	ld   de, $7311                                   ; $4b80: $11 $11 $73
	adc  a                                           ; $4b83: $8f
	rst  $28                                         ; $4b84: $ef
	rst  $38                                         ; $4b85: $ff
	rst  $38                                         ; $4b86: $ff
	rst  $38                                         ; $4b87: $ff
	db   $ec                                         ; $4b88: $ec
	halt                                             ; $4b89: $76
	ld   d, c                                        ; $4b8a: $51
	ld   de, $1111                                   ; $4b8b: $11 $11 $11
	ld   de, $7f55                                   ; $4b8e: $11 $55 $7f
	rst  $28                                         ; $4b91: $ef
	rst  $38                                         ; $4b92: $ff
	rst  $38                                         ; $4b93: $ff
	rst  $38                                         ; $4b94: $ff
	db   $fd                                         ; $4b95: $fd
	add  [hl]                                        ; $4b96: $86
	ld   b, c                                        ; $4b97: $41
	ld   de, $1111                                   ; $4b98: $11 $11 $11
	ld   de, $8f35                                   ; $4b9b: $11 $35 $8f
	rst  $38                                         ; $4b9e: $ff
	rst  $38                                         ; $4b9f: $ff
	rst  $38                                         ; $4ba0: $ff
	rst  $38                                         ; $4ba1: $ff
	db   $fc                                         ; $4ba2: $fc
	add  a                                           ; $4ba3: $87
	ld   sp, $1101                                   ; $4ba4: $31 $01 $11
	ld   de, $4611                                   ; $4ba7: $11 $11 $46
	adc  a                                           ; $4baa: $8f
	rst  $38                                         ; $4bab: $ff
	rst  $38                                         ; $4bac: $ff
	rst  $38                                         ; $4bad: $ff
	rst  $38                                         ; $4bae: $ff
	ei                                               ; $4baf: $fb
	ld   a, b                                        ; $4bb0: $78
	ld   hl, $1111                                   ; $4bb1: $21 $11 $11
	ld   de, $5611                                   ; $4bb4: $11 $11 $56
	sbc  a                                           ; $4bb7: $9f
	rst  $38                                         ; $4bb8: $ff
	rst  $38                                         ; $4bb9: $ff
	rst  $38                                         ; $4bba: $ff
	rst  $38                                         ; $4bbb: $ff
	jp   hl                                          ; $4bbc: $e9


	ld   [hl], a                                     ; $4bbd: $77
	ld   de, $1111                                   ; $4bbe: $11 $11 $11
	ld   de, $6711                                   ; $4bc1: $11 $11 $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bc4: $cf
	rst  $38                                         ; $4bc5: $ff
	rst  $38                                         ; $4bc6: $ff
	rst  $38                                         ; $4bc7: $ff
	rst  $38                                         ; $4bc8: $ff
	reti                                             ; $4bc9: $d9


	add  l                                           ; $4bca: $85
	ld   de, $1111                                   ; $4bcb: $11 $11 $11
	ld   de, $7912                                   ; $4bce: $11 $12 $79
	rst  $28                                         ; $4bd1: $ef
	rst  $38                                         ; $4bd2: $ff
	rst  $38                                         ; $4bd3: $ff
	rst  $38                                         ; $4bd4: $ff
	rst  $38                                         ; $4bd5: $ff
	or   a                                           ; $4bd6: $b7
	add  d                                           ; $4bd7: $82
	ld   de, $1111                                   ; $4bd8: $11 $11 $11
	ld   de, $7b14                                   ; $4bdb: $11 $14 $7b
	rst  $38                                         ; $4bde: $ff
	rst  $38                                         ; $4bdf: $ff
	rst  $38                                         ; $4be0: $ff
	rst  $38                                         ; $4be1: $ff
	cp   $b7                                         ; $4be2: $fe $b7
	ld   [hl], c                                     ; $4be4: $71
	ld   de, $1111                                   ; $4be5: $11 $11 $11
	ld   de, $9c15                                   ; $4be8: $11 $15 $9c
	rst  $38                                         ; $4beb: $ff
	rst  $38                                         ; $4bec: $ff
	rst  $38                                         ; $4bed: $ff
	rst  $38                                         ; $4bee: $ff
	db   $fd                                         ; $4bef: $fd
	sbc  b                                           ; $4bf0: $98
	ld   h, c                                        ; $4bf1: $61
	ld   de, $1111                                   ; $4bf2: $11 $11 $11
	ld   de, $8c36                                   ; $4bf5: $11 $36 $8c
	rst  $38                                         ; $4bf8: $ff
	rst  $38                                         ; $4bf9: $ff
	rst  $38                                         ; $4bfa: $ff
	rst  $38                                         ; $4bfb: $ff
	db   $ec                                         ; $4bfc: $ec
	xor  b                                           ; $4bfd: $a8
	ld   d, d                                        ; $4bfe: $52
	ld   de, $1111                                   ; $4bff: $11 $11 $11
	ld   de, $9d46                                   ; $4c02: $11 $46 $9d
	rst  $38                                         ; $4c05: $ff
	rst  $38                                         ; $4c06: $ff
	rst  $38                                         ; $4c07: $ff
	rst  $38                                         ; $4c08: $ff
	call c, Call_0c7_52a8                            ; $4c09: $dc $a8 $52
	ld   de, $1111                                   ; $4c0c: $11 $11 $11
	ld   [de], a                                     ; $4c0f: $12
	ld   d, a                                        ; $4c10: $57
	xor  l                                           ; $4c11: $ad
	rst  $38                                         ; $4c12: $ff
	rst  $38                                         ; $4c13: $ff
	rst  $38                                         ; $4c14: $ff
	rst  $38                                         ; $4c15: $ff
	db   $db                                         ; $4c16: $db
	and  a                                           ; $4c17: $a7
	ld   b, d                                        ; $4c18: $42
	ld   de, $1111                                   ; $4c19: $11 $11 $11
	inc  bc                                          ; $4c1c: $03
	ld   e, b                                        ; $4c1d: $58
	cp   [hl]                                        ; $4c1e: $be
	rst  $38                                         ; $4c1f: $ff
	rst  $38                                         ; $4c20: $ff
	rst  $38                                         ; $4c21: $ff
	cp   $ca                                         ; $4c22: $fe $ca
	sub  [hl]                                        ; $4c24: $96
	ld   sp, $1111                                   ; $4c25: $31 $11 $11
	ld   de, $7914                                   ; $4c28: $11 $14 $79
	cp   a                                           ; $4c2b: $bf
	rst  $38                                         ; $4c2c: $ff
	rst  $38                                         ; $4c2d: $ff
	rst  $38                                         ; $4c2e: $ff
	cp   $c9                                         ; $4c2f: $fe $c9
	ld   [hl], l                                     ; $4c31: $75
	ld   hl, $1111                                   ; $4c32: $21 $11 $11
	ld   de, $7925                                   ; $4c35: $11 $25 $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c38: $cf
	rst  $38                                         ; $4c39: $ff
	rst  $38                                         ; $4c3a: $ff
	rst  $38                                         ; $4c3b: $ff
	db   $fd                                         ; $4c3c: $fd
	cp   c                                           ; $4c3d: $b9
	ld   [hl], h                                     ; $4c3e: $74
	ld   de, $1111                                   ; $4c3f: $11 $11 $11
	ld   de, $8b36                                   ; $4c42: $11 $36 $8b
	rst  JumpTable                                         ; $4c45: $df
	rst  $38                                         ; $4c46: $ff
	rst  $38                                         ; $4c47: $ff
	rst  $38                                         ; $4c48: $ff
	db   $ec                                         ; $4c49: $ec
	cp   c                                           ; $4c4a: $b9
	ld   h, h                                        ; $4c4b: $64
	ld   de, $1111                                   ; $4c4c: $11 $11 $11
	ld   de, $9b36                                   ; $4c4f: $11 $36 $9b
	rst  $28                                         ; $4c52: $ef
	rst  $38                                         ; $4c53: $ff
	rst  $38                                         ; $4c54: $ff
	rst  $38                                         ; $4c55: $ff
	db   $fd                                         ; $4c56: $fd
	xor  b                                           ; $4c57: $a8
	ld   h, e                                        ; $4c58: $63
	ld   de, $1111                                   ; $4c59: $11 $11 $11
	ld   de, $8b46                                   ; $4c5c: $11 $46 $8b
	rst  $28                                         ; $4c5f: $ef
	rst  $38                                         ; $4c60: $ff
	rst  $38                                         ; $4c61: $ff
	rst  $38                                         ; $4c62: $ff
	db   $ec                                         ; $4c63: $ec
	sbc  b                                           ; $4c64: $98
	ld   d, e                                        ; $4c65: $53
	ld   de, $1111                                   ; $4c66: $11 $11 $11
	ld   [de], a                                     ; $4c69: $12
	ld   b, a                                        ; $4c6a: $47
	xor  l                                           ; $4c6b: $ad
	rst  $38                                         ; $4c6c: $ff
	rst  $38                                         ; $4c6d: $ff
	rst  $38                                         ; $4c6e: $ff
	rst  $38                                         ; $4c6f: $ff
	db   $eb                                         ; $4c70: $eb
	sub  a                                           ; $4c71: $97
	ld   d, d                                        ; $4c72: $52
	ld   de, $1111                                   ; $4c73: $11 $11 $11
	ld   [de], a                                     ; $4c76: $12
	ld   d, a                                        ; $4c77: $57
	sbc  h                                           ; $4c78: $9c
	rst  $38                                         ; $4c79: $ff
	rst  $38                                         ; $4c7a: $ff
	rst  $38                                         ; $4c7b: $ff
	rst  $38                                         ; $4c7c: $ff
	db   $eb                                         ; $4c7d: $eb
	sub  a                                           ; $4c7e: $97
	ld   d, d                                        ; $4c7f: $52
	ld   de, $1111                                   ; $4c80: $11 $11 $11
	ld   [de], a                                     ; $4c83: $12
	ld   b, a                                        ; $4c84: $47
	xor  l                                           ; $4c85: $ad
	rst  $38                                         ; $4c86: $ff
	rst  $38                                         ; $4c87: $ff
	rst  $38                                         ; $4c88: $ff
	rst  $38                                         ; $4c89: $ff
	db   $eb                                         ; $4c8a: $eb
	sub  a                                           ; $4c8b: $97
	ld   d, d                                        ; $4c8c: $52
	ld   de, $1111                                   ; $4c8d: $11 $11 $11
	ld   [de], a                                     ; $4c90: $12
	ld   b, a                                        ; $4c91: $47
	sbc  l                                           ; $4c92: $9d
	rst  $38                                         ; $4c93: $ff
	rst  $38                                         ; $4c94: $ff
	rst  $38                                         ; $4c95: $ff
	rst  $38                                         ; $4c96: $ff
	db   $ec                                         ; $4c97: $ec
	and  a                                           ; $4c98: $a7
	ld   d, d                                        ; $4c99: $52
	ld   de, $1111                                   ; $4c9a: $11 $11 $11
	ld   de, $9c46                                   ; $4c9d: $11 $46 $9c
	rst  $28                                         ; $4ca0: $ef
	rst  $38                                         ; $4ca1: $ff
	rst  $38                                         ; $4ca2: $ff
	rst  $38                                         ; $4ca3: $ff
	db   $fd                                         ; $4ca4: $fd
	cp   b                                           ; $4ca5: $b8
	ld   d, e                                        ; $4ca6: $53
	ld   de, $1111                                   ; $4ca7: $11 $11 $11
	ld   de, $8b35                                   ; $4caa: $11 $35 $8b
	rst  $28                                         ; $4cad: $ef
	rst  $38                                         ; $4cae: $ff
	rst  $38                                         ; $4caf: $ff
	rst  $38                                         ; $4cb0: $ff
	cp   $b9                                         ; $4cb1: $fe $b9
	ld   h, h                                        ; $4cb3: $64
	ld   de, $1111                                   ; $4cb4: $11 $11 $11
	ld   de, $7a25                                   ; $4cb7: $11 $25 $7a
	rst  JumpTable                                         ; $4cba: $df
	rst  $38                                         ; $4cbb: $ff
	rst  $38                                         ; $4cbc: $ff
	rst  $38                                         ; $4cbd: $ff
	cp   $ca                                         ; $4cbe: $fe $ca
	ld   [hl], h                                     ; $4cc0: $74
	ld   hl, $1111                                   ; $4cc1: $21 $11 $11
	ld   de, $6913                                   ; $4cc4: $11 $13 $69
	adc  $ff                                         ; $4cc7: $ce $ff
	rst  $38                                         ; $4cc9: $ff
	rst  $38                                         ; $4cca: $ff
	rst  $38                                         ; $4ccb: $ff
	db   $eb                                         ; $4ccc: $eb
	add  [hl]                                        ; $4ccd: $86
	ld   sp, $1111                                   ; $4cce: $31 $11 $11
	ld   de, $4711                                   ; $4cd1: $11 $11 $47
	xor  l                                           ; $4cd4: $ad
	rst  $38                                         ; $4cd5: $ff
	rst  $38                                         ; $4cd6: $ff
	rst  $38                                         ; $4cd7: $ff
	rst  $38                                         ; $4cd8: $ff
	db   $ec                                         ; $4cd9: $ec
	and  a                                           ; $4cda: $a7
	ld   d, d                                        ; $4cdb: $52
	ld   de, $1111                                   ; $4cdc: $11 $11 $11
	ld   de, $7b25                                   ; $4cdf: $11 $25 $7b
	rst  $28                                         ; $4ce2: $ef
	rst  $38                                         ; $4ce3: $ff
	rst  $38                                         ; $4ce4: $ff
	rst  $38                                         ; $4ce5: $ff
	cp   $b9                                         ; $4ce6: $fe $b9
	ld   h, h                                        ; $4ce8: $64
	ld   hl, $1111                                   ; $4ce9: $21 $11 $11
	ld   de, $5813                                   ; $4cec: $11 $13 $58
	cp   [hl]                                        ; $4cef: $be
	rst  $38                                         ; $4cf0: $ff
	rst  $38                                         ; $4cf1: $ff
	rst  $38                                         ; $4cf2: $ff
	rst  $38                                         ; $4cf3: $ff
	call c, $3196                                    ; $4cf4: $dc $96 $31
	ld   de, $1111                                   ; $4cf7: $11 $11 $11
	ld   de, $8b36                                   ; $4cfa: $11 $36 $8b
	rst  $38                                         ; $4cfd: $ff
	rst  $38                                         ; $4cfe: $ff
	rst  $38                                         ; $4cff: $ff
	rst  $38                                         ; $4d00: $ff
	cp   $b8                                         ; $4d01: $fe $b8
	ld   h, e                                        ; $4d03: $63
	ld   de, $1111                                   ; $4d04: $11 $11 $11
	ld   de, $6813                                   ; $4d07: $11 $13 $68
	cp   [hl]                                        ; $4d0a: $be
	rst  $38                                         ; $4d0b: $ff
	rst  $38                                         ; $4d0c: $ff
	rst  $38                                         ; $4d0d: $ff
	rst  $38                                         ; $4d0e: $ff
	call c, Call_0c7_4196                            ; $4d0f: $dc $96 $41
	ld   de, $1111                                   ; $4d12: $11 $11 $11
	ld   de, $7b25                                   ; $4d15: $11 $25 $7b
	rst  $28                                         ; $4d18: $ef
	rst  $38                                         ; $4d19: $ff
	rst  $38                                         ; $4d1a: $ff
	rst  $38                                         ; $4d1b: $ff
	cp   $ca                                         ; $4d1c: $fe $ca
	ld   [hl], h                                     ; $4d1e: $74
	ld   hl, $1111                                   ; $4d1f: $21 $11 $11
	ld   de, $4612                                   ; $4d22: $11 $12 $46
	xor  l                                           ; $4d25: $ad
	rst  $38                                         ; $4d26: $ff
	rst  $38                                         ; $4d27: $ff
	rst  $38                                         ; $4d28: $ff
	rst  $38                                         ; $4d29: $ff
	db   $ec                                         ; $4d2a: $ec
	xor  b                                           ; $4d2b: $a8
	ld   d, e                                        ; $4d2c: $53
	ld   de, $1111                                   ; $4d2d: $11 $11 $11
	ld   de, $5713                                   ; $4d30: $11 $13 $57
	cp   [hl]                                        ; $4d33: $be
	rst  $38                                         ; $4d34: $ff
	rst  $38                                         ; $4d35: $ff
	rst  $38                                         ; $4d36: $ff
	rst  $38                                         ; $4d37: $ff
	db   $ec                                         ; $4d38: $ec
	sub  a                                           ; $4d39: $97
	ld   d, d                                        ; $4d3a: $52
	ld   de, $1111                                   ; $4d3b: $11 $11 $11
	ld   de, $7a24                                   ; $4d3e: $11 $24 $7a
	rst  JumpTable                                         ; $4d41: $df
	rst  $38                                         ; $4d42: $ff
	rst  $38                                         ; $4d43: $ff
	rst  $38                                         ; $4d44: $ff
	cp   $c9                                         ; $4d45: $fe $c9
	ld   [hl], l                                     ; $4d47: $75
	ld   hl, $1111                                   ; $4d48: $21 $11 $11
	ld   de, $3611                                   ; $4d4b: $11 $11 $36
	sbc  h                                           ; $4d4e: $9c
	rst  $38                                         ; $4d4f: $ff
	rst  $38                                         ; $4d50: $ff
	rst  $38                                         ; $4d51: $ff
	rst  $38                                         ; $4d52: $ff
	db   $ed                                         ; $4d53: $ed
	and  a                                           ; $4d54: $a7
	ld   d, e                                        ; $4d55: $53
	ld   de, $1111                                   ; $4d56: $11 $11 $11
	ld   de, $4812                                   ; $4d59: $11 $12 $48
	xor  l                                           ; $4d5c: $ad
	rst  $38                                         ; $4d5d: $ff
	rst  $38                                         ; $4d5e: $ff
	rst  $38                                         ; $4d5f: $ff
	rst  $38                                         ; $4d60: $ff
	db   $eb                                         ; $4d61: $eb
	add  [hl]                                        ; $4d62: $86
	ld   b, d                                        ; $4d63: $42
	ld   de, $1111                                   ; $4d64: $11 $11 $11
	ld   de, $5923                                   ; $4d67: $11 $23 $59
	cp   l                                           ; $4d6a: $bd
	rst  $38                                         ; $4d6b: $ff
	rst  $38                                         ; $4d6c: $ff
	rst  $38                                         ; $4d6d: $ff
	rst  $38                                         ; $4d6e: $ff
	ld   [$2186], a                                  ; $4d6f: $ea $86 $21
	ld   de, $1111                                   ; $4d72: $11 $11 $11
	ld   de, $6a34                                   ; $4d75: $11 $34 $6a
	cp   a                                           ; $4d78: $bf
	rst  $38                                         ; $4d79: $ff
	rst  $38                                         ; $4d7a: $ff
	rst  $38                                         ; $4d7b: $ff
	rst  $38                                         ; $4d7c: $ff
	jp   c, $1175                                    ; $4d7d: $da $75 $11

	ld   de, $1111                                   ; $4d80: $11 $11 $11
	ld   de, $7b34                                   ; $4d83: $11 $34 $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d86: $cf
	rst  $38                                         ; $4d87: $ff
	rst  $38                                         ; $4d88: $ff
	rst  $38                                         ; $4d89: $ff
	cp   $da                                         ; $4d8a: $fe $da
	ld   [hl], h                                     ; $4d8c: $74
	ld   de, $1111                                   ; $4d8d: $11 $11 $11
	ld   de, $4411                                   ; $4d90: $11 $11 $44
	adc  e                                           ; $4d93: $8b
	rst  JumpTable                                         ; $4d94: $df
	rst  $38                                         ; $4d95: $ff
	rst  $38                                         ; $4d96: $ff
	rst  $38                                         ; $4d97: $ff
	cp   $d9                                         ; $4d98: $fe $d9
	ld   h, e                                        ; $4d9a: $63
	ld   de, $1111                                   ; $4d9b: $11 $11 $11
	ld   de, $4601                                   ; $4d9e: $11 $01 $46
	sbc  [hl]                                        ; $4da1: $9e
	rst  $38                                         ; $4da2: $ff
	rst  $38                                         ; $4da3: $ff
	rst  $38                                         ; $4da4: $ff
	rst  $38                                         ; $4da5: $ff
	cp   $b8                                         ; $4da6: $fe $b8
	ld   b, d                                        ; $4da8: $42
	ld   de, $1111                                   ; $4da9: $11 $11 $11
	ld   de, $4711                                   ; $4dac: $11 $11 $47
	sbc  [hl]                                        ; $4daf: $9e
	rst  $38                                         ; $4db0: $ff
	rst  $38                                         ; $4db1: $ff
	rst  $38                                         ; $4db2: $ff
	rst  $38                                         ; $4db3: $ff
	db   $fd                                         ; $4db4: $fd
	or   a                                           ; $4db5: $b7
	ld   hl, $1111                                   ; $4db6: $21 $11 $11
	ld   de, $1111                                   ; $4db9: $11 $11 $11
	ld   l, c                                        ; $4dbc: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dbd: $cf
	rst  $38                                         ; $4dbe: $ff
	rst  $38                                         ; $4dbf: $ff
	rst  $38                                         ; $4dc0: $ff
	rst  $38                                         ; $4dc1: $ff
	db   $fc                                         ; $4dc2: $fc
	sub  [hl]                                        ; $4dc3: $96
	ld   hl, $1111                                   ; $4dc4: $21 $11 $11
	ld   de, $1411                                   ; $4dc7: $11 $11 $14
	ld   a, d                                        ; $4dca: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dcb: $cf
	rst  $38                                         ; $4dcc: $ff
	rst  $38                                         ; $4dcd: $ff
	rst  $38                                         ; $4dce: $ff
	rst  $38                                         ; $4dcf: $ff
	jp   c, $1175                                    ; $4dd0: $da $75 $11

	ld   de, $1111                                   ; $4dd3: $11 $11 $11
	ld   de, $8b35                                   ; $4dd6: $11 $35 $8b
	rst  $28                                         ; $4dd9: $ef
	rst  $38                                         ; $4dda: $ff
	rst  $38                                         ; $4ddb: $ff
	rst  $38                                         ; $4ddc: $ff
	cp   $ca                                         ; $4ddd: $fe $ca
	ld   h, e                                        ; $4ddf: $63
	ld   de, $1111                                   ; $4de0: $11 $11 $11
	ld   de, $5712                                   ; $4de3: $11 $12 $57
	xor  [hl]                                        ; $4de6: $ae
	rst  $38                                         ; $4de7: $ff
	rst  $38                                         ; $4de8: $ff
	rst  $38                                         ; $4de9: $ff
	rst  $38                                         ; $4dea: $ff
	db   $ed                                         ; $4deb: $ed
	or   a                                           ; $4dec: $b7
	ld   d, d                                        ; $4ded: $52
	ld   de, $1111                                   ; $4dee: $11 $11 $11
	ld   de, $8613                                   ; $4df1: $11 $13 $86
	cp   a                                           ; $4df4: $bf
	rst  $38                                         ; $4df5: $ff
	rst  $38                                         ; $4df6: $ff
	rst  $38                                         ; $4df7: $ff
	rst  $38                                         ; $4df8: $ff
	ld   [$33a7], a                                  ; $4df9: $ea $a7 $33
	ld   de, $1111                                   ; $4dfc: $11 $11 $11
	ld   de, $6925                                   ; $4dff: $11 $25 $69
	cp   [hl]                                        ; $4e02: $be
	rst  $38                                         ; $4e03: $ff
	rst  $38                                         ; $4e04: $ff
	rst  $38                                         ; $4e05: $ff
	rst  $38                                         ; $4e06: $ff
	jp   z, Jump_0c7_4195                            ; $4e07: $ca $95 $41

	ld   de, $1111                                   ; $4e0a: $11 $11 $11
	ld   de, $8937                                   ; $4e0d: $11 $37 $89
	rst  JumpTable                                         ; $4e10: $df
	rst  $38                                         ; $4e11: $ff
	rst  $38                                         ; $4e12: $ff
	rst  $38                                         ; $4e13: $ff
	cp   $ba                                         ; $4e14: $fe $ba
	add  l                                           ; $4e16: $85
	ld   sp, $1111                                   ; $4e17: $31 $11 $11
	ld   de, $5821                                   ; $4e1a: $11 $21 $58
	ld   a, d                                        ; $4e1d: $7a
	xor  $ff                                         ; $4e1e: $ee $ff
	rst  $38                                         ; $4e20: $ff
	rst  $38                                         ; $4e21: $ff
	db   $fc                                         ; $4e22: $fc
	xor  d                                           ; $4e23: $aa
	ld   [hl], e                                     ; $4e24: $73
	ld   sp, $1111                                   ; $4e25: $31 $11 $11
	ld   [de], a                                     ; $4e28: $12
	inc  hl                                          ; $4e29: $23
	ld   l, b                                        ; $4e2a: $68
	sbc  e                                           ; $4e2b: $9b
	rst  JumpTable                                         ; $4e2c: $df
	rst  $38                                         ; $4e2d: $ff
	rst  $38                                         ; $4e2e: $ff
	rst  $38                                         ; $4e2f: $ff
	db   $db                                         ; $4e30: $db
	xor  c                                           ; $4e31: $a9
	ld   d, e                                        ; $4e32: $53
	ld   sp, $1111                                   ; $4e33: $31 $11 $11
	inc  de                                          ; $4e36: $13
	inc  sp                                          ; $4e37: $33
	ld   l, c                                        ; $4e38: $69
	sbc  e                                           ; $4e39: $9b
	sbc  $ff                                         ; $4e3a: $de $ff
	rst  $38                                         ; $4e3c: $ff
	db   $fd                                         ; $4e3d: $fd
	jp   c, $6598                                    ; $4e3e: $da $98 $65

	ld   [hl-], a                                    ; $4e41: $32
	ld   hl, $1212                                   ; $4e42: $21 $12 $12
	ld   d, l                                        ; $4e45: $55
	ld   e, c                                        ; $4e46: $59
	xor  c                                           ; $4e47: $a9
	cp   l                                           ; $4e48: $bd
	sbc  $ee                                         ; $4e49: $de $ee
	db   $eb                                         ; $4e4b: $eb
	res  0, a                                        ; $4e4c: $cb $87
	add  [hl]                                        ; $4e4e: $86
	ld   b, h                                        ; $4e4f: $44
	ld   b, e                                        ; $4e50: $43
	inc  hl                                          ; $4e51: $23
	ld   b, e                                        ; $4e52: $43
	ld   b, a                                        ; $4e53: $47
	ld   d, [hl]                                     ; $4e54: $56
	adc  c                                           ; $4e55: $89
	sbc  c                                           ; $4e56: $99
	cp   l                                           ; $4e57: $bd
	cp   e                                           ; $4e58: $bb
	sbc  $ab                                         ; $4e59: $de $ab
	cp   d                                           ; $4e5b: $ba
	ld   a, c                                        ; $4e5c: $79
	sub  l                                           ; $4e5d: $95
	ld   [hl], a                                     ; $4e5e: $77
	ld   d, h                                        ; $4e5f: $54
	ld   b, l                                        ; $4e60: $45
	ld   b, l                                        ; $4e61: $45
	ld   h, [hl]                                     ; $4e62: $66
	ld   d, l                                        ; $4e63: $55
	ld   a, b                                        ; $4e64: $78
	ld   a, c                                        ; $4e65: $79
	xor  c                                           ; $4e66: $a9
	sbc  e                                           ; $4e67: $9b
	cp   d                                           ; $4e68: $ba
	cp   e                                           ; $4e69: $bb
	xor  d                                           ; $4e6a: $aa
	xor  e                                           ; $4e6b: $ab
	adc  b                                           ; $4e6c: $88
	add  [hl]                                        ; $4e6d: $86
	ld   h, [hl]                                     ; $4e6e: $66
	ld   h, l                                        ; $4e6f: $65
	ld   h, l                                        ; $4e70: $65
	ld   d, [hl]                                     ; $4e71: $56
	ld   h, a                                        ; $4e72: $67
	ld   h, a                                        ; $4e73: $67
	sub  a                                           ; $4e74: $97
	ld   a, d                                        ; $4e75: $7a
	adc  b                                           ; $4e76: $88
	xor  d                                           ; $4e77: $aa
	xor  c                                           ; $4e78: $a9
	xor  c                                           ; $4e79: $a9
	adc  d                                           ; $4e7a: $8a
	sub  a                                           ; $4e7b: $97
	xor  c                                           ; $4e7c: $a9
	ld   a, c                                        ; $4e7d: $79
	ld   [hl], a                                     ; $4e7e: $77
	ld   a, b                                        ; $4e7f: $78
	halt                                             ; $4e80: $76
	and  a                                           ; $4e81: $a7
	ld   h, a                                        ; $4e82: $67
	halt                                             ; $4e83: $76
	ld   a, b                                        ; $4e84: $78
	ld   [hl], a                                     ; $4e85: $77
	ld   a, c                                        ; $4e86: $79
	add  a                                           ; $4e87: $87
	sbc  e                                           ; $4e88: $9b
	sub  a                                           ; $4e89: $97
	xor  c                                           ; $4e8a: $a9
	adc  b                                           ; $4e8b: $88
	add  a                                           ; $4e8c: $87
	sbc  c                                           ; $4e8d: $99
	ld   a, c                                        ; $4e8e: $79
	ld   [hl], a                                     ; $4e8f: $77
	and  l                                           ; $4e90: $a5
	ld   e, d                                        ; $4e91: $5a
	ld   [hl], a                                     ; $4e92: $77
	ret                                              ; $4e93: $c9


	ld   l, d                                        ; $4e94: $6a
	add  [hl]                                        ; $4e95: $86
	ld   a, b                                        ; $4e96: $78
	adc  b                                           ; $4e97: $88
	sub  a                                           ; $4e98: $97
	sbc  c                                           ; $4e99: $99
	ld   a, d                                        ; $4e9a: $7a
	ld   h, a                                        ; $4e9b: $67
	and  a                                           ; $4e9c: $a7
	sbc  d                                           ; $4e9d: $9a
	sbc  b                                           ; $4e9e: $98
	sbc  c                                           ; $4e9f: $99
	halt                                             ; $4ea0: $76
	ld   [hl], a                                     ; $4ea1: $77
	ld   l, c                                        ; $4ea2: $69
	sub  [hl]                                        ; $4ea3: $96
	adc  b                                           ; $4ea4: $88
	ld   d, [hl]                                     ; $4ea5: $56
	adc  c                                           ; $4ea6: $89
	sbc  c                                           ; $4ea7: $99
	xor  b                                           ; $4ea8: $a8
	ld   [hl], a                                     ; $4ea9: $77
	ld   h, [hl]                                     ; $4eaa: $66
	adc  c                                           ; $4eab: $89
	ld   l, d                                        ; $4eac: $6a
	or   l                                           ; $4ead: $b5
	ld   c, e                                        ; $4eae: $4b
	sub  e                                           ; $4eaf: $93
	xor  h                                           ; $4eb0: $ac
	ld   a, b                                        ; $4eb1: $78
	xor  c                                           ; $4eb2: $a9
	ld   a, c                                        ; $4eb3: $79
	sub  a                                           ; $4eb4: $97
	ld   a, c                                        ; $4eb5: $79
	xor  c                                           ; $4eb6: $a9
	add  a                                           ; $4eb7: $87
	ld   [hl], l                                     ; $4eb8: $75
	ld   h, a                                        ; $4eb9: $67
	ld   l, b                                        ; $4eba: $68
	xor  c                                           ; $4ebb: $a9
	adc  b                                           ; $4ebc: $88
	ld   [hl], a                                     ; $4ebd: $77
	adc  c                                           ; $4ebe: $89
	sbc  d                                           ; $4ebf: $9a
	xor  c                                           ; $4ec0: $a9
	sbc  c                                           ; $4ec1: $99
	ld   a, b                                        ; $4ec2: $78
	adc  c                                           ; $4ec3: $89
	ld   a, b                                        ; $4ec4: $78
	ld   [hl], a                                     ; $4ec5: $77
	ld   [hl], a                                     ; $4ec6: $77
	ld   [hl], a                                     ; $4ec7: $77
	ld   [hl], a                                     ; $4ec8: $77
	adc  b                                           ; $4ec9: $88
	ld   a, b                                        ; $4eca: $78
	sbc  c                                           ; $4ecb: $99
	adc  c                                           ; $4ecc: $89
	sbc  b                                           ; $4ecd: $98
	sbc  c                                           ; $4ece: $99
	add  a                                           ; $4ecf: $87
	sbc  b                                           ; $4ed0: $98
	ld   a, b                                        ; $4ed1: $78
	ld   [hl], a                                     ; $4ed2: $77
	ld   [hl], a                                     ; $4ed3: $77
	ld   [hl], a                                     ; $4ed4: $77
	ld   [hl], a                                     ; $4ed5: $77
	adc  b                                           ; $4ed6: $88
	adc  b                                           ; $4ed7: $88
	add  a                                           ; $4ed8: $87
	adc  b                                           ; $4ed9: $88
	adc  c                                           ; $4eda: $89
	sbc  c                                           ; $4edb: $99
	sbc  b                                           ; $4edc: $98
	adc  c                                           ; $4edd: $89
	sbc  b                                           ; $4ede: $98
	adc  b                                           ; $4edf: $88
	adc  b                                           ; $4ee0: $88
	ld   [hl], a                                     ; $4ee1: $77
	ld   a, b                                        ; $4ee2: $78
	adc  b                                           ; $4ee3: $88
	ld   [hl], a                                     ; $4ee4: $77
	ld   a, b                                        ; $4ee5: $78
	adc  b                                           ; $4ee6: $88
	adc  c                                           ; $4ee7: $89
	adc  b                                           ; $4ee8: $88
	adc  b                                           ; $4ee9: $88
	sbc  c                                           ; $4eea: $99
	adc  c                                           ; $4eeb: $89
	adc  c                                           ; $4eec: $89
	adc  b                                           ; $4eed: $88
	ld   a, b                                        ; $4eee: $78
	adc  b                                           ; $4eef: $88
	ld   [hl], a                                     ; $4ef0: $77
	ld   [hl], a                                     ; $4ef1: $77
	ld   [hl], a                                     ; $4ef2: $77
	ld   [hl], a                                     ; $4ef3: $77
	adc  b                                           ; $4ef4: $88
	ld   a, b                                        ; $4ef5: $78
	adc  b                                           ; $4ef6: $88
	ld   a, c                                        ; $4ef7: $79
	adc  b                                           ; $4ef8: $88
	sbc  c                                           ; $4ef9: $99
	adc  b                                           ; $4efa: $88
	sbc  b                                           ; $4efb: $98
	adc  b                                           ; $4efc: $88
	adc  b                                           ; $4efd: $88
	add  a                                           ; $4efe: $87
	adc  b                                           ; $4eff: $88
	ld   [hl], a                                     ; $4f00: $77
	add  a                                           ; $4f01: $87
	ld   a, b                                        ; $4f02: $78
	adc  b                                           ; $4f03: $88
	adc  b                                           ; $4f04: $88
	ld   [hl], a                                     ; $4f05: $77
	adc  b                                           ; $4f06: $88
	adc  b                                           ; $4f07: $88
	sbc  c                                           ; $4f08: $99
	add  a                                           ; $4f09: $87
	ld   a, b                                        ; $4f0a: $78
	ld   a, b                                        ; $4f0b: $78
	adc  b                                           ; $4f0c: $88
	adc  b                                           ; $4f0d: $88
	ld   [hl], a                                     ; $4f0e: $77
	ld   [hl], a                                     ; $4f0f: $77
	adc  b                                           ; $4f10: $88
	adc  b                                           ; $4f11: $88
	adc  b                                           ; $4f12: $88
	ld   [hl], a                                     ; $4f13: $77
	adc  b                                           ; $4f14: $88
	adc  b                                           ; $4f15: $88
	adc  b                                           ; $4f16: $88
	adc  b                                           ; $4f17: $88
	adc  b                                           ; $4f18: $88
	ld   a, b                                        ; $4f19: $78
	adc  b                                           ; $4f1a: $88
	adc  b                                           ; $4f1b: $88
	adc  b                                           ; $4f1c: $88
	ld   a, b                                        ; $4f1d: $78
	adc  b                                           ; $4f1e: $88
	adc  b                                           ; $4f1f: $88
	adc  b                                           ; $4f20: $88
	adc  b                                           ; $4f21: $88
	ld   [hl], a                                     ; $4f22: $77
	adc  b                                           ; $4f23: $88
	adc  b                                           ; $4f24: $88
	adc  b                                           ; $4f25: $88
	ld   [hl], a                                     ; $4f26: $77
	ld   a, b                                        ; $4f27: $78
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
	sbc  c                                           ; $5002: $99
	ld   [hl], a                                     ; $5003: $77
	add  a                                           ; $5004: $87
	adc  b                                           ; $5005: $88
	ld   a, b                                        ; $5006: $78
	sub  a                                           ; $5007: $97
	ld   a, c                                        ; $5008: $79
	adc  b                                           ; $5009: $88
	sbc  b                                           ; $500a: $98
	adc  c                                           ; $500b: $89
	add  a                                           ; $500c: $87
	sbc  c                                           ; $500d: $99
	ld   [hl], a                                     ; $500e: $77
	or   a                                           ; $500f: $b7
	adc  d                                           ; $5010: $8a
	ld   l, b                                        ; $5011: $68
	and  a                                           ; $5012: $a7
	ld   a, b                                        ; $5013: $78
	ld   l, h                                        ; $5014: $6c
	sub  e                                           ; $5015: $93
	cp   b                                           ; $5016: $b8
	ld   e, e                                        ; $5017: $5b
	halt                                             ; $5018: $76
	cp   b                                           ; $5019: $b8
	ld   l, d                                        ; $501a: $6a
	ld   [hl], a                                     ; $501b: $77
	sub  a                                           ; $501c: $97
	ld   a, b                                        ; $501d: $78
	add  a                                           ; $501e: $87
	sbc  b                                           ; $501f: $98
	ld   a, b                                        ; $5020: $78
	sbc  b                                           ; $5021: $98
	sbc  c                                           ; $5022: $99
	add  a                                           ; $5023: $87
	sbc  b                                           ; $5024: $98
	ld   a, b                                        ; $5025: $78
	ld   [hl], a                                     ; $5026: $77

jr_0c7_5027:
	sbc  c                                           ; $5027: $99
	adc  b                                           ; $5028: $88
	ld   a, b                                        ; $5029: $78
	ld   a, c                                        ; $502a: $79
	add  [hl]                                        ; $502b: $86
	sbc  d                                           ; $502c: $9a
	adc  b                                           ; $502d: $88
	add  a                                           ; $502e: $87
	add  [hl]                                        ; $502f: $86
	ld   e, e                                        ; $5030: $5b
	halt                                             ; $5031: $76
	push de                                          ; $5032: $d5
	jp   z, $852c                                    ; $5033: $ca $2c $85

	cp   c                                           ; $5036: $b9
	ld   l, h                                        ; $5037: $6c
	add  l                                           ; $5038: $85
	push bc                                          ; $5039: $c5
	ld   a, d                                        ; $503a: $7a
	ld   l, b                                        ; $503b: $68
	ld   a, b                                        ; $503c: $78
	halt                                             ; $503d: $76
	ld   [hl], a                                     ; $503e: $77
	or   a                                           ; $503f: $b7
	ld   e, e                                        ; $5040: $5b
	and  a                                           ; $5041: $a7
	xor  c                                           ; $5042: $a9
	ld   l, d                                        ; $5043: $6a
	and  [hl]                                        ; $5044: $a6
	adc  b                                           ; $5045: $88
	cp   b                                           ; $5046: $b8
	ld   l, c                                        ; $5047: $69
	add  a                                           ; $5048: $87
	add  a                                           ; $5049: $87
	adc  b                                           ; $504a: $88
	halt                                             ; $504b: $76
	adc  b                                           ; $504c: $88
	ld   [hl], a                                     ; $504d: $77
	ld   l, b                                        ; $504e: $68
	ld   a, b                                        ; $504f: $78
	sbc  c                                           ; $5050: $99
	ret  c                                           ; $5051: $d8

	ld   l, h                                        ; $5052: $6c
	adc  c                                           ; $5053: $89
	or   a                                           ; $5054: $b7
	sbc  c                                           ; $5055: $99
	ld   h, a                                        ; $5056: $67
	halt                                             ; $5057: $76
	ld   [hl], a                                     ; $5058: $77
	ld   a, b                                        ; $5059: $78
	ld   d, a                                        ; $505a: $57
	and  a                                           ; $505b: $a7
	adc  c                                           ; $505c: $89
	ld   a, c                                        ; $505d: $79
	ld   [hl], a                                     ; $505e: $77
	ld   [hl], l                                     ; $505f: $75
	ld   hl, sp+$2f                                  ; $5060: $f8 $2f
	jr   c, jr_0c7_5027                              ; $5062: $38 $c3

	xor  d                                           ; $5064: $aa
	ld   l, b                                        ; $5065: $68
	and  h                                           ; $5066: $a4
	and  [hl]                                        ; $5067: $a6
	ld   e, e                                        ; $5068: $5b
	ld   e, c                                        ; $5069: $59
	and  [hl]                                        ; $506a: $a6
	xor  b                                           ; $506b: $a8
	adc  c                                           ; $506c: $89
	adc  c                                           ; $506d: $89
	sbc  b                                           ; $506e: $98
	adc  b                                           ; $506f: $88
	ld   [hl], a                                     ; $5070: $77
	ld   [hl], a                                     ; $5071: $77
	ld   a, b                                        ; $5072: $78
	add  a                                           ; $5073: $87
	sbc  b                                           ; $5074: $98
	adc  b                                           ; $5075: $88
	sbc  b                                           ; $5076: $98
	sbc  b                                           ; $5077: $98
	adc  c                                           ; $5078: $89
	ld   a, c                                        ; $5079: $79
	halt                                             ; $507a: $76
	sub  [hl]                                        ; $507b: $96
	add  a                                           ; $507c: $87
	ld   [hl], a                                     ; $507d: $77
	ld   a, c                                        ; $507e: $79
	adc  b                                           ; $507f: $88
	sbc  b                                           ; $5080: $98
	adc  b                                           ; $5081: $88
	sub  a                                           ; $5082: $97
	adc  b                                           ; $5083: $88
	sbc  d                                           ; $5084: $9a
	sbc  c                                           ; $5085: $99
	halt                                             ; $5086: $76
	sbc  d                                           ; $5087: $9a
	ld   l, e                                        ; $5088: $6b
	add  a                                           ; $5089: $87
	and  l                                           ; $508a: $a5
	sbc  c                                           ; $508b: $99
	xor  c                                           ; $508c: $a9
	sbc  b                                           ; $508d: $98
	ld   a, c                                        ; $508e: $79
	ld   l, b                                        ; $508f: $68
	halt                                             ; $5090: $76
	sub  l                                           ; $5091: $95
	ld   a, e                                        ; $5092: $7b
	ld   l, h                                        ; $5093: $6c
	add  a                                           ; $5094: $87
	or   h                                           ; $5095: $b4
	or   a                                           ; $5096: $b7
	adc  d                                           ; $5097: $8a
	add  a                                           ; $5098: $87
	sbc  b                                           ; $5099: $98
	ld   e, e                                        ; $509a: $5b
	ld   c, d                                        ; $509b: $4a
	halt                                             ; $509c: $76
	and  l                                           ; $509d: $a5
	sub  a                                           ; $509e: $97
	adc  c                                           ; $509f: $89
	ld   a, b                                        ; $50a0: $78
	sub  a                                           ; $50a1: $97
	adc  c                                           ; $50a2: $89
	ld   a, c                                        ; $50a3: $79
	sbc  b                                           ; $50a4: $98
	sbc  b                                           ; $50a5: $98
	adc  b                                           ; $50a6: $88
	ld   a, c                                        ; $50a7: $79
	ld   a, b                                        ; $50a8: $78
	sub  [hl]                                        ; $50a9: $96
	add  a                                           ; $50aa: $87
	ld   a, b                                        ; $50ab: $78
	ld   [hl], a                                     ; $50ac: $77
	adc  b                                           ; $50ad: $88
	sbc  c                                           ; $50ae: $99
	ld   a, c                                        ; $50af: $79
	add  a                                           ; $50b0: $87
	sbc  b                                           ; $50b1: $98
	ld   a, c                                        ; $50b2: $79
	ld   a, b                                        ; $50b3: $78
	sub  a                                           ; $50b4: $97
	sbc  b                                           ; $50b5: $98
	ld   [hl], a                                     ; $50b6: $77
	sub  a                                           ; $50b7: $97
	ld   a, b                                        ; $50b8: $78
	ld   l, b                                        ; $50b9: $68
	ld   a, b                                        ; $50ba: $78
	ld   a, b                                        ; $50bb: $78
	and  [hl]                                        ; $50bc: $a6
	sbc  c                                           ; $50bd: $99
	ld   a, b                                        ; $50be: $78
	ld   a, b                                        ; $50bf: $78
	sbc  c                                           ; $50c0: $99
	adc  d                                           ; $50c1: $8a
	add  a                                           ; $50c2: $87
	sub  a                                           ; $50c3: $97
	ld   [hl], a                                     ; $50c4: $77
	adc  c                                           ; $50c5: $89
	ld   a, b                                        ; $50c6: $78
	sub  a                                           ; $50c7: $97
	adc  c                                           ; $50c8: $89
	adc  c                                           ; $50c9: $89
	adc  b                                           ; $50ca: $88
	add  a                                           ; $50cb: $87
	adc  c                                           ; $50cc: $89
	ld   a, c                                        ; $50cd: $79
	adc  b                                           ; $50ce: $88
	sbc  b                                           ; $50cf: $98
	ld   a, b                                        ; $50d0: $78
	ld   [hl], a                                     ; $50d1: $77
	add  a                                           ; $50d2: $87
	adc  c                                           ; $50d3: $89
	ld   a, b                                        ; $50d4: $78
	adc  b                                           ; $50d5: $88
	sbc  c                                           ; $50d6: $99
	adc  b                                           ; $50d7: $88
	adc  b                                           ; $50d8: $88
	add  a                                           ; $50d9: $87
	adc  b                                           ; $50da: $88
	adc  b                                           ; $50db: $88
	add  a                                           ; $50dc: $87
	add  a                                           ; $50dd: $87
	adc  b                                           ; $50de: $88
	adc  b                                           ; $50df: $88
	adc  b                                           ; $50e0: $88
	add  a                                           ; $50e1: $87
	adc  c                                           ; $50e2: $89
	sbc  c                                           ; $50e3: $99
	sbc  b                                           ; $50e4: $98
	adc  b                                           ; $50e5: $88
	adc  b                                           ; $50e6: $88
	adc  b                                           ; $50e7: $88
	adc  b                                           ; $50e8: $88
	adc  b                                           ; $50e9: $88
	adc  b                                           ; $50ea: $88
	adc  b                                           ; $50eb: $88
	ld   a, b                                        ; $50ec: $78
	adc  b                                           ; $50ed: $88
	adc  b                                           ; $50ee: $88
	adc  b                                           ; $50ef: $88
	adc  b                                           ; $50f0: $88
	adc  b                                           ; $50f1: $88
	adc  b                                           ; $50f2: $88
	adc  c                                           ; $50f3: $89
	sbc  b                                           ; $50f4: $98
	adc  b                                           ; $50f5: $88
	adc  b                                           ; $50f6: $88
	adc  c                                           ; $50f7: $89
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
	adc  c                                           ; $5106: $89
	sbc  b                                           ; $5107: $98
	adc  b                                           ; $5108: $88
	adc  b                                           ; $5109: $88
	adc  b                                           ; $510a: $88
	sbc  b                                           ; $510b: $98
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
	xor  e                                           ; $51f2: $ab
	add  a                                           ; $51f3: $87
	add  a                                           ; $51f4: $87
	add  a                                           ; $51f5: $87
	adc  b                                           ; $51f6: $88
	sbc  c                                           ; $51f7: $99
	add  a                                           ; $51f8: $87
	adc  e                                           ; $51f9: $8b
	xor  b                                           ; $51fa: $a8
	sbc  d                                           ; $51fb: $9a
	sub  a                                           ; $51fc: $97
	ld   h, a                                        ; $51fd: $67
	sbc  c                                           ; $51fe: $99
	ld   h, a                                        ; $51ff: $67
	sub  a                                           ; $5200: $97
	ld   [hl], a                                     ; $5201: $77
	ld   e, b                                        ; $5202: $58
	reti                                             ; $5203: $d9


	xor  c                                           ; $5204: $a9
	ld   a, b                                        ; $5205: $78
	halt                                             ; $5206: $76
	ld   a, c                                        ; $5207: $79
	ld   [hl], a                                     ; $5208: $77
	ld   a, b                                        ; $5209: $78
	add  a                                           ; $520a: $87
	sub  [hl]                                        ; $520b: $96
	ld   h, a                                        ; $520c: $67
	ld   a, b                                        ; $520d: $78
	ld   a, c                                        ; $520e: $79
	ld   a, c                                        ; $520f: $79
	sub  a                                           ; $5210: $97
	ld   a, b                                        ; $5211: $78
	sbc  b                                           ; $5212: $98
	sbc  c                                           ; $5213: $99
	adc  b                                           ; $5214: $88
	adc  c                                           ; $5215: $89
	xor  b                                           ; $5216: $a8
	sbc  c                                           ; $5217: $99
	sbc  c                                           ; $5218: $99
	ld   h, a                                        ; $5219: $67
	adc  b                                           ; $521a: $88
	ld   d, l                                        ; $521b: $55
	ld   [hl], a                                     ; $521c: $77
	ld   [hl], l                                     ; $521d: $75
	ld   a, b                                        ; $521e: $78
	ld   [hl], a                                     ; $521f: $77
	ld   l, b                                        ; $5220: $68
	sbc  c                                           ; $5221: $99
	sbc  c                                           ; $5222: $99
	sbc  c                                           ; $5223: $99
	sbc  b                                           ; $5224: $98
	adc  b                                           ; $5225: $88
	adc  b                                           ; $5226: $88
	add  a                                           ; $5227: $87
	adc  b                                           ; $5228: $88
	halt                                             ; $5229: $76
	ld   h, a                                        ; $522a: $67
	ld   h, [hl]                                     ; $522b: $66
	ld   h, [hl]                                     ; $522c: $66
	halt                                             ; $522d: $76
	ld   h, [hl]                                     ; $522e: $66
	halt                                             ; $522f: $76
	ld   [hl], a                                     ; $5230: $77
	ld   a, b                                        ; $5231: $78
	adc  b                                           ; $5232: $88
	sbc  d                                           ; $5233: $9a
	xor  d                                           ; $5234: $aa
	xor  d                                           ; $5235: $aa
	xor  d                                           ; $5236: $aa
	sbc  c                                           ; $5237: $99
	sbc  c                                           ; $5238: $99
	sbc  b                                           ; $5239: $98
	add  a                                           ; $523a: $87
	ld   h, l                                        ; $523b: $65
	ld   d, h                                        ; $523c: $54
	ld   b, e                                        ; $523d: $43
	ld   [hl+], a                                    ; $523e: $22
	ld   hl, $6513                                   ; $523f: $21 $13 $65
	ld   l, c                                        ; $5242: $69
	xor  l                                           ; $5243: $ad
	xor  $ff                                         ; $5244: $ee $ff
	rst  $38                                         ; $5246: $ff
	rst  $38                                         ; $5247: $ff
	cp   $bb                                         ; $5248: $fe $bb
	add  l                                           ; $524a: $85
	ld   sp, $1111                                   ; $524b: $31 $11 $11
	ld   [de], a                                     ; $524e: $12
	ld   de, $ce5c                                   ; $524f: $11 $5c $ce
	rst  $38                                         ; $5252: $ff
	rst  $38                                         ; $5253: $ff
	rst  $38                                         ; $5254: $ff
	rst  $38                                         ; $5255: $ff
	db   $fc                                         ; $5256: $fc
	bit  4, c                                        ; $5257: $cb $61
	ld   de, $1111                                   ; $5259: $11 $11 $11
	ld   de, $7f11                                   ; $525c: $11 $11 $7f
	ld   [de], a                                     ; $525f: $12
	rst  $38                                         ; $5260: $ff
	cp   $ff                                         ; $5261: $fe $ff
	rst  $38                                         ; $5263: $ff
	ld   e, a                                        ; $5264: $5f
	ld   sp, hl                                      ; $5265: $f9
	dec  h                                           ; $5266: $25
	or   l                                           ; $5267: $b5
	ld   de, $312a                                   ; $5268: $11 $2a $31
	jr   @+$03                                       ; $526b: $18 $01

	ld   de, $17fd                                   ; $526d: $11 $fd $17
	rst  $38                                         ; $5270: $ff
	ret                                              ; $5271: $c9


	rst  $38                                         ; $5272: $ff
	db   $fc                                         ; $5273: $fc
	ld   a, a                                        ; $5274: $7f
	di                                               ; $5275: $f3
	ld   a, [hl+]                                    ; $5276: $2a
	push de                                          ; $5277: $d5
	ld   de, $117a                                   ; $5278: $11 $7a $11
	ld   h, $11                                      ; $527b: $26 $11
	ld   d, $f1                                      ; $527d: $16 $f1
	rra                                              ; $527f: $1f
	rst  $38                                         ; $5280: $ff
	sbc  a                                           ; $5281: $9f
	rst  $38                                         ; $5282: $ff
	db   $f4                                         ; $5283: $f4
	rst  $38                                         ; $5284: $ff
	sub  c                                           ; $5285: $91
	ld   c, h                                        ; $5286: $4c
	ld   [hl], c                                     ; $5287: $71
	inc  de                                          ; $5288: $13
	push de                                          ; $5289: $d5
	ld   de, $1193                                   ; $528a: $11 $93 $11
	rra                                              ; $528d: $1f
	pop  af                                          ; $528e: $f1
	cpl                                              ; $528f: $2f
	db   $fc                                         ; $5290: $fc
	ld   a, a                                        ; $5291: $7f
	rst  $38                                         ; $5292: $ff
	call nz, $21ff                                   ; $5293: $c4 $ff $21
	adc  [hl]                                        ; $5296: $8e
	ld   b, c                                        ; $5297: $41
	jr   @-$1c                                       ; $5298: $18 $e2

	dec  d                                           ; $529a: $15
	or   c                                           ; $529b: $b1
	ld   de, $d11f                                   ; $529c: $11 $1f $d1
	ld   l, a                                        ; $529f: $6f
	ld   sp, hl                                      ; $52a0: $f9
	sbc  a                                           ; $52a1: $9f
	rst  $38                                         ; $52a2: $ff
	or   [hl]                                        ; $52a3: $b6
	rst  $38                                         ; $52a4: $ff
	ld   de, $319d                                   ; $52a5: $11 $9d $31

Call_0c7_52a8:
	ld   a, [hl+]                                    ; $52a8: $2a
	pop  bc                                          ; $52a9: $c1
	ld   d, $91                                      ; $52aa: $16 $91
	ld   de, $911f                                   ; $52ac: $11 $1f $91
	xor  a                                           ; $52af: $af
	ld   sp, hl                                      ; $52b0: $f9
	sbc  a                                           ; $52b1: $9f
	rst  $38                                         ; $52b2: $ff
	and  a                                           ; $52b3: $a7
	rst  $38                                         ; $52b4: $ff
	ld   de, $219c                                   ; $52b5: $11 $9c $21
	ld   a, [hl+]                                    ; $52b8: $2a

Call_0c7_52b9:
	or   c                                           ; $52b9: $b1
	rla                                              ; $52ba: $17
	sub  c                                           ; $52bb: $91
	ld   de, $311f                                   ; $52bc: $11 $1f $31
	rst  $38                                         ; $52bf: $ff
	ld   hl, sp-$31                                  ; $52c0: $f8 $cf
	rst  $38                                         ; $52c2: $ff
	adc  d                                           ; $52c3: $8a
	rst  $38                                         ; $52c4: $ff
	ld   [de], a                                     ; $52c5: $12
	cp   h                                           ; $52c6: $bc
	ld   de, $915b                                   ; $52c7: $11 $5b $91
	jr   jr_0c7_533d                                 ; $52ca: $18 $71

	ld   de, $111f                                   ; $52cc: $11 $1f $11
	rst  $38                                         ; $52cf: $ff
	rst  $20                                         ; $52d0: $e7
	rst  $28                                         ; $52d1: $ef
	rst  $38                                         ; $52d2: $ff
	adc  [hl]                                        ; $52d3: $8e
	db   $fc                                         ; $52d4: $fc
	inc  d                                           ; $52d5: $14
	db   $db                                         ; $52d6: $db
	ld   de, $716b                                   ; $52d7: $11 $6b $71
	rla                                              ; $52da: $17
	ld   d, c                                        ; $52db: $51
	ld   de, $115f                                   ; $52dc: $11 $5f $11
	rst  $38                                         ; $52df: $ff
	rst  $10                                         ; $52e0: $d7
	rst  $38                                         ; $52e1: $ff
	rst  $38                                         ; $52e2: $ff
	sbc  a                                           ; $52e3: $9f
	ei                                               ; $52e4: $fb
	dec  h                                           ; $52e5: $25
	add  sp, $12                                     ; $52e6: $e8 $12
	ld   l, c                                        ; $52e8: $69
	ld   h, c                                        ; $52e9: $61
	rla                                              ; $52ea: $17
	ld   hl, $4f11                                   ; $52eb: $21 $11 $4f
	ld   de, $d8ff                                   ; $52ee: $11 $ff $d8
	rst  $38                                         ; $52f1: $ff
	rst  $38                                         ; $52f2: $ff
	xor  a                                           ; $52f3: $af
	db   $fc                                         ; $52f4: $fc
	ld   b, [hl]                                     ; $52f5: $46
	ret  z                                           ; $52f6: $c8

	ld   [bc], a                                     ; $52f7: $02
	ld   h, a                                        ; $52f8: $67
	ld   d, c                                        ; $52f9: $51
	inc  d                                           ; $52fa: $14
	ld   de, $6f11                                   ; $52fb: $11 $11 $6f
	ld   de, $d9ff                                   ; $52fe: $11 $ff $d9
	rst  $38                                         ; $5301: $ff
	rst  $38                                         ; $5302: $ff
	cp   a                                           ; $5303: $bf
	db   $fc                                         ; $5304: $fc
	ld   h, a                                        ; $5305: $67
	ret  z                                           ; $5306: $c8

	inc  hl                                          ; $5307: $23
	ld   d, [hl]                                     ; $5308: $56
	ld   d, c                                        ; $5309: $51
	inc  d                                           ; $530a: $14
	ld   de, $7c11                                   ; $530b: $11 $11 $7c
	ld   [de], a                                     ; $530e: $12
	rst  $38                                         ; $530f: $ff
	set  7, a                                        ; $5310: $cb $ff
	rst  $38                                         ; $5312: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5313: $cf
	db   $fd                                         ; $5314: $fd
	adc  b                                           ; $5315: $88
	rst  ToBoot                                         ; $5316: $c7
	ld   b, h                                        ; $5317: $44
	ld   d, l                                        ; $5318: $55
	ld   d, c                                        ; $5319: $51
	inc  de                                          ; $531a: $13
	ld   de, $2a11                                   ; $531b: $11 $11 $2a
	ld   hl, $dbcf                                   ; $531e: $21 $cf $db
	rst  $28                                         ; $5321: $ef
	rst  $38                                         ; $5322: $ff
	rst  $28                                         ; $5323: $ef
	rst  $38                                         ; $5324: $ff
	ret                                              ; $5325: $c9


	cp   c                                           ; $5326: $b9
	ld   h, l                                        ; $5327: $65
	ld   b, h                                        ; $5328: $44
	ld   d, e                                        ; $5329: $53
	inc  de                                          ; $532a: $13
	ld   hl, $1311                                   ; $532b: $21 $11 $13
	or   l                                           ; $532e: $b5
	dec  hl                                          ; $532f: $2b
	db   $db                                         ; $5330: $db
	sbc  h                                           ; $5331: $9c
	xor  $fc                                         ; $5332: $ee $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5334: $cf
	db   $fc                                         ; $5335: $fc

Jump_0c7_5336:
	sbc  e                                           ; $5336: $9b
	cp   c                                           ; $5337: $b9
	ld   [hl], l                                     ; $5338: $75
	ld   h, a                                        ; $5339: $67
	ld   h, h                                        ; $533a: $64
	ld   d, [hl]                                     ; $533b: $56
	ld   h, h                                        ; $533c: $64

jr_0c7_533d:
	inc  [hl]                                        ; $533d: $34
	ld   [hl-], a                                    ; $533e: $32
	ld   a, c                                        ; $533f: $79
	ld   b, [hl]                                     ; $5340: $46
	sub  a                                           ; $5341: $97
	ld   h, a                                        ; $5342: $67
	adc  b                                           ; $5343: $88
	sbc  h                                           ; $5344: $9c
	cp   l                                           ; $5345: $bd
	db   $ed                                         ; $5346: $ed
	db   $dd                                         ; $5347: $dd
	res  7, d                                        ; $5348: $cb $ba
	sbc  b                                           ; $534a: $98
	sub  a                                           ; $534b: $97
	ld   h, [hl]                                     ; $534c: $66
	ld   d, [hl]                                     ; $534d: $56
	ld   h, [hl]                                     ; $534e: $66
	ld   h, [hl]                                     ; $534f: $66
	ld   h, l                                        ; $5350: $65
	ld   d, a                                        ; $5351: $57
	ld   h, h                                        ; $5352: $64
	ld   d, l                                        ; $5353: $55
	ld   d, l                                        ; $5354: $55
	ld   d, [hl]                                     ; $5355: $56
	ld   a, b                                        ; $5356: $78
	xor  d                                           ; $5357: $aa
	call $bbcc                                       ; $5358: $cd $cc $bb
	xor  d                                           ; $535b: $aa
	xor  d                                           ; $535c: $aa
	sbc  b                                           ; $535d: $98
	ld   a, b                                        ; $535e: $78
	sbc  b                                           ; $535f: $98
	adc  c                                           ; $5360: $89
	adc  b                                           ; $5361: $88
	add  a                                           ; $5362: $87
	ld   [hl], a                                     ; $5363: $77
	ld   h, [hl]                                     ; $5364: $66
	ld   h, [hl]                                     ; $5365: $66
	ld   d, l                                        ; $5366: $55
	ld   h, [hl]                                     ; $5367: $66
	ld   d, l                                        ; $5368: $55
	ld   h, [hl]                                     ; $5369: $66
	ld   [hl], a                                     ; $536a: $77
	ld   a, b                                        ; $536b: $78
	sbc  c                                           ; $536c: $99
	sbc  d                                           ; $536d: $9a
	sbc  e                                           ; $536e: $9b
	cp   e                                           ; $536f: $bb
	xor  e                                           ; $5370: $ab
	xor  e                                           ; $5371: $ab
	xor  d                                           ; $5372: $aa
	xor  d                                           ; $5373: $aa
	xor  c                                           ; $5374: $a9
	adc  b                                           ; $5375: $88
	adc  b                                           ; $5376: $88
	add  a                                           ; $5377: $87
	ld   [hl], a                                     ; $5378: $77
	halt                                             ; $5379: $76
	halt                                             ; $537a: $76
	ld   h, [hl]                                     ; $537b: $66
	ld   h, l                                        ; $537c: $65
	ld   d, l                                        ; $537d: $55
	ld   d, [hl]                                     ; $537e: $56
	ld   h, [hl]                                     ; $537f: $66
	ld   [hl], a                                     ; $5380: $77
	sbc  b                                           ; $5381: $98
	sbc  c                                           ; $5382: $99
	sbc  c                                           ; $5383: $99
	xor  d                                           ; $5384: $aa

Jump_0c7_5385:
	xor  d                                           ; $5385: $aa
	xor  d                                           ; $5386: $aa
	xor  c                                           ; $5387: $a9
	sbc  c                                           ; $5388: $99
	sbc  c                                           ; $5389: $99
	adc  b                                           ; $538a: $88
	sbc  b                                           ; $538b: $98
	ld   [hl], a                                     ; $538c: $77
	ld   [hl], a                                     ; $538d: $77
	ld   [hl], a                                     ; $538e: $77
	ld   [hl], a                                     ; $538f: $77
	ld   [hl], a                                     ; $5390: $77
	ld   [hl], a                                     ; $5391: $77
	ld   [hl], a                                     ; $5392: $77
	ld   h, a                                        ; $5393: $67
	halt                                             ; $5394: $76
	ld   h, a                                        ; $5395: $67
	ld   [hl], a                                     ; $5396: $77

Jump_0c7_5397:
	ld   [hl], a                                     ; $5397: $77
	adc  c                                           ; $5398: $89
	sbc  c                                           ; $5399: $99
	sbc  d                                           ; $539a: $9a
	sbc  c                                           ; $539b: $99
	sbc  d                                           ; $539c: $9a
	xor  c                                           ; $539d: $a9
	sbc  c                                           ; $539e: $99
	sbc  c                                           ; $539f: $99
	sbc  b                                           ; $53a0: $98
	sbc  b                                           ; $53a1: $98
	adc  b                                           ; $53a2: $88
	ld   [hl], a                                     ; $53a3: $77
	ld   [hl], a                                     ; $53a4: $77
	ld   [hl], a                                     ; $53a5: $77
	ld   [hl], a                                     ; $53a6: $77

Call_0c7_53a7:
	ld   [hl], a                                     ; $53a7: $77
	ld   [hl], a                                     ; $53a8: $77
	ld   [hl], a                                     ; $53a9: $77
	ld   [hl], a                                     ; $53aa: $77
	ld   a, b                                        ; $53ab: $78
	ld   a, b                                        ; $53ac: $78
	add  a                                           ; $53ad: $87
	adc  b                                           ; $53ae: $88
	adc  b                                           ; $53af: $88
	adc  b                                           ; $53b0: $88
	sbc  c                                           ; $53b1: $99
	sbc  c                                           ; $53b2: $99
	sbc  c                                           ; $53b3: $99
	sbc  b                                           ; $53b4: $98
	adc  b                                           ; $53b5: $88
	adc  b                                           ; $53b6: $88
	add  a                                           ; $53b7: $87
	add  a                                           ; $53b8: $87
	ld   [hl], a                                     ; $53b9: $77
	ld   [hl], a                                     ; $53ba: $77
	ld   [hl], a                                     ; $53bb: $77
	ld   a, b                                        ; $53bc: $78
	adc  b                                           ; $53bd: $88
	adc  b                                           ; $53be: $88
	adc  b                                           ; $53bf: $88
	adc  c                                           ; $53c0: $89
	adc  c                                           ; $53c1: $89
	adc  b                                           ; $53c2: $88
	sbc  c                                           ; $53c3: $99
	adc  b                                           ; $53c4: $88
	adc  b                                           ; $53c5: $88
	adc  b                                           ; $53c6: $88
	adc  b                                           ; $53c7: $88
	adc  b                                           ; $53c8: $88
	ld   [hl], a                                     ; $53c9: $77
	add  a                                           ; $53ca: $87
	ld   a, b                                        ; $53cb: $78
	adc  b                                           ; $53cc: $88
	adc  b                                           ; $53cd: $88
	adc  b                                           ; $53ce: $88
	add  a                                           ; $53cf: $87
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
	sbc  b                                           ; $53da: $98
	adc  b                                           ; $53db: $88
	sbc  b                                           ; $53dc: $98
	adc  b                                           ; $53dd: $88
	adc  c                                           ; $53de: $89
	add  a                                           ; $53df: $87
	adc  b                                           ; $53e0: $88
	add  a                                           ; $53e1: $87
	ld   [hl], a                                     ; $53e2: $77
	ld   [hl], a                                     ; $53e3: $77
	ld   [hl], a                                     ; $53e4: $77
	ld   a, b                                        ; $53e5: $78
	ld   [hl], a                                     ; $53e6: $77
	adc  b                                           ; $53e7: $88
	adc  b                                           ; $53e8: $88
	adc  c                                           ; $53e9: $89
	sbc  b                                           ; $53ea: $98
	adc  c                                           ; $53eb: $89
	adc  c                                           ; $53ec: $89
	sbc  c                                           ; $53ed: $99
	adc  b                                           ; $53ee: $88
	sbc  b                                           ; $53ef: $98
	adc  b                                           ; $53f0: $88
	adc  b                                           ; $53f1: $88
	ld   a, b                                        ; $53f2: $78
	add  a                                           ; $53f3: $87
	ld   [hl], a                                     ; $53f4: $77
	adc  b                                           ; $53f5: $88
	ld   [hl], a                                     ; $53f6: $77
	ld   a, b                                        ; $53f7: $78
	add  a                                           ; $53f8: $87
	adc  b                                           ; $53f9: $88
	adc  b                                           ; $53fa: $88
	adc  b                                           ; $53fb: $88
	adc  b                                           ; $53fc: $88
	adc  b                                           ; $53fd: $88
	sbc  c                                           ; $53fe: $99
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
	sbc  b                                           ; $541c: $98
	adc  c                                           ; $541d: $89
	sbc  c                                           ; $541e: $99
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
	sbc  c                                           ; $542e: $99
	sbc  c                                           ; $542f: $99
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
	adc  c                                           ; $5451: $89
	sbc  b                                           ; $5452: $98
	halt                                             ; $5453: $76
	ld   a, b                                        ; $5454: $78
	sbc  d                                           ; $5455: $9a
	add  a                                           ; $5456: $87
	ld   a, b                                        ; $5457: $78
	sbc  b                                           ; $5458: $98
	sub  a                                           ; $5459: $97
	ld   a, b                                        ; $545a: $78
	adc  c                                           ; $545b: $89
	sbc  b                                           ; $545c: $98
	adc  d                                           ; $545d: $8a
	sub  a                                           ; $545e: $97
	ld   h, a                                        ; $545f: $67
	sbc  c                                           ; $5460: $99
	sub  a                                           ; $5461: $97
	ld   a, b                                        ; $5462: $78
	sbc  b                                           ; $5463: $98
	add  a                                           ; $5464: $87
	sbc  c                                           ; $5465: $99
	add  [hl]                                        ; $5466: $86
	ld   a, b                                        ; $5467: $78
	xor  c                                           ; $5468: $a9
	add  a                                           ; $5469: $87
	ld   [hl], a                                     ; $546a: $77
	adc  b                                           ; $546b: $88
	adc  c                                           ; $546c: $89
	add  a                                           ; $546d: $87
	ld   h, [hl]                                     ; $546e: $66
	ld   a, d                                        ; $546f: $7a
	cp   e                                           ; $5470: $bb
	and  a                                           ; $5471: $a7
	ld   d, l                                        ; $5472: $55
	adc  e                                           ; $5473: $8b
	ret                                              ; $5474: $c9


	ld   h, l                                        ; $5475: $65
	ld   l, c                                        ; $5476: $69
	sbc  b                                           ; $5477: $98
	ld   [hl], a                                     ; $5478: $77
	ld   a, b                                        ; $5479: $78
	sbc  c                                           ; $547a: $99
	ld   [hl], a                                     ; $547b: $77
	adc  c                                           ; $547c: $89
	sbc  c                                           ; $547d: $99
	ld   [hl], a                                     ; $547e: $77
	adc  b                                           ; $547f: $88
	adc  b                                           ; $5480: $88
	adc  b                                           ; $5481: $88
	sub  a                                           ; $5482: $97
	ld   h, [hl]                                     ; $5483: $66
	adc  c                                           ; $5484: $89
	sbc  b                                           ; $5485: $98
	ld   [hl], a                                     ; $5486: $77
	adc  b                                           ; $5487: $88
	ld   [hl], a                                     ; $5488: $77
	adc  c                                           ; $5489: $89
	sbc  b                                           ; $548a: $98
	adc  b                                           ; $548b: $88
	sbc  d                                           ; $548c: $9a
	add  a                                           ; $548d: $87
	ld   h, a                                        ; $548e: $67
	sbc  b                                           ; $548f: $98
	ld   [hl], a                                     ; $5490: $77
	ld   a, b                                        ; $5491: $78
	sub  a                                           ; $5492: $97
	ld   h, a                                        ; $5493: $67
	adc  c                                           ; $5494: $89
	sbc  c                                           ; $5495: $99
	adc  b                                           ; $5496: $88

Call_0c7_5497:
	adc  b                                           ; $5497: $88
	sbc  e                                           ; $5498: $9b
	sbc  c                                           ; $5499: $99
	ld   h, l                                        ; $549a: $65
	ld   h, a                                        ; $549b: $67
	sbc  d                                           ; $549c: $9a
	add  [hl]                                        ; $549d: $86
	ld   [hl], a                                     ; $549e: $77
	sbc  b                                           ; $549f: $98
	adc  b                                           ; $54a0: $88
	sbc  b                                           ; $54a1: $98
	sub  a                                           ; $54a2: $97
	ld   a, b                                        ; $54a3: $78
	adc  c                                           ; $54a4: $89
	ld   [hl], a                                     ; $54a5: $77
	ld   a, b                                        ; $54a6: $78
	adc  b                                           ; $54a7: $88
	adc  c                                           ; $54a8: $89
	sbc  d                                           ; $54a9: $9a
	sub  a                                           ; $54aa: $97
	ld   a, b                                        ; $54ab: $78
	sbc  d                                           ; $54ac: $9a
	halt                                             ; $54ad: $76
	ld   h, a                                        ; $54ae: $67
	add  a                                           ; $54af: $87
	halt                                             ; $54b0: $76
	adc  c                                           ; $54b1: $89
	sbc  b                                           ; $54b2: $98
	ld   a, b                                        ; $54b3: $78
	sbc  d                                           ; $54b4: $9a
	add  a                                           ; $54b5: $87
	ld   a, c                                        ; $54b6: $79
	sbc  c                                           ; $54b7: $99
	ld   [hl], a                                     ; $54b8: $77
	adc  c                                           ; $54b9: $89
	add  a                                           ; $54ba: $87
	ld   a, b                                        ; $54bb: $78
	sbc  c                                           ; $54bc: $99
	ld   [hl], a                                     ; $54bd: $77
	ld   a, b                                        ; $54be: $78
	sbc  b                                           ; $54bf: $98
	ld   h, a                                        ; $54c0: $67
	sbc  c                                           ; $54c1: $99
	add  a                                           ; $54c2: $87
	ld   [hl], a                                     ; $54c3: $77
	sbc  c                                           ; $54c4: $99
	ld   [hl], a                                     ; $54c5: $77
	ld   a, c                                        ; $54c6: $79
	xor  b                                           ; $54c7: $a8
	ld   a, b                                        ; $54c8: $78
	sbc  c                                           ; $54c9: $99
	sub  a                                           ; $54ca: $97
	ld   a, c                                        ; $54cb: $79
	sbc  c                                           ; $54cc: $99
	sub  a                                           ; $54cd: $97
	ld   a, b                                        ; $54ce: $78
	adc  b                                           ; $54cf: $88
	ld   [hl], a                                     ; $54d0: $77
	adc  b                                           ; $54d1: $88
	add  a                                           ; $54d2: $87
	ld   [hl], a                                     ; $54d3: $77
	adc  b                                           ; $54d4: $88
	ld   h, [hl]                                     ; $54d5: $66
	adc  b                                           ; $54d6: $88
	ld   [hl], a                                     ; $54d7: $77
	adc  c                                           ; $54d8: $89
	adc  b                                           ; $54d9: $88
	ld   a, c                                        ; $54da: $79
	sbc  d                                           ; $54db: $9a
	sbc  b                                           ; $54dc: $98
	adc  c                                           ; $54dd: $89
	sbc  c                                           ; $54de: $99
	xor  c                                           ; $54df: $a9
	sbc  c                                           ; $54e0: $99
	sbc  b                                           ; $54e1: $98
	ld   [hl], a                                     ; $54e2: $77
	add  a                                           ; $54e3: $87
	ld   h, [hl]                                     ; $54e4: $66
	ld   d, l                                        ; $54e5: $55
	ld   d, h                                        ; $54e6: $54
	ld   b, h                                        ; $54e7: $44
	ld   b, h                                        ; $54e8: $44
	ld   b, h                                        ; $54e9: $44
	ld   b, l                                        ; $54ea: $45
	ld   a, b                                        ; $54eb: $78
	adc  c                                           ; $54ec: $89
	cp   h                                           ; $54ed: $bc
	call $efee                                       ; $54ee: $cd $ee $ef
	cp   $fd                                         ; $54f1: $fe $fd
	res  7, b                                        ; $54f3: $cb $b8
	ld   h, l                                        ; $54f5: $65
	ld   sp, $1111                                   ; $54f6: $31 $11 $11
	ld   de, $1511                                   ; $54f9: $11 $11 $15
	ld   a, c                                        ; $54fc: $79
	cp   l                                           ; $54fd: $bd
	rst  $38                                         ; $54fe: $ff
	rst  $38                                         ; $54ff: $ff
	rst  $38                                         ; $5500: $ff
	rst  $38                                         ; $5501: $ff
	rst  $38                                         ; $5502: $ff
	db   $db                                         ; $5503: $db
	add  [hl]                                        ; $5504: $86
	ld   hl, $1111                                   ; $5505: $21 $11 $11
	ld   de, $1811                                   ; $5508: $11 $11 $18
	ld   de, $ca8c                                   ; $550b: $11 $8c $ca
	rst  $38                                         ; $550e: $ff
	rst  $38                                         ; $550f: $ff
	rst  $38                                         ; $5510: $ff
	rst  $38                                         ; $5511: $ff
	db   $fd                                         ; $5512: $fd
	db   $dd                                         ; $5513: $dd
	add  a                                           ; $5514: $87
	ld   d, e                                        ; $5515: $53
	ld   de, $1121                                   ; $5516: $11 $21 $11
	ld   de, $1c11                                   ; $5519: $11 $11 $1c
	sub  c                                           ; $551c: $91
	ld   e, h                                        ; $551d: $5c
	db   $eb                                         ; $551e: $eb
	sbc  a                                           ; $551f: $9f
	rst  $28                                         ; $5520: $ef
	rst  $38                                         ; $5521: $ff
	rst  $38                                         ; $5522: $ff
	rst  $38                                         ; $5523: $ff
	call $7499                                       ; $5524: $cd $99 $74
	ld   de, $1141                                   ; $5527: $11 $41 $11
	ld   de, $1411                                   ; $552a: $11 $11 $14
	pop  hl                                          ; $552d: $e1
	add  hl, de                                      ; $552e: $19
	call c, $ff8c                                    ; $552f: $dc $8c $ff
	rst  $38                                         ; $5532: $ff
	rst  $38                                         ; $5533: $ff
	rst  $38                                         ; $5534: $ff
	adc  $d9                                         ; $5535: $ce $d9
	sub  [hl]                                        ; $5537: $96
	ld   hl, $1143                                   ; $5538: $21 $43 $11
	ld   de, $1111                                   ; $553b: $11 $11 $11
	or   a                                           ; $553e: $b7
	dec  d                                           ; $553f: $15
	cp   l                                           ; $5540: $bd
	sbc  c                                           ; $5541: $99
	cp   $ff                                         ; $5542: $fe $ff
	rst  $38                                         ; $5544: $ff
	rst  $38                                         ; $5545: $ff
	db   $ec                                         ; $5546: $ec
	ld   [$41a8], a                                  ; $5547: $ea $a8 $41
	dec  h                                           ; $554a: $25
	ld   de, $1111                                   ; $554b: $11 $11 $11
	ld   de, $116a                                   ; $554e: $11 $6a $11
	sbc  l                                           ; $5551: $9d
	and  a                                           ; $5552: $a7
	sbc  $ff                                         ; $5553: $de $ff
	rst  $38                                         ; $5555: $ff
	rst  $38                                         ; $5556: $ff
	db   $fc                                         ; $5557: $fc
	db   $ed                                         ; $5558: $ed
	cp   d                                           ; $5559: $ba
	ld   h, e                                        ; $555a: $63
	dec  d                                           ; $555b: $15
	ld   sp, $1111                                   ; $555c: $31 $11 $11
	ld   de, $5119                                   ; $555f: $11 $19 $51
	ld   c, d                                        ; $5562: $4a
	and  a                                           ; $5563: $a7
	sbc  h                                           ; $5564: $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5565: $cf
	cp   $ff                                         ; $5566: $fe $ff
	rst  $38                                         ; $5568: $ff
	cp   $cc                                         ; $5569: $fe $cc
	or   a                                           ; $556b: $b7
	inc  [hl]                                        ; $556c: $34
	ld   h, d                                        ; $556d: $62
	ld   de, $1111                                   ; $556e: $11 $11 $11
	inc  d                                           ; $5571: $14
	sub  d                                           ; $5572: $92
	dec  d                                           ; $5573: $15
	ld   [hl], a                                     ; $5574: $77
	ld   a, c                                        ; $5575: $79
	adc  e                                           ; $5576: $8b
	rst  $38                                         ; $5577: $ff
	sbc  $ff                                         ; $5578: $de $ff
	rst  $38                                         ; $557a: $ff
	db   $db                                         ; $557b: $db
	res  0, h                                        ; $557c: $cb $84
	ld   d, [hl]                                     ; $557e: $56
	ld   d, l                                        ; $557f: $55
	ld   b, h                                        ; $5580: $44
	ld   b, l                                        ; $5581: $45
	ld   b, e                                        ; $5582: $43
	ld   a, c                                        ; $5583: $79
	ld   h, l                                        ; $5584: $65
	ld   h, l                                        ; $5585: $65
	ld   b, h                                        ; $5586: $44
	ld   d, h                                        ; $5587: $54
	ld   d, a                                        ; $5588: $57
	ld   [hl], a                                     ; $5589: $77
	adc  c                                           ; $558a: $89
	xor  d                                           ; $558b: $aa
	cp   d                                           ; $558c: $ba
	xor  d                                           ; $558d: $aa
	xor  c                                           ; $558e: $a9
	sbc  c                                           ; $558f: $99
	sbc  d                                           ; $5590: $9a
	cp   e                                           ; $5591: $bb
	cp   h                                           ; $5592: $bc
	call c, $a9bc                                    ; $5593: $dc $bc $a9
	sbc  b                                           ; $5596: $98
	ld   h, h                                        ; $5597: $64
	ld   [hl-], a                                    ; $5598: $32
	ld   [hl+], a                                    ; $5599: $22
	ld   [hl+], a                                    ; $559a: $22
	inc  h                                           ; $559b: $24
	ld   d, [hl]                                     ; $559c: $56
	ld   h, a                                        ; $559d: $67
	ld   a, b                                        ; $559e: $78
	sbc  c                                           ; $559f: $99
	sbc  c                                           ; $55a0: $99
	adc  c                                           ; $55a1: $89
	adc  b                                           ; $55a2: $88
	sbc  c                                           ; $55a3: $99
	xor  e                                           ; $55a4: $ab
	db   $dd                                         ; $55a5: $dd
	sbc  $ed                                         ; $55a6: $de $ed
	call c, $a8bb                                    ; $55a8: $dc $bb $a8
	ld   h, l                                        ; $55ab: $65
	inc  sp                                          ; $55ac: $33
	ld   [hl+], a                                    ; $55ad: $22
	ld   [hl+], a                                    ; $55ae: $22
	inc  [hl]                                        ; $55af: $34
	ld   d, l                                        ; $55b0: $55
	ld   h, [hl]                                     ; $55b1: $66
	ld   [hl], a                                     ; $55b2: $77
	ld   [hl], a                                     ; $55b3: $77
	ld   [hl], a                                     ; $55b4: $77
	ld   a, b                                        ; $55b5: $78
	adc  b                                           ; $55b6: $88
	adc  c                                           ; $55b7: $89
	sbc  d                                           ; $55b8: $9a
	cp   l                                           ; $55b9: $bd
	db   $dd                                         ; $55ba: $dd
	rst  $38                                         ; $55bb: $ff
	db   $dd                                         ; $55bc: $dd
	db   $db                                         ; $55bd: $db
	cp   d                                           ; $55be: $ba
	sub  [hl]                                        ; $55bf: $96
	ld   d, h                                        ; $55c0: $54
	inc  sp                                          ; $55c1: $33
	ld   [hl+], a                                    ; $55c2: $22
	inc  hl                                          ; $55c3: $23
	ld   b, h                                        ; $55c4: $44
	ld   d, l                                        ; $55c5: $55
	ld   h, [hl]                                     ; $55c6: $66
	ld   [hl], a                                     ; $55c7: $77
	ld   [hl], a                                     ; $55c8: $77
	ld   [hl], a                                     ; $55c9: $77
	adc  b                                           ; $55ca: $88
	adc  b                                           ; $55cb: $88
	adc  c                                           ; $55cc: $89
	xor  d                                           ; $55cd: $aa
	call z, $dece                                    ; $55ce: $cc $ce $de
	call z, $aacc                                    ; $55d1: $cc $cc $aa
	add  a                                           ; $55d4: $87
	ld   h, l                                        ; $55d5: $65
	ld   b, e                                        ; $55d6: $43
	ld   [hl-], a                                    ; $55d7: $32
	inc  hl                                          ; $55d8: $23
	inc  [hl]                                        ; $55d9: $34
	ld   b, l                                        ; $55da: $45
	ld   d, [hl]                                     ; $55db: $56
	ld   [hl], a                                     ; $55dc: $77
	ld   [hl], a                                     ; $55dd: $77
	adc  b                                           ; $55de: $88
	adc  b                                           ; $55df: $88
	adc  c                                           ; $55e0: $89
	sbc  c                                           ; $55e1: $99
	xor  d                                           ; $55e2: $aa
	cp   h                                           ; $55e3: $bc
	call z, $dddd                                    ; $55e4: $cc $dd $dd
	db   $db                                         ; $55e7: $db
	cp   d                                           ; $55e8: $ba
	sbc  b                                           ; $55e9: $98
	halt                                             ; $55ea: $76
	ld   d, h                                        ; $55eb: $54
	inc  sp                                          ; $55ec: $33
	ld   [hl+], a                                    ; $55ed: $22
	inc  sp                                          ; $55ee: $33
	ld   b, h                                        ; $55ef: $44
	ld   d, l                                        ; $55f0: $55
	ld   h, a                                        ; $55f1: $67
	ld   [hl], a                                     ; $55f2: $77
	adc  b                                           ; $55f3: $88
	adc  c                                           ; $55f4: $89
	sbc  b                                           ; $55f5: $98
	sbc  c                                           ; $55f6: $99
	xor  c                                           ; $55f7: $a9
	cp   d                                           ; $55f8: $ba
	cp   e                                           ; $55f9: $bb
	call $dccc                                       ; $55fa: $cd $cc $dc
	jp   z, $88aa                                    ; $55fd: $ca $aa $88

	ld   h, l                                        ; $5600: $65
	ld   b, h                                        ; $5601: $44
	inc  sp                                          ; $5602: $33
	inc  sp                                          ; $5603: $33
	inc  [hl]                                        ; $5604: $34
	ld   b, l                                        ; $5605: $45
	ld   h, [hl]                                     ; $5606: $66
	ld   [hl], a                                     ; $5607: $77
	adc  b                                           ; $5608: $88
	sbc  b                                           ; $5609: $98
	adc  c                                           ; $560a: $89
	sbc  c                                           ; $560b: $99
	sbc  c                                           ; $560c: $99
	xor  c                                           ; $560d: $a9
	xor  d                                           ; $560e: $aa
	cp   d                                           ; $560f: $ba
	cp   h                                           ; $5610: $bc
	call z, $bbcb                                    ; $5611: $cc $cb $bb
	sbc  c                                           ; $5614: $99
	sbc  c                                           ; $5615: $99
	halt                                             ; $5616: $76
	ld   d, l                                        ; $5617: $55
	ld   b, h                                        ; $5618: $44
	ld   b, e                                        ; $5619: $43
	ld   b, h                                        ; $561a: $44
	ld   d, l                                        ; $561b: $55
	ld   h, [hl]                                     ; $561c: $66
	ld   [hl], a                                     ; $561d: $77
	adc  b                                           ; $561e: $88
	sbc  b                                           ; $561f: $98
	adc  c                                           ; $5620: $89
	adc  b                                           ; $5621: $88
	adc  c                                           ; $5622: $89
	adc  c                                           ; $5623: $89
	sbc  d                                           ; $5624: $9a
	xor  d                                           ; $5625: $aa
	xor  d                                           ; $5626: $aa
	cp   e                                           ; $5627: $bb
	xor  e                                           ; $5628: $ab
	xor  d                                           ; $5629: $aa
	cp   d                                           ; $562a: $ba
	sbc  c                                           ; $562b: $99
	sbc  c                                           ; $562c: $99
	add  a                                           ; $562d: $87
	ld   h, [hl]                                     ; $562e: $66
	ld   d, l                                        ; $562f: $55
	ld   b, h                                        ; $5630: $44
	ld   b, h                                        ; $5631: $44
	ld   d, l                                        ; $5632: $55
	ld   h, [hl]                                     ; $5633: $66
	ld   h, a                                        ; $5634: $67
	ld   a, b                                        ; $5635: $78
	adc  b                                           ; $5636: $88
	sbc  c                                           ; $5637: $99
	sbc  c                                           ; $5638: $99
	sbc  c                                           ; $5639: $99
	sbc  c                                           ; $563a: $99
	adc  c                                           ; $563b: $89
	sbc  d                                           ; $563c: $9a
	xor  c                                           ; $563d: $a9
	xor  e                                           ; $563e: $ab
	xor  d                                           ; $563f: $aa
	xor  e                                           ; $5640: $ab
	cp   d                                           ; $5641: $ba
	xor  c                                           ; $5642: $a9
	sbc  b                                           ; $5643: $98
	sbc  b                                           ; $5644: $98
	ld   [hl], a                                     ; $5645: $77
	ld   h, l                                        ; $5646: $65
	ld   d, l                                        ; $5647: $55
	ld   d, h                                        ; $5648: $54
	ld   d, l                                        ; $5649: $55
	ld   d, [hl]                                     ; $564a: $56
	ld   h, a                                        ; $564b: $67
	ld   [hl], a                                     ; $564c: $77
	ld   a, b                                        ; $564d: $78
	sbc  b                                           ; $564e: $98
	adc  c                                           ; $564f: $89
	sbc  c                                           ; $5650: $99
	adc  b                                           ; $5651: $88
	sbc  c                                           ; $5652: $99

Jump_0c7_5653:
	adc  c                                           ; $5653: $89
	adc  c                                           ; $5654: $89
	xor  c                                           ; $5655: $a9
	cp   [hl]                                        ; $5656: $be
	ret  z                                           ; $5657: $c8

	xor  e                                           ; $5658: $ab
	cp   e                                           ; $5659: $bb
	adc  c                                           ; $565a: $89
	and  a                                           ; $565b: $a7
	ld   h, [hl]                                     ; $565c: $66
	ld   h, a                                        ; $565d: $67
	ld   h, l                                        ; $565e: $65
	ld   b, h                                        ; $565f: $44
	ld   b, l                                        ; $5660: $45
	ld   d, l                                        ; $5661: $55
	ld   d, [hl]                                     ; $5662: $56
	ld   a, b                                        ; $5663: $78
	sbc  b                                           ; $5664: $98
	adc  b                                           ; $5665: $88
	xor  c                                           ; $5666: $a9
	xor  d                                           ; $5667: $aa
	sbc  d                                           ; $5668: $9a
	cp   h                                           ; $5669: $bc
	cp   d                                           ; $566a: $ba
	xor  h                                           ; $566b: $ac
	rst  $28                                         ; $566c: $ef
	call c, $95ba                                    ; $566d: $dc $ba $95
	ld   de, $1211                                   ; $5670: $11 $11 $12
	ld   de, $bd36                                   ; $5673: $11 $36 $bd
	sbc  $ff                                         ; $5676: $de $ff
	rst  $38                                         ; $5678: $ff
	db   $ec                                         ; $5679: $ec
	cp   b                                           ; $567a: $b8
	ld   d, c                                        ; $567b: $51
	ld   d, $86                                      ; $567c: $16 $86
	ld   a, d                                        ; $567e: $7a
	cp   [hl]                                        ; $567f: $be
	db   $ec                                         ; $5680: $ec
	xor  h                                           ; $5681: $ac
	and  d                                           ; $5682: $a2
	ld   de, $9111                                   ; $5683: $11 $11 $91
	ld   d, $df                                      ; $5686: $16 $df
	rst  $38                                         ; $5688: $ff
	rst  JumpTable                                         ; $5689: $df
	rst  $38                                         ; $568a: $ff
	ld   h, a                                        ; $568b: $67
	ld   b, e                                        ; $568c: $43
	ld   sp, rAUD1LEN                                   ; $568d: $31 $11 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5690: $cf
	rst  $38                                         ; $5691: $ff
	rst  $38                                         ; $5692: $ff
	ld   [hl], a                                     ; $5693: $77
	and  c                                           ; $5694: $a1
	ld   de, $ca11                                   ; $5695: $11 $11 $ca
	ld   d, $ff                                      ; $5698: $16 $ff
	rst  $38                                         ; $569a: $ff
	ei                                               ; $569b: $fb
	rst  $38                                         ; $569c: $ff
	ld   de, $1111                                   ; $569d: $11 $11 $11
	ld   de, $ffff                                   ; $56a0: $11 $ff $ff
	rst  $38                                         ; $56a3: $ff
	rst  $38                                         ; $56a4: $ff
	ld   h, c                                        ; $56a5: $61
	ld   de, $1111                                   ; $56a6: $11 $11 $11
	rst  $38                                         ; $56a9: $ff
	ld   e, a                                        ; $56aa: $5f
	rst  $38                                         ; $56ab: $ff
	rst  $38                                         ; $56ac: $ff
	pop  hl                                          ; $56ad: $e1
	db   $ed                                         ; $56ae: $ed
	ld   de, $1811                                   ; $56af: $11 $11 $18
	sbc  d                                           ; $56b2: $9a
	rst  $38                                         ; $56b3: $ff
	rst  $38                                         ; $56b4: $ff
	ld   a, [$11c9]                                  ; $56b5: $fa $c9 $11
	ld   de, $1111                                   ; $56b8: $11 $11 $11
	rst  $38                                         ; $56bb: $ff
	rst  $38                                         ; $56bc: $ff
	rst  $38                                         ; $56bd: $ff
	rst  $30                                         ; $56be: $f7
	ld   de, $1131                                   ; $56bf: $11 $31 $11
	rla                                              ; $56c2: $17
	rst  $38                                         ; $56c3: $ff
	rst  $38                                         ; $56c4: $ff
	rst  $38                                         ; $56c5: $ff
	ei                                               ; $56c6: $fb
	ld   d, e                                        ; $56c7: $53
	ld   hl, $1111                                   ; $56c8: $21 $11 $11
	ld   de, $ff2f                                   ; $56cb: $11 $2f $ff
	rst  $38                                         ; $56ce: $ff
	rst  $38                                         ; $56cf: $ff
	ld   b, c                                        ; $56d0: $41
	ld   de, $1521                                   ; $56d1: $11 $21 $15
	rst  JumpTable                                         ; $56d4: $df
	rst  $38                                         ; $56d5: $ff
	rst  $38                                         ; $56d6: $ff
	rst  $38                                         ; $56d7: $ff
	ld   [hl], a                                     ; $56d8: $77
	ld   h, d                                        ; $56d9: $62
	ld   de, $1111                                   ; $56da: $11 $11 $11
	ld   de, $ff2f                                   ; $56dd: $11 $2f $ff
	rst  $28                                         ; $56e0: $ef
	db   $fd                                         ; $56e1: $fd
	ld   d, c                                        ; $56e2: $51
	ld   de, $1771                                   ; $56e3: $11 $71 $17
	cp   a                                           ; $56e6: $bf
	rst  $38                                         ; $56e7: $ff
	rst  $38                                         ; $56e8: $ff
	rst  $38                                         ; $56e9: $ff
	ld   a, d                                        ; $56ea: $7a

Call_0c7_56eb:
	ld   [hl], c                                     ; $56eb: $71
	ld   de, $1111                                   ; $56ec: $11 $11 $11
	ld   de, $fc6f                                   ; $56ef: $11 $6f $fc
	rst  $38                                         ; $56f2: $ff
	db   $fc                                         ; $56f3: $fc
	ld   de, $6116                                   ; $56f4: $11 $16 $61
	ld   a, [hl-]                                    ; $56f7: $3a
	rst  $28                                         ; $56f8: $ef
	rst  $38                                         ; $56f9: $ff
	rst  $28                                         ; $56fa: $ef
	ld   sp, hl                                      ; $56fb: $f9
	sbc  b                                           ; $56fc: $98
	ld   [de], a                                     ; $56fd: $12
	ld   sp, $1111                                   ; $56fe: $31 $11 $11
	ld   de, $ffff                                   ; $5701: $11 $ff $ff
	rst  $38                                         ; $5704: $ff
	jp   $1911                                       ; $5705: $c3 $11 $19


	ld   hl, $ffaf                                   ; $5708: $21 $af $ff
	cp   $ff                                         ; $570b: $fe $ff
	push hl                                          ; $570d: $e5
	ld   [hl+], a                                    ; $570e: $22
	ld   [hl+], a                                    ; $570f: $22
	ld   de, $1111                                   ; $5710: $11 $11 $11
	rra                                              ; $5713: $1f
	rst  $38                                         ; $5714: $ff
	rst  $38                                         ; $5715: $ff
	sla  c                                           ; $5716: $cb $21
	ld   de, $2ed5                                   ; $5718: $11 $d5 $2e
	rst  $38                                         ; $571b: $ff
	rst  $38                                         ; $571c: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $571d: $cf
	db   $fc                                         ; $571e: $fc
	ld   h, d                                        ; $571f: $62
	ld   [hl+], a                                    ; $5720: $22
	ld   d, h                                        ; $5721: $54
	ld   de, $1611                                   ; $5722: $11 $11 $16
	rst  $38                                         ; $5725: $ff
	cp   a                                           ; $5726: $bf
	ld   a, [$1191]                                  ; $5727: $fa $91 $11
	adc  a                                           ; $572a: $8f
	jr   z, @+$01                                    ; $572b: $28 $ff

	rst  $38                                         ; $572d: $ff
	jp   c, $92be                                    ; $572e: $da $be $92

	ld   b, d                                        ; $5731: $42
	ld   c, c                                        ; $5732: $49
	ld   de, $1111                                   ; $5733: $11 $11 $11
	rst  $38                                         ; $5736: $ff
	xor  a                                           ; $5737: $af
	ld   hl, sp-$6f                                  ; $5738: $f8 $91
	ld   de, $563f                                   ; $573a: $11 $3f $56
	rst  $38                                         ; $573d: $ff
	rst  $38                                         ; $573e: $ff
	or   $4c                                         ; $573f: $f6 $4c
	sub  h                                           ; $5741: $94
	ld   d, c                                        ; $5742: $51
	jr   @+$13                                       ; $5743: $18 $11

	ld   de, $ff1f                                   ; $5745: $11 $1f $ff
	ld   l, a                                        ; $5748: $6f
	ei                                               ; $5749: $fb
	ld   de, rAUD1LEN                                   ; $574a: $11 $11 $ff
	ld   c, a                                        ; $574d: $4f
	rst  $38                                         ; $574e: $ff
	db   $fc                                         ; $574f: $fc
	ld   b, e                                        ; $5750: $43
	sbc  e                                           ; $5751: $9b
	ld   b, h                                        ; $5752: $44
	ld   b, e                                        ; $5753: $43
	ld   h, c                                        ; $5754: $61
	ld   de, rAUD1LEN                                   ; $5755: $11 $11 $ff
	db   $fc                                         ; $5758: $fc
	cp   $b1                                         ; $5759: $fe $b1
	ld   de, $b91f                                   ; $575b: $11 $1f $b9
	rst  $38                                         ; $575e: $ff
	rst  $38                                         ; $575f: $ff
	and  h                                           ; $5760: $a4
	ld   e, e                                        ; $5761: $5b
	sub  l                                           ; $5762: $95
	ld   [hl], h                                     ; $5763: $74
	inc  de                                          ; $5764: $13
	ld   de, $df11                                   ; $5765: $11 $11 $df
	ld   a, [$b6ff]                                  ; $5768: $fa $ff $b6
	ld   de, $f91f                                   ; $576b: $11 $1f $f9
	rst  $38                                         ; $576e: $ff
	rst  $38                                         ; $576f: $ff
	and  e                                           ; $5770: $a3
	ld   e, h                                        ; $5771: $5c
	ld   a, [$1152]                                  ; $5772: $fa $52 $11
	ld   de, rAUD1LEN                                   ; $5775: $11 $11 $ff
	ld   a, [$d8fb]                                  ; $5778: $fa $fb $d8
	ld   de, $f81f                                   ; $577b: $11 $1f $f8
	cp   $df                                         ; $577e: $fe $df
	add  c                                           ; $5780: $81
	ld   c, a                                        ; $5781: $4f
	ei                                               ; $5782: $fb
	ld   [hl], c                                     ; $5783: $71
	ld   de, $1111                                   ; $5784: $11 $11 $11
	rst  $38                                         ; $5787: $ff
	rst  $38                                         ; $5788: $ff
	rst  $20                                         ; $5789: $e7
	pop  de                                          ; $578a: $d1
	ld   de, $ffaf                                   ; $578b: $11 $af $ff
	rst  $30                                         ; $578e: $f7
	db   $fd                                         ; $578f: $fd
	ld   de, $fcaf                                   ; $5790: $11 $af $fc
	ld   b, c                                        ; $5793: $41
	ld   de, $1f11                                   ; $5794: $11 $11 $1f
	rst  $38                                         ; $5797: $ff
	rst  $38                                         ; $5798: $ff
	adc  e                                           ; $5799: $8b
	ld   b, c                                        ; $579a: $41
	ld   de, $ffff                                   ; $579b: $11 $ff $ff
	xor  d                                           ; $579e: $aa
	add  $4a                                         ; $579f: $c6 $4a
	rst  $38                                         ; $57a1: $ff
	push hl                                          ; $57a2: $e5
	ld   de, $1111                                   ; $57a3: $11 $11 $11
	rst  $38                                         ; $57a6: $ff
	rst  $38                                         ; $57a7: $ff
	ld   sp, hl                                      ; $57a8: $f9
	add  d                                           ; $57a9: $82
	ld   de, $ff2f                                   ; $57aa: $11 $2f $ff
	ld   a, [$6789]                                  ; $57ad: $fa $89 $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57b0: $cf
	rst  $38                                         ; $57b1: $ff
	ld   b, c                                        ; $57b2: $41
	ld   de, $1f11                                   ; $57b3: $11 $11 $1f
	rst  $38                                         ; $57b6: $ff
	rst  $38                                         ; $57b7: $ff
	and  a                                           ; $57b8: $a7
	ld   de, $ff17                                   ; $57b9: $11 $17 $ff
	cp   $76                                         ; $57bc: $fe $76
	ld   d, l                                        ; $57be: $55
	sbc  a                                           ; $57bf: $9f
	rst  $38                                         ; $57c0: $ff
	pop  hl                                          ; $57c1: $e1
	ld   de, $1f11                                   ; $57c2: $11 $11 $1f
	rst  $38                                         ; $57c5: $ff
	rst  $38                                         ; $57c6: $ff
	ld   a, [$1711]                                  ; $57c7: $fa $11 $17
	rst  $28                                         ; $57ca: $ef
	rst  $38                                         ; $57cb: $ff
	sub  h                                           ; $57cc: $94
	ld   de, $ff7f                                   ; $57cd: $11 $7f $ff
	db   $f4                                         ; $57d0: $f4
	ld   de, $1f11                                   ; $57d1: $11 $11 $1f
	rst  $38                                         ; $57d4: $ff
	rst  $38                                         ; $57d5: $ff
	ld   sp, hl                                      ; $57d6: $f9
	ld   de, $ff4e                                   ; $57d7: $11 $4e $ff
	db   $fd                                         ; $57da: $fd
	add  e                                           ; $57db: $83
	ld   de, $ff5d                                   ; $57dc: $11 $5d $ff
	pop  bc                                          ; $57df: $c1
	ld   de, $df11                                   ; $57e0: $11 $11 $df
	rst  $38                                         ; $57e3: $ff
	rst  $38                                         ; $57e4: $ff
	or   d                                           ; $57e5: $b2
	inc  d                                           ; $57e6: $14
	call $faff                                       ; $57e7: $cd $ff $fa
	ld   b, c                                        ; $57ea: $41
	inc  d                                           ; $57eb: $14
	sbc  h                                           ; $57ec: $9c
	ei                                               ; $57ed: $fb
	ld   de, $1f11                                   ; $57ee: $11 $11 $1f
	rst  $38                                         ; $57f1: $ff
	rst  $38                                         ; $57f2: $ff
	db   $fc                                         ; $57f3: $fc
	ld   b, d                                        ; $57f4: $42
	adc  d                                           ; $57f5: $8a
	rst  JumpTable                                         ; $57f6: $df
	rst  $38                                         ; $57f7: $ff
	and  e                                           ; $57f8: $a3
	ld   de, $ac24                                   ; $57f9: $11 $24 $ac
	ld   b, c                                        ; $57fc: $41
	ld   de, $ba19                                   ; $57fd: $11 $19 $ba
	rst  $38                                         ; $5800: $ff
	sbc  $b3                                         ; $5801: $de $b3
	ld   a, d                                        ; $5803: $7a
	adc  [hl]                                        ; $5804: $8e
	rst  $38                                         ; $5805: $ff
	jp   hl                                          ; $5806: $e9


	ld   b, c                                        ; $5807: $41
	ld   sp, $1135                                   ; $5808: $31 $35 $11
	ld   de, $ae17                                   ; $580b: $11 $17 $ae
	db   $fd                                         ; $580e: $fd
	rst  $28                                         ; $580f: $ef
	push hl                                          ; $5810: $e5
	ld   h, h                                        ; $5811: $64
	xor  a                                           ; $5812: $af
	cp   $cd                                         ; $5813: $fe $cd
	ld   [hl], l                                     ; $5815: $75
	ld   hl, $1152                                   ; $5816: $21 $52 $11
	ld   de, $7a39                                   ; $5819: $11 $39 $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $581c: $cf
	rst  JumpTable                                         ; $581d: $df
	ld   sp, hl                                      ; $581e: $f9
	xor  b                                           ; $581f: $a8
	adc  [hl]                                        ; $5820: $8e
	call $98b9                                       ; $5821: $cd $b9 $98
	ld   b, c                                        ; $5824: $41
	ld   [de], a                                     ; $5825: $12
	ld   [hl-], a                                    ; $5826: $32
	ld   de, $987b                                   ; $5827: $11 $7b $98
	adc  h                                           ; $582a: $8c
	rst  $38                                         ; $582b: $ff
	ld   [hl], d                                     ; $582c: $72
	sbc  [hl]                                        ; $582d: $9e
	db   $fc                                         ; $582e: $fc
	xor  l                                           ; $582f: $ad
	db   $eb                                         ; $5830: $eb
	inc  sp                                          ; $5831: $33
	ld   b, [hl]                                     ; $5832: $46
	ld   b, c                                        ; $5833: $41
	ld   [de], a                                     ; $5834: $12
	inc  hl                                          ; $5835: $23
	ld   h, a                                        ; $5836: $67
	ld   a, c                                        ; $5837: $79
	call $99dc                                       ; $5838: $cd $dc $99
	cp   h                                           ; $583b: $bc
	call c, $d8bc                                    ; $583c: $dc $bc $d8
	ld   b, c                                        ; $583f: $41
	ld   l, b                                        ; $5840: $68
	ld   [hl-], a                                    ; $5841: $32
	ld   h, $53                                      ; $5842: $26 $53
	scf                                              ; $5844: $37
	cp   d                                           ; $5845: $ba
	ld   [hl], a                                     ; $5846: $77
	call z, $9cd9                                    ; $5847: $cc $d9 $9c
	call z, $89bc                                    ; $584a: $cc $bc $89
	ld   [hl], l                                     ; $584d: $75
	ld   b, d                                        ; $584e: $42
	ld   d, l                                        ; $584f: $55
	ld   h, [hl]                                     ; $5850: $66
	ld   b, d                                        ; $5851: $42
	ld   h, [hl]                                     ; $5852: $66
	ld   l, d                                        ; $5853: $6a
	sbc  b                                           ; $5854: $98
	adc  e                                           ; $5855: $8b
	res  3, c                                        ; $5856: $cb $99
	call Call_0c7_78db                               ; $5858: $cd $db $78
	xor  b                                           ; $585b: $a8
	ld   sp, $a559                                   ; $585c: $31 $59 $a5
	inc  d                                           ; $585f: $14
	sbc  e                                           ; $5860: $9b
	ld   h, l                                        ; $5861: $65
	ld   c, b                                        ; $5862: $48
	or   a                                           ; $5863: $b7
	xor  e                                           ; $5864: $ab
	db   $db                                         ; $5865: $db
	sbc  b                                           ; $5866: $98
	cp   d                                           ; $5867: $ba
	adc  e                                           ; $5868: $8b
	sbc  c                                           ; $5869: $99
	ld   d, h                                        ; $586a: $54
	add  [hl]                                        ; $586b: $86
	ld   h, l                                        ; $586c: $65
	ld   d, l                                        ; $586d: $55
	add  a                                           ; $586e: $87
	ld   h, a                                        ; $586f: $67
	ld   a, c                                        ; $5870: $79
	ld   a, e                                        ; $5871: $7b
	adc  b                                           ; $5872: $88
	cp   d                                           ; $5873: $ba
	sub  a                                           ; $5874: $97
	sbc  c                                           ; $5875: $99
	cp   d                                           ; $5876: $ba
	ld   [hl], a                                     ; $5877: $77
	adc  c                                           ; $5878: $89
	add  a                                           ; $5879: $87
	ld   h, a                                        ; $587a: $67
	sub  a                                           ; $587b: $97
	ld   d, l                                        ; $587c: $55
	ld   a, b                                        ; $587d: $78
	add  a                                           ; $587e: $87
	ld   l, b                                        ; $587f: $68
	sbc  c                                           ; $5880: $99
	ld   a, b                                        ; $5881: $78
	adc  d                                           ; $5882: $8a
	sub  a                                           ; $5883: $97
	add  a                                           ; $5884: $87
	xor  h                                           ; $5885: $ac
	xor  b                                           ; $5886: $a8
	ld   [hl], a                                     ; $5887: $77
	sbc  c                                           ; $5888: $99
	halt                                             ; $5889: $76
	ld   h, a                                        ; $588a: $67
	halt                                             ; $588b: $76
	ld   c, c                                        ; $588c: $49
	xor  b                                           ; $588d: $a8
	ld   a, b                                        ; $588e: $78
	adc  c                                           ; $588f: $89
	sbc  b                                           ; $5890: $98
	halt                                             ; $5891: $76
	ld   a, c                                        ; $5892: $79
	sub  a                                           ; $5893: $97
	cp   d                                           ; $5894: $ba
	sbc  c                                           ; $5895: $99
	ld   a, c                                        ; $5896: $79
	adc  b                                           ; $5897: $88
	add  a                                           ; $5898: $87
	ld   a, b                                        ; $5899: $78
	ld   a, b                                        ; $589a: $78
	ld   [hl], a                                     ; $589b: $77
	adc  c                                           ; $589c: $89
	sbc  c                                           ; $589d: $99
	sbc  b                                           ; $589e: $98
	adc  b                                           ; $589f: $88
	sub  [hl]                                        ; $58a0: $96
	ld   a, b                                        ; $58a1: $78
	sbc  c                                           ; $58a2: $99
	xor  c                                           ; $58a3: $a9
	xor  c                                           ; $58a4: $a9
	sbc  c                                           ; $58a5: $99
	ld   [hl], a                                     ; $58a6: $77
	ld   a, b                                        ; $58a7: $78
	sbc  c                                           ; $58a8: $99
	adc  b                                           ; $58a9: $88
	sbc  b                                           ; $58aa: $98
	ld   a, b                                        ; $58ab: $78
	adc  c                                           ; $58ac: $89
	xor  b                                           ; $58ad: $a8
	xor  b                                           ; $58ae: $a8
	sub  a                                           ; $58af: $97
	ld   a, b                                        ; $58b0: $78
	adc  c                                           ; $58b1: $89
	sbc  c                                           ; $58b2: $99
	ld   a, b                                        ; $58b3: $78
	sbc  b                                           ; $58b4: $98
	adc  b                                           ; $58b5: $88
	sbc  b                                           ; $58b6: $98
	sbc  b                                           ; $58b7: $98
	adc  b                                           ; $58b8: $88
	adc  b                                           ; $58b9: $88
	adc  b                                           ; $58ba: $88
	sbc  c                                           ; $58bb: $99
	sbc  b                                           ; $58bc: $98
	adc  b                                           ; $58bd: $88
	ld   a, b                                        ; $58be: $78
	sbc  b                                           ; $58bf: $98
	sbc  c                                           ; $58c0: $99
	adc  b                                           ; $58c1: $88
	adc  b                                           ; $58c2: $88
	sbc  b                                           ; $58c3: $98
	adc  b                                           ; $58c4: $88
	adc  c                                           ; $58c5: $89
	sbc  b                                           ; $58c6: $98
	adc  b                                           ; $58c7: $88
	adc  b                                           ; $58c8: $88
	adc  b                                           ; $58c9: $88
	adc  c                                           ; $58ca: $89
	sbc  b                                           ; $58cb: $98
	add  a                                           ; $58cc: $87
	adc  b                                           ; $58cd: $88
	adc  c                                           ; $58ce: $89
	adc  b                                           ; $58cf: $88
	sbc  b                                           ; $58d0: $98
	ld   [hl], a                                     ; $58d1: $77
	ld   [hl], a                                     ; $58d2: $77
	sbc  b                                           ; $58d3: $98
	adc  b                                           ; $58d4: $88
	ld   a, b                                        ; $58d5: $78
	add  a                                           ; $58d6: $87
	adc  c                                           ; $58d7: $89
	adc  c                                           ; $58d8: $89
	adc  b                                           ; $58d9: $88
	adc  b                                           ; $58da: $88
	adc  b                                           ; $58db: $88
	adc  b                                           ; $58dc: $88
	adc  b                                           ; $58dd: $88
	adc  b                                           ; $58de: $88
	adc  b                                           ; $58df: $88
	ld   [hl], a                                     ; $58e0: $77
	ld   [hl], a                                     ; $58e1: $77
	adc  b                                           ; $58e2: $88
	adc  b                                           ; $58e3: $88
	adc  b                                           ; $58e4: $88
	adc  b                                           ; $58e5: $88
	adc  b                                           ; $58e6: $88
	sbc  b                                           ; $58e7: $98
	adc  b                                           ; $58e8: $88
	sbc  c                                           ; $58e9: $99
	ld   [hl], a                                     ; $58ea: $77
	ld   [hl], a                                     ; $58eb: $77
	adc  b                                           ; $58ec: $88
	adc  b                                           ; $58ed: $88
	add  a                                           ; $58ee: $87
	ld   [hl], a                                     ; $58ef: $77
	ld   [hl], a                                     ; $58f0: $77
	adc  b                                           ; $58f1: $88
	ld   a, b                                        ; $58f2: $78
	ld   a, b                                        ; $58f3: $78
	adc  b                                           ; $58f4: $88
	adc  b                                           ; $58f5: $88
	adc  b                                           ; $58f6: $88
	sbc  b                                           ; $58f7: $98
	add  a                                           ; $58f8: $87
	ld   [hl], a                                     ; $58f9: $77
	adc  b                                           ; $58fa: $88
	ld   a, b                                        ; $58fb: $78
	add  a                                           ; $58fc: $87
	ld   [hl], a                                     ; $58fd: $77
	ld   [hl], a                                     ; $58fe: $77
	add  a                                           ; $58ff: $87
	adc  b                                           ; $5900: $88
	adc  b                                           ; $5901: $88
	sub  a                                           ; $5902: $97
	ld   a, b                                        ; $5903: $78
	adc  b                                           ; $5904: $88
	adc  b                                           ; $5905: $88
	adc  b                                           ; $5906: $88
	add  a                                           ; $5907: $87
	ld   a, b                                        ; $5908: $78
	adc  b                                           ; $5909: $88
	add  a                                           ; $590a: $87
	add  a                                           ; $590b: $87
	adc  b                                           ; $590c: $88
	ld   [hl], a                                     ; $590d: $77
	add  a                                           ; $590e: $87
	ld   a, b                                        ; $590f: $78
	adc  b                                           ; $5910: $88
	adc  b                                           ; $5911: $88
	adc  b                                           ; $5912: $88
	adc  b                                           ; $5913: $88
	adc  b                                           ; $5914: $88
	ld   a, b                                        ; $5915: $78
	adc  b                                           ; $5916: $88
	adc  b                                           ; $5917: $88
	ld   a, b                                        ; $5918: $78
	adc  b                                           ; $5919: $88
	ld   [hl], a                                     ; $591a: $77
	add  a                                           ; $591b: $87
	ld   a, b                                        ; $591c: $78
	ld   [hl], a                                     ; $591d: $77
	adc  b                                           ; $591e: $88
	adc  b                                           ; $591f: $88
	adc  b                                           ; $5920: $88
	adc  b                                           ; $5921: $88
	adc  b                                           ; $5922: $88
	adc  b                                           ; $5923: $88
	adc  b                                           ; $5924: $88
	ld   a, b                                        ; $5925: $78
	adc  b                                           ; $5926: $88
	ld   [hl], a                                     ; $5927: $77
	adc  b                                           ; $5928: $88
	add  a                                           ; $5929: $87
	ld   [hl], a                                     ; $592a: $77
	adc  b                                           ; $592b: $88
	adc  b                                           ; $592c: $88
	adc  b                                           ; $592d: $88
	adc  b                                           ; $592e: $88
	adc  b                                           ; $592f: $88
	adc  b                                           ; $5930: $88
	add  a                                           ; $5931: $87
	adc  b                                           ; $5932: $88
	adc  b                                           ; $5933: $88
	adc  b                                           ; $5934: $88
	adc  b                                           ; $5935: $88
	adc  b                                           ; $5936: $88
	adc  b                                           ; $5937: $88
	add  a                                           ; $5938: $87
	adc  b                                           ; $5939: $88
	ld   a, b                                        ; $593a: $78
	adc  b                                           ; $593b: $88
	adc  b                                           ; $593c: $88
	adc  b                                           ; $593d: $88
	adc  b                                           ; $593e: $88
	add  a                                           ; $593f: $87
	adc  b                                           ; $5940: $88
	ld   a, b                                        ; $5941: $78
	adc  b                                           ; $5942: $88
	adc  b                                           ; $5943: $88
	ld   a, b                                        ; $5944: $78
	adc  b                                           ; $5945: $88
	adc  b                                           ; $5946: $88
	adc  b                                           ; $5947: $88
	ld   a, b                                        ; $5948: $78
	adc  b                                           ; $5949: $88
	adc  b                                           ; $594a: $88
	adc  b                                           ; $594b: $88
	adc  b                                           ; $594c: $88
	adc  b                                           ; $594d: $88
	add  a                                           ; $594e: $87
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
	ld   a, b                                        ; $595e: $78
	adc  b                                           ; $595f: $88
	adc  b                                           ; $5960: $88
	ld   a, b                                        ; $5961: $78
	adc  b                                           ; $5962: $88
	adc  b                                           ; $5963: $88
	adc  b                                           ; $5964: $88
	adc  b                                           ; $5965: $88
	adc  b                                           ; $5966: $88
	adc  b                                           ; $5967: $88
	ld   a, b                                        ; $5968: $78
	adc  b                                           ; $5969: $88
	adc  b                                           ; $596a: $88
	adc  b                                           ; $596b: $88
	adc  b                                           ; $596c: $88
	adc  b                                           ; $596d: $88
	adc  b                                           ; $596e: $88
	adc  b                                           ; $596f: $88
	ld   a, b                                        ; $5970: $78
	adc  b                                           ; $5971: $88
	adc  b                                           ; $5972: $88
	adc  b                                           ; $5973: $88
	adc  b                                           ; $5974: $88
	adc  b                                           ; $5975: $88
	ld   a, b                                        ; $5976: $78
	adc  b                                           ; $5977: $88
	adc  b                                           ; $5978: $88
	adc  b                                           ; $5979: $88
	adc  b                                           ; $597a: $88
	sbc  b                                           ; $597b: $98
	adc  b                                           ; $597c: $88
	adc  b                                           ; $597d: $88
	adc  b                                           ; $597e: $88
	adc  b                                           ; $597f: $88
	adc  b                                           ; $5980: $88
	adc  b                                           ; $5981: $88
	adc  b                                           ; $5982: $88
	add  a                                           ; $5983: $87
	adc  c                                           ; $5984: $89
	adc  b                                           ; $5985: $88
	adc  b                                           ; $5986: $88
	adc  b                                           ; $5987: $88
	adc  b                                           ; $5988: $88
	adc  b                                           ; $5989: $88
	sbc  b                                           ; $598a: $98
	adc  b                                           ; $598b: $88
	adc  c                                           ; $598c: $89
	sbc  b                                           ; $598d: $98
	adc  b                                           ; $598e: $88
	adc  b                                           ; $598f: $88
	adc  b                                           ; $5990: $88
	adc  b                                           ; $5991: $88
	adc  b                                           ; $5992: $88
	add  a                                           ; $5993: $87
	sbc  b                                           ; $5994: $98
	adc  b                                           ; $5995: $88
	adc  c                                           ; $5996: $89
	adc  b                                           ; $5997: $88
	adc  b                                           ; $5998: $88
	adc  b                                           ; $5999: $88
	adc  b                                           ; $599a: $88
	sbc  b                                           ; $599b: $98
	adc  b                                           ; $599c: $88
	adc  c                                           ; $599d: $89
	add  a                                           ; $599e: $87
	adc  c                                           ; $599f: $89
	adc  b                                           ; $59a0: $88
	adc  c                                           ; $59a1: $89
	adc  b                                           ; $59a2: $88
	sbc  b                                           ; $59a3: $98
	adc  b                                           ; $59a4: $88
	adc  b                                           ; $59a5: $88
	adc  b                                           ; $59a6: $88
	adc  c                                           ; $59a7: $89
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
	adc  c                                           ; $59b2: $89
	adc  b                                           ; $59b3: $88
	adc  c                                           ; $59b4: $89
	adc  b                                           ; $59b5: $88
	adc  b                                           ; $59b6: $88
	adc  b                                           ; $59b7: $88
	adc  b                                           ; $59b8: $88
	adc  b                                           ; $59b9: $88
	add  a                                           ; $59ba: $87
	sbc  b                                           ; $59bb: $98
	adc  b                                           ; $59bc: $88
	adc  c                                           ; $59bd: $89
	adc  b                                           ; $59be: $88
	adc  b                                           ; $59bf: $88
	adc  b                                           ; $59c0: $88
	sbc  b                                           ; $59c1: $98
	adc  b                                           ; $59c2: $88
	sbc  c                                           ; $59c3: $99
	adc  b                                           ; $59c4: $88
	adc  b                                           ; $59c5: $88
	sbc  b                                           ; $59c6: $98
	adc  c                                           ; $59c7: $89
	sub  a                                           ; $59c8: $97
	ld   a, c                                        ; $59c9: $79
	adc  b                                           ; $59ca: $88
	adc  b                                           ; $59cb: $88
	adc  b                                           ; $59cc: $88
	adc  b                                           ; $59cd: $88
	adc  b                                           ; $59ce: $88
	adc  b                                           ; $59cf: $88
	adc  c                                           ; $59d0: $89
	sbc  c                                           ; $59d1: $99
	adc  c                                           ; $59d2: $89
	sbc  c                                           ; $59d3: $99
	add  a                                           ; $59d4: $87
	ld   [hl], a                                     ; $59d5: $77
	sbc  c                                           ; $59d6: $99
	sbc  b                                           ; $59d7: $98
	xor  b                                           ; $59d8: $a8
	ld   [hl], a                                     ; $59d9: $77
	ld   a, b                                        ; $59da: $78
	sbc  b                                           ; $59db: $98
	sbc  c                                           ; $59dc: $99
	ld   a, b                                        ; $59dd: $78
	adc  b                                           ; $59de: $88
	adc  b                                           ; $59df: $88
	sbc  b                                           ; $59e0: $98
	sbc  c                                           ; $59e1: $99
	adc  b                                           ; $59e2: $88
	sbc  b                                           ; $59e3: $98
	add  a                                           ; $59e4: $87
	adc  b                                           ; $59e5: $88
	adc  c                                           ; $59e6: $89
	adc  b                                           ; $59e7: $88
	add  a                                           ; $59e8: $87
	adc  c                                           ; $59e9: $89
	adc  c                                           ; $59ea: $89
	sbc  b                                           ; $59eb: $98
	adc  b                                           ; $59ec: $88
	ld   a, b                                        ; $59ed: $78
	ld   a, c                                        ; $59ee: $79
	add  a                                           ; $59ef: $87
	adc  c                                           ; $59f0: $89
	adc  b                                           ; $59f1: $88
	ld   a, b                                        ; $59f2: $78
	adc  c                                           ; $59f3: $89
	sbc  c                                           ; $59f4: $99
	sbc  b                                           ; $59f5: $98
	adc  b                                           ; $59f6: $88
	adc  b                                           ; $59f7: $88
	adc  b                                           ; $59f8: $88
	ld   a, b                                        ; $59f9: $78
	adc  b                                           ; $59fa: $88
	ld   a, b                                        ; $59fb: $78
	adc  b                                           ; $59fc: $88
	ld   [hl], a                                     ; $59fd: $77
	sbc  b                                           ; $59fe: $98
	sbc  b                                           ; $59ff: $98
	sbc  c                                           ; $5a00: $99
	adc  c                                           ; $5a01: $89
	ld   [hl], a                                     ; $5a02: $77
	sbc  c                                           ; $5a03: $99
	add  a                                           ; $5a04: $87
	ld   a, c                                        ; $5a05: $79
	add  a                                           ; $5a06: $87
	ld   a, b                                        ; $5a07: $78
	add  a                                           ; $5a08: $87
	adc  b                                           ; $5a09: $88
	adc  c                                           ; $5a0a: $89
	sbc  b                                           ; $5a0b: $98
	sbc  c                                           ; $5a0c: $99
	ld   a, c                                        ; $5a0d: $79
	add  a                                           ; $5a0e: $87
	add  a                                           ; $5a0f: $87
	adc  b                                           ; $5a10: $88
	ld   a, c                                        ; $5a11: $79
	add  a                                           ; $5a12: $87
	adc  b                                           ; $5a13: $88
	sbc  c                                           ; $5a14: $99
	adc  b                                           ; $5a15: $88
	adc  c                                           ; $5a16: $89
	adc  b                                           ; $5a17: $88
	ld   a, c                                        ; $5a18: $79
	add  a                                           ; $5a19: $87
	sbc  b                                           ; $5a1a: $98
	ld   a, c                                        ; $5a1b: $79
	ld   [hl], a                                     ; $5a1c: $77
	ld   a, b                                        ; $5a1d: $78
	add  a                                           ; $5a1e: $87
	sbc  b                                           ; $5a1f: $98
	adc  b                                           ; $5a20: $88
	ld   a, d                                        ; $5a21: $7a
	sbc  b                                           ; $5a22: $98
	sbc  b                                           ; $5a23: $98
	add  [hl]                                        ; $5a24: $86
	ld   a, b                                        ; $5a25: $78
	ld   a, c                                        ; $5a26: $79
	ld   a, b                                        ; $5a27: $78
	sbc  b                                           ; $5a28: $98
	ld   [hl], a                                     ; $5a29: $77
	adc  b                                           ; $5a2a: $88
	sub  a                                           ; $5a2b: $97
	adc  b                                           ; $5a2c: $88
	adc  b                                           ; $5a2d: $88
	ld   [hl], a                                     ; $5a2e: $77
	ld   a, c                                        ; $5a2f: $79
	adc  c                                           ; $5a30: $89
	halt                                             ; $5a31: $76
	ld   a, b                                        ; $5a32: $78
	xor  b                                           ; $5a33: $a8
	add  a                                           ; $5a34: $87
	sbc  b                                           ; $5a35: $98
	halt                                             ; $5a36: $76
	ld   a, c                                        ; $5a37: $79
	sbc  c                                           ; $5a38: $99
	ld   [hl], a                                     ; $5a39: $77
	ld   a, d                                        ; $5a3a: $7a
	halt                                             ; $5a3b: $76
	sbc  b                                           ; $5a3c: $98
	sbc  c                                           ; $5a3d: $99
	add  [hl]                                        ; $5a3e: $86
	xor  h                                           ; $5a3f: $ac
	cp   b                                           ; $5a40: $b8
	ld   a, b                                        ; $5a41: $78
	sub  l                                           ; $5a42: $95
	ld   a, e                                        ; $5a43: $7b
	and  a                                           ; $5a44: $a7
	ld   [hl], a                                     ; $5a45: $77
	ld   b, [hl]                                     ; $5a46: $46
	ld   h, [hl]                                     ; $5a47: $66
	ld   [hl], a                                     ; $5a48: $77
	xor  c                                           ; $5a49: $a9
	ld   [hl], a                                     ; $5a4a: $77
	sbc  e                                           ; $5a4b: $9b
	and  l                                           ; $5a4c: $a5
	ld   d, a                                        ; $5a4d: $57
	add  a                                           ; $5a4e: $87
	halt                                             ; $5a4f: $76
	adc  c                                           ; $5a50: $89
	halt                                             ; $5a51: $76
	adc  c                                           ; $5a52: $89
	xor  e                                           ; $5a53: $ab
	sub  a                                           ; $5a54: $97
	ld   a, b                                        ; $5a55: $78
	ld   [hl], l                                     ; $5a56: $75
	ld   d, [hl]                                     ; $5a57: $56
	ld   [hl], a                                     ; $5a58: $77
	ld   h, l                                        ; $5a59: $65
	ld   [hl], a                                     ; $5a5a: $77
	halt                                             ; $5a5b: $76
	adc  d                                           ; $5a5c: $8a
	adc  c                                           ; $5a5d: $89
	ld   [hl], a                                     ; $5a5e: $77
	adc  d                                           ; $5a5f: $8a
	ld   [hl], l                                     ; $5a60: $75
	ld   a, b                                        ; $5a61: $78
	halt                                             ; $5a62: $76
	add  a                                           ; $5a63: $87
	ld   a, d                                        ; $5a64: $7a
	xor  b                                           ; $5a65: $a8
	adc  d                                           ; $5a66: $8a
	xor  d                                           ; $5a67: $aa
	ld   [hl], h                                     ; $5a68: $74
	ld   a, d                                        ; $5a69: $7a
	halt                                             ; $5a6a: $76
	ld   h, [hl]                                     ; $5a6b: $66
	ld   a, d                                        ; $5a6c: $7a
	ld   d, l                                        ; $5a6d: $55
	sbc  c                                           ; $5a6e: $99
	ld   a, c                                        ; $5a6f: $79
	and  a                                           ; $5a70: $a7
	xor  d                                           ; $5a71: $aa
	sbc  b                                           ; $5a72: $98
	add  [hl]                                        ; $5a73: $86
	adc  h                                           ; $5a74: $8c
	halt                                             ; $5a75: $76
	ld   h, [hl]                                     ; $5a76: $66
	ld   l, d                                        ; $5a77: $6a
	adc  c                                           ; $5a78: $89
	add  h                                           ; $5a79: $84
	sbc  l                                           ; $5a7a: $9d
	sub  h                                           ; $5a7b: $94
	ld   h, a                                        ; $5a7c: $67
	cp   d                                           ; $5a7d: $ba
	ld   d, h                                        ; $5a7e: $54
	ld   a, h                                        ; $5a7f: $7c
	or   a                                           ; $5a80: $b7
	ld   c, c                                        ; $5a81: $49
	db   $fc                                         ; $5a82: $fc
	ld   b, l                                        ; $5a83: $45
	cp   [hl]                                        ; $5a84: $be
	and  l                                           ; $5a85: $a5
	ld   e, c                                        ; $5a86: $59
	xor  b                                           ; $5a87: $a8
	add  [hl]                                        ; $5a88: $86
	ld   e, b                                        ; $5a89: $58
	xor  b                                           ; $5a8a: $a8
	inc  h                                           ; $5a8b: $24
	cp   e                                           ; $5a8c: $bb

jr_0c7_5a8d:
	ld   h, e                                        ; $5a8d: $63

jr_0c7_5a8e:
	jr   c, jr_0c7_5a8e                              ; $5a8e: $38 $fe

	ld   [de], a                                     ; $5a90: $12
	rst  $38                                         ; $5a91: $ff
	cp   b                                           ; $5a92: $b8
	ld   l, d                                        ; $5a93: $6a
	db   $fc                                         ; $5a94: $fc
	daa                                              ; $5a95: $27
	db   $fd                                         ; $5a96: $fd
	ld   h, e                                        ; $5a97: $63
	jr   c, jr_0c7_5b0e                              ; $5a98: $38 $74

	ld   [hl+], a                                    ; $5a9a: $22
	inc  d                                           ; $5a9b: $14
	ld   sp, $bb49                                   ; $5a9c: $31 $49 $bb
	xor  e                                           ; $5a9f: $ab
	rst  $38                                         ; $5aa0: $ff
	db   $ec                                         ; $5aa1: $ec
	sbc  l                                           ; $5aa2: $9d
	call c, $bcdc                                    ; $5aa3: $dc $dc $bc
	add  h                                           ; $5aa6: $84
	ld   sp, $1113                                   ; $5aa7: $31 $13 $11
	inc  de                                          ; $5aaa: $13
	xor  e                                           ; $5aab: $ab
	sbc  l                                           ; $5aac: $9d
	rst  $38                                         ; $5aad: $ff
	rst  $38                                         ; $5aae: $ff
	sbc  h                                           ; $5aaf: $9c
	ret  c                                           ; $5ab0: $d8

	adc  e                                           ; $5ab1: $8b
	rst  $38                                         ; $5ab2: $ff
	db   $eb                                         ; $5ab3: $eb
	ld   b, a                                        ; $5ab4: $47
	ld   [hl], c                                     ; $5ab5: $71
	ld   de, $1111                                   ; $5ab6: $11 $11 $11
	ld   a, [hl+]                                    ; $5ab9: $2a
	rst  $38                                         ; $5aba: $ff
	cp   $ff                                         ; $5abb: $fe $ff
	sub  a                                           ; $5abd: $97
	sub  a                                           ; $5abe: $97
	cp   a                                           ; $5abf: $bf
	xor  h                                           ; $5ac0: $ac
	db   $fd                                         ; $5ac1: $fd
	ld   [hl], $31                                   ; $5ac2: $36 $31
	ld   de, $1111                                   ; $5ac4: $11 $11 $11
	sbc  e                                           ; $5ac7: $9b
	cp   a                                           ; $5ac8: $bf
	rst  $38                                         ; $5ac9: $ff
	db   $ec                                         ; $5aca: $ec
	ld   a, b                                        ; $5acb: $78
	add  a                                           ; $5acc: $87
	rst  $38                                         ; $5acd: $ff
	db   $ec                                         ; $5ace: $ec
	adc  $92                                         ; $5acf: $ce $92
	ld   de, $3111                                   ; $5ad1: $11 $11 $31
	ld   de, $ff9f                                   ; $5ad4: $11 $9f $ff
	rst  JumpTable                                         ; $5ad7: $df
	ld   sp, hl                                      ; $5ad8: $f9
	dec  [hl]                                        ; $5ad9: $35
	sbc  [hl]                                        ; $5ada: $9e
	adc  $ff                                         ; $5adb: $ce $ff
	jp   z, $3152                                    ; $5add: $ca $52 $31

	ld   de, $1161                                   ; $5ae0: $11 $61 $11
	rst  $38                                         ; $5ae3: $ff
	sbc  l                                           ; $5ae4: $9d
	rst  $38                                         ; $5ae5: $ff
	or   $17                                         ; $5ae6: $f6 $17
	xor  d                                           ; $5ae8: $aa
	rst  $28                                         ; $5ae9: $ef
	cp   $d8                                         ; $5aea: $fe $d8
	ld   h, d                                        ; $5aec: $62
	ld   de, $1103                                   ; $5aed: $11 $03 $11
	rla                                              ; $5af0: $17
	rst  $38                                         ; $5af1: $ff
	sbc  a                                           ; $5af2: $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5af3: $cf
	rst  $30                                         ; $5af4: $f7
	ld   d, $fe                                      ; $5af5: $16 $fe
	db   $ed                                         ; $5af7: $ed
	rst  JumpTable                                         ; $5af8: $df
	pop  de                                          ; $5af9: $d1
	jr   jr_0c7_5a8d                                 ; $5afa: $18 $91

	ld   de, $1165                                   ; $5afc: $11 $65 $11
	rst  $38                                         ; $5aff: $ff
	db   $fd                                         ; $5b00: $fd
	cp   e                                           ; $5b01: $bb
	ei                                               ; $5b02: $fb
	ld   de, $fd9f                                   ; $5b03: $11 $9f $fd
	cp   $73                                         ; $5b06: $fe $73
	ld   de, $11c3                                   ; $5b08: $11 $c3 $11
	ld   sp, $9e16                                   ; $5b0b: $31 $16 $9e

jr_0c7_5b0e:
	rst  $38                                         ; $5b0e: $ff
	jp   c, $8f72                                    ; $5b0f: $da $72 $8f

	xor  e                                           ; $5b12: $ab
	rst  $38                                         ; $5b13: $ff
	db   $fc                                         ; $5b14: $fc
	inc  hl                                          ; $5b15: $23
	ld   h, e                                        ; $5b16: $63
	ld   b, c                                        ; $5b17: $41
	ld   de, $1581                                   ; $5b18: $11 $81 $15
	rst  $28                                         ; $5b1b: $ef
	rst  $38                                         ; $5b1c: $ff
	sub  l                                           ; $5b1d: $95
	xor  c                                           ; $5b1e: $a9
	ld   c, c                                        ; $5b1f: $49
	ei                                               ; $5b20: $fb
	rst  $38                                         ; $5b21: $ff
	jp   nc, $a438                                   ; $5b22: $d2 $38 $a4

	ld   de, $2128                                   ; $5b25: $11 $28 $21
	dec  d                                           ; $5b28: $15
	rst  $38                                         ; $5b29: $ff
	db   $d3                                         ; $5b2a: $d3
	xor  a                                           ; $5b2b: $af
	and  c                                           ; $5b2c: $a1
	inc  a                                           ; $5b2d: $3c
	rst  $38                                         ; $5b2e: $ff
	ld   [hl], l                                     ; $5b2f: $75
	rst  $38                                         ; $5b30: $ff
	ld   de, $9156                                   ; $5b31: $11 $56 $91
	inc  d                                           ; $5b34: $14
	and  c                                           ; $5b35: $a1
	ld   a, [de]                                     ; $5b36: $1a
	xor  $f9                                         ; $5b37: $ee $f9
	ld   c, a                                        ; $5b39: $4f
	pop  bc                                          ; $5b3a: $c1
	ld   a, $fe                                      ; $5b3b: $3e $fe
	db   $fd                                         ; $5b3d: $fd
	xor  [hl]                                        ; $5b3e: $ae
	add  c                                           ; $5b3f: $81
	add  hl, de                                      ; $5b40: $19
	or   d                                           ; $5b41: $b2
	ld   de, $4143                                   ; $5b42: $11 $43 $41
	ld   a, a                                        ; $5b45: $7f
	ei                                               ; $5b46: $fb
	xor  c                                           ; $5b47: $a9
	ld   a, [hl]                                     ; $5b48: $7e
	ld   d, e                                        ; $5b49: $53
	rst  $38                                         ; $5b4a: $ff
	cp   c                                           ; $5b4b: $b9
	ld   sp, hl                                      ; $5b4c: $f9
	add  h                                           ; $5b4d: $84
	dec  h                                           ; $5b4e: $25
	and  c                                           ; $5b4f: $a1
	ld   de, $1363                                   ; $5b50: $11 $63 $13
	cp   a                                           ; $5b53: $bf
	ld   a, [$9687]                                  ; $5b54: $fa $87 $96
	xor  e                                           ; $5b57: $ab
	adc  a                                           ; $5b58: $8f
	rst  $38                                         ; $5b59: $ff
	ld   [hl], h                                     ; $5b5a: $74
	ld   a, [hl-]                                    ; $5b5b: $3a
	add  h                                           ; $5b5c: $84
	inc  d                                           ; $5b5d: $14
	ld   d, h                                        ; $5b5e: $54
	ld   de, $ac17                                   ; $5b5f: $11 $17 $ac
	ld   hl, sp-$41                                  ; $5b62: $f8 $bf
	ld   sp, $efbe                                   ; $5b64: $31 $be $ef
	jp   z, $34e8                                    ; $5b67: $ca $e8 $34

	xor  d                                           ; $5b6a: $aa
	ld   h, d                                        ; $5b6b: $62
	ld   [de], a                                     ; $5b6c: $12
	ld   d, d                                        ; $5b6d: $52
	ld   [de], a                                     ; $5b6e: $12
	db   $fd                                         ; $5b6f: $fd
	call $fa47                                       ; $5b70: $cd $47 $fa

jr_0c7_5b73:
	daa                                              ; $5b73: $27
	cp   $ee                                         ; $5b74: $fe $ee
	cp   b                                           ; $5b76: $b8
	adc  c                                           ; $5b77: $89
	ld   sp, $218c                                   ; $5b78: $31 $8c $21
	ld   d, $11                                      ; $5b7b: $16 $11
	xor  c                                           ; $5b7d: $a9
	rst  JumpTable                                         ; $5b7e: $df
	ld   [hl], l                                     ; $5b7f: $75
	db   $ec                                         ; $5b80: $ec
	add  hl, hl                                      ; $5b81: $29
	ei                                               ; $5b82: $fb
	ld   a, a                                        ; $5b83: $7f
	sub  $89                                         ; $5b84: $d6 $89
	xor  c                                           ; $5b86: $a9
	ld   b, c                                        ; $5b87: $41
	inc  d                                           ; $5b88: $14
	ld   b, d                                        ; $5b89: $42
	ld   de, $559f                                   ; $5b8a: $11 $9f $55
	rst  $38                                         ; $5b8d: $ff
	ld   sp, $fc6d                                   ; $5b8e: $31 $6d $fc
	ld   e, l                                        ; $5b91: $5d
	db   $fd                                         ; $5b92: $fd
	ld   h, c                                        ; $5b93: $61
	ld   a, [hl]                                     ; $5b94: $7e
	add  c                                           ; $5b95: $81
	inc  d                                           ; $5b96: $14
	and  l                                           ; $5b97: $a5
	ld   de, $d97f                                   ; $5b98: $11 $7f $d9
	xor  b                                           ; $5b9b: $a8
	rst  $28                                         ; $5b9c: $ef
	ld   de, $a9ff                                   ; $5b9d: $11 $ff $a9
	db   $dd                                         ; $5ba0: $dd
	ld   hl, sp+$17                                  ; $5ba1: $f8 $17
	or   [hl]                                        ; $5ba3: $b6
	ld   b, c                                        ; $5ba4: $41
	jr   c, jr_0c7_5bf8                              ; $5ba5: $38 $51

	dec  de                                          ; $5ba7: $1b
	or   [hl]                                        ; $5ba8: $b6
	rst  JumpTable                                         ; $5ba9: $df
	or   [hl]                                        ; $5baa: $b6
	add  d                                           ; $5bab: $82
	ld   a, a                                        ; $5bac: $7f
	or   $bf                                         ; $5bad: $f6 $bf
	cp   e                                           ; $5baf: $bb
	ld   h, h                                        ; $5bb0: $64
	ld   l, b                                        ; $5bb1: $68
	ld   d, e                                        ; $5bb2: $53
	ld   e, b                                        ; $5bb3: $58
	ld   b, c                                        ; $5bb4: $41
	ld   d, $99                                      ; $5bb5: $16 $99
	db   $db                                         ; $5bb7: $db
	cp   d                                           ; $5bb8: $ba
	ld   l, e                                        ; $5bb9: $6b
	sub  l                                           ; $5bba: $95
	sbc  $bb                                         ; $5bbb: $de $bb
	cp   e                                           ; $5bbd: $bb
	sub  a                                           ; $5bbe: $97
	ld   e, c                                        ; $5bbf: $59
	sub  e                                           ; $5bc0: $93
	ld   d, $74                                      ; $5bc1: $16 $74
	ld   de, $d75b                                   ; $5bc3: $11 $5b $d7
	sbc  [hl]                                        ; $5bc6: $9e
	sla  c                                           ; $5bc7: $cb $21
	rst  $28                                         ; $5bc9: $ef
	xor  c                                           ; $5bca: $a9
	sbc  a                                           ; $5bcb: $9f
	push af                                          ; $5bcc: $f5
	jr   c, jr_0c7_5b73                              ; $5bcd: $38 $a4

	ld   [hl-], a                                    ; $5bcf: $32
	ld   c, b                                        ; $5bd0: $48
	ld   b, c                                        ; $5bd1: $41
	rla                                              ; $5bd2: $17
	cp   d                                           ; $5bd3: $ba
	sbc  $46                                         ; $5bd4: $de $46
	call $8fa3                                       ; $5bd6: $cd $a3 $8f
	rst  $30                                         ; $5bd9: $f7
	ld   l, a                                        ; $5bda: $6f
	and  $34                                         ; $5bdb: $e6 $34
	sub  l                                           ; $5bdd: $95
	rla                                              ; $5bde: $17
	ld   h, d                                        ; $5bdf: $62
	inc  sp                                          ; $5be0: $33
	ld   l, d                                        ; $5be1: $6a
	sbc  b                                           ; $5be2: $98
	res  1, b                                        ; $5be3: $cb $88
	cp   c                                           ; $5be5: $b9
	sbc  h                                           ; $5be6: $9c
	ld   a, [$a98e]                                  ; $5be7: $fa $8e $a9
	sub  l                                           ; $5bea: $95
	ld   c, b                                        ; $5beb: $48
	ld   h, e                                        ; $5bec: $63
	inc  [hl]                                        ; $5bed: $34
	ld   sp, $a73b                                   ; $5bee: $31 $3b $a7
	cp   e                                           ; $5bf1: $bb
	ld   a, c                                        ; $5bf2: $79
	xor  c                                           ; $5bf3: $a9
	ld   a, e                                        ; $5bf4: $7b
	ld   sp, hl                                      ; $5bf5: $f9
	rst  $28                                         ; $5bf6: $ef
	ld   h, e                                        ; $5bf7: $63

jr_0c7_5bf8:
	reti                                             ; $5bf8: $d9


	ld   e, d                                        ; $5bf9: $5a
	ld   b, d                                        ; $5bfa: $42
	and  [hl]                                        ; $5bfb: $a6
	ld   [de], a                                     ; $5bfc: $12
	inc  d                                           ; $5bfd: $14
	cp   c                                           ; $5bfe: $b9
	ld   a, h                                        ; $5bff: $7c
	call c, Call_0c7_7f73                            ; $5c00: $dc $73 $7f
	ret  z                                           ; $5c03: $c8

	rst  JumpTable                                         ; $5c04: $df
	and  l                                           ; $5c05: $a5
	cp   h                                           ; $5c06: $bc
	and  [hl]                                        ; $5c07: $a6
	ld   d, $b2                                      ; $5c08: $16 $b2
	inc  d                                           ; $5c0a: $14
	ld   [hl], $53                                   ; $5c0b: $36 $53
	ld   a, c                                        ; $5c0d: $79
	jp   c, $e87a                                    ; $5c0e: $da $7a $e8

	ld   c, h                                        ; $5c11: $4c
	db   $fd                                         ; $5c12: $fd
	ret                                              ; $5c13: $c9


	sbc  [hl]                                        ; $5c14: $9e
	or   e                                           ; $5c15: $b3
	ld   a, h                                        ; $5c16: $7c
	ld   [hl], c                                     ; $5c17: $71
	inc  [hl]                                        ; $5c18: $34
	ld   h, e                                        ; $5c19: $63
	inc  d                                           ; $5c1a: $14
	sbc  c                                           ; $5c1b: $99
	ld   l, e                                        ; $5c1c: $6b
	push de                                          ; $5c1d: $d5
	adc  [hl]                                        ; $5c1e: $8e
	adc  d                                           ; $5c1f: $8a
	sbc  c                                           ; $5c20: $99
	rst  $38                                         ; $5c21: $ff
	and  [hl]                                        ; $5c22: $a6
	ld   a, l                                        ; $5c23: $7d
	db   $d3                                         ; $5c24: $d3
	add  hl, hl                                      ; $5c25: $29
	or   h                                           ; $5c26: $b4
	dec  d                                           ; $5c27: $15
	ld   h, h                                        ; $5c28: $64
	ld   de, $659f                                   ; $5c29: $11 $9f $65
	adc  $b2                                         ; $5c2c: $ce $b2
	ld   e, a                                        ; $5c2e: $5f
	rst  $20                                         ; $5c2f: $e7
	cp   l                                           ; $5c30: $bd
	call $da76                                       ; $5c31: $cd $76 $da
	inc  d                                           ; $5c34: $14
	ld   d, l                                        ; $5c35: $55
	ld   h, l                                        ; $5c36: $65
	ld   [hl+], a                                    ; $5c37: $22
	ld   b, a                                        ; $5c38: $47
	add  a                                           ; $5c39: $87
	xor  d                                           ; $5c3a: $aa
	jp   z, $f81b                                    ; $5c3b: $ca $1b $f8

	ld   l, d                                        ; $5c3e: $6a
	rst  JumpTable                                         ; $5c3f: $df
	add  l                                           ; $5c40: $85
	db   $dd                                         ; $5c41: $dd
	ld   h, h                                        ; $5c42: $64
	ld   d, [hl]                                     ; $5c43: $56
	ld   [hl], h                                     ; $5c44: $74
	inc  h                                           ; $5c45: $24
	ld   b, e                                        ; $5c46: $43
	ld   b, [hl]                                     ; $5c47: $46
	sbc  d                                           ; $5c48: $9a
	cp   e                                           ; $5c49: $bb
	sbc  c                                           ; $5c4a: $99
	sbc  d                                           ; $5c4b: $9a
	xor  d                                           ; $5c4c: $aa
	res  5, l                                        ; $5c4d: $cb $ad
	sbc  b                                           ; $5c4f: $98
	rst  $20                                         ; $5c50: $e7
	ld   e, d                                        ; $5c51: $5a
	ld   h, h                                        ; $5c52: $64
	ld   b, h                                        ; $5c53: $44
	ld   b, e                                        ; $5c54: $43
	inc  [hl]                                        ; $5c55: $34
	ld   a, c                                        ; $5c56: $79
	ld   [hl], $ec                                   ; $5c57: $36 $ec
	sbc  b                                           ; $5c59: $98
	xor  c                                           ; $5c5a: $a9
	sbc  b                                           ; $5c5b: $98
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c5c: $cf
	cp   c                                           ; $5c5d: $b9
	adc  c                                           ; $5c5e: $89
	ret  z                                           ; $5c5f: $c8

	ld   l, b                                        ; $5c60: $68
	ld   d, h                                        ; $5c61: $54
	ld   h, h                                        ; $5c62: $64
	ld   b, d                                        ; $5c63: $42
	inc  d                                           ; $5c64: $14
	adc  b                                           ; $5c65: $88
	ld   a, l                                        ; $5c66: $7d
	cp   b                                           ; $5c67: $b8
	adc  b                                           ; $5c68: $88
	ret  c                                           ; $5c69: $d8

	adc  h                                           ; $5c6a: $8c
	xor  [hl]                                        ; $5c6b: $ae
	rst  ToBoot                                         ; $5c6c: $c7
	xor  e                                           ; $5c6d: $ab
	sub  [hl]                                        ; $5c6e: $96
	ld   d, a                                        ; $5c6f: $57
	sub  a                                           ; $5c70: $97
	ld   b, d                                        ; $5c71: $42
	ld   d, l                                        ; $5c72: $55
	ld   hl, $975a                                   ; $5c73: $21 $5a $97
	sbc  d                                           ; $5c76: $9a
	sbc  d                                           ; $5c77: $9a
	xor  d                                           ; $5c78: $aa
	xor  d                                           ; $5c79: $aa
	xor  b                                           ; $5c7a: $a8
	xor  [hl]                                        ; $5c7b: $ae
	and  [hl]                                        ; $5c7c: $a6
	sbc  d                                           ; $5c7d: $9a
	xor  b                                           ; $5c7e: $a8
	inc  sp                                          ; $5c7f: $33
	add  [hl]                                        ; $5c80: $86
	inc  de                                          ; $5c81: $13
	inc  [hl]                                        ; $5c82: $34
	halt                                             ; $5c83: $76
	ld   a, c                                        ; $5c84: $79
	xor  d                                           ; $5c85: $aa
	cp   h                                           ; $5c86: $bc
	ld   a, c                                        ; $5c87: $79
	ld   [$ea8b], a                                  ; $5c88: $ea $8b $ea
	ld   a, d                                        ; $5c8b: $7a
	xor  d                                           ; $5c8c: $aa
	add  [hl]                                        ; $5c8d: $86
	add  a                                           ; $5c8e: $87
	ld   b, h                                        ; $5c8f: $44
	ld   h, l                                        ; $5c90: $65
	inc  de                                          ; $5c91: $13
	halt                                             ; $5c92: $76
	ld   l, b                                        ; $5c93: $68
	sbc  c                                           ; $5c94: $99
	cp   l                                           ; $5c95: $bd
	and  a                                           ; $5c96: $a7
	xor  l                                           ; $5c97: $ad
	xor  e                                           ; $5c98: $ab
	xor  d                                           ; $5c99: $aa
	add  sp, $4a                                     ; $5c9a: $e8 $4a
	add  $77                                         ; $5c9c: $c6 $77
	ld   h, [hl]                                     ; $5c9e: $66
	ld   b, e                                        ; $5c9f: $43
	ld   b, h                                        ; $5ca0: $44
	dec  [hl]                                        ; $5ca1: $35
	halt                                             ; $5ca2: $76
	ld   a, b                                        ; $5ca3: $78
	jp   z, $b97a                                    ; $5ca4: $ca $7a $b9

	sbc  e                                           ; $5ca7: $9b
	db   $db                                         ; $5ca8: $db
	xor  d                                           ; $5ca9: $aa
	ld   a, b                                        ; $5caa: $78
	cp   c                                           ; $5cab: $b9
	adc  c                                           ; $5cac: $89
	halt                                             ; $5cad: $76
	ld   h, h                                        ; $5cae: $64
	inc  [hl]                                        ; $5caf: $34
	inc  h                                           ; $5cb0: $24
	add  a                                           ; $5cb1: $87
	ld   l, b                                        ; $5cb2: $68
	or   a                                           ; $5cb3: $b7
	ld   a, l                                        ; $5cb4: $7d
	xor  b                                           ; $5cb5: $a8
	sbc  h                                           ; $5cb6: $9c
	res  5, c                                        ; $5cb7: $cb $a9
	xor  d                                           ; $5cb9: $aa
	sbc  b                                           ; $5cba: $98
	sbc  b                                           ; $5cbb: $98
	add  [hl]                                        ; $5cbc: $86
	ld   d, l                                        ; $5cbd: $55
	ld   d, h                                        ; $5cbe: $54
	ld   b, h                                        ; $5cbf: $44
	ld   d, l                                        ; $5cc0: $55
	ld   d, a                                        ; $5cc1: $57
	sub  a                                           ; $5cc2: $97
	sbc  d                                           ; $5cc3: $9a
	xor  h                                           ; $5cc4: $ac
	xor  c                                           ; $5cc5: $a9
	cp   h                                           ; $5cc6: $bc
	adc  d                                           ; $5cc7: $8a
	jp   z, Jump_0c7_79ba                            ; $5cc8: $ca $ba $79

	sub  [hl]                                        ; $5ccb: $96
	ld   h, a                                        ; $5ccc: $67
	ld   d, [hl]                                     ; $5ccd: $56
	ld   b, d                                        ; $5cce: $42
	ld   b, l                                        ; $5ccf: $45
	ld   d, l                                        ; $5cd0: $55
	ld   a, c                                        ; $5cd1: $79
	add  a                                           ; $5cd2: $87
	xor  d                                           ; $5cd3: $aa
	adc  h                                           ; $5cd4: $8c
	cp   b                                           ; $5cd5: $b8
	cp   e                                           ; $5cd6: $bb
	xor  d                                           ; $5cd7: $aa
	xor  e                                           ; $5cd8: $ab
	or   a                                           ; $5cd9: $b7
	sbc  d                                           ; $5cda: $9a
	halt                                             ; $5cdb: $76
	ld   h, [hl]                                     ; $5cdc: $66
	ld   h, [hl]                                     ; $5cdd: $66
	inc  [hl]                                        ; $5cde: $34
	ld   h, l                                        ; $5cdf: $65
	ld   d, l                                        ; $5ce0: $55
	ld   a, c                                        ; $5ce1: $79
	adc  c                                           ; $5ce2: $89
	xor  d                                           ; $5ce3: $aa
	sbc  e                                           ; $5ce4: $9b
	cp   c                                           ; $5ce5: $b9
	cp   e                                           ; $5ce6: $bb
	xor  d                                           ; $5ce7: $aa
	xor  c                                           ; $5ce8: $a9
	cp   d                                           ; $5ce9: $ba
	adc  c                                           ; $5cea: $89
	halt                                             ; $5ceb: $76
	ld   h, a                                        ; $5cec: $67
	ld   d, h                                        ; $5ced: $54
	ld   d, h                                        ; $5cee: $54
	ld   b, l                                        ; $5cef: $45
	ld   h, a                                        ; $5cf0: $67
	ld   a, b                                        ; $5cf1: $78
	sbc  c                                           ; $5cf2: $99
	sbc  c                                           ; $5cf3: $99
	xor  e                                           ; $5cf4: $ab
	xor  d                                           ; $5cf5: $aa
	res  5, e                                        ; $5cf6: $cb $ab
	sbc  d                                           ; $5cf8: $9a
	sbc  d                                           ; $5cf9: $9a
	sbc  b                                           ; $5cfa: $98
	add  [hl]                                        ; $5cfb: $86
	halt                                             ; $5cfc: $76
	ld   d, h                                        ; $5cfd: $54
	ld   b, h                                        ; $5cfe: $44
	ld   b, l                                        ; $5cff: $45
	ld   h, a                                        ; $5d00: $67
	ld   [hl], a                                     ; $5d01: $77
	sbc  c                                           ; $5d02: $99
	sbc  b                                           ; $5d03: $98
	xor  d                                           ; $5d04: $aa
	xor  l                                           ; $5d05: $ad
	xor  d                                           ; $5d06: $aa
	cp   d                                           ; $5d07: $ba
	sbc  d                                           ; $5d08: $9a
	xor  d                                           ; $5d09: $aa
	xor  b                                           ; $5d0a: $a8
	adc  b                                           ; $5d0b: $88
	ld   h, [hl]                                     ; $5d0c: $66
	ld   d, l                                        ; $5d0d: $55
	inc  sp                                          ; $5d0e: $33
	ld   d, l                                        ; $5d0f: $55
	ld   d, [hl]                                     ; $5d10: $56
	ld   h, a                                        ; $5d11: $67
	add  [hl]                                        ; $5d12: $86
	xor  d                                           ; $5d13: $aa
	adc  c                                           ; $5d14: $89
	xor  d                                           ; $5d15: $aa
	xor  h                                           ; $5d16: $ac
	cp   e                                           ; $5d17: $bb
	xor  e                                           ; $5d18: $ab
	cp   c                                           ; $5d19: $b9
	sbc  b                                           ; $5d1a: $98
	add  a                                           ; $5d1b: $87
	ld   [hl], a                                     ; $5d1c: $77
	ld   d, l                                        ; $5d1d: $55
	ld   d, l                                        ; $5d1e: $55
	ld   b, h                                        ; $5d1f: $44
	ld   d, [hl]                                     ; $5d20: $56
	ld   d, [hl]                                     ; $5d21: $56
	add  [hl]                                        ; $5d22: $86
	adc  e                                           ; $5d23: $8b
	adc  b                                           ; $5d24: $88
	jp   z, $bb9c                                    ; $5d25: $ca $9c $bb

	xor  e                                           ; $5d28: $ab
	sbc  d                                           ; $5d29: $9a
	xor  b                                           ; $5d2a: $a8
	sbc  b                                           ; $5d2b: $98
	ld   h, a                                        ; $5d2c: $67
	halt                                             ; $5d2d: $76
	ld   h, l                                        ; $5d2e: $65
	ld   b, h                                        ; $5d2f: $44
	ld   d, l                                        ; $5d30: $55
	ld   b, [hl]                                     ; $5d31: $46
	add  [hl]                                        ; $5d32: $86
	ld   a, c                                        ; $5d33: $79
	adc  b                                           ; $5d34: $88
	xor  b                                           ; $5d35: $a8
	xor  e                                           ; $5d36: $ab
	sbc  e                                           ; $5d37: $9b
	jp   c, $98bc                                    ; $5d38: $da $bc $98

	sbc  b                                           ; $5d3b: $98
	ld   a, c                                        ; $5d3c: $79
	halt                                             ; $5d3d: $76
	ld   [hl], l                                     ; $5d3e: $75
	ld   h, l                                        ; $5d3f: $65
	ld   d, h                                        ; $5d40: $54
	ld   d, [hl]                                     ; $5d41: $56
	ld   d, l                                        ; $5d42: $55
	ld   [hl], a                                     ; $5d43: $77
	ld   l, b                                        ; $5d44: $68
	sub  a                                           ; $5d45: $97
	sbc  d                                           ; $5d46: $9a
	sbc  d                                           ; $5d47: $9a
	cp   d                                           ; $5d48: $ba
	jp   z, $99ba                                    ; $5d49: $ca $ba $99

	sbc  d                                           ; $5d4c: $9a
	adc  b                                           ; $5d4d: $88
	ld   [hl], a                                     ; $5d4e: $77
	ld   h, l                                        ; $5d4f: $65
	ld   h, l                                        ; $5d50: $65
	ld   d, l                                        ; $5d51: $55
	ld   d, l                                        ; $5d52: $55
	ld   d, [hl]                                     ; $5d53: $56
	halt                                             ; $5d54: $76
	ld   a, c                                        ; $5d55: $79
	adc  c                                           ; $5d56: $89
	sbc  d                                           ; $5d57: $9a
	xor  d                                           ; $5d58: $aa
	cp   e                                           ; $5d59: $bb
	cp   d                                           ; $5d5a: $ba
	cp   d                                           ; $5d5b: $ba
	xor  d                                           ; $5d5c: $aa
	sbc  b                                           ; $5d5d: $98
	sbc  b                                           ; $5d5e: $98
	ld   [hl], a                                     ; $5d5f: $77
	ld   h, [hl]                                     ; $5d60: $66
	ld   h, [hl]                                     ; $5d61: $66
	ld   d, l                                        ; $5d62: $55
	ld   d, l                                        ; $5d63: $55
	ld   h, l                                        ; $5d64: $65
	ld   h, a                                        ; $5d65: $67
	ld   a, b                                        ; $5d66: $78
	adc  b                                           ; $5d67: $88
	sbc  c                                           ; $5d68: $99
	xor  e                                           ; $5d69: $ab
	xor  d                                           ; $5d6a: $aa
	xor  d                                           ; $5d6b: $aa
	cp   d                                           ; $5d6c: $ba
	xor  d                                           ; $5d6d: $aa
	xor  c                                           ; $5d6e: $a9
	sbc  b                                           ; $5d6f: $98
	ld   a, b                                        ; $5d70: $78
	ld   h, a                                        ; $5d71: $67
	halt                                             ; $5d72: $76
	ld   d, l                                        ; $5d73: $55
	ld   d, l                                        ; $5d74: $55
	ld   h, [hl]                                     ; $5d75: $66
	ld   h, a                                        ; $5d76: $67
	ld   [hl], a                                     ; $5d77: $77
	adc  c                                           ; $5d78: $89
	adc  c                                           ; $5d79: $89
	sbc  d                                           ; $5d7a: $9a
	xor  d                                           ; $5d7b: $aa
	xor  d                                           ; $5d7c: $aa
	cp   d                                           ; $5d7d: $ba
	xor  d                                           ; $5d7e: $aa
	sbc  d                                           ; $5d7f: $9a
	adc  b                                           ; $5d80: $88
	adc  b                                           ; $5d81: $88
	add  a                                           ; $5d82: $87
	halt                                             ; $5d83: $76
	ld   h, [hl]                                     ; $5d84: $66
	ld   h, l                                        ; $5d85: $65
	ld   d, [hl]                                     ; $5d86: $56
	ld   h, [hl]                                     ; $5d87: $66
	ld   h, a                                        ; $5d88: $67
	ld   [hl], a                                     ; $5d89: $77
	adc  c                                           ; $5d8a: $89
	sbc  c                                           ; $5d8b: $99
	xor  d                                           ; $5d8c: $aa
	xor  d                                           ; $5d8d: $aa
	xor  e                                           ; $5d8e: $ab
	cp   d                                           ; $5d8f: $ba
	xor  d                                           ; $5d90: $aa
	sbc  c                                           ; $5d91: $99
	xor  b                                           ; $5d92: $a8
	adc  b                                           ; $5d93: $88
	ld   [hl], a                                     ; $5d94: $77
	halt                                             ; $5d95: $76
	ld   d, [hl]                                     ; $5d96: $56
	ld   h, l                                        ; $5d97: $65
	ld   h, [hl]                                     ; $5d98: $66
	ld   h, a                                        ; $5d99: $67
	ld   h, a                                        ; $5d9a: $67
	add  a                                           ; $5d9b: $87
	ld   a, c                                        ; $5d9c: $79
	sbc  c                                           ; $5d9d: $99
	sbc  e                                           ; $5d9e: $9b
	xor  d                                           ; $5d9f: $aa
	cp   d                                           ; $5da0: $ba
	sbc  d                                           ; $5da1: $9a
	xor  c                                           ; $5da2: $a9
	xor  c                                           ; $5da3: $a9
	adc  b                                           ; $5da4: $88
	add  [hl]                                        ; $5da5: $86
	halt                                             ; $5da6: $76
	ld   h, a                                        ; $5da7: $67
	ld   d, l                                        ; $5da8: $55
	ld   h, l                                        ; $5da9: $65
	ld   d, [hl]                                     ; $5daa: $56
	ld   h, [hl]                                     ; $5dab: $66
	ld   h, a                                        ; $5dac: $67
	ld   [hl], a                                     ; $5dad: $77
	adc  c                                           ; $5dae: $89
	sbc  c                                           ; $5daf: $99
	xor  d                                           ; $5db0: $aa
	xor  e                                           ; $5db1: $ab
	xor  e                                           ; $5db2: $ab
	sbc  d                                           ; $5db3: $9a
	xor  c                                           ; $5db4: $a9
	sbc  d                                           ; $5db5: $9a
	adc  b                                           ; $5db6: $88
	add  a                                           ; $5db7: $87
	ld   [hl], a                                     ; $5db8: $77
	ld   h, [hl]                                     ; $5db9: $66
	ld   h, l                                        ; $5dba: $65
	ld   d, [hl]                                     ; $5dbb: $56
	ld   d, l                                        ; $5dbc: $55
	ld   h, [hl]                                     ; $5dbd: $66
	ld   h, a                                        ; $5dbe: $67
	add  a                                           ; $5dbf: $87
	adc  b                                           ; $5dc0: $88
	sbc  c                                           ; $5dc1: $99
	xor  d                                           ; $5dc2: $aa
	cp   e                                           ; $5dc3: $bb
	cp   e                                           ; $5dc4: $bb
	cp   e                                           ; $5dc5: $bb
	xor  c                                           ; $5dc6: $a9
	xor  c                                           ; $5dc7: $a9
	sbc  c                                           ; $5dc8: $99
	adc  b                                           ; $5dc9: $88
	ld   [hl], a                                     ; $5dca: $77
	halt                                             ; $5dcb: $76
	ld   h, [hl]                                     ; $5dcc: $66
	ld   h, [hl]                                     ; $5dcd: $66
	ld   h, [hl]                                     ; $5dce: $66
	ld   h, [hl]                                     ; $5dcf: $66
	ld   [hl], a                                     ; $5dd0: $77
	ld   [hl], a                                     ; $5dd1: $77
	adc  b                                           ; $5dd2: $88
	sbc  c                                           ; $5dd3: $99
	sbc  c                                           ; $5dd4: $99
	xor  d                                           ; $5dd5: $aa
	xor  e                                           ; $5dd6: $ab
	xor  d                                           ; $5dd7: $aa
	xor  c                                           ; $5dd8: $a9
	sbc  c                                           ; $5dd9: $99
	sbc  c                                           ; $5dda: $99
	sbc  b                                           ; $5ddb: $98
	add  a                                           ; $5ddc: $87
	ld   [hl], a                                     ; $5ddd: $77
	ld   [hl], a                                     ; $5dde: $77
	ld   h, [hl]                                     ; $5ddf: $66
	ld   h, [hl]                                     ; $5de0: $66
	ld   h, [hl]                                     ; $5de1: $66
	ld   h, [hl]                                     ; $5de2: $66
	ld   [hl], a                                     ; $5de3: $77
	ld   [hl], a                                     ; $5de4: $77
	adc  c                                           ; $5de5: $89
	sbc  c                                           ; $5de6: $99
	sbc  d                                           ; $5de7: $9a
	sbc  c                                           ; $5de8: $99
	sbc  d                                           ; $5de9: $9a
	sbc  c                                           ; $5dea: $99
	xor  c                                           ; $5deb: $a9
	sbc  c                                           ; $5dec: $99
	adc  b                                           ; $5ded: $88
	adc  c                                           ; $5dee: $89
	adc  b                                           ; $5def: $88
	ld   [hl], a                                     ; $5df0: $77
	ld   [hl], a                                     ; $5df1: $77
	halt                                             ; $5df2: $76
	ld   h, [hl]                                     ; $5df3: $66
	ld   h, [hl]                                     ; $5df4: $66
	ld   h, [hl]                                     ; $5df5: $66
	ld   [hl], a                                     ; $5df6: $77
	ld   [hl], a                                     ; $5df7: $77
	ld   a, b                                        ; $5df8: $78
	adc  b                                           ; $5df9: $88
	sbc  c                                           ; $5dfa: $99
	xor  d                                           ; $5dfb: $aa
	sbc  c                                           ; $5dfc: $99
	sbc  d                                           ; $5dfd: $9a
	xor  d                                           ; $5dfe: $aa
	sbc  d                                           ; $5dff: $9a
	sbc  c                                           ; $5e00: $99
	adc  b                                           ; $5e01: $88
	adc  b                                           ; $5e02: $88
	add  a                                           ; $5e03: $87
	ld   [hl], a                                     ; $5e04: $77
	ld   h, [hl]                                     ; $5e05: $66
	ld   h, [hl]                                     ; $5e06: $66
	ld   h, [hl]                                     ; $5e07: $66
	ld   h, [hl]                                     ; $5e08: $66
	ld   h, [hl]                                     ; $5e09: $66
	ld   [hl], a                                     ; $5e0a: $77
	ld   [hl], a                                     ; $5e0b: $77
	adc  b                                           ; $5e0c: $88
	adc  c                                           ; $5e0d: $89
	sbc  d                                           ; $5e0e: $9a
	sbc  c                                           ; $5e0f: $99
	xor  d                                           ; $5e10: $aa
	xor  d                                           ; $5e11: $aa
	xor  c                                           ; $5e12: $a9
	xor  c                                           ; $5e13: $a9
	sbc  b                                           ; $5e14: $98
	sbc  b                                           ; $5e15: $98
	add  a                                           ; $5e16: $87
	ld   [hl], a                                     ; $5e17: $77
	ld   h, [hl]                                     ; $5e18: $66
	ld   h, [hl]                                     ; $5e19: $66
	ld   h, [hl]                                     ; $5e1a: $66
	ld   h, [hl]                                     ; $5e1b: $66
	ld   h, [hl]                                     ; $5e1c: $66
	ld   h, a                                        ; $5e1d: $67
	ld   [hl], a                                     ; $5e1e: $77
	ld   a, b                                        ; $5e1f: $78
	sbc  b                                           ; $5e20: $98
	sbc  d                                           ; $5e21: $9a
	sbc  d                                           ; $5e22: $9a
	xor  d                                           ; $5e23: $aa
	xor  d                                           ; $5e24: $aa
	xor  d                                           ; $5e25: $aa
	sbc  d                                           ; $5e26: $9a
	sbc  c                                           ; $5e27: $99
	adc  b                                           ; $5e28: $88
	add  a                                           ; $5e29: $87
	ld   [hl], a                                     ; $5e2a: $77
	ld   h, [hl]                                     ; $5e2b: $66
	ld   h, [hl]                                     ; $5e2c: $66
	ld   h, [hl]                                     ; $5e2d: $66
	ld   h, [hl]                                     ; $5e2e: $66
	ld   h, [hl]                                     ; $5e2f: $66
	ld   h, a                                        ; $5e30: $67
	ld   [hl], a                                     ; $5e31: $77
	ld   a, b                                        ; $5e32: $78
	adc  c                                           ; $5e33: $89
	adc  c                                           ; $5e34: $89
	xor  c                                           ; $5e35: $a9
	sbc  d                                           ; $5e36: $9a
	xor  d                                           ; $5e37: $aa
	xor  d                                           ; $5e38: $aa
	sbc  c                                           ; $5e39: $99
	xor  c                                           ; $5e3a: $a9
	sbc  b                                           ; $5e3b: $98
	sbc  b                                           ; $5e3c: $98
	ld   [hl], a                                     ; $5e3d: $77
	ld   [hl], a                                     ; $5e3e: $77
	ld   h, [hl]                                     ; $5e3f: $66
	ld   h, [hl]                                     ; $5e40: $66
	ld   h, [hl]                                     ; $5e41: $66
	ld   h, [hl]                                     ; $5e42: $66
	ld   h, [hl]                                     ; $5e43: $66
	ld   h, a                                        ; $5e44: $67
	ld   [hl], a                                     ; $5e45: $77
	adc  b                                           ; $5e46: $88
	sbc  c                                           ; $5e47: $99
	xor  d                                           ; $5e48: $aa
	sbc  d                                           ; $5e49: $9a
	xor  d                                           ; $5e4a: $aa
	xor  d                                           ; $5e4b: $aa
	xor  d                                           ; $5e4c: $aa
	xor  c                                           ; $5e4d: $a9
	sbc  c                                           ; $5e4e: $99
	adc  c                                           ; $5e4f: $89
	add  a                                           ; $5e50: $87
	ld   [hl], a                                     ; $5e51: $77
	halt                                             ; $5e52: $76
	ld   h, [hl]                                     ; $5e53: $66
	ld   h, [hl]                                     ; $5e54: $66
	ld   h, [hl]                                     ; $5e55: $66
	ld   h, [hl]                                     ; $5e56: $66
	ld   h, [hl]                                     ; $5e57: $66
	ld   h, a                                        ; $5e58: $67
	ld   [hl], a                                     ; $5e59: $77
	adc  c                                           ; $5e5a: $89
	adc  c                                           ; $5e5b: $89
	xor  c                                           ; $5e5c: $a9
	xor  d                                           ; $5e5d: $aa
	xor  d                                           ; $5e5e: $aa
	xor  d                                           ; $5e5f: $aa
	xor  d                                           ; $5e60: $aa
	xor  c                                           ; $5e61: $a9
	xor  c                                           ; $5e62: $a9
	sbc  c                                           ; $5e63: $99
	add  a                                           ; $5e64: $87
	ld   [hl], a                                     ; $5e65: $77
	ld   h, [hl]                                     ; $5e66: $66
	ld   h, [hl]                                     ; $5e67: $66
	ld   h, l                                        ; $5e68: $65
	ld   d, l                                        ; $5e69: $55
	ld   d, l                                        ; $5e6a: $55
	ld   h, [hl]                                     ; $5e6b: $66
	ld   h, a                                        ; $5e6c: $67
	ld   a, b                                        ; $5e6d: $78
	adc  b                                           ; $5e6e: $88
	sbc  d                                           ; $5e6f: $9a
	xor  d                                           ; $5e70: $aa
	cp   e                                           ; $5e71: $bb
	xor  d                                           ; $5e72: $aa
	cp   e                                           ; $5e73: $bb
	cp   d                                           ; $5e74: $ba
	xor  c                                           ; $5e75: $a9
	sbc  c                                           ; $5e76: $99
	sbc  b                                           ; $5e77: $98
	ld   [hl], a                                     ; $5e78: $77
	halt                                             ; $5e79: $76
	ld   h, [hl]                                     ; $5e7a: $66
	ld   d, l                                        ; $5e7b: $55
	ld   d, l                                        ; $5e7c: $55
	ld   d, l                                        ; $5e7d: $55
	ld   d, [hl]                                     ; $5e7e: $56
	ld   h, [hl]                                     ; $5e7f: $66
	ld   [hl], a                                     ; $5e80: $77
	adc  b                                           ; $5e81: $88
	adc  c                                           ; $5e82: $89
	sbc  d                                           ; $5e83: $9a
	xor  e                                           ; $5e84: $ab
	cp   d                                           ; $5e85: $ba
	xor  d                                           ; $5e86: $aa
	xor  e                                           ; $5e87: $ab
	xor  d                                           ; $5e88: $aa
	sbc  c                                           ; $5e89: $99
	adc  c                                           ; $5e8a: $89
	add  a                                           ; $5e8b: $87
	ld   [hl], a                                     ; $5e8c: $77
	ld   h, [hl]                                     ; $5e8d: $66
	ld   h, l                                        ; $5e8e: $65
	ld   d, l                                        ; $5e8f: $55
	ld   d, l                                        ; $5e90: $55
	ld   d, l                                        ; $5e91: $55
	ld   h, [hl]                                     ; $5e92: $66
	ld   h, [hl]                                     ; $5e93: $66
	ld   [hl], a                                     ; $5e94: $77
	adc  c                                           ; $5e95: $89
	sbc  d                                           ; $5e96: $9a
	sbc  d                                           ; $5e97: $9a
	cp   e                                           ; $5e98: $bb
	xor  e                                           ; $5e99: $ab
	cp   d                                           ; $5e9a: $ba
	xor  e                                           ; $5e9b: $ab
	xor  d                                           ; $5e9c: $aa
	xor  c                                           ; $5e9d: $a9
	adc  b                                           ; $5e9e: $88
	add  a                                           ; $5e9f: $87
	halt                                             ; $5ea0: $76
	ld   h, [hl]                                     ; $5ea1: $66
	ld   d, l                                        ; $5ea2: $55
	ld   d, l                                        ; $5ea3: $55
	ld   d, l                                        ; $5ea4: $55
	ld   d, [hl]                                     ; $5ea5: $56
	ld   h, [hl]                                     ; $5ea6: $66
	ld   h, a                                        ; $5ea7: $67
	ld   a, b                                        ; $5ea8: $78
	adc  c                                           ; $5ea9: $89
	xor  d                                           ; $5eaa: $aa
	xor  e                                           ; $5eab: $ab
	xor  e                                           ; $5eac: $ab
	cp   e                                           ; $5ead: $bb
	xor  d                                           ; $5eae: $aa
	xor  e                                           ; $5eaf: $ab
	xor  d                                           ; $5eb0: $aa
	sbc  b                                           ; $5eb1: $98
	add  a                                           ; $5eb2: $87
	ld   [hl], a                                     ; $5eb3: $77
	ld   h, [hl]                                     ; $5eb4: $66
	ld   h, l                                        ; $5eb5: $65
	ld   d, l                                        ; $5eb6: $55
	ld   d, l                                        ; $5eb7: $55
	ld   d, l                                        ; $5eb8: $55
	ld   d, [hl]                                     ; $5eb9: $56
	ld   h, [hl]                                     ; $5eba: $66
	ld   [hl], a                                     ; $5ebb: $77
	adc  c                                           ; $5ebc: $89
	sbc  d                                           ; $5ebd: $9a
	xor  d                                           ; $5ebe: $aa
	xor  d                                           ; $5ebf: $aa
	cp   e                                           ; $5ec0: $bb
	cp   e                                           ; $5ec1: $bb
	cp   d                                           ; $5ec2: $ba
	cp   d                                           ; $5ec3: $ba
	sbc  c                                           ; $5ec4: $99
	sbc  c                                           ; $5ec5: $99
	add  a                                           ; $5ec6: $87
	halt                                             ; $5ec7: $76
	ld   h, l                                        ; $5ec8: $65
	ld   d, l                                        ; $5ec9: $55
	ld   d, l                                        ; $5eca: $55
	ld   d, l                                        ; $5ecb: $55
	ld   d, l                                        ; $5ecc: $55
	ld   d, [hl]                                     ; $5ecd: $56
	ld   h, a                                        ; $5ece: $67
	ld   a, b                                        ; $5ecf: $78
	sbc  c                                           ; $5ed0: $99
	xor  d                                           ; $5ed1: $aa
	xor  d                                           ; $5ed2: $aa
	cp   e                                           ; $5ed3: $bb
	cp   e                                           ; $5ed4: $bb
	cp   e                                           ; $5ed5: $bb
	xor  e                                           ; $5ed6: $ab
	xor  c                                           ; $5ed7: $a9
	sbc  b                                           ; $5ed8: $98
	sbc  b                                           ; $5ed9: $98
	ld   [hl], a                                     ; $5eda: $77
	ld   h, [hl]                                     ; $5edb: $66
	ld   h, l                                        ; $5edc: $65
	ld   d, l                                        ; $5edd: $55
	ld   d, l                                        ; $5ede: $55
	ld   d, l                                        ; $5edf: $55
	ld   d, l                                        ; $5ee0: $55
	ld   h, [hl]                                     ; $5ee1: $66
	ld   [hl], a                                     ; $5ee2: $77
	adc  c                                           ; $5ee3: $89
	adc  c                                           ; $5ee4: $89
	sbc  d                                           ; $5ee5: $9a
	cp   d                                           ; $5ee6: $ba
	xor  e                                           ; $5ee7: $ab
	cp   e                                           ; $5ee8: $bb
	xor  d                                           ; $5ee9: $aa
	cp   d                                           ; $5eea: $ba
	sbc  d                                           ; $5eeb: $9a
	sbc  c                                           ; $5eec: $99
	add  a                                           ; $5eed: $87
	halt                                             ; $5eee: $76
	ld   h, [hl]                                     ; $5eef: $66
	ld   d, l                                        ; $5ef0: $55
	ld   d, l                                        ; $5ef1: $55
	ld   d, l                                        ; $5ef2: $55
	ld   d, l                                        ; $5ef3: $55
	ld   d, [hl]                                     ; $5ef4: $56
	ld   h, [hl]                                     ; $5ef5: $66
	ld   [hl], a                                     ; $5ef6: $77
	adc  b                                           ; $5ef7: $88
	sbc  c                                           ; $5ef8: $99
	xor  e                                           ; $5ef9: $ab
	xor  e                                           ; $5efa: $ab
	xor  e                                           ; $5efb: $ab
	cp   e                                           ; $5efc: $bb
	xor  e                                           ; $5efd: $ab
	xor  c                                           ; $5efe: $a9
	xor  b                                           ; $5eff: $a8
	sbc  b                                           ; $5f00: $98
	ld   [hl], a                                     ; $5f01: $77
	ld   h, [hl]                                     ; $5f02: $66
	ld   h, l                                        ; $5f03: $65
	ld   d, l                                        ; $5f04: $55
	ld   d, l                                        ; $5f05: $55
	ld   d, l                                        ; $5f06: $55
	ld   d, l                                        ; $5f07: $55
	ld   h, [hl]                                     ; $5f08: $66
	ld   [hl], a                                     ; $5f09: $77
	adc  b                                           ; $5f0a: $88
	sbc  d                                           ; $5f0b: $9a
	sbc  d                                           ; $5f0c: $9a
	cp   d                                           ; $5f0d: $ba
	xor  e                                           ; $5f0e: $ab
	cp   e                                           ; $5f0f: $bb
	cp   d                                           ; $5f10: $ba
	cp   d                                           ; $5f11: $ba
	sbc  c                                           ; $5f12: $99
	sbc  c                                           ; $5f13: $99
	add  a                                           ; $5f14: $87
	ld   [hl], a                                     ; $5f15: $77
	ld   h, [hl]                                     ; $5f16: $66
	ld   d, l                                        ; $5f17: $55
	ld   d, l                                        ; $5f18: $55
	ld   d, l                                        ; $5f19: $55
	ld   d, l                                        ; $5f1a: $55
	ld   d, [hl]                                     ; $5f1b: $56
	ld   h, a                                        ; $5f1c: $67
	ld   a, b                                        ; $5f1d: $78
	sbc  c                                           ; $5f1e: $99
	xor  d                                           ; $5f1f: $aa
	cp   e                                           ; $5f20: $bb
	cp   e                                           ; $5f21: $bb
	cp   l                                           ; $5f22: $bd
	jp   z, $ba9a                                    ; $5f23: $ca $9a $ba

	adc  b                                           ; $5f26: $88
	add  a                                           ; $5f27: $87
	ld   b, l                                        ; $5f28: $45
	ld   h, [hl]                                     ; $5f29: $66
	ld   d, h                                        ; $5f2a: $54
	ld   d, [hl]                                     ; $5f2b: $56
	ld   h, l                                        ; $5f2c: $65
	ld   d, [hl]                                     ; $5f2d: $56
	ld   h, a                                        ; $5f2e: $67
	ld   h, a                                        ; $5f2f: $67
	adc  c                                           ; $5f30: $89
	sbc  c                                           ; $5f31: $99
	xor  d                                           ; $5f32: $aa
	cp   d                                           ; $5f33: $ba
	cp   h                                           ; $5f34: $bc
	call z, $cccc                                    ; $5f35: $cc $cc $cc
	xor  c                                           ; $5f38: $a9
	add  [hl]                                        ; $5f39: $86
	ld   h, l                                        ; $5f3a: $65
	ld   b, e                                        ; $5f3b: $43
	ld   hl, $2312                                   ; $5f3c: $21 $12 $23
	ld   b, [hl]                                     ; $5f3f: $46
	ld   h, a                                        ; $5f40: $67
	sbc  c                                           ; $5f41: $99
	xor  e                                           ; $5f42: $ab
	call z, $ddef                                    ; $5f43: $cc $ef $dd
	call $99ca                                       ; $5f46: $cd $ca $99
	halt                                             ; $5f49: $76
	ld   d, l                                        ; $5f4a: $55
	ld   b, d                                        ; $5f4b: $42
	ld   hl, $1222                                   ; $5f4c: $21 $22 $12
	ld   b, l                                        ; $5f4f: $45
	ld   h, a                                        ; $5f50: $67
	sbc  d                                           ; $5f51: $9a
	xor  d                                           ; $5f52: $aa
	call $efdd                                       ; $5f53: $cd $dd $ef
	db   $ed                                         ; $5f56: $ed
	call c, $97a9                                    ; $5f57: $dc $a9 $97
	halt                                             ; $5f5a: $76
	ld   b, e                                        ; $5f5b: $43
	ld   [hl-], a                                    ; $5f5c: $32
	ld   de, $2411                                   ; $5f5d: $11 $11 $24
	ld   d, a                                        ; $5f60: $57
	sbc  c                                           ; $5f61: $99
	cp   e                                           ; $5f62: $bb
	cp   h                                           ; $5f63: $bc
	db   $dd                                         ; $5f64: $dd
	sbc  $ff                                         ; $5f65: $de $ff
	call c, $88cb                                    ; $5f67: $dc $cb $88
	halt                                             ; $5f6a: $76
	ld   d, e                                        ; $5f6b: $53
	inc  sp                                          ; $5f6c: $33
	ld   de, $1311                                   ; $5f6d: $11 $11 $13
	ld   d, [hl]                                     ; $5f70: $56
	adc  c                                           ; $5f71: $89
	xor  e                                           ; $5f72: $ab
	call z, $dfdd                                    ; $5f73: $cc $dd $df
	xor  $ed                                         ; $5f76: $ee $ed
	jp   z, Jump_0c7_76a8                            ; $5f78: $ca $a8 $76

	ld   d, h                                        ; $5f7b: $54
	ld   [hl-], a                                    ; $5f7c: $32
	ld   de, $1411                                   ; $5f7d: $11 $11 $14
	ld   d, [hl]                                     ; $5f80: $56
	sbc  d                                           ; $5f81: $9a
	xor  e                                           ; $5f82: $ab
	db   $db                                         ; $5f83: $db
	adc  $de                                         ; $5f84: $ce $de
	cp   $dd                                         ; $5f86: $fe $dd
	cp   e                                           ; $5f88: $bb
	and  a                                           ; $5f89: $a7
	ld   [hl], a                                     ; $5f8a: $77
	ld   b, e                                        ; $5f8b: $43
	ld   [hl-], a                                    ; $5f8c: $32
	ld   de, $2311                                   ; $5f8d: $11 $11 $23
	ld   e, c                                        ; $5f90: $59
	xor  c                                           ; $5f91: $a9
	xor  e                                           ; $5f92: $ab
	call z, $fece                                    ; $5f93: $cc $ce $fe
	sbc  $dc                                         ; $5f96: $de $dc
	xor  c                                           ; $5f98: $a9
	sbc  b                                           ; $5f99: $98
	ld   h, l                                        ; $5f9a: $65
	ld   d, e                                        ; $5f9b: $53
	ld   hl, $1111                                   ; $5f9c: $21 $11 $11
	ld   [hl], $79                                   ; $5f9f: $36 $79
	cp   e                                           ; $5fa1: $bb
	db   $db                                         ; $5fa2: $db
	call $edcd                                       ; $5fa3: $cd $cd $ed
	sbc  $ba                                         ; $5fa6: $de $ba
	xor  c                                           ; $5fa8: $a9
	halt                                             ; $5fa9: $76
	ld   d, l                                        ; $5faa: $55
	ld   [hl-], a                                    ; $5fab: $32
	ld   hl, $1311                                   ; $5fac: $21 $11 $13
	ld   l, b                                        ; $5faf: $68
	xor  e                                           ; $5fb0: $ab
	xor  h                                           ; $5fb1: $ac
	jp   z, $decd                                    ; $5fb2: $ca $cd $de

	db   $ed                                         ; $5fb5: $ed
	db   $dd                                         ; $5fb6: $dd
	sbc  b                                           ; $5fb7: $98
	xor  b                                           ; $5fb8: $a8
	ld   h, l                                        ; $5fb9: $65
	ld   b, h                                        ; $5fba: $44
	ld   sp, $1111                                   ; $5fbb: $31 $11 $11
	scf                                              ; $5fbe: $37
	ld   a, d                                        ; $5fbf: $7a
	sbc  d                                           ; $5fc0: $9a
	db   $eb                                         ; $5fc1: $eb
	call $dddd                                       ; $5fc2: $cd $dd $dd
	db   $ed                                         ; $5fc5: $ed
	cp   c                                           ; $5fc6: $b9
	sbc  c                                           ; $5fc7: $99
	ld   h, l                                        ; $5fc8: $65
	ld   d, h                                        ; $5fc9: $54
	ld   sp, $1111                                   ; $5fca: $31 $11 $11
	dec  h                                           ; $5fcd: $25
	ld   a, b                                        ; $5fce: $78
	sbc  h                                           ; $5fcf: $9c
	db   $dd                                         ; $5fd0: $dd
	cp   h                                           ; $5fd1: $bc
	db   $dd                                         ; $5fd2: $dd
	sbc  $ee                                         ; $5fd3: $de $ee
	jp   z, Jump_0c7_6499                            ; $5fd5: $ca $99 $64

	ld   d, h                                        ; $5fd8: $54
	ld   b, d                                        ; $5fd9: $42
	ld   de, $1411                                   ; $5fda: $11 $11 $14
	ld   l, c                                        ; $5fdd: $69
	cp   d                                           ; $5fde: $ba
	cp   a                                           ; $5fdf: $bf
	cp   c                                           ; $5fe0: $b9
	db   $dd                                         ; $5fe1: $dd
	call c, $bbfe                                    ; $5fe2: $dc $fe $bb
	xor  c                                           ; $5fe5: $a9
	sub  l                                           ; $5fe6: $95
	inc  [hl]                                        ; $5fe7: $34
	ld   b, h                                        ; $5fe8: $44
	ld   hl, $1411                                   ; $5fe9: $21 $11 $14
	ld   l, d                                        ; $5fec: $6a
	cp   d                                           ; $5fed: $ba
	cp   h                                           ; $5fee: $bc
	db   $db                                         ; $5fef: $db
	cp   d                                           ; $5ff0: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ff1: $cf
	db   $ec                                         ; $5ff2: $ec
	res  0, a                                        ; $5ff3: $cb $87
	ld   h, l                                        ; $5ff5: $65
	ld   h, e                                        ; $5ff6: $63
	inc  [hl]                                        ; $5ff7: $34
	ld   hl, $4511                                   ; $5ff8: $21 $11 $45
	ld   e, e                                        ; $5ffb: $5b
	ret                                              ; $5ffc: $c9


	cp   [hl]                                        ; $5ffd: $be
	cp   d                                           ; $5ffe: $ba
	call $dfdd                                       ; $5fff: $cd $dd $df
	rst  ToBoot                                         ; $6002: $c7
	sbc  b                                           ; $6003: $98
	ld   d, h                                        ; $6004: $54
	inc  [hl]                                        ; $6005: $34
	ld   h, d                                        ; $6006: $62
	inc  de                                          ; $6007: $13
	ld   [hl+], a                                    ; $6008: $22
	ld   b, a                                        ; $6009: $47
	ld   l, c                                        ; $600a: $69
	cp   e                                           ; $600b: $bb
	call $eb8c                                       ; $600c: $cd $8c $eb
	rst  JumpTable                                         ; $600f: $df
	ei                                               ; $6010: $fb
	xor  c                                           ; $6011: $a9
	add  l                                           ; $6012: $85
	inc  hl                                          ; $6013: $23
	ld   h, l                                        ; $6014: $65
	ld   [de], a                                     ; $6015: $12
	ld   [de], a                                     ; $6016: $12
	inc  [hl]                                        ; $6017: $34
	ld   [hl], a                                     ; $6018: $77
	adc  e                                           ; $6019: $8b
	cp   e                                           ; $601a: $bb
	cp   d                                           ; $601b: $ba
	db   $db                                         ; $601c: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $601d: $cf
	cp   $bb                                         ; $601e: $fe $bb
	sub  a                                           ; $6020: $97
	ld   sp, $3265                                   ; $6021: $31 $65 $32
	inc  de                                          ; $6024: $13
	ld   de, $9869                                   ; $6025: $11 $69 $98
	xor  l                                           ; $6028: $ad
	jp   c, $ccbc                                    ; $6029: $da $bc $cc

	rst  $38                                         ; $602c: $ff
	ld   [$62a9], a                                  ; $602d: $ea $a9 $62
	dec  h                                           ; $6030: $25
	ld   b, e                                        ; $6031: $43
	ld   de, $4545                                   ; $6032: $11 $45 $45
	adc  b                                           ; $6035: $88
	xor  l                                           ; $6036: $ad
	set  3, l                                        ; $6037: $cb $dd
	set  3, a                                        ; $6039: $cb $df
	reti                                             ; $603b: $d9


	or   a                                           ; $603c: $b7
	ld   h, e                                        ; $603d: $63
	dec  d                                           ; $603e: $15
	ld   d, d                                        ; $603f: $52
	ld   de, $7635                                   ; $6040: $11 $35 $76
	ld   l, b                                        ; $6043: $68
	xor  h                                           ; $6044: $ac
	cp   e                                           ; $6045: $bb
	rst  $28                                         ; $6046: $ef
	cp   d                                           ; $6047: $ba
	rst  $28                                         ; $6048: $ef
	ret  c                                           ; $6049: $d8

	adc  c                                           ; $604a: $89
	ld   sp, $5235                                   ; $604b: $31 $35 $52
	ld   [bc], a                                     ; $604e: $02
	scf                                              ; $604f: $37
	ld   d, e                                        ; $6050: $53
	sbc  l                                           ; $6051: $9d
	cp   h                                           ; $6052: $bc
	xor  d                                           ; $6053: $aa
	db   $ed                                         ; $6054: $ed
	call $c9fd                                       ; $6055: $cd $fd $c9
	ld   d, l                                        ; $6058: $55
	ld   b, e                                        ; $6059: $43
	inc  h                                           ; $605a: $24
	ld   b, e                                        ; $605b: $43
	ld   de, $4468                                   ; $605c: $11 $68 $44
	xor  h                                           ; $605f: $ac
	cp   e                                           ; $6060: $bb
	adc  $dc                                         ; $6061: $ce $dc
	call c, $75ff                                    ; $6063: $dc $ff $75
	ld   d, h                                        ; $6066: $54
	inc  sp                                          ; $6067: $33
	ld   b, h                                        ; $6068: $44
	ld   sp, $5747                                   ; $6069: $31 $47 $57
	ld   l, b                                        ; $606c: $68
	sbc  d                                           ; $606d: $9a
	cp   [hl]                                        ; $606e: $be
	call c, $cdfe                                    ; $606f: $dc $fe $cd
	cp   b                                           ; $6072: $b8
	inc  sp                                          ; $6073: $33
	ld   b, l                                        ; $6074: $45
	inc  hl                                          ; $6075: $23
	ld   b, d                                        ; $6076: $42
	inc  h                                           ; $6077: $24
	ld   l, c                                        ; $6078: $69
	ld   [hl], l                                     ; $6079: $75
	xor  d                                           ; $607a: $aa
	call c, $daaf                                    ; $607b: $dc $af $da
	rst  $38                                         ; $607e: $ff
	ret  c                                           ; $607f: $d8

	inc  h                                           ; $6080: $24
	ld   [hl], h                                     ; $6081: $74
	inc  sp                                          ; $6082: $33
	ld   b, h                                        ; $6083: $44
	ld   b, [hl]                                     ; $6084: $46
	ld   h, h                                        ; $6085: $64
	ld   e, c                                        ; $6086: $59
	cp   e                                           ; $6087: $bb
	cp   e                                           ; $6088: $bb
	cp   h                                           ; $6089: $bc
	rst  $38                                         ; $608a: $ff
	rst  $10                                         ; $608b: $d7
	cp   c                                           ; $608c: $b9
	inc  de                                          ; $608d: $13
	sub  l                                           ; $608e: $95
	ld   d, e                                        ; $608f: $53
	inc  sp                                          ; $6090: $33
	ld   [hl], $77                                   ; $6091: $36 $77
	add  hl, sp                                      ; $6093: $39
	rst  $10                                         ; $6094: $d7
	rst  JumpTable                                         ; $6095: $df
	xor  d                                           ; $6096: $aa
	db   $fd                                         ; $6097: $fd
	db   $eb                                         ; $6098: $eb
	sub  [hl]                                        ; $6099: $96
	inc  sp                                          ; $609a: $33
	ld   b, [hl]                                     ; $609b: $46
	inc  hl                                          ; $609c: $23
	ld   b, l                                        ; $609d: $45
	ld   [hl], h                                     ; $609e: $74
	ld   e, d                                        ; $609f: $5a
	ld   l, b                                        ; $60a0: $68
	xor  h                                           ; $60a1: $ac
	db   $fd                                         ; $60a2: $fd
	sbc  e                                           ; $60a3: $9b
	ei                                               ; $60a4: $fb
	adc  d                                           ; $60a5: $8a
	ld   d, h                                        ; $60a6: $54
	ld   d, e                                        ; $60a7: $53
	ld   d, [hl]                                     ; $60a8: $56
	ld   [hl+], a                                    ; $60a9: $22
	ld   l, c                                        ; $60aa: $69
	ld   [hl-], a                                    ; $60ab: $32
	ret                                              ; $60ac: $c9


	ld   l, b                                        ; $60ad: $68
	sbc  a                                           ; $60ae: $9f
	ret  c                                           ; $60af: $d8

	rst  $38                                         ; $60b0: $ff
	jp   c, Jump_0c7_5336                            ; $60b1: $da $36 $53

	ld   d, h                                        ; $60b4: $54
	sub  e                                           ; $60b5: $93
	ld   [de], a                                     ; $60b6: $12
	ld   a, h                                        ; $60b7: $7c
	inc  sp                                          ; $60b8: $33
	set  1, d                                        ; $60b9: $cb $ca
	rst  JumpTable                                         ; $60bb: $df
	xor  l                                           ; $60bc: $ad
	ret                                              ; $60bd: $c9


	sub  $15                                         ; $60be: $d6 $15
	ld   h, h                                        ; $60c0: $64
	dec  h                                           ; $60c1: $25
	ld   b, e                                        ; $60c2: $43
	rst  ToBoot                                         ; $60c3: $c7
	inc  d                                           ; $60c4: $14
	adc  a                                           ; $60c5: $8f
	jp   nz, $b5ef                                   ; $60c6: $c2 $ef $b5

	xor  a                                           ; $60c9: $af
	or   c                                           ; $60ca: $b1
	dec  d                                           ; $60cb: $15
	jp   nc, $c51a                                   ; $60cc: $d2 $1a $c5

	ld   d, $d6                                      ; $60cf: $16 $d6
	add  hl, sp                                      ; $60d1: $39
	call z, $dddb                                    ; $60d2: $cc $db $dd
	ld   a, l                                        ; $60d5: $7d
	or   d                                           ; $60d6: $b2
	ld   b, [hl]                                     ; $60d7: $46
	ld   e, b                                        ; $60d8: $58
	ld   d, c                                        ; $60d9: $51
	ld   [hl], a                                     ; $60da: $77
	add  e                                           ; $60db: $83
	dec  sp                                          ; $60dc: $3b
	sbc  b                                           ; $60dd: $98
	sbc  a                                           ; $60de: $9f
	or   $5f                                         ; $60df: $f6 $5f
	db   $db                                         ; $60e1: $db
	ld   d, c                                        ; $60e2: $51
	halt                                             ; $60e3: $76
	ld   d, d                                        ; $60e4: $52
	halt                                             ; $60e5: $76
	ld   e, h                                        ; $60e6: $5c
	ld   [de], a                                     ; $60e7: $12
	db   $e4                                         ; $60e8: $e4
	adc  [hl]                                        ; $60e9: $8e
	adc  a                                           ; $60ea: $8f
	reti                                             ; $60eb: $d9


	call Call_0c7_4592                               ; $60ec: $cd $92 $45
	ld   h, l                                        ; $60ef: $65
	add  hl, de                                      ; $60f0: $19
	pop  hl                                          ; $60f1: $e1
	ld   e, e                                        ; $60f2: $5b
	dec  [hl]                                        ; $60f3: $35
	ld   e, a                                        ; $60f4: $5f
	call nz, $ffda                                   ; $60f5: $c4 $da $ff
	ld   e, b                                        ; $60f8: $58
	sub  h                                           ; $60f9: $94
	ld   sp, $7269                                   ; $60fa: $31 $69 $72
	dec  a                                           ; $60fd: $3d
	add  c                                           ; $60fe: $81
	ld   a, h                                        ; $60ff: $7c
	adc  c                                           ; $6100: $89
	sbc  e                                           ; $6101: $9b
	db   $fd                                         ; $6102: $fd
	xor  c                                           ; $6103: $a9
	add  e                                           ; $6104: $83
	ld   h, a                                        ; $6105: $67
	jr   jr_0c7_616e                                 ; $6106: $18 $66

	ld   [hl], e                                     ; $6108: $73
	or   a                                           ; $6109: $b7
	ld   d, h                                        ; $610a: $54
	ld   e, h                                        ; $610b: $5c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $610c: $cf
	or   $cd                                         ; $610d: $f6 $cd
	ld   a, d                                        ; $610f: $7a
	ld   b, l                                        ; $6110: $45
	ld   d, e                                        ; $6111: $53
	ld   e, b                                        ; $6112: $58
	and  a                                           ; $6113: $a7
	ld   d, c                                        ; $6114: $51
	adc  e                                           ; $6115: $8b
	ld   d, [hl]                                     ; $6116: $56
	ei                                               ; $6117: $fb
	ld   a, [hl]                                     ; $6118: $7e
	cp   h                                           ; $6119: $bc
	add  $38                                         ; $611a: $c6 $38
	ld   h, h                                        ; $611c: $64
	adc  b                                           ; $611d: $88
	ld   [hl], e                                     ; $611e: $73
	ld   a, c                                        ; $611f: $79
	ld   d, a                                        ; $6120: $57
	ld   a, b                                        ; $6121: $78
	sbc  c                                           ; $6122: $99
	db   $ed                                         ; $6123: $ed
	adc  e                                           ; $6124: $8b
	jp   c, Jump_0c7_6634                            ; $6125: $da $34 $66

	ld   b, h                                        ; $6128: $44
	cp   d                                           ; $6129: $ba
	ld   h, [hl]                                     ; $612a: $66
	ld   h, [hl]                                     ; $612b: $66
	ld   h, l                                        ; $612c: $65
	ld   a, a                                        ; $612d: $7f
	call z, $abe6                                    ; $612e: $cc $e6 $ab
	rla                                              ; $6131: $17
	add  h                                           ; $6132: $84
	inc  sp                                          ; $6133: $33
	reti                                             ; $6134: $d9


	ld   c, d                                        ; $6135: $4a
	ld   d, e                                        ; $6136: $53
	ld   c, e                                        ; $6137: $4b
	and  a                                           ; $6138: $a7
	sbc  $e8                                         ; $6139: $de $e8
	ld   e, d                                        ; $613b: $5a
	and  e                                           ; $613c: $a3
	jr   z, jr_0c7_61a7                              ; $613d: $28 $68

	ld   h, l                                        ; $613f: $65
	ret                                              ; $6140: $c9


	ld   d, e                                        ; $6141: $53
	ld   c, e                                        ; $6142: $4b
	call nc, $b9cf                                   ; $6143: $d4 $cf $b9
	ld   h, [hl]                                     ; $6146: $66
	cp   e                                           ; $6147: $bb
	dec  d                                           ; $6148: $15
	jp   z, $9c81                                    ; $6149: $ca $81 $9c

	ld   d, l                                        ; $614c: $55
	sub  [hl]                                        ; $614d: $96
	sbc  e                                           ; $614e: $9b
	ld   a, [$526f]                                  ; $614f: $fa $6f $52
	ld   e, b                                        ; $6152: $58
	add  [hl]                                        ; $6153: $86
	dec  [hl]                                        ; $6154: $35
	push af                                          ; $6155: $f5
	dec  l                                           ; $6156: $2d
	ld   [hl], h                                     ; $6157: $74
	sbc  c                                           ; $6158: $99
	ei                                               ; $6159: $fb
	ld   l, [hl]                                     ; $615a: $6e
	sub  h                                           ; $615b: $94
	ld   d, [hl]                                     ; $615c: $56
	adc  c                                           ; $615d: $89
	scf                                              ; $615e: $37
	cp   b                                           ; $615f: $b8
	ld   [hl], e                                     ; $6160: $73
	adc  e                                           ; $6161: $8b
	sub  [hl]                                        ; $6162: $96
	ld   l, h                                        ; $6163: $6c
	push hl                                          ; $6164: $e5
	ld   a, l                                        ; $6165: $7d
	sub  l                                           ; $6166: $95
	ld   b, [hl]                                     ; $6167: $46
	ld   l, c                                        ; $6168: $69
	sub  c                                           ; $6169: $91
	xor  h                                           ; $616a: $ac
	and  a                                           ; $616b: $a7
	ld   a, [hl+]                                    ; $616c: $2a
	and  l                                           ; $616d: $a5

jr_0c7_616e:
	call c, Call_0c7_49ab                            ; $616e: $dc $ab $49
	or   d                                           ; $6171: $b2
	sub  a                                           ; $6172: $97
	ld   b, l                                        ; $6173: $45
	ld   l, h                                        ; $6174: $6c
	ld   a, d                                        ; $6175: $7a
	ld   d, c                                        ; $6176: $51
	rst  $20                                         ; $6177: $e7
	ld   a, e                                        ; $6178: $7b
	db   $fc                                         ; $6179: $fc
	dec  e                                           ; $617a: $1d
	or   a                                           ; $617b: $b7
	ld   h, c                                        ; $617c: $61
	xor  h                                           ; $617d: $ac
	inc  hl                                          ; $617e: $23
	db   $ec                                         ; $617f: $ec
	ld   [hl], h                                     ; $6180: $74
	ld   l, d                                        ; $6181: $6a
	ld   d, [hl]                                     ; $6182: $56
	ld   a, [$2c9c]                                  ; $6183: $fa $9c $2c
	sub  c                                           ; $6186: $91
	add  $49                                         ; $6187: $c6 $49
	dec  a                                           ; $6189: $3d
	push af                                          ; $618a: $f5
	ld   b, l                                        ; $618b: $45
	ld   l, e                                        ; $618c: $6b
	ld   [hl], l                                     ; $618d: $75
	db   $fd                                         ; $618e: $fd
	add  hl, hl                                      ; $618f: $29
	ld   c, d                                        ; $6190: $4a
	ld   h, c                                        ; $6191: $61
	xor  d                                           ; $6192: $aa
	ld   a, c                                        ; $6193: $79
	add  hl, sp                                      ; $6194: $39
	db   $f4                                         ; $6195: $f4
	ld   e, c                                        ; $6196: $59
	ld   a, a                                        ; $6197: $7f
	add  d                                           ; $6198: $82
	push af                                          ; $6199: $f5
	sub  a                                           ; $619a: $97
	dec  de                                          ; $619b: $1b

jr_0c7_619c:
	ld   [hl], e                                     ; $619c: $73
	ld   l, e                                        ; $619d: $6b

jr_0c7_619e:
	ret  z                                           ; $619e: $c8

	add  hl, de                                      ; $619f: $19
	ret                                              ; $61a0: $c9


	ld   b, [hl]                                     ; $61a1: $46

jr_0c7_61a2:
	push hl                                          ; $61a2: $e5
	xor  h                                           ; $61a3: $ac
	adc  e                                           ; $61a4: $8b
	dec  d                                           ; $61a5: $15
	or   d                                           ; $61a6: $b2

jr_0c7_61a7:
	xor  d                                           ; $61a7: $aa
	ld   e, h                                        ; $61a8: $5c
	ld   c, c                                        ; $61a9: $49
	and  c                                           ; $61aa: $a1
	adc  h                                           ; $61ab: $8c
	add  a                                           ; $61ac: $87
	cp   h                                           ; $61ad: $bc
	or   e                                           ; $61ae: $b3
	ld   a, c                                        ; $61af: $79
	scf                                              ; $61b0: $37
	ld   l, b                                        ; $61b1: $68
	add  a                                           ; $61b2: $87
	xor  b                                           ; $61b3: $a8
	ld   h, l                                        ; $61b4: $65
	adc  c                                           ; $61b5: $89
	ld   a, l                                        ; $61b6: $7d
	db   $eb                                         ; $61b7: $eb
	ld   [hl], h                                     ; $61b8: $74
	and  h                                           ; $61b9: $a4
	ld   c, e                                        ; $61ba: $4b
	jr   c, jr_0c7_61a2                              ; $61bb: $38 $e5

	ld   a, [de]                                     ; $61bd: $1a
	ld   sp, hl                                      ; $61be: $f9
	dec  d                                           ; $61bf: $15
	call c, $9db7                                    ; $61c0: $dc $b7 $9d
	ld   h, c                                        ; $61c3: $61
	jr   c, jr_0c7_619e                              ; $61c4: $38 $d8

	ld   d, l                                        ; $61c6: $55
	xor  h                                           ; $61c7: $ac
	dec  h                                           ; $61c8: $25
	and  [hl]                                        ; $61c9: $a6
	ret  z                                           ; $61ca: $c8

	ld   l, [hl]                                     ; $61cb: $6e
	or   $16                                         ; $61cc: $f6 $16
	sbc  c                                           ; $61ce: $99
	ld   h, e                                        ; $61cf: $63
	xor  c                                           ; $61d0: $a9
	ld   [hl], a                                     ; $61d1: $77
	sbc  b                                           ; $61d2: $98
	ld   e, d                                        ; $61d3: $5a
	push bc                                          ; $61d4: $c5
	sbc  a                                           ; $61d5: $9f
	add  a                                           ; $61d6: $87
	add  l                                           ; $61d7: $85
	sub  h                                           ; $61d8: $94
	ld   e, $b3                                      ; $61d9: $1e $b3
	ret  z                                           ; $61db: $c8

	ld   a, e                                        ; $61dc: $7b
	ld   b, [hl]                                     ; $61dd: $46
	ld   sp, hl                                      ; $61de: $f9
	ld   a, [de]                                     ; $61df: $1a
	ld   sp, hl                                      ; $61e0: $f9
	scf                                              ; $61e1: $37
	ld   [hl], a                                     ; $61e2: $77
	ld   h, $f4                                      ; $61e3: $26 $f4
	ld   a, [hl]                                     ; $61e5: $7e
	adc  d                                           ; $61e6: $8a
	jr   jr_0c7_619c                                 ; $61e7: $18 $b3

	xor  b                                           ; $61e9: $a8
	xor  l                                           ; $61ea: $ad
	ld   d, h                                        ; $61eb: $54
	adc  c                                           ; $61ec: $89
	add  e                                           ; $61ed: $83
	ld   e, e                                        ; $61ee: $5b
	cp   e                                           ; $61ef: $bb
	ld   b, a                                        ; $61f0: $47
	call nz, $9c6a                                   ; $61f1: $c4 $6a $9c
	sub  l                                           ; $61f4: $95
	sbc  b                                           ; $61f5: $98
	sub  d                                           ; $61f6: $92
	ld   a, e                                        ; $61f7: $7b
	ld   c, c                                        ; $61f8: $49
	ld   l, e                                        ; $61f9: $6b
	and  h                                           ; $61fa: $a4
	xor  d                                           ; $61fb: $aa
	ld   h, e                                        ; $61fc: $63
	xor  a                                           ; $61fd: $af
	sub  e                                           ; $61fe: $93
	ld   l, d                                        ; $61ff: $6a
	sub  l                                           ; $6200: $95
	ld   c, d                                        ; $6201: $4a
	and  l                                           ; $6202: $a5
	ld   a, h                                        ; $6203: $7c
	and  [hl]                                        ; $6204: $a6
	ld   l, d                                        ; $6205: $6a
	rst  ToBoot                                         ; $6206: $c7
	ld   a, c                                        ; $6207: $79
	adc  b                                           ; $6208: $88
	adc  c                                           ; $6209: $89
	ld   c, c                                        ; $620a: $49
	sub  [hl]                                        ; $620b: $96
	or   a                                           ; $620c: $b7
	ld   h, a                                        ; $620d: $67
	adc  c                                           ; $620e: $89
	xor  d                                           ; $620f: $aa
	ld   h, a                                        ; $6210: $67
	ld   [hl], a                                     ; $6211: $77
	add  [hl]                                        ; $6212: $86
	jp   z, $9636                                    ; $6213: $ca $36 $96

	ld   a, l                                        ; $6216: $7d
	ld   l, b                                        ; $6217: $68
	or   d                                           ; $6218: $b2
	xor  h                                           ; $6219: $ac
	ld   l, c                                        ; $621a: $69
	or   l                                           ; $621b: $b5
	ld   e, d                                        ; $621c: $5a
	sbc  c                                           ; $621d: $99
	ld   d, a                                        ; $621e: $57
	and  a                                           ; $621f: $a7
	ld   d, [hl]                                     ; $6220: $56
	cp   d                                           ; $6221: $ba
	ld   e, b                                        ; $6222: $58
	jp   z, Jump_0c7_7b65                            ; $6223: $ca $65 $7b

	jp   nz, Jump_0c7_757c                           ; $6226: $c2 $7c $75

	ld   e, l                                        ; $6229: $5d
	or   h                                           ; $622a: $b4
	ld   e, e                                        ; $622b: $5b
	and  h                                           ; $622c: $a4
	adc  h                                           ; $622d: $8c
	ld   l, b                                        ; $622e: $68
	ld   h, a                                        ; $622f: $67
	db   $f4                                         ; $6230: $f4
	ld   a, d                                        ; $6231: $7a
	ld   l, e                                        ; $6232: $6b
	ld   a, c                                        ; $6233: $79
	ld   a, c                                        ; $6234: $79
	add  h                                           ; $6235: $84
	cp   c                                           ; $6236: $b9
	add  a                                           ; $6237: $87
	ld   l, [hl]                                     ; $6238: $6e
	sub  h                                           ; $6239: $94
	rst  $10                                         ; $623a: $d7
	ld   b, a                                        ; $623b: $47
	cp   l                                           ; $623c: $bd
	ld   h, l                                        ; $623d: $65
	ld   l, d                                        ; $623e: $6a
	add  l                                           ; $623f: $85
	xor  e                                           ; $6240: $ab
	ld   [hl], e                                     ; $6241: $73
	cp   l                                           ; $6242: $bd
	ld   h, l                                        ; $6243: $65
	xor  b                                           ; $6244: $a8
	ld   h, [hl]                                     ; $6245: $66
	adc  h                                           ; $6246: $8c
	add  l                                           ; $6247: $85
	ld   l, e                                        ; $6248: $6b
	sub  l                                           ; $6249: $95
	adc  c                                           ; $624a: $89
	xor  b                                           ; $624b: $a8
	ld   h, a                                        ; $624c: $67
	sbc  c                                           ; $624d: $99
	ld   h, a                                        ; $624e: $67
	adc  d                                           ; $624f: $8a
	and  [hl]                                        ; $6250: $a6
	ld   l, c                                        ; $6251: $69
	ld   a, d                                        ; $6252: $7a
	add  l                                           ; $6253: $85
	adc  c                                           ; $6254: $89
	sub  [hl]                                        ; $6255: $96
	ld   a, d                                        ; $6256: $7a
	sub  [hl]                                        ; $6257: $96
	ld   c, d                                        ; $6258: $4a
	db   $e4                                         ; $6259: $e4
	ld   l, e                                        ; $625a: $6b
	adc  c                                           ; $625b: $89
	ld   b, a                                        ; $625c: $47
	cp   d                                           ; $625d: $ba
	ld   [hl], l                                     ; $625e: $75
	sbc  b                                           ; $625f: $98
	adc  c                                           ; $6260: $89
	ld   e, b                                        ; $6261: $58
	sub  $66                                         ; $6262: $d6 $66
	sbc  h                                           ; $6264: $9c
	ld   [hl], h                                     ; $6265: $74
	adc  l                                           ; $6266: $8d
	and  h                                           ; $6267: $a4
	ld   l, d                                        ; $6268: $6a
	or   [hl]                                        ; $6269: $b6
	ld   e, c                                        ; $626a: $59
	ret                                              ; $626b: $c9


	ld   b, [hl]                                     ; $626c: $46
	cp   e                                           ; $626d: $bb
	ld   h, l                                        ; $626e: $65
	adc  c                                           ; $626f: $89
	or   l                                           ; $6270: $b5
	ld   l, c                                        ; $6271: $69
	ld   a, c                                        ; $6272: $79
	ld   d, [hl]                                     ; $6273: $56
	cp   b                                           ; $6274: $b8
	ld   [hl], a                                     ; $6275: $77
	ld   e, e                                        ; $6276: $5b
	adc  b                                           ; $6277: $88
	ld   h, a                                        ; $6278: $67
	or   [hl]                                        ; $6279: $b6
	ld   h, a                                        ; $627a: $67
	adc  d                                           ; $627b: $8a
	halt                                             ; $627c: $76
	sbc  b                                           ; $627d: $98
	adc  c                                           ; $627e: $89
	ld   l, c                                        ; $627f: $69
	sub  [hl]                                        ; $6280: $96
	ld   a, c                                        ; $6281: $79
	ld   a, d                                        ; $6282: $7a
	ld   [hl], h                                     ; $6283: $74
	sbc  d                                           ; $6284: $9a
	ld   [hl], a                                     ; $6285: $77
	sub  a                                           ; $6286: $97
	sbc  c                                           ; $6287: $99
	ld   e, c                                        ; $6288: $59
	or   [hl]                                        ; $6289: $b6
	ld   [hl], a                                     ; $628a: $77
	adc  e                                           ; $628b: $8b
	ld   [hl], a                                     ; $628c: $77
	adc  b                                           ; $628d: $88
	halt                                             ; $628e: $76
	sbc  b                                           ; $628f: $98
	and  a                                           ; $6290: $a7
	ld   a, d                                        ; $6291: $7a
	ld   [hl], a                                     ; $6292: $77
	ld   a, b                                        ; $6293: $78
	add  [hl]                                        ; $6294: $86
	sbc  d                                           ; $6295: $9a
	ld   l, b                                        ; $6296: $68
	ld   [hl], a                                     ; $6297: $77
	cp   c                                           ; $6298: $b9
	ld   a, c                                        ; $6299: $79
	and  a                                           ; $629a: $a7
	ld   h, a                                        ; $629b: $67
	sbc  d                                           ; $629c: $9a
	add  [hl]                                        ; $629d: $86
	adc  c                                           ; $629e: $89
	sbc  c                                           ; $629f: $99
	ld   e, b                                        ; $62a0: $58
	and  a                                           ; $62a1: $a7
	ld   a, b                                        ; $62a2: $78
	sbc  d                                           ; $62a3: $9a
	ld   h, [hl]                                     ; $62a4: $66
	sbc  c                                           ; $62a5: $99
	ld   [hl], a                                     ; $62a6: $77
	sbc  b                                           ; $62a7: $98
	add  a                                           ; $62a8: $87
	adc  c                                           ; $62a9: $89
	sub  a                                           ; $62aa: $97
	ld   a, b                                        ; $62ab: $78
	adc  d                                           ; $62ac: $8a
	add  a                                           ; $62ad: $87
	sub  a                                           ; $62ae: $97
	ld   [hl], a                                     ; $62af: $77
	ld   a, b                                        ; $62b0: $78
	sub  a                                           ; $62b1: $97
	sbc  b                                           ; $62b2: $98
	adc  c                                           ; $62b3: $89
	ld   h, a                                        ; $62b4: $67
	adc  b                                           ; $62b5: $88
	ld   [hl], a                                     ; $62b6: $77
	sbc  b                                           ; $62b7: $98
	ld   [hl], a                                     ; $62b8: $77
	adc  c                                           ; $62b9: $89
	add  a                                           ; $62ba: $87
	adc  b                                           ; $62bb: $88
	sub  a                                           ; $62bc: $97
	ld   l, b                                        ; $62bd: $68
	sbc  b                                           ; $62be: $98
	ld   [hl], a                                     ; $62bf: $77
	sbc  b                                           ; $62c0: $98
	ld   a, b                                        ; $62c1: $78
	sbc  b                                           ; $62c2: $98
	sbc  b                                           ; $62c3: $98
	ld   a, b                                        ; $62c4: $78
	adc  b                                           ; $62c5: $88
	halt                                             ; $62c6: $76
	adc  c                                           ; $62c7: $89
	ld   [hl], a                                     ; $62c8: $77
	sbc  c                                           ; $62c9: $99
	ld   [hl], a                                     ; $62ca: $77
	ld   a, b                                        ; $62cb: $78
	sub  a                                           ; $62cc: $97
	sbc  b                                           ; $62cd: $98
	adc  b                                           ; $62ce: $88
	ld   [hl], a                                     ; $62cf: $77
	sbc  b                                           ; $62d0: $98
	add  a                                           ; $62d1: $87
	sbc  c                                           ; $62d2: $99
	adc  b                                           ; $62d3: $88
	ld   a, b                                        ; $62d4: $78
	add  a                                           ; $62d5: $87
	adc  c                                           ; $62d6: $89
	sbc  b                                           ; $62d7: $98
	ld   [hl], a                                     ; $62d8: $77
	adc  b                                           ; $62d9: $88
	ld   [hl], a                                     ; $62da: $77
	sbc  c                                           ; $62db: $99
	adc  b                                           ; $62dc: $88
	adc  b                                           ; $62dd: $88
	ld   [hl], a                                     ; $62de: $77
	adc  c                                           ; $62df: $89
	sbc  b                                           ; $62e0: $98
	adc  b                                           ; $62e1: $88
	sub  a                                           ; $62e2: $97
	adc  b                                           ; $62e3: $88
	sbc  b                                           ; $62e4: $98
	ld   a, b                                        ; $62e5: $78
	adc  b                                           ; $62e6: $88
	ld   a, b                                        ; $62e7: $78
	sub  a                                           ; $62e8: $97
	sbc  c                                           ; $62e9: $99
	adc  b                                           ; $62ea: $88
	ld   a, b                                        ; $62eb: $78
	add  a                                           ; $62ec: $87
	sbc  c                                           ; $62ed: $99
	adc  b                                           ; $62ee: $88
	ld   a, b                                        ; $62ef: $78
	adc  b                                           ; $62f0: $88
	ld   a, b                                        ; $62f1: $78
	adc  b                                           ; $62f2: $88
	adc  b                                           ; $62f3: $88
	adc  b                                           ; $62f4: $88
	add  a                                           ; $62f5: $87
	ld   a, b                                        ; $62f6: $78
	adc  b                                           ; $62f7: $88
	sbc  c                                           ; $62f8: $99
	adc  b                                           ; $62f9: $88
	ld   a, b                                        ; $62fa: $78
	ld   a, b                                        ; $62fb: $78
	ld   a, c                                        ; $62fc: $79
	adc  b                                           ; $62fd: $88
	adc  b                                           ; $62fe: $88
	ld   [hl], a                                     ; $62ff: $77
	adc  b                                           ; $6300: $88
	add  a                                           ; $6301: $87
	sbc  b                                           ; $6302: $98
	adc  b                                           ; $6303: $88
	adc  c                                           ; $6304: $89
	ld   [hl], a                                     ; $6305: $77
	ld   a, b                                        ; $6306: $78
	sbc  b                                           ; $6307: $98
	ld   a, c                                        ; $6308: $79
	sbc  b                                           ; $6309: $98
	ld   [hl], a                                     ; $630a: $77
	sbc  c                                           ; $630b: $99
	ld   [hl], a                                     ; $630c: $77
	sbc  c                                           ; $630d: $99
	ld   [hl], a                                     ; $630e: $77
	adc  c                                           ; $630f: $89
	add  a                                           ; $6310: $87
	sbc  b                                           ; $6311: $98
	adc  b                                           ; $6312: $88
	adc  b                                           ; $6313: $88
	add  a                                           ; $6314: $87
	ld   a, b                                        ; $6315: $78
	sbc  c                                           ; $6316: $99
	adc  b                                           ; $6317: $88
	adc  b                                           ; $6318: $88
	adc  b                                           ; $6319: $88
	adc  b                                           ; $631a: $88
	adc  b                                           ; $631b: $88
	adc  c                                           ; $631c: $89
	add  a                                           ; $631d: $87
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
	ld   a, b                                        ; $6329: $78
	adc  b                                           ; $632a: $88
	adc  b                                           ; $632b: $88
	sbc  b                                           ; $632c: $98
	adc  b                                           ; $632d: $88
	adc  b                                           ; $632e: $88
	adc  b                                           ; $632f: $88
	adc  b                                           ; $6330: $88
	sbc  b                                           ; $6331: $98
	adc  b                                           ; $6332: $88
	adc  b                                           ; $6333: $88
	adc  b                                           ; $6334: $88
	sbc  b                                           ; $6335: $98
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
	add  c                                           ; $637f: $81
	ld   de, $1111                                   ; $6380: $11 $11 $11
	ld   de, $1111                                   ; $6383: $11 $11 $11
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
	ld   de, $1111                                   ; $63a4: $11 $11 $11
	ld   de, $1111                                   ; $63a7: $11 $11 $11
	nop                                              ; $63aa: $00
	ld   c, b                                        ; $63ab: $48
	ld   de, $1111                                   ; $63ac: $11 $11 $11
	ld   de, $1111                                   ; $63af: $11 $11 $11
	ld   de, $1111                                   ; $63b2: $11 $11 $11
	ld   de, $5413                                   ; $63b5: $11 $13 $54
	ld   d, h                                        ; $63b8: $54
	ld   d, h                                        ; $63b9: $54
	ld   b, c                                        ; $63ba: $41
	rra                                              ; $63bb: $1f
	rst  $38                                         ; $63bc: $ff
	pop  af                                          ; $63bd: $f1
	ld   de, $1e11                                   ; $63be: $11 $11 $1e
	ld   b, c                                        ; $63c1: $41
	ld   de, $dd1c                                   ; $63c2: $11 $1c $dd
	cp   h                                           ; $63c5: $bc
	db   $dd                                         ; $63c6: $dd
	or   c                                           ; $63c7: $b1
	ld   de, $1111                                   ; $63c8: $11 $11 $11
	ld   de, $1111                                   ; $63cb: $11 $11 $11
	ld   de, $1111                                   ; $63ce: $11 $11 $11
	ld   de, $1111                                   ; $63d1: $11 $11 $11
	ld   de, $5411                                   ; $63d4: $11 $11 $54
	ld   b, h                                        ; $63d7: $44
	ld   a, $11                                      ; $63d8: $3e $11
	ld   d, h                                        ; $63da: $54
	ld   d, h                                        ; $63db: $54
	ld   h, a                                        ; $63dc: $67
	ld   [hl], d                                     ; $63dd: $72
	ld   de, $1111                                   ; $63de: $11 $11 $11
	ld   de, $1112                                   ; $63e1: $11 $12 $11
	ld   [de], a                                     ; $63e4: $12
	ld   de, $1111                                   ; $63e5: $11 $11 $11
	ld   h, [hl]                                     ; $63e8: $66
	halt                                             ; $63e9: $76
	ld   e, $11                                      ; $63ea: $1e $11
	adc  b                                           ; $63ec: $88
	add  a                                           ; $63ed: $87
	adc  c                                           ; $63ee: $89
	adc  c                                           ; $63ef: $89
	adc  b                                           ; $63f0: $88
	ld   [hl], a                                     ; $63f1: $77
	ld   h, a                                        ; $63f2: $67
	ld   a, c                                        ; $63f3: $79
	xor  d                                           ; $63f4: $aa
	sbc  b                                           ; $63f5: $98
	add  [hl]                                        ; $63f6: $86
	ld   h, [hl]                                     ; $63f7: $66
	ld   l, c                                        ; $63f8: $69
	xor  [hl]                                        ; $63f9: $ae
	db   $eb                                         ; $63fa: $eb
	xor  b                                           ; $63fb: $a8
	ld   h, [hl]                                     ; $63fc: $66
	ld   d, [hl]                                     ; $63fd: $56
	adc  b                                           ; $63fe: $88
	cp   d                                           ; $63ff: $ba
	xor  d                                           ; $6400: $aa
	sbc  d                                           ; $6401: $9a
	sbc  b                                           ; $6402: $98
	adc  b                                           ; $6403: $88
	add  a                                           ; $6404: $87
	ld   h, l                                        ; $6405: $65
	ld   b, h                                        ; $6406: $44
	ld   d, l                                        ; $6407: $55
	ld   [hl], a                                     ; $6408: $77
	adc  b                                           ; $6409: $88
	add  a                                           ; $640a: $87
	ld   [hl], a                                     ; $640b: $77
	ld   h, a                                        ; $640c: $67
	ld   a, c                                        ; $640d: $79
	adc  b                                           ; $640e: $88
	add  a                                           ; $640f: $87
	halt                                             ; $6410: $76
	ld   [hl], a                                     ; $6411: $77
	adc  b                                           ; $6412: $88
	sbc  b                                           ; $6413: $98
	adc  b                                           ; $6414: $88
	ld   [hl], a                                     ; $6415: $77
	halt                                             ; $6416: $76
	halt                                             ; $6417: $76
	ld   h, a                                        ; $6418: $67
	ld   [hl], a                                     ; $6419: $77
	ld   a, b                                        ; $641a: $78
	add  [hl]                                        ; $641b: $86
	ld   d, h                                        ; $641c: $54
	ld   b, l                                        ; $641d: $45
	ld   l, b                                        ; $641e: $68
	adc  b                                           ; $641f: $88
	adc  b                                           ; $6420: $88
	halt                                             ; $6421: $76
	ld   h, a                                        ; $6422: $67
	ld   a, c                                        ; $6423: $79
	sbc  d                                           ; $6424: $9a
	sbc  c                                           ; $6425: $99
	add  a                                           ; $6426: $87
	ld   [hl], a                                     ; $6427: $77
	ld   a, c                                        ; $6428: $79
	sbc  d                                           ; $6429: $9a
	xor  c                                           ; $642a: $a9
	add  a                                           ; $642b: $87
	adc  b                                           ; $642c: $88
	adc  c                                           ; $642d: $89
	add  a                                           ; $642e: $87
	ld   a, b                                        ; $642f: $78
	cp   h                                           ; $6430: $bc
	ret                                              ; $6431: $c9


	ld   d, h                                        ; $6432: $54
	ld   b, h                                        ; $6433: $44
	ld   d, l                                        ; $6434: $55
	ld   l, b                                        ; $6435: $68
	xor  e                                           ; $6436: $ab
	res  3, c                                        ; $6437: $cb $99
	xor  l                                           ; $6439: $ad
	rst  $38                                         ; $643a: $ff
	or   l                                           ; $643b: $b5
	ld   de, $8d12                                   ; $643c: $11 $12 $8d
	cp   $a7                                         ; $643f: $fe $a7
	ld   h, l                                        ; $6441: $65
	sbc  e                                           ; $6442: $9b
	call z, Call_0c7_52b9                            ; $6443: $cc $b9 $52
	inc  h                                           ; $6446: $24
	ld   e, b                                        ; $6447: $58
	xor  b                                           ; $6448: $a8
	ld   [hl], h                                     ; $6449: $74
	ld   d, [hl]                                     ; $644a: $56
	xor  l                                           ; $644b: $ad
	rst  $38                                         ; $644c: $ff
	reti                                             ; $644d: $d9


	ld   b, c                                        ; $644e: $41
	ld   de, $bb48                                   ; $644f: $11 $48 $bb
	xor  c                                           ; $6452: $a9
	ld   h, h                                        ; $6453: $64
	ld   a, c                                        ; $6454: $79
	adc  $fd                                         ; $6455: $ce $fd
	rst  ToBoot                                         ; $6457: $c7
	ld   b, h                                        ; $6458: $44
	ld   e, b                                        ; $6459: $58
	adc  e                                           ; $645a: $8b
	cp   c                                           ; $645b: $b9
	ld   h, d                                        ; $645c: $62
	ld   de, $9b34                                   ; $645d: $11 $34 $9b
	sub  a                                           ; $6460: $97
	ld   h, l                                        ; $6461: $65
	ld   l, c                                        ; $6462: $69
	xor  l                                           ; $6463: $ad
	jp   z, $96aa                                    ; $6464: $ca $aa $96

	sbc  d                                           ; $6467: $9a
	set  1, [hl]                                     ; $6468: $cb $ce
	db   $ec                                         ; $646a: $ec
	rst  JumpTable                                         ; $646b: $df
	rst  $38                                         ; $646c: $ff
	ret                                              ; $646d: $c9


	ld   h, a                                        ; $646e: $67
	ld   [hl], l                                     ; $646f: $75
	ld   d, e                                        ; $6470: $53
	inc  hl                                          ; $6471: $23
	ld   de, $1111                                   ; $6472: $11 $11 $11
	ld   de, $1111                                   ; $6475: $11 $11 $11
	ld   de, $9f11                                   ; $6478: $11 $11 $9f
	rst  $38                                         ; $647b: $ff
	rst  $38                                         ; $647c: $ff
	rst  $38                                         ; $647d: $ff
	rst  $38                                         ; $647e: $ff
	rst  $38                                         ; $647f: $ff
	rst  $38                                         ; $6480: $ff
	ld   a, [$96a9]                                  ; $6481: $fa $a9 $96
	add  a                                           ; $6484: $87
	ld   [hl], a                                     ; $6485: $77
	ld   a, b                                        ; $6486: $78
	ld   h, d                                        ; $6487: $62
	ld   de, $1111                                   ; $6488: $11 $11 $11
	ld   de, $1111                                   ; $648b: $11 $11 $11
	xor  a                                           ; $648e: $af
	rst  $38                                         ; $648f: $ff
	rst  $38                                         ; $6490: $ff
	rst  $38                                         ; $6491: $ff
	rst  $38                                         ; $6492: $ff
	rst  $38                                         ; $6493: $ff
	rst  $38                                         ; $6494: $ff
	bit  6, [hl]                                     ; $6495: $cb $76

Jump_0c7_6497:
	ld   a, b                                        ; $6497: $78
	sbc  a                                           ; $6498: $9f

Jump_0c7_6499:
	rst  $38                                         ; $6499: $ff
	ei                                               ; $649a: $fb
	ld   d, d                                        ; $649b: $52
	ld   de, $1111                                   ; $649c: $11 $11 $11
	ld   de, $1111                                   ; $649f: $11 $11 $11
	ld   c, a                                        ; $64a2: $4f
	rst  $38                                         ; $64a3: $ff
	rst  $38                                         ; $64a4: $ff
	rst  $38                                         ; $64a5: $ff
	rst  $38                                         ; $64a6: $ff
	rst  $38                                         ; $64a7: $ff
	rst  $38                                         ; $64a8: $ff
	rst  $38                                         ; $64a9: $ff
	sbc  c                                           ; $64aa: $99
	sub  [hl]                                        ; $64ab: $96
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64ac: $cf
	rst  $38                                         ; $64ad: $ff
	rst  $38                                         ; $64ae: $ff
	or   l                                           ; $64af: $b5
	ld   de, $1111                                   ; $64b0: $11 $11 $11
	ld   de, $1111                                   ; $64b3: $11 $11 $11
	ld   a, [de]                                     ; $64b6: $1a
	rst  $38                                         ; $64b7: $ff
	rst  $38                                         ; $64b8: $ff
	rst  $38                                         ; $64b9: $ff
	rst  $38                                         ; $64ba: $ff
	cp   $de                                         ; $64bb: $fe $de
	rst  $38                                         ; $64bd: $ff
	rst  $38                                         ; $64be: $ff
	jp   c, $ffde                                    ; $64bf: $da $de $ff

	rst  $38                                         ; $64c2: $ff
	ld   hl, sp+$11                                  ; $64c3: $f8 $11
	ld   de, $1111                                   ; $64c5: $11 $11 $11
	ld   de, $1111                                   ; $64c8: $11 $11 $11
	rst  $38                                         ; $64cb: $ff
	rst  $38                                         ; $64cc: $ff
	rst  $38                                         ; $64cd: $ff
	rst  $38                                         ; $64ce: $ff
	ld   a, [$df9a]                                  ; $64cf: $fa $9a $df
	rst  $38                                         ; $64d2: $ff
	db   $fd                                         ; $64d3: $fd
	sbc  $ff                                         ; $64d4: $de $ff
	rst  $38                                         ; $64d6: $ff
	db   $fc                                         ; $64d7: $fc
	ld   sp, $1111                                   ; $64d8: $31 $11 $11
	ld   de, $1111                                   ; $64db: $11 $11 $11
	dec  e                                           ; $64de: $1d
	rst  $38                                         ; $64df: $ff
	rst  $38                                         ; $64e0: $ff
	rst  $38                                         ; $64e1: $ff
	rst  $38                                         ; $64e2: $ff
	add  d                                           ; $64e3: $82
	dec  d                                           ; $64e4: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64e5: $cf
	rst  $38                                         ; $64e6: $ff
	rst  $38                                         ; $64e7: $ff
	rst  $28                                         ; $64e8: $ef
	rst  $38                                         ; $64e9: $ff
	rst  $38                                         ; $64ea: $ff
	push hl                                          ; $64eb: $e5
	ld   de, $1111                                   ; $64ec: $11 $11 $11
	ld   de, $1111                                   ; $64ef: $11 $11 $11
	xor  a                                           ; $64f2: $af
	rst  $38                                         ; $64f3: $ff
	rst  $38                                         ; $64f4: $ff
	rst  $38                                         ; $64f5: $ff
	push hl                                          ; $64f6: $e5
	ld   de, $ff6e                                   ; $64f7: $11 $6e $ff
	rst  $38                                         ; $64fa: $ff
	rst  $38                                         ; $64fb: $ff
	rst  $38                                         ; $64fc: $ff
	rst  $38                                         ; $64fd: $ff
	cp   $41                                         ; $64fe: $fe $41
	ld   de, $1111                                   ; $6500: $11 $11 $11
	ld   de, $2f11                                   ; $6503: $11 $11 $2f
	rst  $38                                         ; $6506: $ff
	rst  $38                                         ; $6507: $ff
	rst  $38                                         ; $6508: $ff
	rst  $30                                         ; $6509: $f7
	ld   de, $ff4c                                   ; $650a: $11 $4c $ff
	rst  $38                                         ; $650d: $ff
	rst  $38                                         ; $650e: $ff
	rst  JumpTable                                         ; $650f: $df
	rst  $38                                         ; $6510: $ff
	rst  $38                                         ; $6511: $ff
	ld   [hl], c                                     ; $6512: $71
	ld   de, $1111                                   ; $6513: $11 $11 $11
	ld   de, $cf11                                   ; $6516: $11 $11 $cf
	rst  $38                                         ; $6519: $ff
	rst  $38                                         ; $651a: $ff
	rst  $38                                         ; $651b: $ff
	ld   d, e                                        ; $651c: $53
	inc  de                                          ; $651d: $13
	rst  JumpTable                                         ; $651e: $df
	rst  $38                                         ; $651f: $ff
	rst  $38                                         ; $6520: $ff
	rst  $38                                         ; $6521: $ff
	rst  $38                                         ; $6522: $ff
	rst  $38                                         ; $6523: $ff
	db   $e4                                         ; $6524: $e4
	ld   de, $1111                                   ; $6525: $11 $11 $11
	ld   de, $1c11                                   ; $6528: $11 $11 $1c
	rst  $38                                         ; $652b: $ff
	rst  $38                                         ; $652c: $ff
	rst  $38                                         ; $652d: $ff
	pop  bc                                          ; $652e: $c1
	inc  de                                          ; $652f: $13
	ld   l, $ff                                      ; $6530: $2e $ff
	rst  $38                                         ; $6532: $ff
	rst  $38                                         ; $6533: $ff
	rst  $38                                         ; $6534: $ff
	rst  $38                                         ; $6535: $ff
	db   $fd                                         ; $6536: $fd
	ld   d, c                                        ; $6537: $51
	ld   de, $1111                                   ; $6538: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $653b: $11 $11 $ff
	rst  $38                                         ; $653e: $ff
	rst  $38                                         ; $653f: $ff
	pop  af                                          ; $6540: $f1
	ld   de, $ef14                                   ; $6541: $11 $14 $ef
	rst  $38                                         ; $6544: $ff
	rst  $38                                         ; $6545: $ff
	rst  $38                                         ; $6546: $ff
	rst  $38                                         ; $6547: $ff
	rst  $38                                         ; $6548: $ff
	add  c                                           ; $6549: $81
	ld   de, $1111                                   ; $654a: $11 $11 $11
	ld   de, $7f11                                   ; $654d: $11 $11 $7f
	rst  $38                                         ; $6550: $ff
	rst  $38                                         ; $6551: $ff
	ld   sp, hl                                      ; $6552: $f9
	ld   de, $8f11                                   ; $6553: $11 $11 $8f
	rst  $38                                         ; $6556: $ff
	rst  $38                                         ; $6557: $ff
	rst  $38                                         ; $6558: $ff
	rst  $38                                         ; $6559: $ff
	rst  $38                                         ; $655a: $ff
	ldh  a, [c]                                      ; $655b: $f2
	ld   de, $1111                                   ; $655c: $11 $11 $11
	ld   de, $3f11                                   ; $655f: $11 $11 $3f
	rst  $38                                         ; $6562: $ff
	rst  $38                                         ; $6563: $ff
	ld   a, [$1111]                                  ; $6564: $fa $11 $11
	cpl                                              ; $6567: $2f
	rst  $38                                         ; $6568: $ff
	rst  $38                                         ; $6569: $ff
	rst  $38                                         ; $656a: $ff
	rst  $38                                         ; $656b: $ff
	rst  $38                                         ; $656c: $ff
	rst  $30                                         ; $656d: $f7
	ld   de, $1111                                   ; $656e: $11 $11 $11
	ld   de, $1f11                                   ; $6571: $11 $11 $1f
	rst  $38                                         ; $6574: $ff
	rst  $38                                         ; $6575: $ff
	db   $fd                                         ; $6576: $fd
	ld   de, $1c11                                   ; $6577: $11 $11 $1c
	rst  $38                                         ; $657a: $ff
	rst  $38                                         ; $657b: $ff
	rst  $38                                         ; $657c: $ff
	rst  $38                                         ; $657d: $ff
	rst  $38                                         ; $657e: $ff
	db   $fd                                         ; $657f: $fd
	ld   de, $1111                                   ; $6580: $11 $11 $11
	ld   de, $1711                                   ; $6583: $11 $11 $17
	rst  $38                                         ; $6586: $ff
	rst  $38                                         ; $6587: $ff
	rst  $38                                         ; $6588: $ff
	ld   de, $1711                                   ; $6589: $11 $11 $17
	rst  $38                                         ; $658c: $ff
	rst  $38                                         ; $658d: $ff
	rst  $38                                         ; $658e: $ff
	rst  $38                                         ; $658f: $ff
	rst  $38                                         ; $6590: $ff
	rst  $38                                         ; $6591: $ff
	ld   h, c                                        ; $6592: $61
	ld   de, $1111                                   ; $6593: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $6596: $11 $11 $ff
	rst  $38                                         ; $6599: $ff
	rst  $38                                         ; $659a: $ff
	add  c                                           ; $659b: $81
	ld   de, rAUD1LEN                                   ; $659c: $11 $11 $ff
	rst  $38                                         ; $659f: $ff
	rst  $38                                         ; $65a0: $ff
	rst  $38                                         ; $65a1: $ff
	rst  $38                                         ; $65a2: $ff
	rst  $38                                         ; $65a3: $ff
	and  c                                           ; $65a4: $a1
	ld   de, $1111                                   ; $65a5: $11 $11 $11
	ld   de, $df11                                   ; $65a8: $11 $11 $df
	rst  $38                                         ; $65ab: $ff
	rst  $38                                         ; $65ac: $ff
	or   c                                           ; $65ad: $b1
	ld   de, $df11                                   ; $65ae: $11 $11 $df
	rst  $38                                         ; $65b1: $ff
	rst  $38                                         ; $65b2: $ff
	rst  $38                                         ; $65b3: $ff
	rst  $38                                         ; $65b4: $ff
	rst  $38                                         ; $65b5: $ff
	pop  hl                                          ; $65b6: $e1
	ld   de, $1111                                   ; $65b7: $11 $11 $11
	ld   de, $9f11                                   ; $65ba: $11 $11 $9f
	rst  $38                                         ; $65bd: $ff
	rst  $38                                         ; $65be: $ff
	or   c                                           ; $65bf: $b1
	ld   de, $9f11                                   ; $65c0: $11 $11 $9f
	rst  $38                                         ; $65c3: $ff
	rst  $38                                         ; $65c4: $ff
	rst  $38                                         ; $65c5: $ff
	rst  $38                                         ; $65c6: $ff
	rst  $38                                         ; $65c7: $ff
	ldh  a, [c]                                      ; $65c8: $f2
	ld   de, $1111                                   ; $65c9: $11 $11 $11
	ld   de, $6f11                                   ; $65cc: $11 $11 $6f
	rst  $38                                         ; $65cf: $ff
	rst  $38                                         ; $65d0: $ff
	pop  bc                                          ; $65d1: $c1
	ld   de, $8f11                                   ; $65d2: $11 $11 $8f
	rst  $38                                         ; $65d5: $ff
	rst  $38                                         ; $65d6: $ff
	rst  $38                                         ; $65d7: $ff
	rst  $38                                         ; $65d8: $ff
	rst  $38                                         ; $65d9: $ff
	ldh  a, [c]                                      ; $65da: $f2
	ld   de, $1111                                   ; $65db: $11 $11 $11
	ld   de, $9f11                                   ; $65de: $11 $11 $9f
	rst  $38                                         ; $65e1: $ff
	rst  $38                                         ; $65e2: $ff
	or   c                                           ; $65e3: $b1
	ld   de, $ef11                                   ; $65e4: $11 $11 $ef
	rst  $38                                         ; $65e7: $ff
	rst  $38                                         ; $65e8: $ff
	rst  $38                                         ; $65e9: $ff
	rst  $38                                         ; $65ea: $ff
	rst  $38                                         ; $65eb: $ff
	pop  af                                          ; $65ec: $f1
	ld   de, $1111                                   ; $65ed: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $65f0: $11 $11 $ff
	rst  $38                                         ; $65f3: $ff
	rst  $38                                         ; $65f4: $ff
	ld   [hl], c                                     ; $65f5: $71
	ld   de, rAUD1LEN                                   ; $65f6: $11 $11 $ff
	rst  $38                                         ; $65f9: $ff
	rst  $38                                         ; $65fa: $ff
	rst  $38                                         ; $65fb: $ff
	rst  $38                                         ; $65fc: $ff
	rst  $38                                         ; $65fd: $ff
	ld   b, c                                        ; $65fe: $41
	ld   de, $1111                                   ; $65ff: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $6602: $11 $14 $ff
	rst  $38                                         ; $6605: $ff
	db   $fd                                         ; $6606: $fd
	ld   de, $1e11                                   ; $6607: $11 $11 $1e
	rst  $38                                         ; $660a: $ff
	rst  $38                                         ; $660b: $ff
	rst  $38                                         ; $660c: $ff
	rst  $38                                         ; $660d: $ff
	rst  $38                                         ; $660e: $ff
	cp   $11                                         ; $660f: $fe $11
	ld   de, $1111                                   ; $6611: $11 $11 $11
	ld   de, $ff1f                                   ; $6614: $11 $1f $ff
	rst  $38                                         ; $6617: $ff
	push af                                          ; $6618: $f5
	ld   de, $7f11                                   ; $6619: $11 $11 $7f
	rst  $38                                         ; $661c: $ff
	rst  $38                                         ; $661d: $ff
	rst  $38                                         ; $661e: $ff
	rst  $38                                         ; $661f: $ff
	rst  $38                                         ; $6620: $ff
	di                                               ; $6621: $f3
	ld   de, $1111                                   ; $6622: $11 $11 $11
	ld   de, $8f11                                   ; $6625: $11 $11 $8f
	rst  $38                                         ; $6628: $ff
	rst  $38                                         ; $6629: $ff
	add  c                                           ; $662a: $81
	ld   de, rAUD1HIGH                                   ; $662b: $11 $14 $ff
	rst  $38                                         ; $662e: $ff
	rst  $38                                         ; $662f: $ff
	rst  $38                                         ; $6630: $ff
	rst  $38                                         ; $6631: $ff
	rst  $38                                         ; $6632: $ff
	add  c                                           ; $6633: $81

Jump_0c7_6634:
	ld   de, $1111                                   ; $6634: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $6637: $11 $12 $ff
	rst  $38                                         ; $663a: $ff
	ld   sp, hl                                      ; $663b: $f9
	ld   de, $7f12                                   ; $663c: $11 $12 $7f
	db   $fd                                         ; $663f: $fd
	ei                                               ; $6640: $fb
	rst  $38                                         ; $6641: $ff
	rst  $38                                         ; $6642: $ff
	rst  $38                                         ; $6643: $ff
	rst  $30                                         ; $6644: $f7
	ld   de, $1111                                   ; $6645: $11 $11 $11
	ld   de, $1f11                                   ; $6648: $11 $11 $1f
	rst  $38                                         ; $664b: $ff
	rst  $38                                         ; $664c: $ff
	add  c                                           ; $664d: $81
	ld   de, $ff79                                   ; $664e: $11 $79 $ff
	cp   [hl]                                        ; $6651: $be
	sbc  a                                           ; $6652: $9f
	rst  $38                                         ; $6653: $ff
	rst  $38                                         ; $6654: $ff
	rst  $38                                         ; $6655: $ff
	sub  c                                           ; $6656: $91
	ld   de, $1111                                   ; $6657: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $665a: $11 $11 $ff
	rst  $38                                         ; $665d: $ff
	ld   hl, sp+$31                                  ; $665e: $f8 $31
	ld   c, e                                        ; $6660: $4b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6661: $cf
	ld   sp, hl                                      ; $6662: $f9
	sub  a                                           ; $6663: $97
	rst  $38                                         ; $6664: $ff
	rst  $38                                         ; $6665: $ff
	rst  $38                                         ; $6666: $ff
	ei                                               ; $6667: $fb
	ld   de, $1111                                   ; $6668: $11 $11 $11
	ld   de, $1f11                                   ; $666b: $11 $11 $1f
	rst  $38                                         ; $666e: $ff
	rst  $38                                         ; $666f: $ff
	and  a                                           ; $6670: $a7
	add  hl, de                                      ; $6671: $19
	db   $eb                                         ; $6672: $eb
	rst  $38                                         ; $6673: $ff
	ld   a, d                                        ; $6674: $7a
	adc  a                                           ; $6675: $8f
	rst  $38                                         ; $6676: $ff
	rst  $38                                         ; $6677: $ff
	rst  $38                                         ; $6678: $ff
	db   $d3                                         ; $6679: $d3
	ld   de, $1111                                   ; $667a: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $667d: $11 $11 $ff
	rst  $38                                         ; $6680: $ff
	db   $fc                                         ; $6681: $fc
	rst  ToBoot                                         ; $6682: $c7
	rst  $38                                         ; $6683: $ff
	rst  JumpTable                                         ; $6684: $df
	or   [hl]                                        ; $6685: $b6
	sbc  c                                           ; $6686: $99
	rst  $38                                         ; $6687: $ff
	rst  $38                                         ; $6688: $ff
	rst  $38                                         ; $6689: $ff
	cp   $74                                         ; $668a: $fe $74
	ld   de, $1111                                   ; $668c: $11 $11 $11
	ld   de, $ff1e                                   ; $668f: $11 $1e $ff
	rst  $38                                         ; $6692: $ff
	rst  $38                                         ; $6693: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6694: $cf
	rst  $38                                         ; $6695: $ff
	ei                                               ; $6696: $fb
	xor  c                                           ; $6697: $a9
	cp   a                                           ; $6698: $bf
	rst  $38                                         ; $6699: $ff
	rst  $38                                         ; $669a: $ff
	rst  $38                                         ; $669b: $ff
	db   $fc                                         ; $669c: $fc
	ld   h, c                                        ; $669d: $61
	ld   de, $1111                                   ; $669e: $11 $11 $11
	ld   de, $ff9e                                   ; $66a1: $11 $9e $ff
	rst  $38                                         ; $66a4: $ff
	cp   $ff                                         ; $66a5: $fe $ff
	rst  $38                                         ; $66a7: $ff
	res  3, e                                        ; $66a8: $cb $9b
	rst  $38                                         ; $66aa: $ff
	rst  $38                                         ; $66ab: $ff
	rst  $38                                         ; $66ac: $ff
	rst  $38                                         ; $66ad: $ff
	or   l                                           ; $66ae: $b5
	ld   de, $1111                                   ; $66af: $11 $11 $11
	ld   de, $8c13                                   ; $66b2: $11 $13 $8c
	cp   $ff                                         ; $66b5: $fe $ff
	rst  $38                                         ; $66b7: $ff
	rst  $38                                         ; $66b8: $ff

Call_0c7_66b9:
	rst  $38                                         ; $66b9: $ff
	ld   a, [$ffdf]                                  ; $66ba: $fa $df $ff
	rst  $38                                         ; $66bd: $ff
	rst  $38                                         ; $66be: $ff
	db   $fd                                         ; $66bf: $fd
	add  c                                           ; $66c0: $81
	ld   de, $1111                                   ; $66c1: $11 $11 $11
	ld   de, $2711                                   ; $66c4: $11 $11 $27
	ld   a, h                                        ; $66c7: $7c
	rst  JumpTable                                         ; $66c8: $df
	rst  $38                                         ; $66c9: $ff
	rst  $38                                         ; $66ca: $ff
	rst  $38                                         ; $66cb: $ff
	rst  $28                                         ; $66cc: $ef
	rst  $38                                         ; $66cd: $ff
	rst  $38                                         ; $66ce: $ff
	rst  $38                                         ; $66cf: $ff
	rst  $38                                         ; $66d0: $ff
	db   $ec                                         ; $66d1: $ec
	ld   [hl], d                                     ; $66d2: $72
	ld   de, $1111                                   ; $66d3: $11 $11 $11
	ld   de, $1111                                   ; $66d6: $11 $11 $11
	inc  d                                           ; $66d9: $14
	ld   a, [hl]                                     ; $66da: $7e
	rst  $38                                         ; $66db: $ff
	rst  $38                                         ; $66dc: $ff
	rst  $38                                         ; $66dd: $ff
	rst  $38                                         ; $66de: $ff
	rst  $38                                         ; $66df: $ff
	rst  $38                                         ; $66e0: $ff
	rst  $38                                         ; $66e1: $ff
	rst  $38                                         ; $66e2: $ff
	rst  $38                                         ; $66e3: $ff
	jp   z, $1163                                    ; $66e4: $ca $63 $11

	ld   de, $1111                                   ; $66e7: $11 $11 $11
	ld   de, $1611                                   ; $66ea: $11 $11 $16
	xor  a                                           ; $66ed: $af
	rst  $38                                         ; $66ee: $ff
	rst  $38                                         ; $66ef: $ff
	rst  $38                                         ; $66f0: $ff
	rst  $38                                         ; $66f1: $ff
	rst  $38                                         ; $66f2: $ff
	rst  $38                                         ; $66f3: $ff
	rst  $38                                         ; $66f4: $ff
	rst  $38                                         ; $66f5: $ff
	ei                                               ; $66f6: $fb
	ld   [hl], d                                     ; $66f7: $72
	ld   de, $1111                                   ; $66f8: $11 $11 $11
	ld   de, $1111                                   ; $66fb: $11 $11 $11
	ld   d, $ad                                      ; $66fe: $16 $ad
	rst  $38                                         ; $6700: $ff
	rst  $38                                         ; $6701: $ff
	rst  $38                                         ; $6702: $ff
	rst  $38                                         ; $6703: $ff
	rst  $38                                         ; $6704: $ff
	rst  $38                                         ; $6705: $ff
	rst  $38                                         ; $6706: $ff
	rst  $38                                         ; $6707: $ff
	db   $fc                                         ; $6708: $fc
	ld   h, d                                        ; $6709: $62
	ld   de, $1111                                   ; $670a: $11 $11 $11
	ld   de, $1111                                   ; $670d: $11 $11 $11
	inc  d                                           ; $6710: $14
	xor  e                                           ; $6711: $ab
	rst  $38                                         ; $6712: $ff
	rst  $38                                         ; $6713: $ff
	rst  $38                                         ; $6714: $ff
	rst  $38                                         ; $6715: $ff
	rst  $38                                         ; $6716: $ff
	rst  $38                                         ; $6717: $ff
	rst  $38                                         ; $6718: $ff
	rst  $38                                         ; $6719: $ff
	db   $fd                                         ; $671a: $fd
	ld   h, d                                        ; $671b: $62
	ld   de, $1111                                   ; $671c: $11 $11 $11
	ld   de, $1111                                   ; $671f: $11 $11 $11
	inc  de                                          ; $6722: $13
	sbc  c                                           ; $6723: $99
	rst  JumpTable                                         ; $6724: $df
	rst  $38                                         ; $6725: $ff
	rst  $38                                         ; $6726: $ff
	rst  $38                                         ; $6727: $ff
	rst  $38                                         ; $6728: $ff
	rst  $38                                         ; $6729: $ff
	rst  $38                                         ; $672a: $ff
	rst  $38                                         ; $672b: $ff
	cp   $82                                         ; $672c: $fe $82
	ld   de, $1111                                   ; $672e: $11 $11 $11
	ld   de, $1111                                   ; $6731: $11 $11 $11
	ld   de, $bf69                                   ; $6734: $11 $69 $bf
	rst  $38                                         ; $6737: $ff
	rst  $38                                         ; $6738: $ff
	rst  $38                                         ; $6739: $ff
	rst  $38                                         ; $673a: $ff
	rst  $38                                         ; $673b: $ff
	rst  $38                                         ; $673c: $ff
	rst  $38                                         ; $673d: $ff
	rst  $38                                         ; $673e: $ff
	and  d                                           ; $673f: $a2
	ld   de, $1111                                   ; $6740: $11 $11 $11
	ld   de, $1111                                   ; $6743: $11 $11 $11
	ld   de, $ae39                                   ; $6746: $11 $39 $ae
	rst  $38                                         ; $6749: $ff
	rst  $38                                         ; $674a: $ff
	rst  $38                                         ; $674b: $ff
	rst  $38                                         ; $674c: $ff
	rst  $38                                         ; $674d: $ff
	rst  $38                                         ; $674e: $ff
	rst  $38                                         ; $674f: $ff
	rst  $38                                         ; $6750: $ff
	or   h                                           ; $6751: $b4
	ld   de, $1111                                   ; $6752: $11 $11 $11
	ld   de, $1111                                   ; $6755: $11 $11 $11
	ld   de, $ab17                                   ; $6758: $11 $17 $ab
	rst  $38                                         ; $675b: $ff
	rst  $38                                         ; $675c: $ff
	rst  $38                                         ; $675d: $ff
	rst  $38                                         ; $675e: $ff
	rst  $38                                         ; $675f: $ff
	rst  $38                                         ; $6760: $ff
	rst  $38                                         ; $6761: $ff
	rst  $38                                         ; $6762: $ff
	rst  ToBoot                                         ; $6763: $c7
	ld   de, $1111                                   ; $6764: $11 $11 $11
	ld   de, $1111                                   ; $6767: $11 $11 $11
	ld   de, $8a12                                   ; $676a: $11 $12 $8a
	rst  JumpTable                                         ; $676d: $df
	rst  $38                                         ; $676e: $ff
	rst  $38                                         ; $676f: $ff
	rst  $38                                         ; $6770: $ff
	rst  $38                                         ; $6771: $ff
	rst  $38                                         ; $6772: $ff
	rst  $38                                         ; $6773: $ff
	rst  $38                                         ; $6774: $ff
	jp   c, $1151                                    ; $6775: $da $51 $11

	ld   de, $1111                                   ; $6778: $11 $11 $11
	ld   de, $1111                                   ; $677b: $11 $11 $11
	ld   c, c                                        ; $677e: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $677f: $cf
	rst  $38                                         ; $6780: $ff
	rst  $38                                         ; $6781: $ff
	rst  $38                                         ; $6782: $ff
	rst  $38                                         ; $6783: $ff
	rst  $38                                         ; $6784: $ff
	rst  $38                                         ; $6785: $ff
	rst  $38                                         ; $6786: $ff
	db   $fd                                         ; $6787: $fd
	add  h                                           ; $6788: $84
	ld   de, $1111                                   ; $6789: $11 $11 $11
	ld   de, $1111                                   ; $678c: $11 $11 $11
	ld   de, $ad15                                   ; $678f: $11 $15 $ad
	rst  $38                                         ; $6792: $ff
	rst  $38                                         ; $6793: $ff
	rst  $38                                         ; $6794: $ff
	rst  $38                                         ; $6795: $ff
	rst  $38                                         ; $6796: $ff
	rst  $38                                         ; $6797: $ff
	rst  $38                                         ; $6798: $ff
	rst  $38                                         ; $6799: $ff
	rst  ToBoot                                         ; $679a: $c7
	ld   hl, $1111                                   ; $679b: $21 $11 $11
	ld   de, $1111                                   ; $679e: $11 $11 $11
	ld   de, $6b11                                   ; $67a1: $11 $11 $6b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67a4: $cf
	rst  $38                                         ; $67a5: $ff
	rst  $38                                         ; $67a6: $ff
	rst  $38                                         ; $67a7: $ff
	rst  $38                                         ; $67a8: $ff
	rst  $38                                         ; $67a9: $ff
	rst  $38                                         ; $67aa: $ff
	rst  $38                                         ; $67ab: $ff
	db   $fc                                         ; $67ac: $fc
	ld   h, e                                        ; $67ad: $63
	ld   de, $1111                                   ; $67ae: $11 $11 $11
	ld   de, $1111                                   ; $67b1: $11 $11 $11
	ld   de, $ad15                                   ; $67b4: $11 $15 $ad
	rst  $38                                         ; $67b7: $ff
	rst  $38                                         ; $67b8: $ff
	rst  $38                                         ; $67b9: $ff
	rst  $38                                         ; $67ba: $ff
	rst  $38                                         ; $67bb: $ff
	rst  $38                                         ; $67bc: $ff
	rst  $38                                         ; $67bd: $ff
	rst  $38                                         ; $67be: $ff
	rst  ToBoot                                         ; $67bf: $c7
	ld   sp, $1111                                   ; $67c0: $31 $11 $11
	ld   de, $1111                                   ; $67c3: $11 $11 $11
	ld   de, $4a11                                   ; $67c6: $11 $11 $4a

Call_0c7_67c9:
	rst  JumpTable                                         ; $67c9: $df
	rst  $38                                         ; $67ca: $ff
	rst  $38                                         ; $67cb: $ff
	rst  $38                                         ; $67cc: $ff
	rst  $38                                         ; $67cd: $ff
	rst  $38                                         ; $67ce: $ff
	rst  $38                                         ; $67cf: $ff
	rst  $38                                         ; $67d0: $ff
	db   $fc                                         ; $67d1: $fc
	ld   [hl], e                                     ; $67d2: $73
	ld   de, $1111                                   ; $67d3: $11 $11 $11
	ld   de, $1111                                   ; $67d6: $11 $11 $11
	ld   de, $9c13                                   ; $67d9: $11 $13 $9c
	rst  $28                                         ; $67dc: $ef
	rst  $38                                         ; $67dd: $ff
	rst  $38                                         ; $67de: $ff
	rst  $38                                         ; $67df: $ff
	rst  $38                                         ; $67e0: $ff
	rst  $38                                         ; $67e1: $ff
	rst  $38                                         ; $67e2: $ff
	rst  $38                                         ; $67e3: $ff
	ret  c                                           ; $67e4: $d8

	ld   b, c                                        ; $67e5: $41
	ld   de, $1111                                   ; $67e6: $11 $11 $11
	ld   de, $1111                                   ; $67e9: $11 $11 $11
	ld   de, $ac16                                   ; $67ec: $11 $16 $ac
	rst  $38                                         ; $67ef: $ff
	rst  $38                                         ; $67f0: $ff
	rst  $38                                         ; $67f1: $ff
	rst  $38                                         ; $67f2: $ff
	rst  $38                                         ; $67f3: $ff
	rst  $38                                         ; $67f4: $ff
	rst  $38                                         ; $67f5: $ff
	rst  $38                                         ; $67f6: $ff
	rst  ToBoot                                         ; $67f7: $c7
	ld   sp, $1111                                   ; $67f8: $31 $11 $11
	ld   de, $1111                                   ; $67fb: $11 $11 $11
	ld   de, $2711                                   ; $67fe: $11 $11 $27
	xor  l                                           ; $6801: $ad
	rst  $38                                         ; $6802: $ff
	rst  $38                                         ; $6803: $ff
	rst  $38                                         ; $6804: $ff
	rst  $38                                         ; $6805: $ff
	rst  $38                                         ; $6806: $ff
	rst  $38                                         ; $6807: $ff
	rst  $38                                         ; $6808: $ff
	rst  $38                                         ; $6809: $ff
	or   a                                           ; $680a: $b7
	ld   b, c                                        ; $680b: $41
	ld   de, $1111                                   ; $680c: $11 $11 $11
	ld   de, $1111                                   ; $680f: $11 $11 $11
	ld   de, $9c16                                   ; $6812: $11 $16 $9c
	rst  $38                                         ; $6815: $ff
	rst  $38                                         ; $6816: $ff
	rst  $38                                         ; $6817: $ff
	rst  $38                                         ; $6818: $ff
	rst  $38                                         ; $6819: $ff
	rst  $38                                         ; $681a: $ff
	rst  $38                                         ; $681b: $ff
	rst  $38                                         ; $681c: $ff
	ld   [$1173], a                                  ; $681d: $ea $73 $11
	ld   de, $1111                                   ; $6820: $11 $11 $11
	ld   de, $1111                                   ; $6823: $11 $11 $11
	ld   de, $ad47                                   ; $6826: $11 $47 $ad
	rst  $38                                         ; $6829: $ff
	rst  $38                                         ; $682a: $ff
	rst  $38                                         ; $682b: $ff
	rst  $38                                         ; $682c: $ff
	rst  $38                                         ; $682d: $ff
	rst  $38                                         ; $682e: $ff
	rst  $38                                         ; $682f: $ff
	rst  $38                                         ; $6830: $ff
	ld   [$2174], a                                  ; $6831: $ea $74 $21
	ld   de, $1111                                   ; $6834: $11 $11 $11
	ld   de, $1111                                   ; $6837: $11 $11 $11
	ld   de, $7b13                                   ; $683a: $11 $13 $7b
	rst  $38                                         ; $683d: $ff
	rst  $38                                         ; $683e: $ff
	rst  $38                                         ; $683f: $ff
	rst  $38                                         ; $6840: $ff
	rst  $38                                         ; $6841: $ff
	rst  $38                                         ; $6842: $ff
	rst  $38                                         ; $6843: $ff
	rst  $38                                         ; $6844: $ff
	cp   $ca                                         ; $6845: $fe $ca
	ld   [hl], l                                     ; $6847: $75
	ld   hl, $1111                                   ; $6848: $21 $11 $11
	ld   de, $1111                                   ; $684b: $11 $11 $11
	ld   de, $1111                                   ; $684e: $11 $11 $11
	ld   c, c                                        ; $6851: $49
	rst  JumpTable                                         ; $6852: $df
	rst  $38                                         ; $6853: $ff
	rst  $38                                         ; $6854: $ff
	rst  $38                                         ; $6855: $ff
	rst  $38                                         ; $6856: $ff
	rst  $38                                         ; $6857: $ff
	rst  $38                                         ; $6858: $ff
	rst  $38                                         ; $6859: $ff
	rst  $38                                         ; $685a: $ff
	db   $fd                                         ; $685b: $fd
	cp   d                                           ; $685c: $ba
	ld   d, e                                        ; $685d: $53
	ld   de, $1111                                   ; $685e: $11 $11 $11
	ld   de, $1111                                   ; $6861: $11 $11 $11
	ld   de, $1111                                   ; $6864: $11 $11 $11
	ld   b, a                                        ; $6867: $47
	adc  $ff                                         ; $6868: $ce $ff
	rst  $38                                         ; $686a: $ff
	rst  $38                                         ; $686b: $ff
	rst  $38                                         ; $686c: $ff
	rst  $38                                         ; $686d: $ff
	rst  $38                                         ; $686e: $ff
	rst  $38                                         ; $686f: $ff
	rst  $38                                         ; $6870: $ff
	rst  $38                                         ; $6871: $ff
	ret                                              ; $6872: $c9


	ld   h, e                                        ; $6873: $63
	ld   de, $1111                                   ; $6874: $11 $11 $11
	ld   de, $1111                                   ; $6877: $11 $11 $11
	ld   de, $1111                                   ; $687a: $11 $11 $11
	ld   [de], a                                     ; $687d: $12
	ld   e, c                                        ; $687e: $59
	cp   [hl]                                        ; $687f: $be
	rst  $38                                         ; $6880: $ff
	rst  $38                                         ; $6881: $ff
	rst  $38                                         ; $6882: $ff
	rst  $38                                         ; $6883: $ff
	rst  $38                                         ; $6884: $ff
	rst  $38                                         ; $6885: $ff
	rst  $38                                         ; $6886: $ff
	rst  $38                                         ; $6887: $ff
	cp   $ca                                         ; $6888: $fe $ca
	ld   [hl], l                                     ; $688a: $75
	ld   hl, $1111                                   ; $688b: $21 $11 $11
	ld   de, $1111                                   ; $688e: $11 $11 $11
	ld   de, $1111                                   ; $6891: $11 $11 $11
	ld   de, $5713                                   ; $6894: $11 $13 $57
	sbc  e                                           ; $6897: $9b
	rst  $28                                         ; $6898: $ef
	rst  $38                                         ; $6899: $ff
	rst  $38                                         ; $689a: $ff
	rst  $38                                         ; $689b: $ff
	rst  $38                                         ; $689c: $ff
	rst  $38                                         ; $689d: $ff
	rst  $38                                         ; $689e: $ff
	rst  $38                                         ; $689f: $ff
	rst  $38                                         ; $68a0: $ff
	db   $ec                                         ; $68a1: $ec
	xor  c                                           ; $68a2: $a9
	add  [hl]                                        ; $68a3: $86
	ld   b, e                                        ; $68a4: $43
	ld   hl, $1111                                   ; $68a5: $21 $11 $11
	ld   de, $1111                                   ; $68a8: $11 $11 $11
	ld   de, $1111                                   ; $68ab: $11 $11 $11
	ld   [de], a                                     ; $68ae: $12
	ld   [hl], $8b                                   ; $68af: $36 $8b
	rst  $28                                         ; $68b1: $ef
	rst  $38                                         ; $68b2: $ff
	rst  $38                                         ; $68b3: $ff
	rst  $38                                         ; $68b4: $ff
	rst  $38                                         ; $68b5: $ff
	rst  $38                                         ; $68b6: $ff
	rst  $38                                         ; $68b7: $ff
	rst  $38                                         ; $68b8: $ff
	res  4, a                                        ; $68b9: $cb $a7
	add  h                                           ; $68bb: $84
	ld   de, $1111                                   ; $68bc: $11 $11 $11
	ld   de, $1111                                   ; $68bf: $11 $11 $11
	ld   de, $1111                                   ; $68c2: $11 $11 $11
	daa                                              ; $68c5: $27
	rst  $28                                         ; $68c6: $ef
	rst  $38                                         ; $68c7: $ff
	rst  $38                                         ; $68c8: $ff
	rst  $38                                         ; $68c9: $ff
	rst  $38                                         ; $68ca: $ff
	rst  $38                                         ; $68cb: $ff
	rst  $38                                         ; $68cc: $ff
	xor  $de                                         ; $68cd: $ee $de
	call c, $99b9                                    ; $68cf: $dc $b9 $99
	ld   h, e                                        ; $68d2: $63
	ld   de, $1111                                   ; $68d3: $11 $11 $11
	ld   de, $1111                                   ; $68d6: $11 $11 $11
	inc  de                                          ; $68d9: $13
	sbc  [hl]                                        ; $68da: $9e
	rst  $38                                         ; $68db: $ff
	rst  $38                                         ; $68dc: $ff
	rst  $38                                         ; $68dd: $ff
	rst  $38                                         ; $68de: $ff
	rst  $38                                         ; $68df: $ff
	rst  $38                                         ; $68e0: $ff
	rst  $38                                         ; $68e1: $ff
	cp   $ef                                         ; $68e2: $fe $ef
	cp   $db                                         ; $68e4: $fe $db
	sub  e                                           ; $68e6: $93
	ld   de, $1111                                   ; $68e7: $11 $11 $11
	ld   de, $1111                                   ; $68ea: $11 $11 $11
	ld   a, [de]                                     ; $68ed: $1a
	rst  $38                                         ; $68ee: $ff
	rst  $38                                         ; $68ef: $ff
	rst  $38                                         ; $68f0: $ff
	rst  $38                                         ; $68f1: $ff
	rst  $38                                         ; $68f2: $ff
	db   $fd                                         ; $68f3: $fd
	rst  $38                                         ; $68f4: $ff
	rst  $38                                         ; $68f5: $ff
	rst  $38                                         ; $68f6: $ff
	rst  $38                                         ; $68f7: $ff
	rst  $38                                         ; $68f8: $ff
	rst  $38                                         ; $68f9: $ff
	push de                                          ; $68fa: $d5
	ld   de, $1111                                   ; $68fb: $11 $11 $11
	ld   de, $1111                                   ; $68fe: $11 $11 $11
	ld   [de], a                                     ; $6901: $12
	rst  $38                                         ; $6902: $ff
	rst  $38                                         ; $6903: $ff
	rst  $38                                         ; $6904: $ff
	rst  $38                                         ; $6905: $ff
	rst  $38                                         ; $6906: $ff
	rst  $38                                         ; $6907: $ff
	xor  [hl]                                        ; $6908: $ae
	rst  $38                                         ; $6909: $ff
	rst  $38                                         ; $690a: $ff
	rst  $38                                         ; $690b: $ff
	rst  $38                                         ; $690c: $ff
	rst  $38                                         ; $690d: $ff
	jp   hl                                          ; $690e: $e9


	ld   de, $1111                                   ; $690f: $11 $11 $11
	ld   de, $1111                                   ; $6912: $11 $11 $11
	ld   de, $ffaf                                   ; $6915: $11 $af $ff
	rst  $38                                         ; $6918: $ff
	rst  $38                                         ; $6919: $ff
	rst  $38                                         ; $691a: $ff
	rst  $38                                         ; $691b: $ff
	db   $ec                                         ; $691c: $ec
	rst  $38                                         ; $691d: $ff
	rst  $38                                         ; $691e: $ff
	rst  $38                                         ; $691f: $ff
	rst  $38                                         ; $6920: $ff
	rst  $38                                         ; $6921: $ff
	db   $fc                                         ; $6922: $fc
	ld   h, c                                        ; $6923: $61
	ld   de, $1111                                   ; $6924: $11 $11 $11
	ld   de, $1111                                   ; $6927: $11 $11 $11
	ld   d, $ff                                      ; $692a: $16 $ff
	rst  $38                                         ; $692c: $ff
	rst  $38                                         ; $692d: $ff
	rst  $38                                         ; $692e: $ff
	rst  $38                                         ; $692f: $ff
	rst  $38                                         ; $6930: $ff
	rst  JumpTable                                         ; $6931: $df
	rst  $38                                         ; $6932: $ff
	rst  $38                                         ; $6933: $ff
	rst  $38                                         ; $6934: $ff
	rst  $38                                         ; $6935: $ff
	rst  $38                                         ; $6936: $ff
	ld   sp, hl                                      ; $6937: $f9
	ld   de, $1111                                   ; $6938: $11 $11 $11
	ld   de, $1111                                   ; $693b: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $693e: $11 $12 $ff
	rst  $38                                         ; $6941: $ff
	rst  $38                                         ; $6942: $ff
	rst  $38                                         ; $6943: $ff
	rst  $38                                         ; $6944: $ff
	rst  $38                                         ; $6945: $ff
	rst  $38                                         ; $6946: $ff
	rst  $38                                         ; $6947: $ff
	rst  $38                                         ; $6948: $ff
	rst  $38                                         ; $6949: $ff
	rst  $38                                         ; $694a: $ff
	rst  $38                                         ; $694b: $ff
	ld   [$1121], a                                  ; $694c: $ea $21 $11
	ld   de, $1111                                   ; $694f: $11 $11 $11
	ld   de, $1111                                   ; $6952: $11 $11 $11
	ld   a, a                                        ; $6955: $7f
	rst  $38                                         ; $6956: $ff
	rst  $38                                         ; $6957: $ff
	rst  $38                                         ; $6958: $ff
	rst  $38                                         ; $6959: $ff
	rst  $38                                         ; $695a: $ff
	rst  $38                                         ; $695b: $ff
	rst  $38                                         ; $695c: $ff
	rst  $38                                         ; $695d: $ff
	rst  $38                                         ; $695e: $ff
	rst  $38                                         ; $695f: $ff
	rst  $38                                         ; $6960: $ff
	db   $fd                                         ; $6961: $fd
	ld   [hl], c                                     ; $6962: $71
	ld   de, $1111                                   ; $6963: $11 $11 $11
	ld   de, $1111                                   ; $6966: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $6969: $11 $13 $ff
	rst  $38                                         ; $696c: $ff
	rst  $38                                         ; $696d: $ff
	rst  $38                                         ; $696e: $ff
	rst  $38                                         ; $696f: $ff
	rst  $38                                         ; $6970: $ff
	rst  $38                                         ; $6971: $ff
	rst  $38                                         ; $6972: $ff
	rst  $38                                         ; $6973: $ff
	rst  $38                                         ; $6974: $ff
	rst  $38                                         ; $6975: $ff
	rst  $38                                         ; $6976: $ff
	ret  c                                           ; $6977: $d8

	ld   de, $1111                                   ; $6978: $11 $11 $11
	ld   de, $1111                                   ; $697b: $11 $11 $11
	ld   de, $1611                                   ; $697e: $11 $11 $16
	rst  $38                                         ; $6981: $ff
	rst  $38                                         ; $6982: $ff
	rst  $38                                         ; $6983: $ff
	rst  $38                                         ; $6984: $ff
	rst  $38                                         ; $6985: $ff
	rst  $38                                         ; $6986: $ff
	rst  $38                                         ; $6987: $ff
	rst  $38                                         ; $6988: $ff
	rst  $38                                         ; $6989: $ff
	rst  $38                                         ; $698a: $ff
	rst  $38                                         ; $698b: $ff
	cp   $b4                                         ; $698c: $fe $b4
	ld   de, $1111                                   ; $698e: $11 $11 $11
	ld   de, $1111                                   ; $6991: $11 $11 $11
	ld   de, $1611                                   ; $6994: $11 $11 $16
	rst  $38                                         ; $6997: $ff
	rst  $38                                         ; $6998: $ff
	rst  $38                                         ; $6999: $ff
	rst  $38                                         ; $699a: $ff
	rst  $38                                         ; $699b: $ff
	rst  $38                                         ; $699c: $ff
	rst  $38                                         ; $699d: $ff
	rst  $38                                         ; $699e: $ff
	rst  $38                                         ; $699f: $ff
	rst  $38                                         ; $69a0: $ff
	rst  $38                                         ; $69a1: $ff
	cp   $a6                                         ; $69a2: $fe $a6
	ld   sp, $1111                                   ; $69a4: $31 $11 $11
	ld   de, $1111                                   ; $69a7: $11 $11 $11
	ld   de, $1411                                   ; $69aa: $11 $11 $14
	rst  JumpTable                                         ; $69ad: $df
	rst  $38                                         ; $69ae: $ff
	rst  $38                                         ; $69af: $ff
	rst  $38                                         ; $69b0: $ff
	rst  $38                                         ; $69b1: $ff
	rst  $38                                         ; $69b2: $ff
	rst  $38                                         ; $69b3: $ff
	rst  $38                                         ; $69b4: $ff
	rst  $38                                         ; $69b5: $ff
	rst  $38                                         ; $69b6: $ff
	rst  $38                                         ; $69b7: $ff
	rst  $38                                         ; $69b8: $ff
	reti                                             ; $69b9: $d9


	ld   sp, $1111                                   ; $69ba: $31 $11 $11
	ld   de, $1111                                   ; $69bd: $11 $11 $11
	ld   de, $1111                                   ; $69c0: $11 $11 $11
	inc  a                                           ; $69c3: $3c
	rst  $38                                         ; $69c4: $ff
	rst  $38                                         ; $69c5: $ff
	rst  $38                                         ; $69c6: $ff
	rst  $38                                         ; $69c7: $ff
	rst  $38                                         ; $69c8: $ff
	rst  $38                                         ; $69c9: $ff
	rst  $38                                         ; $69ca: $ff
	rst  $38                                         ; $69cb: $ff
	rst  $38                                         ; $69cc: $ff
	rst  $38                                         ; $69cd: $ff
	rst  $38                                         ; $69ce: $ff
	db   $fd                                         ; $69cf: $fd
	and  [hl]                                        ; $69d0: $a6
	ld   sp, $1111                                   ; $69d1: $31 $11 $11
	ld   de, $1111                                   ; $69d4: $11 $11 $11
	ld   de, $1111                                   ; $69d7: $11 $11 $11
	ld   l, a                                        ; $69da: $6f
	rst  $38                                         ; $69db: $ff
	rst  $38                                         ; $69dc: $ff
	rst  $38                                         ; $69dd: $ff
	rst  $38                                         ; $69de: $ff
	rst  $38                                         ; $69df: $ff
	rst  $38                                         ; $69e0: $ff
	rst  $38                                         ; $69e1: $ff
	rst  $38                                         ; $69e2: $ff
	rst  $38                                         ; $69e3: $ff
	rst  $38                                         ; $69e4: $ff
	rst  $38                                         ; $69e5: $ff
	db   $db                                         ; $69e6: $db
	sub  [hl]                                        ; $69e7: $96
	ld   hl, $1111                                   ; $69e8: $21 $11 $11
	ld   de, $1111                                   ; $69eb: $11 $11 $11
	ld   de, $1111                                   ; $69ee: $11 $11 $11
	ld   e, l                                        ; $69f1: $5d
	rst  $28                                         ; $69f2: $ef
	rst  $38                                         ; $69f3: $ff
	rst  $38                                         ; $69f4: $ff
	rst  $38                                         ; $69f5: $ff
	rst  $38                                         ; $69f6: $ff
	rst  $38                                         ; $69f7: $ff
	rst  $38                                         ; $69f8: $ff
	rst  $38                                         ; $69f9: $ff
	rst  $38                                         ; $69fa: $ff
	rst  $38                                         ; $69fb: $ff
	db   $fd                                         ; $69fc: $fd
	xor  c                                           ; $69fd: $a9
	halt                                             ; $69fe: $76
	ld   d, d                                        ; $69ff: $52
	ld   de, $1111                                   ; $6a00: $11 $11 $11
	ld   de, $1111                                   ; $6a03: $11 $11 $11
	ld   de, $1111                                   ; $6a06: $11 $11 $11
	ld   b, l                                        ; $6a09: $45
	ld   l, c                                        ; $6a0a: $69
	xor  e                                           ; $6a0b: $ab
	rst  $38                                         ; $6a0c: $ff
	rst  $38                                         ; $6a0d: $ff
	rst  $38                                         ; $6a0e: $ff
	rst  $38                                         ; $6a0f: $ff
	rst  $38                                         ; $6a10: $ff
	rst  $38                                         ; $6a11: $ff
	rst  $38                                         ; $6a12: $ff
	rst  $38                                         ; $6a13: $ff
	rst  $38                                         ; $6a14: $ff
	rst  $38                                         ; $6a15: $ff
	rst  $38                                         ; $6a16: $ff
	db   $ec                                         ; $6a17: $ec
	cp   d                                           ; $6a18: $ba
	add  [hl]                                        ; $6a19: $86
	ld   d, e                                        ; $6a1a: $53
	ld   hl, $1111                                   ; $6a1b: $21 $11 $11
	ld   de, $1111                                   ; $6a1e: $11 $11 $11
	ld   de, $1111                                   ; $6a21: $11 $11 $11
	dec  h                                           ; $6a24: $25
	adc  h                                           ; $6a25: $8c
	rst  $28                                         ; $6a26: $ef
	rst  $38                                         ; $6a27: $ff
	rst  $38                                         ; $6a28: $ff
	rst  $38                                         ; $6a29: $ff
	rst  $38                                         ; $6a2a: $ff
	rst  $38                                         ; $6a2b: $ff
	rst  $38                                         ; $6a2c: $ff
	rst  $38                                         ; $6a2d: $ff
	rst  $38                                         ; $6a2e: $ff
	cp   $ca                                         ; $6a2f: $fe $ca
	add  [hl]                                        ; $6a31: $86
	ld   b, c                                        ; $6a32: $41
	ld   de, $1111                                   ; $6a33: $11 $11 $11
	ld   de, $1111                                   ; $6a36: $11 $11 $11
	ld   de, $1111                                   ; $6a39: $11 $11 $11
	ld   [de], a                                     ; $6a3c: $12
	ld   b, a                                        ; $6a3d: $47
	cp   a                                           ; $6a3e: $bf
	rst  $38                                         ; $6a3f: $ff
	rst  $38                                         ; $6a40: $ff
	rst  $38                                         ; $6a41: $ff
	rst  $38                                         ; $6a42: $ff
	rst  $38                                         ; $6a43: $ff
	rst  $38                                         ; $6a44: $ff
	rst  $38                                         ; $6a45: $ff
	rst  $38                                         ; $6a46: $ff
	rst  $38                                         ; $6a47: $ff
	db   $ec                                         ; $6a48: $ec
	sub  a                                           ; $6a49: $97
	ld   d, e                                        ; $6a4a: $53
	ld   de, $1111                                   ; $6a4b: $11 $11 $11
	ld   de, $1111                                   ; $6a4e: $11 $11 $11
	ld   de, $1111                                   ; $6a51: $11 $11 $11
	ld   de, $6913                                   ; $6a54: $11 $13 $69
	rst  JumpTable                                         ; $6a57: $df
	rst  $38                                         ; $6a58: $ff
	rst  $38                                         ; $6a59: $ff
	rst  $38                                         ; $6a5a: $ff
	rst  $38                                         ; $6a5b: $ff
	rst  $38                                         ; $6a5c: $ff
	rst  $38                                         ; $6a5d: $ff
	rst  $38                                         ; $6a5e: $ff
	rst  $38                                         ; $6a5f: $ff
	rst  $38                                         ; $6a60: $ff
	db   $eb                                         ; $6a61: $eb
	sub  [hl]                                        ; $6a62: $96
	ld   b, e                                        ; $6a63: $43
	ld   de, $1111                                   ; $6a64: $11 $11 $11
	ld   de, $1111                                   ; $6a67: $11 $11 $11
	ld   de, $1111                                   ; $6a6a: $11 $11 $11
	ld   de, $6913                                   ; $6a6d: $11 $13 $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a70: $cf
	rst  $38                                         ; $6a71: $ff
	rst  $38                                         ; $6a72: $ff
	rst  $38                                         ; $6a73: $ff
	rst  $38                                         ; $6a74: $ff
	rst  $38                                         ; $6a75: $ff
	rst  $38                                         ; $6a76: $ff
	rst  $38                                         ; $6a77: $ff
	rst  $38                                         ; $6a78: $ff
	rst  $38                                         ; $6a79: $ff
	call c, Call_0c7_53a7                            ; $6a7a: $dc $a7 $53
	ld   de, $1111                                   ; $6a7d: $11 $11 $11
	ld   de, $1111                                   ; $6a80: $11 $11 $11
	ld   de, $1111                                   ; $6a83: $11 $11 $11
	ld   de, $5812                                   ; $6a86: $11 $12 $58
	cp   [hl]                                        ; $6a89: $be
	rst  $38                                         ; $6a8a: $ff
	rst  $38                                         ; $6a8b: $ff
	rst  $38                                         ; $6a8c: $ff
	rst  $38                                         ; $6a8d: $ff
	rst  $38                                         ; $6a8e: $ff
	rst  $38                                         ; $6a8f: $ff
	rst  $38                                         ; $6a90: $ff
	rst  $38                                         ; $6a91: $ff
	rst  $38                                         ; $6a92: $ff
	db   $fd                                         ; $6a93: $fd
	xor  c                                           ; $6a94: $a9
	ld   h, l                                        ; $6a95: $65
	ld   sp, $1111                                   ; $6a96: $31 $11 $11
	ld   de, $1111                                   ; $6a99: $11 $11 $11
	ld   de, $1111                                   ; $6a9c: $11 $11 $11
	ld   de, $2511                                   ; $6a9f: $11 $11 $25
	adc  e                                           ; $6aa2: $8b
	rst  $28                                         ; $6aa3: $ef
	rst  $38                                         ; $6aa4: $ff
	rst  $38                                         ; $6aa5: $ff
	rst  $38                                         ; $6aa6: $ff
	rst  $38                                         ; $6aa7: $ff
	rst  $38                                         ; $6aa8: $ff
	rst  $38                                         ; $6aa9: $ff
	rst  $38                                         ; $6aaa: $ff
	rst  $38                                         ; $6aab: $ff
	cp   $da                                         ; $6aac: $fe $da
	halt                                             ; $6aae: $76
	ld   d, e                                        ; $6aaf: $53
	ld   de, $1111                                   ; $6ab0: $11 $11 $11
	ld   de, $1111                                   ; $6ab3: $11 $11 $11
	ld   de, $1111                                   ; $6ab6: $11 $11 $11
	ld   de, $5812                                   ; $6ab9: $11 $12 $58
	xor  l                                           ; $6abc: $ad
	rst  $38                                         ; $6abd: $ff
	rst  $38                                         ; $6abe: $ff
	rst  $38                                         ; $6abf: $ff
	rst  $38                                         ; $6ac0: $ff
	rst  $38                                         ; $6ac1: $ff
	rst  $38                                         ; $6ac2: $ff
	rst  $38                                         ; $6ac3: $ff
	rst  $38                                         ; $6ac4: $ff
	rst  $38                                         ; $6ac5: $ff
	db   $fd                                         ; $6ac6: $fd
	xor  b                                           ; $6ac7: $a8
	ld   [hl], l                                     ; $6ac8: $75
	ld   [hl-], a                                    ; $6ac9: $32
	ld   de, $1111                                   ; $6aca: $11 $11 $11
	ld   de, $1111                                   ; $6acd: $11 $11 $11
	ld   de, $1111                                   ; $6ad0: $11 $11 $11
	ld   de, $6913                                   ; $6ad3: $11 $13 $69
	cp   [hl]                                        ; $6ad6: $be
	rst  $38                                         ; $6ad7: $ff
	rst  $38                                         ; $6ad8: $ff
	rst  $38                                         ; $6ad9: $ff
	rst  $38                                         ; $6ada: $ff
	rst  $38                                         ; $6adb: $ff
	rst  $38                                         ; $6adc: $ff
	rst  $38                                         ; $6add: $ff
	rst  $38                                         ; $6ade: $ff
	rst  $38                                         ; $6adf: $ff
	db   $ec                                         ; $6ae0: $ec
	xor  b                                           ; $6ae1: $a8
	sub  a                                           ; $6ae2: $97
	ld   de, $1121                                   ; $6ae3: $11 $21 $11
	ld   de, $1111                                   ; $6ae6: $11 $11 $11
	ld   de, $1111                                   ; $6ae9: $11 $11 $11
	ld   de, $6b12                                   ; $6aec: $11 $12 $6b
	rst  $28                                         ; $6aef: $ef
	rst  $38                                         ; $6af0: $ff
	rst  $38                                         ; $6af1: $ff
	rst  $38                                         ; $6af2: $ff
	rst  $38                                         ; $6af3: $ff
	rst  $38                                         ; $6af4: $ff
	rst  $38                                         ; $6af5: $ff
	rst  $38                                         ; $6af6: $ff
	rst  $38                                         ; $6af7: $ff
	cp   $dc                                         ; $6af8: $fe $dc
	cp   d                                           ; $6afa: $ba
	ld   [hl], l                                     ; $6afb: $75
	ld   [hl-], a                                    ; $6afc: $32
	ld   de, $1111                                   ; $6afd: $11 $11 $11
	ld   de, $1111                                   ; $6b00: $11 $11 $11
	ld   de, $1111                                   ; $6b03: $11 $11 $11
	ld   c, c                                        ; $6b06: $49
	rst  $38                                         ; $6b07: $ff
	rst  $38                                         ; $6b08: $ff
	rst  $38                                         ; $6b09: $ff
	rst  $38                                         ; $6b0a: $ff
	rst  $38                                         ; $6b0b: $ff
	rst  $38                                         ; $6b0c: $ff
	rst  $38                                         ; $6b0d: $ff
	rst  $38                                         ; $6b0e: $ff
	rst  $38                                         ; $6b0f: $ff
	rst  $38                                         ; $6b10: $ff
	rst  $38                                         ; $6b11: $ff
	db   $ed                                         ; $6b12: $ed
	xor  c                                           ; $6b13: $a9
	ld   [hl], l                                     ; $6b14: $75
	ld   sp, $1111                                   ; $6b15: $31 $11 $11
	ld   de, $1111                                   ; $6b18: $11 $11 $11
	ld   de, $1111                                   ; $6b1b: $11 $11 $11
	ld   de, $ef36                                   ; $6b1e: $11 $36 $ef
	rst  $38                                         ; $6b21: $ff
	rst  $38                                         ; $6b22: $ff
	rst  $38                                         ; $6b23: $ff
	rst  $38                                         ; $6b24: $ff
	rst  $38                                         ; $6b25: $ff
	rst  $38                                         ; $6b26: $ff
	rst  $38                                         ; $6b27: $ff
	rst  $38                                         ; $6b28: $ff
	rst  $38                                         ; $6b29: $ff
	rst  $38                                         ; $6b2a: $ff
	rst  $38                                         ; $6b2b: $ff
	res  0, [hl]                                     ; $6b2c: $cb $86
	ld   b, c                                        ; $6b2e: $41
	ld   de, $1111                                   ; $6b2f: $11 $11 $11
	ld   de, $1111                                   ; $6b32: $11 $11 $11
	ld   de, $1111                                   ; $6b35: $11 $11 $11
	rla                                              ; $6b38: $17
	rst  $38                                         ; $6b39: $ff
	rst  $38                                         ; $6b3a: $ff
	rst  $38                                         ; $6b3b: $ff
	rst  $38                                         ; $6b3c: $ff
	rst  $38                                         ; $6b3d: $ff
	rst  $38                                         ; $6b3e: $ff
	rst  $38                                         ; $6b3f: $ff
	rst  $38                                         ; $6b40: $ff
	rst  $38                                         ; $6b41: $ff
	rst  $38                                         ; $6b42: $ff
	rst  $38                                         ; $6b43: $ff
	rst  $38                                         ; $6b44: $ff
	jp   c, Jump_0c7_5385                            ; $6b45: $da $85 $53

	ld   de, $1111                                   ; $6b48: $11 $11 $11
	ld   de, $1111                                   ; $6b4b: $11 $11 $11
	ld   de, $1111                                   ; $6b4e: $11 $11 $11
	ld   de, $ff9f                                   ; $6b51: $11 $9f $ff
	rst  $38                                         ; $6b54: $ff
	rst  $38                                         ; $6b55: $ff
	rst  $38                                         ; $6b56: $ff
	rst  $38                                         ; $6b57: $ff
	rst  $38                                         ; $6b58: $ff
	rst  $38                                         ; $6b59: $ff
	rst  $38                                         ; $6b5a: $ff
	rst  $38                                         ; $6b5b: $ff
	rst  $38                                         ; $6b5c: $ff
	rst  $38                                         ; $6b5d: $ff
	db   $eb                                         ; $6b5e: $eb
	add  a                                           ; $6b5f: $87
	ld   h, h                                        ; $6b60: $64
	ld   sp, $1111                                   ; $6b61: $31 $11 $11
	ld   de, $1111                                   ; $6b64: $11 $11 $11
	ld   de, $1111                                   ; $6b67: $11 $11 $11
	ld   de, $ff4c                                   ; $6b6a: $11 $4c $ff
	rst  $38                                         ; $6b6d: $ff
	rst  $38                                         ; $6b6e: $ff
	rst  $38                                         ; $6b6f: $ff
	rst  $38                                         ; $6b70: $ff
	rst  $38                                         ; $6b71: $ff
	rst  $38                                         ; $6b72: $ff
	rst  $38                                         ; $6b73: $ff
	rst  $38                                         ; $6b74: $ff
	rst  $38                                         ; $6b75: $ff
	rst  $38                                         ; $6b76: $ff
	rst  $38                                         ; $6b77: $ff
	jp   z, $3164                                    ; $6b78: $ca $64 $31

	ld   de, $1111                                   ; $6b7b: $11 $11 $11
	ld   de, $1111                                   ; $6b7e: $11 $11 $11
	ld   de, $1111                                   ; $6b81: $11 $11 $11
	ld   h, $df                                      ; $6b84: $26 $df
	rst  $38                                         ; $6b86: $ff
	rst  $38                                         ; $6b87: $ff
	rst  $38                                         ; $6b88: $ff
	rst  $38                                         ; $6b89: $ff
	rst  $38                                         ; $6b8a: $ff
	rst  $38                                         ; $6b8b: $ff
	rst  $38                                         ; $6b8c: $ff
	rst  $38                                         ; $6b8d: $ff
	rst  $38                                         ; $6b8e: $ff
	rst  $38                                         ; $6b8f: $ff
	rst  $38                                         ; $6b90: $ff
	call c, Call_0c7_4296                            ; $6b91: $dc $96 $42
	ld   de, $1111                                   ; $6b94: $11 $11 $11
	ld   de, $1111                                   ; $6b97: $11 $11 $11
	ld   de, $1111                                   ; $6b9a: $11 $11 $11
	ld   de, $ff6b                                   ; $6b9d: $11 $6b $ff
	rst  $38                                         ; $6ba0: $ff
	rst  $38                                         ; $6ba1: $ff
	rst  $38                                         ; $6ba2: $ff
	rst  $38                                         ; $6ba3: $ff
	rst  $38                                         ; $6ba4: $ff
	rst  $38                                         ; $6ba5: $ff
	rst  $38                                         ; $6ba6: $ff
	rst  $38                                         ; $6ba7: $ff
	rst  $38                                         ; $6ba8: $ff
	rst  $38                                         ; $6ba9: $ff
	cp   $ca                                         ; $6baa: $fe $ca
	add  l                                           ; $6bac: $85
	ld   hl, $1111                                   ; $6bad: $21 $11 $11
	ld   de, $1111                                   ; $6bb0: $11 $11 $11
	ld   de, $1111                                   ; $6bb3: $11 $11 $11
	ld   de, $6d11                                   ; $6bb6: $11 $11 $6d
	rst  $38                                         ; $6bb9: $ff
	rst  $38                                         ; $6bba: $ff
	rst  $38                                         ; $6bbb: $ff
	rst  $38                                         ; $6bbc: $ff
	rst  $38                                         ; $6bbd: $ff
	rst  $38                                         ; $6bbe: $ff
	rst  $38                                         ; $6bbf: $ff
	rst  $38                                         ; $6bc0: $ff
	rst  $38                                         ; $6bc1: $ff
	rst  $38                                         ; $6bc2: $ff
	rst  $38                                         ; $6bc3: $ff
	cp   $ca                                         ; $6bc4: $fe $ca
	ld   [hl], h                                     ; $6bc6: $74
	ld   hl, $1111                                   ; $6bc7: $21 $11 $11
	ld   de, $1111                                   ; $6bca: $11 $11 $11
	ld   de, $1111                                   ; $6bcd: $11 $11 $11
	ld   de, $8f13                                   ; $6bd0: $11 $13 $8f
	rst  $38                                         ; $6bd3: $ff
	rst  $38                                         ; $6bd4: $ff
	rst  $38                                         ; $6bd5: $ff
	rst  $38                                         ; $6bd6: $ff
	rst  $38                                         ; $6bd7: $ff
	rst  $38                                         ; $6bd8: $ff
	rst  $38                                         ; $6bd9: $ff
	rst  $38                                         ; $6bda: $ff
	rst  $38                                         ; $6bdb: $ff
	rst  $38                                         ; $6bdc: $ff
	rst  $38                                         ; $6bdd: $ff
	db   $ed                                         ; $6bde: $ed
	xor  c                                           ; $6bdf: $a9
	ld   [hl], h                                     ; $6be0: $74
	ld   sp, $1111                                   ; $6be1: $31 $11 $11
	ld   de, $1111                                   ; $6be4: $11 $11 $11
	ld   de, $1111                                   ; $6be7: $11 $11 $11
	ld   de, $bf04                                   ; $6bea: $11 $04 $bf
	rst  $38                                         ; $6bed: $ff
	rst  $38                                         ; $6bee: $ff
	rst  $38                                         ; $6bef: $ff
	rst  $38                                         ; $6bf0: $ff
	rst  $38                                         ; $6bf1: $ff
	rst  $38                                         ; $6bf2: $ff
	rst  $38                                         ; $6bf3: $ff
	rst  $28                                         ; $6bf4: $ef
	rst  $38                                         ; $6bf5: $ff
	rst  $38                                         ; $6bf6: $ff
	rst  $38                                         ; $6bf7: $ff
	db   $eb                                         ; $6bf8: $eb
	cp   b                                           ; $6bf9: $b8
	ld   h, h                                        ; $6bfa: $64
	ld   hl, $1111                                   ; $6bfb: $21 $11 $11
	ld   de, $1111                                   ; $6bfe: $11 $11 $11
	ld   de, $1111                                   ; $6c01: $11 $11 $11
	ld   de, $cf14                                   ; $6c04: $11 $14 $cf
	rst  $38                                         ; $6c07: $ff
	rst  $38                                         ; $6c08: $ff
	rst  $38                                         ; $6c09: $ff
	rst  $38                                         ; $6c0a: $ff
	rst  $38                                         ; $6c0b: $ff
	rst  $38                                         ; $6c0c: $ff
	rst  $38                                         ; $6c0d: $ff
	rst  $38                                         ; $6c0e: $ff
	rst  $38                                         ; $6c0f: $ff
	rst  $38                                         ; $6c10: $ff
	rst  $38                                         ; $6c11: $ff
	db   $ec                                         ; $6c12: $ec
	cp   d                                           ; $6c13: $ba
	ld   [hl], l                                     ; $6c14: $75
	ld   b, c                                        ; $6c15: $41
	ld   de, $1111                                   ; $6c16: $11 $11 $11
	ld   de, $1111                                   ; $6c19: $11 $11 $11
	ld   de, $1111                                   ; $6c1c: $11 $11 $11
	dec  d                                           ; $6c1f: $15
	cp   a                                           ; $6c20: $bf
	rst  $38                                         ; $6c21: $ff
	rst  $38                                         ; $6c22: $ff
	rst  $38                                         ; $6c23: $ff
	rst  $38                                         ; $6c24: $ff
	rst  $38                                         ; $6c25: $ff
	rst  $38                                         ; $6c26: $ff
	rst  $38                                         ; $6c27: $ff
	xor  $ff                                         ; $6c28: $ee $ff
	rst  $38                                         ; $6c2a: $ff
	rst  $38                                         ; $6c2b: $ff
	db   $eb                                         ; $6c2c: $eb
	and  a                                           ; $6c2d: $a7
	ld   d, l                                        ; $6c2e: $55
	ld   b, d                                        ; $6c2f: $42
	ld   de, $1111                                   ; $6c30: $11 $11 $11
	ld   de, $1111                                   ; $6c33: $11 $11 $11
	ld   de, $1111                                   ; $6c36: $11 $11 $11
	inc  d                                           ; $6c39: $14
	xor  a                                           ; $6c3a: $af
	rst  $38                                         ; $6c3b: $ff
	rst  $38                                         ; $6c3c: $ff
	rst  $38                                         ; $6c3d: $ff
	rst  $38                                         ; $6c3e: $ff
	rst  $38                                         ; $6c3f: $ff
	rst  $38                                         ; $6c40: $ff
	rst  $38                                         ; $6c41: $ff
	db   $ec                                         ; $6c42: $ec
	cp   h                                           ; $6c43: $bc
	rst  $38                                         ; $6c44: $ff
	rst  $38                                         ; $6c45: $ff
	db   $fc                                         ; $6c46: $fc
	add  [hl]                                        ; $6c47: $86
	ld   b, h                                        ; $6c48: $44
	ld   b, h                                        ; $6c49: $44
	ld   sp, $1111                                   ; $6c4a: $31 $11 $11
	ld   de, $1111                                   ; $6c4d: $11 $11 $11
	ld   de, $1111                                   ; $6c50: $11 $11 $11
	inc  d                                           ; $6c53: $14
	ld   a, d                                        ; $6c54: $7a
	rst  JumpTable                                         ; $6c55: $df
	rst  $38                                         ; $6c56: $ff
	rst  $38                                         ; $6c57: $ff
	rst  $38                                         ; $6c58: $ff
	rst  $38                                         ; $6c59: $ff
	rst  $38                                         ; $6c5a: $ff
	rst  $38                                         ; $6c5b: $ff
	rst  $38                                         ; $6c5c: $ff
	db   $db                                         ; $6c5d: $db
	xor  d                                           ; $6c5e: $aa
	cp   h                                           ; $6c5f: $bc
	call z, Call_0c7_76ba                            ; $6c60: $cc $ba $76
	ld   d, h                                        ; $6c63: $54
	ld   b, h                                        ; $6c64: $44
	inc  sp                                          ; $6c65: $33
	ld   de, $1111                                   ; $6c66: $11 $11 $11
	ld   de, $1111                                   ; $6c69: $11 $11 $11
	ld   de, $2411                                   ; $6c6c: $11 $11 $24
	ld   l, c                                        ; $6c6f: $69
	xor  h                                           ; $6c70: $ac
	rst  $38                                         ; $6c71: $ff
	rst  $38                                         ; $6c72: $ff
	rst  $38                                         ; $6c73: $ff
	rst  $38                                         ; $6c74: $ff
	rst  $38                                         ; $6c75: $ff
	rst  $38                                         ; $6c76: $ff
	db   $db                                         ; $6c77: $db
	sbc  c                                           ; $6c78: $99
	adc  c                                           ; $6c79: $89
	adc  d                                           ; $6c7a: $8a
	xor  d                                           ; $6c7b: $aa
	xor  c                                           ; $6c7c: $a9
	adc  b                                           ; $6c7d: $88
	ld   [hl], a                                     ; $6c7e: $77
	ld   [hl], a                                     ; $6c7f: $77
	ld   [hl], a                                     ; $6c80: $77
	halt                                             ; $6c81: $76
	ld   d, h                                        ; $6c82: $54
	ld   b, e                                        ; $6c83: $43
	inc  [hl]                                        ; $6c84: $34
	ld   b, h                                        ; $6c85: $44
	ld   [hl-], a                                    ; $6c86: $32
	ld   hl, $4523                                   ; $6c87: $21 $23 $45
	ld   d, h                                        ; $6c8a: $54
	inc  sp                                          ; $6c8b: $33
	ld   b, l                                        ; $6c8c: $45
	ld   a, b                                        ; $6c8d: $78
	cp   d                                           ; $6c8e: $ba
	cp   e                                           ; $6c8f: $bb
	cp   e                                           ; $6c90: $bb
	cp   e                                           ; $6c91: $bb
	call z, $dbdd                                    ; $6c92: $cc $dd $db
	cp   d                                           ; $6c95: $ba
	sbc  d                                           ; $6c96: $9a
	cp   e                                           ; $6c97: $bb
	cp   e                                           ; $6c98: $bb
	call z, $99ba                                    ; $6c99: $cc $ba $99
	sbc  d                                           ; $6c9c: $9a
	sbc  d                                           ; $6c9d: $9a
	xor  c                                           ; $6c9e: $a9
	sbc  c                                           ; $6c9f: $99
	sbc  b                                           ; $6ca0: $98
	adc  b                                           ; $6ca1: $88
	sbc  b                                           ; $6ca2: $98
	sub  a                                           ; $6ca3: $97
	ld   [hl], a                                     ; $6ca4: $77
	ld   h, [hl]                                     ; $6ca5: $66
	ld   d, [hl]                                     ; $6ca6: $56
	ld   h, [hl]                                     ; $6ca7: $66
	ld   h, [hl]                                     ; $6ca8: $66
	ld   h, [hl]                                     ; $6ca9: $66
	ld   h, l                                        ; $6caa: $65
	ld   d, h                                        ; $6cab: $54
	ld   b, h                                        ; $6cac: $44
	ld   b, l                                        ; $6cad: $45
	ld   d, [hl]                                     ; $6cae: $56
	ld   h, [hl]                                     ; $6caf: $66
	ld   h, [hl]                                     ; $6cb0: $66
	ld   [hl], a                                     ; $6cb1: $77
	adc  b                                           ; $6cb2: $88
	xor  d                                           ; $6cb3: $aa
	cp   d                                           ; $6cb4: $ba
	xor  e                                           ; $6cb5: $ab
	cp   e                                           ; $6cb6: $bb
	cp   e                                           ; $6cb7: $bb
	set  1, h                                        ; $6cb8: $cb $cc
	cp   e                                           ; $6cba: $bb
	res  7, d                                        ; $6cbb: $cb $ba
	xor  d                                           ; $6cbd: $aa
	sbc  d                                           ; $6cbe: $9a
	sbc  c                                           ; $6cbf: $99
	adc  b                                           ; $6cc0: $88
	add  a                                           ; $6cc1: $87
	ld   [hl], a                                     ; $6cc2: $77
	ld   [hl], a                                     ; $6cc3: $77
	ld   [hl], a                                     ; $6cc4: $77
	ld   [hl], a                                     ; $6cc5: $77
	ld   [hl], a                                     ; $6cc6: $77
	ld   [hl], a                                     ; $6cc7: $77
	ld   [hl], a                                     ; $6cc8: $77
	ld   [hl], a                                     ; $6cc9: $77
	ld   [hl], a                                     ; $6cca: $77
	adc  b                                           ; $6ccb: $88
	sbc  b                                           ; $6ccc: $98
	sbc  c                                           ; $6ccd: $99
	adc  b                                           ; $6cce: $88
	adc  b                                           ; $6ccf: $88
	sbc  b                                           ; $6cd0: $98
	adc  b                                           ; $6cd1: $88
	adc  b                                           ; $6cd2: $88
	adc  c                                           ; $6cd3: $89
	sbc  c                                           ; $6cd4: $99
	sbc  b                                           ; $6cd5: $98
	adc  b                                           ; $6cd6: $88
	adc  b                                           ; $6cd7: $88
	add  a                                           ; $6cd8: $87
	ld   [hl], a                                     ; $6cd9: $77
	ld   [hl], a                                     ; $6cda: $77
	halt                                             ; $6cdb: $76
	ld   [hl], a                                     ; $6cdc: $77
	ld   [hl], a                                     ; $6cdd: $77
	ld   [hl], a                                     ; $6cde: $77
	ld   [hl], a                                     ; $6cdf: $77
	ld   [hl], a                                     ; $6ce0: $77
	ld   [hl], a                                     ; $6ce1: $77
	ld   [hl], a                                     ; $6ce2: $77
	adc  b                                           ; $6ce3: $88
	adc  c                                           ; $6ce4: $89
	adc  b                                           ; $6ce5: $88
	sbc  c                                           ; $6ce6: $99
	sbc  c                                           ; $6ce7: $99
	xor  d                                           ; $6ce8: $aa
	xor  c                                           ; $6ce9: $a9
	xor  d                                           ; $6cea: $aa
	sbc  c                                           ; $6ceb: $99
	sbc  c                                           ; $6cec: $99
	sbc  c                                           ; $6ced: $99
	sbc  c                                           ; $6cee: $99
	sbc  b                                           ; $6cef: $98
	adc  c                                           ; $6cf0: $89
	adc  b                                           ; $6cf1: $88
	adc  b                                           ; $6cf2: $88
	adc  b                                           ; $6cf3: $88
	ld   [hl], a                                     ; $6cf4: $77
	ld   [hl], a                                     ; $6cf5: $77
	ld   [hl], a                                     ; $6cf6: $77
	ld   [hl], a                                     ; $6cf7: $77
	ld   [hl], a                                     ; $6cf8: $77
	ld   [hl], a                                     ; $6cf9: $77
	ld   [hl], a                                     ; $6cfa: $77
	ld   [hl], a                                     ; $6cfb: $77
	ld   [hl], a                                     ; $6cfc: $77
	ld   [hl], a                                     ; $6cfd: $77
	ld   [hl], a                                     ; $6cfe: $77
	adc  b                                           ; $6cff: $88
	adc  b                                           ; $6d00: $88
	adc  c                                           ; $6d01: $89
	sbc  c                                           ; $6d02: $99
	sbc  c                                           ; $6d03: $99
	sbc  c                                           ; $6d04: $99
	sbc  c                                           ; $6d05: $99
	sbc  c                                           ; $6d06: $99
	sbc  c                                           ; $6d07: $99
	sbc  c                                           ; $6d08: $99
	sbc  c                                           ; $6d09: $99
	sbc  c                                           ; $6d0a: $99
	adc  b                                           ; $6d0b: $88
	adc  b                                           ; $6d0c: $88
	adc  b                                           ; $6d0d: $88
	ld   [hl], a                                     ; $6d0e: $77
	ld   [hl], a                                     ; $6d0f: $77
	ld   [hl], a                                     ; $6d10: $77
	ld   [hl], a                                     ; $6d11: $77
	ld   a, b                                        ; $6d12: $78
	adc  b                                           ; $6d13: $88
	adc  b                                           ; $6d14: $88
	ld   [hl], a                                     ; $6d15: $77
	ld   [hl], a                                     ; $6d16: $77
	ld   [hl], a                                     ; $6d17: $77
	ld   [hl], a                                     ; $6d18: $77
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
	ld   [hl], a                                     ; $6d28: $77
	ld   [hl], a                                     ; $6d29: $77
	ld   [hl], a                                     ; $6d2a: $77
	ld   [hl], a                                     ; $6d2b: $77
	ld   [hl], a                                     ; $6d2c: $77
	ld   a, b                                        ; $6d2d: $78
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
	ld   [hl], a                                     ; $6d42: $77
	ld   [hl], a                                     ; $6d43: $77
	ld   [hl], a                                     ; $6d44: $77
	ld   [hl], a                                     ; $6d45: $77
	ld   [hl], a                                     ; $6d46: $77
	ld   a, b                                        ; $6d47: $78
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
	add  a                                           ; $6da4: $87
	ld   [hl], a                                     ; $6da5: $77
	ld   a, b                                        ; $6da6: $78
	adc  b                                           ; $6da7: $88
	adc  b                                           ; $6da8: $88
	adc  b                                           ; $6da9: $88
	sbc  c                                           ; $6daa: $99
	sbc  c                                           ; $6dab: $99
	sbc  c                                           ; $6dac: $99
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
	sbc  b                                           ; $6dba: $98
	sbc  c                                           ; $6dbb: $99
	adc  b                                           ; $6dbc: $88
	adc  b                                           ; $6dbd: $88
	adc  b                                           ; $6dbe: $88
	sbc  b                                           ; $6dbf: $98
	adc  b                                           ; $6dc0: $88
	adc  b                                           ; $6dc1: $88
	adc  c                                           ; $6dc2: $89
	adc  c                                           ; $6dc3: $89
	adc  b                                           ; $6dc4: $88
	add  a                                           ; $6dc5: $87
	ld   [hl], a                                     ; $6dc6: $77
	adc  b                                           ; $6dc7: $88
	sbc  b                                           ; $6dc8: $98
	adc  b                                           ; $6dc9: $88
	add  a                                           ; $6dca: $87
	ld   [hl], a                                     ; $6dcb: $77
	ld   [hl], a                                     ; $6dcc: $77
	adc  b                                           ; $6dcd: $88
	adc  b                                           ; $6dce: $88
	add  a                                           ; $6dcf: $87
	ld   [hl], a                                     ; $6dd0: $77
	ld   [hl], a                                     ; $6dd1: $77
	ld   a, b                                        ; $6dd2: $78
	sbc  c                                           ; $6dd3: $99
	sbc  c                                           ; $6dd4: $99
	adc  b                                           ; $6dd5: $88
	adc  b                                           ; $6dd6: $88
	adc  b                                           ; $6dd7: $88
	sbc  b                                           ; $6dd8: $98
	adc  c                                           ; $6dd9: $89
	adc  b                                           ; $6dda: $88
	ld   [hl], a                                     ; $6ddb: $77
	ld   a, b                                        ; $6ddc: $78
	adc  b                                           ; $6ddd: $88
	adc  c                                           ; $6dde: $89
	adc  b                                           ; $6ddf: $88
	add  a                                           ; $6de0: $87
	add  a                                           ; $6de1: $87
	adc  b                                           ; $6de2: $88
	adc  b                                           ; $6de3: $88
	adc  b                                           ; $6de4: $88
	adc  b                                           ; $6de5: $88
	ld   a, b                                        ; $6de6: $78
	ld   a, b                                        ; $6de7: $78
	adc  b                                           ; $6de8: $88
	adc  b                                           ; $6de9: $88
	adc  b                                           ; $6dea: $88
	ld   [hl], a                                     ; $6deb: $77
	ld   [hl], a                                     ; $6dec: $77
	adc  c                                           ; $6ded: $89
	sbc  c                                           ; $6dee: $99
	sbc  b                                           ; $6def: $98
	add  a                                           ; $6df0: $87
	ld   [hl], a                                     ; $6df1: $77
	ld   a, b                                        ; $6df2: $78
	add  a                                           ; $6df3: $87
	ld   a, c                                        ; $6df4: $79
	xor  c                                           ; $6df5: $a9
	sub  a                                           ; $6df6: $97
	ld   h, [hl]                                     ; $6df7: $66
	ld   h, a                                        ; $6df8: $67
	ld   a, b                                        ; $6df9: $78
	adc  b                                           ; $6dfa: $88
	sbc  b                                           ; $6dfb: $98
	add  [hl]                                        ; $6dfc: $86
	ld   h, [hl]                                     ; $6dfd: $66
	ld   [hl], a                                     ; $6dfe: $77
	sbc  c                                           ; $6dff: $99
	xor  c                                           ; $6e00: $a9
	adc  b                                           ; $6e01: $88
	halt                                             ; $6e02: $76
	ld   h, a                                        ; $6e03: $67
	sbc  d                                           ; $6e04: $9a
	cp   h                                           ; $6e05: $bc
	cp   h                                           ; $6e06: $bc
	res  3, b                                        ; $6e07: $cb $98
	ld   h, l                                        ; $6e09: $65
	ld   d, l                                        ; $6e0a: $55
	ld   h, a                                        ; $6e0b: $67
	sbc  d                                           ; $6e0c: $9a
	xor  e                                           ; $6e0d: $ab
	xor  c                                           ; $6e0e: $a9
	sub  a                                           ; $6e0f: $97
	ld   h, a                                        ; $6e10: $67
	ld   a, b                                        ; $6e11: $78
	sbc  b                                           ; $6e12: $98
	adc  b                                           ; $6e13: $88
	add  a                                           ; $6e14: $87
	halt                                             ; $6e15: $76
	ld   h, [hl]                                     ; $6e16: $66
	ld   a, b                                        ; $6e17: $78
	sbc  d                                           ; $6e18: $9a
	xor  c                                           ; $6e19: $a9
	add  [hl]                                        ; $6e1a: $86
	ld   d, l                                        ; $6e1b: $55
	ld   d, [hl]                                     ; $6e1c: $56
	adc  c                                           ; $6e1d: $89
	xor  d                                           ; $6e1e: $aa
	sub  a                                           ; $6e1f: $97
	ld   h, l                                        ; $6e20: $65
	ld   d, l                                        ; $6e21: $55
	ld   h, a                                        ; $6e22: $67
	adc  c                                           ; $6e23: $89
	adc  b                                           ; $6e24: $88
	add  a                                           ; $6e25: $87
	sbc  b                                           ; $6e26: $98
	add  a                                           ; $6e27: $87
	ld   [hl], a                                     ; $6e28: $77
	ld   [hl], a                                     ; $6e29: $77
	adc  b                                           ; $6e2a: $88
	cp   h                                           ; $6e2b: $bc
	bit  4, e                                        ; $6e2c: $cb $63
	ld   de, $8935                                   ; $6e2e: $11 $35 $89
	call $65b9                                       ; $6e31: $cd $b9 $65
	ld   d, a                                        ; $6e34: $57
	xor  d                                           ; $6e35: $aa
	call c, Call_0c7_75ca                            ; $6e36: $dc $ca $75
	inc  sp                                          ; $6e39: $33
	ld   b, l                                        ; $6e3a: $45
	ld   a, c                                        ; $6e3b: $79
	xor  d                                           ; $6e3c: $aa
	add  a                                           ; $6e3d: $87
	ld   h, a                                        ; $6e3e: $67
	adc  b                                           ; $6e3f: $88
	sbc  c                                           ; $6e40: $99
	xor  d                                           ; $6e41: $aa
	sbc  b                                           ; $6e42: $98
	add  a                                           ; $6e43: $87
	ld   d, l                                        ; $6e44: $55
	ld   b, l                                        ; $6e45: $45
	ld   l, b                                        ; $6e46: $68
	add  a                                           ; $6e47: $87
	add  a                                           ; $6e48: $87
	adc  b                                           ; $6e49: $88
	ld   a, c                                        ; $6e4a: $79
	sbc  c                                           ; $6e4b: $99
	adc  b                                           ; $6e4c: $88
	sbc  c                                           ; $6e4d: $99
	sbc  c                                           ; $6e4e: $99
	ld   h, [hl]                                     ; $6e4f: $66
	ld   h, a                                        ; $6e50: $67
	ld   [hl], a                                     ; $6e51: $77
	add  [hl]                                        ; $6e52: $86
	ld   [hl], a                                     ; $6e53: $77
	ld   a, b                                        ; $6e54: $78
	adc  c                                           ; $6e55: $89
	adc  c                                           ; $6e56: $89
	xor  c                                           ; $6e57: $a9
	xor  d                                           ; $6e58: $aa
	add  a                                           ; $6e59: $87
	ld   [hl], a                                     ; $6e5a: $77
	ld   a, b                                        ; $6e5b: $78
	ld   h, l                                        ; $6e5c: $65
	ld   b, [hl]                                     ; $6e5d: $46
	ld   [hl], a                                     ; $6e5e: $77
	sbc  b                                           ; $6e5f: $98
	ld   a, b                                        ; $6e60: $78
	sbc  d                                           ; $6e61: $9a
	xor  e                                           ; $6e62: $ab
	xor  b                                           ; $6e63: $a8
	add  a                                           ; $6e64: $87
	halt                                             ; $6e65: $76
	ld   h, a                                        ; $6e66: $67
	ld   a, c                                        ; $6e67: $79
	xor  d                                           ; $6e68: $aa
	cp   c                                           ; $6e69: $b9
	sub  a                                           ; $6e6a: $97
	adc  c                                           ; $6e6b: $89
	ld   a, b                                        ; $6e6c: $78
	sbc  d                                           ; $6e6d: $9a
	sbc  c                                           ; $6e6e: $99
	add  l                                           ; $6e6f: $85
	ld   h, [hl]                                     ; $6e70: $66
	sbc  d                                           ; $6e71: $9a
	cp   d                                           ; $6e72: $ba
	sub  a                                           ; $6e73: $97
	ld   h, a                                        ; $6e74: $67
	ld   a, d                                        ; $6e75: $7a
	xor  c                                           ; $6e76: $a9
	sub  a                                           ; $6e77: $97
	sbc  c                                           ; $6e78: $99
	xor  d                                           ; $6e79: $aa
	xor  b                                           ; $6e7a: $a8
	ld   h, [hl]                                     ; $6e7b: $66
	ld   h, a                                        ; $6e7c: $67
	xor  c                                           ; $6e7d: $a9
	cp   d                                           ; $6e7e: $ba
	xor  d                                           ; $6e7f: $aa
	ld   [hl], a                                     ; $6e80: $77
	ld   a, c                                        ; $6e81: $79
	cp   d                                           ; $6e82: $ba
	cp   b                                           ; $6e83: $b8
	ld   [hl], a                                     ; $6e84: $77
	ld   [hl], a                                     ; $6e85: $77
	ld   a, d                                        ; $6e86: $7a
	sbc  c                                           ; $6e87: $99
	add  [hl]                                        ; $6e88: $86
	ld   h, [hl]                                     ; $6e89: $66
	adc  b                                           ; $6e8a: $88
	adc  c                                           ; $6e8b: $89
	sbc  h                                           ; $6e8c: $9c
	xor  d                                           ; $6e8d: $aa
	add  [hl]                                        ; $6e8e: $86
	halt                                             ; $6e8f: $76
	ld   [hl], a                                     ; $6e90: $77
	ld   [hl], a                                     ; $6e91: $77
	ld   [hl], a                                     ; $6e92: $77
	ld   h, l                                        ; $6e93: $65
	ld   b, [hl]                                     ; $6e94: $46
	ld   a, c                                        ; $6e95: $79
	sbc  c                                           ; $6e96: $99
	sub  a                                           ; $6e97: $97
	ld   [hl], a                                     ; $6e98: $77
	ld   d, [hl]                                     ; $6e99: $56
	sbc  b                                           ; $6e9a: $98
	sbc  b                                           ; $6e9b: $98
	ld   h, l                                        ; $6e9c: $65
	ld   b, [hl]                                     ; $6e9d: $46
	ld   a, e                                        ; $6e9e: $7b
	call $b9dc                                       ; $6e9f: $cd $dc $b9
	sbc  e                                           ; $6ea2: $9b
	cp   h                                           ; $6ea3: $bc
	rst  JumpTable                                         ; $6ea4: $df
	cp   $dd                                         ; $6ea5: $fe $dd
	cp   c                                           ; $6ea7: $b9
	sbc  c                                           ; $6ea8: $99
	adc  c                                           ; $6ea9: $89
	xor  b                                           ; $6eaa: $a8
	halt                                             ; $6eab: $76
	ld   d, e                                        ; $6eac: $53
	ld   [de], a                                     ; $6ead: $12
	ld   [hl+], a                                    ; $6eae: $22
	inc  hl                                          ; $6eaf: $23
	ld   sp, $1111                                   ; $6eb0: $31 $11 $11
	ld   de, $2312                                   ; $6eb3: $11 $12 $23
	ld   b, [hl]                                     ; $6eb6: $46
	adc  h                                           ; $6eb7: $8c
	rst  $38                                         ; $6eb8: $ff
	rst  $38                                         ; $6eb9: $ff
	rst  $38                                         ; $6eba: $ff
	rst  $38                                         ; $6ebb: $ff
	rst  $38                                         ; $6ebc: $ff
	rst  $28                                         ; $6ebd: $ef
	rst  $38                                         ; $6ebe: $ff
	rst  $38                                         ; $6ebf: $ff
	call c, $9a9a                                    ; $6ec0: $dc $9a $9a
	call z, $97ca                                    ; $6ec3: $cc $ca $97
	ld   de, $1111                                   ; $6ec6: $11 $11 $11
	ld   de, $1111                                   ; $6ec9: $11 $11 $11
	ld   de, $1411                                   ; $6ecc: $11 $11 $14
	ld   l, e                                        ; $6ecf: $6b
	rst  $38                                         ; $6ed0: $ff
	rst  $38                                         ; $6ed1: $ff
	rst  $38                                         ; $6ed2: $ff
	rst  $38                                         ; $6ed3: $ff
	rst  $38                                         ; $6ed4: $ff
	rst  $38                                         ; $6ed5: $ff
	rst  $38                                         ; $6ed6: $ff
	cp   $da                                         ; $6ed7: $fe $da
	add  [hl]                                        ; $6ed9: $86
	ld   d, h                                        ; $6eda: $54
	ld   b, [hl]                                     ; $6edb: $46
	ld   h, [hl]                                     ; $6edc: $66
	add  a                                           ; $6edd: $87
	ld   h, e                                        ; $6ede: $63
	ld   de, $1111                                   ; $6edf: $11 $11 $11
	ld   de, $1111                                   ; $6ee2: $11 $11 $11
	ld   de, $4b11                                   ; $6ee5: $11 $11 $4b
	rst  $38                                         ; $6ee8: $ff
	rst  $38                                         ; $6ee9: $ff
	rst  $38                                         ; $6eea: $ff
	rst  $38                                         ; $6eeb: $ff
	rst  $38                                         ; $6eec: $ff
	rst  $38                                         ; $6eed: $ff
	rst  $38                                         ; $6eee: $ff
	db   $fc                                         ; $6eef: $fc
	sub  l                                           ; $6ef0: $95
	ld   d, [hl]                                     ; $6ef1: $56
	sbc  d                                           ; $6ef2: $9a
	call c, Call_0c7_42b9                            ; $6ef3: $dc $b9 $42
	ld   de, $1111                                   ; $6ef6: $11 $11 $11
	ld   de, $1111                                   ; $6ef9: $11 $11 $11
	ld   de, $1211                                   ; $6efc: $11 $11 $12
	ld   a, c                                        ; $6eff: $79
	rst  $28                                         ; $6f00: $ef
	rst  $38                                         ; $6f01: $ff
	rst  $38                                         ; $6f02: $ff
	rst  $38                                         ; $6f03: $ff
	rst  $38                                         ; $6f04: $ff
	rst  $38                                         ; $6f05: $ff
	rst  $38                                         ; $6f06: $ff
	db   $eb                                         ; $6f07: $eb
	cp   b                                           ; $6f08: $b8
	sbc  d                                           ; $6f09: $9a
	adc  b                                           ; $6f0a: $88
	add  l                                           ; $6f0b: $85
	ld   d, l                                        ; $6f0c: $55
	ld   [hl-], a                                    ; $6f0d: $32
	ld   de, $1111                                   ; $6f0e: $11 $11 $11
	ld   de, $1111                                   ; $6f11: $11 $11 $11
	ld   de, $1111                                   ; $6f14: $11 $11 $11
	sbc  h                                           ; $6f17: $9c
	rst  $38                                         ; $6f18: $ff
	rst  $38                                         ; $6f19: $ff
	rst  $38                                         ; $6f1a: $ff
	rst  $38                                         ; $6f1b: $ff
	rst  $38                                         ; $6f1c: $ff
	rst  $38                                         ; $6f1d: $ff
	rst  $38                                         ; $6f1e: $ff
	jp   c, $8988                                    ; $6f1f: $da $88 $89

	xor  d                                           ; $6f22: $aa
	sub  a                                           ; $6f23: $97
	ld   h, e                                        ; $6f24: $63
	ld   de, $1111                                   ; $6f25: $11 $11 $11
	ld   de, $1111                                   ; $6f28: $11 $11 $11
	ld   de, $1111                                   ; $6f2b: $11 $11 $11
	ld   c, d                                        ; $6f2e: $4a
	rst  $38                                         ; $6f2f: $ff
	rst  $38                                         ; $6f30: $ff
	rst  $38                                         ; $6f31: $ff
	rst  $38                                         ; $6f32: $ff
	rst  $38                                         ; $6f33: $ff
	rst  $38                                         ; $6f34: $ff
	rst  $38                                         ; $6f35: $ff
	db   $fd                                         ; $6f36: $fd
	cp   c                                           ; $6f37: $b9
	xor  c                                           ; $6f38: $a9
	xor  e                                           ; $6f39: $ab
	cp   b                                           ; $6f3a: $b8
	ld   [hl], h                                     ; $6f3b: $74
	ld   bc, $1111                                   ; $6f3c: $01 $11 $11
	ld   de, $1111                                   ; $6f3f: $11 $11 $11
	ld   de, $1111                                   ; $6f42: $11 $11 $11
	rla                                              ; $6f45: $17
	rst  JumpTable                                         ; $6f46: $df
	rst  $38                                         ; $6f47: $ff
	rst  $38                                         ; $6f48: $ff
	rst  $38                                         ; $6f49: $ff
	rst  $38                                         ; $6f4a: $ff
	rst  $38                                         ; $6f4b: $ff
	rst  $38                                         ; $6f4c: $ff
	rst  $38                                         ; $6f4d: $ff
	ld   [$8997], a                                  ; $6f4e: $ea $97 $89
	xor  d                                           ; $6f51: $aa
	sub  [hl]                                        ; $6f52: $96
	ld   b, c                                        ; $6f53: $41
	ld   de, $1111                                   ; $6f54: $11 $11 $11
	ld   de, $1111                                   ; $6f57: $11 $11 $11
	ld   de, $5a11                                   ; $6f5a: $11 $11 $5a
	rst  $38                                         ; $6f5d: $ff
	rst  $38                                         ; $6f5e: $ff
	rst  $38                                         ; $6f5f: $ff
	rst  $38                                         ; $6f60: $ff
	rst  $38                                         ; $6f61: $ff
	rst  $38                                         ; $6f62: $ff
	rst  $38                                         ; $6f63: $ff
	rst  $38                                         ; $6f64: $ff
	ret  z                                           ; $6f65: $c8

	ld   a, c                                        ; $6f66: $79
	xor  e                                           ; $6f67: $ab
	db   $ec                                         ; $6f68: $ec
	and  [hl]                                        ; $6f69: $a6
	ld   de, $1111                                   ; $6f6a: $11 $11 $11
	ld   de, $1111                                   ; $6f6d: $11 $11 $11
	ld   de, $1311                                   ; $6f70: $11 $11 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f73: $cf
	rst  $38                                         ; $6f74: $ff
	rst  $38                                         ; $6f75: $ff
	rst  $38                                         ; $6f76: $ff
	rst  $38                                         ; $6f77: $ff
	rst  $38                                         ; $6f78: $ff
	rst  $38                                         ; $6f79: $ff
	rst  $38                                         ; $6f7a: $ff
	db   $fc                                         ; $6f7b: $fc
	ld   [hl], l                                     ; $6f7c: $75
	adc  c                                           ; $6f7d: $89
	rst  $28                                         ; $6f7e: $ef
	db   $ec                                         ; $6f7f: $ec
	and  c                                           ; $6f80: $a1
	ld   de, $1111                                   ; $6f81: $11 $11 $11
	ld   de, $1111                                   ; $6f84: $11 $11 $11
	ld   de, $7e11                                   ; $6f87: $11 $11 $7e
	rst  $38                                         ; $6f8a: $ff
	rst  $38                                         ; $6f8b: $ff
	rst  $38                                         ; $6f8c: $ff
	rst  $38                                         ; $6f8d: $ff
	rst  $38                                         ; $6f8e: $ff
	rst  $38                                         ; $6f8f: $ff
	rst  $38                                         ; $6f90: $ff
	rst  $38                                         ; $6f91: $ff
	ld   [wPostPrologueScriptEngineGameState], a                                  ; $6f92: $ea $9a $cc
	db   $ed                                         ; $6f95: $ed
	and  a                                           ; $6f96: $a7
	ld   de, $1111                                   ; $6f97: $11 $11 $11
	ld   de, $1111                                   ; $6f9a: $11 $11 $11
	ld   de, $3f11                                   ; $6f9d: $11 $11 $3f
	rst  $38                                         ; $6fa0: $ff
	rst  $38                                         ; $6fa1: $ff
	rst  $38                                         ; $6fa2: $ff
	rst  $38                                         ; $6fa3: $ff
	rst  $38                                         ; $6fa4: $ff
	rst  $38                                         ; $6fa5: $ff
	rst  $38                                         ; $6fa6: $ff
	rst  $38                                         ; $6fa7: $ff
	ret  z                                           ; $6fa8: $c8

	ld   d, [hl]                                     ; $6fa9: $56
	adc  e                                           ; $6faa: $8b
	rst  $28                                         ; $6fab: $ef
	reti                                             ; $6fac: $d9


	ld   sp, $1111                                   ; $6fad: $31 $11 $11
	ld   de, $1111                                   ; $6fb0: $11 $11 $11
	ld   de, $9f13                                   ; $6fb3: $11 $13 $9f
	rst  $38                                         ; $6fb6: $ff
	rst  $38                                         ; $6fb7: $ff
	rst  $38                                         ; $6fb8: $ff
	db   $fc                                         ; $6fb9: $fc
	cp   d                                           ; $6fba: $ba
	rst  JumpTable                                         ; $6fbb: $df
	rst  $38                                         ; $6fbc: $ff
	rst  $38                                         ; $6fbd: $ff
	and  [hl]                                        ; $6fbe: $a6
	ld   b, [hl]                                     ; $6fbf: $46
	sbc  h                                           ; $6fc0: $9c
	rst  $38                                         ; $6fc1: $ff
	and  e                                           ; $6fc2: $a3
	ld   de, $1111                                   ; $6fc3: $11 $11 $11
	ld   de, $1111                                   ; $6fc6: $11 $11 $11
	ld   de, $ff3e                                   ; $6fc9: $11 $3e $ff
	rst  $38                                         ; $6fcc: $ff
	rst  $38                                         ; $6fcd: $ff
	rst  $38                                         ; $6fce: $ff
	and  a                                           ; $6fcf: $a7
	adc  l                                           ; $6fd0: $8d
	rst  $38                                         ; $6fd1: $ff
	rst  $38                                         ; $6fd2: $ff
	jp   hl                                          ; $6fd3: $e9


	inc  sp                                          ; $6fd4: $33
	ld   l, d                                        ; $6fd5: $6a
	rst  $38                                         ; $6fd6: $ff
	ei                                               ; $6fd7: $fb
	ld   hl, $1111                                   ; $6fd8: $21 $11 $11
	ld   de, $1111                                   ; $6fdb: $11 $11 $11
	ld   de, $ff19                                   ; $6fde: $11 $19 $ff
	rst  $38                                         ; $6fe1: $ff
	rst  $38                                         ; $6fe2: $ff
	rst  $38                                         ; $6fe3: $ff
	and  l                                           ; $6fe4: $a5
	ld   l, c                                        ; $6fe5: $69
	rst  $38                                         ; $6fe6: $ff
	rst  $38                                         ; $6fe7: $ff
	ei                                               ; $6fe8: $fb
	ld   h, h                                        ; $6fe9: $64
	ld   e, d                                        ; $6fea: $5a
	rst  JumpTable                                         ; $6feb: $df
	db   $fc                                         ; $6fec: $fc
	ld   b, c                                        ; $6fed: $41
	ld   de, $1111                                   ; $6fee: $11 $11 $11
	ld   de, $1111                                   ; $6ff1: $11 $11 $11
	dec  a                                           ; $6ff4: $3d
	rst  $38                                         ; $6ff5: $ff
	rst  $38                                         ; $6ff6: $ff
	rst  $38                                         ; $6ff7: $ff
	rst  $38                                         ; $6ff8: $ff
	ld   [hl], h                                     ; $6ff9: $74
	ld   l, d                                        ; $6ffa: $6a
	rst  $38                                         ; $6ffb: $ff
	rst  $38                                         ; $6ffc: $ff
	ld   hl, sp+$53                                  ; $6ffd: $f8 $53
	ld   e, e                                        ; $6fff: $5b
	rst  $28                                         ; $7000: $ef
	db   $fc                                         ; $7001: $fc
	ld   hl, $1111                                   ; $7002: $21 $11 $11
	ld   de, $1111                                   ; $7005: $11 $11 $11
	ld   de, $ff7f                                   ; $7008: $11 $7f $ff
	rst  $38                                         ; $700b: $ff
	rst  $38                                         ; $700c: $ff
	db   $fc                                         ; $700d: $fc
	ld   b, d                                        ; $700e: $42
	ld   c, c                                        ; $700f: $49
	rst  $38                                         ; $7010: $ff
	rst  $38                                         ; $7011: $ff
	db   $eb                                         ; $7012: $eb
	ld   h, h                                        ; $7013: $64
	ld   a, e                                        ; $7014: $7b
	rst  $28                                         ; $7015: $ef
	sub  $11                                         ; $7016: $d6 $11
	ld   de, $1111                                   ; $7018: $11 $11 $11
	ld   de, $2b11                                   ; $701b: $11 $11 $2b
	rst  $38                                         ; $701e: $ff
	rst  $38                                         ; $701f: $ff
	rst  $38                                         ; $7020: $ff
	rst  $38                                         ; $7021: $ff
	or   $33                                         ; $7022: $f6 $33
	ld   l, [hl]                                     ; $7024: $6e
	rst  $38                                         ; $7025: $ff
	rst  $38                                         ; $7026: $ff
	xor  c                                           ; $7027: $a9
	adc  d                                           ; $7028: $8a
	rst  $28                                         ; $7029: $ef
	rst  $38                                         ; $702a: $ff
	ld   h, c                                        ; $702b: $61
	ld   de, $1111                                   ; $702c: $11 $11 $11
	ld   de, $1111                                   ; $702f: $11 $11 $11
	adc  a                                           ; $7032: $8f
	rst  $38                                         ; $7033: $ff
	rst  $38                                         ; $7034: $ff
	rst  $38                                         ; $7035: $ff
	cp   $41                                         ; $7036: $fe $41
	ld   d, $ef                                      ; $7038: $16 $ef
	rst  $38                                         ; $703a: $ff
	db   $fc                                         ; $703b: $fc
	sbc  c                                           ; $703c: $99
	cp   a                                           ; $703d: $bf
	rst  $38                                         ; $703e: $ff
	and  $11                                         ; $703f: $e6 $11
	ld   de, $1111                                   ; $7041: $11 $11 $11
	ld   de, $5f11                                   ; $7044: $11 $11 $5f
	rst  $38                                         ; $7047: $ff
	rst  $38                                         ; $7048: $ff
	rst  $38                                         ; $7049: $ff
	rst  $38                                         ; $704a: $ff
	ld   [hl], c                                     ; $704b: $71
	ld   de, $ff8f                                   ; $704c: $11 $8f $ff
	cp   $a9                                         ; $704f: $fe $a9
	xor  a                                           ; $7051: $af
	rst  $38                                         ; $7052: $ff
	db   $fd                                         ; $7053: $fd
	ld   hl, $1111                                   ; $7054: $21 $11 $11
	ld   de, $1111                                   ; $7057: $11 $11 $11
	add  hl, de                                      ; $705a: $19
	rst  $38                                         ; $705b: $ff
	rst  $38                                         ; $705c: $ff
	rst  $38                                         ; $705d: $ff
	rst  $38                                         ; $705e: $ff
	db   $d3                                         ; $705f: $d3
	ld   de, $ff5b                                   ; $7060: $11 $5b $ff
	cp   $b9                                         ; $7063: $fe $b9
	cp   a                                           ; $7065: $bf
	rst  $38                                         ; $7066: $ff
	rst  $38                                         ; $7067: $ff
	ld   h, c                                        ; $7068: $61
	ld   de, $1111                                   ; $7069: $11 $11 $11
	ld   de, $1611                                   ; $706c: $11 $11 $16
	rst  $38                                         ; $706f: $ff
	rst  $38                                         ; $7070: $ff
	rst  $38                                         ; $7071: $ff
	rst  $38                                         ; $7072: $ff
	pop  hl                                          ; $7073: $e1
	ld   de, $ff3a                                   ; $7074: $11 $3a $ff
	db   $fd                                         ; $7077: $fd
	sbc  c                                           ; $7078: $99
	xor  a                                           ; $7079: $af
	rst  $38                                         ; $707a: $ff
	rst  $38                                         ; $707b: $ff
	and  c                                           ; $707c: $a1
	ld   de, $1111                                   ; $707d: $11 $11 $11
	ld   de, $1411                                   ; $7080: $11 $11 $14
	rst  $38                                         ; $7083: $ff
	rst  $38                                         ; $7084: $ff
	rst  $38                                         ; $7085: $ff
	rst  $38                                         ; $7086: $ff
	ldh  [c], a                                      ; $7087: $e2
	ld   de, $ef39                                   ; $7088: $11 $39 $ef
	reti                                             ; $708b: $d9


	ld   [hl], a                                     ; $708c: $77
	xor  a                                           ; $708d: $af
	rst  $38                                         ; $708e: $ff
	rst  $38                                         ; $708f: $ff
	pop  bc                                          ; $7090: $c1
	ld   de, $1111                                   ; $7091: $11 $11 $11
	ld   de, $1211                                   ; $7094: $11 $11 $12
	rst  $38                                         ; $7097: $ff
	rst  $38                                         ; $7098: $ff
	rst  $38                                         ; $7099: $ff
	rst  $38                                         ; $709a: $ff
	db   $e3                                         ; $709b: $e3
	ld   de, $bb59                                   ; $709c: $11 $59 $bb
	sub  h                                           ; $709f: $94
	scf                                              ; $70a0: $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70a1: $cf
	rst  $38                                         ; $70a2: $ff
	rst  $38                                         ; $70a3: $ff
	and  c                                           ; $70a4: $a1
	ld   de, $1111                                   ; $70a5: $11 $11 $11
	ld   de, $1111                                   ; $70a8: $11 $11 $11
	rst  $38                                         ; $70ab: $ff
	rst  $38                                         ; $70ac: $ff
	rst  $38                                         ; $70ad: $ff
	rst  $38                                         ; $70ae: $ff
	jp   nz, Jump_0c7_7b12                           ; $70af: $c2 $12 $7b

	jp   z, $1451                                    ; $70b2: $ca $51 $14

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70b5: $cf
	rst  $38                                         ; $70b6: $ff
	rst  $38                                         ; $70b7: $ff
	or   c                                           ; $70b8: $b1
	ld   de, $1111                                   ; $70b9: $11 $11 $11
	ld   de, $1111                                   ; $70bc: $11 $11 $11
	rst  $38                                         ; $70bf: $ff
	rst  $38                                         ; $70c0: $ff
	rst  $38                                         ; $70c1: $ff
	rst  $38                                         ; $70c2: $ff
	and  h                                           ; $70c3: $a4
	ld   b, [hl]                                     ; $70c4: $46
	sbc  c                                           ; $70c5: $99
	add  e                                           ; $70c6: $83
	ld   de, $ff08                                   ; $70c7: $11 $08 $ff
	rst  $38                                         ; $70ca: $ff
	rst  $38                                         ; $70cb: $ff
	add  c                                           ; $70cc: $81
	ld   de, $1111                                   ; $70cd: $11 $11 $11
	ld   de, $1311                                   ; $70d0: $11 $11 $13
	rst  $38                                         ; $70d3: $ff
	rst  $38                                         ; $70d4: $ff
	rst  $38                                         ; $70d5: $ff
	rst  $38                                         ; $70d6: $ff
	ei                                               ; $70d7: $fb
	add  a                                           ; $70d8: $87
	ld   [hl], l                                     ; $70d9: $75
	ld   hl, $3b11                                   ; $70da: $21 $11 $3b
	rst  $38                                         ; $70dd: $ff
	rst  $38                                         ; $70de: $ff
	rst  $38                                         ; $70df: $ff
	and  c                                           ; $70e0: $a1
	ld   de, $1111                                   ; $70e1: $11 $11 $11
	ld   de, $1511                                   ; $70e4: $11 $11 $15
	rst  $38                                         ; $70e7: $ff
	rst  $38                                         ; $70e8: $ff
	rst  $38                                         ; $70e9: $ff
	rst  $38                                         ; $70ea: $ff
	db   $fc                                         ; $70eb: $fc
	sub  a                                           ; $70ec: $97
	ld   h, d                                        ; $70ed: $62
	ld   de, $4b11                                   ; $70ee: $11 $11 $4b
	rst  $38                                         ; $70f1: $ff
	rst  $38                                         ; $70f2: $ff
	rst  $38                                         ; $70f3: $ff
	pop  bc                                          ; $70f4: $c1
	ld   de, $1111                                   ; $70f5: $11 $11 $11
	ld   de, $1411                                   ; $70f8: $11 $11 $14
	rst  $38                                         ; $70fb: $ff
	rst  $38                                         ; $70fc: $ff
	rst  $38                                         ; $70fd: $ff
	rst  $38                                         ; $70fe: $ff
	rst  $38                                         ; $70ff: $ff
	or   a                                           ; $7100: $b7
	ld   b, c                                        ; $7101: $41
	ld   de, $4c11                                   ; $7102: $11 $11 $4c
	rst  $38                                         ; $7105: $ff
	rst  $38                                         ; $7106: $ff
	rst  $38                                         ; $7107: $ff
	db   $e4                                         ; $7108: $e4
	ld   de, $1111                                   ; $7109: $11 $11 $11
	ld   de, $1711                                   ; $710c: $11 $11 $17
	rst  $38                                         ; $710f: $ff
	rst  $38                                         ; $7110: $ff
	rst  $38                                         ; $7111: $ff
	rst  $38                                         ; $7112: $ff
	rst  $38                                         ; $7113: $ff
	or   a                                           ; $7114: $b7
	ld   sp, $1111                                   ; $7115: $31 $11 $11
	ld   e, [hl]                                     ; $7118: $5e
	rst  $38                                         ; $7119: $ff
	rst  $38                                         ; $711a: $ff
	rst  $38                                         ; $711b: $ff
	jp   $1111                                       ; $711c: $c3 $11 $11


	ld   de, $1111                                   ; $711f: $11 $11 $11
	dec  de                                          ; $7122: $1b
	rst  $38                                         ; $7123: $ff
	rst  $38                                         ; $7124: $ff
	rst  $38                                         ; $7125: $ff
	rst  $38                                         ; $7126: $ff
	rst  $38                                         ; $7127: $ff
	and  h                                           ; $7128: $a4
	ld   de, $1111                                   ; $7129: $11 $11 $11
	ld   a, [hl]                                     ; $712c: $7e
	rst  $38                                         ; $712d: $ff
	rst  $38                                         ; $712e: $ff
	rst  $38                                         ; $712f: $ff
	jp   $1111                                       ; $7130: $c3 $11 $11


	ld   de, $1111                                   ; $7133: $11 $11 $11
	rra                                              ; $7136: $1f
	rst  $38                                         ; $7137: $ff
	rst  $38                                         ; $7138: $ff
	rst  $38                                         ; $7139: $ff
	rst  $38                                         ; $713a: $ff
	rst  $38                                         ; $713b: $ff
	add  d                                           ; $713c: $82
	ld   de, $1111                                   ; $713d: $11 $11 $11
	sbc  a                                           ; $7140: $9f
	rst  $38                                         ; $7141: $ff
	rst  $38                                         ; $7142: $ff
	rst  $38                                         ; $7143: $ff
	sub  c                                           ; $7144: $91
	ld   de, $1111                                   ; $7145: $11 $11 $11
	ld   de, $7f11                                   ; $7148: $11 $11 $7f
	rst  $38                                         ; $714b: $ff
	rst  $38                                         ; $714c: $ff
	rst  $38                                         ; $714d: $ff
	rst  $38                                         ; $714e: $ff
	db   $fd                                         ; $714f: $fd
	ld   b, c                                        ; $7150: $41
	ld   de, $1511                                   ; $7151: $11 $11 $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7154: $cf
	rst  $38                                         ; $7155: $ff
	rst  $38                                         ; $7156: $ff
	rst  $38                                         ; $7157: $ff
	ld   h, c                                        ; $7158: $61
	ld   de, $1111                                   ; $7159: $11 $11 $11
	ld   de, $af11                                   ; $715c: $11 $11 $af
	rst  $38                                         ; $715f: $ff
	rst  $38                                         ; $7160: $ff
	rst  $38                                         ; $7161: $ff
	rst  $38                                         ; $7162: $ff
	ld   a, [$1111]                                  ; $7163: $fa $11 $11
	ld   de, $cf14                                   ; $7166: $11 $14 $cf
	rst  $38                                         ; $7169: $ff
	rst  $38                                         ; $716a: $ff
	db   $fd                                         ; $716b: $fd
	ld   b, c                                        ; $716c: $41
	ld   de, $1111                                   ; $716d: $11 $11 $11
	ld   de, $cf11                                   ; $7170: $11 $11 $cf
	rst  $38                                         ; $7173: $ff
	rst  $38                                         ; $7174: $ff
	rst  $38                                         ; $7175: $ff
	rst  $38                                         ; $7176: $ff
	rst  $30                                         ; $7177: $f7
	ld   de, $1111                                   ; $7178: $11 $11 $11
	ld   d, $ff                                      ; $717b: $16 $ff
	rst  $38                                         ; $717d: $ff
	rst  $38                                         ; $717e: $ff
	rst  $38                                         ; $717f: $ff
	ld   h, c                                        ; $7180: $61
	ld   de, $1111                                   ; $7181: $11 $11 $11
	ld   de, $ef11                                   ; $7184: $11 $11 $ef
	rst  $38                                         ; $7187: $ff
	rst  $38                                         ; $7188: $ff
	rst  $38                                         ; $7189: $ff
	rst  $38                                         ; $718a: $ff
	and  $21                                         ; $718b: $e6 $21
	ld   de, $2911                                   ; $718d: $11 $11 $29
	rst  $38                                         ; $7190: $ff
	rst  $38                                         ; $7191: $ff
	rst  $38                                         ; $7192: $ff
	db   $fd                                         ; $7193: $fd
	ld   hl, $1111                                   ; $7194: $21 $11 $11
	ld   de, $1411                                   ; $7197: $11 $11 $14
	rst  $38                                         ; $719a: $ff
	rst  $38                                         ; $719b: $ff
	rst  $38                                         ; $719c: $ff
	rst  $38                                         ; $719d: $ff
	rst  $38                                         ; $719e: $ff
	and  e                                           ; $719f: $a3
	ld   de, $1111                                   ; $71a0: $11 $11 $11
	ld   e, [hl]                                     ; $71a3: $5e
	rst  $38                                         ; $71a4: $ff
	rst  $38                                         ; $71a5: $ff
	rst  $38                                         ; $71a6: $ff
	ld   hl, sp+$11                                  ; $71a7: $f8 $11
	ld   de, $1111                                   ; $71a9: $11 $11 $11
	ld   de, $ff19                                   ; $71ac: $11 $19 $ff
	rst  $38                                         ; $71af: $ff
	rst  $38                                         ; $71b0: $ff
	rst  $38                                         ; $71b1: $ff
	cp   $73                                         ; $71b2: $fe $73
	ld   de, $1211                                   ; $71b4: $11 $11 $12
	xor  a                                           ; $71b7: $af
	rst  $38                                         ; $71b8: $ff
	rst  $38                                         ; $71b9: $ff
	rst  $38                                         ; $71ba: $ff
	push af                                          ; $71bb: $f5
	ld   de, $1111                                   ; $71bc: $11 $11 $11
	ld   de, $1e11                                   ; $71bf: $11 $11 $1e
	rst  $38                                         ; $71c2: $ff
	rst  $38                                         ; $71c3: $ff
	rst  $38                                         ; $71c4: $ff
	rst  $38                                         ; $71c5: $ff
	db   $fc                                         ; $71c6: $fc
	ld   [hl], h                                     ; $71c7: $74
	ld   de, $1611                                   ; $71c8: $11 $11 $16
	rst  $28                                         ; $71cb: $ef
	rst  $38                                         ; $71cc: $ff
	rst  $38                                         ; $71cd: $ff
	rst  $38                                         ; $71ce: $ff
	ld   [hl], c                                     ; $71cf: $71
	ld   de, $1111                                   ; $71d0: $11 $11 $11
	ld   de, $5f11                                   ; $71d3: $11 $11 $5f
	rst  $38                                         ; $71d6: $ff
	rst  $38                                         ; $71d7: $ff
	rst  $38                                         ; $71d8: $ff
	rst  $38                                         ; $71d9: $ff
	ld   [$1151], a                                  ; $71da: $ea $51 $11
	ld   de, $ff4a                                   ; $71dd: $11 $4a $ff
	rst  $38                                         ; $71e0: $ff
	rst  $38                                         ; $71e1: $ff
	cp   $61                                         ; $71e2: $fe $61
	ld   de, $1111                                   ; $71e4: $11 $11 $11
	ld   de, $9f11                                   ; $71e7: $11 $11 $9f
	rst  $38                                         ; $71ea: $ff
	rst  $38                                         ; $71eb: $ff
	rst  $38                                         ; $71ec: $ff
	rst  $38                                         ; $71ed: $ff
	sub  $31                                         ; $71ee: $d6 $31
	ld   de, $5c11                                   ; $71f0: $11 $11 $5c
	rst  $38                                         ; $71f3: $ff
	rst  $38                                         ; $71f4: $ff
	rst  $38                                         ; $71f5: $ff
	ei                                               ; $71f6: $fb
	ld   hl, $1111                                   ; $71f7: $21 $11 $11
	ld   de, $1311                                   ; $71fa: $11 $11 $13
	rst  JumpTable                                         ; $71fd: $df
	rst  $38                                         ; $71fe: $ff
	rst  $38                                         ; $71ff: $ff
	rst  $38                                         ; $7200: $ff
	rst  $38                                         ; $7201: $ff
	sub  h                                           ; $7202: $94
	ld   de, $1411                                   ; $7203: $11 $11 $14
	xor  a                                           ; $7206: $af
	rst  $38                                         ; $7207: $ff
	rst  $38                                         ; $7208: $ff
	rst  $38                                         ; $7209: $ff
	ld   hl, sp+$11                                  ; $720a: $f8 $11
	ld   de, $1111                                   ; $720c: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $720f: $11 $14 $ff
	rst  $38                                         ; $7212: $ff
	rst  $38                                         ; $7213: $ff
	rst  $38                                         ; $7214: $ff
	rst  $38                                         ; $7215: $ff
	add  e                                           ; $7216: $83
	ld   de, $2811                                   ; $7217: $11 $11 $28
	cp   a                                           ; $721a: $bf
	rst  $38                                         ; $721b: $ff
	rst  $38                                         ; $721c: $ff
	rst  $38                                         ; $721d: $ff
	rst  $20                                         ; $721e: $e7
	ld   de, $1111                                   ; $721f: $11 $11 $11
	ld   de, $1411                                   ; $7222: $11 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7225: $cf
	rst  $38                                         ; $7226: $ff
	rst  $38                                         ; $7227: $ff
	rst  $38                                         ; $7228: $ff
	rst  $38                                         ; $7229: $ff
	ld   [hl], d                                     ; $722a: $72
	ld   b, c                                        ; $722b: $41
	inc  de                                          ; $722c: $13
	dec  sp                                          ; $722d: $3b
	rst  $28                                         ; $722e: $ef
	rst  $38                                         ; $722f: $ff
	rst  $38                                         ; $7230: $ff
	rst  $38                                         ; $7231: $ff
	or   $11                                         ; $7232: $f6 $11
	ld   de, $1111                                   ; $7234: $11 $11 $11
	ld   de, $af11                                   ; $7237: $11 $11 $af
	rst  $38                                         ; $723a: $ff
	rst  $38                                         ; $723b: $ff
	rst  $38                                         ; $723c: $ff
	rst  $38                                         ; $723d: $ff
	sub  [hl]                                        ; $723e: $96
	ld   d, e                                        ; $723f: $53
	inc  hl                                          ; $7240: $23
	ld   e, d                                        ; $7241: $5a
	rst  $28                                         ; $7242: $ef
	rst  $38                                         ; $7243: $ff
	rst  $38                                         ; $7244: $ff
	rst  $38                                         ; $7245: $ff
	ld   sp, hl                                      ; $7246: $f9
	ld   de, $1111                                   ; $7247: $11 $11 $11
	ld   de, $1111                                   ; $724a: $11 $11 $11
	ld   l, a                                        ; $724d: $6f
	rst  $38                                         ; $724e: $ff
	rst  $38                                         ; $724f: $ff
	rst  $38                                         ; $7250: $ff
	rst  $38                                         ; $7251: $ff
	or   [hl]                                        ; $7252: $b6
	adc  b                                           ; $7253: $88
	scf                                              ; $7254: $37
	adc  h                                           ; $7255: $8c
	rst  $38                                         ; $7256: $ff
	rst  $38                                         ; $7257: $ff
	rst  $38                                         ; $7258: $ff
	rst  $38                                         ; $7259: $ff
	ld   sp, hl                                      ; $725a: $f9
	ld   de, $1111                                   ; $725b: $11 $11 $11
	ld   de, $1111                                   ; $725e: $11 $11 $11
	add  a                                           ; $7261: $87
	rst  $38                                         ; $7262: $ff
	rst  $38                                         ; $7263: $ff
	rst  $38                                         ; $7264: $ff
	rst  $38                                         ; $7265: $ff
	ld   a, [$7968]                                  ; $7266: $fa $68 $79
	sbc  d                                           ; $7269: $9a
	rst  $38                                         ; $726a: $ff
	rst  $38                                         ; $726b: $ff
	rst  $38                                         ; $726c: $ff
	rst  $38                                         ; $726d: $ff
	ei                                               ; $726e: $fb
	ld   b, c                                        ; $726f: $41
	ld   de, $1111                                   ; $7270: $11 $11 $11
	ld   de, $2111                                   ; $7273: $11 $11 $21
	xor  a                                           ; $7276: $af
	rst  $38                                         ; $7277: $ff
	rst  $38                                         ; $7278: $ff
	db   $fd                                         ; $7279: $fd
	db   $fc                                         ; $727a: $fc
	ld   l, h                                        ; $727b: $6c
	rst  $38                                         ; $727c: $ff
	rst  $38                                         ; $727d: $ff
	rst  $38                                         ; $727e: $ff
	rst  $38                                         ; $727f: $ff
	rst  $38                                         ; $7280: $ff
	rst  $38                                         ; $7281: $ff
	ld   hl, sp+$31                                  ; $7282: $f8 $31
	ld   de, $1111                                   ; $7284: $11 $11 $11
	ld   de, $1111                                   ; $7287: $11 $11 $11
	ld   [hl], $bc                                   ; $728a: $36 $bc
	rst  JumpTable                                         ; $728c: $df
	rst  $38                                         ; $728d: $ff
	rst  JumpTable                                         ; $728e: $df
	cp   $ff                                         ; $728f: $fe $ff
	rst  $38                                         ; $7291: $ff
	rst  $38                                         ; $7292: $ff
	rst  $38                                         ; $7293: $ff
	rst  $38                                         ; $7294: $ff
	rst  $38                                         ; $7295: $ff
	db   $fd                                         ; $7296: $fd
	add  e                                           ; $7297: $83
	ld   de, $1111                                   ; $7298: $11 $11 $11
	ld   de, $1111                                   ; $729b: $11 $11 $11
	ld   de, $cf69                                   ; $729e: $11 $69 $cf
	rst  $38                                         ; $72a1: $ff
	rst  $28                                         ; $72a2: $ef
	cp   $df                                         ; $72a3: $fe $df
	rst  $38                                         ; $72a5: $ff
	rst  $38                                         ; $72a6: $ff
	rst  $38                                         ; $72a7: $ff
	rst  $38                                         ; $72a8: $ff
	rst  $38                                         ; $72a9: $ff
	rst  $38                                         ; $72aa: $ff
	add  sp, $61                                     ; $72ab: $e8 $61
	ld   de, $1111                                   ; $72ad: $11 $11 $11
	ld   de, $1111                                   ; $72b0: $11 $11 $11
	dec  b                                           ; $72b3: $05
	cp   c                                           ; $72b4: $b9
	rst  $28                                         ; $72b5: $ef
	cp   $ff                                         ; $72b6: $fe $ff
	rst  $38                                         ; $72b8: $ff
	rst  $38                                         ; $72b9: $ff
	rst  $38                                         ; $72ba: $ff
	rst  $38                                         ; $72bb: $ff
	rst  $38                                         ; $72bc: $ff
	rst  $38                                         ; $72bd: $ff
	rst  $38                                         ; $72be: $ff
	db   $fc                                         ; $72bf: $fc
	and  e                                           ; $72c0: $a3
	ld   de, $1111                                   ; $72c1: $11 $11 $11
	ld   de, $1111                                   ; $72c4: $11 $11 $11
	ld   de, $9f34                                   ; $72c7: $11 $34 $9f
	rst  $38                                         ; $72ca: $ff
	rst  JumpTable                                         ; $72cb: $df
	rst  $38                                         ; $72cc: $ff
	rst  $38                                         ; $72cd: $ff
	rst  $38                                         ; $72ce: $ff
	rst  $38                                         ; $72cf: $ff
	rst  $38                                         ; $72d0: $ff
	rst  $38                                         ; $72d1: $ff
	rst  $38                                         ; $72d2: $ff
	rst  $38                                         ; $72d3: $ff
	ret  z                                           ; $72d4: $c8

	ld   sp, $1111                                   ; $72d5: $31 $11 $11
	ld   de, $1111                                   ; $72d8: $11 $11 $11
	ld   de, $3811                                   ; $72db: $11 $11 $38
	rst  $38                                         ; $72de: $ff
	cp   $ff                                         ; $72df: $fe $ff
	rst  $38                                         ; $72e1: $ff
	rst  $38                                         ; $72e2: $ff
	rst  $38                                         ; $72e3: $ff
	rst  $38                                         ; $72e4: $ff
	rst  $38                                         ; $72e5: $ff
	rst  $38                                         ; $72e6: $ff
	rst  $38                                         ; $72e7: $ff
	cp   $a6                                         ; $72e8: $fe $a6
	ld   de, $1111                                   ; $72ea: $11 $11 $11
	ld   de, $1111                                   ; $72ed: $11 $11 $11
	ld   de, $5c45                                   ; $72f0: $11 $45 $5c
	rst  $38                                         ; $72f3: $ff
	rst  $38                                         ; $72f4: $ff
	rst  $38                                         ; $72f5: $ff
	rst  $38                                         ; $72f6: $ff
	rst  $38                                         ; $72f7: $ff
	rst  $38                                         ; $72f8: $ff
	rst  $38                                         ; $72f9: $ff
	rst  $38                                         ; $72fa: $ff
	rst  $38                                         ; $72fb: $ff
	rst  $38                                         ; $72fc: $ff
	ei                                               ; $72fd: $fb
	ld   h, c                                        ; $72fe: $61
	ld   de, $1111                                   ; $72ff: $11 $11 $11
	ld   de, $1111                                   ; $7302: $11 $11 $11
	ld   [de], a                                     ; $7305: $12
	inc  sp                                          ; $7306: $33
	xor  a                                           ; $7307: $af
	cp   $ff                                         ; $7308: $fe $ff
	rst  $38                                         ; $730a: $ff
	rst  $38                                         ; $730b: $ff
	rst  $38                                         ; $730c: $ff
	rst  $38                                         ; $730d: $ff
	rst  $38                                         ; $730e: $ff
	rst  $38                                         ; $730f: $ff
	rst  $38                                         ; $7310: $ff
	rst  $38                                         ; $7311: $ff
	sub  $11                                         ; $7312: $d6 $11
	ld   de, $1111                                   ; $7314: $11 $11 $11
	ld   de, $1111                                   ; $7317: $11 $11 $11
	ld   [de], a                                     ; $731a: $12
	scf                                              ; $731b: $37
	rst  $28                                         ; $731c: $ef
	rst  $28                                         ; $731d: $ef
	rst  $38                                         ; $731e: $ff
	rst  $38                                         ; $731f: $ff
	rst  $38                                         ; $7320: $ff
	rst  $38                                         ; $7321: $ff
	rst  $38                                         ; $7322: $ff
	rst  $38                                         ; $7323: $ff
	rst  $38                                         ; $7324: $ff
	rst  $38                                         ; $7325: $ff
	cp   $a4                                         ; $7326: $fe $a4
	ld   de, $1111                                   ; $7328: $11 $11 $11
	ld   de, $1111                                   ; $732b: $11 $11 $11
	ld   de, $7d11                                   ; $732e: $11 $11 $7d
	cp   $ff                                         ; $7331: $fe $ff
	rst  $38                                         ; $7333: $ff
	rst  $38                                         ; $7334: $ff
	rst  $38                                         ; $7335: $ff
	rst  $38                                         ; $7336: $ff
	rst  $38                                         ; $7337: $ff
	rst  $38                                         ; $7338: $ff
	rst  $38                                         ; $7339: $ff
	rst  $38                                         ; $733a: $ff
	ei                                               ; $733b: $fb
	add  h                                           ; $733c: $84
	ld   de, $1111                                   ; $733d: $11 $11 $11
	ld   de, $1111                                   ; $7340: $11 $11 $11
	ld   de, $8d13                                   ; $7343: $11 $13 $8d
	rst  $28                                         ; $7346: $ef
	rst  $38                                         ; $7347: $ff
	rst  $38                                         ; $7348: $ff
	rst  $38                                         ; $7349: $ff
	rst  $38                                         ; $734a: $ff
	rst  $38                                         ; $734b: $ff
	rst  $38                                         ; $734c: $ff
	rst  $38                                         ; $734d: $ff
	rst  $38                                         ; $734e: $ff
	rst  $38                                         ; $734f: $ff
	ld   [$1162], a                                  ; $7350: $ea $62 $11
	ld   de, $1111                                   ; $7353: $11 $11 $11
	ld   de, $1111                                   ; $7356: $11 $11 $11
	ld   [de], a                                     ; $7359: $12
	ld   l, e                                        ; $735a: $6b
	db   $ed                                         ; $735b: $ed
	rst  $38                                         ; $735c: $ff
	rst  $38                                         ; $735d: $ff
	rst  $38                                         ; $735e: $ff
	rst  $38                                         ; $735f: $ff
	rst  $38                                         ; $7360: $ff
	rst  $38                                         ; $7361: $ff
	rst  $38                                         ; $7362: $ff
	rst  $38                                         ; $7363: $ff
	cp   $d9                                         ; $7364: $fe $d9
	ld   d, e                                        ; $7366: $53
	ld   hl, $1111                                   ; $7367: $21 $11 $11
	ld   de, $1111                                   ; $736a: $11 $11 $11
	ld   de, $3811                                   ; $736d: $11 $11 $38
	xor  e                                           ; $7370: $ab
	rst  JumpTable                                         ; $7371: $df
	rst  $38                                         ; $7372: $ff
	rst  $38                                         ; $7373: $ff
	rst  $38                                         ; $7374: $ff
	rst  $38                                         ; $7375: $ff
	rst  $38                                         ; $7376: $ff
	rst  $38                                         ; $7377: $ff
	rst  $38                                         ; $7378: $ff
	rst  $38                                         ; $7379: $ff
	db   $fc                                         ; $737a: $fc
	sub  a                                           ; $737b: $97
	ld   h, l                                        ; $737c: $65
	ld   sp, $1111                                   ; $737d: $31 $11 $11
	ld   de, $1111                                   ; $7380: $11 $11 $11
	ld   de, $1211                                   ; $7383: $11 $11 $12
	ld   b, [hl]                                     ; $7386: $46
	sbc  l                                           ; $7387: $9d
	rst  $38                                         ; $7388: $ff
	rst  $38                                         ; $7389: $ff
	rst  $38                                         ; $738a: $ff
	rst  $38                                         ; $738b: $ff
	rst  $38                                         ; $738c: $ff
	rst  $38                                         ; $738d: $ff
	rst  $38                                         ; $738e: $ff
	rst  $38                                         ; $738f: $ff
	rst  $38                                         ; $7390: $ff
	db   $ec                                         ; $7391: $ec
	and  a                                           ; $7392: $a7
	ld   h, e                                        ; $7393: $63
	ld   hl, $1111                                   ; $7394: $21 $11 $11
	ld   de, $1111                                   ; $7397: $11 $11 $11
	ld   de, $1111                                   ; $739a: $11 $11 $11
	ld   b, a                                        ; $739d: $47
	xor  [hl]                                        ; $739e: $ae
	rst  $38                                         ; $739f: $ff
	rst  $38                                         ; $73a0: $ff
	rst  $38                                         ; $73a1: $ff
	rst  $38                                         ; $73a2: $ff
	rst  $38                                         ; $73a3: $ff
	rst  $38                                         ; $73a4: $ff
	rst  $38                                         ; $73a5: $ff
	rst  $38                                         ; $73a6: $ff
	db   $fc                                         ; $73a7: $fc
	and  a                                           ; $73a8: $a7
	ld   b, d                                        ; $73a9: $42
	ld   de, $1111                                   ; $73aa: $11 $11 $11
	ld   de, $1111                                   ; $73ad: $11 $11 $11
	ld   de, $1111                                   ; $73b0: $11 $11 $11
	ld   c, b                                        ; $73b3: $48
	cp   [hl]                                        ; $73b4: $be
	rst  $38                                         ; $73b5: $ff
	rst  $38                                         ; $73b6: $ff
	rst  $38                                         ; $73b7: $ff
	rst  $38                                         ; $73b8: $ff
	rst  $38                                         ; $73b9: $ff
	rst  $38                                         ; $73ba: $ff
	rst  $38                                         ; $73bb: $ff
	rst  $38                                         ; $73bc: $ff
	db   $fd                                         ; $73bd: $fd
	and  a                                           ; $73be: $a7
	ld   b, d                                        ; $73bf: $42
	ld   de, $1111                                   ; $73c0: $11 $11 $11
	ld   de, $1111                                   ; $73c3: $11 $11 $11
	ld   de, $1111                                   ; $73c6: $11 $11 $11
	scf                                              ; $73c9: $37
	cp   [hl]                                        ; $73ca: $be
	rst  $38                                         ; $73cb: $ff
	rst  $38                                         ; $73cc: $ff
	rst  $38                                         ; $73cd: $ff
	rst  $38                                         ; $73ce: $ff
	rst  $38                                         ; $73cf: $ff
	rst  $38                                         ; $73d0: $ff
	rst  $38                                         ; $73d1: $ff
	rst  $38                                         ; $73d2: $ff
	db   $fc                                         ; $73d3: $fc
	and  a                                           ; $73d4: $a7
	ld   d, d                                        ; $73d5: $52
	ld   de, $1111                                   ; $73d6: $11 $11 $11
	ld   de, $1111                                   ; $73d9: $11 $11 $11
	ld   de, $1111                                   ; $73dc: $11 $11 $11
	scf                                              ; $73df: $37
	cp   [hl]                                        ; $73e0: $be
	rst  $38                                         ; $73e1: $ff
	rst  $38                                         ; $73e2: $ff
	rst  $38                                         ; $73e3: $ff
	rst  $38                                         ; $73e4: $ff
	rst  $38                                         ; $73e5: $ff
	rst  $38                                         ; $73e6: $ff
	rst  $38                                         ; $73e7: $ff
	rst  $38                                         ; $73e8: $ff
	db   $fd                                         ; $73e9: $fd
	xor  b                                           ; $73ea: $a8
	ld   d, e                                        ; $73eb: $53
	ld   de, $1111                                   ; $73ec: $11 $11 $11
	ld   de, $1111                                   ; $73ef: $11 $11 $11
	ld   de, $1111                                   ; $73f2: $11 $11 $11
	ld   h, $ad                                      ; $73f5: $26 $ad
	rst  $38                                         ; $73f7: $ff
	rst  $38                                         ; $73f8: $ff
	rst  $38                                         ; $73f9: $ff
	rst  $38                                         ; $73fa: $ff
	rst  $38                                         ; $73fb: $ff
	rst  $38                                         ; $73fc: $ff
	rst  $38                                         ; $73fd: $ff
	rst  $38                                         ; $73fe: $ff
	cp   $c8                                         ; $73ff: $fe $c8
	ld   h, h                                        ; $7401: $64
	ld   de, $1111                                   ; $7402: $11 $11 $11
	ld   de, $1111                                   ; $7405: $11 $11 $11
	ld   de, $1111                                   ; $7408: $11 $11 $11
	ld   [hl], $ad                                   ; $740b: $36 $ad
	rst  $38                                         ; $740d: $ff
	rst  $38                                         ; $740e: $ff
	rst  $38                                         ; $740f: $ff
	rst  $38                                         ; $7410: $ff
	rst  $38                                         ; $7411: $ff
	rst  $38                                         ; $7412: $ff
	rst  $38                                         ; $7413: $ff
	rst  $38                                         ; $7414: $ff
	rst  $38                                         ; $7415: $ff
	cp   b                                           ; $7416: $b8
	ld   h, e                                        ; $7417: $63
	ld   de, $1111                                   ; $7418: $11 $11 $11
	ld   de, $1111                                   ; $741b: $11 $11 $11
	ld   de, $1111                                   ; $741e: $11 $11 $11
	ld   [hl], $ae                                   ; $7421: $36 $ae
	rst  $38                                         ; $7423: $ff
	rst  $38                                         ; $7424: $ff
	rst  $38                                         ; $7425: $ff
	rst  $38                                         ; $7426: $ff
	rst  $38                                         ; $7427: $ff
	rst  $38                                         ; $7428: $ff
	rst  $38                                         ; $7429: $ff
	rst  $38                                         ; $742a: $ff
	cp   $b7                                         ; $742b: $fe $b7
	ld   d, d                                        ; $742d: $52
	ld   de, $1111                                   ; $742e: $11 $11 $11
	ld   de, $1111                                   ; $7431: $11 $11 $11
	ld   de, $1111                                   ; $7434: $11 $11 $11
	scf                                              ; $7437: $37
	cp   [hl]                                        ; $7438: $be
	rst  $38                                         ; $7439: $ff
	rst  $38                                         ; $743a: $ff
	rst  $38                                         ; $743b: $ff
	rst  $38                                         ; $743c: $ff
	rst  $38                                         ; $743d: $ff
	rst  $38                                         ; $743e: $ff
	rst  $38                                         ; $743f: $ff
	rst  $38                                         ; $7440: $ff
	db   $fc                                         ; $7441: $fc
	and  a                                           ; $7442: $a7
	ld   b, d                                        ; $7443: $42
	ld   de, $1111                                   ; $7444: $11 $11 $11
	ld   de, $1111                                   ; $7447: $11 $11 $11
	ld   de, $1111                                   ; $744a: $11 $11 $11
	ld   c, b                                        ; $744d: $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $744e: $cf
	rst  $38                                         ; $744f: $ff
	rst  $38                                         ; $7450: $ff
	rst  $38                                         ; $7451: $ff
	rst  $38                                         ; $7452: $ff
	rst  $38                                         ; $7453: $ff
	rst  $38                                         ; $7454: $ff
	rst  $38                                         ; $7455: $ff
	rst  $38                                         ; $7456: $ff
	db   $ec                                         ; $7457: $ec
	add  l                                           ; $7458: $85
	ld   sp, $1111                                   ; $7459: $31 $11 $11
	ld   de, $1111                                   ; $745c: $11 $11 $11
	ld   de, $1111                                   ; $745f: $11 $11 $11
	ld   [de], a                                     ; $7462: $12
	ld   l, d                                        ; $7463: $6a
	rst  $28                                         ; $7464: $ef
	rst  $38                                         ; $7465: $ff
	rst  $38                                         ; $7466: $ff
	rst  $38                                         ; $7467: $ff
	rst  $38                                         ; $7468: $ff
	rst  $38                                         ; $7469: $ff
	rst  $38                                         ; $746a: $ff
	rst  $38                                         ; $746b: $ff
	rst  $38                                         ; $746c: $ff
	db   $db                                         ; $746d: $db
	ld   [hl], h                                     ; $746e: $74
	ld   hl, $1111                                   ; $746f: $21 $11 $11
	ld   de, $1111                                   ; $7472: $11 $11 $11
	ld   de, $1111                                   ; $7475: $11 $11 $11
	inc  d                                           ; $7478: $14
	adc  h                                           ; $7479: $8c
	rst  $38                                         ; $747a: $ff
	rst  $38                                         ; $747b: $ff
	rst  $38                                         ; $747c: $ff
	rst  $38                                         ; $747d: $ff
	rst  $38                                         ; $747e: $ff
	rst  $38                                         ; $747f: $ff
	rst  $38                                         ; $7480: $ff
	rst  $38                                         ; $7481: $ff
	rst  $38                                         ; $7482: $ff
	ret                                              ; $7483: $c9


	ld   d, e                                        ; $7484: $53
	ld   de, $1111                                   ; $7485: $11 $11 $11
	ld   de, $1111                                   ; $7488: $11 $11 $11
	ld   de, $1111                                   ; $748b: $11 $11 $11
	ld   h, $9d                                      ; $748e: $26 $9d
	rst  $38                                         ; $7490: $ff
	rst  $38                                         ; $7491: $ff
	rst  $38                                         ; $7492: $ff
	rst  $38                                         ; $7493: $ff
	rst  $38                                         ; $7494: $ff
	rst  $38                                         ; $7495: $ff
	rst  $38                                         ; $7496: $ff
	rst  $38                                         ; $7497: $ff
	cp   $b8                                         ; $7498: $fe $b8
	ld   b, d                                        ; $749a: $42
	ld   de, $1111                                   ; $749b: $11 $11 $11
	ld   de, $1111                                   ; $749e: $11 $11 $11
	ld   de, $1111                                   ; $74a1: $11 $11 $11
	scf                                              ; $74a4: $37
	cp   a                                           ; $74a5: $bf
	rst  $38                                         ; $74a6: $ff
	rst  $38                                         ; $74a7: $ff
	rst  $38                                         ; $74a8: $ff
	rst  $38                                         ; $74a9: $ff
	rst  $38                                         ; $74aa: $ff
	rst  $38                                         ; $74ab: $ff
	rst  $38                                         ; $74ac: $ff
	rst  $38                                         ; $74ad: $ff
	db   $fd                                         ; $74ae: $fd
	sub  [hl]                                        ; $74af: $96
	ld   sp, $1111                                   ; $74b0: $31 $11 $11
	ld   de, $1111                                   ; $74b3: $11 $11 $11
	ld   de, $1111                                   ; $74b6: $11 $11 $11
	ld   de, $cf48                                   ; $74b9: $11 $48 $cf
	rst  $38                                         ; $74bc: $ff
	rst  $38                                         ; $74bd: $ff
	rst  $38                                         ; $74be: $ff
	rst  $38                                         ; $74bf: $ff
	rst  $38                                         ; $74c0: $ff
	rst  $38                                         ; $74c1: $ff
	rst  $38                                         ; $74c2: $ff
	rst  $38                                         ; $74c3: $ff
	ei                                               ; $74c4: $fb
	sub  [hl]                                        ; $74c5: $96
	ld   sp, $1111                                   ; $74c6: $31 $11 $11
	ld   de, $1111                                   ; $74c9: $11 $11 $11
	ld   de, $1111                                   ; $74cc: $11 $11 $11
	ld   [de], a                                     ; $74cf: $12
	ld   e, d                                        ; $74d0: $5a
	rst  $28                                         ; $74d1: $ef
	rst  $38                                         ; $74d2: $ff
	rst  $38                                         ; $74d3: $ff
	rst  $38                                         ; $74d4: $ff
	rst  $38                                         ; $74d5: $ff
	rst  $38                                         ; $74d6: $ff
	rst  $38                                         ; $74d7: $ff
	rst  $38                                         ; $74d8: $ff
	rst  $38                                         ; $74d9: $ff
	db   $db                                         ; $74da: $db
	add  l                                           ; $74db: $85
	ld   hl, $1111                                   ; $74dc: $21 $11 $11
	ld   de, $1111                                   ; $74df: $11 $11 $11
	ld   de, $1111                                   ; $74e2: $11 $11 $11
	inc  de                                          ; $74e5: $13
	ld   a, e                                        ; $74e6: $7b
	rst  $38                                         ; $74e7: $ff
	rst  $38                                         ; $74e8: $ff
	rst  $38                                         ; $74e9: $ff
	rst  $38                                         ; $74ea: $ff
	rst  $38                                         ; $74eb: $ff
	rst  $38                                         ; $74ec: $ff
	rst  $38                                         ; $74ed: $ff
	rst  $38                                         ; $74ee: $ff
	reti                                             ; $74ef: $d9


	ld   [hl], l                                     ; $74f0: $75
	ld   hl, $1111                                   ; $74f1: $21 $11 $11
	ld   de, $1111                                   ; $74f4: $11 $11 $11
	ld   de, $1a11                                   ; $74f7: $11 $11 $1a
	rst  $38                                         ; $74fa: $ff
	rst  $38                                         ; $74fb: $ff
	rst  $38                                         ; $74fc: $ff
	rst  $38                                         ; $74fd: $ff
	rst  $38                                         ; $74fe: $ff

Call_0c7_74ff:
	rst  $38                                         ; $74ff: $ff
	rst  $38                                         ; $7500: $ff
	rst  $38                                         ; $7501: $ff
	rst  $38                                         ; $7502: $ff
	rst  $38                                         ; $7503: $ff
	ret  z                                           ; $7504: $c8

	ld   h, l                                        ; $7505: $65
	ld   hl, $1111                                   ; $7506: $21 $11 $11
	ld   de, $1111                                   ; $7509: $11 $11 $11
	ld   de, $9f12                                   ; $750c: $11 $12 $9f
	rst  $38                                         ; $750f: $ff
	rst  $38                                         ; $7510: $ff
	rst  $38                                         ; $7511: $ff
	rst  $38                                         ; $7512: $ff
	rst  $38                                         ; $7513: $ff
	rst  $38                                         ; $7514: $ff
	rst  $38                                         ; $7515: $ff
	rst  $38                                         ; $7516: $ff
	rst  $38                                         ; $7517: $ff
	rst  $38                                         ; $7518: $ff
	rst  $10                                         ; $7519: $d7
	ld   hl, $1111                                   ; $751a: $21 $11 $11
	ld   de, $1111                                   ; $751d: $11 $11 $11
	ld   de, $5813                                   ; $7520: $11 $13 $58
	rst  $28                                         ; $7523: $ef
	rst  $38                                         ; $7524: $ff
	rst  $38                                         ; $7525: $ff
	rst  $38                                         ; $7526: $ff
	rst  $38                                         ; $7527: $ff
	rst  $38                                         ; $7528: $ff
	rst  $38                                         ; $7529: $ff
	rst  $38                                         ; $752a: $ff
	rst  $38                                         ; $752b: $ff
	rst  $38                                         ; $752c: $ff
	cp   $91                                         ; $752d: $fe $91
	ld   de, $1111                                   ; $752f: $11 $11 $11
	ld   de, $1111                                   ; $7532: $11 $11 $11
	ld   de, $8d45                                   ; $7535: $11 $45 $8d
	rst  $38                                         ; $7538: $ff
	rst  $38                                         ; $7539: $ff
	rst  $38                                         ; $753a: $ff
	rst  $38                                         ; $753b: $ff
	rst  $38                                         ; $753c: $ff
	rst  $38                                         ; $753d: $ff
	rst  $38                                         ; $753e: $ff
	rst  $38                                         ; $753f: $ff
	rst  $38                                         ; $7540: $ff
	rst  $38                                         ; $7541: $ff
	reti                                             ; $7542: $d9


	ld   de, $1111                                   ; $7543: $11 $11 $11
	ld   de, $1111                                   ; $7546: $11 $11 $11
	ld   de, $7d11                                   ; $7549: $11 $11 $7d
	xor  $ff                                         ; $754c: $ee $ff
	rst  $38                                         ; $754e: $ff
	rst  $38                                         ; $754f: $ff
	rst  $38                                         ; $7550: $ff
	rst  $38                                         ; $7551: $ff
	rst  $38                                         ; $7552: $ff
	rst  $38                                         ; $7553: $ff
	rst  $38                                         ; $7554: $ff
	rst  $38                                         ; $7555: $ff
	ei                                               ; $7556: $fb
	ld   h, c                                        ; $7557: $61
	ld   de, $1111                                   ; $7558: $11 $11 $11
	ld   de, $1111                                   ; $755b: $11 $11 $11
	ld   de, $df26                                   ; $755e: $11 $26 $df
	rst  $38                                         ; $7561: $ff
	rst  $38                                         ; $7562: $ff
	rst  $38                                         ; $7563: $ff
	rst  $38                                         ; $7564: $ff
	rst  $38                                         ; $7565: $ff
	rst  $38                                         ; $7566: $ff
	rst  $38                                         ; $7567: $ff
	rst  $38                                         ; $7568: $ff
	rst  $38                                         ; $7569: $ff
	rst  $38                                         ; $756a: $ff
	sub  d                                           ; $756b: $92
	ld   de, $1111                                   ; $756c: $11 $11 $11
	ld   de, $1111                                   ; $756f: $11 $11 $11
	ld   de, $7b35                                   ; $7572: $11 $35 $7b
	rst  $38                                         ; $7575: $ff
	rst  $38                                         ; $7576: $ff
	rst  $38                                         ; $7577: $ff
	rst  $38                                         ; $7578: $ff
	rst  $38                                         ; $7579: $ff
	rst  $38                                         ; $757a: $ff
	rst  $38                                         ; $757b: $ff

Jump_0c7_757c:
	rst  $38                                         ; $757c: $ff
	rst  $38                                         ; $757d: $ff
	rst  $38                                         ; $757e: $ff
	ld   a, [$1111]                                  ; $757f: $fa $11 $11
	ld   de, $1111                                   ; $7582: $11 $11 $11
	ld   de, $1111                                   ; $7585: $11 $11 $11
	ld   l, l                                        ; $7588: $6d
	rst  $38                                         ; $7589: $ff
	rst  $38                                         ; $758a: $ff
	rst  $38                                         ; $758b: $ff
	rst  $38                                         ; $758c: $ff
	rst  $38                                         ; $758d: $ff
	rst  $38                                         ; $758e: $ff
	rst  $38                                         ; $758f: $ff
	rst  $38                                         ; $7590: $ff
	rst  $38                                         ; $7591: $ff
	rst  $38                                         ; $7592: $ff
	ei                                               ; $7593: $fb
	ld   d, c                                        ; $7594: $51
	ld   de, $1111                                   ; $7595: $11 $11 $11
	ld   de, $1111                                   ; $7598: $11 $11 $11
	ld   de, $ad57                                   ; $759b: $11 $57 $ad
	rst  $28                                         ; $759e: $ef
	rst  $38                                         ; $759f: $ff
	rst  $38                                         ; $75a0: $ff
	rst  $38                                         ; $75a1: $ff
	rst  $38                                         ; $75a2: $ff
	rst  $38                                         ; $75a3: $ff
	rst  $38                                         ; $75a4: $ff
	rst  $38                                         ; $75a5: $ff
	rst  $38                                         ; $75a6: $ff
	rst  $38                                         ; $75a7: $ff
	jp   hl                                          ; $75a8: $e9


	ld   sp, $1111                                   ; $75a9: $31 $11 $11
	ld   de, $1111                                   ; $75ac: $11 $11 $11
	ld   de, $6b12                                   ; $75af: $11 $12 $6b
	rst  $38                                         ; $75b2: $ff
	rst  $38                                         ; $75b3: $ff
	rst  $38                                         ; $75b4: $ff
	rst  $38                                         ; $75b5: $ff
	rst  $38                                         ; $75b6: $ff
	rst  $38                                         ; $75b7: $ff
	rst  $38                                         ; $75b8: $ff

Jump_0c7_75b9:
	rst  $38                                         ; $75b9: $ff
	rst  $38                                         ; $75ba: $ff
	rst  $38                                         ; $75bb: $ff
	rst  $38                                         ; $75bc: $ff
	add  h                                           ; $75bd: $84
	ld   de, $1111                                   ; $75be: $11 $11 $11
	ld   de, $1111                                   ; $75c1: $11 $11 $11
	ld   de, $8f12                                   ; $75c4: $11 $12 $8f
	rst  $38                                         ; $75c7: $ff
	rst  $38                                         ; $75c8: $ff
	rst  $38                                         ; $75c9: $ff

Call_0c7_75ca:
	rst  $38                                         ; $75ca: $ff
	rst  $38                                         ; $75cb: $ff
	rst  $38                                         ; $75cc: $ff
	rst  $38                                         ; $75cd: $ff
	rst  $38                                         ; $75ce: $ff
	rst  $38                                         ; $75cf: $ff
	rst  $38                                         ; $75d0: $ff
	ei                                               ; $75d1: $fb
	add  e                                           ; $75d2: $83
	ld   de, $1111                                   ; $75d3: $11 $11 $11
	ld   de, $1111                                   ; $75d6: $11 $11 $11
	ld   de, $bf15                                   ; $75d9: $11 $15 $bf
	rst  $38                                         ; $75dc: $ff
	rst  $38                                         ; $75dd: $ff
	rst  $38                                         ; $75de: $ff
	rst  $38                                         ; $75df: $ff
	rst  $38                                         ; $75e0: $ff
	rst  $38                                         ; $75e1: $ff
	rst  $38                                         ; $75e2: $ff
	rst  $38                                         ; $75e3: $ff
	rst  $38                                         ; $75e4: $ff
	rst  $38                                         ; $75e5: $ff
	ei                                               ; $75e6: $fb
	ld   [hl], e                                     ; $75e7: $73
	ld   de, $1111                                   ; $75e8: $11 $11 $11
	ld   de, $1111                                   ; $75eb: $11 $11 $11
	ld   de, $df17                                   ; $75ee: $11 $17 $df
	rst  $38                                         ; $75f1: $ff
	rst  $38                                         ; $75f2: $ff
	rst  $38                                         ; $75f3: $ff
	rst  $38                                         ; $75f4: $ff
	rst  $38                                         ; $75f5: $ff
	rst  $38                                         ; $75f6: $ff
	rst  $38                                         ; $75f7: $ff
	rst  $38                                         ; $75f8: $ff
	rst  $38                                         ; $75f9: $ff
	rst  $38                                         ; $75fa: $ff
	db   $ec                                         ; $75fb: $ec
	and  h                                           ; $75fc: $a4
	ld   de, $1111                                   ; $75fd: $11 $11 $11
	ld   de, $1111                                   ; $7600: $11 $11 $11
	ld   de, $7e11                                   ; $7603: $11 $11 $7e
	rst  $38                                         ; $7606: $ff
	rst  $38                                         ; $7607: $ff
	rst  $38                                         ; $7608: $ff
	rst  $38                                         ; $7609: $ff
	rst  $38                                         ; $760a: $ff
	rst  $38                                         ; $760b: $ff
	rst  $38                                         ; $760c: $ff
	cp   $ed                                         ; $760d: $fe $ed
	jp   z, $97bb                                    ; $760f: $ca $bb $97

	ld   sp, $1111                                   ; $7612: $31 $11 $11
	ld   de, $1111                                   ; $7615: $11 $11 $11
	ld   de, $1411                                   ; $7618: $11 $11 $14
	cp   a                                           ; $761b: $bf
	rst  $38                                         ; $761c: $ff
	rst  $38                                         ; $761d: $ff
	rst  $38                                         ; $761e: $ff
	rst  $38                                         ; $761f: $ff
	rst  $38                                         ; $7620: $ff
	rst  $38                                         ; $7621: $ff
	cp   $d9                                         ; $7622: $fe $d9
	sub  a                                           ; $7624: $97
	ld   l, b                                        ; $7625: $68
	ld   h, [hl]                                     ; $7626: $66
	ld   h, h                                        ; $7627: $64
	ld   hl, $1111                                   ; $7628: $21 $11 $11
	ld   de, $1111                                   ; $762b: $11 $11 $11
	ld   de, $1311                                   ; $762e: $11 $11 $13
	ld   l, d                                        ; $7631: $6a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7632: $cf
	rst  $38                                         ; $7633: $ff
	rst  $38                                         ; $7634: $ff
	rst  $38                                         ; $7635: $ff
	rst  $38                                         ; $7636: $ff
	rst  $38                                         ; $7637: $ff
	rst  $38                                         ; $7638: $ff
	db   $ed                                         ; $7639: $ed
	jp   z, $8588                                    ; $763a: $ca $88 $85

	ld   h, l                                        ; $763d: $65
	ld   d, [hl]                                     ; $763e: $56
	ld   b, h                                        ; $763f: $44
	ld   b, e                                        ; $7640: $43
	ld   d, e                                        ; $7641: $53
	ld   b, h                                        ; $7642: $44
	inc  sp                                          ; $7643: $33
	inc  hl                                          ; $7644: $23
	inc  sp                                          ; $7645: $33
	inc  h                                           ; $7646: $24
	ld   b, e                                        ; $7647: $43
	ld   d, l                                        ; $7648: $55
	ld   h, [hl]                                     ; $7649: $66
	ld   [hl], a                                     ; $764a: $77
	sbc  c                                           ; $764b: $99
	xor  d                                           ; $764c: $aa
	cp   h                                           ; $764d: $bc
	call $eede                                       ; $764e: $cd $de $ee
	db   $ed                                         ; $7651: $ed
	call c, $bcdc                                    ; $7652: $dc $dc $bc

Jump_0c7_7655:
	cp   d                                           ; $7655: $ba
	xor  d                                           ; $7656: $aa
	xor  d                                           ; $7657: $aa
	xor  d                                           ; $7658: $aa
	adc  b                                           ; $7659: $88
	sbc  c                                           ; $765a: $99
	ld   [hl], a                                     ; $765b: $77
	ld   [hl], a                                     ; $765c: $77
	halt                                             ; $765d: $76
	halt                                             ; $765e: $76
	halt                                             ; $765f: $76
	ld   h, [hl]                                     ; $7660: $66
	ld   h, [hl]                                     ; $7661: $66
	ld   h, [hl]                                     ; $7662: $66
	ld   h, l                                        ; $7663: $65
	ld   d, l                                        ; $7664: $55
	ld   d, l                                        ; $7665: $55
	ld   d, l                                        ; $7666: $55
	ld   h, [hl]                                     ; $7667: $66
	ld   h, a                                        ; $7668: $67
	ld   a, b                                        ; $7669: $78
	adc  c                                           ; $766a: $89
	sbc  c                                           ; $766b: $99
	xor  d                                           ; $766c: $aa
	cp   h                                           ; $766d: $bc
	cp   h                                           ; $766e: $bc
	call $dddc                                       ; $766f: $cd $dc $dd
	call z, $babb                                    ; $7672: $cc $bb $ba
	xor  c                                           ; $7675: $a9
	xor  c                                           ; $7676: $a9
	sbc  b                                           ; $7677: $98
	ld   [hl], a                                     ; $7678: $77
	ld   h, [hl]                                     ; $7679: $66
	ld   h, l                                        ; $767a: $65
	ld   d, l                                        ; $767b: $55
	ld   d, l                                        ; $767c: $55
	ld   d, l                                        ; $767d: $55
	ld   d, l                                        ; $767e: $55
	ld   d, [hl]                                     ; $767f: $56
	ld   h, a                                        ; $7680: $67
	ld   [hl], a                                     ; $7681: $77
	adc  b                                           ; $7682: $88
	adc  c                                           ; $7683: $89
	sbc  c                                           ; $7684: $99
	sbc  c                                           ; $7685: $99
	xor  c                                           ; $7686: $a9
	sbc  d                                           ; $7687: $9a
	xor  d                                           ; $7688: $aa
	xor  d                                           ; $7689: $aa
	xor  d                                           ; $768a: $aa
	sbc  c                                           ; $768b: $99
	xor  c                                           ; $768c: $a9
	sbc  c                                           ; $768d: $99
	add  a                                           ; $768e: $87
	ld   [hl], a                                     ; $768f: $77
	halt                                             ; $7690: $76
	ld   h, [hl]                                     ; $7691: $66
	ld   h, [hl]                                     ; $7692: $66
	ld   h, [hl]                                     ; $7693: $66
	ld   [hl], a                                     ; $7694: $77
	ld   [hl], a                                     ; $7695: $77
	ld   a, b                                        ; $7696: $78
	adc  b                                           ; $7697: $88
	sbc  c                                           ; $7698: $99
	adc  b                                           ; $7699: $88
	sbc  c                                           ; $769a: $99
	sbc  c                                           ; $769b: $99
	sbc  c                                           ; $769c: $99
	xor  d                                           ; $769d: $aa
	xor  d                                           ; $769e: $aa
	xor  d                                           ; $769f: $aa
	xor  c                                           ; $76a0: $a9
	sbc  c                                           ; $76a1: $99
	adc  c                                           ; $76a2: $89
	adc  b                                           ; $76a3: $88
	ld   [hl], a                                     ; $76a4: $77
	ld   [hl], a                                     ; $76a5: $77
	halt                                             ; $76a6: $76
	ld   h, [hl]                                     ; $76a7: $66

Jump_0c7_76a8:
	ld   h, [hl]                                     ; $76a8: $66

Call_0c7_76a9:
	ld   h, [hl]                                     ; $76a9: $66
	ld   [hl], a                                     ; $76aa: $77
	ld   [hl], a                                     ; $76ab: $77
	ld   [hl], a                                     ; $76ac: $77
	adc  b                                           ; $76ad: $88
	adc  b                                           ; $76ae: $88
	adc  c                                           ; $76af: $89
	sbc  c                                           ; $76b0: $99
	adc  b                                           ; $76b1: $88
	adc  b                                           ; $76b2: $88
	adc  c                                           ; $76b3: $89
	sbc  c                                           ; $76b4: $99
	sbc  c                                           ; $76b5: $99
	sbc  b                                           ; $76b6: $98
	adc  b                                           ; $76b7: $88
	sbc  c                                           ; $76b8: $99
	adc  c                                           ; $76b9: $89

Call_0c7_76ba:
	add  a                                           ; $76ba: $87
	ld   [hl], a                                     ; $76bb: $77
	ld   [hl], a                                     ; $76bc: $77
	ld   [hl], a                                     ; $76bd: $77
	ld   [hl], a                                     ; $76be: $77
	ld   [hl], a                                     ; $76bf: $77
	ld   [hl], a                                     ; $76c0: $77
	ld   [hl], a                                     ; $76c1: $77
	ld   [hl], a                                     ; $76c2: $77
	adc  b                                           ; $76c3: $88
	adc  b                                           ; $76c4: $88
	adc  c                                           ; $76c5: $89
	sbc  c                                           ; $76c6: $99
	sbc  b                                           ; $76c7: $98
	sbc  b                                           ; $76c8: $98
	adc  b                                           ; $76c9: $88
	adc  c                                           ; $76ca: $89
	adc  c                                           ; $76cb: $89
	sbc  c                                           ; $76cc: $99
	adc  b                                           ; $76cd: $88
	adc  b                                           ; $76ce: $88
	adc  b                                           ; $76cf: $88
	adc  b                                           ; $76d0: $88
	ld   a, b                                        ; $76d1: $78
	add  a                                           ; $76d2: $87
	ld   [hl], a                                     ; $76d3: $77
	ld   [hl], a                                     ; $76d4: $77
	ld   [hl], a                                     ; $76d5: $77
	ld   [hl], a                                     ; $76d6: $77
	ld   [hl], a                                     ; $76d7: $77
	ld   [hl], a                                     ; $76d8: $77
	ld   a, b                                        ; $76d9: $78
	adc  b                                           ; $76da: $88
	adc  b                                           ; $76db: $88
	adc  b                                           ; $76dc: $88
	adc  b                                           ; $76dd: $88
	adc  b                                           ; $76de: $88
	adc  b                                           ; $76df: $88
	adc  b                                           ; $76e0: $88
	adc  b                                           ; $76e1: $88
	adc  b                                           ; $76e2: $88
	adc  b                                           ; $76e3: $88
	adc  b                                           ; $76e4: $88
	adc  b                                           ; $76e5: $88
	adc  b                                           ; $76e6: $88
	adc  b                                           ; $76e7: $88
	adc  b                                           ; $76e8: $88
	adc  b                                           ; $76e9: $88
	adc  b                                           ; $76ea: $88
	adc  b                                           ; $76eb: $88
	adc  b                                           ; $76ec: $88
	adc  b                                           ; $76ed: $88
	adc  b                                           ; $76ee: $88
	adc  b                                           ; $76ef: $88
	adc  b                                           ; $76f0: $88
	adc  b                                           ; $76f1: $88
	adc  b                                           ; $76f2: $88
	adc  b                                           ; $76f3: $88
	adc  b                                           ; $76f4: $88
	add  a                                           ; $76f5: $87
	ld   [hl], a                                     ; $76f6: $77
	ld   [hl], a                                     ; $76f7: $77
	ld   [hl], a                                     ; $76f8: $77
	ld   [hl], a                                     ; $76f9: $77
	ld   a, b                                        ; $76fa: $78
	adc  b                                           ; $76fb: $88
	adc  b                                           ; $76fc: $88
	adc  b                                           ; $76fd: $88
	adc  b                                           ; $76fe: $88
	adc  b                                           ; $76ff: $88
	sbc  c                                           ; $7700: $99
	adc  c                                           ; $7701: $89
	adc  b                                           ; $7702: $88
	adc  b                                           ; $7703: $88
	adc  b                                           ; $7704: $88
	adc  b                                           ; $7705: $88
	adc  b                                           ; $7706: $88
	adc  b                                           ; $7707: $88
	adc  b                                           ; $7708: $88
	add  a                                           ; $7709: $87
	ld   [hl], a                                     ; $770a: $77
	ld   [hl], a                                     ; $770b: $77
	ld   [hl], a                                     ; $770c: $77
	ld   [hl], a                                     ; $770d: $77
	ld   [hl], a                                     ; $770e: $77
	ld   [hl], a                                     ; $770f: $77
	ld   [hl], a                                     ; $7710: $77
	adc  b                                           ; $7711: $88
	adc  b                                           ; $7712: $88
	adc  b                                           ; $7713: $88
	adc  b                                           ; $7714: $88
	adc  b                                           ; $7715: $88
	adc  b                                           ; $7716: $88
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
	adc  b                                           ; $7721: $88
	add  a                                           ; $7722: $87
	ld   [hl], a                                     ; $7723: $77
	ld   [hl], a                                     ; $7724: $77
	ld   [hl], a                                     ; $7725: $77
	ld   [hl], a                                     ; $7726: $77
	ld   a, b                                        ; $7727: $78
	adc  b                                           ; $7728: $88
	adc  b                                           ; $7729: $88
	adc  b                                           ; $772a: $88
	adc  b                                           ; $772b: $88
	adc  b                                           ; $772c: $88
	adc  b                                           ; $772d: $88
	adc  b                                           ; $772e: $88
	adc  b                                           ; $772f: $88
	adc  b                                           ; $7730: $88
	adc  b                                           ; $7731: $88
	adc  b                                           ; $7732: $88
	adc  b                                           ; $7733: $88
	adc  b                                           ; $7734: $88
	adc  b                                           ; $7735: $88
	adc  b                                           ; $7736: $88
	adc  b                                           ; $7737: $88
	adc  b                                           ; $7738: $88
	adc  b                                           ; $7739: $88
	adc  b                                           ; $773a: $88
	adc  b                                           ; $773b: $88
	adc  b                                           ; $773c: $88
	adc  b                                           ; $773d: $88
	adc  b                                           ; $773e: $88
	adc  b                                           ; $773f: $88
	adc  b                                           ; $7740: $88
	adc  b                                           ; $7741: $88
	adc  b                                           ; $7742: $88
	adc  b                                           ; $7743: $88
	adc  b                                           ; $7744: $88
	adc  b                                           ; $7745: $88
	adc  b                                           ; $7746: $88
	adc  b                                           ; $7747: $88
	adc  b                                           ; $7748: $88
	adc  b                                           ; $7749: $88
	adc  b                                           ; $774a: $88
	adc  b                                           ; $774b: $88
	adc  b                                           ; $774c: $88
	adc  b                                           ; $774d: $88
	adc  b                                           ; $774e: $88
	adc  b                                           ; $774f: $88
	adc  b                                           ; $7750: $88
	adc  b                                           ; $7751: $88
	adc  b                                           ; $7752: $88
	adc  b                                           ; $7753: $88
	adc  b                                           ; $7754: $88
	adc  b                                           ; $7755: $88
	adc  b                                           ; $7756: $88
	adc  b                                           ; $7757: $88
	adc  b                                           ; $7758: $88
	adc  b                                           ; $7759: $88
	adc  b                                           ; $775a: $88
	adc  b                                           ; $775b: $88
	adc  b                                           ; $775c: $88
	adc  b                                           ; $775d: $88
	adc  b                                           ; $775e: $88
	adc  b                                           ; $775f: $88
	adc  b                                           ; $7760: $88
	adc  b                                           ; $7761: $88
	adc  b                                           ; $7762: $88
	adc  b                                           ; $7763: $88
	adc  b                                           ; $7764: $88
	adc  b                                           ; $7765: $88
	adc  b                                           ; $7766: $88
	adc  b                                           ; $7767: $88
	adc  b                                           ; $7768: $88
	adc  b                                           ; $7769: $88
	adc  b                                           ; $776a: $88
	adc  b                                           ; $776b: $88
	adc  b                                           ; $776c: $88
	adc  b                                           ; $776d: $88
	adc  b                                           ; $776e: $88
	adc  b                                           ; $776f: $88
	adc  b                                           ; $7770: $88
	adc  b                                           ; $7771: $88
	sbc  c                                           ; $7772: $99
	add  a                                           ; $7773: $87
	and  a                                           ; $7774: $a7
	adc  b                                           ; $7775: $88
	ld   a, b                                        ; $7776: $78
	ld   a, b                                        ; $7777: $78
	ld   a, b                                        ; $7778: $78
	ld   a, b                                        ; $7779: $78
	adc  b                                           ; $777a: $88
	ld   a, b                                        ; $777b: $78
	adc  b                                           ; $777c: $88
	add  a                                           ; $777d: $87
	sbc  b                                           ; $777e: $98
	adc  c                                           ; $777f: $89
	adc  c                                           ; $7780: $89
	sbc  b                                           ; $7781: $98
	sbc  c                                           ; $7782: $99
	sbc  c                                           ; $7783: $99
	adc  c                                           ; $7784: $89
	sbc  c                                           ; $7785: $99
	sbc  b                                           ; $7786: $98
	adc  b                                           ; $7787: $88

Jump_0c7_7788:
	adc  c                                           ; $7788: $89
	adc  b                                           ; $7789: $88
	adc  b                                           ; $778a: $88
	adc  b                                           ; $778b: $88
	sub  a                                           ; $778c: $97
	adc  b                                           ; $778d: $88
	ld   a, b                                        ; $778e: $78
	add  a                                           ; $778f: $87
	adc  c                                           ; $7790: $89
	ld   [hl], a                                     ; $7791: $77
	adc  d                                           ; $7792: $8a
	sub  a                                           ; $7793: $97
	sbc  b                                           ; $7794: $98
	adc  c                                           ; $7795: $89
	adc  b                                           ; $7796: $88
	adc  c                                           ; $7797: $89
	ld   a, c                                        ; $7798: $79
	adc  b                                           ; $7799: $88
	sub  a                                           ; $779a: $97
	ld   a, b                                        ; $779b: $78
	add  a                                           ; $779c: $87
	adc  c                                           ; $779d: $89
	ld   a, c                                        ; $779e: $79
	adc  b                                           ; $779f: $88
	adc  b                                           ; $77a0: $88
	ld   a, c                                        ; $77a1: $79
	and  [hl]                                        ; $77a2: $a6
	sub  [hl]                                        ; $77a3: $96
	ld   a, e                                        ; $77a4: $7b
	add  a                                           ; $77a5: $87
	adc  b                                           ; $77a6: $88
	adc  d                                           ; $77a7: $8a
	ret                                              ; $77a8: $c9


	ld   [hl], a                                     ; $77a9: $77
	xor  b                                           ; $77aa: $a8
	add  a                                           ; $77ab: $87
	ld   a, b                                        ; $77ac: $78
	ld   e, c                                        ; $77ad: $59
	sub  [hl]                                        ; $77ae: $96
	sub  a                                           ; $77af: $97
	ld   l, c                                        ; $77b0: $69
	adc  b                                           ; $77b1: $88
	ld   l, c                                        ; $77b2: $69
	ld   a, b                                        ; $77b3: $78
	sub  a                                           ; $77b4: $97
	add  a                                           ; $77b5: $87
	adc  c                                           ; $77b6: $89
	sub  a                                           ; $77b7: $97
	sbc  c                                           ; $77b8: $99
	adc  b                                           ; $77b9: $88
	sub  a                                           ; $77ba: $97
	adc  c                                           ; $77bb: $89
	ld   a, c                                        ; $77bc: $79
	ld   a, d                                        ; $77bd: $7a
	ld   l, c                                        ; $77be: $69
	add  [hl]                                        ; $77bf: $86
	and  a                                           ; $77c0: $a7
	sub  [hl]                                        ; $77c1: $96
	sub  a                                           ; $77c2: $97
	sub  a                                           ; $77c3: $97
	add  a                                           ; $77c4: $87
	adc  c                                           ; $77c5: $89
	adc  c                                           ; $77c6: $89
	ld   a, c                                        ; $77c7: $79
	ld   l, c                                        ; $77c8: $69
	ld   a, b                                        ; $77c9: $78
	sub  a                                           ; $77ca: $97
	add  a                                           ; $77cb: $87
	and  a                                           ; $77cc: $a7
	adc  b                                           ; $77cd: $88
	add  a                                           ; $77ce: $87
	and  [hl]                                        ; $77cf: $a6
	ld   a, e                                        ; $77d0: $7b
	ld   e, e                                        ; $77d1: $5b
	ld   e, c                                        ; $77d2: $59
	sub  l                                           ; $77d3: $95
	and  l                                           ; $77d4: $a5
	sbc  b                                           ; $77d5: $98
	sub  a                                           ; $77d6: $97
	add  [hl]                                        ; $77d7: $86
	adc  b                                           ; $77d8: $88
	adc  b                                           ; $77d9: $88
	ld   e, h                                        ; $77da: $5c
	ld   l, b                                        ; $77db: $68
	add  [hl]                                        ; $77dc: $86
	adc  b                                           ; $77dd: $88
	ld   [hl], a                                     ; $77de: $77
	add  a                                           ; $77df: $87
	adc  e                                           ; $77e0: $8b
	and  [hl]                                        ; $77e1: $a6
	ld   a, c                                        ; $77e2: $79
	add  a                                           ; $77e3: $87
	ld   l, b                                        ; $77e4: $68
	and  l                                           ; $77e5: $a5
	sub  a                                           ; $77e6: $97
	xor  c                                           ; $77e7: $a9
	ld   l, b                                        ; $77e8: $68
	ld   l, h                                        ; $77e9: $6c
	ld   c, e                                        ; $77ea: $4b
	ld   e, c                                        ; $77eb: $59
	and  l                                           ; $77ec: $a5
	or   e                                           ; $77ed: $b3
	cp   c                                           ; $77ee: $b9
	ld   a, $55                                      ; $77ef: $3e $55
	or   a                                           ; $77f1: $b7
	adc  b                                           ; $77f2: $88
	adc  b                                           ; $77f3: $88
	add  a                                           ; $77f4: $87
	sub  e                                           ; $77f5: $93
	db   $d3                                         ; $77f6: $d3
	ccf                                              ; $77f7: $3f
	ld   e, c                                        ; $77f8: $59
	ld   [hl], a                                     ; $77f9: $77
	sub  a                                           ; $77fa: $97
	and  [hl]                                        ; $77fb: $a6
	ld   l, h                                        ; $77fc: $6c
	ld   b, a                                        ; $77fd: $47
	xor  d                                           ; $77fe: $aa
	ld   h, d                                        ; $77ff: $62
	pop  af                                          ; $7800: $f1
	cp   c                                           ; $7801: $b9
	ld   c, d                                        ; $7802: $4a
	ld   e, l                                        ; $7803: $5d
	scf                                              ; $7804: $37
	sub  d                                           ; $7805: $92
	cp   $49                                         ; $7806: $fe $49
	ccf                                              ; $7808: $3f
	ld   b, l                                        ; $7809: $45
	jp   nc, $9cf1                                   ; $780a: $d2 $f1 $9c

	ld   e, [hl]                                     ; $780d: $5e
	ld   a, [de]                                     ; $780e: $1a
	adc  b                                           ; $780f: $88
	and  c                                           ; $7810: $a1
	ldh  [c], a                                      ; $7811: $e2
	ret  z                                           ; $7812: $c8

	ld   c, l                                        ; $7813: $4d
	rra                                              ; $7814: $1f
	daa                                              ; $7815: $27
	cp   b                                           ; $7816: $b8
	rst  $30                                         ; $7817: $f7
	sub  e                                           ; $7818: $93
	xor  d                                           ; $7819: $aa
	scf                                              ; $781a: $37
	ld   b, a                                        ; $781b: $47
	jp   Jump_0c7_7788                               ; $781c: $c3 $88 $77


	ld   [hl], l                                     ; $781f: $75
	ld   a, l                                        ; $7820: $7d
	ld   d, a                                        ; $7821: $57
	or   [hl]                                        ; $7822: $b6
	xor  h                                           ; $7823: $ac
	inc  l                                           ; $7824: $2c
	ld   e, c                                        ; $7825: $59
	pop  hl                                          ; $7826: $e1
	db   $f4                                         ; $7827: $f4
	ld   l, a                                        ; $7828: $6f
	dec  e                                           ; $7829: $1d
	halt                                             ; $782a: $76
	pop  bc                                          ; $782b: $c1
	db   $e3                                         ; $782c: $e3
	adc  h                                           ; $782d: $8c
	rra                                              ; $782e: $1f
	dec  sp                                          ; $782f: $3b
	sub  d                                           ; $7830: $92
	ldh  a, [c]                                      ; $7831: $f2
	cp   e                                           ; $7832: $bb
	dec  l                                           ; $7833: $2d
	ld   e, c                                        ; $7834: $59
	and  e                                           ; $7835: $a3
	ret                                              ; $7836: $c9


	ld   c, c                                        ; $7837: $49
	and  d                                           ; $7838: $a2
	rst  $10                                         ; $7839: $d7
	ld   c, a                                        ; $783a: $4f
	dec  e                                           ; $783b: $1d
	ld   h, d                                        ; $783c: $62
	pop  af                                          ; $783d: $f1
	jp   hl                                          ; $783e: $e9


	ld   e, l                                        ; $783f: $5d
	ld   e, $94                                      ; $7840: $1e $94
	ret  z                                           ; $7842: $c8

	ld   a, h                                        ; $7843: $7c
	ld   a, b                                        ; $7844: $78
	ld   [hl], a                                     ; $7845: $77
	sub  a                                           ; $7846: $97
	add  [hl]                                        ; $7847: $86
	push bc                                          ; $7848: $c5
	sub  a                                           ; $7849: $97
	ld   a, e                                        ; $784a: $7b
	add  hl, sp                                      ; $784b: $39
	ld   h, l                                        ; $784c: $65
	xor  c                                           ; $784d: $a9
	ld   c, e                                        ; $784e: $4b
	xor  b                                           ; $784f: $a8
	add  l                                           ; $7850: $85
	push bc                                          ; $7851: $c5
	sbc  c                                           ; $7852: $99
	ld   c, h                                        ; $7853: $4c
	ld   [hl], a                                     ; $7854: $77
	or   d                                           ; $7855: $b2
	and  $6f                                         ; $7856: $e6 $6f
	rra                                              ; $7858: $1f
	ld   h, l                                        ; $7859: $65
	or   d                                           ; $785a: $b2
	push de                                          ; $785b: $d5
	sbc  b                                           ; $785c: $98
	ld   e, h                                        ; $785d: $5c
	ld   e, e                                        ; $785e: $5b
	and  c                                           ; $785f: $a1
	di                                               ; $7860: $f3

jr_0c7_7861:
	xor  c                                           ; $7861: $a9
	ld   c, e                                        ; $7862: $4b
	ld   a, $39                                      ; $7863: $3e $39
	and  [hl]                                        ; $7865: $a6
	sub  l                                           ; $7866: $95
	sub  $6e                                         ; $7867: $d6 $6e
	ld   c, c                                        ; $7869: $49
	sub  l                                           ; $786a: $95
	push hl                                          ; $786b: $e5
	add  $6e                                         ; $786c: $c6 $6e
	inc  l                                           ; $786e: $2c
	ld   b, a                                        ; $786f: $47
	pop  af                                          ; $7870: $f1
	cp   c                                           ; $7871: $b9
	ld   e, d                                        ; $7872: $5a
	ld   a, $28                                      ; $7873: $3e $28
	pop  de                                          ; $7875: $d1
	cp   c                                           ; $7876: $b9
	ld   a, h                                        ; $7877: $7c
	ld   e, e                                        ; $7878: $5b
	ld   d, [hl]                                     ; $7879: $56
	pop  af                                          ; $787a: $f1
	xor  d                                           ; $787b: $aa
	ld   a, d                                        ; $787c: $7a
	cpl                                              ; $787d: $2f
	jr   c, jr_0c7_7861                              ; $787e: $38 $e1

	ld   sp, hl                                      ; $7880: $f9
	ld   e, d                                        ; $7881: $5a
	ld   e, l                                        ; $7882: $5d
	ld   d, [hl]                                     ; $7883: $56
	and  a                                           ; $7884: $a7
	sbc  c                                           ; $7885: $99
	ld   [hl], a                                     ; $7886: $77
	cp   c                                           ; $7887: $b9
	ld   h, l                                        ; $7888: $65
	push de                                          ; $7889: $d5
	adc  d                                           ; $788a: $8a
	rra                                              ; $788b: $1f
	ld   h, h                                        ; $788c: $64
	pop  af                                          ; $788d: $f1
	call $1b1f                                       ; $788e: $cd $1f $1b
	pop  de                                          ; $7891: $d1
	pop  af                                          ; $7892: $f1
	db   $eb                                         ; $7893: $eb
	rra                                              ; $7894: $1f
	rra                                              ; $7895: $1f
	pop  bc                                          ; $7896: $c1
	di                                               ; $7897: $f3
	ccf                                              ; $7898: $3f
	dec  de                                          ; $7899: $1b
	sub  l                                           ; $789a: $95
	pop  af                                          ; $789b: $f1
	and  [hl]                                        ; $789c: $a6
	or   a                                           ; $789d: $b7
	ld   e, c                                        ; $789e: $59
	adc  b                                           ; $789f: $88
	sbc  c                                           ; $78a0: $99
	cpl                                              ; $78a1: $2f
	ld   l, h                                        ; $78a2: $6c
	add  hl, hl                                      ; $78a3: $29
	pop  af                                          ; $78a4: $f1
	sub  $5b                                         ; $78a5: $d6 $5b
	ld   [hl], a                                     ; $78a7: $77
	ld   a, h                                        ; $78a8: $7c
	sub  l                                           ; $78a9: $95
	add  h                                           ; $78aa: $84
	cp   e                                           ; $78ab: $bb
	dec  hl                                          ; $78ac: $2b
	ld   c, e                                        ; $78ad: $4b
	and  h                                           ; $78ae: $a4
	and  c                                           ; $78af: $a1
	ld   sp, hl                                      ; $78b0: $f9
	ld   e, $4f                                      ; $78b1: $1e $4f
	ld   [hl], c                                     ; $78b3: $71
	di                                               ; $78b4: $f3
	sbc  d                                           ; $78b5: $9a
	ld   e, c                                        ; $78b6: $59
	ld   c, [hl]                                     ; $78b7: $4e
	add  hl, hl                                      ; $78b8: $29
	pop  hl                                          ; $78b9: $e1
	ldh  a, [c]                                      ; $78ba: $f2
	ld   a, [hl]                                     ; $78bb: $7e
	rrca                                             ; $78bc: $0f
	ld   [hl], l                                     ; $78bd: $75
	ldh  [c], a                                      ; $78be: $e2
	or   a                                           ; $78bf: $b7
	ld   e, a                                        ; $78c0: $5f
	ld   c, b                                        ; $78c1: $48
	call nz, $9995                                   ; $78c2: $c4 $95 $99
	cpl                                              ; $78c5: $2f
	inc  e                                           ; $78c6: $1c
	add  c                                           ; $78c7: $81
	pop  af                                          ; $78c8: $f1
	rst  $30                                         ; $78c9: $f7
	rra                                              ; $78ca: $1f
	rra                                              ; $78cb: $1f
	ld   e, b                                        ; $78cc: $58
	pop  bc                                          ; $78cd: $c1
	pop  af                                          ; $78ce: $f1
	xor  a                                           ; $78cf: $af
	rra                                              ; $78d0: $1f
	ld   h, $c3                                      ; $78d1: $26 $c3
	jp   $1ed6                                       ; $78d3: $c3 $d6 $1e


	ld   h, [hl]                                     ; $78d6: $66
	sub  e                                           ; $78d7: $93
	di                                               ; $78d8: $f3
	ld   [hl], a                                     ; $78d9: $77
	xor  h                                           ; $78da: $ac

Call_0c7_78db:
	rra                                              ; $78db: $1f
	ld   c, l                                        ; $78dc: $4d
	add  d                                           ; $78dd: $82
	pop  af                                          ; $78de: $f1
	adc  $1b                                         ; $78df: $ce $1b
	pop  bc                                          ; $78e1: $c1
	db   $f4                                         ; $78e2: $f4
	ld   c, a                                        ; $78e3: $4f
	rra                                              ; $78e4: $1f
	ld   [de], a                                     ; $78e5: $12
	pop  af                                          ; $78e6: $f1
	and  a                                           ; $78e7: $a7
	ld   a, b                                        ; $78e8: $78
	and  h                                           ; $78e9: $a4
	push bc                                          ; $78ea: $c5
	ld   l, l                                        ; $78eb: $6d
	ld   l, b                                        ; $78ec: $68
	adc  e                                           ; $78ed: $8b
	sub  h                                           ; $78ee: $94
	sbc  h                                           ; $78ef: $9c
	ld   e, e                                        ; $78f0: $5b
	ld   e, b                                        ; $78f1: $58
	or   d                                           ; $78f2: $b2
	or   [hl]                                        ; $78f3: $b6
	ld   l, a                                        ; $78f4: $6f
	add  hl, de                                      ; $78f5: $19
	db   $d3                                         ; $78f6: $d3
	pop  af                                          ; $78f7: $f1
	ei                                               ; $78f8: $fb
	rra                                              ; $78f9: $1f
	rra                                              ; $78fa: $1f
	and  h                                           ; $78fb: $a4
	push de                                          ; $78fc: $d5
	ld   [hl], a                                     ; $78fd: $77
	cp   b                                           ; $78fe: $b8
	ld   c, b                                        ; $78ff: $48
	pop  af                                          ; $7900: $f1
	ld   e, [hl]                                     ; $7901: $5e
	ld   h, l                                        ; $7902: $65

jr_0c7_7903:
	sbc  b                                           ; $7903: $98
	ld   l, h                                        ; $7904: $6c
	ld   e, d                                        ; $7905: $5a
	ld   a, [hl-]                                    ; $7906: $3a
	and  c                                           ; $7907: $a1
	sbc  d                                           ; $7908: $9a
	jp   Jump_0c7_75b9                               ; $7909: $c3 $b9 $75


	xor  e                                           ; $790c: $ab

jr_0c7_790d:
	ld   e, $a6                                      ; $790d: $1e $a6
	ld   d, [hl]                                     ; $790f: $56
	ldh  a, [c]                                      ; $7910: $f2
	ccf                                              ; $7911: $3f
	ld   l, $71                                      ; $7912: $2e $71
	di                                               ; $7914: $f3
	and  [hl]                                        ; $7915: $a6
	dec  l                                           ; $7916: $2d
	sub  d                                           ; $7917: $92
	sub  a                                           ; $7918: $97
	add  $1f                                         ; $7919: $c6 $1f
	cpl                                              ; $791b: $2f
	dec  d                                           ; $791c: $15
	pop  af                                          ; $791d: $f1
	db   $f4                                         ; $791e: $f4
	ld   e, a                                        ; $791f: $5f
	rra                                              ; $7920: $1f
	ld   h, $d7                                      ; $7921: $26 $d7
	inc  [hl]                                        ; $7923: $34
	ld   a, [$e346]                                  ; $7924: $fa $46 $e3
	or   l                                           ; $7927: $b5
	ld   c, a                                        ; $7928: $4f
	dec  e                                           ; $7929: $1d
	ld   a, [hl+]                                    ; $792a: $2a
	pop  de                                          ; $792b: $d1
	pop  af                                          ; $792c: $f1
	ld   e, [hl]                                     ; $792d: $5e
	ld   c, l                                        ; $792e: $4d
	ld   a, [de]                                     ; $792f: $1a
	pop  af                                          ; $7930: $f1
	ld   l, [hl]                                     ; $7931: $6e
	sub  c                                           ; $7932: $91
	xor  d                                           ; $7933: $aa
	sub  l                                           ; $7934: $95
	ccf                                              ; $7935: $3f
	ld   h, $a8                                      ; $7936: $26 $a8
	ld   l, h                                        ; $7938: $6c
	or   c                                           ; $7939: $b1
	jp   z, $9fa1                                    ; $793a: $ca $a1 $9f

	ld   e, $91                                      ; $793d: $1e $91
	xor  e                                           ; $793f: $ab
	ld   [hl], c                                     ; $7940: $71
	ld   a, [$b929]                                  ; $7941: $fa $29 $b9
	ld   e, $c4                                      ; $7944: $1e $c4
	ld   e, d                                        ; $7946: $5a
	ld   a, d                                        ; $7947: $7a
	sub  d                                           ; $7948: $92
	pop  af                                          ; $7949: $f1
	ld   a, a                                        ; $794a: $7f
	ld   [de], a                                     ; $794b: $12
	call c, $e916                                    ; $794c: $dc $16 $e9
	add  hl, de                                      ; $794f: $19
	or   d                                           ; $7950: $b2
	rst  ToBoot                                         ; $7951: $c7
	ld   e, b                                        ; $7952: $58
	xor  d                                           ; $7953: $aa
	dec  e                                           ; $7954: $1d
	pop  bc                                          ; $7955: $c1
	ld   c, [hl]                                     ; $7956: $4e
	pop  bc                                          ; $7957: $c1
	ld   l, l                                        ; $7958: $6d
	jr   c, jr_0c7_7903                              ; $7959: $38 $a8

	ld   c, d                                        ; $795b: $4a
	sub  [hl]                                        ; $795c: $96
	sub  e                                           ; $795d: $93
	push hl                                          ; $795e: $e5
	ld   l, e                                        ; $795f: $6b
	ld   h, a                                        ; $7960: $67
	sbc  e                                           ; $7961: $9b
	jr   c, jr_0c7_790d                              ; $7962: $38 $a9

	halt                                             ; $7964: $76
	adc  c                                           ; $7965: $89
	add  a                                           ; $7966: $87
	ld   a, d                                        ; $7967: $7a
	add  a                                           ; $7968: $87
	sub  [hl]                                        ; $7969: $96
	sbc  d                                           ; $796a: $9a
	add  a                                           ; $796b: $87
	sbc  d                                           ; $796c: $9a
	ld   a, c                                        ; $796d: $79
	and  a                                           ; $796e: $a7
	ld   a, h                                        ; $796f: $7c
	ld   a, c                                        ; $7970: $79
	xor  c                                           ; $7971: $a9
	sbc  c                                           ; $7972: $99
	xor  b                                           ; $7973: $a8
	sbc  c                                           ; $7974: $99
	sbc  b                                           ; $7975: $98
	sbc  b                                           ; $7976: $98
	sbc  c                                           ; $7977: $99
	sbc  d                                           ; $7978: $9a
	ld   a, d                                        ; $7979: $7a
	adc  b                                           ; $797a: $88
	sbc  b                                           ; $797b: $98
	sbc  b                                           ; $797c: $98
	sbc  b                                           ; $797d: $98
	sbc  b                                           ; $797e: $98
	sbc  c                                           ; $797f: $99
	sbc  c                                           ; $7980: $99
	sbc  c                                           ; $7981: $99
	ld   a, d                                        ; $7982: $7a
	adc  c                                           ; $7983: $89
	adc  b                                           ; $7984: $88
	sbc  b                                           ; $7985: $98
	sbc  b                                           ; $7986: $98
	sbc  b                                           ; $7987: $98
	adc  b                                           ; $7988: $88
	adc  b                                           ; $7989: $88
	adc  b                                           ; $798a: $88
	ld   a, c                                        ; $798b: $79
	sbc  b                                           ; $798c: $98
	ld   a, c                                        ; $798d: $79
	adc  b                                           ; $798e: $88
	adc  b                                           ; $798f: $88
	adc  b                                           ; $7990: $88
	add  a                                           ; $7991: $87
	adc  c                                           ; $7992: $89
	add  a                                           ; $7993: $87
	sbc  b                                           ; $7994: $98
	ld   a, c                                        ; $7995: $79
	adc  b                                           ; $7996: $88
	add  a                                           ; $7997: $87
	adc  b                                           ; $7998: $88
	adc  b                                           ; $7999: $88
	adc  b                                           ; $799a: $88
	add  a                                           ; $799b: $87
	adc  b                                           ; $799c: $88
	adc  b                                           ; $799d: $88
	adc  b                                           ; $799e: $88
	add  a                                           ; $799f: $87
	adc  b                                           ; $79a0: $88
	ld   a, b                                        ; $79a1: $78
	adc  b                                           ; $79a2: $88
	ld   a, b                                        ; $79a3: $78
	adc  b                                           ; $79a4: $88
	adc  b                                           ; $79a5: $88
	ld   a, b                                        ; $79a6: $78
	adc  b                                           ; $79a7: $88
	ld   a, b                                        ; $79a8: $78
	add  a                                           ; $79a9: $87
	add  a                                           ; $79aa: $87
	adc  b                                           ; $79ab: $88
	ld   a, b                                        ; $79ac: $78
	ld   a, b                                        ; $79ad: $78
	add  a                                           ; $79ae: $87
	adc  b                                           ; $79af: $88
	adc  b                                           ; $79b0: $88
	adc  b                                           ; $79b1: $88
	adc  b                                           ; $79b2: $88
	add  a                                           ; $79b3: $87
	adc  b                                           ; $79b4: $88
	ld   a, b                                        ; $79b5: $78
	adc  b                                           ; $79b6: $88
	adc  b                                           ; $79b7: $88
	add  a                                           ; $79b8: $87
	add  a                                           ; $79b9: $87

Jump_0c7_79ba:
	adc  b                                           ; $79ba: $88
	ld   a, b                                        ; $79bb: $78
	add  a                                           ; $79bc: $87
	adc  b                                           ; $79bd: $88
	add  a                                           ; $79be: $87
	adc  b                                           ; $79bf: $88
	adc  b                                           ; $79c0: $88
	adc  b                                           ; $79c1: $88
	adc  b                                           ; $79c2: $88
	adc  b                                           ; $79c3: $88
	adc  b                                           ; $79c4: $88
	ld   a, b                                        ; $79c5: $78
	add  a                                           ; $79c6: $87
	add  a                                           ; $79c7: $87
	adc  b                                           ; $79c8: $88
	adc  b                                           ; $79c9: $88
	adc  b                                           ; $79ca: $88
	adc  b                                           ; $79cb: $88
	adc  b                                           ; $79cc: $88
	adc  b                                           ; $79cd: $88
	adc  b                                           ; $79ce: $88
	adc  b                                           ; $79cf: $88
	ld   a, b                                        ; $79d0: $78
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
	adc  b                                           ; $79e7: $88
	adc  b                                           ; $79e8: $88
	adc  b                                           ; $79e9: $88
	adc  b                                           ; $79ea: $88
	adc  b                                           ; $79eb: $88
	adc  b                                           ; $79ec: $88
	adc  b                                           ; $79ed: $88
	adc  c                                           ; $79ee: $89
	adc  b                                           ; $79ef: $88
	adc  b                                           ; $79f0: $88
	adc  b                                           ; $79f1: $88
	adc  b                                           ; $79f2: $88
	adc  c                                           ; $79f3: $89
	adc  b                                           ; $79f4: $88
	ld   a, c                                        ; $79f5: $79
	add  a                                           ; $79f6: $87
	adc  c                                           ; $79f7: $89
	add  a                                           ; $79f8: $87
	adc  b                                           ; $79f9: $88
	ld   a, c                                        ; $79fa: $79
	adc  b                                           ; $79fb: $88
	adc  c                                           ; $79fc: $89
	adc  b                                           ; $79fd: $88
	adc  c                                           ; $79fe: $89
	add  a                                           ; $79ff: $87
	ld   a, b                                        ; $7a00: $78
	add  a                                           ; $7a01: $87
	sbc  b                                           ; $7a02: $98
	ld   a, b                                        ; $7a03: $78
	adc  b                                           ; $7a04: $88
	adc  c                                           ; $7a05: $89
	add  [hl]                                        ; $7a06: $86
	xor  b                                           ; $7a07: $a8
	sbc  d                                           ; $7a08: $9a
	ld   e, b                                        ; $7a09: $58
	xor  b                                           ; $7a0a: $a8
	ld   a, b                                        ; $7a0b: $78
	sub  [hl]                                        ; $7a0c: $96
	sbc  b                                           ; $7a0d: $98
	ld   a, b                                        ; $7a0e: $78
	adc  b                                           ; $7a0f: $88
	ld   a, c                                        ; $7a10: $79
	add  a                                           ; $7a11: $87
	adc  b                                           ; $7a12: $88
	adc  b                                           ; $7a13: $88
	adc  c                                           ; $7a14: $89
	ld   a, b                                        ; $7a15: $78
	sbc  b                                           ; $7a16: $98
	adc  b                                           ; $7a17: $88
	adc  d                                           ; $7a18: $8a
	sub  l                                           ; $7a19: $95
	or   a                                           ; $7a1a: $b7
	ld   a, b                                        ; $7a1b: $78
	adc  c                                           ; $7a1c: $89
	adc  c                                           ; $7a1d: $89
	ld   c, h                                        ; $7a1e: $4c
	add  l                                           ; $7a1f: $85
	or   a                                           ; $7a20: $b7
	adc  b                                           ; $7a21: $88
	or   l                                           ; $7a22: $b5
	ld   a, d                                        ; $7a23: $7a
	ld   l, b                                        ; $7a24: $68
	adc  b                                           ; $7a25: $88
	ld   l, b                                        ; $7a26: $68
	sub  a                                           ; $7a27: $97
	adc  b                                           ; $7a28: $88
	adc  b                                           ; $7a29: $88
	adc  b                                           ; $7a2a: $88
	add  a                                           ; $7a2b: $87
	sbc  b                                           ; $7a2c: $98
	ld   a, c                                        ; $7a2d: $79
	ld   a, b                                        ; $7a2e: $78
	add  a                                           ; $7a2f: $87
	adc  b                                           ; $7a30: $88
	adc  b                                           ; $7a31: $88
	add  a                                           ; $7a32: $87
	adc  c                                           ; $7a33: $89
	ld   [hl], a                                     ; $7a34: $77
	add  a                                           ; $7a35: $87
	xor  d                                           ; $7a36: $aa
	ld   e, c                                        ; $7a37: $59
	and  a                                           ; $7a38: $a7
	adc  c                                           ; $7a39: $89
	xor  e                                           ; $7a3a: $ab
	ld   l, d                                        ; $7a3b: $6a
	and  l                                           ; $7a3c: $a5
	sbc  l                                           ; $7a3d: $9d
	ld   [hl], l                                     ; $7a3e: $75
	and  a                                           ; $7a3f: $a7
	ld   e, d                                        ; $7a40: $5a
	add  [hl]                                        ; $7a41: $86
	ld   a, b                                        ; $7a42: $78
	ld   [hl], a                                     ; $7a43: $77
	sub  a                                           ; $7a44: $97
	ld   a, c                                        ; $7a45: $79
	halt                                             ; $7a46: $76
	ld   a, d                                        ; $7a47: $7a
	ld   a, c                                        ; $7a48: $79
	and  [hl]                                        ; $7a49: $a6
	adc  c                                           ; $7a4a: $89
	ld   l, b                                        ; $7a4b: $68
	sub  a                                           ; $7a4c: $97
	ld   a, b                                        ; $7a4d: $78
	xor  b                                           ; $7a4e: $a8
	ld   l, b                                        ; $7a4f: $68
	ld   e, b                                        ; $7a50: $58
	sub  [hl]                                        ; $7a51: $96
	ld   a, c                                        ; $7a52: $79
	ld   d, a                                        ; $7a53: $57
	and  a                                           ; $7a54: $a7
	ld   a, b                                        ; $7a55: $78
	sub  l                                           ; $7a56: $95
	sbc  b                                           ; $7a57: $98
	ld   e, b                                        ; $7a58: $58
	or   a                                           ; $7a59: $b7
	ld   l, e                                        ; $7a5a: $6b
	ld   h, [hl]                                     ; $7a5b: $66
	adc  c                                           ; $7a5c: $89
	ld   l, b                                        ; $7a5d: $68
	adc  b                                           ; $7a5e: $88
	ld   a, c                                        ; $7a5f: $79
	add  l                                           ; $7a60: $85
	or   [hl]                                        ; $7a61: $b6
	ld   l, c                                        ; $7a62: $69
	ld   a, b                                        ; $7a63: $78
	and  [hl]                                        ; $7a64: $a6
	ld   e, d                                        ; $7a65: $5a
	halt                                             ; $7a66: $76
	adc  c                                           ; $7a67: $89
	ld   h, a                                        ; $7a68: $67
	add  l                                           ; $7a69: $85
	and  [hl]                                        ; $7a6a: $a6
	ld   a, d                                        ; $7a6b: $7a
	ld   a, c                                        ; $7a6c: $79
	sub  l                                           ; $7a6d: $95
	ld   a, e                                        ; $7a6e: $7b
	ld   a, b                                        ; $7a6f: $78
	add  [hl]                                        ; $7a70: $86
	sbc  b                                           ; $7a71: $98
	add  [hl]                                        ; $7a72: $86
	and  [hl]                                        ; $7a73: $a6
	ld   a, c                                        ; $7a74: $79
	add  [hl]                                        ; $7a75: $86
	ld   a, c                                        ; $7a76: $79
	ld   d, l                                        ; $7a77: $55
	sbc  h                                           ; $7a78: $9c
	add  hl, sp                                      ; $7a79: $39
	rst  $10                                         ; $7a7a: $d7
	adc  b                                           ; $7a7b: $88
	sub  [hl]                                        ; $7a7c: $96
	or   a                                           ; $7a7d: $b7
	ld   e, c                                        ; $7a7e: $59
	or   a                                           ; $7a7f: $b7
	ld   e, h                                        ; $7a80: $5c
	add  h                                           ; $7a81: $84
	sbc  e                                           ; $7a82: $9b
	ld   b, a                                        ; $7a83: $47
	db   $e4                                         ; $7a84: $e4
	ld   l, h                                        ; $7a85: $6c
	ld   c, b                                        ; $7a86: $48
	or   l                                           ; $7a87: $b5
	ld   l, d                                        ; $7a88: $6a
	ld   a, b                                        ; $7a89: $78
	or   [hl]                                        ; $7a8a: $b6
	xor  c                                           ; $7a8b: $a9
	ld   e, e                                        ; $7a8c: $5b
	db   $e4                                         ; $7a8d: $e4
	adc  l                                           ; $7a8e: $8d
	ld   b, l                                        ; $7a8f: $45
	xor  c                                           ; $7a90: $a9
	ld   e, b                                        ; $7a91: $58
	ld   d, a                                        ; $7a92: $57
	sub  a                                           ; $7a93: $97
	ld   h, a                                        ; $7a94: $67
	sub  h                                           ; $7a95: $94
	cp   d                                           ; $7a96: $ba
	add  [hl]                                        ; $7a97: $86
	ld   l, e                                        ; $7a98: $6b

Jump_0c7_7a99:
	adc  b                                           ; $7a99: $88
	scf                                              ; $7a9a: $37
	and  l                                           ; $7a9b: $a5
	ld   a, c                                        ; $7a9c: $79
	xor  b                                           ; $7a9d: $a8
	sbc  c                                           ; $7a9e: $99
	sbc  c                                           ; $7a9f: $99
	and  l                                           ; $7aa0: $a5
	ld   l, h                                        ; $7aa1: $6c
	ld   [hl], l                                     ; $7aa2: $75
	ld   a, d                                        ; $7aa3: $7a
	add  a                                           ; $7aa4: $87
	sbc  e                                           ; $7aa5: $9b
	and  [hl]                                        ; $7aa6: $a6
	xor  h                                           ; $7aa7: $ac
	sub  a                                           ; $7aa8: $97
	ld   a, h                                        ; $7aa9: $7c
	add  $9c                                         ; $7aaa: $c6 $9c
	sbc  e                                           ; $7aac: $9b
	sbc  b                                           ; $7aad: $98
	ret                                              ; $7aae: $c9


	ld   l, b                                        ; $7aaf: $68
	ld   h, [hl]                                     ; $7ab0: $66
	ld   h, e                                        ; $7ab1: $63
	ld   [hl], h                                     ; $7ab2: $74
	inc  de                                          ; $7ab3: $13
	ld   de, $1111                                   ; $7ab4: $11 $11 $11
	ld   de, $4111                                   ; $7ab7: $11 $11 $41
	sbc  h                                           ; $7aba: $9c
	cp   a                                           ; $7abb: $bf
	rst  $38                                         ; $7abc: $ff
	rst  $38                                         ; $7abd: $ff
	rst  $38                                         ; $7abe: $ff
	rst  $38                                         ; $7abf: $ff
	rst  $38                                         ; $7ac0: $ff
	rst  $38                                         ; $7ac1: $ff
	cp   h                                           ; $7ac2: $bc
	sub  $45                                         ; $7ac3: $d6 $45
	ld   d, e                                        ; $7ac5: $53
	ld   de, $1131                                   ; $7ac6: $11 $31 $11
	ld   de, $1111                                   ; $7ac9: $11 $11 $11
	ld   de, $1111                                   ; $7acc: $11 $11 $11
	xor  l                                           ; $7acf: $ad
	adc  a                                           ; $7ad0: $8f
	rst  $38                                         ; $7ad1: $ff
	rst  $38                                         ; $7ad2: $ff
	rst  $38                                         ; $7ad3: $ff
	rst  $38                                         ; $7ad4: $ff
	rst  $38                                         ; $7ad5: $ff
	rst  $38                                         ; $7ad6: $ff
	db   $ed                                         ; $7ad7: $ed
	add  l                                           ; $7ad8: $85
	ld   de, $1131                                   ; $7ad9: $11 $31 $11
	ld   [de], a                                     ; $7adc: $12
	ld   de, $1111                                   ; $7add: $11 $11 $11
	ld   de, $1111                                   ; $7ae0: $11 $11 $11
	ld   de, $ff28                                   ; $7ae3: $11 $28 $ff
	rst  $38                                         ; $7ae6: $ff
	rst  $38                                         ; $7ae7: $ff
	rst  $38                                         ; $7ae8: $ff
	rst  $38                                         ; $7ae9: $ff
	rst  $38                                         ; $7aea: $ff
	cp   $e8                                         ; $7aeb: $fe $e8
	inc  [hl]                                        ; $7aed: $34
	inc  hl                                          ; $7aee: $23
	ld   d, d                                        ; $7aef: $52
	ld   b, [hl]                                     ; $7af0: $46
	ld   b, c                                        ; $7af1: $41
	ld   de, $1111                                   ; $7af2: $11 $11 $11
	ld   de, $1111                                   ; $7af5: $11 $11 $11
	ld   de, $ff3f                                   ; $7af8: $11 $3f $ff
	rst  $38                                         ; $7afb: $ff
	rst  $38                                         ; $7afc: $ff
	rst  $38                                         ; $7afd: $ff
	rst  $38                                         ; $7afe: $ff
	rst  $38                                         ; $7aff: $ff
	db   $fd                                         ; $7b00: $fd
	ld   [hl], e                                     ; $7b01: $73
	inc  [hl]                                        ; $7b02: $34
	ld   h, [hl]                                     ; $7b03: $66
	ld   a, e                                        ; $7b04: $7b
	sbc  b                                           ; $7b05: $98
	ld   [hl], h                                     ; $7b06: $74
	ld   hl, $1111                                   ; $7b07: $21 $11 $11
	ld   de, $1111                                   ; $7b0a: $11 $11 $11
	dec  de                                          ; $7b0d: $1b
	rst  $28                                         ; $7b0e: $ef
	rst  $38                                         ; $7b0f: $ff
	rst  $38                                         ; $7b10: $ff
	rst  $38                                         ; $7b11: $ff

Jump_0c7_7b12:
	rst  $38                                         ; $7b12: $ff
	rst  $38                                         ; $7b13: $ff
	db   $fc                                         ; $7b14: $fc
	sub  l                                           ; $7b15: $95
	ld   b, l                                        ; $7b16: $45
	ld   e, b                                        ; $7b17: $58
	xor  l                                           ; $7b18: $ad
	rst  $38                                         ; $7b19: $ff
	ld   [$1166], a                                  ; $7b1a: $ea $66 $11
	ld   de, $1111                                   ; $7b1d: $11 $11 $11
	ld   de, $af11                                   ; $7b20: $11 $11 $af
	rst  $38                                         ; $7b23: $ff
	rst  $38                                         ; $7b24: $ff
	rst  $38                                         ; $7b25: $ff
	rst  $38                                         ; $7b26: $ff
	rst  $38                                         ; $7b27: $ff
	db   $fc                                         ; $7b28: $fc
	and  a                                           ; $7b29: $a7
	ld   d, [hl]                                     ; $7b2a: $56
	adc  h                                           ; $7b2b: $8c
	rst  $38                                         ; $7b2c: $ff
	rst  $38                                         ; $7b2d: $ff
	rst  $38                                         ; $7b2e: $ff
	jp   c, $1141                                    ; $7b2f: $da $41 $11

	ld   de, $1111                                   ; $7b32: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7b35: $11 $11 $ff
	rst  $38                                         ; $7b38: $ff
	rst  $38                                         ; $7b39: $ff
	rst  $38                                         ; $7b3a: $ff
	rst  $38                                         ; $7b3b: $ff
	rst  $38                                         ; $7b3c: $ff
	db   $ed                                         ; $7b3d: $ed
	xor  b                                           ; $7b3e: $a8
	db   $db                                         ; $7b3f: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b40: $cf
	rst  $38                                         ; $7b41: $ff
	rst  $38                                         ; $7b42: $ff
	rst  $38                                         ; $7b43: $ff
	and  l                                           ; $7b44: $a5
	ld   de, $1111                                   ; $7b45: $11 $11 $11
	ld   de, $1111                                   ; $7b48: $11 $11 $11
	ld   [de], a                                     ; $7b4b: $12
	cp   a                                           ; $7b4c: $bf
	rst  $38                                         ; $7b4d: $ff
	rst  $38                                         ; $7b4e: $ff
	rst  $38                                         ; $7b4f: $ff
	rst  $38                                         ; $7b50: $ff
	ld   a, h                                        ; $7b51: $7c
	cp   $cc                                         ; $7b52: $fe $cc
	rst  $38                                         ; $7b54: $ff
	rst  $38                                         ; $7b55: $ff
	rst  $38                                         ; $7b56: $ff
	rst  $38                                         ; $7b57: $ff
	db   $fd                                         ; $7b58: $fd
	or   e                                           ; $7b59: $b3
	ld   de, $1111                                   ; $7b5a: $11 $11 $11
	ld   de, $1111                                   ; $7b5d: $11 $11 $11
	ld   de, $ffaf                                   ; $7b60: $11 $af $ff
	rst  $38                                         ; $7b63: $ff
	db   $fd                                         ; $7b64: $fd

Jump_0c7_7b65:
	rst  $38                                         ; $7b65: $ff
	cp   $df                                         ; $7b66: $fe $df
	rst  $38                                         ; $7b68: $ff
	rst  $38                                         ; $7b69: $ff
	rst  $38                                         ; $7b6a: $ff
	rst  $38                                         ; $7b6b: $ff
	rst  $38                                         ; $7b6c: $ff
	db   $fc                                         ; $7b6d: $fc
	ld   b, l                                        ; $7b6e: $45
	ld   de, $1111                                   ; $7b6f: $11 $11 $11
	ld   de, $1111                                   ; $7b72: $11 $11 $11
	ld   de, $ff8d                                   ; $7b75: $11 $8d $ff
	rst  $38                                         ; $7b78: $ff
	rst  $38                                         ; $7b79: $ff
	rst  $38                                         ; $7b7a: $ff
	rst  $38                                         ; $7b7b: $ff
	rst  $38                                         ; $7b7c: $ff
	rst  $38                                         ; $7b7d: $ff
	rst  $38                                         ; $7b7e: $ff
	rst  $38                                         ; $7b7f: $ff
	rst  $38                                         ; $7b80: $ff
	rst  $38                                         ; $7b81: $ff
	db   $ec                                         ; $7b82: $ec
	add  h                                           ; $7b83: $84
	ld   sp, $1111                                   ; $7b84: $31 $11 $11
	ld   de, $1111                                   ; $7b87: $11 $11 $11
	ld   de, $ef17                                   ; $7b8a: $11 $17 $ef
	rst  $38                                         ; $7b8d: $ff
	rst  $38                                         ; $7b8e: $ff
	rst  $38                                         ; $7b8f: $ff
	rst  $38                                         ; $7b90: $ff
	ei                                               ; $7b91: $fb
	rst  $38                                         ; $7b92: $ff
	rst  $38                                         ; $7b93: $ff
	rst  JumpTable                                         ; $7b94: $df
	rst  $38                                         ; $7b95: $ff
	rst  $38                                         ; $7b96: $ff
	rst  $38                                         ; $7b97: $ff
	rst  ToBoot                                         ; $7b98: $c7
	ld   d, e                                        ; $7b99: $53
	ld   bc, $1111                                   ; $7b9a: $01 $11 $11
	ld   de, $1111                                   ; $7b9d: $11 $11 $11
	ld   de, $ff7c                                   ; $7ba0: $11 $7c $ff
	rst  $38                                         ; $7ba3: $ff
	rst  $38                                         ; $7ba4: $ff
	rst  $38                                         ; $7ba5: $ff
	rst  $38                                         ; $7ba6: $ff
	rst  $38                                         ; $7ba7: $ff
	rst  $38                                         ; $7ba8: $ff
	rst  $38                                         ; $7ba9: $ff
	rst  $38                                         ; $7baa: $ff
	rst  $38                                         ; $7bab: $ff
	cp   $ef                                         ; $7bac: $fe $ef
	sub  l                                           ; $7bae: $95
	ld   hl, $1111                                   ; $7baf: $21 $11 $11
	ld   de, $1111                                   ; $7bb2: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $7bb5: $11 $13 $ff
	rst  $38                                         ; $7bb8: $ff
	rst  $38                                         ; $7bb9: $ff
	rst  $38                                         ; $7bba: $ff
	rst  $38                                         ; $7bbb: $ff
	rst  $38                                         ; $7bbc: $ff
	db   $fd                                         ; $7bbd: $fd
	rst  $38                                         ; $7bbe: $ff
	rst  $38                                         ; $7bbf: $ff
	rst  $38                                         ; $7bc0: $ff
	rst  $38                                         ; $7bc1: $ff
	cp   $fc                                         ; $7bc2: $fe $fc
	ld   d, c                                        ; $7bc4: $51
	ld   de, $1111                                   ; $7bc5: $11 $11 $11
	ld   de, $1111                                   ; $7bc8: $11 $11 $11
	ld   de, $ff3c                                   ; $7bcb: $11 $3c $ff
	rst  $38                                         ; $7bce: $ff
	rst  $38                                         ; $7bcf: $ff
	rst  $38                                         ; $7bd0: $ff
	rst  $38                                         ; $7bd1: $ff
	rst  $38                                         ; $7bd2: $ff
	rst  $38                                         ; $7bd3: $ff
	rst  $38                                         ; $7bd4: $ff
	rst  $28                                         ; $7bd5: $ef
	rst  $38                                         ; $7bd6: $ff
	cp   $fd                                         ; $7bd7: $fe $fd
	xor  b                                           ; $7bd9: $a8
	inc  sp                                          ; $7bda: $33
	ld   de, $1111                                   ; $7bdb: $11 $11 $11
	ld   de, $1111                                   ; $7bde: $11 $11 $11
	ld   de, $ffcd                                   ; $7be1: $11 $cd $ff
	rst  $38                                         ; $7be4: $ff
	rst  $38                                         ; $7be5: $ff
	rst  $38                                         ; $7be6: $ff
	rst  $38                                         ; $7be7: $ff
	rst  $38                                         ; $7be8: $ff
	rst  $38                                         ; $7be9: $ff
	rst  $38                                         ; $7bea: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7beb: $cf
	rst  $38                                         ; $7bec: $ff
	db   $dd                                         ; $7bed: $dd
	call z, $4197                                    ; $7bee: $cc $97 $41
	ld   de, $1111                                   ; $7bf1: $11 $11 $11
	ld   de, $1111                                   ; $7bf4: $11 $11 $11
	inc  d                                           ; $7bf7: $14
	ld   h, l                                        ; $7bf8: $65
	rst  $28                                         ; $7bf9: $ef
	rst  $38                                         ; $7bfa: $ff
	rst  $38                                         ; $7bfb: $ff
	rst  $38                                         ; $7bfc: $ff
	rst  $38                                         ; $7bfd: $ff
	rst  $38                                         ; $7bfe: $ff
	db   $fd                                         ; $7bff: $fd
	adc  $fb                                         ; $7c00: $ce $fb
	set  1, h                                        ; $7c02: $cb $cc
	bit  7, b                                        ; $7c04: $cb $78
	and  l                                           ; $7c06: $a5
	ld   de, $1111                                   ; $7c07: $11 $11 $11
	ld   de, $1111                                   ; $7c0a: $11 $11 $11
	ld   de, $6845                                   ; $7c0d: $11 $45 $68
	rst  $38                                         ; $7c10: $ff
	rst  $38                                         ; $7c11: $ff
	rst  $38                                         ; $7c12: $ff
	rst  $38                                         ; $7c13: $ff
	rst  $38                                         ; $7c14: $ff
	rst  $38                                         ; $7c15: $ff
	ld   sp, hl                                      ; $7c16: $f9
	xor  d                                           ; $7c17: $aa
	res  1, c                                        ; $7c18: $cb $89
	xor  e                                           ; $7c1a: $ab
	xor  b                                           ; $7c1b: $a8
	ld   h, a                                        ; $7c1c: $67
	halt                                             ; $7c1d: $76
	ld   sp, $2111                                   ; $7c1e: $31 $11 $21
	ld   de, $1111                                   ; $7c21: $11 $11 $11
	ld   de, $4435                                   ; $7c24: $11 $35 $44
	ld   e, b                                        ; $7c27: $58
	cp   e                                           ; $7c28: $bb
	cp   h                                           ; $7c29: $bc
	call $dcdd                                       ; $7c2a: $cd $dd $dc
	cp   e                                           ; $7c2d: $bb
	cp   e                                           ; $7c2e: $bb
	xor  e                                           ; $7c2f: $ab
	cp   h                                           ; $7c30: $bc
	cp   e                                           ; $7c31: $bb
	xor  d                                           ; $7c32: $aa
	xor  d                                           ; $7c33: $aa
	xor  d                                           ; $7c34: $aa
	cp   d                                           ; $7c35: $ba
	xor  d                                           ; $7c36: $aa
	sbc  c                                           ; $7c37: $99
	sbc  c                                           ; $7c38: $99
	sbc  c                                           ; $7c39: $99
	sbc  c                                           ; $7c3a: $99
	sbc  c                                           ; $7c3b: $99
	adc  c                                           ; $7c3c: $89
	adc  b                                           ; $7c3d: $88
	add  a                                           ; $7c3e: $87
	ld   [hl], a                                     ; $7c3f: $77
	ld   [hl], a                                     ; $7c40: $77
	ld   [hl], a                                     ; $7c41: $77
	ld   [hl], a                                     ; $7c42: $77
	ld   [hl], a                                     ; $7c43: $77
	ld   a, b                                        ; $7c44: $78
	adc  b                                           ; $7c45: $88
	adc  c                                           ; $7c46: $89
	sbc  c                                           ; $7c47: $99
	sbc  c                                           ; $7c48: $99
	sbc  d                                           ; $7c49: $9a
	xor  d                                           ; $7c4a: $aa
	xor  e                                           ; $7c4b: $ab
	cp   d                                           ; $7c4c: $ba
	cp   d                                           ; $7c4d: $ba
	cp   e                                           ; $7c4e: $bb
	xor  d                                           ; $7c4f: $aa
	cp   d                                           ; $7c50: $ba
	cp   d                                           ; $7c51: $ba
	xor  d                                           ; $7c52: $aa
	sbc  b                                           ; $7c53: $98
	sbc  b                                           ; $7c54: $98
	ld   [hl], a                                     ; $7c55: $77
	halt                                             ; $7c56: $76
	ld   h, [hl]                                     ; $7c57: $66
	ld   h, [hl]                                     ; $7c58: $66
	ld   h, [hl]                                     ; $7c59: $66
	ld   h, a                                        ; $7c5a: $67
	ld   [hl], a                                     ; $7c5b: $77
	ld   [hl], a                                     ; $7c5c: $77
	ld   [hl], a                                     ; $7c5d: $77
	ld   a, b                                        ; $7c5e: $78
	adc  b                                           ; $7c5f: $88
	adc  c                                           ; $7c60: $89
	adc  c                                           ; $7c61: $89
	sbc  c                                           ; $7c62: $99
	sbc  c                                           ; $7c63: $99
	xor  d                                           ; $7c64: $aa
	xor  c                                           ; $7c65: $a9
	xor  d                                           ; $7c66: $aa
	xor  c                                           ; $7c67: $a9
	sbc  c                                           ; $7c68: $99
	adc  b                                           ; $7c69: $88
	add  a                                           ; $7c6a: $87
	ld   [hl], a                                     ; $7c6b: $77
	halt                                             ; $7c6c: $76
	ld   h, [hl]                                     ; $7c6d: $66
	ld   h, [hl]                                     ; $7c6e: $66
	ld   h, [hl]                                     ; $7c6f: $66
	ld   h, [hl]                                     ; $7c70: $66
	ld   h, [hl]                                     ; $7c71: $66
	ld   [hl], a                                     ; $7c72: $77
	ld   [hl], a                                     ; $7c73: $77
	ld   [hl], a                                     ; $7c74: $77
	ld   [hl], a                                     ; $7c75: $77
	adc  b                                           ; $7c76: $88
	adc  b                                           ; $7c77: $88
	adc  c                                           ; $7c78: $89
	adc  b                                           ; $7c79: $88
	sbc  c                                           ; $7c7a: $99
	sbc  c                                           ; $7c7b: $99
	sbc  c                                           ; $7c7c: $99
	sbc  c                                           ; $7c7d: $99
	adc  b                                           ; $7c7e: $88
	sbc  c                                           ; $7c7f: $99
	adc  b                                           ; $7c80: $88
	ld   [hl], a                                     ; $7c81: $77
	ld   [hl], a                                     ; $7c82: $77
	ld   [hl], a                                     ; $7c83: $77
	halt                                             ; $7c84: $76
	ld   h, [hl]                                     ; $7c85: $66
	ld   h, a                                        ; $7c86: $67
	ld   h, a                                        ; $7c87: $67
	ld   [hl], a                                     ; $7c88: $77
	ld   [hl], a                                     ; $7c89: $77
	ld   [hl], a                                     ; $7c8a: $77
	ld   a, b                                        ; $7c8b: $78
	adc  b                                           ; $7c8c: $88
	adc  b                                           ; $7c8d: $88
	adc  b                                           ; $7c8e: $88
	sbc  c                                           ; $7c8f: $99
	sbc  c                                           ; $7c90: $99
	adc  b                                           ; $7c91: $88
	adc  b                                           ; $7c92: $88
	adc  b                                           ; $7c93: $88
	sbc  c                                           ; $7c94: $99
	adc  b                                           ; $7c95: $88
	adc  b                                           ; $7c96: $88
	adc  b                                           ; $7c97: $88
	ld   [hl], a                                     ; $7c98: $77
	ld   [hl], a                                     ; $7c99: $77
	ld   [hl], a                                     ; $7c9a: $77
	ld   [hl], a                                     ; $7c9b: $77
	ld   [hl], a                                     ; $7c9c: $77
	ld   [hl], a                                     ; $7c9d: $77
	ld   [hl], a                                     ; $7c9e: $77
	ld   [hl], a                                     ; $7c9f: $77
	ld   [hl], a                                     ; $7ca0: $77
	ld   [hl], a                                     ; $7ca1: $77
	adc  b                                           ; $7ca2: $88
	adc  b                                           ; $7ca3: $88
	adc  b                                           ; $7ca4: $88
	adc  b                                           ; $7ca5: $88
	adc  b                                           ; $7ca6: $88
	sbc  c                                           ; $7ca7: $99
	adc  b                                           ; $7ca8: $88
	adc  c                                           ; $7ca9: $89
	adc  b                                           ; $7caa: $88
	adc  b                                           ; $7cab: $88
	adc  b                                           ; $7cac: $88
	adc  b                                           ; $7cad: $88
	adc  b                                           ; $7cae: $88
	add  a                                           ; $7caf: $87
	ld   [hl], a                                     ; $7cb0: $77
	ld   [hl], a                                     ; $7cb1: $77
	ld   [hl], a                                     ; $7cb2: $77
	ld   [hl], a                                     ; $7cb3: $77
	ld   [hl], a                                     ; $7cb4: $77
	ld   [hl], a                                     ; $7cb5: $77
	ld   [hl], a                                     ; $7cb6: $77
	ld   [hl], a                                     ; $7cb7: $77
	ld   [hl], a                                     ; $7cb8: $77
	ld   [hl], a                                     ; $7cb9: $77
	ld   a, b                                        ; $7cba: $78
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
	add  a                                           ; $7cc9: $87
	ld   [hl], a                                     ; $7cca: $77
	ld   [hl], a                                     ; $7ccb: $77
	ld   [hl], a                                     ; $7ccc: $77
	ld   [hl], a                                     ; $7ccd: $77
	ld   [hl], a                                     ; $7cce: $77
	ld   [hl], a                                     ; $7ccf: $77
	ld   [hl], a                                     ; $7cd0: $77
	ld   [hl], a                                     ; $7cd1: $77
	ld   [hl], a                                     ; $7cd2: $77
	ld   [hl], a                                     ; $7cd3: $77
	ld   [hl], a                                     ; $7cd4: $77
	ld   [hl], a                                     ; $7cd5: $77
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
	ld   a, b                                        ; $7ce4: $78
	ld   [hl], a                                     ; $7ce5: $77
	ld   [hl], a                                     ; $7ce6: $77
	ld   [hl], a                                     ; $7ce7: $77
	ld   [hl], a                                     ; $7ce8: $77
	adc  b                                           ; $7ce9: $88
	add  a                                           ; $7cea: $87
	adc  b                                           ; $7ceb: $88
	adc  b                                           ; $7cec: $88
	adc  b                                           ; $7ced: $88
	adc  b                                           ; $7cee: $88
	adc  b                                           ; $7cef: $88
	adc  b                                           ; $7cf0: $88
	adc  b                                           ; $7cf1: $88
	adc  b                                           ; $7cf2: $88
	adc  c                                           ; $7cf3: $89
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
	adc  c                                           ; $7d08: $89
	sbc  c                                           ; $7d09: $99
	sbc  c                                           ; $7d0a: $99
	sbc  b                                           ; $7d0b: $98
	sbc  b                                           ; $7d0c: $98
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
	adc  c                                           ; $7d1f: $89
	sbc  b                                           ; $7d20: $98
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
	sbc  b                                           ; $7d2f: $98
	adc  b                                           ; $7d30: $88
	sbc  c                                           ; $7d31: $99
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
	adc  c                                           ; $7d46: $89
	sbc  c                                           ; $7d47: $99
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
	sbc  c                                           ; $7e3b: $99
	jp   z, $8978                                    ; $7e3c: $ca $78 $89

	xor  b                                           ; $7e3f: $a8
	adc  b                                           ; $7e40: $88
	sbc  c                                           ; $7e41: $99
	jp   z, $af8a                                    ; $7e42: $ca $8a $af

	sub  a                                           ; $7e45: $97
	xor  b                                           ; $7e46: $a8
	adc  c                                           ; $7e47: $89
	add  a                                           ; $7e48: $87
	xor  d                                           ; $7e49: $aa
	ld   a, c                                        ; $7e4a: $79
	adc  e                                           ; $7e4b: $8b
	xor  d                                           ; $7e4c: $aa
	db   $eb                                         ; $7e4d: $eb
	cp   e                                           ; $7e4e: $bb
	adc  c                                           ; $7e4f: $89
	sbc  e                                           ; $7e50: $9b
	add  [hl]                                        ; $7e51: $86
	ld   a, e                                        ; $7e52: $7b
	and  a                                           ; $7e53: $a7
	sub  a                                           ; $7e54: $97
	adc  e                                           ; $7e55: $8b
	ld   [hl], l                                     ; $7e56: $75
	ld   h, l                                        ; $7e57: $65
	ld   b, l                                        ; $7e58: $45
	ld   h, h                                        ; $7e59: $64
	ld   b, l                                        ; $7e5a: $45
	ld   h, [hl]                                     ; $7e5b: $66
	ld   [hl], a                                     ; $7e5c: $77
	ld   h, [hl]                                     ; $7e5d: $66
	ld   [hl], a                                     ; $7e5e: $77
	ld   d, h                                        ; $7e5f: $54
	ld   d, l                                        ; $7e60: $55
	ld   d, [hl]                                     ; $7e61: $56
	ld   h, l                                        ; $7e62: $65
	ld   b, l                                        ; $7e63: $45
	ld   h, l                                        ; $7e64: $65
	ld   h, l                                        ; $7e65: $65
	ld   b, [hl]                                     ; $7e66: $46
	halt                                             ; $7e67: $76
	ld   h, [hl]                                     ; $7e68: $66
	ld   h, a                                        ; $7e69: $67
	sbc  c                                           ; $7e6a: $99
	ld   h, [hl]                                     ; $7e6b: $66
	ld   l, b                                        ; $7e6c: $68
	ld   a, b                                        ; $7e6d: $78
	add  a                                           ; $7e6e: $87
	ld   a, b                                        ; $7e6f: $78
	sub  a                                           ; $7e70: $97
	ld   [hl], a                                     ; $7e71: $77
	ld   a, c                                        ; $7e72: $79
	add  a                                           ; $7e73: $87
	ld   a, c                                        ; $7e74: $79
	sbc  b                                           ; $7e75: $98
	halt                                             ; $7e76: $76
	ld   [hl], a                                     ; $7e77: $77
	ld   [hl], a                                     ; $7e78: $77
	ld   b, l                                        ; $7e79: $45
	ld   h, a                                        ; $7e7a: $67
	ld   h, h                                        ; $7e7b: $64
	ld   b, e                                        ; $7e7c: $43
	ld   d, l                                        ; $7e7d: $55
	ld   b, d                                        ; $7e7e: $42
	ld   [hl+], a                                    ; $7e7f: $22
	ld   sp, $1111                                   ; $7e80: $31 $11 $11
	inc  h                                           ; $7e83: $24
	ld   b, a                                        ; $7e84: $47
	xor  d                                           ; $7e85: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e86: $cf
	rst  $38                                         ; $7e87: $ff
	rst  $38                                         ; $7e88: $ff
	rst  $38                                         ; $7e89: $ff
	rst  $38                                         ; $7e8a: $ff
	rst  $38                                         ; $7e8b: $ff
	xor  $dc                                         ; $7e8c: $ee $dc
	sbc  d                                           ; $7e8e: $9a
	call z, $baca                                    ; $7e8f: $cc $ca $ba
	cp   d                                           ; $7e92: $ba
	ld   [hl], l                                     ; $7e93: $75
	ld   d, h                                        ; $7e94: $54
	ld   [hl-], a                                    ; $7e95: $32
	ld   de, $1111                                   ; $7e96: $11 $11 $11
	ld   de, $1111                                   ; $7e99: $11 $11 $11
	ld   [hl], $7a                                   ; $7e9c: $36 $7a
	rst  $38                                         ; $7e9e: $ff
	rst  $38                                         ; $7e9f: $ff
	rst  $38                                         ; $7ea0: $ff
	rst  $38                                         ; $7ea1: $ff
	rst  $38                                         ; $7ea2: $ff
	rst  $38                                         ; $7ea3: $ff
	adc  $dc                                         ; $7ea4: $ce $dc
	xor  $ee                                         ; $7ea6: $ee $ee
	rst  $38                                         ; $7ea8: $ff
	db   $fd                                         ; $7ea9: $fd
	db   $db                                         ; $7eaa: $db
	xor  d                                           ; $7eab: $aa
	add  [hl]                                        ; $7eac: $86
	ld   d, h                                        ; $7ead: $54
	ld   d, e                                        ; $7eae: $53
	ld   de, $1111                                   ; $7eaf: $11 $11 $11
	ld   de, $1111                                   ; $7eb2: $11 $11 $11
	ld   de, $5b03                                   ; $7eb5: $11 $03 $5b
	cp   a                                           ; $7eb8: $bf
	rst  $38                                         ; $7eb9: $ff
	rst  $38                                         ; $7eba: $ff
	rst  $38                                         ; $7ebb: $ff
	rst  $38                                         ; $7ebc: $ff
	cp   $ce                                         ; $7ebd: $fe $ce
	xor  a                                           ; $7ebf: $af
	reti                                             ; $7ec0: $d9


	db   $eb                                         ; $7ec1: $eb
	rst  JumpTable                                         ; $7ec2: $df
	rst  $28                                         ; $7ec3: $ef
	db   $eb                                         ; $7ec4: $eb
	jp   c, Jump_0c7_4678                            ; $7ec5: $da $78 $46

	ld   h, d                                        ; $7ec8: $62
	ld   d, e                                        ; $7ec9: $53
	ld   de, $1111                                   ; $7eca: $11 $11 $11
	ld   de, $1111                                   ; $7ecd: $11 $11 $11
	ld   de, $4c11                                   ; $7ed0: $11 $11 $4c
	rst  $38                                         ; $7ed3: $ff
	rst  $38                                         ; $7ed4: $ff
	rst  $38                                         ; $7ed5: $ff
	cp   $ff                                         ; $7ed6: $fe $ff
	db   $fd                                         ; $7ed8: $fd
	call z, $dcdf                                    ; $7ed9: $cc $df $dc
	call z, $feff                                    ; $7edc: $cc $ff $fe
	xor  l                                           ; $7edf: $ad
	jp   c, $6776                                    ; $7ee0: $da $76 $67

	ld   h, [hl]                                     ; $7ee3: $66
	ld   b, e                                        ; $7ee4: $43
	ld   [hl-], a                                    ; $7ee5: $32
	ld   hl, $1111                                   ; $7ee6: $21 $11 $11
	ld   de, $1111                                   ; $7ee9: $11 $11 $11
	ld   de, $8d5a                                   ; $7eec: $11 $5a $8d
	rst  $38                                         ; $7eef: $ff
	rst  $38                                         ; $7ef0: $ff
	rst  $38                                         ; $7ef1: $ff
	rst  JumpTable                                         ; $7ef2: $df
	cp   $fa                                         ; $7ef3: $fe $fa
	rst  $28                                         ; $7ef5: $ef
	cp   a                                           ; $7ef6: $bf
	jp   c, $fffc                                    ; $7ef7: $da $fc $ff

	cp   [hl]                                        ; $7efa: $be
	cp   b                                           ; $7efb: $b8
	ret                                              ; $7efc: $c9


	ld   a, b                                        ; $7efd: $78
	ld   d, a                                        ; $7efe: $57
	ld   [hl], l                                     ; $7eff: $75
	ld   h, e                                        ; $7f00: $63
	ld   [de], a                                     ; $7f01: $12
	ld   de, $1111                                   ; $7f02: $11 $11 $11
	ld   de, $1111                                   ; $7f05: $11 $11 $11
	ld   de, $d94d                                   ; $7f08: $11 $4d $d9
	rst  JumpTable                                         ; $7f0b: $df
	rst  $38                                         ; $7f0c: $ff
	rst  $38                                         ; $7f0d: $ff
	cp   h                                           ; $7f0e: $bc
	rst  $38                                         ; $7f0f: $ff
	db   $eb                                         ; $7f10: $eb
	sbc  l                                           ; $7f11: $9d
	db   $fc                                         ; $7f12: $fc
	cp   d                                           ; $7f13: $ba
	cp   a                                           ; $7f14: $bf
	rst  $38                                         ; $7f15: $ff
	db   $db                                         ; $7f16: $db
	call Call_0c7_67c9                               ; $7f17: $cd $c9 $67
	xor  b                                           ; $7f1a: $a8
	ld   h, [hl]                                     ; $7f1b: $66
	ld   d, e                                        ; $7f1c: $53
	inc  hl                                          ; $7f1d: $23
	ld   hl, $1111                                   ; $7f1e: $21 $11 $11
	ld   de, $1111                                   ; $7f21: $11 $11 $11
	ld   de, wResetDataBaseAnimSpriteSpecIdxUsed                                   ; $7f24: $11 $16 $c9
	xor  e                                           ; $7f27: $ab
	rst  JumpTable                                         ; $7f28: $df
	db   $fc                                         ; $7f29: $fc
	ei                                               ; $7f2a: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f2b: $cf
	xor  $b8                                         ; $7f2c: $ee $b8
	cp   $8f                                         ; $7f2e: $fe $8f
	xor  [hl]                                        ; $7f30: $ae
	db   $fc                                         ; $7f31: $fc
	db   $fd                                         ; $7f32: $fd
	xor  a                                           ; $7f33: $af
	ret                                              ; $7f34: $c9


	or   l                                           ; $7f35: $b5
	xor  c                                           ; $7f36: $a9
	ld   c, c                                        ; $7f37: $49
	ld   [hl], h                                     ; $7f38: $74
	ld   h, e                                        ; $7f39: $63
	ld   b, e                                        ; $7f3a: $43
	ld   de, $1111                                   ; $7f3b: $11 $11 $11
	ld   de, $1111                                   ; $7f3e: $11 $11 $11
	ld   de, wResetSaveDataReturnState                                   ; $7f41: $11 $17 $c9
	sbc  h                                           ; $7f44: $9c
	rst  JumpTable                                         ; $7f45: $df
	db   $fd                                         ; $7f46: $fd
	call z, $edff                                    ; $7f47: $cc $ff $ed
	db   $dd                                         ; $7f4a: $dd
	db   $fc                                         ; $7f4b: $fc
	adc  e                                           ; $7f4c: $8b
	cp   a                                           ; $7f4d: $bf
	db   $fc                                         ; $7f4e: $fc
	db   $ed                                         ; $7f4f: $ed
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f50: $cf
	xor  b                                           ; $7f51: $a8
	xor  d                                           ; $7f52: $aa
	cp   b                                           ; $7f53: $b8
	ld   l, c                                        ; $7f54: $69
	ld   [hl], l                                     ; $7f55: $75
	ld   b, c                                        ; $7f56: $41
	inc  de                                          ; $7f57: $13
	ld   de, $1111                                   ; $7f58: $11 $11 $11
	ld   de, $1111                                   ; $7f5b: $11 $11 $11
	ld   de, $a816                                   ; $7f5e: $11 $16 $a8
	sbc  d                                           ; $7f61: $9a
	rst  $38                                         ; $7f62: $ff
	call c, $ffff                                    ; $7f63: $dc $ff $ff
	rst  $28                                         ; $7f66: $ef
	call c, $bded                                    ; $7f67: $dc $ed $bd
	cp   [hl]                                        ; $7f6a: $be
	db   $ec                                         ; $7f6b: $ec
	rst  $38                                         ; $7f6c: $ff
	call $c8cc                                       ; $7f6d: $cd $cc $c8
	sbc  c                                           ; $7f70: $99
	ld   a, c                                        ; $7f71: $79
	add  [hl]                                        ; $7f72: $86

Call_0c7_7f73:
	ld   h, h                                        ; $7f73: $64
	ld   b, h                                        ; $7f74: $44
	ld   de, $1111                                   ; $7f75: $11 $11 $11
	ld   de, $1111                                   ; $7f78: $11 $11 $11
	ld   de, $1611                                   ; $7f7b: $11 $11 $16
	jp   z, $ff9c                                    ; $7f7e: $ca $9c $ff

	db   $fd                                         ; $7f81: $fd
	rst  $38                                         ; $7f82: $ff
	rst  $38                                         ; $7f83: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f84: $cf
	xor  $e9                                         ; $7f85: $ee $e9
	sbc  h                                           ; $7f87: $9c
	cp   l                                           ; $7f88: $bd
	jp   z, $deee                                    ; $7f89: $ca $ee $de

	xor  e                                           ; $7f8c: $ab
	jp   z, Jump_0c7_7a99                            ; $7f8d: $ca $99 $7a

	add  [hl]                                        ; $7f90: $86
	ld   d, e                                        ; $7f91: $53
	ld   d, l                                        ; $7f92: $55
	ld   de, $2111                                   ; $7f93: $11 $11 $21
	ld   de, $1111                                   ; $7f96: $11 $11 $11
	ld   de, $1312                                   ; $7f99: $11 $12 $13
	cp   h                                           ; $7f9c: $bc
	sbc  c                                           ; $7f9d: $99
	rst  $38                                         ; $7f9e: $ff
	cp   $df                                         ; $7f9f: $fe $df
	rst  $38                                         ; $7fa1: $ff
	db   $fd                                         ; $7fa2: $fd
	rst  JumpTable                                         ; $7fa3: $df
	cp   l                                           ; $7fa4: $bd
	cp   c                                           ; $7fa5: $b9
	ld   [$cfad], a                                  ; $7fa6: $ea $ad $cf
	ld   a, [$aceb]                                  ; $7fa9: $fa $eb $ac
	sbc  b                                           ; $7fac: $98
	xor  b                                           ; $7fad: $a8
	xor  b                                           ; $7fae: $a8
	ld   d, [hl]                                     ; $7faf: $56
	ld   b, e                                        ; $7fb0: $43
	ld   b, c                                        ; $7fb1: $41
	ld   [hl+], a                                    ; $7fb2: $22
	ld   de, $2111                                   ; $7fb3: $11 $11 $21
	ld   de, $1111                                   ; $7fb6: $11 $11 $11
	inc  hl                                          ; $7fb9: $23
	dec  d                                           ; $7fba: $15
	ret  z                                           ; $7fbb: $c8

	xor  [hl]                                        ; $7fbc: $ae
	rst  $38                                         ; $7fbd: $ff
	cp   $ff                                         ; $7fbe: $fe $ff
	rst  $38                                         ; $7fc0: $ff
	rst  $28                                         ; $7fc1: $ef
	jp   c, $9cea                                    ; $7fc2: $da $ea $9c

	xor  e                                           ; $7fc5: $ab
	xor  d                                           ; $7fc6: $aa
	db   $fd                                         ; $7fc7: $fd
	adc  $bd                                         ; $7fc8: $ce $bd
	jp   c, $abb9                                    ; $7fca: $da $b9 $ab

	halt                                             ; $7fcd: $76
	add  l                                           ; $7fce: $85
	ld   h, h                                        ; $7fcf: $64
	inc  h                                           ; $7fd0: $24
	ld   hl, $1221                                   ; $7fd1: $21 $21 $12
	ld   de, $1111                                   ; $7fd4: $11 $11 $11
	ld   de, $1311                                   ; $7fd7: $11 $11 $13
	ld   l, c                                        ; $7fda: $69
	add  a                                           ; $7fdb: $87
	rst  $28                                         ; $7fdc: $ef
	rst  $28                                         ; $7fdd: $ef
	rst  $38                                         ; $7fde: $ff
	db   $fd                                         ; $7fdf: $fd
	rst  $38                                         ; $7fe0: $ff
	xor  $bb                                         ; $7fe1: $ee $bb
	ld   [$8cba], a                                  ; $7fe3: $ea $ba $8c
	db   $db                                         ; $7fe6: $db
	cp   d                                           ; $7fe7: $ba
	sbc  $ab                                         ; $7fe8: $de $ab
	cp   d                                           ; $7fea: $ba
	cp   c                                           ; $7feb: $b9
	adc  b                                           ; $7fec: $88
	ld   [hl], a                                     ; $7fed: $77
	ld   h, l                                        ; $7fee: $65
	ld   b, h                                        ; $7fef: $44
	ld   b, e                                        ; $7ff0: $43
	ld   [hl-], a                                    ; $7ff1: $32
	ld   [hl+], a                                    ; $7ff2: $22
	ld   hl, $1111                                   ; $7ff3: $21 $11 $11
	ld   de, $1112                                   ; $7ff6: $11 $12 $11
	daa                                              ; $7ff9: $27
	ld   h, [hl]                                     ; $7ffa: $66
	xor  e                                           ; $7ffb: $ab
	sbc  $ff                                         ; $7ffc: $de $ff
	cp   $ff                                         ; $7ffe: $fe $ff
