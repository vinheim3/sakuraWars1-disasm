; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0bc", ROMX[$4000], BANK[$bc]

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4000: $cf
	rst  $38                                         ; $4001: $ff
	rst  JumpTable                                         ; $4002: $df
	ld   sp, hl                                      ; $4003: $f9
	sub  c                                           ; $4004: $91
	ld   d, $87                                      ; $4005: $16 $87
	ld   l, h                                        ; $4007: $6c
	ld   [$1165], a                                  ; $4008: $ea $65 $11
	ld   de, $811f                                   ; $400b: $11 $1f $81
	rst  $38                                         ; $400e: $ff
	cp   $af                                         ; $400f: $fe $af
	ld   l, h                                        ; $4011: $6c
	ld   de, $d111                                   ; $4012: $11 $11 $d1
	rra                                              ; $4015: $1f
	rst  $38                                         ; $4016: $ff
	rst  $28                                         ; $4017: $ef
	cp   $a8                                         ; $4018: $fe $a8
	dec  h                                           ; $401a: $25
	ld   h, a                                        ; $401b: $67
	ld   [hl], $db                                   ; $401c: $36 $db
	ld   h, l                                        ; $401e: $65
	ld   [hl], c                                     ; $401f: $71
	ld   de, $f111                                   ; $4020: $11 $11 $f1
	rra                                              ; $4023: $1f
	rst  $38                                         ; $4024: $ff
	ld   e, a                                        ; $4025: $5f
	ld   sp, hl                                      ; $4026: $f9
	pop  de                                          ; $4027: $d1
	ld   hl, $151a                                   ; $4028: $21 $1a $15
	rst  $38                                         ; $402b: $ff
	ei                                               ; $402c: $fb
	rst  $38                                         ; $402d: $ff
	call z, Call_0bc_7676                            ; $402e: $cc $76 $76
	add  e                                           ; $4031: $83
	adc  d                                           ; $4032: $8a
	add  h                                           ; $4033: $84
	ld   b, e                                        ; $4034: $43
	ld   de, $e611                                   ; $4035: $11 $11 $e6
	dec  de                                          ; $4038: $1b
	rst  $38                                         ; $4039: $ff
	ld   a, [$b4ff]                                  ; $403a: $fa $ff $b4
	inc  de                                          ; $403d: $13
	ld   d, $21                                      ; $403e: $16 $21
	rst  JumpTable                                         ; $4040: $df
	db   $fc                                         ; $4041: $fc
	rst  $28                                         ; $4042: $ef
	db   $fc                                         ; $4043: $fc
	cp   c                                           ; $4044: $b9
	add  a                                           ; $4045: $87
	ld   h, l                                        ; $4046: $65
	ld   a, d                                        ; $4047: $7a
	add  l                                           ; $4048: $85
	ld   d, a                                        ; $4049: $57
	ld   de, $1f11                                   ; $404a: $11 $11 $1f
	ld   de, $f9ff                                   ; $404d: $11 $ff $f9
	rst  JumpTable                                         ; $4050: $df
	cp   l                                           ; $4051: $bd
	inc  hl                                          ; $4052: $23
	ld   d, c                                        ; $4053: $51
	add  c                                           ; $4054: $81
	ld   l, $fe                                      ; $4055: $2e $fe
	xor  a                                           ; $4057: $af
	rst  $38                                         ; $4058: $ff
	xor  h                                           ; $4059: $ac
	xor  d                                           ; $405a: $aa
	ld   l, b                                        ; $405b: $68
	ld   h, a                                        ; $405c: $67
	add  [hl]                                        ; $405d: $86
	ld   b, h                                        ; $405e: $44
	ld   d, c                                        ; $405f: $51
	ld   de, $f111                                   ; $4060: $11 $11 $f1
	rra                                              ; $4063: $1f
	rst  $38                                         ; $4064: $ff
	ld   a, a                                        ; $4065: $7f
	ei                                               ; $4066: $fb
	or   d                                           ; $4067: $b2
	ld   [hl], e                                     ; $4068: $73
	ld   d, $14                                      ; $4069: $16 $14
	rst  JumpTable                                         ; $406b: $df
	db   $db                                         ; $406c: $db
	rst  $38                                         ; $406d: $ff
	db   $db                                         ; $406e: $db
	call c, $87a7                                    ; $406f: $dc $a7 $87
	add  a                                           ; $4072: $87
	ld   d, e                                        ; $4073: $53
	ld   b, e                                        ; $4074: $43
	ld   de, $9d11                                   ; $4075: $11 $11 $9d
	inc  d                                           ; $4078: $14
	rst  $38                                         ; $4079: $ff
	ldh  a, [c]                                      ; $407a: $f2
	rst  $38                                         ; $407b: $ff
	jp   z, $133c                                    ; $407c: $ca $3c $13

	ld   h, c                                        ; $407f: $61
	ld   l, e                                        ; $4080: $6b
	db   $eb                                         ; $4081: $eb
	sbc  a                                           ; $4082: $9f
	db   $fc                                         ; $4083: $fc
	db   $dd                                         ; $4084: $dd
	ld   a, [$778a]                                  ; $4085: $fa $8a $77
	ld   d, h                                        ; $4088: $54
	inc  de                                          ; $4089: $13
	ld   de, $1c11                                   ; $408a: $11 $11 $1c
	pop  hl                                          ; $408d: $e1
	ld   l, a                                        ; $408e: $6f
	rst  $38                                         ; $408f: $ff
	cpl                                              ; $4090: $2f
	db   $fd                                         ; $4091: $fd
	add  h                                           ; $4092: $84
	pop  hl                                          ; $4093: $e1
	dec  [hl]                                        ; $4094: $35
	dec  d                                           ; $4095: $15
	cp   [hl]                                        ; $4096: $be
	xor  c                                           ; $4097: $a9
	rst  $38                                         ; $4098: $ff
	adc  $ef                                         ; $4099: $ce $ef
	sbc  c                                           ; $409b: $99
	or   a                                           ; $409c: $b7
	ld   h, e                                        ; $409d: $63
	ld   b, c                                        ; $409e: $41
	ld   de, $1111                                   ; $409f: $11 $11 $11
	di                                               ; $40a2: $f3
	dec  e                                           ; $40a3: $1d
	rst  $38                                         ; $40a4: $ff
	ld   l, l                                        ; $40a5: $6d
	cp   $f4                                         ; $40a6: $fe $f4
	ret                                              ; $40a8: $c9


	ld   a, [de]                                     ; $40a9: $1a
	ld   hl, $c55c                                   ; $40aa: $21 $5c $c5
	cp   a                                           ; $40ad: $bf
	db   $fc                                         ; $40ae: $fc
	rst  $28                                         ; $40af: $ef
	ld   sp, hl                                      ; $40b0: $f9
	res  0, l                                        ; $40b1: $cb $85
	ld   d, e                                        ; $40b3: $53
	ld   de, $1111                                   ; $40b4: $11 $11 $11
	rra                                              ; $40b7: $1f
	ld   de, $f4ff                                   ; $40b8: $11 $ff $f4
	rst  $38                                         ; $40bb: $ff
	rst  $28                                         ; $40bc: $ef
	ld   e, a                                        ; $40bd: $5f
	ld   sp, $2491                                   ; $40be: $31 $91 $24
	xor  b                                           ; $40c1: $a8
	ld   c, h                                        ; $40c2: $4c
	cp   $cf                                         ; $40c3: $fe $cf
	cp   $9e                                         ; $40c5: $fe $9e
	xor  c                                           ; $40c7: $a9
	ld   d, l                                        ; $40c8: $55
	ld   de, $1111                                   ; $40c9: $11 $11 $11
	dec  d                                           ; $40cc: $15
	or   c                                           ; $40cd: $b1
	ld   c, a                                        ; $40ce: $4f
	rst  $38                                         ; $40cf: $ff
	ld   l, a                                        ; $40d0: $6f
	rst  $38                                         ; $40d1: $ff
	jp   hl                                          ; $40d2: $e9


	pop  af                                          ; $40d3: $f1
	ld   h, a                                        ; $40d4: $67
	ld   [de], a                                     ; $40d5: $12
	ld   c, d                                        ; $40d6: $4a
	ld   b, h                                        ; $40d7: $44
	rst  JumpTable                                         ; $40d8: $df
	call z, $ddff                                    ; $40d9: $cc $ff $dd
	db   $eb                                         ; $40dc: $eb
	add  [hl]                                        ; $40dd: $86
	ld   h, c                                        ; $40de: $61
	ld   de, $1111                                   ; $40df: $11 $11 $11
	ld   l, e                                        ; $40e2: $6b
	inc  de                                          ; $40e3: $13
	rst  $38                                         ; $40e4: $ff
	or   $ff                                         ; $40e5: $f6 $ff
	rst  $38                                         ; $40e7: $ff
	cp   a                                           ; $40e8: $bf
	add  hl, de                                      ; $40e9: $19
	add  c                                           ; $40ea: $81
	inc  d                                           ; $40eb: $14
	sub  d                                           ; $40ec: $92
	dec  hl                                          ; $40ed: $2b
	ei                                               ; $40ee: $fb
	cp   a                                           ; $40ef: $bf
	cp   $ef                                         ; $40f0: $fe $ef
	cp   c                                           ; $40f2: $b9
	sbc  b                                           ; $40f3: $98
	ld   de, $1111                                   ; $40f4: $11 $11 $11
	ld   de, $1ec1                                   ; $40f7: $11 $c1 $1e
	rst  $38                                         ; $40fa: $ff
	ld   a, a                                        ; $40fb: $7f
	rst  $38                                         ; $40fc: $ff
	ei                                               ; $40fd: $fb
	push af                                          ; $40fe: $f5
	ld   a, e                                        ; $40ff: $7b
	ld   de, $3128                                   ; $4100: $11 $28 $31
	adc  h                                           ; $4103: $8c
	call z, $ffef                                    ; $4104: $cc $ef $ff
	db   $fc                                         ; $4107: $fc
	xor  d                                           ; $4108: $aa
	and  h                                           ; $4109: $a4
	ld   de, $1111                                   ; $410a: $11 $11 $11
	jr   jr_0bc_4120                                 ; $410d: $18 $11

	adc  a                                           ; $410f: $8f
	db   $fc                                         ; $4110: $fc
	rst  $38                                         ; $4111: $ff
	rst  $38                                         ; $4112: $ff
	rst  $28                                         ; $4113: $ef
	or   [hl]                                        ; $4114: $b6
	push hl                                          ; $4115: $e5
	ld   hl, $1256                                   ; $4116: $21 $56 $12
	sbc  d                                           ; $4119: $9a
	cp   e                                           ; $411a: $bb
	cp   $ff                                         ; $411b: $fe $ff
	db   $eb                                         ; $411d: $eb
	cp   e                                           ; $411e: $bb
	ld   [hl], e                                     ; $411f: $73

jr_0bc_4120:
	ld   hl, $1111                                   ; $4120: $21 $11 $11
	rla                                              ; $4123: $17
	ld   de, $fa8f                                   ; $4124: $11 $8f $fa
	rst  $38                                         ; $4127: $ff
	rst  $38                                         ; $4128: $ff
	rst  $28                                         ; $4129: $ef
	cp   d                                           ; $412a: $ba
	push de                                          ; $412b: $d5
	ld   b, e                                        ; $412c: $43
	ld   h, h                                        ; $412d: $64
	inc  de                                          ; $412e: $13
	ld   a, c                                        ; $412f: $79
	adc  d                                           ; $4130: $8a
	sbc  $ff                                         ; $4131: $de $ff
	ei                                               ; $4133: $fb
	cp   e                                           ; $4134: $bb
	ld   [hl], l                                     ; $4135: $75
	ld   sp, $1111                                   ; $4136: $31 $11 $11
	add  hl, de                                      ; $4139: $19
	ld   de, $f87f                                   ; $413a: $11 $7f $f8
	rst  $38                                         ; $413d: $ff
	rst  $38                                         ; $413e: $ff
	rst  $38                                         ; $413f: $ff
	xor  d                                           ; $4140: $aa
	rst  $10                                         ; $4141: $d7
	ld   b, e                                        ; $4142: $43
	ld   h, l                                        ; $4143: $65
	inc  bc                                          ; $4144: $03
	ld   h, [hl]                                     ; $4145: $66
	adc  c                                           ; $4146: $89
	set  5, a                                        ; $4147: $cb $ef
	db   $eb                                         ; $4149: $eb
	res  4, [hl]                                     ; $414a: $cb $a6
	ld   d, e                                        ; $414c: $53
	ld   de, $1111                                   ; $414d: $11 $11 $11
	or   c                                           ; $4150: $b1
	ld   d, $ff                                      ; $4151: $16 $ff
	ld   a, a                                        ; $4153: $7f
	rst  $38                                         ; $4154: $ff
	rst  $38                                         ; $4155: $ff
	ld   sp, hl                                      ; $4156: $f9
	sbc  a                                           ; $4157: $9f
	sub  e                                           ; $4158: $93
	ld   [hl], $51                                   ; $4159: $36 $51
	ld   [hl], $69                                   ; $415b: $36 $69
	xor  e                                           ; $415d: $ab
	adc  $fd                                         ; $415e: $ce $fd
	cp   h                                           ; $4160: $bc
	ret                                              ; $4161: $c9


	ld   h, [hl]                                     ; $4162: $66
	ld   b, c                                        ; $4163: $41
	ld   de, $1c11                                   ; $4164: $11 $11 $1c
	ld   hl, $f93d                                   ; $4167: $21 $3d $f9
	rst  JumpTable                                         ; $416a: $df
	rst  $28                                         ; $416b: $ef
	rst  $38                                         ; $416c: $ff
	and  [hl]                                        ; $416d: $a6
	jp   hl                                          ; $416e: $e9


	ld   [hl-], a                                    ; $416f: $32
	ld   h, l                                        ; $4170: $65
	inc  hl                                          ; $4171: $23
	halt                                             ; $4172: $76
	adc  h                                           ; $4173: $8c
	set  1, a                                        ; $4174: $cb $cf
	ei                                               ; $4176: $fb
	cp   e                                           ; $4177: $bb
	and  [hl]                                        ; $4178: $a6
	ld   h, l                                        ; $4179: $65
	ld   de, $1111                                   ; $417a: $11 $11 $11
	cp   b                                           ; $417d: $b8
	ld   de, $dcaf                                   ; $417e: $11 $af $dc
	db   $fd                                         ; $4181: $fd
	rst  $38                                         ; $4182: $ff
	ld   sp, hl                                      ; $4183: $f9
	ld   c, d                                        ; $4184: $4a
	and  l                                           ; $4185: $a5
	dec  d                                           ; $4186: $15
	ld   d, h                                        ; $4187: $54
	ld   b, a                                        ; $4188: $47
	sbc  b                                           ; $4189: $98
	sbc  $cd                                         ; $418a: $de $cd
	rst  $38                                         ; $418c: $ff
	cp   d                                           ; $418d: $ba
	cp   c                                           ; $418e: $b9
	ld   h, l                                        ; $418f: $65
	ld   h, d                                        ; $4190: $62
	ld   de, $1811                                   ; $4191: $11 $11 $18
	or   c                                           ; $4194: $b1
	jr   @+$01                                       ; $4195: $18 $ff

	rst  $28                                         ; $4197: $ef
	adc  $ff                                         ; $4198: $ce $ff
	or   d                                           ; $419a: $b2

jr_0bc_419b:
	sub  a                                           ; $419b: $97
	ld   h, c                                        ; $419c: $61
	ld   d, l                                        ; $419d: $55
	dec  [hl]                                        ; $419e: $35
	adc  h                                           ; $419f: $8c
	sbc  l                                           ; $41a0: $9d
	cp   $de                                         ; $41a1: $fe $de
	ei                                               ; $41a3: $fb
	xor  e                                           ; $41a4: $ab
	add  [hl]                                        ; $41a5: $86
	ld   b, l                                        ; $41a6: $45
	ld   de, $1111                                   ; $41a7: $11 $11 $11
	adc  a                                           ; $41aa: $8f
	ld   de, $fe9f                                   ; $41ab: $11 $9f $fe
	db   $fd                                         ; $41ae: $fd
	sbc  $fb                                         ; $41af: $de $fb
	dec  d                                           ; $41b1: $15
	ld   h, [hl]                                     ; $41b2: $66
	inc  de                                          ; $41b3: $13
	ld   h, e                                        ; $41b4: $63
	ld   a, d                                        ; $41b5: $7a
	ei                                               ; $41b6: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41b7: $cf
	xor  $ef                                         ; $41b8: $ee $ef
	cp   b                                           ; $41ba: $b8
	cp   b                                           ; $41bb: $b8
	ld   d, d                                        ; $41bc: $52
	ld   sp, $1111                                   ; $41bd: $31 $11 $11
	ld   e, $f1                                      ; $41c0: $1e $f1
	dec  sp                                          ; $41c2: $3b
	rst  $38                                         ; $41c3: $ff
	rst  $38                                         ; $41c4: $ff
	sbc  e                                           ; $41c5: $9b
	rst  JumpTable                                         ; $41c6: $df
	ld   h, c                                        ; $41c7: $61
	dec  h                                           ; $41c8: $25
	ld   b, c                                        ; $41c9: $41
	ld   e, b                                        ; $41ca: $58
	ld   l, c                                        ; $41cb: $69
	rst  $38                                         ; $41cc: $ff
	set  5, a                                        ; $41cd: $cb $ef
	db   $ed                                         ; $41cf: $ed
	rst  ToBoot                                         ; $41d0: $c7
	ld   l, c                                        ; $41d1: $69
	add  d                                           ; $41d2: $82
	ld   de, $1111                                   ; $41d3: $11 $11 $11
	dec  de                                          ; $41d6: $1b
	di                                               ; $41d7: $f3
	ld   c, c                                        ; $41d8: $49
	rst  $38                                         ; $41d9: $ff
	rst  $38                                         ; $41da: $ff
	sbc  b                                           ; $41db: $98
	xor  a                                           ; $41dc: $af
	add  c                                           ; $41dd: $81
	inc  de                                          ; $41de: $13
	ld   d, h                                        ; $41df: $54
	sbc  d                                           ; $41e0: $9a
	sbc  c                                           ; $41e1: $99
	rst  $38                                         ; $41e2: $ff
	reti                                             ; $41e3: $d9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41e4: $cf
	set  0, [hl]                                     ; $41e5: $cb $c6
	ld   c, b                                        ; $41e7: $48
	sub  e                                           ; $41e8: $93
	ld   de, $1111                                   ; $41e9: $11 $11 $11
	rra                                              ; $41ec: $1f
	di                                               ; $41ed: $f3
	xor  d                                           ; $41ee: $aa
	rst  $38                                         ; $41ef: $ff
	rst  $38                                         ; $41f0: $ff
	ld   b, a                                        ; $41f1: $47
	ld   e, a                                        ; $41f2: $5f
	ld   hl, $9612                                   ; $41f3: $21 $12 $96
	db   $fc                                         ; $41f6: $fc
	sbc  l                                           ; $41f7: $9d
	rst  $38                                         ; $41f8: $ff
	sbc  c                                           ; $41f9: $99
	xor  h                                           ; $41fa: $ac
	sbc  h                                           ; $41fb: $9c
	and  h                                           ; $41fc: $a4
	ld   e, d                                        ; $41fd: $5a
	sub  d                                           ; $41fe: $92
	ld   de, $1111                                   ; $41ff: $11 $11 $11
	rrca                                             ; $4202: $0f
	adc  b                                           ; $4203: $88
	cp   a                                           ; $4204: $bf
	rst  $38                                         ; $4205: $ff
	ld   sp, hl                                      ; $4206: $f9
	ld   sp, $116d                                   ; $4207: $31 $6d $11
	jr   jr_0bc_419b                                 ; $420a: $18 $8f

	ld   a, [$fddf]                                  ; $420c: $fa $df $fd
	add  a                                           ; $420f: $87
	ld   a, c                                        ; $4210: $79
	adc  l                                           ; $4211: $8d
	ld   [hl], h                                     ; $4212: $74
	adc  d                                           ; $4213: $8a
	ld   [hl], c                                     ; $4214: $71
	ld   de, $1111                                   ; $4215: $11 $11 $11
	rst  $38                                         ; $4218: $ff
	cp   a                                           ; $4219: $bf
	rst  JumpTable                                         ; $421a: $df
	rst  $38                                         ; $421b: $ff
	pop  af                                          ; $421c: $f1
	ld   de, $12a1                                   ; $421d: $11 $a1 $12
	dec  e                                           ; $4220: $1d
	rst  $28                                         ; $4221: $ef
	cp   $bf                                         ; $4222: $fe $bf
	ld   sp, hl                                      ; $4224: $f9
	add  c                                           ; $4225: $81
	inc  [hl]                                        ; $4226: $34
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4227: $cf
	sbc  b                                           ; $4228: $98
	ld   [hl], a                                     ; $4229: $77
	ld   d, l                                        ; $422a: $55
	ld   de, $1f11                                   ; $422b: $11 $11 $1f
	ld   a, [$ffea]                                  ; $422e: $fa $ea $ff
	rst  $38                                         ; $4231: $ff
	ld   de, $211c                                   ; $4232: $11 $1c $21
	ld   b, d                                        ; $4235: $42
	rst  $38                                         ; $4236: $ff
	rst  $38                                         ; $4237: $ff
	sbc  c                                           ; $4238: $99
	rst  JumpTable                                         ; $4239: $df
	ld   d, h                                        ; $423a: $54
	ld   de, $fc6f                                   ; $423b: $11 $6f $fc
	sbc  b                                           ; $423e: $98
	ld   [hl], l                                     ; $423f: $75
	ld   sp, $1111                                   ; $4240: $31 $11 $11
	rst  $38                                         ; $4243: $ff
	rst  $28                                         ; $4244: $ef
	cp   a                                           ; $4245: $bf
	rst  $38                                         ; $4246: $ff
	pop  af                                          ; $4247: $f1
	ld   de, $1ab6                                   ; $4248: $11 $b6 $1a
	ld   a, a                                        ; $424b: $7f
	rst  $38                                         ; $424c: $ff
	or   $25                                         ; $424d: $f6 $25
	and  h                                           ; $424f: $a4
	ld   b, c                                        ; $4250: $41
	add  hl, sp                                      ; $4251: $39
	rst  $38                                         ; $4252: $ff
	ld   sp, hl                                      ; $4253: $f9
	ld   b, h                                        ; $4254: $44
	ld   b, d                                        ; $4255: $42
	ld   de, $1f11                                   ; $4256: $11 $11 $1f
	rst  $38                                         ; $4259: $ff
	db   $e4                                         ; $425a: $e4
	rst  $38                                         ; $425b: $ff
	db   $fc                                         ; $425c: $fc
	ld   de, $de1f                                   ; $425d: $11 $1f $de
	ld   sp, hl                                      ; $4260: $f9
	rst  $38                                         ; $4261: $ff
	rst  $38                                         ; $4262: $ff
	ld   de, $7917                                   ; $4263: $11 $17 $79
	ld   b, h                                        ; $4266: $44
	xor  a                                           ; $4267: $af
	rst  $38                                         ; $4268: $ff
	ld   d, c                                        ; $4269: $51
	ld   [de], a                                     ; $426a: $12
	ld   b, c                                        ; $426b: $41
	ld   de, rAUD1LEN                                   ; $426c: $11 $11 $ff
	jp   hl                                          ; $426f: $e9


	rra                                              ; $4270: $1f
	rst  $38                                         ; $4271: $ff
	pop  af                                          ; $4272: $f1
	ld   de, $ffff                                   ; $4273: $11 $ff $ff
	ld   a, l                                        ; $4276: $7d
	rst  $38                                         ; $4277: $ff
	pop  af                                          ; $4278: $f1
	ld   de, $dd89                                   ; $4279: $11 $89 $dd
	xor  e                                           ; $427c: $ab
	rst  $38                                         ; $427d: $ff
	push af                                          ; $427e: $f5
	ld   de, $1111                                   ; $427f: $11 $11 $11
	ld   de, $ff1f                                   ; $4282: $11 $1f $ff
	pop  hl                                          ; $4285: $e1
	sbc  a                                           ; $4286: $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4287: $cf
	ld   de, $ff1a                                   ; $4288: $11 $1a $ff
	ld   a, [$ff9e]                                  ; $428b: $fa $9e $ff
	ld   de, $be14                                   ; $428e: $11 $14 $be
	ei                                               ; $4291: $fb
	cp   a                                           ; $4292: $bf
	rst  $38                                         ; $4293: $ff
	add  c                                           ; $4294: $81
	ld   de, $1133                                   ; $4295: $11 $33 $11
	ld   de, $ff1f                                   ; $4298: $11 $1f $ff
	or   c                                           ; $429b: $b1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $429c: $cf
	xor  a                                           ; $429d: $af
	ld   de, $ff1b                                   ; $429e: $11 $1b $ff
	ld   sp, hl                                      ; $42a1: $f9
	xor  h                                           ; $42a2: $ac
	rst  $38                                         ; $42a3: $ff
	ld   de, $cd15                                   ; $42a4: $11 $15 $cd
	db   $fc                                         ; $42a7: $fc
	rst  JumpTable                                         ; $42a8: $df
	rst  $38                                         ; $42a9: $ff
	ld   d, c                                        ; $42aa: $51
	ld   [de], a                                     ; $42ab: $12
	inc  [hl]                                        ; $42ac: $34
	ld   de, $1f11                                   ; $42ad: $11 $11 $1f
	rst  $38                                         ; $42b0: $ff
	or   c                                           ; $42b1: $b1
	ld   e, a                                        ; $42b2: $5f
	ld   a, a                                        ; $42b3: $7f
	ld   de, $ff17                                   ; $42b4: $11 $17 $ff
	ei                                               ; $42b7: $fb
	ld   b, a                                        ; $42b8: $47
	rst  $38                                         ; $42b9: $ff
	ld   b, c                                        ; $42ba: $41
	ld   [de], a                                     ; $42bb: $12
	xor  a                                           ; $42bc: $af
	rst  $38                                         ; $42bd: $ff
	db   $db                                         ; $42be: $db
	rst  $38                                         ; $42bf: $ff
	ld   [hl], e                                     ; $42c0: $73
	ld   de, $2125                                   ; $42c1: $11 $25 $21
	ld   de, $ff1f                                   ; $42c4: $11 $1f $ff
	or   d                                           ; $42c7: $b2
	rra                                              ; $42c8: $1f
	ld   l, a                                        ; $42c9: $6f
	ld   d, c                                        ; $42ca: $51
	ld   de, $ffff                                   ; $42cb: $11 $ff $ff
	inc  [hl]                                        ; $42ce: $34
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42cf: $cf
	and  c                                           ; $42d0: $a1
	ld   de, $ff7e                                   ; $42d1: $11 $7e $ff
	ret                                              ; $42d4: $c9


	sbc  $86                                         ; $42d5: $de $86
	ld   sp, $4114                                   ; $42d7: $31 $14 $41
	ld   de, rAUD1ENV                                   ; $42da: $11 $12 $ff
	ret                                              ; $42dd: $c9


	ld   e, $7f                                      ; $42de: $1e $7f
	pop  af                                          ; $42e0: $f1
	ld   de, $ffff                                   ; $42e1: $11 $ff $ff
	ld   h, d                                        ; $42e4: $62
	sbc  a                                           ; $42e5: $9f
	di                                               ; $42e6: $f3
	ld   de, $ff4b                                   ; $42e7: $11 $4b $ff
	ld   sp, hl                                      ; $42ea: $f9
	cp   a                                           ; $42eb: $bf
	cp   c                                           ; $42ec: $b9
	ld   b, d                                        ; $42ed: $42
	ld   de, $1141                                   ; $42ee: $11 $41 $11
	ld   de, $feff                                   ; $42f1: $11 $ff $fe
	add  hl, de                                      ; $42f4: $19
	sbc  h                                           ; $42f5: $9c
	pop  af                                          ; $42f6: $f1
	ld   de, $ff7f                                   ; $42f7: $11 $7f $ff
	or   c                                           ; $42fa: $b1
	ld   a, a                                        ; $42fb: $7f
	rst  $30                                         ; $42fc: $f7
	ld   de, $ff17                                   ; $42fd: $11 $17 $ff
	ld   sp, hl                                      ; $4300: $f9
	cp   l                                           ; $4301: $bd
	cp   d                                           ; $4302: $ba
	ld   h, h                                        ; $4303: $64
	ld   de, $1131                                   ; $4304: $11 $31 $11
	ld   de, $ffff                                   ; $4307: $11 $ff $ff
	ld   d, e                                        ; $430a: $53
	push hl                                          ; $430b: $e5
	ldh  a, [c]                                      ; $430c: $f2
	ld   de, $ff1f                                   ; $430d: $11 $1f $ff
	db   $f4                                         ; $4310: $f4
	ld   a, e                                        ; $4311: $7b
	db   $fc                                         ; $4312: $fc
	ld   de, $af14                                   ; $4313: $11 $14 $af
	db   $fd                                         ; $4316: $fd
	call z, Call_0bc_77ca                            ; $4317: $cc $ca $77
	ld   sp, $1111                                   ; $431a: $31 $11 $11
	ld   de, $ff9f                                   ; $431d: $11 $9f $ff
	db   $e3                                         ; $4320: $e3
	di                                               ; $4321: $f3
	rst  $30                                         ; $4322: $f7
	ld   de, $ff1f                                   ; $4323: $11 $1f $ff
	ld   hl, sp-$57                                  ; $4326: $f8 $a9
	cp   $31                                         ; $4328: $fe $31
	ld   [de], a                                     ; $432a: $12
	ld   a, l                                        ; $432b: $7d
	rst  $38                                         ; $432c: $ff
	db   $ec                                         ; $432d: $ec
	res  1, b                                        ; $432e: $cb $88
	ld   d, c                                        ; $4330: $51
	ld   de, $1111                                   ; $4331: $11 $11 $11
	ccf                                              ; $4334: $3f
	rst  $38                                         ; $4335: $ff
	di                                               ; $4336: $f3
	or   c                                           ; $4337: $b1
	cp   $11                                         ; $4338: $fe $11
	inc  e                                           ; $433a: $1c
	rst  $38                                         ; $433b: $ff
	rst  $38                                         ; $433c: $ff
	or   a                                           ; $433d: $b7
	rst  $38                                         ; $433e: $ff
	ld   d, c                                        ; $433f: $51
	ld   de, $ff3e                                   ; $4340: $11 $3e $ff
	call z, $b9ee                                    ; $4343: $cc $ee $b9
	ld   hl, $1111                                   ; $4346: $21 $11 $11
	ld   de, $ff5f                                   ; $4349: $11 $5f $ff
	ldh  a, [c]                                      ; $434c: $f2
	sub  d                                           ; $434d: $92
	db   $fc                                         ; $434e: $fc
	ld   de, $df18                                   ; $434f: $11 $18 $df
	rst  $38                                         ; $4352: $ff
	xor  b                                           ; $4353: $a8
	rst  $38                                         ; $4354: $ff
	and  d                                           ; $4355: $a2
	ld   de, $fd1b                                   ; $4356: $11 $1b $fd
	cp   h                                           ; $4359: $bc
	rst  $38                                         ; $435a: $ff
	ld   [$1131], a                                  ; $435b: $ea $31 $11
	ld   de, rAUD1LEN                                   ; $435e: $11 $11 $ff
	rst  $38                                         ; $4361: $ff
	add  [hl]                                        ; $4362: $86
	sbc  h                                           ; $4363: $9c
	di                                               ; $4364: $f3
	ld   de, $df19                                   ; $4365: $11 $19 $df
	db   $fc                                         ; $4368: $fc
	ld   a, [hl]                                     ; $4369: $7e
	rst  $38                                         ; $436a: $ff
	jp   nc, $1b11                                   ; $436b: $d2 $11 $1b

	db   $eb                                         ; $436e: $eb
	adc  e                                           ; $436f: $8b
	rst  $38                                         ; $4370: $ff
	ld   a, [$1151]                                  ; $4371: $fa $51 $11
	ld   de, rAUD1LEN                                   ; $4374: $11 $11 $ff
	rst  $38                                         ; $4377: $ff
	sbc  a                                           ; $4378: $9f
	sbc  a                                           ; $4379: $9f
	pop  af                                          ; $437a: $f1
	ld   de, $df11                                   ; $437b: $11 $11 $df
	reti                                             ; $437e: $d9


	adc  a                                           ; $437f: $8f
	rst  $38                                         ; $4380: $ff
	rst  $30                                         ; $4381: $f7
	ld   de, $744b                                   ; $4382: $11 $4b $74
	ld   e, d                                        ; $4385: $5a
	rst  JumpTable                                         ; $4386: $df
	ld   sp, hl                                      ; $4387: $f9
	ld   sp, $1121                                   ; $4388: $31 $21 $11
	inc  d                                           ; $438b: $14
	rst  $38                                         ; $438c: $ff
	rst  $38                                         ; $438d: $ff
	ei                                               ; $438e: $fb
	rst  $38                                         ; $438f: $ff
	ld   a, [$1111]                                  ; $4390: $fa $11 $11
	cp   c                                           ; $4393: $b9
	sub  e                                           ; $4394: $93
	adc  a                                           ; $4395: $8f
	rst  $38                                         ; $4396: $ff
	db   $fd                                         ; $4397: $fd
	ld   h, l                                        ; $4398: $65
	adc  c                                           ; $4399: $89
	ld   [hl], h                                     ; $439a: $74
	ld   d, l                                        ; $439b: $55
	ld   l, e                                        ; $439c: $6b
	xor  d                                           ; $439d: $aa
	ld   d, l                                        ; $439e: $55
	ld   d, c                                        ; $439f: $51
	ld   de, $9b11                                   ; $43a0: $11 $11 $9b
	jp   c, $efbe                                    ; $43a3: $da $be $ef

	rst  $38                                         ; $43a6: $ff
	ld   h, e                                        ; $43a7: $63
	ld   h, e                                        ; $43a8: $63
	ld   [hl], l                                     ; $43a9: $75
	ld   h, d                                        ; $43aa: $62
	jr   c, @-$2f                                    ; $43ab: $38 $cf

	xor  $bb                                         ; $43ad: $ee $bb
	cp   h                                           ; $43af: $bc
	or   a                                           ; $43b0: $b7
	ld   [hl], l                                     ; $43b1: $75
	ld   h, a                                        ; $43b2: $67
	ld   a, b                                        ; $43b3: $78
	ld   h, l                                        ; $43b4: $65
	ld   d, l                                        ; $43b5: $55
	ld   h, e                                        ; $43b6: $63
	ld   hl, $8916                                   ; $43b7: $21 $16 $89
	ld   [hl], l                                     ; $43ba: $75
	cp   c                                           ; $43bb: $b9
	rst  $38                                         ; $43bc: $ff
	rst  $38                                         ; $43bd: $ff
	ld   a, d                                        ; $43be: $7a
	sbc  d                                           ; $43bf: $9a
	sub  [hl]                                        ; $43c0: $96
	ld   h, d                                        ; $43c1: $62
	ld   h, [hl]                                     ; $43c2: $66
	cp   c                                           ; $43c3: $b9
	sbc  d                                           ; $43c4: $9a
	adc  d                                           ; $43c5: $8a
	sbc  h                                           ; $43c6: $9c
	xor  b                                           ; $43c7: $a8
	adc  c                                           ; $43c8: $89
	sbc  c                                           ; $43c9: $99
	sbc  b                                           ; $43ca: $98
	ld   [hl], a                                     ; $43cb: $77
	ld   [hl], a                                     ; $43cc: $77
	halt                                             ; $43cd: $76
	ld   d, d                                        ; $43ce: $52
	ld   de, $6556                                   ; $43cf: $11 $56 $65
	ld   c, c                                        ; $43d2: $49
	adc  e                                           ; $43d3: $8b
	db   $dd                                         ; $43d4: $dd
	ret                                              ; $43d5: $c9


	xor  d                                           ; $43d6: $aa
	cp   d                                           ; $43d7: $ba
	adc  b                                           ; $43d8: $88
	ld   l, c                                        ; $43d9: $69
	sbc  c                                           ; $43da: $99
	ld   [hl], a                                     ; $43db: $77
	ld   [hl], a                                     ; $43dc: $77
	sbc  d                                           ; $43dd: $9a
	cp   c                                           ; $43de: $b9
	sub  a                                           ; $43df: $97
	adc  c                                           ; $43e0: $89
	xor  d                                           ; $43e1: $aa
	sbc  b                                           ; $43e2: $98
	ld   a, b                                        ; $43e3: $78
	sub  a                                           ; $43e4: $97
	halt                                             ; $43e5: $76
	ld   d, h                                        ; $43e6: $54
	inc  sp                                          ; $43e7: $33
	ld   d, l                                        ; $43e8: $55
	ld   b, h                                        ; $43e9: $44
	ld   b, [hl]                                     ; $43ea: $46
	ld   a, b                                        ; $43eb: $78
	sbc  d                                           ; $43ec: $9a
	xor  d                                           ; $43ed: $aa
	xor  d                                           ; $43ee: $aa
	cp   e                                           ; $43ef: $bb
	xor  c                                           ; $43f0: $a9
	sbc  c                                           ; $43f1: $99
	sbc  d                                           ; $43f2: $9a
	sbc  c                                           ; $43f3: $99
	xor  b                                           ; $43f4: $a8
	xor  b                                           ; $43f5: $a8
	xor  b                                           ; $43f6: $a8
	adc  b                                           ; $43f7: $88
	adc  b                                           ; $43f8: $88
	adc  c                                           ; $43f9: $89
	adc  b                                           ; $43fa: $88
	adc  b                                           ; $43fb: $88
	adc  b                                           ; $43fc: $88
	ld   [hl], a                                     ; $43fd: $77
	halt                                             ; $43fe: $76
	ld   d, h                                        ; $43ff: $54
	ld   b, h                                        ; $4400: $44
	ld   d, l                                        ; $4401: $55
	ld   d, l                                        ; $4402: $55
	ld   h, a                                        ; $4403: $67
	adc  c                                           ; $4404: $89
	sbc  c                                           ; $4405: $99
	xor  c                                           ; $4406: $a9
	xor  d                                           ; $4407: $aa
	xor  e                                           ; $4408: $ab
	xor  e                                           ; $4409: $ab
	xor  c                                           ; $440a: $a9
	xor  d                                           ; $440b: $aa
	sbc  c                                           ; $440c: $99
	adc  b                                           ; $440d: $88
	adc  b                                           ; $440e: $88
	adc  c                                           ; $440f: $89
	adc  b                                           ; $4410: $88
	adc  b                                           ; $4411: $88
	sbc  b                                           ; $4412: $98
	adc  b                                           ; $4413: $88
	add  a                                           ; $4414: $87
	halt                                             ; $4415: $76
	ld   h, [hl]                                     ; $4416: $66
	ld   h, [hl]                                     ; $4417: $66
	ld   h, [hl]                                     ; $4418: $66
	ld   [hl], a                                     ; $4419: $77
	ld   [hl], a                                     ; $441a: $77
	ld   h, [hl]                                     ; $441b: $66
	ld   h, [hl]                                     ; $441c: $66
	ld   h, [hl]                                     ; $441d: $66
	ld   h, a                                        ; $441e: $67
	ld   a, b                                        ; $441f: $78
	adc  c                                           ; $4420: $89
	xor  d                                           ; $4421: $aa
	cp   e                                           ; $4422: $bb
	xor  c                                           ; $4423: $a9
	sbc  c                                           ; $4424: $99
	adc  c                                           ; $4425: $89
	sbc  c                                           ; $4426: $99
	adc  b                                           ; $4427: $88
	sbc  b                                           ; $4428: $98
	sbc  c                                           ; $4429: $99
	adc  c                                           ; $442a: $89
	adc  b                                           ; $442b: $88
	adc  b                                           ; $442c: $88
	add  a                                           ; $442d: $87
	adc  b                                           ; $442e: $88
	adc  b                                           ; $442f: $88
	adc  b                                           ; $4430: $88
	adc  b                                           ; $4431: $88
	add  a                                           ; $4432: $87
	ld   [hl], a                                     ; $4433: $77
	ld   [hl], a                                     ; $4434: $77
	ld   [hl], a                                     ; $4435: $77
	ld   [hl], a                                     ; $4436: $77
	ld   [hl], a                                     ; $4437: $77
	ld   [hl], a                                     ; $4438: $77
	ld   [hl], a                                     ; $4439: $77
	ld   h, a                                        ; $443a: $67
	ld   [hl], a                                     ; $443b: $77
	ld   a, b                                        ; $443c: $78
	adc  b                                           ; $443d: $88
	adc  c                                           ; $443e: $89
	xor  d                                           ; $443f: $aa
	sbc  c                                           ; $4440: $99
	sbc  c                                           ; $4441: $99
	adc  b                                           ; $4442: $88
	sbc  b                                           ; $4443: $98
	adc  b                                           ; $4444: $88
	adc  b                                           ; $4445: $88
	adc  b                                           ; $4446: $88
	adc  b                                           ; $4447: $88
	adc  b                                           ; $4448: $88
	sbc  b                                           ; $4449: $98
	sbc  b                                           ; $444a: $98
	sbc  c                                           ; $444b: $99
	sbc  c                                           ; $444c: $99
	sbc  b                                           ; $444d: $98
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
	ld   [hl], a                                     ; $4459: $77
	ld   [hl], a                                     ; $445a: $77
	ld   [hl], a                                     ; $445b: $77
	ld   [hl], a                                     ; $445c: $77
	ld   [hl], a                                     ; $445d: $77
	adc  b                                           ; $445e: $88
	adc  b                                           ; $445f: $88
	sbc  c                                           ; $4460: $99
	sbc  b                                           ; $4461: $98
	adc  c                                           ; $4462: $89
	adc  b                                           ; $4463: $88
	adc  b                                           ; $4464: $88
	adc  b                                           ; $4465: $88
	adc  b                                           ; $4466: $88
	adc  b                                           ; $4467: $88
	adc  b                                           ; $4468: $88
	adc  c                                           ; $4469: $89
	sbc  c                                           ; $446a: $99
	sbc  c                                           ; $446b: $99
	sbc  c                                           ; $446c: $99
	sbc  c                                           ; $446d: $99
	sbc  c                                           ; $446e: $99
	adc  b                                           ; $446f: $88
	adc  b                                           ; $4470: $88
	adc  b                                           ; $4471: $88
	adc  b                                           ; $4472: $88
	adc  b                                           ; $4473: $88
	adc  b                                           ; $4474: $88

Jump_0bc_4475:
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
	sbc  b                                           ; $4484: $98
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

Jump_0bc_4496:
	adc  b                                           ; $4496: $88
	adc  b                                           ; $4497: $88
	adc  b                                           ; $4498: $88
	adc  b                                           ; $4499: $88
	adc  c                                           ; $449a: $89
	sbc  b                                           ; $449b: $98
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

Call_0bc_44a6:
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
	adc  c                                           ; $4502: $89
	add  a                                           ; $4503: $87
	ld   [hl], a                                     ; $4504: $77
	add  a                                           ; $4505: $87
	ld   a, b                                        ; $4506: $78
	sbc  b                                           ; $4507: $98
	adc  b                                           ; $4508: $88
	adc  b                                           ; $4509: $88
	adc  b                                           ; $450a: $88
	sbc  b                                           ; $450b: $98
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
	sbc  c                                           ; $4517: $99
	adc  b                                           ; $4518: $88
	adc  b                                           ; $4519: $88
	adc  b                                           ; $451a: $88
	adc  b                                           ; $451b: $88
	adc  b                                           ; $451c: $88
	adc  b                                           ; $451d: $88
	adc  b                                           ; $451e: $88
	sbc  b                                           ; $451f: $98
	add  a                                           ; $4520: $87
	ld   [hl], a                                     ; $4521: $77
	ld   [hl], a                                     ; $4522: $77
	adc  b                                           ; $4523: $88
	adc  b                                           ; $4524: $88
	adc  b                                           ; $4525: $88
	adc  b                                           ; $4526: $88
	adc  c                                           ; $4527: $89
	sbc  b                                           ; $4528: $98
	adc  b                                           ; $4529: $88
	sbc  c                                           ; $452a: $99
	adc  b                                           ; $452b: $88
	adc  b                                           ; $452c: $88
	ld   [hl], a                                     ; $452d: $77
	ld   [hl], a                                     ; $452e: $77
	adc  c                                           ; $452f: $89
	sbc  b                                           ; $4530: $98
	sbc  b                                           ; $4531: $98
	sbc  b                                           ; $4532: $98
	adc  b                                           ; $4533: $88
	sbc  b                                           ; $4534: $98
	sbc  b                                           ; $4535: $98
	adc  c                                           ; $4536: $89
	add  a                                           ; $4537: $87
	ld   [hl], a                                     ; $4538: $77
	ld   [hl], a                                     ; $4539: $77
	ld   [hl], a                                     ; $453a: $77
	adc  c                                           ; $453b: $89
	adc  b                                           ; $453c: $88
	adc  b                                           ; $453d: $88
	ld   a, b                                        ; $453e: $78
	sbc  d                                           ; $453f: $9a
	sbc  c                                           ; $4540: $99
	ld   [hl], a                                     ; $4541: $77
	ld   h, a                                        ; $4542: $67
	ld   a, b                                        ; $4543: $78
	add  a                                           ; $4544: $87
	add  a                                           ; $4545: $87
	ld   a, b                                        ; $4546: $78
	ld   a, b                                        ; $4547: $78
	ld   [hl], a                                     ; $4548: $77
	adc  b                                           ; $4549: $88
	adc  b                                           ; $454a: $88
	adc  b                                           ; $454b: $88
	adc  b                                           ; $454c: $88
	sbc  c                                           ; $454d: $99
	sbc  b                                           ; $454e: $98
	add  a                                           ; $454f: $87
	ld   [hl], a                                     ; $4550: $77
	ld   [hl], a                                     ; $4551: $77
	ld   a, c                                        ; $4552: $79
	adc  c                                           ; $4553: $89
	sbc  b                                           ; $4554: $98
	sbc  d                                           ; $4555: $9a
	sbc  c                                           ; $4556: $99
	ld   [hl], a                                     ; $4557: $77
	ld   h, [hl]                                     ; $4558: $66
	ld   h, [hl]                                     ; $4559: $66
	adc  c                                           ; $455a: $89
	xor  c                                           ; $455b: $a9
	adc  b                                           ; $455c: $88
	adc  b                                           ; $455d: $88
	ld   [hl], a                                     ; $455e: $77
	adc  c                                           ; $455f: $89
	adc  c                                           ; $4560: $89
	add  a                                           ; $4561: $87
	ld   [hl], a                                     ; $4562: $77
	ld   [hl], a                                     ; $4563: $77
	ld   h, a                                        ; $4564: $67
	sbc  d                                           ; $4565: $9a
	cp   d                                           ; $4566: $ba
	sub  a                                           ; $4567: $97
	ld   h, [hl]                                     ; $4568: $66
	adc  b                                           ; $4569: $88
	ld   a, b                                        ; $456a: $78
	adc  d                                           ; $456b: $8a
	cp   e                                           ; $456c: $bb
	cp   d                                           ; $456d: $ba
	add  [hl]                                        ; $456e: $86
	ld   h, l                                        ; $456f: $65
	ld   d, l                                        ; $4570: $55
	ld   d, [hl]                                     ; $4571: $56
	sbc  e                                           ; $4572: $9b
	cp   e                                           ; $4573: $bb
	xor  d                                           ; $4574: $aa
	halt                                             ; $4575: $76
	ld   d, h                                        ; $4576: $54
	ld   b, h                                        ; $4577: $44
	ld   h, a                                        ; $4578: $67
	adc  c                                           ; $4579: $89
	sbc  d                                           ; $457a: $9a
	sbc  c                                           ; $457b: $99
	sbc  c                                           ; $457c: $99
	sbc  d                                           ; $457d: $9a
	cp   e                                           ; $457e: $bb
	xor  b                                           ; $457f: $a8
	ld   [hl], l                                     ; $4580: $75
	ld   d, l                                        ; $4581: $55
	ld   h, a                                        ; $4582: $67
	adc  b                                           ; $4583: $88
	sub  a                                           ; $4584: $97
	ld   [hl], a                                     ; $4585: $77
	ld   [hl], a                                     ; $4586: $77
	ld   a, b                                        ; $4587: $78
	add  a                                           ; $4588: $87
	ld   [hl], a                                     ; $4589: $77
	ld   a, c                                        ; $458a: $79
	adc  c                                           ; $458b: $89
	adc  c                                           ; $458c: $89
	adc  b                                           ; $458d: $88
	adc  b                                           ; $458e: $88
	sbc  c                                           ; $458f: $99
	adc  b                                           ; $4590: $88
	adc  c                                           ; $4591: $89
	add  a                                           ; $4592: $87
	halt                                             ; $4593: $76
	ld   h, [hl]                                     ; $4594: $66
	ld   h, a                                        ; $4595: $67
	ld   a, b                                        ; $4596: $78
	sbc  c                                           ; $4597: $99
	sbc  c                                           ; $4598: $99
	adc  c                                           ; $4599: $89
	adc  b                                           ; $459a: $88
	ld   [hl], a                                     ; $459b: $77
	ld   [hl], a                                     ; $459c: $77
	adc  c                                           ; $459d: $89
	sbc  c                                           ; $459e: $99
	sbc  d                                           ; $459f: $9a
	sbc  b                                           ; $45a0: $98
	adc  b                                           ; $45a1: $88
	add  a                                           ; $45a2: $87
	ld   [hl], a                                     ; $45a3: $77
	ld   [hl], a                                     ; $45a4: $77
	ld   [hl], a                                     ; $45a5: $77
	adc  b                                           ; $45a6: $88
	sbc  b                                           ; $45a7: $98
	sbc  c                                           ; $45a8: $99
	adc  c                                           ; $45a9: $89
	adc  c                                           ; $45aa: $89
	add  a                                           ; $45ab: $87
	halt                                             ; $45ac: $76
	ld   [hl], a                                     ; $45ad: $77
	adc  b                                           ; $45ae: $88
	sbc  c                                           ; $45af: $99
	sbc  b                                           ; $45b0: $98
	sbc  b                                           ; $45b1: $98
	adc  b                                           ; $45b2: $88
	add  a                                           ; $45b3: $87
	ld   [hl], a                                     ; $45b4: $77
	ld   h, [hl]                                     ; $45b5: $66
	ld   h, [hl]                                     ; $45b6: $66
	ld   h, [hl]                                     ; $45b7: $66
	ld   h, [hl]                                     ; $45b8: $66

Call_0bc_45b9:
	ld   h, [hl]                                     ; $45b9: $66
	ld   h, [hl]                                     ; $45ba: $66
	ld   h, a                                        ; $45bb: $67
	ld   a, b                                        ; $45bc: $78
	sbc  c                                           ; $45bd: $99
	sbc  d                                           ; $45be: $9a
	xor  c                                           ; $45bf: $a9
	xor  d                                           ; $45c0: $aa
	cp   e                                           ; $45c1: $bb
	xor  d                                           ; $45c2: $aa
	xor  c                                           ; $45c3: $a9
	sbc  c                                           ; $45c4: $99
	sbc  b                                           ; $45c5: $98
	adc  b                                           ; $45c6: $88
	sbc  c                                           ; $45c7: $99
	add  a                                           ; $45c8: $87
	ld   [hl], a                                     ; $45c9: $77
	ld   [hl], a                                     ; $45ca: $77
	ld   [hl], a                                     ; $45cb: $77
	ld   h, [hl]                                     ; $45cc: $66
	ld   h, [hl]                                     ; $45cd: $66
	ld   h, [hl]                                     ; $45ce: $66
	ld   d, l                                        ; $45cf: $55
	ld   b, e                                        ; $45d0: $43
	ld   b, h                                        ; $45d1: $44
	ld   d, [hl]                                     ; $45d2: $56
	ld   a, c                                        ; $45d3: $79
	sbc  d                                           ; $45d4: $9a
	cp   e                                           ; $45d5: $bb
	res  7, d                                        ; $45d6: $cb $ba
	sbc  d                                           ; $45d8: $9a
	xor  c                                           ; $45d9: $a9
	cp   d                                           ; $45da: $ba
	cp   e                                           ; $45db: $bb
	xor  d                                           ; $45dc: $aa
	sbc  c                                           ; $45dd: $99
	xor  c                                           ; $45de: $a9
	adc  b                                           ; $45df: $88
	sbc  d                                           ; $45e0: $9a
	sbc  d                                           ; $45e1: $9a
	xor  c                                           ; $45e2: $a9
	sbc  c                                           ; $45e3: $99
	sbc  b                                           ; $45e4: $98
	add  a                                           ; $45e5: $87
	ld   h, [hl]                                     ; $45e6: $66
	ld   h, [hl]                                     ; $45e7: $66
	ld   h, [hl]                                     ; $45e8: $66
	ld   h, [hl]                                     ; $45e9: $66
	ld   d, l                                        ; $45ea: $55
	ld   b, h                                        ; $45eb: $44
	ld   b, h                                        ; $45ec: $44
	ld   d, l                                        ; $45ed: $55
	ld   h, a                                        ; $45ee: $67
	sbc  d                                           ; $45ef: $9a
	xor  e                                           ; $45f0: $ab
	xor  d                                           ; $45f1: $aa
	xor  e                                           ; $45f2: $ab
	cp   e                                           ; $45f3: $bb
	xor  e                                           ; $45f4: $ab
	cp   d                                           ; $45f5: $ba
	sbc  b                                           ; $45f6: $98
	adc  b                                           ; $45f7: $88
	adc  b                                           ; $45f8: $88

jr_0bc_45f9:
	adc  c                                           ; $45f9: $89
	adc  b                                           ; $45fa: $88
	sbc  c                                           ; $45fb: $99
	sbc  c                                           ; $45fc: $99
	xor  c                                           ; $45fd: $a9
	adc  b                                           ; $45fe: $88
	adc  b                                           ; $45ff: $88
	add  a                                           ; $4600: $87
	ld   [hl], a                                     ; $4601: $77
	ld   h, [hl]                                     ; $4602: $66
	ld   d, l                                        ; $4603: $55
	ld   d, h                                        ; $4604: $54
	ld   b, h                                        ; $4605: $44
	ld   b, h                                        ; $4606: $44
	ld   b, l                                        ; $4607: $45
	ld   h, a                                        ; $4608: $67
	sbc  e                                           ; $4609: $9b
	cp   e                                           ; $460a: $bb
	res  7, d                                        ; $460b: $cb $ba
	sbc  c                                           ; $460d: $99
	xor  d                                           ; $460e: $aa
	xor  d                                           ; $460f: $aa
	xor  c                                           ; $4610: $a9
	sbc  b                                           ; $4611: $98
	adc  c                                           ; $4612: $89
	sbc  c                                           ; $4613: $99
	adc  c                                           ; $4614: $89
	sbc  c                                           ; $4615: $99
	sbc  d                                           ; $4616: $9a
	sbc  c                                           ; $4617: $99
	sbc  d                                           ; $4618: $9a
	sbc  b                                           ; $4619: $98
	add  a                                           ; $461a: $87
	ld   [hl], a                                     ; $461b: $77
	ld   [hl], a                                     ; $461c: $77
	ld   h, [hl]                                     ; $461d: $66
	ld   d, h                                        ; $461e: $54
	ld   [hl-], a                                    ; $461f: $32
	ld   de, $5912                                   ; $4620: $11 $12 $59
	cp   l                                           ; $4623: $bd
	db   $dd                                         ; $4624: $dd
	jp   z, $8998                                    ; $4625: $ca $98 $89

	xor  e                                           ; $4628: $ab
	xor  e                                           ; $4629: $ab
	cp   d                                           ; $462a: $ba
	adc  c                                           ; $462b: $89
	adc  b                                           ; $462c: $88
	adc  c                                           ; $462d: $89
	xor  e                                           ; $462e: $ab
	cp   h                                           ; $462f: $bc
	cp   d                                           ; $4630: $ba
	xor  c                                           ; $4631: $a9
	sbc  b                                           ; $4632: $98
	ld   [hl], a                                     ; $4633: $77
	ld   [hl], a                                     ; $4634: $77
	ld   h, [hl]                                     ; $4635: $66
	ld   d, h                                        ; $4636: $54
	ld   hl, $1111                                   ; $4637: $21 $11 $11
	jr   c, jr_0bc_45f9                              ; $463a: $38 $bd

	rst  $38                                         ; $463c: $ff
	db   $ec                                         ; $463d: $ec
	xor  b                                           ; $463e: $a8
	ld   [hl], a                                     ; $463f: $77
	sbc  d                                           ; $4640: $9a
	cp   h                                           ; $4641: $bc
	cp   h                                           ; $4642: $bc
	xor  c                                           ; $4643: $a9
	adc  b                                           ; $4644: $88
	adc  b                                           ; $4645: $88
	sbc  d                                           ; $4646: $9a
	cp   e                                           ; $4647: $bb
	cp   e                                           ; $4648: $bb
	cp   e                                           ; $4649: $bb
	sbc  b                                           ; $464a: $98
	halt                                             ; $464b: $76
	ld   h, l                                        ; $464c: $65
	ld   d, l                                        ; $464d: $55
	ld   b, e                                        ; $464e: $43
	ld   de, $1111                                   ; $464f: $11 $11 $11
	ld   c, d                                        ; $4652: $4a
	rst  JumpTable                                         ; $4653: $df
	rst  $38                                         ; $4654: $ff
	db   $fc                                         ; $4655: $fc
	add  [hl]                                        ; $4656: $86
	ld   d, a                                        ; $4657: $57
	sbc  d                                           ; $4658: $9a
	call $b9cc                                       ; $4659: $cd $cc $b9
	sub  a                                           ; $465c: $97
	adc  c                                           ; $465d: $89
	sbc  e                                           ; $465e: $9b
	cp   h                                           ; $465f: $bc
	cp   e                                           ; $4660: $bb
	cp   d                                           ; $4661: $ba
	add  a                                           ; $4662: $87
	ld   h, l                                        ; $4663: $65
	ld   b, e                                        ; $4664: $43
	ld   [hl-], a                                    ; $4665: $32
	ld   de, $1111                                   ; $4666: $11 $11 $11
	ld   e, l                                        ; $4669: $5d
	rst  $38                                         ; $466a: $ff
	rst  $38                                         ; $466b: $ff
	ei                                               ; $466c: $fb
	halt                                             ; $466d: $76
	ld   b, [hl]                                     ; $466e: $46
	sbc  c                                           ; $466f: $99
	adc  $cd                                         ; $4670: $ce $cd
	cp   d                                           ; $4672: $ba
	sbc  b                                           ; $4673: $98
	adc  d                                           ; $4674: $8a
	sbc  e                                           ; $4675: $9b
	cp   e                                           ; $4676: $bb
	jp   z, $87aa                                    ; $4677: $ca $aa $87

	ld   h, h                                        ; $467a: $64
	ld   b, d                                        ; $467b: $42
	ld   de, $1111                                   ; $467c: $11 $11 $11
	ld   d, $ef                                      ; $467f: $16 $ef
	rst  $38                                         ; $4681: $ff
	db   $fd                                         ; $4682: $fd
	sub  l                                           ; $4683: $95
	ld   b, h                                        ; $4684: $44
	ld   l, d                                        ; $4685: $6a
	call $edff                                       ; $4686: $cd $ff $ed
	xor  d                                           ; $4689: $aa
	xor  b                                           ; $468a: $a8
	sbc  b                                           ; $468b: $98

Call_0bc_468c:
	sbc  d                                           ; $468c: $9a
	sbc  c                                           ; $468d: $99
	xor  c                                           ; $468e: $a9
	xor  b                                           ; $468f: $a8
	halt                                             ; $4690: $76
	ld   b, e                                        ; $4691: $43
	ld   de, $1111                                   ; $4692: $11 $11 $11
	ld   [de], a                                     ; $4695: $12
	rst  JumpTable                                         ; $4696: $df
	rst  $38                                         ; $4697: $ff
	db   $fd                                         ; $4698: $fd
	and  h                                           ; $4699: $a4
	ld   b, h                                        ; $469a: $44
	ld   l, e                                        ; $469b: $6b
	sbc  $fd                                         ; $469c: $de $fd
	call c, $aa9a                                    ; $469e: $dc $9a $aa
	cp   d                                           ; $46a1: $ba
	xor  e                                           ; $46a2: $ab
	adc  c                                           ; $46a3: $89
	adc  b                                           ; $46a4: $88
	xor  c                                           ; $46a5: $a9
	sbc  c                                           ; $46a6: $99
	ld   h, h                                        ; $46a7: $64
	ld   de, $1111                                   ; $46a8: $11 $11 $11
	dec  d                                           ; $46ab: $15
	rst  $38                                         ; $46ac: $ff
	rst  $38                                         ; $46ad: $ff
	ld   a, [$5583]                                  ; $46ae: $fa $83 $55
	ld   a, l                                        ; $46b1: $7d
	call $cceb                                       ; $46b2: $cd $eb $cc
	sbc  h                                           ; $46b5: $9c
	cp   e                                           ; $46b6: $bb
	jp   c, Jump_0bc_79aa                            ; $46b7: $da $aa $79

	ld   a, b                                        ; $46ba: $78
	xor  b                                           ; $46bb: $a8
	add  a                                           ; $46bc: $87
	ld   b, d                                        ; $46bd: $42
	ld   de, $1111                                   ; $46be: $11 $11 $11
	ld   c, a                                        ; $46c1: $4f
	rst  $38                                         ; $46c2: $ff
	rst  $38                                         ; $46c3: $ff
	cp   d                                           ; $46c4: $ba
	ld   d, a                                        ; $46c5: $57
	ld   [hl], a                                     ; $46c6: $77
	jp   z, $9a9c                                    ; $46c7: $ca $9c $9a

	ld   [$bcee], a                                  ; $46ca: $ea $ee $bc
	adc  c                                           ; $46cd: $89
	sub  a                                           ; $46ce: $97
	xor  c                                           ; $46cf: $a9
	sbc  e                                           ; $46d0: $9b
	halt                                             ; $46d1: $76
	ld   d, d                                        ; $46d2: $52
	ld   de, $1111                                   ; $46d3: $11 $11 $11
	inc  de                                          ; $46d6: $13
	rst  $38                                         ; $46d7: $ff
	rst  $38                                         ; $46d8: $ff
	db   $fc                                         ; $46d9: $fc
	or   l                                           ; $46da: $b5
	and  [hl]                                        ; $46db: $a6
	sbc  h                                           ; $46dc: $9c
	ld   a, b                                        ; $46dd: $78
	add  [hl]                                        ; $46de: $86
	xor  h                                           ; $46df: $ac
	rst  JumpTable                                         ; $46e0: $df
	rst  $38                                         ; $46e1: $ff
	ret  c                                           ; $46e2: $d8

	sub  [hl]                                        ; $46e3: $96
	ld   a, e                                        ; $46e4: $7b
	xor  d                                           ; $46e5: $aa
	or   [hl]                                        ; $46e6: $b6
	ld   d, d                                        ; $46e7: $52
	ld   de, $1111                                   ; $46e8: $11 $11 $11
	ld   de, $ffcf                                   ; $46eb: $11 $cf $ff
	db   $fc                                         ; $46ee: $fc
	ld   hl, sp-$26                                  ; $46ef: $f8 $da
	ld   a, e                                        ; $46f1: $7b
	ld   h, l                                        ; $46f2: $65
	ld   h, [hl]                                     ; $46f3: $66
	adc  l                                           ; $46f4: $8d
	rst  JumpTable                                         ; $46f5: $df
	cp   $e9                                         ; $46f6: $fe $e9
	cp   e                                           ; $46f8: $bb
	sbc  h                                           ; $46f9: $9c
	cp   d                                           ; $46fa: $ba
	sub  [hl]                                        ; $46fb: $96
	ld   b, d                                        ; $46fc: $42
	ld   de, $1111                                   ; $46fd: $11 $11 $11
	ld   de, $ff6f                                   ; $4700: $11 $6f $ff
	db   $fc                                         ; $4703: $fc
	db   $fd                                         ; $4704: $fd
	cp   $7a                                         ; $4705: $fe $7a
	ld   b, l                                        ; $4707: $45
	ld   d, [hl]                                     ; $4708: $56
	xor  d                                           ; $4709: $aa
	db   $dd                                         ; $470a: $dd
	sbc  $ec                                         ; $470b: $de $ec
	call z, $bbcc                                    ; $470d: $cc $cc $bb
	sbc  c                                           ; $4710: $99
	ld   d, e                                        ; $4711: $53
	ld   hl, $1111                                   ; $4712: $21 $11 $11
	ld   de, $ff2f                                   ; $4715: $11 $2f $ff
	ld   sp, hl                                      ; $4718: $f9
	cp   $ff                                         ; $4719: $fe $ff
	adc  [hl]                                        ; $471b: $8e
	ld   d, e                                        ; $471c: $53
	ld   d, d                                        ; $471d: $52
	sbc  c                                           ; $471e: $99
	call z, $debd                                    ; $471f: $cc $bd $de
	rst  $28                                         ; $4722: $ef
	db   $ec                                         ; $4723: $ec
	res  1, d                                        ; $4724: $cb $8a
	ld   [hl], l                                     ; $4726: $75
	ld   sp, $1111                                   ; $4727: $31 $11 $11
	ld   de, $ba2c                                   ; $472a: $11 $2c $ba
	ld   sp, hl                                      ; $472d: $f9
	rst  $38                                         ; $472e: $ff
	rst  $38                                         ; $472f: $ff
	cp   l                                           ; $4730: $bd
	ld   d, [hl]                                     ; $4731: $56
	ld   h, [hl]                                     ; $4732: $66
	xor  b                                           ; $4733: $a8
	cp   c                                           ; $4734: $b9
	adc  d                                           ; $4735: $8a
	cp   l                                           ; $4736: $bd
	rst  $28                                         ; $4737: $ef
	db   $fc                                         ; $4738: $fc
	jp   z, Jump_0bc_77ab                            ; $4739: $ca $ab $77

	ld   sp, $1111                                   ; $473c: $31 $11 $11
	ld   [de], a                                     ; $473f: $12
	ld   a, [de]                                     ; $4740: $1a
	ld   a, b                                        ; $4741: $78
	sub  $ff                                         ; $4742: $d6 $ff
	rst  $38                                         ; $4744: $ff
	cp   a                                           ; $4745: $bf
	ld   l, d                                        ; $4746: $6a
	sub  a                                           ; $4747: $97
	ret  c                                           ; $4748: $d8

	rst  ToBoot                                         ; $4749: $c7
	ld   a, c                                        ; $474a: $79
	ld   a, e                                        ; $474b: $7b
	call $dafc                                       ; $474c: $cd $fc $da
	xor  e                                           ; $474f: $ab
	ld   a, d                                        ; $4750: $7a
	ld   h, e                                        ; $4751: $63
	ld   de, $1211                                   ; $4752: $11 $11 $12
	dec  d                                           ; $4755: $15
	ld   [hl+], a                                    ; $4756: $22
	ld   [hl], c                                     ; $4757: $71
	call $cfff                                       ; $4758: $cd $ff $cf
	cp   e                                           ; $475b: $bb
	reti                                             ; $475c: $d9


	db   $fd                                         ; $475d: $fd
	call z, $898a                                    ; $475e: $cc $8a $89
	xor  e                                           ; $4761: $ab
	res  5, c                                        ; $4762: $cb $a9
	sbc  d                                           ; $4764: $9a
	sbc  d                                           ; $4765: $9a
	add  [hl]                                        ; $4766: $86
	ld   b, c                                        ; $4767: $41
	ld   de, $1111                                   ; $4768: $11 $11 $11
	ld   de, $8911                                   ; $476b: $11 $11 $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $476e: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $476f: $cf
	call z, $ffdd                                    ; $4770: $cc $dd $ff
	rst  $38                                         ; $4773: $ff
	db   $db                                         ; $4774: $db
	xor  d                                           ; $4775: $aa
	cp   e                                           ; $4776: $bb
	call c, $99aa                                    ; $4777: $dc $aa $99
	ld   a, b                                        ; $477a: $78
	ld   [hl], l                                     ; $477b: $75
	ld   sp, $1111                                   ; $477c: $31 $11 $11
	ld   de, $1311                                   ; $477f: $11 $11 $13
	adc  c                                           ; $4782: $89
	xor  $ee                                         ; $4783: $ee $ee
	call $ffee                                       ; $4785: $cd $ee $ff
	cp   $cc                                         ; $4788: $fe $cc
	xor  h                                           ; $478a: $ac
	call z, $b9db                                    ; $478b: $cc $db $b9
	sub  a                                           ; $478e: $97
	ld   [hl], a                                     ; $478f: $77
	ld   d, e                                        ; $4790: $53
	ld   de, $1111                                   ; $4791: $11 $11 $11
	ld   de, $1811                                   ; $4794: $11 $11 $18
	adc  l                                           ; $4797: $8d
	cp   $fd                                         ; $4798: $fe $fd
	db   $ed                                         ; $479a: $ed
	rst  JumpTable                                         ; $479b: $df
	xor  $ec                                         ; $479c: $ee $ec
	ret                                              ; $479e: $c9


	xor  e                                           ; $479f: $ab
	adc  $cb                                         ; $47a0: $ce $cb
	cp   c                                           ; $47a2: $b9
	sub  a                                           ; $47a3: $97
	ld   [hl], l                                     ; $47a4: $75
	ld   sp, $1111                                   ; $47a5: $31 $11 $11
	ld   de, $3111                                   ; $47a8: $11 $11 $31
	adc  b                                           ; $47ab: $88
	cp   a                                           ; $47ac: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47ad: $cf
	db   $ed                                         ; $47ae: $ed
	db   $fc                                         ; $47af: $fc
	cp   $de                                         ; $47b0: $fe $de
	xor  e                                           ; $47b2: $ab
	sbc  d                                           ; $47b3: $9a
	call z, $dcfd                                    ; $47b4: $cc $fd $dc
	adc  c                                           ; $47b7: $89
	ld   h, a                                        ; $47b8: $67
	ld   d, d                                        ; $47b9: $52
	ld   de, $1111                                   ; $47ba: $11 $11 $11
	ld   de, $1813                                   ; $47bd: $11 $13 $18
	sbc  l                                           ; $47c0: $9d
	db   $fd                                         ; $47c1: $fd
	cp   $ce                                         ; $47c2: $fe $ce
	cp   a                                           ; $47c4: $bf
	db   $ed                                         ; $47c5: $ed
	reti                                             ; $47c6: $d9


	xor  c                                           ; $47c7: $a9
	sbc  h                                           ; $47c8: $9c
	rst  JumpTable                                         ; $47c9: $df
	db   $fd                                         ; $47ca: $fd
	ret                                              ; $47cb: $c9


	ld   [hl], l                                     ; $47cc: $75
	ld   d, e                                        ; $47cd: $53
	ld   de, $1111                                   ; $47ce: $11 $11 $11
	inc  de                                          ; $47d1: $13
	dec  h                                           ; $47d2: $25
	ld   d, l                                        ; $47d3: $55
	call c, $ffff                                    ; $47d4: $dc $ff $ff
	call z, $dab9                                    ; $47d7: $cc $b9 $da
	res  1, c                                        ; $47da: $cb $89
	ld   a, e                                        ; $47dc: $7b
	rst  $28                                         ; $47dd: $ef
	rst  $38                                         ; $47de: $ff
	ei                                               ; $47df: $fb
	sub  [hl]                                        ; $47e0: $96
	ld   b, h                                        ; $47e1: $44
	ld   de, $1111                                   ; $47e2: $11 $11 $11
	dec  d                                           ; $47e5: $15
	ld   d, a                                        ; $47e6: $57
	and  [hl]                                        ; $47e7: $a6
	db   $ed                                         ; $47e8: $ed
	rst  $38                                         ; $47e9: $ff
	rst  $28                                         ; $47ea: $ef
	ret                                              ; $47eb: $c9


	or   l                                           ; $47ec: $b5
	cp   b                                           ; $47ed: $b8
	xor  e                                           ; $47ee: $ab
	ld   a, c                                        ; $47ef: $79
	ld   a, e                                        ; $47f0: $7b
	rst  $28                                         ; $47f1: $ef
	rst  $38                                         ; $47f2: $ff
	db   $fd                                         ; $47f3: $fd
	sub  l                                           ; $47f4: $95
	ld   [hl-], a                                    ; $47f5: $32
	ld   de, $1111                                   ; $47f6: $11 $11 $11
	jr   @+$7d                                       ; $47f9: $18 $7b

	and  $fd                                         ; $47fb: $e6 $fd
	rst  $38                                         ; $47fd: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47fe: $cf
	halt                                             ; $47ff: $76
	ld   [hl], c                                     ; $4800: $71
	or   [hl]                                        ; $4801: $b6
	xor  d                                           ; $4802: $aa
	ld   a, d                                        ; $4803: $7a
	sbc  [hl]                                        ; $4804: $9e
	rst  $38                                         ; $4805: $ff
	rst  $38                                         ; $4806: $ff
	ei                                               ; $4807: $fb
	sub  e                                           ; $4808: $93
	ld   sp, $1111                                   ; $4809: $31 $11 $11
	ld   de, $7f3f                                   ; $480c: $11 $3f $7f
	jp   z, $fffb                                    ; $480f: $ca $fb $ff

	cp   a                                           ; $4812: $bf
	rla                                              ; $4813: $17
	inc  d                                           ; $4814: $14
	and  [hl]                                        ; $4815: $a6
	ret                                              ; $4816: $c9


	sbc  d                                           ; $4817: $9a
	rst  JumpTable                                         ; $4818: $df
	rst  $38                                         ; $4819: $ff
	rst  $38                                         ; $481a: $ff
	reti                                             ; $481b: $d9


	ld   b, d                                        ; $481c: $42
	ld   de, $1111                                   ; $481d: $11 $11 $11
	ld   de, $effd                                   ; $4820: $11 $fd $ef
	ld   e, a                                        ; $4823: $5f
	rst  $38                                         ; $4824: $ff
	or   $f1                                         ; $4825: $f6 $f1
	inc  de                                          ; $4827: $13
	ld   a, [de]                                     ; $4828: $1a
	adc  d                                           ; $4829: $8a
	cp   d                                           ; $482a: $ba
	sbc  a                                           ; $482b: $9f
	rst  $38                                         ; $482c: $ff
	rst  $38                                         ; $482d: $ff
	db   $fc                                         ; $482e: $fc
	add  l                                           ; $482f: $85
	ld   hl, $1111                                   ; $4830: $21 $11 $11
	ld   de, $fd1f                                   ; $4833: $11 $1f $fd
	rst  $30                                         ; $4836: $f7
	rst  $38                                         ; $4837: $ff
	rst  $38                                         ; $4838: $ff
	sbc  d                                           ; $4839: $9a
	ld   b, c                                        ; $483a: $41
	ld   de, $ad7c                                   ; $483b: $11 $7c $ad
	jp   z, $ffff                                    ; $483e: $ca $ff $ff

	rst  $38                                         ; $4841: $ff
	or   [hl]                                        ; $4842: $b6
	ld   sp, $1111                                   ; $4843: $31 $11 $11
	ld   de, $ff15                                   ; $4846: $11 $15 $ff
	rst  $38                                         ; $4849: $ff
	adc  a                                           ; $484a: $8f
	rst  $38                                         ; $484b: $ff
	or   $81                                         ; $484c: $f6 $81
	ld   de, $cd28                                   ; $484e: $11 $28 $cd
	db   $dd                                         ; $4851: $dd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4852: $cf
	rst  $38                                         ; $4853: $ff
	rst  $38                                         ; $4854: $ff
	ei                                               ; $4855: $fb
	ld   d, e                                        ; $4856: $53
	ld   de, $1111                                   ; $4857: $11 $11 $11
	inc  de                                          ; $485a: $13
	sbc  a                                           ; $485b: $9f
	rst  $38                                         ; $485c: $ff
	ld   a, [$ffff]                                  ; $485d: $fa $ff $ff
	ld   h, a                                        ; $4860: $67
	ld   de, $ac12                                   ; $4861: $11 $12 $ac
	xor  $dc                                         ; $4864: $ee $dc
	rst  $38                                         ; $4866: $ff
	rst  $38                                         ; $4867: $ff
	cp   $94                                         ; $4868: $fe $94
	ld   de, $1111                                   ; $486a: $11 $11 $11
	ld   de, $ff4f                                   ; $486d: $11 $4f $ff
	cp   $df                                         ; $4870: $fe $df
	rst  JumpTable                                         ; $4872: $df
	push bc                                          ; $4873: $c5
	ld   h, c                                        ; $4874: $61
	ld   de, $ce3a                                   ; $4875: $11 $3a $ce
	db   $fd                                         ; $4878: $fd
	rst  JumpTable                                         ; $4879: $df
	rst  $38                                         ; $487a: $ff
	rst  $38                                         ; $487b: $ff
	jp   hl                                          ; $487c: $e9


	ld   b, c                                        ; $487d: $41
	ld   de, $1111                                   ; $487e: $11 $11 $11
	ld   [hl], $ff                                   ; $4881: $36 $ff
	rst  $38                                         ; $4883: $ff
	cp   a                                           ; $4884: $bf
	rst  $38                                         ; $4885: $ff
	rst  $30                                         ; $4886: $f7
	ld   h, d                                        ; $4887: $62
	ld   de, $ad16                                   ; $4888: $11 $16 $ad
	rst  $38                                         ; $488b: $ff
	db   $ed                                         ; $488c: $ed
	rst  $38                                         ; $488d: $ff
	rst  $38                                         ; $488e: $ff
	cp   $72                                         ; $488f: $fe $72
	ld   de, $1111                                   ; $4891: $11 $11 $11
	inc  d                                           ; $4894: $14
	sbc  a                                           ; $4895: $9f
	rst  $38                                         ; $4896: $ff
	ei                                               ; $4897: $fb
	cp   $ff                                         ; $4898: $fe $ff
	ld   b, [hl]                                     ; $489a: $46
	ld   de, $7b11                                   ; $489b: $11 $11 $7b
	rst  $38                                         ; $489e: $ff
	db   $fd                                         ; $489f: $fd
	rst  $28                                         ; $48a0: $ef
	rst  $38                                         ; $48a1: $ff
	rst  $38                                         ; $48a2: $ff
	push bc                                          ; $48a3: $c5
	ld   de, $1111                                   ; $48a4: $11 $11 $11
	ld   [de], a                                     ; $48a7: $12
	ld   c, a                                        ; $48a8: $4f
	rst  $38                                         ; $48a9: $ff
	rst  $38                                         ; $48aa: $ff
	rst  $28                                         ; $48ab: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48ac: $cf

jr_0bc_48ad:
	sub  h                                           ; $48ad: $94
	ld   h, c                                        ; $48ae: $61
	ld   de, $df2a                                   ; $48af: $11 $2a $df
	db   $fd                                         ; $48b2: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48b3: $cf
	rst  $38                                         ; $48b4: $ff
	rst  $38                                         ; $48b5: $ff
	ld   hl, sp+$31                                  ; $48b6: $f8 $31
	ld   de, $1111                                   ; $48b8: $11 $11 $11
	ld   c, b                                        ; $48bb: $48
	rst  $38                                         ; $48bc: $ff
	rst  $38                                         ; $48bd: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48be: $cf
	rst  $28                                         ; $48bf: $ef
	db   $f4                                         ; $48c0: $f4
	ld   [hl], c                                     ; $48c1: $71
	ld   de, $bc17                                   ; $48c2: $11 $17 $bc
	rst  $38                                         ; $48c5: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48c6: $cf
	rst  $38                                         ; $48c7: $ff
	rst  $38                                         ; $48c8: $ff
	db   $fc                                         ; $48c9: $fc
	ld   d, c                                        ; $48ca: $51
	ld   de, $1111                                   ; $48cb: $11 $11 $11
	ld   [de], a                                     ; $48ce: $12
	rst  $38                                         ; $48cf: $ff
	rst  $38                                         ; $48d0: $ff
	rst  $38                                         ; $48d1: $ff
	ld   a, [$77f8]                                  ; $48d2: $fa $f8 $77
	ld   de, $8812                                   ; $48d5: $11 $12 $88
	rst  $38                                         ; $48d8: $ff
	rst  $28                                         ; $48d9: $ef
	rst  $38                                         ; $48da: $ff
	rst  $38                                         ; $48db: $ff
	rst  $38                                         ; $48dc: $ff
	sub  l                                           ; $48dd: $95
	ld   de, $1111                                   ; $48de: $11 $11 $11
	ld   [de], a                                     ; $48e1: $12
	sbc  a                                           ; $48e2: $9f
	rst  $38                                         ; $48e3: $ff
	ei                                               ; $48e4: $fb
	db   $fc                                         ; $48e5: $fc
	rst  $38                                         ; $48e6: $ff
	ld   l, e                                        ; $48e7: $6b
	ld   de, $6711                                   ; $48e8: $11 $11 $67
	cp   a                                           ; $48eb: $bf
	db   $ed                                         ; $48ec: $ed
	rst  $38                                         ; $48ed: $ff
	rst  $38                                         ; $48ee: $ff
	rst  $38                                         ; $48ef: $ff
	or   a                                           ; $48f0: $b7
	ld   bc, $1111                                   ; $48f1: $01 $11 $11
	ld   de, $ff1f                                   ; $48f4: $11 $1f $ff
	ld   a, [$dfff]                                  ; $48f7: $fa $ff $df
	ld   a, h                                        ; $48fa: $7c
	ld   h, c                                        ; $48fb: $61
	ld   hl, $5e26                                   ; $48fc: $21 $26 $5e
	db   $dd                                         ; $48ff: $dd
	rst  $38                                         ; $4900: $ff
	rst  $38                                         ; $4901: $ff
	rst  $38                                         ; $4902: $ff
	ld   [$1141], a                                  ; $4903: $ea $41 $11
	ld   de, $1711                                   ; $4906: $11 $11 $17
	cp   $ff                                         ; $4909: $fe $ff
	rst  $38                                         ; $490b: $ff
	rst  $28                                         ; $490c: $ef
	ei                                               ; $490d: $fb
	pop  de                                          ; $490e: $d1
	ld   b, c                                        ; $490f: $41
	inc  d                                           ; $4910: $14
	jr   z, jr_0bc_48ad                              ; $4911: $28 $9a

	db   $dd                                         ; $4913: $dd
	rst  $38                                         ; $4914: $ff
	rst  $38                                         ; $4915: $ff
	cp   $72                                         ; $4916: $fe $72
	ld   de, $1111                                   ; $4918: $11 $11 $11
	ld   de, $efbc                                   ; $491b: $11 $bc $ef
	rst  JumpTable                                         ; $491e: $df
	rst  $38                                         ; $491f: $ff
	db   $fd                                         ; $4920: $fd
	ld   sp, hl                                      ; $4921: $f9
	ld   d, [hl]                                     ; $4922: $56
	inc  de                                          ; $4923: $13
	ld   [de], a                                     ; $4924: $12
	ld   h, h                                        ; $4925: $64
	call c, $ffff                                    ; $4926: $dc $ff $ff
	cp   $94                                         ; $4929: $fe $94
	ld   b, c                                        ; $492b: $41
	ld   de, $1111                                   ; $492c: $11 $11 $11
	ld   [hl], a                                     ; $492f: $77
	rst  JumpTable                                         ; $4930: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4931: $cf
	rst  $38                                         ; $4932: $ff
	rst  $38                                         ; $4933: $ff
	ei                                               ; $4934: $fb
	cp   c                                           ; $4935: $b9
	dec  d                                           ; $4936: $15
	ld   [de], a                                     ; $4937: $12
	ld   [hl+], a                                    ; $4938: $22
	ret  z                                           ; $4939: $c8

	rst  $38                                         ; $493a: $ff
	rst  $38                                         ; $493b: $ff
	cp   a                                           ; $493c: $bf
	ld   [hl], a                                     ; $493d: $77
	ld   h, c                                        ; $493e: $61
	ld   de, $1111                                   ; $493f: $11 $11 $11
	ld   c, d                                        ; $4942: $4a
	ld   [$fffe], a                                  ; $4943: $ea $fe $ff
	rst  $38                                         ; $4946: $ff
	rst  $38                                         ; $4947: $ff
	rst  $20                                         ; $4948: $e7
	ld   [hl], c                                     ; $4949: $71
	ld   [hl-], a                                    ; $494a: $32
	jr   c, jr_0bc_49c9                              ; $494b: $38 $7c

	adc  $fe                                         ; $494d: $ce $fe
	ei                                               ; $494f: $fb
	cp   b                                           ; $4950: $b8
	ld   b, h                                        ; $4951: $44
	ld   de, $1111                                   ; $4952: $11 $11 $11
	ld   b, d                                        ; $4955: $42
	ld   h, h                                        ; $4956: $64
	ld   l, e                                        ; $4957: $6b
	cp   a                                           ; $4958: $bf
	rst  $38                                         ; $4959: $ff
	cp   $d9                                         ; $495a: $fe $d9
	ret                                              ; $495c: $c9


	xor  d                                           ; $495d: $aa
	ld   a, b                                        ; $495e: $78
	ld   b, a                                        ; $495f: $47
	ld   a, c                                        ; $4960: $79
	call c, $a8eb                                    ; $4961: $dc $eb $a8
	ld   d, a                                        ; $4964: $57
	ld   d, [hl]                                     ; $4965: $56
	ld   sp, $1121                                   ; $4966: $31 $21 $11
	inc  de                                          ; $4969: $13
	ld   c, b                                        ; $496a: $48
	adc  h                                           ; $496b: $8c
	cp   d                                           ; $496c: $ba
	cp   e                                           ; $496d: $bb
	call c, $cbdd                                    ; $496e: $dc $dd $cb
	sbc  c                                           ; $4971: $99
	ld   a, c                                        ; $4972: $79
	sbc  h                                           ; $4973: $9c
	xor  $cb                                         ; $4974: $ee $cb
	xor  c                                           ; $4976: $a9
	sbc  c                                           ; $4977: $99
	xor  e                                           ; $4978: $ab
	and  a                                           ; $4979: $a7
	ld   b, c                                        ; $497a: $41
	ld   de, $1311                                   ; $497b: $11 $11 $13
	ld   b, e                                        ; $497e: $43
	ld   b, h                                        ; $497f: $44
	ld   h, a                                        ; $4980: $67
	sbc  h                                           ; $4981: $9c
	sbc  $db                                         ; $4982: $de $db
	cp   d                                           ; $4984: $ba
	xor  h                                           ; $4985: $ac
	adc  $dc                                         ; $4986: $ce $dc
	jp   z, $aba9                                    ; $4988: $ca $a9 $ab

	cp   d                                           ; $498b: $ba
	xor  b                                           ; $498c: $a8
	ld   h, [hl]                                     ; $498d: $66
	ld   d, l                                        ; $498e: $55
	ld   d, h                                        ; $498f: $54
	ld   [hl-], a                                    ; $4990: $32
	ld   de, $3311                                   ; $4991: $11 $11 $33
	ld   b, a                                        ; $4994: $47
	ld   a, b                                        ; $4995: $78
	sbc  c                                           ; $4996: $99
	call z, $cccc                                    ; $4997: $cc $cc $cc
	call z, $cbbc                                    ; $499a: $cc $bc $cb
	cp   e                                           ; $499d: $bb
	cp   d                                           ; $499e: $ba
	xor  c                                           ; $499f: $a9
	sbc  b                                           ; $49a0: $98
	adc  b                                           ; $49a1: $88
	add  a                                           ; $49a2: $87
	ld   [hl], a                                     ; $49a3: $77
	ld   h, l                                        ; $49a4: $65
	ld   b, h                                        ; $49a5: $44
	inc  sp                                          ; $49a6: $33
	inc  sp                                          ; $49a7: $33
	inc  sp                                          ; $49a8: $33
	ld   b, h                                        ; $49a9: $44
	ld   d, [hl]                                     ; $49aa: $56
	ld   a, b                                        ; $49ab: $78
	adc  d                                           ; $49ac: $8a
	xor  e                                           ; $49ad: $ab
	cp   e                                           ; $49ae: $bb
	cp   h                                           ; $49af: $bc
	set  1, h                                        ; $49b0: $cb $cc
	cp   e                                           ; $49b2: $bb
	cp   e                                           ; $49b3: $bb
	xor  c                                           ; $49b4: $a9
	xor  c                                           ; $49b5: $a9
	sbc  c                                           ; $49b6: $99
	adc  b                                           ; $49b7: $88
	ld   [hl], a                                     ; $49b8: $77
	ld   [hl], a                                     ; $49b9: $77
	ld   h, [hl]                                     ; $49ba: $66
	ld   h, l                                        ; $49bb: $65
	ld   d, l                                        ; $49bc: $55
	ld   b, l                                        ; $49bd: $45
	ld   b, h                                        ; $49be: $44
	ld   b, l                                        ; $49bf: $45
	ld   d, [hl]                                     ; $49c0: $56
	ld   h, a                                        ; $49c1: $67
	adc  c                                           ; $49c2: $89
	sbc  d                                           ; $49c3: $9a
	sbc  d                                           ; $49c4: $9a
	xor  d                                           ; $49c5: $aa
	cp   d                                           ; $49c6: $ba
	xor  d                                           ; $49c7: $aa
	xor  d                                           ; $49c8: $aa

jr_0bc_49c9:
	xor  d                                           ; $49c9: $aa
	xor  c                                           ; $49ca: $a9
	xor  c                                           ; $49cb: $a9
	sbc  c                                           ; $49cc: $99
	adc  c                                           ; $49cd: $89
	add  a                                           ; $49ce: $87
	ld   [hl], a                                     ; $49cf: $77
	ld   [hl], a                                     ; $49d0: $77
	ld   [hl], a                                     ; $49d1: $77
	ld   h, [hl]                                     ; $49d2: $66
	ld   h, [hl]                                     ; $49d3: $66
	ld   [hl], a                                     ; $49d4: $77
	ld   [hl], a                                     ; $49d5: $77
	ld   [hl], a                                     ; $49d6: $77
	ld   [hl], a                                     ; $49d7: $77
	ld   [hl], a                                     ; $49d8: $77
	ld   [hl], a                                     ; $49d9: $77
	ld   [hl], a                                     ; $49da: $77
	adc  b                                           ; $49db: $88
	sbc  b                                           ; $49dc: $98
	sbc  c                                           ; $49dd: $99
	sbc  c                                           ; $49de: $99
	sbc  c                                           ; $49df: $99
	sbc  c                                           ; $49e0: $99
	sbc  c                                           ; $49e1: $99
	sbc  c                                           ; $49e2: $99
	adc  b                                           ; $49e3: $88
	sbc  b                                           ; $49e4: $98
	adc  b                                           ; $49e5: $88
	adc  b                                           ; $49e6: $88
	adc  b                                           ; $49e7: $88
	adc  b                                           ; $49e8: $88
	adc  b                                           ; $49e9: $88
	add  a                                           ; $49ea: $87
	ld   [hl], a                                     ; $49eb: $77
	ld   [hl], a                                     ; $49ec: $77
	ld   [hl], a                                     ; $49ed: $77
	ld   [hl], a                                     ; $49ee: $77
	ld   [hl], a                                     ; $49ef: $77
	ld   [hl], a                                     ; $49f0: $77
	ld   [hl], a                                     ; $49f1: $77
	ld   [hl], a                                     ; $49f2: $77
	ld   [hl], a                                     ; $49f3: $77
	adc  b                                           ; $49f4: $88
	adc  b                                           ; $49f5: $88
	adc  b                                           ; $49f6: $88
	adc  b                                           ; $49f7: $88
	adc  b                                           ; $49f8: $88
	adc  b                                           ; $49f9: $88
	adc  c                                           ; $49fa: $89
	sbc  c                                           ; $49fb: $99
	sbc  c                                           ; $49fc: $99
	sbc  c                                           ; $49fd: $99
	sbc  c                                           ; $49fe: $99
	sbc  c                                           ; $49ff: $99
	sbc  c                                           ; $4a00: $99
	sbc  c                                           ; $4a01: $99
	sbc  b                                           ; $4a02: $98
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
	add  a                                           ; $4a10: $87

Jump_0bc_4a11:
	ld   [hl], a                                     ; $4a11: $77
	adc  b                                           ; $4a12: $88
	adc  b                                           ; $4a13: $88
	adc  b                                           ; $4a14: $88
	adc  b                                           ; $4a15: $88
	adc  b                                           ; $4a16: $88
	adc  b                                           ; $4a17: $88
	adc  b                                           ; $4a18: $88
	adc  c                                           ; $4a19: $89
	sbc  c                                           ; $4a1a: $99
	sbc  c                                           ; $4a1b: $99
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
	sbc  b                                           ; $4a8c: $98
	adc  b                                           ; $4a8d: $88
	adc  b                                           ; $4a8e: $88
	adc  c                                           ; $4a8f: $89
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

Jump_0bc_4a9a:
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
	sbc  b                                           ; $4ac0: $98
	adc  c                                           ; $4ac1: $89
	ld   a, b                                        ; $4ac2: $78
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
	add  a                                           ; $4ad2: $87
	adc  b                                           ; $4ad3: $88
	adc  c                                           ; $4ad4: $89
	adc  b                                           ; $4ad5: $88
	add  a                                           ; $4ad6: $87
	adc  b                                           ; $4ad7: $88
	adc  b                                           ; $4ad8: $88
	ld   a, b                                        ; $4ad9: $78
	add  a                                           ; $4ada: $87
	adc  c                                           ; $4adb: $89
	ld   a, c                                        ; $4adc: $79
	sub  a                                           ; $4add: $97
	sbc  b                                           ; $4ade: $98
	adc  b                                           ; $4adf: $88
	sbc  b                                           ; $4ae0: $98
	adc  b                                           ; $4ae1: $88
	adc  c                                           ; $4ae2: $89
	adc  c                                           ; $4ae3: $89
	adc  b                                           ; $4ae4: $88
	adc  b                                           ; $4ae5: $88
	add  a                                           ; $4ae6: $87
	adc  b                                           ; $4ae7: $88
	adc  b                                           ; $4ae8: $88
	adc  b                                           ; $4ae9: $88
	adc  b                                           ; $4aea: $88
	adc  b                                           ; $4aeb: $88
	adc  b                                           ; $4aec: $88
	adc  b                                           ; $4aed: $88
	adc  b                                           ; $4aee: $88
	adc  b                                           ; $4aef: $88
	sbc  b                                           ; $4af0: $98
	adc  b                                           ; $4af1: $88
	adc  b                                           ; $4af2: $88
	add  a                                           ; $4af3: $87
	adc  b                                           ; $4af4: $88
	adc  b                                           ; $4af5: $88
	adc  b                                           ; $4af6: $88
	ld   a, c                                        ; $4af7: $79
	ld   a, b                                        ; $4af8: $78
	add  a                                           ; $4af9: $87
	sub  a                                           ; $4afa: $97
	adc  b                                           ; $4afb: $88
	adc  c                                           ; $4afc: $89
	adc  b                                           ; $4afd: $88
	adc  b                                           ; $4afe: $88
	adc  b                                           ; $4aff: $88
	adc  b                                           ; $4b00: $88
	adc  b                                           ; $4b01: $88
	adc  c                                           ; $4b02: $89
	ld   a, b                                        ; $4b03: $78
	adc  b                                           ; $4b04: $88
	adc  b                                           ; $4b05: $88
	adc  b                                           ; $4b06: $88
	sub  a                                           ; $4b07: $97
	adc  b                                           ; $4b08: $88
	ld   a, c                                        ; $4b09: $79
	ld   [hl], a                                     ; $4b0a: $77
	sbc  b                                           ; $4b0b: $98
	ld   a, c                                        ; $4b0c: $79
	add  a                                           ; $4b0d: $87
	sbc  b                                           ; $4b0e: $98
	adc  c                                           ; $4b0f: $89
	adc  b                                           ; $4b10: $88
	ld   a, c                                        ; $4b11: $79
	adc  b                                           ; $4b12: $88
	adc  b                                           ; $4b13: $88
	add  a                                           ; $4b14: $87
	add  a                                           ; $4b15: $87
	adc  c                                           ; $4b16: $89
	ld   a, c                                        ; $4b17: $79
	adc  b                                           ; $4b18: $88
	add  a                                           ; $4b19: $87
	sbc  c                                           ; $4b1a: $99
	ld   a, c                                        ; $4b1b: $79
	ld   [hl], a                                     ; $4b1c: $77
	sub  [hl]                                        ; $4b1d: $96
	adc  c                                           ; $4b1e: $89
	ld   l, c                                        ; $4b1f: $69
	sub  [hl]                                        ; $4b20: $96
	adc  c                                           ; $4b21: $89
	ld   a, b                                        ; $4b22: $78
	adc  b                                           ; $4b23: $88
	adc  c                                           ; $4b24: $89
	adc  c                                           ; $4b25: $89
	adc  b                                           ; $4b26: $88
	sbc  b                                           ; $4b27: $98
	add  a                                           ; $4b28: $87
	adc  d                                           ; $4b29: $8a
	ld   a, c                                        ; $4b2a: $79
	add  a                                           ; $4b2b: $87
	adc  b                                           ; $4b2c: $88
	ld   a, b                                        ; $4b2d: $78
	sub  [hl]                                        ; $4b2e: $96
	sbc  b                                           ; $4b2f: $98
	ld   l, c                                        ; $4b30: $69
	add  a                                           ; $4b31: $87
	sbc  c                                           ; $4b32: $99
	ld   a, c                                        ; $4b33: $79
	adc  b                                           ; $4b34: $88
	adc  b                                           ; $4b35: $88
	add  a                                           ; $4b36: $87
	ld   a, d                                        ; $4b37: $7a
	ld   l, b                                        ; $4b38: $68
	and  [hl]                                        ; $4b39: $a6
	adc  b                                           ; $4b3a: $88
	ld   a, b                                        ; $4b3b: $78
	sub  a                                           ; $4b3c: $97
	adc  c                                           ; $4b3d: $89
	ld   a, d                                        ; $4b3e: $7a
	ld   a, b                                        ; $4b3f: $78
	sub  a                                           ; $4b40: $97
	adc  b                                           ; $4b41: $88
	ld   a, d                                        ; $4b42: $7a
	add  a                                           ; $4b43: $87
	adc  b                                           ; $4b44: $88
	sub  a                                           ; $4b45: $97
	sub  a                                           ; $4b46: $97
	adc  b                                           ; $4b47: $88
	adc  c                                           ; $4b48: $89
	ld   a, c                                        ; $4b49: $79
	ld   a, b                                        ; $4b4a: $78
	ld   a, c                                        ; $4b4b: $79
	ld   a, b                                        ; $4b4c: $78
	sub  [hl]                                        ; $4b4d: $96
	sbc  b                                           ; $4b4e: $98
	ld   a, b                                        ; $4b4f: $78
	sub  [hl]                                        ; $4b50: $96
	sbc  b                                           ; $4b51: $98
	ld   a, c                                        ; $4b52: $79
	ld   a, c                                        ; $4b53: $79
	ld   a, c                                        ; $4b54: $79
	adc  b                                           ; $4b55: $88
	ld   a, b                                        ; $4b56: $78
	adc  b                                           ; $4b57: $88
	add  [hl]                                        ; $4b58: $86
	sub  a                                           ; $4b59: $97
	ld   [hl], a                                     ; $4b5a: $77
	and  l                                           ; $4b5b: $a5
	sbc  c                                           ; $4b5c: $99
	ld   e, d                                        ; $4b5d: $5a
	ld   l, c                                        ; $4b5e: $69
	ld   a, d                                        ; $4b5f: $7a
	ld   [hl], a                                     ; $4b60: $77
	sub  [hl]                                        ; $4b61: $96
	adc  d                                           ; $4b62: $8a
	ld   [hl], l                                     ; $4b63: $75
	rst  ToBoot                                         ; $4b64: $c7
	add  a                                           ; $4b65: $87
	sub  a                                           ; $4b66: $97
	ld   l, l                                        ; $4b67: $6d
	ld   c, c                                        ; $4b68: $49
	and  [hl]                                        ; $4b69: $a6
	ld   a, c                                        ; $4b6a: $79
	add  l                                           ; $4b6b: $85
	and  a                                           ; $4b6c: $a7
	ld   l, c                                        ; $4b6d: $69
	and  l                                           ; $4b6e: $a5
	adc  d                                           ; $4b6f: $8a
	ld   l, b                                        ; $4b70: $68
	sub  a                                           ; $4b71: $97
	ld   l, d                                        ; $4b72: $6a
	ld   [hl], a                                     ; $4b73: $77
	and  [hl]                                        ; $4b74: $a6
	sub  a                                           ; $4b75: $97
	sub  [hl]                                        ; $4b76: $96
	sbc  c                                           ; $4b77: $99
	inc  a                                           ; $4b78: $3c
	halt                                             ; $4b79: $76
	sbc  d                                           ; $4b7a: $9a
	ld   l, b                                        ; $4b7b: $68
	sub  [hl]                                        ; $4b7c: $96
	ld   a, e                                        ; $4b7d: $7b
	ld   [hl], e                                     ; $4b7e: $73
	and  $5c                                         ; $4b7f: $e6 $5c
	add  a                                           ; $4b81: $87
	ld   a, h                                        ; $4b82: $7c
	ld   e, c                                        ; $4b83: $59
	or   l                                           ; $4b84: $b5
	adc  c                                           ; $4b85: $89
	ld   h, [hl]                                     ; $4b86: $66
	push bc                                          ; $4b87: $c5
	ld   l, h                                        ; $4b88: $6c
	ld   h, l                                        ; $4b89: $65
	or   a                                           ; $4b8a: $b7
	ld   l, c                                        ; $4b8b: $69
	sub  l                                           ; $4b8c: $95
	adc  h                                           ; $4b8d: $8c
	ld   e, b                                        ; $4b8e: $58
	or   l                                           ; $4b8f: $b5
	ld   a, d                                        ; $4b90: $7a
	sub  e                                           ; $4b91: $93
	jp   z, $a63a                                    ; $4b92: $ca $3a $a6

	adc  d                                           ; $4b95: $8a
	ld   l, b                                        ; $4b96: $68
	sub  l                                           ; $4b97: $95
	adc  b                                           ; $4b98: $88
	add  a                                           ; $4b99: $87
	sbc  c                                           ; $4b9a: $99
	ld   a, b                                        ; $4b9b: $78
	adc  c                                           ; $4b9c: $89
	ld   c, d                                        ; $4b9d: $4a
	add  [hl]                                        ; $4b9e: $86
	and  [hl]                                        ; $4b9f: $a6
	sbc  b                                           ; $4ba0: $98
	add  a                                           ; $4ba1: $87
	sub  a                                           ; $4ba2: $97
	adc  b                                           ; $4ba3: $88
	ld   a, e                                        ; $4ba4: $7b
	ld   l, c                                        ; $4ba5: $69
	ld   a, b                                        ; $4ba6: $78
	sub  a                                           ; $4ba7: $97
	ld   [hl], a                                     ; $4ba8: $77
	and  [hl]                                        ; $4ba9: $a6
	and  [hl]                                        ; $4baa: $a6
	ld   a, c                                        ; $4bab: $79
	ld   [hl], a                                     ; $4bac: $77
	sbc  c                                           ; $4bad: $99
	ld   a, c                                        ; $4bae: $79
	ld   a, c                                        ; $4baf: $79
	ld   l, d                                        ; $4bb0: $6a
	add  l                                           ; $4bb1: $85
	sbc  c                                           ; $4bb2: $99
	ld   [hl], a                                     ; $4bb3: $77
	and  [hl]                                        ; $4bb4: $a6
	ld   l, e                                        ; $4bb5: $6b
	ld   a, b                                        ; $4bb6: $78
	sub  a                                           ; $4bb7: $97
	add  a                                           ; $4bb8: $87
	sub  a                                           ; $4bb9: $97
	sbc  c                                           ; $4bba: $99
	ld   a, b                                        ; $4bbb: $78
	ld   a, d                                        ; $4bbc: $7a
	ld   e, c                                        ; $4bbd: $59
	add  [hl]                                        ; $4bbe: $86
	and  [hl]                                        ; $4bbf: $a6
	and  [hl]                                        ; $4bc0: $a6
	sub  a                                           ; $4bc1: $97
	adc  b                                           ; $4bc2: $88
	adc  c                                           ; $4bc3: $89
	ld   l, d                                        ; $4bc4: $6a
	ld   l, c                                        ; $4bc5: $69
	add  a                                           ; $4bc6: $87
	add  a                                           ; $4bc7: $87
	sbc  c                                           ; $4bc8: $99
	ld   l, c                                        ; $4bc9: $69
	or   l                                           ; $4bca: $b5
	adc  d                                           ; $4bcb: $8a
	ld   e, b                                        ; $4bcc: $58
	add  a                                           ; $4bcd: $87
	ld   a, b                                        ; $4bce: $78
	add  a                                           ; $4bcf: $87
	sbc  d                                           ; $4bd0: $9a
	add  l                                           ; $4bd1: $85
	and  a                                           ; $4bd2: $a7
	ld   l, d                                        ; $4bd3: $6a
	add  a                                           ; $4bd4: $87
	sub  a                                           ; $4bd5: $97
	ld   l, d                                        ; $4bd6: $6a
	ld   [hl], a                                     ; $4bd7: $77
	sub  a                                           ; $4bd8: $97
	ld   a, c                                        ; $4bd9: $79
	ld   a, c                                        ; $4bda: $79
	add  [hl]                                        ; $4bdb: $86
	and  a                                           ; $4bdc: $a7
	adc  c                                           ; $4bdd: $89
	ld   l, c                                        ; $4bde: $69
	add  a                                           ; $4bdf: $87
	ld   a, c                                        ; $4be0: $79
	and  h                                           ; $4be1: $a4
	or   a                                           ; $4be2: $b7
	ld   a, c                                        ; $4be3: $79
	adc  b                                           ; $4be4: $88
	ld   l, d                                        ; $4be5: $6a
	ld   e, c                                        ; $4be6: $59
	adc  b                                           ; $4be7: $88
	and  h                                           ; $4be8: $a4
	xor  b                                           ; $4be9: $a8
	ld   [hl], a                                     ; $4bea: $77
	sbc  c                                           ; $4beb: $99
	ld   e, c                                        ; $4bec: $59
	ld   a, c                                        ; $4bed: $79
	add  [hl]                                        ; $4bee: $86
	or   e                                           ; $4bef: $b3
	rst  ToBoot                                         ; $4bf0: $c7
	ld   e, d                                        ; $4bf1: $5a
	ld   l, d                                        ; $4bf2: $6a
	ld   e, e                                        ; $4bf3: $5b
	ld   [hl], a                                     ; $4bf4: $77
	and  a                                           ; $4bf5: $a7
	sub  h                                           ; $4bf6: $94
	rst  $10                                         ; $4bf7: $d7
	ld   a, d                                        ; $4bf8: $7a
	ld   e, e                                        ; $4bf9: $5b
	ld   e, e                                        ; $4bfa: $5b
	add  l                                           ; $4bfb: $85
	push bc                                          ; $4bfc: $c5
	adc  d                                           ; $4bfd: $8a
	add  a                                           ; $4bfe: $87
	adc  c                                           ; $4bff: $89
	add  a                                           ; $4c00: $87
	ld   l, e                                        ; $4c01: $6b
	ld   e, b                                        ; $4c02: $58
	and  [hl]                                        ; $4c03: $a6
	adc  c                                           ; $4c04: $89
	sub  a                                           ; $4c05: $97
	sub  a                                           ; $4c06: $97

jr_0bc_4c07:
	add  a                                           ; $4c07: $87
	adc  b                                           ; $4c08: $88
	ld   a, b                                        ; $4c09: $78
	ld   a, c                                        ; $4c0a: $79
	adc  b                                           ; $4c0b: $88
	ld   l, d                                        ; $4c0c: $6a
	adc  b                                           ; $4c0d: $88
	adc  b                                           ; $4c0e: $88
	and  [hl]                                        ; $4c0f: $a6
	and  a                                           ; $4c10: $a7

Jump_0bc_4c11:
	adc  c                                           ; $4c11: $89
	adc  b                                           ; $4c12: $88
	add  a                                           ; $4c13: $87
	adc  d                                           ; $4c14: $8a
	ld   e, c                                        ; $4c15: $59
	and  l                                           ; $4c16: $a5
	adc  b                                           ; $4c17: $88
	add  l                                           ; $4c18: $85
	xor  d                                           ; $4c19: $aa
	ld   e, c                                        ; $4c1a: $59
	sbc  b                                           ; $4c1b: $98
	ld   e, d                                        ; $4c1c: $5a
	add  l                                           ; $4c1d: $85
	and  [hl]                                        ; $4c1e: $a6
	and  [hl]                                        ; $4c1f: $a6
	sbc  d                                           ; $4c20: $9a
	dec  sp                                          ; $4c21: $3b
	sub  [hl]                                        ; $4c22: $96
	add  a                                           ; $4c23: $87
	jp   Jump_0bc_4a9a                               ; $4c24: $c3 $9a $4a


	sub  a                                           ; $4c27: $97
	adc  c                                           ; $4c28: $89
	ld   a, d                                        ; $4c29: $7a
	ld   e, c                                        ; $4c2a: $59
	adc  b                                           ; $4c2b: $88
	sub  l                                           ; $4c2c: $95
	call nc, Call_0bc_6cb6                           ; $4c2d: $d4 $b6 $6c
	ld   e, c                                        ; $4c30: $59
	ld   e, c                                        ; $4c31: $59
	sub  a                                           ; $4c32: $97
	ld   l, c                                        ; $4c33: $69
	sub  a                                           ; $4c34: $97
	add  a                                           ; $4c35: $87
	ld   a, d                                        ; $4c36: $7a
	or   e                                           ; $4c37: $b3
	cp   b                                           ; $4c38: $b8
	ld   a, c                                        ; $4c39: $79
	adc  b                                           ; $4c3a: $88
	ld   e, h                                        ; $4c3b: $5c
	ld   h, [hl]                                     ; $4c3c: $66
	adc  c                                           ; $4c3d: $89
	and  h                                           ; $4c3e: $a4
	xor  d                                           ; $4c3f: $aa
	ld   c, d                                        ; $4c40: $4a
	adc  b                                           ; $4c41: $88
	add  [hl]                                        ; $4c42: $86
	or   h                                           ; $4c43: $b4
	add  a                                           ; $4c44: $87
	ld   a, c                                        ; $4c45: $79
	ld   l, [hl]                                     ; $4c46: $6e
	add  hl, hl                                      ; $4c47: $29
	or   [hl]                                        ; $4c48: $b6
	or   e                                           ; $4c49: $b3
	add  $7c                                         ; $4c4a: $c6 $7c
	ld   c, c                                        ; $4c4c: $49
	adc  d                                           ; $4c4d: $8a
	ld   h, l                                        ; $4c4e: $65
	xor  b                                           ; $4c4f: $a8
	ld   [hl], l                                     ; $4c50: $75
	sub  $79                                         ; $4c51: $d6 $79
	ld   e, d                                        ; $4c53: $5a
	ld   a, e                                        ; $4c54: $7b
	ld   b, a                                        ; $4c55: $47
	sbc  c                                           ; $4c56: $99
	ld   [hl], l                                     ; $4c57: $75
	push de                                          ; $4c58: $d5
	add  a                                           ; $4c59: $87
	sub  a                                           ; $4c5a: $97
	ld   l, l                                        ; $4c5b: $6d
	jr   z, jr_0bc_4c07                              ; $4c5c: $28 $a9

	ld   h, [hl]                                     ; $4c5e: $66
	jp   Jump_0bc_78b7                               ; $4c5f: $c3 $b7 $78


	ld   a, h                                        ; $4c62: $7c
	dec  sp                                          ; $4c63: $3b
	ld   a, e                                        ; $4c64: $7b
	sub  e                                           ; $4c65: $93
	push hl                                          ; $4c66: $e5
	adc  c                                           ; $4c67: $89
	ld   h, a                                        ; $4c68: $67
	adc  d                                           ; $4c69: $8a
	ld   e, c                                        ; $4c6a: $59
	ld   l, e                                        ; $4c6b: $6b
	ld   e, b                                        ; $4c6c: $58
	and  h                                           ; $4c6d: $a4
	or   [hl]                                        ; $4c6e: $b6
	sub  [hl]                                        ; $4c6f: $96
	xor  c                                           ; $4c70: $a9
	ld   l, b                                        ; $4c71: $68
	ld   e, l                                        ; $4c72: $5d
	ld   c, b                                        ; $4c73: $48
	sub  a                                           ; $4c74: $97
	sub  a                                           ; $4c75: $97
	sub  a                                           ; $4c76: $97
	ld   a, b                                        ; $4c77: $78
	sub  [hl]                                        ; $4c78: $96
	adc  c                                           ; $4c79: $89
	ld   [hl], a                                     ; $4c7a: $77
	sbc  c                                           ; $4c7b: $99

jr_0bc_4c7c:
	ld   l, c                                        ; $4c7c: $69
	ld   l, e                                        ; $4c7d: $6b
	ld   e, b                                        ; $4c7e: $58
	or   l                                           ; $4c7f: $b5
	and  [hl]                                        ; $4c80: $a6
	sbc  b                                           ; $4c81: $98
	ld   e, d                                        ; $4c82: $5a
	ld   [hl], a                                     ; $4c83: $77
	adc  b                                           ; $4c84: $88
	ld   [hl], a                                     ; $4c85: $77
	sbc  c                                           ; $4c86: $99
	halt                                             ; $4c87: $76
	sbc  d                                           ; $4c88: $9a
	ld   l, b                                        ; $4c89: $68
	add  [hl]                                        ; $4c8a: $86
	and  a                                           ; $4c8b: $a7
	sbc  c                                           ; $4c8c: $99
	ld   [hl], a                                     ; $4c8d: $77
	or   a                                           ; $4c8e: $b7
	ld   a, e                                        ; $4c8f: $7b
	ld   l, b                                        ; $4c90: $68
	sbc  b                                           ; $4c91: $98
	ld   c, b                                        ; $4c92: $48
	halt                                             ; $4c93: $76
	ld   d, e                                        ; $4c94: $53
	add  c                                           ; $4c95: $81
	add  [hl]                                        ; $4c96: $86
	ld   b, a                                        ; $4c97: $47
	ld   l, e                                        ; $4c98: $6b
	adc  d                                           ; $4c99: $8a
	cp   e                                           ; $4c9a: $bb
	jp   z, $bedc                                    ; $4c9b: $ca $dc $be

	sbc  d                                           ; $4c9e: $9a
	ret                                              ; $4c9f: $c9


	adc  c                                           ; $4ca0: $89
	add  a                                           ; $4ca1: $87
	ld   h, [hl]                                     ; $4ca2: $66
	ld   h, e                                        ; $4ca3: $63
	ld   d, d                                        ; $4ca4: $52
	ld   [de], a                                     ; $4ca5: $12
	inc  sp                                          ; $4ca6: $33
	inc  hl                                          ; $4ca7: $23
	ld   d, a                                        ; $4ca8: $57
	adc  d                                           ; $4ca9: $8a
	adc  e                                           ; $4caa: $8b
	db   $dd                                         ; $4cab: $dd
	xor  $ed                                         ; $4cac: $ee $ed
	db   $dd                                         ; $4cae: $dd
	xor  d                                           ; $4caf: $aa
	sbc  c                                           ; $4cb0: $99
	adc  b                                           ; $4cb1: $88
	sbc  c                                           ; $4cb2: $99
	sbc  c                                           ; $4cb3: $99
	adc  c                                           ; $4cb4: $89
	add  [hl]                                        ; $4cb5: $86
	ld   sp, $1111                                   ; $4cb6: $31 $11 $11
	ld   de, $8a27                                   ; $4cb9: $11 $27 $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cbc: $cf
	rst  $38                                         ; $4cbd: $ff
	rst  $38                                         ; $4cbe: $ff
	rst  $38                                         ; $4cbf: $ff
	db   $fc                                         ; $4cc0: $fc
	sbc  c                                           ; $4cc1: $99
	ld   d, l                                        ; $4cc2: $55
	inc  [hl]                                        ; $4cc3: $34
	ld   d, [hl]                                     ; $4cc4: $56
	adc  c                                           ; $4cc5: $89
	cp   d                                           ; $4cc6: $ba
	add  [hl]                                        ; $4cc7: $86
	ld   d, c                                        ; $4cc8: $51
	ld   de, $1121                                   ; $4cc9: $11 $21 $11
	jr   c, jr_0bc_4c7c                              ; $4ccc: $38 $ae

	rst  $38                                         ; $4cce: $ff
	rst  $38                                         ; $4ccf: $ff
	rst  $38                                         ; $4cd0: $ff
	cp   $c9                                         ; $4cd1: $fe $c9
	ld   d, e                                        ; $4cd3: $53
	inc  de                                          ; $4cd4: $13
	inc  [hl]                                        ; $4cd5: $34
	adc  l                                           ; $4cd6: $8d
	db   $ed                                         ; $4cd7: $ed
	jp   c, $11a6                                    ; $4cd8: $da $a6 $11

jr_0bc_4cdb:
	ld   de, $1111                                   ; $4cdb: $11 $11 $11
	cp   [hl]                                        ; $4cde: $be
	rst  $38                                         ; $4cdf: $ff
	rst  $38                                         ; $4ce0: $ff
	rst  $38                                         ; $4ce1: $ff
	cp   $9a                                         ; $4ce2: $fe $9a
	ld   b, c                                        ; $4ce4: $41
	ld   de, $ab46                                   ; $4ce5: $11 $46 $ab
	rst  $38                                         ; $4ce8: $ff
	cp   $97                                         ; $4ce9: $fe $97
	ld   b, c                                        ; $4ceb: $41
	ld   de, $1112                                   ; $4cec: $11 $12 $11
	ld   c, a                                        ; $4cef: $4f
	rst  $38                                         ; $4cf0: $ff
	rst  $38                                         ; $4cf1: $ff
	rst  $38                                         ; $4cf2: $ff
	ld   hl, sp+$41                                  ; $4cf3: $f8 $41
	ld   de, $1b11                                   ; $4cf5: $11 $11 $1b
	rst  $38                                         ; $4cf8: $ff
	rst  $38                                         ; $4cf9: $ff
	rst  $38                                         ; $4cfa: $ff
	add  $41                                         ; $4cfb: $c6 $41
	ld   de, $ef11                                   ; $4cfd: $11 $11 $ef
	rla                                              ; $4d00: $17
	rst  $38                                         ; $4d01: $ff
	rst  $38                                         ; $4d02: $ff
	sub  $ff                                         ; $4d03: $d6 $ff
	ld   bc, $1811                                   ; $4d05: $01 $11 $18
	dec  a                                           ; $4d08: $3d
	rst  $38                                         ; $4d09: $ff
	db   $fd                                         ; $4d0a: $fd
	rst  $38                                         ; $4d0b: $ff
	rst  $30                                         ; $4d0c: $f7
	ld   de, $1111                                   ; $4d0d: $11 $11 $11
	ld   de, $2bff                                   ; $4d10: $11 $ff $2b
	rst  $38                                         ; $4d13: $ff
	rst  $38                                         ; $4d14: $ff
	ld   de, $11ba                                   ; $4d15: $11 $ba $11
	dec  hl                                          ; $4d18: $2b
	rst  $38                                         ; $4d19: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d1a: $cf
	rst  $38                                         ; $4d1b: $ff
	jp   $b37b                                       ; $4d1c: $c3 $7b $b3


	ld   de, $1115                                   ; $4d1f: $11 $15 $11
	ld   a, [de]                                     ; $4d22: $1a
	ei                                               ; $4d23: $fb
	inc  h                                           ; $4d24: $24
	rst  JumpTable                                         ; $4d25: $df
	db   $fd                                         ; $4d26: $fd
	ld   de, $11ff                                   ; $4d27: $11 $ff $11
	sbc  [hl]                                        ; $4d2a: $9e
	rst  $38                                         ; $4d2b: $ff
	ld   h, [hl]                                     ; $4d2c: $66
	rst  $28                                         ; $4d2d: $ef
	ld   [hl], c                                     ; $4d2e: $71
	add  hl, de                                      ; $4d2f: $19
	db   $dd                                         ; $4d30: $dd
	ld   b, d                                        ; $4d31: $42
	ld   a, l                                        ; $4d32: $7d
	ld   [hl], c                                     ; $4d33: $71
	ld   de, $f31f                                   ; $4d34: $11 $1f $f3
	ld   e, l                                        ; $4d37: $5d
	rst  $38                                         ; $4d38: $ff
	pop  af                                          ; $4d39: $f1
	add  hl, de                                      ; $4d3a: $19
	or   c                                           ; $4d3b: $b1
	ld   de, $ff3f                                   ; $4d3c: $11 $3f $ff
	rst  $38                                         ; $4d3f: $ff
	db   $fd                                         ; $4d40: $fd
	ld   b, c                                        ; $4d41: $41
	jr   jr_0bc_4cdb                                 ; $4d42: $18 $97

	inc  de                                          ; $4d44: $13
	ret                                              ; $4d45: $c9


	ld   de, rAUD1LEN                                   ; $4d46: $11 $11 $ff
	ld   de, $ff3f                                   ; $4d49: $11 $3f $ff
	sub  c                                           ; $4d4c: $91
	ld   a, a                                        ; $4d4d: $7f
	pop  bc                                          ; $4d4e: $c1
	inc  de                                          ; $4d4f: $13
	xor  a                                           ; $4d50: $af
	cp   $9f                                         ; $4d51: $fe $9f
	ld   hl, sp+$31                                  ; $4d53: $f8 $31
	ld   e, d                                        ; $4d55: $5a
	sbc  c                                           ; $4d56: $99
	ld   l, e                                        ; $4d57: $6b
	push de                                          ; $4d58: $d5
	ld   de, $7f11                                   ; $4d59: $11 $11 $7f
	ld   d, d                                        ; $4d5c: $52
	ld   l, a                                        ; $4d5d: $6f
	rst  $38                                         ; $4d5e: $ff
	pop  af                                          ; $4d5f: $f1
	dec  e                                           ; $4d60: $1d
	or   c                                           ; $4d61: $b1
	ld   de, $ff4f                                   ; $4d62: $11 $4f $ff
	cp   d                                           ; $4d65: $ba
	cp   $91                                         ; $4d66: $fe $91
	dec  d                                           ; $4d68: $15
	sbc  d                                           ; $4d69: $9a
	add  a                                           ; $4d6a: $87
	cp   c                                           ; $4d6b: $b9
	ld   sp, $1f11                                   ; $4d6c: $31 $11 $1f
	or   $b7                                         ; $4d6f: $f6 $b7
	rst  $38                                         ; $4d71: $ff
	ld   sp, hl                                      ; $4d72: $f9
	ld   de, $1136                                   ; $4d73: $11 $36 $11
	jr   @+$01                                       ; $4d76: $18 $ff

	ld   hl, sp-$11                                  ; $4d78: $f8 $ef
	and  [hl]                                        ; $4d7a: $a6
	ld   de, $c93a                                   ; $4d7b: $11 $3a $c9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d7e: $cf
	or   [hl]                                        ; $4d7f: $b6
	ld   de, $7f11                                   ; $4d80: $11 $11 $7f
	sbc  c                                           ; $4d83: $99
	adc  a                                           ; $4d84: $8f
	rst  $38                                         ; $4d85: $ff
	pop  af                                          ; $4d86: $f1
	inc  d                                           ; $4d87: $14
	ld   h, c                                        ; $4d88: $61
	ld   de, $ff2f                                   ; $4d89: $11 $2f $ff
	set  7, h                                        ; $4d8c: $cb $fc
	sub  c                                           ; $4d8e: $91
	ld   [de], a                                     ; $4d8f: $12
	xor  d                                           ; $4d90: $aa
	xor  e                                           ; $4d91: $ab
	cp   $93                                         ; $4d92: $fe $93
	ld   de, rAUD1LEN                                   ; $4d94: $11 $11 $ff
	ld   l, l                                        ; $4d97: $6d
	xor  a                                           ; $4d98: $af
	rst  $38                                         ; $4d99: $ff
	ld   b, c                                        ; $4d9a: $41
	inc  sp                                          ; $4d9b: $33
	ld   sp, $cf11                                   ; $4d9c: $31 $11 $cf
	rst  $38                                         ; $4d9f: $ff
	sbc  a                                           ; $4da0: $9f
	db   $eb                                         ; $4da1: $eb
	ld   d, c                                        ; $4da2: $51
	inc  d                                           ; $4da3: $14
	xor  d                                           ; $4da4: $aa
	call $b2fd                                       ; $4da5: $cd $fd $b2
	ld   de, $9f11                                   ; $4da8: $11 $11 $9f
	ld   a, a                                        ; $4dab: $7f
	sbc  a                                           ; $4dac: $9f
	rst  $38                                         ; $4dad: $ff
	pop  hl                                          ; $4dae: $e1
	ld   [de], a                                     ; $4daf: $12
	ld   sp, $5f11                                   ; $4db0: $31 $11 $5f
	rst  $38                                         ; $4db3: $ff
	xor  a                                           ; $4db4: $af
	db   $fc                                         ; $4db5: $fc
	sub  c                                           ; $4db6: $91
	ld   [de], a                                     ; $4db7: $12
	xor  c                                           ; $4db8: $a9
	xor  l                                           ; $4db9: $ad
	cp   $e8                                         ; $4dba: $fe $e8
	ld   de, $1711                                   ; $4dbc: $11 $11 $17
	ld   sp, hl                                      ; $4dbf: $f9
	ld   sp, hl                                      ; $4dc0: $f9
	rst  $38                                         ; $4dc1: $ff
	rst  $38                                         ; $4dc2: $ff
	ld   de, $1123                                   ; $4dc3: $11 $23 $11
	ld   de, $fbff                                   ; $4dc6: $11 $ff $fb
	rst  $38                                         ; $4dc9: $ff
	call c, $1711                                    ; $4dca: $dc $11 $17
	ld   d, l                                        ; $4dcd: $55
	cp   a                                           ; $4dce: $bf
	rst  $38                                         ; $4dcf: $ff
	push bc                                          ; $4dd0: $c5
	ld   sp, $1211                                   ; $4dd1: $31 $11 $12
	ld   hl, sp-$26                                  ; $4dd4: $f8 $da
	rst  $38                                         ; $4dd6: $ff
	rst  $38                                         ; $4dd7: $ff
	ld   de, $1151                                   ; $4dd8: $11 $51 $11
	ld   de, $fcff                                   ; $4ddb: $11 $ff $fc
	rst  $38                                         ; $4dde: $ff
	db   $fd                                         ; $4ddf: $fd
	ld   de, $2217                                   ; $4de0: $11 $17 $22
	ld   a, a                                        ; $4de3: $7f
	rst  $38                                         ; $4de4: $ff
	push hl                                          ; $4de5: $e5
	ld   d, [hl]                                     ; $4de6: $56
	ld   de, rAUD1LEN                                   ; $4de7: $11 $11 $ff
	ld   e, e                                        ; $4dea: $5b
	ld   a, a                                        ; $4deb: $7f
	rst  $38                                         ; $4dec: $ff
	ld   hl, $1194                                   ; $4ded: $21 $94 $11
	ld   de, $fedf                                   ; $4df0: $11 $df $fe
	rst  $38                                         ; $4df3: $ff
	rst  $38                                         ; $4df4: $ff
	ld   d, c                                        ; $4df5: $51
	ld   [hl], $11                                   ; $4df6: $36 $11
	ld   a, [de]                                     ; $4df8: $1a
	rst  $38                                         ; $4df9: $ff
	ld   hl, sp-$54                                  ; $4dfa: $f8 $ac
	ld   h, c                                        ; $4dfc: $61
	ld   de, $15bf                                   ; $4dfd: $11 $bf $15
	ccf                                              ; $4e00: $3f
	rst  $38                                         ; $4e01: $ff
	pop  bc                                          ; $4e02: $c1
	db   $fd                                         ; $4e03: $fd
	ld   b, c                                        ; $4e04: $41
	ld   de, $876f                                   ; $4e05: $11 $6f $87
	rst  $28                                         ; $4e08: $ef
	rst  $38                                         ; $4e09: $ff
	and  a                                           ; $4e0a: $a7
	cp   d                                           ; $4e0b: $ba
	ld   sp, $dc16                                   ; $4e0c: $31 $16 $dc
	set  3, [hl]                                     ; $4e0f: $cb $de
	sub  c                                           ; $4e11: $91
	ld   de, $f11c                                   ; $4e12: $11 $1c $f1
	ld   c, e                                        ; $4e15: $4b
	rst  $38                                         ; $4e16: $ff
	ld   a, [$f11f]                                  ; $4e17: $fa $1f $f1
	ld   de, $c327                                   ; $4e1a: $11 $27 $c3
	ccf                                              ; $4e1d: $3f
	cp   $cb                                         ; $4e1e: $fe $cb
	xor  l                                           ; $4e20: $ad
	or   e                                           ; $4e21: $b3
	add  hl, de                                      ; $4e22: $19
	db   $db                                         ; $4e23: $db
	adc  h                                           ; $4e24: $8c
	cp   [hl]                                        ; $4e25: $be
	or   h                                           ; $4e26: $b4
	ld   de, $1a11                                   ; $4e27: $11 $11 $1a
	pop  af                                          ; $4e2a: $f1
	jp   hl                                          ; $4e2b: $e9


	rst  $38                                         ; $4e2c: $ff
	ld   sp, hl                                      ; $4e2d: $f9
	rra                                              ; $4e2e: $1f
	and  c                                           ; $4e2f: $a1
	ld   de, $f539                                   ; $4e30: $11 $39 $f5
	adc  a                                           ; $4e33: $8f
	db   $fc                                         ; $4e34: $fc
	ret                                              ; $4e35: $c9


	sbc  h                                           ; $4e36: $9c
	and  d                                           ; $4e37: $a2
	ld   a, [hl-]                                    ; $4e38: $3a
	jp   z, $bfaa                                    ; $4e39: $ca $aa $bf

	add  d                                           ; $4e3c: $82
	ld   [hl+], a                                    ; $4e3d: $22
	ld   de, $e11f                                   ; $4e3e: $11 $1f $e1
	call nz, $f5ff                                   ; $4e41: $c4 $ff $f5
	ld   c, a                                        ; $4e44: $4f
	add  e                                           ; $4e45: $83
	ld   [de], a                                     ; $4e46: $12
	ld   e, e                                        ; $4e47: $5b
	sub  c                                           ; $4e48: $91
	adc  a                                           ; $4e49: $8f
	ld   a, [$dec9]                                  ; $4e4a: $fa $c9 $de
	sub  c                                           ; $4e4d: $91
	ld   a, e                                        ; $4e4e: $7b
	sub  a                                           ; $4e4f: $97
	sbc  c                                           ; $4e50: $99
	cp   l                                           ; $4e51: $bd
	ld   [hl], h                                     ; $4e52: $74
	ld   b, e                                        ; $4e53: $43
	ld   de, $911d                                   ; $4e54: $11 $1d $91
	add  [hl]                                        ; $4e57: $86
	rst  $38                                         ; $4e58: $ff
	rst  $20                                         ; $4e59: $e7
	xor  a                                           ; $4e5a: $af
	and  l                                           ; $4e5b: $a5
	ld   [hl], $98                                   ; $4e5c: $36 $98
	ld   sp, $b79f                                   ; $4e5e: $31 $9f $b7
	xor  h                                           ; $4e61: $ac
	cp   $96                                         ; $4e62: $fe $96
	db   $dd                                         ; $4e64: $dd
	add  l                                           ; $4e65: $85
	adc  c                                           ; $4e66: $89
	cp   c                                           ; $4e67: $b9
	ld   d, l                                        ; $4e68: $55
	halt                                             ; $4e69: $76
	ld   de, $d111                                   ; $4e6a: $11 $11 $d1
	rla                                              ; $4e6d: $17
	sbc  a                                           ; $4e6e: $9f
	res  5, a                                        ; $4e6f: $cb $af
	ld   sp, hl                                      ; $4e71: $f9
	adc  d                                           ; $4e72: $8a
	cp   b                                           ; $4e73: $b8
	ld   h, d                                        ; $4e74: $62
	dec  hl                                          ; $4e75: $2b
	sub  h                                           ; $4e76: $94
	ld   l, e                                        ; $4e77: $6b
	call $cfc9                                       ; $4e78: $cd $c9 $cf
	or   a                                           ; $4e7b: $b7
	adc  c                                           ; $4e7c: $89
	sbc  b                                           ; $4e7d: $98
	halt                                             ; $4e7e: $76
	ld   a, c                                        ; $4e7f: $79
	ld   d, h                                        ; $4e80: $54
	ld   hl, $4115                                   ; $4e81: $21 $15 $41
	ld   b, h                                        ; $4e84: $44
	ld   a, b                                        ; $4e85: $78
	sbc  d                                           ; $4e86: $9a
	cp   a                                           ; $4e87: $bf
	db   $ec                                         ; $4e88: $ec
	call z, $85b8                                    ; $4e89: $cc $b8 $85
	ld   a, c                                        ; $4e8c: $79
	ld   h, [hl]                                     ; $4e8d: $66
	ld   a, c                                        ; $4e8e: $79
	adc  c                                           ; $4e8f: $89
	sbc  c                                           ; $4e90: $99
	xor  e                                           ; $4e91: $ab
	sbc  c                                           ; $4e92: $99
	xor  d                                           ; $4e93: $aa
	cp   e                                           ; $4e94: $bb
	xor  d                                           ; $4e95: $aa
	sbc  c                                           ; $4e96: $99
	ld   h, h                                        ; $4e97: $64
	ld   hl, $1122                                   ; $4e98: $21 $22 $11
	inc  h                                           ; $4e9b: $24
	ld   d, [hl]                                     ; $4e9c: $56
	ld   a, c                                        ; $4e9d: $79
	set  1, h                                        ; $4e9e: $cb $cc
	call c, $aaba                                    ; $4ea0: $dc $ba $aa
	cp   d                                           ; $4ea3: $ba
	sbc  b                                           ; $4ea4: $98
	sbc  c                                           ; $4ea5: $99
	add  a                                           ; $4ea6: $87
	ld   a, b                                        ; $4ea7: $78
	adc  b                                           ; $4ea8: $88
	sbc  c                                           ; $4ea9: $99
	xor  e                                           ; $4eaa: $ab
	xor  d                                           ; $4eab: $aa
	cp   e                                           ; $4eac: $bb
	xor  c                                           ; $4ead: $a9
	add  a                                           ; $4eae: $87
	ld   h, h                                        ; $4eaf: $64
	ld   [hl-], a                                    ; $4eb0: $32
	ld   de, $2221                                   ; $4eb1: $11 $21 $22
	ld   b, l                                        ; $4eb4: $45
	ld   a, b                                        ; $4eb5: $78
	adc  d                                           ; $4eb6: $8a
	call $dddd                                       ; $4eb7: $cd $dd $dd
	call c, $99ba                                    ; $4eba: $dc $ba $99
	ld   [hl], a                                     ; $4ebd: $77
	ld   a, c                                        ; $4ebe: $79
	adc  c                                           ; $4ebf: $89
	sbc  d                                           ; $4ec0: $9a
	xor  e                                           ; $4ec1: $ab
	xor  d                                           ; $4ec2: $aa
	xor  d                                           ; $4ec3: $aa
	sbc  b                                           ; $4ec4: $98
	halt                                             ; $4ec5: $76
	ld   b, e                                        ; $4ec6: $43
	ld   hl, $1111                                   ; $4ec7: $21 $11 $11
	inc  hl                                          ; $4eca: $23
	ld   b, [hl]                                     ; $4ecb: $46
	sbc  c                                           ; $4ecc: $99
	cp   h                                           ; $4ecd: $bc
	sbc  $ed                                         ; $4ece: $de $ed
	call $aabb                                       ; $4ed0: $cd $bb $aa
	sbc  c                                           ; $4ed3: $99
	adc  b                                           ; $4ed4: $88
	sbc  c                                           ; $4ed5: $99
	adc  b                                           ; $4ed6: $88
	sbc  b                                           ; $4ed7: $98
	adc  c                                           ; $4ed8: $89
	sbc  d                                           ; $4ed9: $9a
	xor  c                                           ; $4eda: $a9
	sbc  c                                           ; $4edb: $99
	sub  a                                           ; $4edc: $97
	ld   h, h                                        ; $4edd: $64
	ld   [hl-], a                                    ; $4ede: $32
	ld   hl, $1211                                   ; $4edf: $21 $11 $12
	inc  [hl]                                        ; $4ee2: $34
	ld   l, b                                        ; $4ee3: $68
	xor  e                                           ; $4ee4: $ab
	db   $dd                                         ; $4ee5: $dd
	db   $dd                                         ; $4ee6: $dd
	db   $ed                                         ; $4ee7: $ed
	db   $dd                                         ; $4ee8: $dd
	cp   d                                           ; $4ee9: $ba
	sbc  c                                           ; $4eea: $99
	sbc  b                                           ; $4eeb: $98
	adc  b                                           ; $4eec: $88
	sub  a                                           ; $4eed: $97
	adc  b                                           ; $4eee: $88
	sbc  c                                           ; $4eef: $99
	adc  c                                           ; $4ef0: $89
	xor  e                                           ; $4ef1: $ab
	xor  d                                           ; $4ef2: $aa
	sbc  b                                           ; $4ef3: $98
	add  [hl]                                        ; $4ef4: $86
	ld   d, e                                        ; $4ef5: $53
	ld   [hl+], a                                    ; $4ef6: $22
	ld   de, $2211                                   ; $4ef7: $11 $11 $22
	ld   b, [hl]                                     ; $4efa: $46
	adc  d                                           ; $4efb: $8a
	xor  l                                           ; $4efc: $ad
	db   $dd                                         ; $4efd: $dd
	db   $fd                                         ; $4efe: $fd
	call $aadc                                       ; $4eff: $cd $dc $aa
	xor  c                                           ; $4f02: $a9
	sbc  b                                           ; $4f03: $98
	ld   a, b                                        ; $4f04: $78
	sub  a                                           ; $4f05: $97
	ld   a, b                                        ; $4f06: $78
	adc  c                                           ; $4f07: $89
	sbc  d                                           ; $4f08: $9a
	xor  e                                           ; $4f09: $ab
	xor  d                                           ; $4f0a: $aa
	sbc  c                                           ; $4f0b: $99
	halt                                             ; $4f0c: $76
	ld   d, e                                        ; $4f0d: $53
	ld   de, $1111                                   ; $4f0e: $11 $11 $11
	inc  hl                                          ; $4f11: $23
	ld   d, [hl]                                     ; $4f12: $56
	adc  e                                           ; $4f13: $8b
	call $fdde                                       ; $4f14: $cd $de $fd
	db   $dd                                         ; $4f17: $dd
	call c, $9aba                                    ; $4f18: $dc $ba $9a
	ld   [hl], a                                     ; $4f1b: $77
	sbc  c                                           ; $4f1c: $99
	add  a                                           ; $4f1d: $87
	adc  c                                           ; $4f1e: $89
	sbc  d                                           ; $4f1f: $9a
	sbc  d                                           ; $4f20: $9a
	xor  e                                           ; $4f21: $ab
	xor  d                                           ; $4f22: $aa
	and  a                                           ; $4f23: $a7
	halt                                             ; $4f24: $76
	ld   d, c                                        ; $4f25: $51
	ld   de, $2111                                   ; $4f26: $11 $11 $21
	inc  h                                           ; $4f29: $24
	ld   b, [hl]                                     ; $4f2a: $46
	ld   a, e                                        ; $4f2b: $7b
	call $fdcd                                       ; $4f2c: $cd $cd $fd
	call c, $9acc                                    ; $4f2f: $dc $cc $9a
	sbc  c                                           ; $4f32: $99
	add  a                                           ; $4f33: $87
	xor  c                                           ; $4f34: $a9
	sbc  b                                           ; $4f35: $98
	sbc  d                                           ; $4f36: $9a
	adc  c                                           ; $4f37: $89
	xor  e                                           ; $4f38: $ab
	xor  c                                           ; $4f39: $a9
	cp   d                                           ; $4f3a: $ba
	xor  b                                           ; $4f3b: $a8
	ld   [hl], a                                     ; $4f3c: $77
	ld   d, e                                        ; $4f3d: $53
	ld   de, $2111                                   ; $4f3e: $11 $11 $21
	ld   d, $36                                      ; $4f41: $16 $36
	sbc  b                                           ; $4f43: $98
	db   $dd                                         ; $4f44: $dd
	db   $eb                                         ; $4f45: $eb
	rst  $38                                         ; $4f46: $ff
	cp   [hl]                                        ; $4f47: $be
	cp   l                                           ; $4f48: $bd
	rst  ToBoot                                         ; $4f49: $c7
	cp   c                                           ; $4f4a: $b9
	sub  [hl]                                        ; $4f4b: $96
	sbc  d                                           ; $4f4c: $9a
	ld   a, b                                        ; $4f4d: $78
	ld   a, d                                        ; $4f4e: $7a
	sub  a                                           ; $4f4f: $97
	cp   e                                           ; $4f50: $bb
	cp   e                                           ; $4f51: $bb
	xor  h                                           ; $4f52: $ac
	sbc  b                                           ; $4f53: $98
	ld   [hl], a                                     ; $4f54: $77
	ld   d, d                                        ; $4f55: $52
	ld   de, $1611                                   ; $4f56: $11 $11 $16
	ld   de, $b661                                   ; $4f59: $11 $61 $b6
	xor  a                                           ; $4f5c: $af
	call $dcdf                                       ; $4f5d: $cd $df $dc
	db   $ec                                         ; $4f60: $ec
	rst  $30                                         ; $4f61: $f7
	sbc  e                                           ; $4f62: $9b
	ld   h, a                                        ; $4f63: $67
	ld   l, e                                        ; $4f64: $6b
	add  a                                           ; $4f65: $87
	sbc  b                                           ; $4f66: $98
	or   a                                           ; $4f67: $b7
	xor  h                                           ; $4f68: $ac
	xor  e                                           ; $4f69: $ab
	sbc  e                                           ; $4f6a: $9b
	cp   b                                           ; $4f6b: $b8
	sub  a                                           ; $4f6c: $97
	ld   h, e                                        ; $4f6d: $63
	ld   hl, $1211                                   ; $4f6e: $21 $11 $12
	ld   sp, $4b83                                   ; $4f71: $31 $83 $4b
	ld   c, a                                        ; $4f74: $4f
	db   $fc                                         ; $4f75: $fc
	rst  $38                                         ; $4f76: $ff
	ld   a, [$ecfd]                                  ; $4f77: $fa $fd $ec
	ld   e, l                                        ; $4f7a: $5d
	sub  l                                           ; $4f7b: $95
	adc  b                                           ; $4f7c: $88
	or   a                                           ; $4f7d: $b7
	ld   a, d                                        ; $4f7e: $7a
	xor  c                                           ; $4f7f: $a9
	sbc  e                                           ; $4f80: $9b
	xor  d                                           ; $4f81: $aa
	cp   d                                           ; $4f82: $ba
	cp   c                                           ; $4f83: $b9
	adc  c                                           ; $4f84: $89
	ld   d, h                                        ; $4f85: $54
	ld   sp, $1111                                   ; $4f86: $31 $11 $11
	add  c                                           ; $4f89: $81
	dec  de                                          ; $4f8a: $1b
	inc  e                                           ; $4f8b: $1c
	ld   a, b                                        ; $4f8c: $78
	ld   a, [$fdff]                                  ; $4f8d: $fa $ff $fd
	cp   a                                           ; $4f90: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f91: $cf
	ld   a, c                                        ; $4f92: $79
	call nc, $9988                                   ; $4f93: $d4 $88 $99
	ld   l, c                                        ; $4f96: $69
	xor  b                                           ; $4f97: $a8
	adc  e                                           ; $4f98: $8b
	cp   c                                           ; $4f99: $b9
	xor  e                                           ; $4f9a: $ab
	sbc  e                                           ; $4f9b: $9b
	ld   a, b                                        ; $4f9c: $78
	ld   [hl], h                                     ; $4f9d: $74
	ld   b, c                                        ; $4f9e: $41
	ld   de, $2511                                   ; $4f9f: $11 $11 $25
	add  hl, de                                      ; $4fa2: $19
	ld   b, d                                        ; $4fa3: $42
	di                                               ; $4fa4: $f3
	rst  $38                                         ; $4fa5: $ff
	sbc  a                                           ; $4fa6: $9f
	rst  $38                                         ; $4fa7: $ff
	cp   l                                           ; $4fa8: $bd
	db   $ec                                         ; $4fa9: $ec
	add  $c9                                         ; $4faa: $c6 $c9
	ld   c, c                                        ; $4fac: $49
	adc  c                                           ; $4fad: $89
	ld   [hl], a                                     ; $4fae: $77
	sbc  c                                           ; $4faf: $99
	ld   a, c                                        ; $4fb0: $79
	cp   d                                           ; $4fb1: $ba
	sbc  h                                           ; $4fb2: $9c
	xor  d                                           ; $4fb3: $aa
	sbc  b                                           ; $4fb4: $98
	sub  [hl]                                        ; $4fb5: $96
	ld   d, h                                        ; $4fb6: $54
	ld   bc, $1511                                   ; $4fb7: $01 $11 $15
	ld   de, $7cc1                                   ; $4fba: $11 $c1 $7c
	ld   c, a                                        ; $4fbd: $4f
	call c, $fbff                                    ; $4fbe: $dc $ff $fb
	db   $fd                                         ; $4fc1: $fd
	jp   z, Jump_0bc_757d                            ; $4fc2: $ca $7d $75

	sbc  b                                           ; $4fc5: $98
	add  a                                           ; $4fc6: $87
	ld   a, d                                        ; $4fc7: $7a
	adc  b                                           ; $4fc8: $88
	xor  e                                           ; $4fc9: $ab
	cp   c                                           ; $4fca: $b9
	res  5, d                                        ; $4fcb: $cb $aa
	adc  b                                           ; $4fcd: $88
	ld   h, h                                        ; $4fce: $64
	ld   sp, $1111                                   ; $4fcf: $31 $11 $11
	ld   [hl], c                                     ; $4fd2: $71
	ld   e, b                                        ; $4fd3: $58
	rra                                              ; $4fd4: $1f
	ld   e, h                                        ; $4fd5: $5c
	ld   hl, sp-$01                                  ; $4fd6: $f8 $ff
	db   $fc                                         ; $4fd8: $fc
	cp   a                                           ; $4fd9: $bf
	cp   h                                           ; $4fda: $bc
	adc  d                                           ; $4fdb: $8a
	or   h                                           ; $4fdc: $b4
	adc  b                                           ; $4fdd: $88
	add  a                                           ; $4fde: $87
	ld   a, c                                        ; $4fdf: $79
	add  a                                           ; $4fe0: $87
	sbc  e                                           ; $4fe1: $9b
	cp   c                                           ; $4fe2: $b9
	cp   e                                           ; $4fe3: $bb
	sbc  d                                           ; $4fe4: $9a
	sbc  b                                           ; $4fe5: $98
	ld   [hl], l                                     ; $4fe6: $75
	ld   d, d                                        ; $4fe7: $52
	ld   de, $5111                                   ; $4fe8: $11 $11 $51
	inc  e                                           ; $4feb: $1c
	ld   d, $c3                                      ; $4fec: $16 $c3
	db   $fc                                         ; $4fee: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fef: $cf
	rst  $28                                         ; $4ff0: $ef
	xor  a                                           ; $4ff1: $af
	db   $db                                         ; $4ff2: $db
	add  $b7                                         ; $4ff3: $c6 $b7
	ld   e, b                                        ; $4ff5: $58
	adc  b                                           ; $4ff6: $88
	ld   l, c                                        ; $4ff7: $69
	sbc  b                                           ; $4ff8: $98
	adc  c                                           ; $4ff9: $89
	xor  d                                           ; $4ffa: $aa
	sbc  e                                           ; $4ffb: $9b
	cp   c                                           ; $4ffc: $b9
	sbc  b                                           ; $4ffd: $98
	sub  l                                           ; $4ffe: $95
	ld   d, e                                        ; $4fff: $53
	ld   de, $1721                                   ; $5000: $11 $21 $17
	dec  d                                           ; $5003: $15
	ld   [hl], c                                     ; $5004: $71
	db   $e4                                         ; $5005: $e4
	rst  JumpTable                                         ; $5006: $df
	sbc  a                                           ; $5007: $9f
	rst  $28                                         ; $5008: $ef
	set  7, c                                        ; $5009: $cb $f9
	reti                                             ; $500b: $d9


	xor  e                                           ; $500c: $ab
	ld   d, a                                        ; $500d: $57
	adc  c                                           ; $500e: $89
	ld   h, [hl]                                     ; $500f: $66
	xor  b                                           ; $5010: $a8
	ld   a, c                                        ; $5011: $79
	cp   e                                           ; $5012: $bb
	sbc  d                                           ; $5013: $9a
	cp   e                                           ; $5014: $bb
	sbc  c                                           ; $5015: $99
	sub  a                                           ; $5016: $97
	ld   b, h                                        ; $5017: $44
	ld   hl, $1411                                   ; $5018: $21 $11 $14
	ld   de, $6882                                   ; $501b: $11 $82 $68
	sbc  [hl]                                        ; $501e: $9e
	cp   [hl]                                        ; $501f: $be
	rst  $28                                         ; $5020: $ef
	ld   a, [$bafe]                                  ; $5021: $fa $fe $ba
	xor  e                                           ; $5024: $ab
	ld   [hl], a                                     ; $5025: $77
	ld   a, c                                        ; $5026: $79
	ld   [hl], l                                     ; $5027: $75
	adc  b                                           ; $5028: $88
	adc  b                                           ; $5029: $88
	xor  e                                           ; $502a: $ab
	sbc  e                                           ; $502b: $9b
	res  5, c                                        ; $502c: $cb $a9
	sbc  c                                           ; $502e: $99
	ld   h, l                                        ; $502f: $65
	ld   b, c                                        ; $5030: $41
	ld   [de], a                                     ; $5031: $12
	ld   de, $1861                                   ; $5032: $11 $61 $18
	add  hl, de                                      ; $5035: $19
	ld   a, e                                        ; $5036: $7b
	ei                                               ; $5037: $fb
	db   $fc                                         ; $5038: $fc
	rst  $38                                         ; $5039: $ff
	sbc  a                                           ; $503a: $9f
	db   $db                                         ; $503b: $db
	sbc  d                                           ; $503c: $9a
	or   [hl]                                        ; $503d: $b6
	ld   [hl], a                                     ; $503e: $77
	sbc  c                                           ; $503f: $99
	ld   e, b                                        ; $5040: $58
	sbc  b                                           ; $5041: $98
	adc  c                                           ; $5042: $89
	jp   z, $bbac                                    ; $5043: $ca $ac $bb

	sbc  d                                           ; $5046: $9a
	and  [hl]                                        ; $5047: $a6
	ld   d, e                                        ; $5048: $53
	ld   hl, $1711                                   ; $5049: $21 $11 $17
	ld   de, $9692                                   ; $504c: $11 $92 $96
	rst  JumpTable                                         ; $504f: $df
	sbc  a                                           ; $5050: $9f
	cp   a                                           ; $5051: $bf
	ld   hl, sp-$04                                  ; $5052: $f8 $fc
	ret  c                                           ; $5054: $d8

	xor  h                                           ; $5055: $ac
	ld   e, b                                        ; $5056: $58
	ld   a, b                                        ; $5057: $78
	sub  l                                           ; $5058: $95
	adc  b                                           ; $5059: $88
	sbc  b                                           ; $505a: $98
	sbc  h                                           ; $505b: $9c
	sbc  c                                           ; $505c: $99
	set  1, c                                        ; $505d: $cb $c9
	xor  c                                           ; $505f: $a9
	ld   h, [hl]                                     ; $5060: $66
	ld   [hl-], a                                    ; $5061: $32
	ld   de, $5111                                   ; $5062: $11 $11 $51
	rla                                              ; $5065: $17
	ld   b, a                                        ; $5066: $47
	ld   l, d                                        ; $5067: $6a
	ld   sp, hl                                      ; $5068: $f9
	cp   $ef                                         ; $5069: $fe $ef
	xor  [hl]                                        ; $506b: $ae
	db   $ed                                         ; $506c: $ed
	and  a                                           ; $506d: $a7
	ret  c                                           ; $506e: $d8

	ld   h, a                                        ; $506f: $67
	adc  c                                           ; $5070: $89
	ld   h, a                                        ; $5071: $67
	sbc  b                                           ; $5072: $98
	sub  a                                           ; $5073: $97
	cp   h                                           ; $5074: $bc
	sbc  e                                           ; $5075: $9b
	xor  h                                           ; $5076: $ac
	sbc  b                                           ; $5077: $98
	cp   b                                           ; $5078: $b8
	ld   h, h                                        ; $5079: $64
	ld   sp, $1112                                   ; $507a: $31 $12 $11
	ld   d, c                                        ; $507d: $51
	dec  d                                           ; $507e: $15
	ld   l, b                                        ; $507f: $68
	ld   e, [hl]                                     ; $5080: $5e
	db   $eb                                         ; $5081: $eb
	db   $fd                                         ; $5082: $fd
	cp   $de                                         ; $5083: $fe $de
	call $b889                                       ; $5085: $cd $89 $b8
	halt                                             ; $5088: $76
	sbc  c                                           ; $5089: $99
	ld   h, a                                        ; $508a: $67
	adc  c                                           ; $508b: $89
	adc  b                                           ; $508c: $88
	xor  d                                           ; $508d: $aa
	cp   d                                           ; $508e: $ba
	sbc  e                                           ; $508f: $9b
	sbc  c                                           ; $5090: $99
	sbc  b                                           ; $5091: $98
	ld   [hl], h                                     ; $5092: $74
	ld   sp, $1112                                   ; $5093: $31 $12 $11
	ld   sp, $6823                                   ; $5096: $31 $23 $68
	ld   l, h                                        ; $5099: $6c
	db   $dd                                         ; $509a: $dd
	db   $fc                                         ; $509b: $fc
	db   $fc                                         ; $509c: $fc
	db   $dd                                         ; $509d: $dd
	xor  l                                           ; $509e: $ad
	xor  d                                           ; $509f: $aa
	adc  c                                           ; $50a0: $89
	sub  [hl]                                        ; $50a1: $96
	adc  c                                           ; $50a2: $89
	ld   a, b                                        ; $50a3: $78
	ld   a, b                                        ; $50a4: $78
	sbc  b                                           ; $50a5: $98
	xor  c                                           ; $50a6: $a9
	cp   d                                           ; $50a7: $ba
	xor  e                                           ; $50a8: $ab
	sbc  d                                           ; $50a9: $9a
	adc  c                                           ; $50aa: $89
	add  [hl]                                        ; $50ab: $86
	ld   d, d                                        ; $50ac: $52
	ld   de, $1101                                   ; $50ad: $11 $01 $11
	inc  hl                                          ; $50b0: $23
	scf                                              ; $50b1: $37
	ld   a, c                                        ; $50b2: $79
	xor  e                                           ; $50b3: $ab
	call c, $cded                                    ; $50b4: $dc $ed $cd
	call z, $b9bb                                    ; $50b7: $cc $bb $b9
	sbc  b                                           ; $50ba: $98
	xor  c                                           ; $50bb: $a9
	adc  c                                           ; $50bc: $89
	adc  c                                           ; $50bd: $89
	sbc  b                                           ; $50be: $98
	sbc  c                                           ; $50bf: $99
	xor  d                                           ; $50c0: $aa
	xor  c                                           ; $50c1: $a9
	sbc  d                                           ; $50c2: $9a
	sbc  b                                           ; $50c3: $98
	add  a                                           ; $50c4: $87
	ld   h, h                                        ; $50c5: $64
	ld   sp, $1111                                   ; $50c6: $31 $11 $11
	ld   [bc], a                                     ; $50c9: $02
	ld   [hl+], a                                    ; $50ca: $22
	ld   d, [hl]                                     ; $50cb: $56
	sbc  c                                           ; $50cc: $99
	cp   h                                           ; $50cd: $bc
	adc  $dd                                         ; $50ce: $ce $dd
	call z, $dcdc                                    ; $50d0: $cc $dc $dc
	cp   d                                           ; $50d3: $ba
	xor  d                                           ; $50d4: $aa
	xor  d                                           ; $50d5: $aa
	sbc  c                                           ; $50d6: $99
	sbc  c                                           ; $50d7: $99
	sbc  c                                           ; $50d8: $99
	adc  c                                           ; $50d9: $89
	sbc  b                                           ; $50da: $98
	sbc  c                                           ; $50db: $99
	adc  c                                           ; $50dc: $89
	sbc  b                                           ; $50dd: $98
	ld   h, [hl]                                     ; $50de: $66
	ld   b, d                                        ; $50df: $42
	ld   de, $1111                                   ; $50e0: $11 $11 $11
	ld   [hl-], a                                    ; $50e3: $32
	ld   [hl], $89                                   ; $50e4: $36 $89
	sbc  e                                           ; $50e6: $9b
	call z, $dcdc                                    ; $50e7: $cc $dc $dc
	db   $ec                                         ; $50ea: $ec
	call $bacb                                       ; $50eb: $cd $cb $ba
	sbc  c                                           ; $50ee: $99
	sbc  b                                           ; $50ef: $98
	sbc  b                                           ; $50f0: $98
	adc  b                                           ; $50f1: $88
	adc  b                                           ; $50f2: $88
	adc  b                                           ; $50f3: $88
	adc  c                                           ; $50f4: $89
	adc  c                                           ; $50f5: $89
	sbc  c                                           ; $50f6: $99
	halt                                             ; $50f7: $76
	ld   d, e                                        ; $50f8: $53
	ld   hl, $1121                                   ; $50f9: $21 $21 $11
	inc  hl                                          ; $50fc: $23
	inc  h                                           ; $50fd: $24
	ld   a, b                                        ; $50fe: $78
	xor  e                                           ; $50ff: $ab
	call z, $ddde                                    ; $5100: $cc $de $dd
	db   $dd                                         ; $5103: $dd
	call c, $abcb                                    ; $5104: $dc $cb $ab
	cp   d                                           ; $5107: $ba
	sbc  c                                           ; $5108: $99
	sbc  b                                           ; $5109: $98
	adc  b                                           ; $510a: $88
	ld   a, b                                        ; $510b: $78
	adc  c                                           ; $510c: $89
	adc  b                                           ; $510d: $88
	adc  c                                           ; $510e: $89
	sbc  b                                           ; $510f: $98
	add  a                                           ; $5110: $87
	ld   h, l                                        ; $5111: $65
	ld   [hl-], a                                    ; $5112: $32
	ld   [de], a                                     ; $5113: $12
	ld   de, $2312                                   ; $5114: $11 $12 $23
	ld   d, a                                        ; $5117: $57
	adc  d                                           ; $5118: $8a
	xor  h                                           ; $5119: $ac

Call_0bc_511a:
	call $dddd                                       ; $511a: $cd $dd $dd
	db   $dd                                         ; $511d: $dd
	call z, $baba                                    ; $511e: $cc $ba $ba
	sbc  c                                           ; $5121: $99
	adc  b                                           ; $5122: $88
	adc  b                                           ; $5123: $88
	adc  b                                           ; $5124: $88
	adc  b                                           ; $5125: $88
	sbc  b                                           ; $5126: $98
	adc  c                                           ; $5127: $89
	adc  c                                           ; $5128: $89
	adc  b                                           ; $5129: $88
	halt                                             ; $512a: $76
	ld   d, e                                        ; $512b: $53
	ld   de, $1121                                   ; $512c: $11 $21 $11
	inc  sp                                          ; $512f: $33
	dec  [hl]                                        ; $5130: $35
	ld   a, c                                        ; $5131: $79
	xor  e                                           ; $5132: $ab
	call z, $dddd                                    ; $5133: $cc $dd $dd
	call c, $cbcc                                    ; $5136: $dc $cc $cb
	xor  e                                           ; $5139: $ab
	xor  c                                           ; $513a: $a9
	sbc  b                                           ; $513b: $98
	adc  b                                           ; $513c: $88
	adc  b                                           ; $513d: $88
	adc  b                                           ; $513e: $88
	adc  b                                           ; $513f: $88
	adc  c                                           ; $5140: $89
	adc  c                                           ; $5141: $89
	adc  b                                           ; $5142: $88
	add  a                                           ; $5143: $87
	ld   h, h                                        ; $5144: $64
	ld   hl, $1111                                   ; $5145: $21 $11 $11
	ld   [de], a                                     ; $5148: $12
	inc  hl                                          ; $5149: $23
	ld   h, a                                        ; $514a: $67
	adc  d                                           ; $514b: $8a
	call $cecd                                       ; $514c: $cd $cd $ce
	db   $ed                                         ; $514f: $ed
	call c, $cadb                                    ; $5150: $dc $db $ca
	cp   d                                           ; $5153: $ba
	sbc  c                                           ; $5154: $99
	adc  b                                           ; $5155: $88
	ld   [hl], a                                     ; $5156: $77
	ld   a, b                                        ; $5157: $78
	adc  b                                           ; $5158: $88
	adc  c                                           ; $5159: $89
	sbc  c                                           ; $515a: $99
	sbc  c                                           ; $515b: $99
	sub  a                                           ; $515c: $97
	halt                                             ; $515d: $76
	ld   d, e                                        ; $515e: $53
	ld   de, $1121                                   ; $515f: $11 $21 $11
	inc  sp                                          ; $5162: $33
	ld   [hl], $79                                   ; $5163: $36 $79
	xor  h                                           ; $5165: $ac
	call c, $dddd                                    ; $5166: $dc $dd $dd
	db   $ed                                         ; $5169: $ed
	call $bbbb                                       ; $516a: $cd $bb $bb
	sbc  b                                           ; $516d: $98
	sbc  b                                           ; $516e: $98
	adc  b                                           ; $516f: $88
	add  a                                           ; $5170: $87
	ld   a, b                                        ; $5171: $78
	adc  b                                           ; $5172: $88
	adc  c                                           ; $5173: $89
	sbc  c                                           ; $5174: $99
	adc  b                                           ; $5175: $88
	add  a                                           ; $5176: $87
	ld   h, h                                        ; $5177: $64
	ld   sp, $1112                                   ; $5178: $31 $12 $11
	ld   [de], a                                     ; $517b: $12
	inc  sp                                          ; $517c: $33
	ld   h, a                                        ; $517d: $67
	adc  c                                           ; $517e: $89
	cp   h                                           ; $517f: $bc
	db   $dd                                         ; $5180: $dd
	call c, $dddd                                    ; $5181: $dc $dd $dd
	db   $db                                         ; $5184: $db
	cp   d                                           ; $5185: $ba
	xor  d                                           ; $5186: $aa
	sbc  c                                           ; $5187: $99
	sbc  b                                           ; $5188: $98
	adc  b                                           ; $5189: $88
	ld   [hl], a                                     ; $518a: $77
	ld   a, b                                        ; $518b: $78
	sbc  c                                           ; $518c: $99
	sbc  b                                           ; $518d: $98
	sbc  b                                           ; $518e: $98
	adc  b                                           ; $518f: $88
	halt                                             ; $5190: $76
	ld   b, d                                        ; $5191: $42
	ld   [de], a                                     ; $5192: $12
	ld   hl, $2211                                   ; $5193: $21 $11 $22
	ld   b, a                                        ; $5196: $47
	ld   a, b                                        ; $5197: $78
	xor  h                                           ; $5198: $ac
	db   $dd                                         ; $5199: $dd
	db   $dd                                         ; $519a: $dd
	call $dded                                       ; $519b: $cd $ed $dd
	cp   d                                           ; $519e: $ba
	cp   d                                           ; $519f: $ba
	xor  d                                           ; $51a0: $aa
	sbc  b                                           ; $51a1: $98
	ld   [hl], a                                     ; $51a2: $77
	adc  b                                           ; $51a3: $88
	adc  b                                           ; $51a4: $88
	ld   a, b                                        ; $51a5: $78
	adc  c                                           ; $51a6: $89
	adc  c                                           ; $51a7: $89
	adc  b                                           ; $51a8: $88
	add  a                                           ; $51a9: $87
	ld   h, h                                        ; $51aa: $64
	ld   hl, $1112                                   ; $51ab: $21 $12 $11
	ld   [de], a                                     ; $51ae: $12
	inc  sp                                          ; $51af: $33
	ld   h, a                                        ; $51b0: $67
	sbc  c                                           ; $51b1: $99
	call $dddd                                       ; $51b2: $cd $dd $dd
	db   $dd                                         ; $51b5: $dd
	db   $dd                                         ; $51b6: $dd
	res  7, e                                        ; $51b7: $cb $bb
	cp   c                                           ; $51b9: $b9
	xor  c                                           ; $51ba: $a9
	adc  b                                           ; $51bb: $88
	ld   a, b                                        ; $51bc: $78
	adc  b                                           ; $51bd: $88
	adc  b                                           ; $51be: $88
	adc  c                                           ; $51bf: $89
	xor  c                                           ; $51c0: $a9
	sbc  c                                           ; $51c1: $99
	add  a                                           ; $51c2: $87
	ld   d, e                                        ; $51c3: $53
	ld   hl, $1112                                   ; $51c4: $21 $12 $11
	ld   hl, $7c26                                   ; $51c7: $21 $26 $7c
	xor  l                                           ; $51ca: $ad
	set  7, a                                        ; $51cb: $cb $ff
	cp   $bc                                         ; $51cd: $fe $bc
	sbc  e                                           ; $51cf: $9b
	ret                                              ; $51d0: $c9


	sub  [hl]                                        ; $51d1: $96
	ld   [hl], a                                     ; $51d2: $77
	sbc  d                                           ; $51d3: $9a
	ld   a, b                                        ; $51d4: $78
	ld   a, c                                        ; $51d5: $79
	call z, $abdb                                    ; $51d6: $cc $db $ab
	xor  h                                           ; $51d9: $ac
	sbc  b                                           ; $51da: $98
	ld   d, h                                        ; $51db: $54
	ld   sp, $1111                                   ; $51dc: $31 $11 $11
	inc  hl                                          ; $51df: $23
	ld   a, [hl-]                                    ; $51e0: $3a
	inc  a                                           ; $51e1: $3c
	rst  $28                                         ; $51e2: $ef
	rst  $38                                         ; $51e3: $ff
	cp   $af                                         ; $51e4: $fe $af
	xor  l                                           ; $51e6: $ad
	ld   d, h                                        ; $51e7: $54
	ld   sp, $8556                                   ; $51e8: $31 $56 $85

Call_0bc_51eb:
	ld   [hl], a                                     ; $51eb: $77
	xor  l                                           ; $51ec: $ad
	xor  $9c                                         ; $51ed: $ee $9c
	xor  e                                           ; $51ef: $ab
	db   $ec                                         ; $51f0: $ec
	or   a                                           ; $51f1: $b7
	adc  b                                           ; $51f2: $88
	adc  c                                           ; $51f3: $89
	add  l                                           ; $51f4: $85
	ld   b, d                                        ; $51f5: $42
	ld   de, $1111                                   ; $51f6: $11 $11 $11
	ld   h, h                                        ; $51f9: $64
	rst  $30                                         ; $51fa: $f7
	cp   a                                           ; $51fb: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51fc: $cf
	rst  $38                                         ; $51fd: $ff
	db   $f4                                         ; $51fe: $f4
	and  [hl]                                        ; $51ff: $a6
	add  a                                           ; $5200: $87
	ld   b, h                                        ; $5201: $44
	ld   [de], a                                     ; $5202: $12
	ld   l, d                                        ; $5203: $6a
	xor  l                                           ; $5204: $ad
	jp   c, $fcdb                                    ; $5205: $da $db $fc

	call c, $887a                                    ; $5208: $dc $7a $88
	xor  c                                           ; $520b: $a9
	sub  a                                           ; $520c: $97
	ld   h, a                                        ; $520d: $67
	ld   h, l                                        ; $520e: $65
	ld   d, c                                        ; $520f: $51
	ld   de, $8711                                   ; $5210: $11 $11 $87
	cp   a                                           ; $5213: $bf
	dec  sp                                          ; $5214: $3b
	xor  a                                           ; $5215: $af
	rst  $38                                         ; $5216: $ff
	ld   a, [$2816]                                  ; $5217: $fa $16 $28
	adc  c                                           ; $521a: $89
	ld   d, c                                        ; $521b: $51
	ld   d, $cc                                      ; $521c: $16 $cc
	cp   $cc                                         ; $521e: $fe $cc
	ld   a, h                                        ; $5220: $7c
	cp   [hl]                                        ; $5221: $be
	jp   hl                                          ; $5222: $e9


	sub  l                                           ; $5223: $95
	ld   e, b                                        ; $5224: $58
	cp   e                                           ; $5225: $bb
	and  [hl]                                        ; $5226: $a6
	ld   b, d                                        ; $5227: $42
	dec  h                                           ; $5228: $25
	ld   de, $1311                                   ; $5229: $11 $11 $13
	ld   c, a                                        ; $522c: $4f
	ei                                               ; $522d: $fb
	ld   hl, sp-$01                                  ; $522e: $f8 $ff
	rst  $38                                         ; $5230: $ff
	or   [hl]                                        ; $5231: $b6
	ld   d, c                                        ; $5232: $51
	dec  [hl]                                        ; $5233: $35
	adc  c                                           ; $5234: $89
	ld   [hl], l                                     ; $5235: $75
	ld   [hl], a                                     ; $5236: $77
	xor  a                                           ; $5237: $af
	rst  $38                                         ; $5238: $ff
	rst  $20                                         ; $5239: $e7
	add  [hl]                                        ; $523a: $86
	adc  $dc                                         ; $523b: $ce $dc
	ld   [hl], h                                     ; $523d: $74
	ld   b, [hl]                                     ; $523e: $46
	adc  d                                           ; $523f: $8a
	sub  a                                           ; $5240: $97
	ld   sp, $1111                                   ; $5241: $31 $11 $11
	dec  de                                          ; $5244: $1b
	ld   c, a                                        ; $5245: $4f
	push af                                          ; $5246: $f5
	ld   sp, hl                                      ; $5247: $f9
	rst  $38                                         ; $5248: $ff
	rst  $38                                         ; $5249: $ff
	ld   [hl], d                                     ; $524a: $72
	ld   sp, $b726                                   ; $524b: $31 $26 $b7
	sub  l                                           ; $524e: $95
	ld   l, d                                        ; $524f: $6a
	sbc  a                                           ; $5250: $9f
	rst  $38                                         ; $5251: $ff
	push af                                          ; $5252: $f5
	ld   [hl], l                                     ; $5253: $75
	adc  h                                           ; $5254: $8c
	cp   l                                           ; $5255: $bd
	and  l                                           ; $5256: $a5
	ld   d, [hl]                                     ; $5257: $56
	ld   l, d                                        ; $5258: $6a
	xor  b                                           ; $5259: $a8
	ld   d, c                                        ; $525a: $51
	ld   de, $1911                                   ; $525b: $11 $11 $19
	ld   l, a                                        ; $525e: $6f
	rst  $20                                         ; $525f: $e7
	ld   a, [$ffff]                                  ; $5260: $fa $ff $ff
	ld   [hl], h                                     ; $5263: $74
	ld   sp, $a925                                   ; $5264: $31 $25 $a9
	and  a                                           ; $5267: $a7
	ld   a, c                                        ; $5268: $79
	adc  a                                           ; $5269: $8f
	rst  $38                                         ; $526a: $ff
	rst  $30                                         ; $526b: $f7
	halt                                             ; $526c: $76
	adc  h                                           ; $526d: $8c
	cp   l                                           ; $526e: $bd
	or   a                                           ; $526f: $b7
	ld   [hl], l                                     ; $5270: $75
	ld   b, a                                        ; $5271: $47
	ld   h, l                                        ; $5272: $65
	ld   hl, $1111                                   ; $5273: $21 $11 $11
	add  [hl]                                        ; $5276: $86
	rst  $38                                         ; $5277: $ff
	xor  a                                           ; $5278: $af
	adc  h                                           ; $5279: $8c
	cp   $fb                                         ; $527a: $fe $fb
	ld   h, l                                        ; $527c: $65
	ld   de, $af16                                   ; $527d: $11 $16 $af
	jp   z, $ddb6                                    ; $5280: $ca $b6 $dd

	rst  $38                                         ; $5283: $ff
	cp   h                                           ; $5284: $bc
	sbc  b                                           ; $5285: $98
	xor  c                                           ; $5286: $a9
	cp   h                                           ; $5287: $bc
	xor  b                                           ; $5288: $a8
	ld   h, e                                        ; $5289: $63
	ld   b, c                                        ; $528a: $41
	ld   de, $1111                                   ; $528b: $11 $11 $11
	ld   h, $bf                                      ; $528e: $26 $bf
	rst  $38                                         ; $5290: $ff
	ld   hl, sp-$02                                  ; $5291: $f8 $fe
	rst  $38                                         ; $5293: $ff
	adc  b                                           ; $5294: $88
	ld   hl, $5b11                                   ; $5295: $21 $11 $5b
	db   $ec                                         ; $5298: $ec
	ld   a, [$aeab]                                  ; $5299: $fa $ab $ae
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $529c: $cf
	db   $fd                                         ; $529d: $fd
	ret                                              ; $529e: $c9


	ld   a, b                                        ; $529f: $78
	ld   a, b                                        ; $52a0: $78
	add  [hl]                                        ; $52a1: $86
	ld   sp, $1111                                   ; $52a2: $31 $11 $11
	ld   de, $ff99                                   ; $52a5: $11 $99 $ff
	rst  $28                                         ; $52a8: $ef
	xor  a                                           ; $52a9: $af
	rst  $38                                         ; $52aa: $ff
	ld   hl, sp+$73                                  ; $52ab: $f8 $73
	ld   de, $ae15                                   ; $52ad: $11 $15 $ae
	sbc  $c9                                         ; $52b0: $de $c9
	jp   c, $dfce                                    ; $52b2: $da $ce $df

	cp   $d7                                         ; $52b5: $fe $d7
	add  a                                           ; $52b7: $87
	ld   d, a                                        ; $52b8: $57
	ld   d, e                                        ; $52b9: $53
	ld   de, $1111                                   ; $52ba: $11 $11 $11
	jr   z, @+$01                                    ; $52bd: $28 $ff

	rst  $38                                         ; $52bf: $ff
	ld   sp, hl                                      ; $52c0: $f9
	rst  $38                                         ; $52c1: $ff
	rst  $38                                         ; $52c2: $ff
	xor  b                                           ; $52c3: $a8
	ld   de, $5c11                                   ; $52c4: $11 $11 $5c
	rst  $38                                         ; $52c7: $ff
	ei                                               ; $52c8: $fb
	cp   d                                           ; $52c9: $ba
	adc  h                                           ; $52ca: $8c
	rst  JumpTable                                         ; $52cb: $df
	rst  $38                                         ; $52cc: $ff
	ld   sp, hl                                      ; $52cd: $f9
	ld   [hl], l                                     ; $52ce: $75
	ld   b, l                                        ; $52cf: $45
	ld   h, l                                        ; $52d0: $65
	ld   hl, $1111                                   ; $52d1: $21 $11 $11
	jr   @-$0f                                       ; $52d4: $18 $ef

	rst  $38                                         ; $52d6: $ff
	ld   sp, hl                                      ; $52d7: $f9
	db   $ed                                         ; $52d8: $ed
	rst  $38                                         ; $52d9: $ff
	swap c                                           ; $52da: $cb $31
	ld   de, $ff29                                   ; $52dc: $11 $29 $ff
	cp   $b9                                         ; $52df: $fe $b9
	ld   a, c                                        ; $52e1: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52e2: $cf
	rst  $38                                         ; $52e3: $ff
	ld   a, [$1453]                                  ; $52e4: $fa $53 $14
	ld   d, l                                        ; $52e7: $55
	ld   b, c                                        ; $52e8: $41
	ld   de, $1611                                   ; $52e9: $11 $11 $16
	rst  $38                                         ; $52ec: $ff
	rst  $38                                         ; $52ed: $ff
	db   $eb                                         ; $52ee: $eb
	db   $db                                         ; $52ef: $db
	rst  $38                                         ; $52f0: $ff
	db   $fd                                         ; $52f1: $fd
	ld   sp, $1811                                   ; $52f2: $31 $11 $18
	rst  $28                                         ; $52f5: $ef
	rst  $38                                         ; $52f6: $ff
	ld   hl, sp+$68                                  ; $52f7: $f8 $68
	rst  JumpTable                                         ; $52f9: $df
	rst  $38                                         ; $52fa: $ff
	ld   a, [$1131]                                  ; $52fb: $fa $31 $11
	inc  [hl]                                        ; $52fe: $34
	ld   hl, $1111                                   ; $52ff: $21 $11 $11
	ld   e, $ff                                      ; $5302: $1e $ff
	rst  $38                                         ; $5304: $ff
	db   $dd                                         ; $5305: $dd
	ld   a, [hl]                                     ; $5306: $7e
	db   $fd                                         ; $5307: $fd
	ld   hl, sp+$31                                  ; $5308: $f8 $31
	ld   de, $ff28                                   ; $530a: $11 $28 $ff
	rst  $38                                         ; $530d: $ff
	ld   [$ffba], a                                  ; $530e: $ea $ba $ff
	rst  $38                                         ; $5311: $ff
	or   l                                           ; $5312: $b5
	ld   de, $1111                                   ; $5313: $11 $11 $11
	ld   de, $1511                                   ; $5316: $11 $11 $15
	rst  $38                                         ; $5319: $ff
	rst  $38                                         ; $531a: $ff
	rst  $38                                         ; $531b: $ff
	call $c8c7                                       ; $531c: $cd $c7 $c8
	ld   d, h                                        ; $531f: $54
	ld   de, $9f14                                   ; $5320: $11 $14 $9f
	rst  $38                                         ; $5323: $ff
	rst  $38                                         ; $5324: $ff
	db   $fd                                         ; $5325: $fd
	call $b7de                                       ; $5326: $cd $de $b7
	ld   sp, $1111                                   ; $5329: $31 $11 $11
	ld   de, $6f14                                   ; $532c: $11 $14 $6f
	rst  $38                                         ; $532f: $ff
	rst  $38                                         ; $5330: $ff
	rst  $38                                         ; $5331: $ff
	rst  $38                                         ; $5332: $ff
	xor  d                                           ; $5333: $aa
	ld   [hl], c                                     ; $5334: $71
	ld   bc, $7a15                                   ; $5335: $01 $15 $7a
	sbc  $ff                                         ; $5338: $de $ff
	rst  $38                                         ; $533a: $ff
	rst  $38                                         ; $533b: $ff
	cp   $c9                                         ; $533c: $fe $c9
	ld   b, d                                        ; $533e: $42
	ld   de, $1111                                   ; $533f: $11 $11 $11
	ld   de, $ff27                                   ; $5342: $11 $27 $ff
	rst  $38                                         ; $5345: $ff
	rst  $38                                         ; $5346: $ff
	rst  $38                                         ; $5347: $ff
	ld   sp, hl                                      ; $5348: $f9
	rst  ToBoot                                         ; $5349: $c7
	ld   de, $3611                                   ; $534a: $11 $11 $36
	xor  a                                           ; $534d: $af
	rst  $38                                         ; $534e: $ff
	rst  $38                                         ; $534f: $ff
	rst  $38                                         ; $5350: $ff
	rst  $38                                         ; $5351: $ff
	xor  $92                                         ; $5352: $ee $92
	ld   de, $1111                                   ; $5354: $11 $11 $11
	ld   de, rAUDVOL                                   ; $5357: $11 $24 $ff
	rst  $38                                         ; $535a: $ff
	rst  $38                                         ; $535b: $ff
	rst  $38                                         ; $535c: $ff
	ei                                               ; $535d: $fb
	xor  c                                           ; $535e: $a9
	ld   de, $2411                                   ; $535f: $11 $11 $24
	sbc  l                                           ; $5362: $9d
	rst  $38                                         ; $5363: $ff
	rst  $38                                         ; $5364: $ff
	rst  $38                                         ; $5365: $ff
	rst  $38                                         ; $5366: $ff
	db   $fc                                         ; $5367: $fc
	add  c                                           ; $5368: $81
	ld   de, $1111                                   ; $5369: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $536c: $11 $14 $ff
	rst  $38                                         ; $536f: $ff
	rst  $38                                         ; $5370: $ff
	rst  $38                                         ; $5371: $ff
	db   $fc                                         ; $5372: $fc
	ret  z                                           ; $5373: $c8

	ld   bc, $3311                                   ; $5374: $01 $11 $33
	sbc  l                                           ; $5377: $9d
	rst  $28                                         ; $5378: $ef
	rst  $38                                         ; $5379: $ff
	rst  $38                                         ; $537a: $ff
	rst  $38                                         ; $537b: $ff
	db   $fc                                         ; $537c: $fc
	ld   h, c                                        ; $537d: $61
	ld   de, $1111                                   ; $537e: $11 $11 $11
	ld   de, $ff1a                                   ; $5381: $11 $1a $ff
	rst  $38                                         ; $5384: $ff
	rst  $38                                         ; $5385: $ff
	rst  $38                                         ; $5386: $ff
	db   $fd                                         ; $5387: $fd
	jp   $1131                                       ; $5388: $c3 $31 $11


	dec  d                                           ; $538b: $15
	xor  e                                           ; $538c: $ab
	rst  $38                                         ; $538d: $ff
	rst  $38                                         ; $538e: $ff
	rst  $38                                         ; $538f: $ff
	rst  $38                                         ; $5390: $ff
	ld   [$1121], a                                  ; $5391: $ea $21 $11
	ld   de, $1111                                   ; $5394: $11 $11 $11
	adc  a                                           ; $5397: $8f
	rst  $38                                         ; $5398: $ff
	rst  $38                                         ; $5399: $ff
	rst  $38                                         ; $539a: $ff
	rst  $38                                         ; $539b: $ff
	rst  $38                                         ; $539c: $ff
	dec  [hl]                                        ; $539d: $35
	ld   de, $6721                                   ; $539e: $11 $21 $67
	adc  h                                           ; $53a1: $8c
	cp   a                                           ; $53a2: $bf
	rst  $38                                         ; $53a3: $ff
	rst  $38                                         ; $53a4: $ff
	rst  $38                                         ; $53a5: $ff
	and  e                                           ; $53a6: $a3
	ld   de, $1111                                   ; $53a7: $11 $11 $11
	ld   de, $8f11                                   ; $53aa: $11 $11 $8f
	rst  $38                                         ; $53ad: $ff
	rst  $38                                         ; $53ae: $ff
	rst  $38                                         ; $53af: $ff
	rst  $38                                         ; $53b0: $ff
	ei                                               ; $53b1: $fb
	sub  d                                           ; $53b2: $92
	ld   de, $2611                                   ; $53b3: $11 $11 $26
	cp   l                                           ; $53b6: $bd
	rst  $38                                         ; $53b7: $ff
	rst  $38                                         ; $53b8: $ff
	rst  $38                                         ; $53b9: $ff
	db   $eb                                         ; $53ba: $eb
	ld   b, c                                        ; $53bb: $41
	ld   de, $1111                                   ; $53bc: $11 $11 $11
	ld   de, $ff4a                                   ; $53bf: $11 $4a $ff
	rst  $38                                         ; $53c2: $ff
	rst  $38                                         ; $53c3: $ff
	rst  $38                                         ; $53c4: $ff
	rst  $38                                         ; $53c5: $ff
	or   l                                           ; $53c6: $b5
	ld   de, $2223                                   ; $53c7: $11 $23 $22
	ld   b, a                                        ; $53ca: $47
	cp   [hl]                                        ; $53cb: $be
	rst  $38                                         ; $53cc: $ff
	rst  $38                                         ; $53cd: $ff
	db   $fc                                         ; $53ce: $fc
	ld   h, c                                        ; $53cf: $61
	ld   de, $1111                                   ; $53d0: $11 $11 $11
	ld   de, $af15                                   ; $53d3: $11 $15 $af
	rst  $38                                         ; $53d6: $ff
	rst  $38                                         ; $53d7: $ff
	rst  $38                                         ; $53d8: $ff
	rst  $38                                         ; $53d9: $ff
	db   $fc                                         ; $53da: $fc
	ld   [hl], e                                     ; $53db: $73
	inc  sp                                          ; $53dc: $33
	ld   [hl+], a                                    ; $53dd: $22
	inc  d                                           ; $53de: $14
	xor  [hl]                                        ; $53df: $ae
	rst  $38                                         ; $53e0: $ff
	rst  $38                                         ; $53e1: $ff
	ld   a, [$1141]                                  ; $53e2: $fa $41 $11
	ld   de, $1111                                   ; $53e5: $11 $11 $11
	inc  de                                          ; $53e8: $13
	adc  h                                           ; $53e9: $8c
	rst  $38                                         ; $53ea: $ff
	rst  $38                                         ; $53eb: $ff
	rst  $38                                         ; $53ec: $ff
	rst  $38                                         ; $53ed: $ff
	db   $ed                                         ; $53ee: $ed
	sbc  c                                           ; $53ef: $99
	ld   d, l                                        ; $53f0: $55
	ld   sp, $cf25                                   ; $53f1: $31 $25 $cf
	rst  $38                                         ; $53f4: $ff
	ei                                               ; $53f5: $fb
	ld   [hl], h                                     ; $53f6: $74
	ld   hl, $1101                                   ; $53f7: $21 $01 $11
	ld   de, $3511                                   ; $53fa: $11 $11 $35
	adc  l                                           ; $53fd: $8d
	rst  $38                                         ; $53fe: $ff
	rst  $38                                         ; $53ff: $ff
	rst  $38                                         ; $5400: $ff
	rst  $38                                         ; $5401: $ff
	jp   z, Jump_0bc_76a9                            ; $5402: $ca $a9 $76

	ld   l, b                                        ; $5405: $68
	xor  l                                           ; $5406: $ad
	cp   $da                                         ; $5407: $fe $da
	ld   [hl], l                                     ; $5409: $75
	ld   d, [hl]                                     ; $540a: $56
	ld   h, [hl]                                     ; $540b: $66
	ld   sp, $1111                                   ; $540c: $31 $11 $11
	inc  sp                                          ; $540f: $33
	ld   hl, $bd48                                   ; $5410: $21 $48 $bd
	call z, $bda9                                    ; $5413: $cc $a9 $bd
	sbc  $db                                         ; $5416: $de $db
	sbc  c                                           ; $5418: $99
	xor  l                                           ; $5419: $ad
	rst  $38                                         ; $541a: $ff
	cp   $b9                                         ; $541b: $fe $b9
	adc  c                                           ; $541d: $89
	xor  d                                           ; $541e: $aa
	sub  a                                           ; $541f: $97
	ld   b, c                                        ; $5420: $41
	ld   de, $2211                                   ; $5421: $11 $11 $22
	ld   de, $5812                                   ; $5424: $11 $12 $58
	xor  d                                           ; $5427: $aa
	sub  a                                           ; $5428: $97
	ld   a, d                                        ; $5429: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $542a: $cf
	rst  $38                                         ; $542b: $ff
	db   $db                                         ; $542c: $db
	cp   l                                           ; $542d: $bd
	rst  $38                                         ; $542e: $ff
	rst  $38                                         ; $542f: $ff
	db   $eb                                         ; $5430: $eb
	adc  c                                           ; $5431: $89
	xor  e                                           ; $5432: $ab
	sub  a                                           ; $5433: $97
	ld   b, c                                        ; $5434: $41
	ld   de, $1111                                   ; $5435: $11 $11 $11
	ld   de, $4611                                   ; $5438: $11 $11 $46
	sbc  c                                           ; $543b: $99
	sub  a                                           ; $543c: $97
	adc  c                                           ; $543d: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $543e: $cf
	rst  $38                                         ; $543f: $ff
	db   $eb                                         ; $5440: $eb
	cp   l                                           ; $5441: $bd
	rst  $38                                         ; $5442: $ff
	rst  $38                                         ; $5443: $ff
	db   $eb                                         ; $5444: $eb
	xor  d                                           ; $5445: $aa
	cp   e                                           ; $5446: $bb
	sub  a                                           ; $5447: $97
	ld   b, d                                        ; $5448: $42
	ld   de, $1111                                   ; $5449: $11 $11 $11
	ld   de, $4611                                   ; $544c: $11 $11 $46
	ld   a, b                                        ; $544f: $78
	sbc  c                                           ; $5450: $99
	sbc  d                                           ; $5451: $9a
	adc  $ef                                         ; $5452: $ce $ef
	db   $fd                                         ; $5454: $fd
	set  3, a                                        ; $5455: $cb $df
	rst  $38                                         ; $5457: $ff
	db   $fd                                         ; $5458: $fd
	cp   d                                           ; $5459: $ba
	xor  c                                           ; $545a: $a9
	add  [hl]                                        ; $545b: $86
	ld   b, d                                        ; $545c: $42
	ld   de, $1111                                   ; $545d: $11 $11 $11
	ld   de, $5811                                   ; $5460: $11 $11 $58
	xor  e                                           ; $5463: $ab
	cp   h                                           ; $5464: $bc
	xor  $ff                                         ; $5465: $ee $ff
	rst  $38                                         ; $5467: $ff
	cp   $cc                                         ; $5468: $fe $cc
	set  1, h                                        ; $546a: $cb $cc
	db   $ed                                         ; $546c: $ed
	res  2, [hl]                                     ; $546d: $cb $96
	ld   hl, $1111                                   ; $546f: $21 $11 $11
	ld   de, $1111                                   ; $5472: $11 $11 $11
	ld   c, b                                        ; $5475: $48
	rst  $28                                         ; $5476: $ef
	rst  $38                                         ; $5477: $ff
	rst  $38                                         ; $5478: $ff
	rst  $38                                         ; $5479: $ff
	rst  $38                                         ; $547a: $ff
	db   $eb                                         ; $547b: $eb
	add  [hl]                                        ; $547c: $86
	ld   d, a                                        ; $547d: $57
	cp   h                                           ; $547e: $bc
	jp   z, $8599                                    ; $547f: $ca $99 $85

	ld   sp, $1111                                   ; $5482: $31 $11 $11
	ld   hl, $1411                                   ; $5485: $21 $11 $14
	ld   l, h                                        ; $5488: $6c
	rst  $38                                         ; $5489: $ff
	rst  $38                                         ; $548a: $ff
	rst  $38                                         ; $548b: $ff
	rst  $38                                         ; $548c: $ff
	rst  $38                                         ; $548d: $ff
	add  $33                                         ; $548e: $c6 $33
	ld   a, e                                        ; $5490: $7b
	call c, Call_0bc_64a8                            ; $5491: $dc $a8 $64
	inc  sp                                          ; $5494: $33
	ld   de, $0111                                   ; $5495: $11 $11 $01
	ld   de, $5a15                                   ; $5498: $11 $15 $5a
	rst  $38                                         ; $549b: $ff
	rst  $38                                         ; $549c: $ff
	rst  $38                                         ; $549d: $ff
	rst  $38                                         ; $549e: $ff
	rst  $38                                         ; $549f: $ff
	rst  $10                                         ; $54a0: $d7
	ld   [hl-], a                                    ; $54a1: $32
	ld   e, b                                        ; $54a2: $58
	xor  d                                           ; $54a3: $aa
	xor  d                                           ; $54a4: $aa
	ld   [hl], h                                     ; $54a5: $74
	ld   hl, $1111                                   ; $54a6: $21 $11 $11
	ld   hl, $2611                                   ; $54a9: $21 $11 $26
	ld   l, e                                        ; $54ac: $6b
	rst  $38                                         ; $54ad: $ff
	rst  $38                                         ; $54ae: $ff
	rst  $38                                         ; $54af: $ff
	rst  $38                                         ; $54b0: $ff
	cp   $c6                                         ; $54b1: $fe $c6
	inc  sp                                          ; $54b3: $33
	ld   a, c                                        ; $54b4: $79
	xor  c                                           ; $54b5: $a9
	sbc  b                                           ; $54b6: $98
	ld   h, e                                        ; $54b7: $63
	ld   [hl+], a                                    ; $54b8: $22
	ld   de, $2111                                   ; $54b9: $11 $11 $21
	ld   de, $7e25                                   ; $54bc: $11 $25 $7e
	rst  $38                                         ; $54bf: $ff
	rst  $38                                         ; $54c0: $ff
	rst  $38                                         ; $54c1: $ff
	rst  $38                                         ; $54c2: $ff
	rst  $38                                         ; $54c3: $ff
	or   [hl]                                        ; $54c4: $b6
	inc  h                                           ; $54c5: $24
	adc  e                                           ; $54c6: $8b
	cp   c                                           ; $54c7: $b9
	halt                                             ; $54c8: $76
	ld   b, d                                        ; $54c9: $42
	ld   hl, $1111                                   ; $54ca: $21 $11 $11
	ld   de, $5511                                   ; $54cd: $11 $11 $55
	adc  a                                           ; $54d0: $8f
	rst  $38                                         ; $54d1: $ff
	rst  $38                                         ; $54d2: $ff
	rst  $38                                         ; $54d3: $ff
	rst  $38                                         ; $54d4: $ff
	db   $fd                                         ; $54d5: $fd
	sub  l                                           ; $54d6: $95
	ld   [hl], $ac                                   ; $54d7: $36 $ac
	xor  b                                           ; $54d9: $a8
	halt                                             ; $54da: $76
	ld   [hl-], a                                    ; $54db: $32
	ld   de, $1211                                   ; $54dc: $11 $11 $12
	ld   de, $5612                                   ; $54df: $11 $12 $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54e2: $cf
	rst  $38                                         ; $54e3: $ff
	rst  $38                                         ; $54e4: $ff
	rst  $38                                         ; $54e5: $ff
	rst  $38                                         ; $54e6: $ff
	ei                                               ; $54e7: $fb
	ld   [hl], l                                     ; $54e8: $75
	ld   e, c                                        ; $54e9: $59
	cp   e                                           ; $54ea: $bb
	add  a                                           ; $54eb: $87
	ld   h, l                                        ; $54ec: $65
	ld   sp, $1111                                   ; $54ed: $31 $11 $11
	ld   hl, $1411                                   ; $54f0: $21 $11 $14
	ld   c, d                                        ; $54f3: $4a
	rst  $38                                         ; $54f4: $ff
	rst  $38                                         ; $54f5: $ff
	rst  $38                                         ; $54f6: $ff
	rst  $38                                         ; $54f7: $ff
	rst  $38                                         ; $54f8: $ff
	reti                                             ; $54f9: $d9


	ld   d, [hl]                                     ; $54fa: $56
	adc  e                                           ; $54fb: $8b
	cp   c                                           ; $54fc: $b9
	ld   h, [hl]                                     ; $54fd: $66
	ld   d, e                                        ; $54fe: $53
	ld   hl, $1211                                   ; $54ff: $21 $11 $12
	ld   de, $3411                                   ; $5502: $11 $11 $34
	xor  a                                           ; $5505: $af
	rst  $38                                         ; $5506: $ff
	rst  $38                                         ; $5507: $ff
	rst  $38                                         ; $5508: $ff
	rst  $38                                         ; $5509: $ff
	db   $fc                                         ; $550a: $fc
	sub  [hl]                                        ; $550b: $96
	ld   l, b                                        ; $550c: $68
	xor  d                                           ; $550d: $aa
	sub  [hl]                                        ; $550e: $96
	ld   h, l                                        ; $550f: $65
	ld   [hl-], a                                    ; $5510: $32
	ld   de, $3111                                   ; $5511: $11 $11 $31
	ld   de, $3c13                                   ; $5514: $11 $13 $3c
	rst  $38                                         ; $5517: $ff
	rst  $38                                         ; $5518: $ff
	rst  $38                                         ; $5519: $ff
	rst  $38                                         ; $551a: $ff
	rst  $38                                         ; $551b: $ff
	cp   b                                           ; $551c: $b8
	ld   h, [hl]                                     ; $551d: $66
	adc  h                                           ; $551e: $8c
	cp   b                                           ; $551f: $b8
	ld   h, l                                        ; $5520: $65
	ld   b, d                                        ; $5521: $42
	ld   hl, $1211                                   ; $5522: $21 $11 $12
	ld   de, $3511                                   ; $5525: $11 $11 $35
	rst  $28                                         ; $5528: $ef
	rst  $38                                         ; $5529: $ff
	rst  $38                                         ; $552a: $ff
	rst  $38                                         ; $552b: $ff
	rst  $38                                         ; $552c: $ff
	db   $eb                                         ; $552d: $eb
	sub  a                                           ; $552e: $97
	ld   l, c                                        ; $552f: $69
	xor  c                                           ; $5530: $a9
	halt                                             ; $5531: $76
	ld   d, e                                        ; $5532: $53
	ld   de, $1311                                   ; $5533: $11 $11 $13
	ld   de, $2211                                   ; $5536: $11 $11 $22
	xor  a                                           ; $5539: $af
	rst  $38                                         ; $553a: $ff
	rst  $38                                         ; $553b: $ff
	rst  $38                                         ; $553c: $ff
	rst  $38                                         ; $553d: $ff
	db   $fc                                         ; $553e: $fc
	xor  b                                           ; $553f: $a8
	sbc  c                                           ; $5540: $99
	jp   z, Jump_0bc_4496                            ; $5541: $ca $96 $44

	ld   de, $1211                                   ; $5544: $11 $11 $12
	ld   de, $2211                                   ; $5547: $11 $11 $22
	sbc  a                                           ; $554a: $9f
	rst  $38                                         ; $554b: $ff
	rst  $38                                         ; $554c: $ff
	rst  $38                                         ; $554d: $ff
	rst  $38                                         ; $554e: $ff
	cp   $a8                                         ; $554f: $fe $a8
	sbc  b                                           ; $5551: $98
	ret                                              ; $5552: $c9


	sub  a                                           ; $5553: $97
	ld   d, l                                        ; $5554: $55
	ld   hl, $1211                                   ; $5555: $21 $11 $12
	ld   de, $1111                                   ; $5558: $11 $11 $11
	ld   l, a                                        ; $555b: $6f
	rst  $28                                         ; $555c: $ef
	rst  $28                                         ; $555d: $ef
	rst  $38                                         ; $555e: $ff
	rst  $38                                         ; $555f: $ff
	rst  $38                                         ; $5560: $ff
	ret  z                                           ; $5561: $c8

	sbc  c                                           ; $5562: $99
	db   $db                                         ; $5563: $db
	sbc  c                                           ; $5564: $99
	ld   h, l                                        ; $5565: $65
	ld   hl, $1211                                   ; $5566: $21 $11 $12
	ld   de, $1111                                   ; $5569: $11 $11 $11
	ld   e, l                                        ; $556c: $5d
	sbc  $dd                                         ; $556d: $de $dd
	rst  $38                                         ; $556f: $ff
	rst  $38                                         ; $5570: $ff
	rst  $38                                         ; $5571: $ff
	reti                                             ; $5572: $d9


	sbc  c                                           ; $5573: $99
	call z, Call_0bc_65aa                            ; $5574: $cc $aa $65
	inc  sp                                          ; $5577: $33
	ld   de, $2112                                   ; $5578: $11 $12 $21
	ld   de, $3b11                                   ; $557b: $11 $11 $3b
	cp   l                                           ; $557e: $bd
	db   $ed                                         ; $557f: $ed
	xor  $ff                                         ; $5580: $ee $ff
	rst  $38                                         ; $5582: $ff
	jp   c, $cc99                                    ; $5583: $da $99 $cc

Jump_0bc_5586:
	cp   h                                           ; $5586: $bc
	add  a                                           ; $5587: $87
	ld   d, l                                        ; $5588: $55
	ld   sp, $4112                                   ; $5589: $31 $12 $41
	ld   [hl+], a                                    ; $558c: $22
	ld   de, $8916                                   ; $558d: $11 $16 $89
	res  5, h                                        ; $5590: $cb $ac
	adc  $fe                                         ; $5592: $ce $fe
	call c, $aba9                                    ; $5594: $dc $a9 $ab
	xor  h                                           ; $5597: $ac
	cp   e                                           ; $5598: $bb
	sbc  c                                           ; $5599: $99
	halt                                             ; $559a: $76
	ld   h, l                                        ; $559b: $65
	ld   d, [hl]                                     ; $559c: $56
	ld   b, l                                        ; $559d: $45
	ld   b, d                                        ; $559e: $42
	ld   hl, $6835                                   ; $559f: $21 $35 $68
	adc  b                                           ; $55a2: $88
	sbc  b                                           ; $55a3: $98
	sbc  c                                           ; $55a4: $99
	xor  e                                           ; $55a5: $ab
	xor  c                                           ; $55a6: $a9
	sbc  c                                           ; $55a7: $99
	xor  d                                           ; $55a8: $aa
	call z, $dccd                                    ; $55a9: $cc $cd $dc
	cp   d                                           ; $55ac: $ba
	cp   c                                           ; $55ad: $b9
	add  a                                           ; $55ae: $87
	ld   [hl], a                                     ; $55af: $77
	ld   d, l                                        ; $55b0: $55
	ld   [hl-], a                                    ; $55b1: $32
	ld   [hl+], a                                    ; $55b2: $22
	inc  sp                                          ; $55b3: $33
	ld   d, l                                        ; $55b4: $55
	ld   d, [hl]                                     ; $55b5: $56
	ld   d, [hl]                                     ; $55b6: $56
	ld   [hl], a                                     ; $55b7: $77
	sbc  b                                           ; $55b8: $98
	sbc  c                                           ; $55b9: $99
	xor  d                                           ; $55ba: $aa
	xor  h                                           ; $55bb: $ac
	call $eddd                                       ; $55bc: $cd $dd $ed
	call c, $a9cb                                    ; $55bf: $dc $cb $a9
	sbc  b                                           ; $55c2: $98
	halt                                             ; $55c3: $76
	ld   b, e                                        ; $55c4: $43
	ld   [hl+], a                                    ; $55c5: $22
	ld   hl, $3423                                   ; $55c6: $21 $23 $34
	ld   d, l                                        ; $55c9: $55
	ld   h, [hl]                                     ; $55ca: $66
	ld   [hl], a                                     ; $55cb: $77
	adc  b                                           ; $55cc: $88
	sbc  d                                           ; $55cd: $9a
	xor  d                                           ; $55ce: $aa
	xor  e                                           ; $55cf: $ab
	cp   l                                           ; $55d0: $bd
	call $dcdd                                       ; $55d1: $cd $dd $dc
	call c, $99ca                                    ; $55d4: $dc $ca $99
	halt                                             ; $55d7: $76
	ld   d, h                                        ; $55d8: $54
	ld   b, e                                        ; $55d9: $43
	ld   [hl-], a                                    ; $55da: $32
	ld   [hl+], a                                    ; $55db: $22
	inc  [hl]                                        ; $55dc: $34
	ld   b, l                                        ; $55dd: $45
	ld   h, [hl]                                     ; $55de: $66
	ld   h, [hl]                                     ; $55df: $66
	ld   [hl], a                                     ; $55e0: $77
	adc  c                                           ; $55e1: $89
	sbc  d                                           ; $55e2: $9a
	xor  d                                           ; $55e3: $aa
	xor  e                                           ; $55e4: $ab
	cp   h                                           ; $55e5: $bc
	db   $dd                                         ; $55e6: $dd
	call c, $cbcb                                    ; $55e7: $dc $cb $cb
	cp   e                                           ; $55ea: $bb
	xor  c                                           ; $55eb: $a9
	add  a                                           ; $55ec: $87
	ld   h, l                                        ; $55ed: $65
	ld   d, h                                        ; $55ee: $54
	ld   b, e                                        ; $55ef: $43
	inc  sp                                          ; $55f0: $33
	inc  sp                                          ; $55f1: $33
	ld   b, h                                        ; $55f2: $44
	ld   d, l                                        ; $55f3: $55
	ld   h, [hl]                                     ; $55f4: $66
	ld   [hl], a                                     ; $55f5: $77
	adc  b                                           ; $55f6: $88
	adc  c                                           ; $55f7: $89
	xor  c                                           ; $55f8: $a9
	xor  d                                           ; $55f9: $aa
	xor  e                                           ; $55fa: $ab
	res  7, e                                        ; $55fb: $cb $bb
	call z, $bbcb                                    ; $55fd: $cc $cb $bb
	xor  d                                           ; $5600: $aa
	sbc  c                                           ; $5601: $99
	sub  a                                           ; $5602: $97
	halt                                             ; $5603: $76
	ld   d, l                                        ; $5604: $55
	ld   b, h                                        ; $5605: $44
	inc  sp                                          ; $5606: $33
	inc  sp                                          ; $5607: $33
	ld   b, h                                        ; $5608: $44
	ld   d, l                                        ; $5609: $55
	ld   h, [hl]                                     ; $560a: $66
	ld   [hl], a                                     ; $560b: $77
	adc  b                                           ; $560c: $88
	adc  c                                           ; $560d: $89
	xor  d                                           ; $560e: $aa
	xor  d                                           ; $560f: $aa
	cp   e                                           ; $5610: $bb
	call z, $bbcc                                    ; $5611: $cc $cc $bb
	xor  e                                           ; $5614: $ab
	xor  d                                           ; $5615: $aa
	sbc  d                                           ; $5616: $9a
	sbc  b                                           ; $5617: $98
	adc  b                                           ; $5618: $88
	ld   [hl], a                                     ; $5619: $77
	ld   h, [hl]                                     ; $561a: $66
	ld   d, l                                        ; $561b: $55
	ld   d, h                                        ; $561c: $54
	ld   b, h                                        ; $561d: $44
	ld   b, h                                        ; $561e: $44
	ld   b, l                                        ; $561f: $45
	ld   d, [hl]                                     ; $5620: $56
	ld   [hl], a                                     ; $5621: $77
	adc  c                                           ; $5622: $89
	sbc  c                                           ; $5623: $99
	sbc  d                                           ; $5624: $9a
	xor  d                                           ; $5625: $aa
	cp   e                                           ; $5626: $bb
	xor  d                                           ; $5627: $aa
	xor  d                                           ; $5628: $aa
	xor  d                                           ; $5629: $aa
	sbc  d                                           ; $562a: $9a
	sbc  c                                           ; $562b: $99
	adc  c                                           ; $562c: $89
	adc  b                                           ; $562d: $88
	add  a                                           ; $562e: $87
	ld   [hl], a                                     ; $562f: $77
	ld   [hl], a                                     ; $5630: $77
	ld   [hl], a                                     ; $5631: $77
	ld   [hl], a                                     ; $5632: $77
	ld   [hl], a                                     ; $5633: $77
	ld   [hl], a                                     ; $5634: $77
	ld   [hl], a                                     ; $5635: $77
	ld   [hl], a                                     ; $5636: $77
	ld   [hl], a                                     ; $5637: $77
	ld   [hl], a                                     ; $5638: $77
	ld   [hl], a                                     ; $5639: $77
	adc  b                                           ; $563a: $88
	sbc  b                                           ; $563b: $98
	adc  c                                           ; $563c: $89
	sbc  c                                           ; $563d: $99
	sbc  c                                           ; $563e: $99
	adc  b                                           ; $563f: $88
	sbc  c                                           ; $5640: $99
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
	add  a                                           ; $566c: $87
	ld   [hl], a                                     ; $566d: $77
	ld   [hl], a                                     ; $566e: $77
	adc  b                                           ; $566f: $88
	adc  b                                           ; $5670: $88
	adc  b                                           ; $5671: $88
	adc  b                                           ; $5672: $88
	adc  b                                           ; $5673: $88
	adc  b                                           ; $5674: $88
	adc  c                                           ; $5675: $89
	sbc  c                                           ; $5676: $99
	sbc  c                                           ; $5677: $99
	sbc  c                                           ; $5678: $99
	sbc  c                                           ; $5679: $99
	sbc  c                                           ; $567a: $99
	sbc  c                                           ; $567b: $99
	sbc  b                                           ; $567c: $98
	adc  b                                           ; $567d: $88
	adc  b                                           ; $567e: $88
	adc  b                                           ; $567f: $88
	adc  b                                           ; $5680: $88
	adc  b                                           ; $5681: $88
	adc  b                                           ; $5682: $88
	add  a                                           ; $5683: $87
	ld   [hl], a                                     ; $5684: $77
	ld   [hl], a                                     ; $5685: $77
	ld   [hl], a                                     ; $5686: $77
	adc  b                                           ; $5687: $88
	adc  b                                           ; $5688: $88
	adc  b                                           ; $5689: $88
	adc  b                                           ; $568a: $88
	adc  b                                           ; $568b: $88
	adc  c                                           ; $568c: $89
	sbc  c                                           ; $568d: $99
	sbc  c                                           ; $568e: $99
	sbc  c                                           ; $568f: $99
	sbc  b                                           ; $5690: $98
	adc  b                                           ; $5691: $88
	adc  b                                           ; $5692: $88
	adc  b                                           ; $5693: $88
	adc  b                                           ; $5694: $88
	adc  b                                           ; $5695: $88
	adc  b                                           ; $5696: $88
	adc  b                                           ; $5697: $88
	ld   a, b                                        ; $5698: $78
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
	sbc  b                                           ; $56a4: $98
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
	adc  b                                           ; $5729: $88
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
	adc  b                                           ; $573c: $88
	adc  b                                           ; $573d: $88
	adc  b                                           ; $573e: $88
	adc  b                                           ; $573f: $88
	adc  b                                           ; $5740: $88
	adc  b                                           ; $5741: $88
	adc  b                                           ; $5742: $88
	adc  b                                           ; $5743: $88
	adc  b                                           ; $5744: $88
	adc  b                                           ; $5745: $88
	adc  b                                           ; $5746: $88
	adc  b                                           ; $5747: $88
	adc  b                                           ; $5748: $88
	adc  b                                           ; $5749: $88
	adc  b                                           ; $574a: $88
	adc  b                                           ; $574b: $88
	adc  b                                           ; $574c: $88
	adc  b                                           ; $574d: $88
	adc  b                                           ; $574e: $88
	adc  b                                           ; $574f: $88
	adc  b                                           ; $5750: $88
	adc  b                                           ; $5751: $88
	adc  b                                           ; $5752: $88
	adc  b                                           ; $5753: $88
	adc  b                                           ; $5754: $88
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

Call_0bc_57b8:
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
	adc  b                                           ; $5823: $88
	adc  b                                           ; $5824: $88
	adc  b                                           ; $5825: $88
	adc  b                                           ; $5826: $88
	adc  b                                           ; $5827: $88
	adc  b                                           ; $5828: $88
	adc  b                                           ; $5829: $88
	adc  b                                           ; $582a: $88
	adc  b                                           ; $582b: $88
	adc  b                                           ; $582c: $88
	adc  b                                           ; $582d: $88
	adc  b                                           ; $582e: $88
	adc  b                                           ; $582f: $88
	adc  b                                           ; $5830: $88
	adc  b                                           ; $5831: $88
	adc  b                                           ; $5832: $88
	adc  b                                           ; $5833: $88
	adc  b                                           ; $5834: $88
	adc  b                                           ; $5835: $88
	adc  b                                           ; $5836: $88
	adc  b                                           ; $5837: $88
	adc  b                                           ; $5838: $88
	adc  b                                           ; $5839: $88
	adc  b                                           ; $583a: $88
	adc  b                                           ; $583b: $88
	adc  b                                           ; $583c: $88
	adc  b                                           ; $583d: $88
	adc  b                                           ; $583e: $88
	adc  b                                           ; $583f: $88
	adc  b                                           ; $5840: $88
	adc  b                                           ; $5841: $88
	adc  b                                           ; $5842: $88
	adc  b                                           ; $5843: $88
	adc  b                                           ; $5844: $88
	adc  b                                           ; $5845: $88
	adc  b                                           ; $5846: $88
	adc  b                                           ; $5847: $88
	adc  b                                           ; $5848: $88
	adc  b                                           ; $5849: $88
	adc  b                                           ; $584a: $88
	adc  b                                           ; $584b: $88
	adc  b                                           ; $584c: $88
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
	sbc  c                                           ; $58d0: $99
	sbc  b                                           ; $58d1: $98
	adc  c                                           ; $58d2: $89
	adc  b                                           ; $58d3: $88
	adc  b                                           ; $58d4: $88
	sbc  c                                           ; $58d5: $99
	adc  b                                           ; $58d6: $88
	adc  b                                           ; $58d7: $88
	adc  b                                           ; $58d8: $88
	adc  c                                           ; $58d9: $89
	ld   a, b                                        ; $58da: $78
	adc  b                                           ; $58db: $88
	adc  b                                           ; $58dc: $88
	sbc  c                                           ; $58dd: $99
	adc  c                                           ; $58de: $89
	adc  b                                           ; $58df: $88
	adc  c                                           ; $58e0: $89
	ld   a, b                                        ; $58e1: $78
	add  a                                           ; $58e2: $87
	ld   [hl], a                                     ; $58e3: $77
	ld   [hl], a                                     ; $58e4: $77
	ld   [hl], a                                     ; $58e5: $77
	ld   [hl], a                                     ; $58e6: $77
	ld   a, b                                        ; $58e7: $78
	adc  b                                           ; $58e8: $88
	adc  b                                           ; $58e9: $88
	sbc  b                                           ; $58ea: $98
	sbc  c                                           ; $58eb: $99
	sbc  c                                           ; $58ec: $99
	xor  c                                           ; $58ed: $a9
	adc  c                                           ; $58ee: $89
	adc  d                                           ; $58ef: $8a
	adc  c                                           ; $58f0: $89
	sbc  b                                           ; $58f1: $98
	ld   [hl], a                                     ; $58f2: $77
	ld   h, h                                        ; $58f3: $64
	ld   b, h                                        ; $58f4: $44
	ld   d, [hl]                                     ; $58f5: $56
	ld   h, h                                        ; $58f6: $64
	ld   b, l                                        ; $58f7: $45
	ld   [hl], a                                     ; $58f8: $77
	ld   a, b                                        ; $58f9: $78
	adc  c                                           ; $58fa: $89
	cp   e                                           ; $58fb: $bb
	cp   d                                           ; $58fc: $ba
	xor  e                                           ; $58fd: $ab
	cp   d                                           ; $58fe: $ba
	cp   d                                           ; $58ff: $ba
	sbc  h                                           ; $5900: $9c
	cp   c                                           ; $5901: $b9
	sbc  b                                           ; $5902: $98
	xor  c                                           ; $5903: $a9
	halt                                             ; $5904: $76
	ld   b, d                                        ; $5905: $42
	ld   de, $3129                                   ; $5906: $11 $29 $31
	dec  d                                           ; $5909: $15
	cp   c                                           ; $590a: $b9
	res  1, [hl]                                     ; $590b: $cb $8e
	rst  $38                                         ; $590d: $ff
	cp   e                                           ; $590e: $bb
	call c, Call_0bc_6596                            ; $590f: $dc $96 $65
	adc  c                                           ; $5912: $89
	ld   h, [hl]                                     ; $5913: $66
	sbc  [hl]                                        ; $5914: $9e
	db   $db                                         ; $5915: $db
	xor  c                                           ; $5916: $a9
	sub  [hl]                                        ; $5917: $96
	ld   de, $b115                                   ; $5918: $11 $15 $b1
	ld   de, $adaf                                   ; $591b: $11 $af $ad
	sbc  a                                           ; $591e: $9f
	rst  $38                                         ; $591f: $ff
	ret  z                                           ; $5920: $c8

	rst  $38                                         ; $5921: $ff
	jp   Jump_0bc_4a11                               ; $5922: $c3 $11 $4a


	ld   b, c                                        ; $5925: $41
	ld   c, [hl]                                     ; $5926: $4e
	db   $fd                                         ; $5927: $fd
	call Call_0bc_51eb                               ; $5928: $cd $eb $51
	ld   de, $11c3                                   ; $592b: $11 $c3 $11
	ld   c, a                                        ; $592e: $4f
	cp   e                                           ; $592f: $bb
	rst  $38                                         ; $5930: $ff
	rst  $38                                         ; $5931: $ff
	or   $ff                                         ; $5932: $f6 $ff
	pop  bc                                          ; $5934: $c1
	ld   [de], a                                     ; $5935: $12
	ld   d, l                                        ; $5936: $55
	ld   hl, $fd7f                                   ; $5937: $21 $7f $fd
	rst  $28                                         ; $593a: $ef
	rst  $38                                         ; $593b: $ff
	ld   d, c                                        ; $593c: $51
	ld   de, $1116                                   ; $593d: $11 $16 $11
	ld   d, $fb                                      ; $5940: $16 $fb
	rst  $38                                         ; $5942: $ff
	rst  $38                                         ; $5943: $ff
	rst  $38                                         ; $5944: $ff
	ld   l, a                                        ; $5945: $6f
	pop  af                                          ; $5946: $f1
	ld   de, $1121                                   ; $5947: $11 $21 $11
	ld   c, a                                        ; $594a: $4f
	rst  $38                                         ; $594b: $ff
	rst  $38                                         ; $594c: $ff
	rst  $38                                         ; $594d: $ff
	rst  $20                                         ; $594e: $e7
	ld   b, c                                        ; $594f: $41
	ld   de, $9111                                   ; $5950: $11 $11 $91
	jr   @+$01                                       ; $5953: $18 $ff

	rst  $38                                         ; $5955: $ff
	rst  $38                                         ; $5956: $ff
	ld   a, [$d118]                                  ; $5957: $fa $18 $d1
	ld   de, $3112                                   ; $595a: $11 $12 $31
	sbc  a                                           ; $595d: $9f
	rst  $38                                         ; $595e: $ff
	rst  $38                                         ; $595f: $ff
	rst  $38                                         ; $5960: $ff
	add  d                                           ; $5961: $82
	ld   de, $1111                                   ; $5962: $11 $11 $11
	db   $f4                                         ; $5965: $f4
	rla                                              ; $5966: $17
	rst  $38                                         ; $5967: $ff
	rst  $38                                         ; $5968: $ff
	rst  $38                                         ; $5969: $ff
	rst  $30                                         ; $596a: $f7
	ld   de, $1171                                   ; $596b: $11 $71 $11

jr_0bc_596e:
	ld   a, [de]                                     ; $596e: $1a
	adc  b                                           ; $596f: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5970: $cf
	rst  $38                                         ; $5971: $ff
	rst  $38                                         ; $5972: $ff
	cp   $31                                         ; $5973: $fe $31
	ld   de, $1111                                   ; $5975: $11 $11 $11
	sbc  a                                           ; $5978: $9f
	ld   de, $fdff                                   ; $5979: $11 $ff $fd
	rst  $38                                         ; $597c: $ff
	push af                                          ; $597d: $f5
	ld   de, $1114                                   ; $597e: $11 $14 $11
	ccf                                              ; $5981: $3f
	db   $ed                                         ; $5982: $ed
	rst  $38                                         ; $5983: $ff
	rst  $38                                         ; $5984: $ff
	ld   [$11fd], a                                  ; $5985: $ea $fd $11
	ld   [de], a                                     ; $5988: $12
	ld   de, $1b11                                   ; $5989: $11 $11 $1b
	pop  af                                          ; $598c: $f1
	cpl                                              ; $598d: $2f
	rst  $38                                         ; $598e: $ff
	ccf                                              ; $598f: $3f
	db   $eb                                         ; $5990: $eb
	ld   hl, $8114                                   ; $5991: $21 $14 $81
	dec  de                                          ; $5994: $1b
	db   $fc                                         ; $5995: $fc
	cp   a                                           ; $5996: $bf
	rst  $38                                         ; $5997: $ff
	ld   [$937b], a                                  ; $5998: $ea $7b $93
	dec  h                                           ; $599b: $25
	and  [hl]                                        ; $599c: $a6
	ld   h, a                                        ; $599d: $67
	ld   h, l                                        ; $599e: $65
	ld   de, $11df                                   ; $599f: $11 $df $11
	rst  $38                                         ; $59a2: $ff
	or   e                                           ; $59a3: $b3
	rst  $28                                         ; $59a4: $ef
	rst  $30                                         ; $59a5: $f7
	inc  de                                          ; $59a6: $13
	cp   c                                           ; $59a7: $b9
	ld   de, $87ab                                   ; $59a8: $11 $ab $87
	sbc  $fc                                         ; $59ab: $de $fc
	sbc  h                                           ; $59ad: $9c
	ld   sp, hl                                      ; $59ae: $f9
	jr   c, @-$77                                    ; $59af: $38 $87

	ld   h, a                                        ; $59b1: $67
	add  a                                           ; $59b2: $87
	ld   b, c                                        ; $59b3: $41
	ld   [de], a                                     ; $59b4: $12
	db   $f4                                         ; $59b5: $f4
	dec  e                                           ; $59b6: $1d
	rst  $38                                         ; $59b7: $ff
	ld   a, [hl-]                                    ; $59b8: $3a
	cp   $b1                                         ; $59b9: $fe $b1
	jr   jr_0bc_596e                                 ; $59bb: $18 $b1

	ld   a, [de]                                     ; $59bd: $1a
	call c, $ef6c                                    ; $59be: $dc $6c $ef
	or   $9e                                         ; $59c1: $f6 $9e
	pop  hl                                          ; $59c3: $e1
	jr   z, @-$57                                    ; $59c4: $28 $a7

	ld   e, d                                        ; $59c6: $5a
	cp   h                                           ; $59c7: $bc
	ld   h, e                                        ; $59c8: $63
	ld   de, $b119                                   ; $59c9: $11 $19 $b1
	ld   c, a                                        ; $59cc: $4f
	ld   sp, hl                                      ; $59cd: $f9
	sbc  a                                           ; $59ce: $9f
	jp   hl                                          ; $59cf: $e9


	ld   b, h                                        ; $59d0: $44
	ld   b, l                                        ; $59d1: $45
	ld   hl, $ba59                                   ; $59d2: $21 $59 $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59d5: $cf
	rst  $38                                         ; $59d6: $ff
	sbc  b                                           ; $59d7: $98
	adc  c                                           ; $59d8: $89
	inc  sp                                          ; $59d9: $33
	ld   h, l                                        ; $59da: $65
	ld   a, b                                        ; $59db: $78
	sbc  d                                           ; $59dc: $9a
	db   $dd                                         ; $59dd: $dd
	sbc  b                                           ; $59de: $98
	sub  a                                           ; $59df: $97
	ld   sp, $1511                                   ; $59e0: $31 $11 $15
	db   $f4                                         ; $59e3: $f4
	rra                                              ; $59e4: $1f
	rst  $38                                         ; $59e5: $ff
	ld   l, [hl]                                     ; $59e6: $6e
	sub  $31                                         ; $59e7: $d6 $31
	inc  sp                                          ; $59e9: $33
	ld   h, c                                        ; $59ea: $61
	ld   a, l                                        ; $59eb: $7d
	rst  $38                                         ; $59ec: $ff
	xor  [hl]                                        ; $59ed: $ae
	call c, $6643                                    ; $59ee: $dc $43 $66
	ld   b, d                                        ; $59f1: $42
	sbc  l                                           ; $59f2: $9d
	cp   c                                           ; $59f3: $b9
	cp   l                                           ; $59f4: $bd
	cp   d                                           ; $59f5: $ba
	ld   d, l                                        ; $59f6: $55
	ld   h, l                                        ; $59f7: $65
	ld   [hl+], a                                    ; $59f8: $22
	ld   d, [hl]                                     ; $59f9: $56
	ld   d, l                                        ; $59fa: $55
	ld   b, e                                        ; $59fb: $43
	rst  $38                                         ; $59fc: $ff
	ld   d, $ff                                      ; $59fd: $16 $ff
	ld   sp, $53c8                                   ; $59ff: $31 $c8 $53
	ld   e, b                                        ; $5a02: $58
	xor  d                                           ; $5a03: $aa
	ld   c, e                                        ; $5a04: $4b
	db   $dd                                         ; $5a05: $dd
	ld   h, [hl]                                     ; $5a06: $66
	sub  a                                           ; $5a07: $97
	ld   [hl], d                                     ; $5a08: $72
	ld   h, a                                        ; $5a09: $67
	add  a                                           ; $5a0a: $87
	adc  l                                           ; $5a0b: $8d

jr_0bc_5a0c:
	call z, $88cc                                    ; $5a0c: $cc $cc $88
	sub  l                                           ; $5a0f: $95
	inc  [hl]                                        ; $5a10: $34
	ld   h, l                                        ; $5a11: $65
	ld   h, a                                        ; $5a12: $67
	ld   a, c                                        ; $5a13: $79
	sbc  b                                           ; $5a14: $98
	ld   d, d                                        ; $5a15: $52
	rst  JumpTable                                         ; $5a16: $df
	ld   [de], a                                     ; $5a17: $12
	db   $fd                                         ; $5a18: $fd
	ld   d, h                                        ; $5a19: $54
	db   $db                                         ; $5a1a: $db
	ld   [hl], a                                     ; $5a1b: $77
	ld   [hl], a                                     ; $5a1c: $77
	sbc  b                                           ; $5a1d: $98
	ld   b, [hl]                                     ; $5a1e: $46
	sbc  d                                           ; $5a1f: $9a
	ld   h, l                                        ; $5a20: $65
	xor  e                                           ; $5a21: $ab
	sub  a                                           ; $5a22: $97
	adc  d                                           ; $5a23: $8a
	sub  a                                           ; $5a24: $97
	ld   l, b                                        ; $5a25: $68
	sub  a                                           ; $5a26: $97
	ld   a, b                                        ; $5a27: $78
	xor  d                                           ; $5a28: $aa
	xor  c                                           ; $5a29: $a9
	xor  c                                           ; $5a2a: $a9
	sbc  b                                           ; $5a2b: $98
	ld   [hl], a                                     ; $5a2c: $77
	halt                                             ; $5a2d: $76
	ld   h, [hl]                                     ; $5a2e: $66
	ld   [hl], a                                     ; $5a2f: $77
	ld   h, [hl]                                     ; $5a30: $66
	dec  [hl]                                        ; $5a31: $35
	ld   sp, hl                                      ; $5a32: $f9
	inc  e                                           ; $5a33: $1c
	ld   sp, hl                                      ; $5a34: $f9
	jr   z, jr_0bc_5a0c                              ; $5a35: $28 $d5

	ld   d, a                                        ; $5a37: $57
	ld   d, a                                        ; $5a38: $57
	and  a                                           ; $5a39: $a7
	ld   e, d                                        ; $5a3a: $5a
	reti                                             ; $5a3b: $d9


	ld   l, c                                        ; $5a3c: $69
	and  a                                           ; $5a3d: $a7
	ld   h, [hl]                                     ; $5a3e: $66
	ld   a, b                                        ; $5a3f: $78
	halt                                             ; $5a40: $76
	adc  d                                           ; $5a41: $8a
	xor  b                                           ; $5a42: $a8
	adc  d                                           ; $5a43: $8a
	sbc  b                                           ; $5a44: $98
	ld   [hl], a                                     ; $5a45: $77
	add  a                                           ; $5a46: $87
	ld   a, b                                        ; $5a47: $78
	xor  d                                           ; $5a48: $aa
	adc  c                                           ; $5a49: $89
	sbc  c                                           ; $5a4a: $99
	halt                                             ; $5a4b: $76
	ld   h, [hl]                                     ; $5a4c: $66
	ld   d, l                                        ; $5a4d: $55
	ld   d, l                                        ; $5a4e: $55
	ld   a, [hl-]                                    ; $5a4f: $3a
	push af                                          ; $5a50: $f5
	cpl                                              ; $5a51: $2f
	push af                                          ; $5a52: $f5
	ld   e, h                                        ; $5a53: $5c
	and  e                                           ; $5a54: $a3
	ld   d, a                                        ; $5a55: $57
	ld   b, a                                        ; $5a56: $47
	or   [hl]                                        ; $5a57: $b6
	ld   a, l                                        ; $5a58: $7d
	cp   b                                           ; $5a59: $b8
	adc  d                                           ; $5a5a: $8a
	sub  l                                           ; $5a5b: $95
	ld   d, a                                        ; $5a5c: $57
	halt                                             ; $5a5d: $76
	ld   h, a                                        ; $5a5e: $67
	sbc  d                                           ; $5a5f: $9a
	xor  c                                           ; $5a60: $a9
	sbc  d                                           ; $5a61: $9a
	sub  a                                           ; $5a62: $97
	ld   [hl], a                                     ; $5a63: $77
	ld   [hl], a                                     ; $5a64: $77
	ld   a, b                                        ; $5a65: $78
	sbc  d                                           ; $5a66: $9a
	xor  b                                           ; $5a67: $a8
	xor  e                                           ; $5a68: $ab
	sub  a                                           ; $5a69: $97
	adc  b                                           ; $5a6a: $88
	ld   h, [hl]                                     ; $5a6b: $66
	ld   h, [hl]                                     ; $5a6c: $66
	ld   h, a                                        ; $5a6d: $67
	ld   h, a                                        ; $5a6e: $67
	ld   [hl], l                                     ; $5a6f: $75
	xor  a                                           ; $5a70: $af
	ld   h, c                                        ; $5a71: $61
	xor  $34                                         ; $5a72: $ee $34
	xor  b                                           ; $5a74: $a8
	ld   d, [hl]                                     ; $5a75: $56
	adc  b                                           ; $5a76: $88
	xor  d                                           ; $5a77: $aa
	ld   h, a                                        ; $5a78: $67
	cp   d                                           ; $5a79: $ba
	ld   h, [hl]                                     ; $5a7a: $66
	adc  c                                           ; $5a7b: $89
	ld   h, [hl]                                     ; $5a7c: $66
	adc  b                                           ; $5a7d: $88
	adc  c                                           ; $5a7e: $89
	sbc  c                                           ; $5a7f: $99
	xor  c                                           ; $5a80: $a9
	ld   a, b                                        ; $5a81: $78
	adc  b                                           ; $5a82: $88
	ld   h, a                                        ; $5a83: $67
	adc  b                                           ; $5a84: $88
	adc  b                                           ; $5a85: $88
	sbc  c                                           ; $5a86: $99
	sbc  c                                           ; $5a87: $99
	adc  b                                           ; $5a88: $88
	add  a                                           ; $5a89: $87
	ld   [hl], a                                     ; $5a8a: $77
	adc  b                                           ; $5a8b: $88
	add  a                                           ; $5a8c: $87
	sbc  c                                           ; $5a8d: $99
	xor  h                                           ; $5a8e: $ac
	sub  a                                           ; $5a8f: $97
	sbc  c                                           ; $5a90: $99
	ld   h, l                                        ; $5a91: $65
	ld   h, [hl]                                     ; $5a92: $66
	ld   h, [hl]                                     ; $5a93: $66
	ld   a, c                                        ; $5a94: $79
	sbc  c                                           ; $5a95: $99
	adc  h                                           ; $5a96: $8c
	push bc                                          ; $5a97: $c5
	ld   a, e                                        ; $5a98: $7b
	ld   [hl], h                                     ; $5a99: $74
	ld   a, c                                        ; $5a9a: $79
	ld   h, [hl]                                     ; $5a9b: $66
	sbc  c                                           ; $5a9c: $99
	adc  d                                           ; $5a9d: $8a
	sbc  b                                           ; $5a9e: $98
	sbc  c                                           ; $5a9f: $99
	halt                                             ; $5aa0: $76
	ld   [hl], a                                     ; $5aa1: $77
	halt                                             ; $5aa2: $76
	ld   a, c                                        ; $5aa3: $79
	sbc  c                                           ; $5aa4: $99
	sbc  c                                           ; $5aa5: $99
	sbc  c                                           ; $5aa6: $99
	add  a                                           ; $5aa7: $87
	add  a                                           ; $5aa8: $87
	ld   [hl], a                                     ; $5aa9: $77
	adc  b                                           ; $5aaa: $88
	adc  b                                           ; $5aab: $88
	adc  c                                           ; $5aac: $89
	sbc  b                                           ; $5aad: $98
	adc  b                                           ; $5aae: $88
	add  a                                           ; $5aaf: $87
	ld   [hl], a                                     ; $5ab0: $77
	ld   a, b                                        ; $5ab1: $78
	adc  b                                           ; $5ab2: $88
	adc  c                                           ; $5ab3: $89
	sbc  b                                           ; $5ab4: $98
	adc  b                                           ; $5ab5: $88
	adc  b                                           ; $5ab6: $88
	ld   [hl], a                                     ; $5ab7: $77
	ld   a, b                                        ; $5ab8: $78
	adc  b                                           ; $5ab9: $88
	sbc  c                                           ; $5aba: $99
	adc  b                                           ; $5abb: $88
	adc  c                                           ; $5abc: $89
	adc  b                                           ; $5abd: $88
	ld   [hl], a                                     ; $5abe: $77
	ld   [hl], a                                     ; $5abf: $77
	ld   a, b                                        ; $5ac0: $78
	adc  b                                           ; $5ac1: $88
	adc  b                                           ; $5ac2: $88
	sbc  b                                           ; $5ac3: $98
	sbc  c                                           ; $5ac4: $99
	adc  b                                           ; $5ac5: $88
	adc  b                                           ; $5ac6: $88
	halt                                             ; $5ac7: $76
	sbc  b                                           ; $5ac8: $98
	ld   [hl], a                                     ; $5ac9: $77
	sbc  b                                           ; $5aca: $98
	adc  c                                           ; $5acb: $89
	sbc  b                                           ; $5acc: $98
	adc  b                                           ; $5acd: $88
	ld   [hl], a                                     ; $5ace: $77
	sbc  b                                           ; $5acf: $98
	ld   a, b                                        ; $5ad0: $78
	adc  c                                           ; $5ad1: $89
	adc  b                                           ; $5ad2: $88
	sbc  b                                           ; $5ad3: $98
	adc  b                                           ; $5ad4: $88
	adc  b                                           ; $5ad5: $88
	adc  b                                           ; $5ad6: $88
	adc  b                                           ; $5ad7: $88
	sbc  b                                           ; $5ad8: $98
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
	add  c                                           ; $5b0d: $81
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
	ld   de, $1811                                   ; $5b56: $11 $11 $18
	ld   [hl], c                                     ; $5b59: $71
	ld   de, $d11c                                   ; $5b5a: $11 $1c $d1
	call c, $d1d1                                    ; $5b5d: $dc $d1 $d1
	ld   de, $1111                                   ; $5b60: $11 $11 $11
	ld   de, $1111                                   ; $5b63: $11 $11 $11
	ld   de, $1111                                   ; $5b66: $11 $11 $11
	ld   de, $1111                                   ; $5b69: $11 $11 $11
	ld   de, $5411                                   ; $5b6c: $11 $11 $54
	ld   b, h                                        ; $5b6f: $44
	ld   a, b                                        ; $5b70: $78
	ld   de, $5454                                   ; $5b71: $11 $54 $54
	ld   h, a                                        ; $5b74: $67
	ld   [hl], d                                     ; $5b75: $72
	ld   de, $1111                                   ; $5b76: $11 $11 $11
	ld   de, $1112                                   ; $5b79: $11 $12 $11
	ld   [de], a                                     ; $5b7c: $12
	ld   de, $1111                                   ; $5b7d: $11 $11 $11
	ld   h, [hl]                                     ; $5b80: $66
	halt                                             ; $5b81: $76
	ld   c, b                                        ; $5b82: $48
	ld   de, $9789                                   ; $5b83: $11 $89 $97
	ld   h, h                                        ; $5b86: $64
	ld   hl, $1f11                                   ; $5b87: $21 $11 $1f
	rst  $38                                         ; $5b8a: $ff
	pop  af                                          ; $5b8b: $f1
	ld   de, $cf19                                   ; $5b8c: $11 $19 $cf
	rst  $38                                         ; $5b8f: $ff
	jp   nz, Jump_0bc_4c11                           ; $5b90: $c2 $11 $4c

	rst  $38                                         ; $5b93: $ff
	db   $fd                                         ; $5b94: $fd
	and  [hl]                                        ; $5b95: $a6
	ld   de, $ff3a                                   ; $5b96: $11 $3a $ff
	ei                                               ; $5b99: $fb
	ld   h, h                                        ; $5b9a: $64
	ld   hl, $4225                                   ; $5b9b: $21 $25 $42
	ld   de, $ffcf                                   ; $5b9e: $11 $cf $ff
	ld   de, $ef11                                   ; $5ba1: $11 $11 $ef
	rst  $38                                         ; $5ba4: $ff
	ld   [$1551], a                                  ; $5ba5: $ea $51 $15
	rst  JumpTable                                         ; $5ba8: $df
	rst  $38                                         ; $5ba9: $ff
	rst  $10                                         ; $5baa: $d7
	ld   hl, $df13                                   ; $5bab: $21 $13 $df
	db   $fd                                         ; $5bae: $fd
	ld   d, c                                        ; $5baf: $51
	ld   de, $1123                                   ; $5bb0: $11 $23 $11
	inc  de                                          ; $5bb3: $13
	rst  $38                                         ; $5bb4: $ff
	ld   hl, sp+$11                                  ; $5bb5: $f8 $11
	inc  e                                           ; $5bb7: $1c
	rst  $38                                         ; $5bb8: $ff
	rst  $38                                         ; $5bb9: $ff
	and  d                                           ; $5bba: $a2
	ld   de, $ff2e                                   ; $5bbb: $11 $2e $ff
	cp   $41                                         ; $5bbe: $fe $41
	ld   de, $ff5f                                   ; $5bc0: $11 $5f $ff
	add  c                                           ; $5bc3: $81
	ld   de, $1f11                                   ; $5bc4: $11 $11 $1f
	rst  $38                                         ; $5bc7: $ff
	pop  af                                          ; $5bc8: $f1
	ld   de, $ff5f                                   ; $5bc9: $11 $5f $ff
	rst  $38                                         ; $5bcc: $ff
	ld   b, c                                        ; $5bcd: $41
	ld   de, $ffaf                                   ; $5bce: $11 $af $ff
	ld   a, [$1111]                                  ; $5bd1: $fa $11 $11
	rst  $38                                         ; $5bd4: $ff
	db   $fc                                         ; $5bd5: $fc
	ld   de, $1111                                   ; $5bd6: $11 $11 $11
	rra                                              ; $5bd9: $1f
	rst  $38                                         ; $5bda: $ff
	pop  bc                                          ; $5bdb: $c1
	ld   de, $ffcf                                   ; $5bdc: $11 $cf $ff
	rst  $38                                         ; $5bdf: $ff
	ld   hl, rAUD1LEN                                   ; $5be0: $21 $11 $ff
	rst  $38                                         ; $5be3: $ff
	ld   hl, sp+$11                                  ; $5be4: $f8 $11
	ld   de, $fbff                                   ; $5be6: $11 $ff $fb
	ld   de, $1111                                   ; $5be9: $11 $11 $11
	rst  $38                                         ; $5bec: $ff
	rst  $38                                         ; $5bed: $ff
	ld   de, rAUD1LEN                                   ; $5bee: $11 $11 $ff
	rst  $38                                         ; $5bf1: $ff
	db   $fc                                         ; $5bf2: $fc
	ld   de, $ff19                                   ; $5bf3: $11 $19 $ff
	rst  $38                                         ; $5bf6: $ff
	db   $e4                                         ; $5bf7: $e4
	ld   de, $ff1b                                   ; $5bf8: $11 $1b $ff
	pop  af                                          ; $5bfb: $f1
	ld   de, $1111                                   ; $5bfc: $11 $11 $11
	rst  $38                                         ; $5bff: $ff
	rst  $38                                         ; $5c00: $ff
	ld   de, $ff15                                   ; $5c01: $11 $15 $ff
	rst  $38                                         ; $5c04: $ff
	or   $11                                         ; $5c05: $f6 $11
	rra                                              ; $5c07: $1f
	rst  $38                                         ; $5c08: $ff
	rst  $38                                         ; $5c09: $ff
	jp   nc, $1d11                                   ; $5c0a: $d2 $11 $1d

	rst  $38                                         ; $5c0d: $ff
	pop  af                                          ; $5c0e: $f1
	ld   de, $1f11                                   ; $5c0f: $11 $11 $1f
	rst  $38                                         ; $5c12: $ff
	pop  af                                          ; $5c13: $f1
	ld   de, $ff1f                                   ; $5c14: $11 $1f $ff
	rst  $38                                         ; $5c17: $ff
	pop  hl                                          ; $5c18: $e1
	ld   de, $ff9f                                   ; $5c19: $11 $9f $ff
	rst  $38                                         ; $5c1c: $ff
	ld   d, c                                        ; $5c1d: $51
	ld   de, $ffaf                                   ; $5c1e: $11 $af $ff
	ld   de, $1f11                                   ; $5c21: $11 $11 $1f
	rst  $38                                         ; $5c24: $ff
	di                                               ; $5c25: $f3
	ld   de, $ff1a                                   ; $5c26: $11 $1a $ff
	rst  $38                                         ; $5c29: $ff
	pop  hl                                          ; $5c2a: $e1
	ld   de, $ff2f                                   ; $5c2b: $11 $2f $ff
	rst  $38                                         ; $5c2e: $ff
	ld   [hl], c                                     ; $5c2f: $71
	ld   de, $ff2f                                   ; $5c30: $11 $2f $ff
	ld   de, $1f11                                   ; $5c33: $11 $11 $1f
	rst  $38                                         ; $5c36: $ff
	pop  af                                          ; $5c37: $f1
	ld   de, $ff1f                                   ; $5c38: $11 $1f $ff
	rst  $38                                         ; $5c3b: $ff
	and  c                                           ; $5c3c: $a1
	ld   de, $ffbf                                   ; $5c3d: $11 $bf $ff
	rst  $38                                         ; $5c40: $ff
	ld   hl, $af11                                   ; $5c41: $21 $11 $af
	ld   hl, sp+$11                                  ; $5c44: $f8 $11
	ld   de, $ff5f                                   ; $5c46: $11 $5f $ff
	ld   sp, $df11                                   ; $5c49: $31 $11 $df
	rst  $38                                         ; $5c4c: $ff
	rst  $38                                         ; $5c4d: $ff
	ld   de, rAUD1ENV                                   ; $5c4e: $11 $12 $ff
	rst  $38                                         ; $5c51: $ff
	ei                                               ; $5c52: $fb
	ld   de, rAUD1LEN                                   ; $5c53: $11 $11 $ff
	pop  af                                          ; $5c56: $f1
	ld   de, rAUD1LEN                                   ; $5c57: $11 $11 $ff
	rst  $38                                         ; $5c5a: $ff
	ld   de, rAUD1LEN                                   ; $5c5b: $11 $11 $ff
	rst  $38                                         ; $5c5e: $ff
	ei                                               ; $5c5f: $fb
	ld   de, $ff18                                   ; $5c60: $11 $18 $ff
	rst  $38                                         ; $5c63: $ff
	pop  af                                          ; $5c64: $f1
	ld   de, $ff1e                                   ; $5c65: $11 $1e $ff
	ld   sp, $1f11                                   ; $5c68: $31 $11 $1f
	rst  $38                                         ; $5c6b: $ff
	pop  af                                          ; $5c6c: $f1
	ld   de, $ef1d                                   ; $5c6d: $11 $1d $ef
	rst  $38                                         ; $5c70: $ff
	pop  af                                          ; $5c71: $f1
	ld   de, $ff4f                                   ; $5c72: $11 $4f $ff
	rst  $38                                         ; $5c75: $ff
	add  c                                           ; $5c76: $81
	ld   de, $f95f                                   ; $5c77: $11 $5f $f9
	ld   de, $1f11                                   ; $5c7a: $11 $11 $1f
	rst  $38                                         ; $5c7d: $ff
	ld   sp, $9c11                                   ; $5c7e: $31 $11 $9c
	rst  $38                                         ; $5c81: $ff
	rst  $38                                         ; $5c82: $ff
	ld   de, $cf11                                   ; $5c83: $11 $11 $cf
	rst  $38                                         ; $5c86: $ff
	cp   $11                                         ; $5c87: $fe $11
	ld   de, $e1ff                                   ; $5c89: $11 $ff $e1
	ld   de, rAUD1LEN                                   ; $5c8c: $11 $11 $ff
	rst  $38                                         ; $5c8f: $ff
	ld   de, $9f11                                   ; $5c90: $11 $11 $9f
	rst  $38                                         ; $5c93: $ff
	rst  $30                                         ; $5c94: $f7
	ld   de, $ff16                                   ; $5c95: $11 $16 $ff
	rst  $38                                         ; $5c98: $ff
	pop  af                                          ; $5c99: $f1
	ld   de, $ff1d                                   ; $5c9a: $11 $1d $ff
	ld   hl, $1f11                                   ; $5c9d: $21 $11 $1f
	rst  $38                                         ; $5ca0: $ff
	pop  af                                          ; $5ca1: $f1
	ld   de, $bf15                                   ; $5ca2: $11 $15 $bf
	rst  $38                                         ; $5ca5: $ff
	pop  bc                                          ; $5ca6: $c1
	ld   de, $ff5e                                   ; $5ca7: $11 $5e $ff
	rst  $38                                         ; $5caa: $ff
	ld   d, c                                        ; $5cab: $51
	ld   de, $f59f                                   ; $5cac: $11 $9f $f5
	ld   de, rAUD1LEN                                   ; $5caf: $11 $11 $ff
	rst  $38                                         ; $5cb2: $ff
	ld   de, $3511                                   ; $5cb3: $11 $11 $35
	rst  $38                                         ; $5cb6: $ff
	rst  $38                                         ; $5cb7: $ff
	ld   hl, $af13                                   ; $5cb8: $21 $13 $af
	rst  $38                                         ; $5cbb: $ff
	ei                                               ; $5cbc: $fb
	ld   de, $cf13                                   ; $5cbd: $11 $13 $cf
	sub  c                                           ; $5cc0: $91
	ld   de, rAUD1LOW                                   ; $5cc1: $11 $13 $ff
	pop  af                                          ; $5cc4: $f1
	ld   de, $1f11                                   ; $5cc5: $11 $11 $1f
	rst  $38                                         ; $5cc8: $ff
	push af                                          ; $5cc9: $f5
	inc  h                                           ; $5cca: $24
	inc  sp                                          ; $5ccb: $33
	rst  $38                                         ; $5ccc: $ff
	rst  $38                                         ; $5ccd: $ff
	pop  af                                          ; $5cce: $f1
	ld   de, wResetSaveDataReturnSubstate                                   ; $5ccf: $11 $18 $c9
	ld   de, $1f11                                   ; $5cd2: $11 $11 $1f
	rst  $38                                         ; $5cd5: $ff
	ld   h, c                                        ; $5cd6: $61
	ld   de, rAUD1LEN                                   ; $5cd7: $11 $11 $ff
	rst  $38                                         ; $5cda: $ff
	add  l                                           ; $5cdb: $85
	ld   [hl], l                                     ; $5cdc: $75
	inc  e                                           ; $5cdd: $1c
	rst  $38                                         ; $5cde: $ff
	rst  $38                                         ; $5cdf: $ff
	ld   de, $3a11                                   ; $5ce0: $11 $11 $3a
	and  c                                           ; $5ce3: $a1
	ld   de, rAUD1LEN                                   ; $5ce4: $11 $11 $ff
	db   $fc                                         ; $5ce7: $fc
	ld   de, $1911                                   ; $5ce8: $11 $11 $19
	rst  $38                                         ; $5ceb: $ff
	ei                                               ; $5cec: $fb
	ld   a, d                                        ; $5ced: $7a
	ld   h, c                                        ; $5cee: $61
	xor  a                                           ; $5cef: $af
	rst  $38                                         ; $5cf0: $ff
	pop  af                                          ; $5cf1: $f1
	ld   de, $4711                                   ; $5cf2: $11 $11 $47
	ld   hl, $1f11                                   ; $5cf5: $21 $11 $1f
	rst  $38                                         ; $5cf8: $ff
	add  c                                           ; $5cf9: $81
	ld   h, c                                        ; $5cfa: $61
	ld   de, $ff9f                                   ; $5cfb: $11 $9f $ff
	cp   h                                           ; $5cfe: $bc
	ret  c                                           ; $5cff: $d8

	rla                                              ; $5d00: $17
	rst  $38                                         ; $5d01: $ff
	rst  $38                                         ; $5d02: $ff
	ld   b, c                                        ; $5d03: $41
	ld   de, $6212                                   ; $5d04: $11 $12 $62
	ld   de, rAUD1LEN                                   ; $5d07: $11 $11 $ff
	db   $fc                                         ; $5d0a: $fc
	add  hl, de                                      ; $5d0b: $19
	ld   hl, $ff15                                   ; $5d0c: $21 $15 $ff
	db   $fc                                         ; $5d0f: $fc
	rst  $28                                         ; $5d10: $ef
	or   c                                           ; $5d11: $b1
	ld   l, a                                        ; $5d12: $6f
	rst  $38                                         ; $5d13: $ff
	or   $11                                         ; $5d14: $f6 $11
	ld   de, $1104                                   ; $5d16: $11 $04 $11
	ld   de, $ff1f                                   ; $5d19: $11 $1f $ff
	or   h                                           ; $5d1c: $b4
	or   h                                           ; $5d1d: $b4
	ld   de, $ff5f                                   ; $5d1e: $11 $5f $ff
	rst  $28                                         ; $5d21: $ef
	db   $fc                                         ; $5d22: $fc
	dec  d                                           ; $5d23: $15
	rst  $38                                         ; $5d24: $ff
	rst  $38                                         ; $5d25: $ff
	sub  d                                           ; $5d26: $92
	ld   de, $4211                                   ; $5d27: $11 $11 $42
	ld   de, rAUD1LEN                                   ; $5d2a: $11 $11 $ff
	db   $fc                                         ; $5d2d: $fc
	ld   c, a                                        ; $5d2e: $4f
	ld   [hl], c                                     ; $5d2f: $71
	ld   de, $ecff                                   ; $5d30: $11 $ff $ec
	rst  $38                                         ; $5d33: $ff
	ldh  a, [c]                                      ; $5d34: $f2
	ld   c, a                                        ; $5d35: $4f
	rst  $38                                         ; $5d36: $ff
	ei                                               ; $5d37: $fb
	ld   d, d                                        ; $5d38: $52
	ld   de, $1112                                   ; $5d39: $11 $12 $11
	ld   de, $ff1f                                   ; $5d3c: $11 $1f $ff
	ld   hl, sp-$07                                  ; $5d3f: $f8 $f9
	ld   de, $fd1d                                   ; $5d41: $11 $1d $fd
	cp   a                                           ; $5d44: $bf
	rst  $38                                         ; $5d45: $ff
	ld   h, l                                        ; $5d46: $65
	rst  $38                                         ; $5d47: $ff
	rst  $38                                         ; $5d48: $ff
	reti                                             ; $5d49: $d9


	ld   d, c                                        ; $5d4a: $51
	ld   de, $1111                                   ; $5d4b: $11 $11 $11
	ld   de, $ff5f                                   ; $5d4e: $11 $5f $ff
	sbc  [hl]                                        ; $5d51: $9e
	db   $f4                                         ; $5d52: $f4
	ld   de, $e86f                                   ; $5d53: $11 $6f $e8
	rst  $38                                         ; $5d56: $ff
	db   $fd                                         ; $5d57: $fd
	ld   l, l                                        ; $5d58: $6d
	rst  $38                                         ; $5d59: $ff
	rst  $38                                         ; $5d5a: $ff
	xor  b                                           ; $5d5b: $a8
	ld   b, c                                        ; $5d5c: $41
	ld   de, $1111                                   ; $5d5d: $11 $11 $11
	ld   de, $ffff                                   ; $5d60: $11 $ff $ff
	xor  a                                           ; $5d63: $af
	jp   nz, $9d11                                   ; $5d64: $c2 $11 $9d

	sbc  c                                           ; $5d67: $99
	rst  $38                                         ; $5d68: $ff
	ei                                               ; $5d69: $fb
	xor  a                                           ; $5d6a: $af
	rst  $38                                         ; $5d6b: $ff
	ei                                               ; $5d6c: $fb
	cp   d                                           ; $5d6d: $ba
	ld   d, c                                        ; $5d6e: $51
	ld   de, $1111                                   ; $5d6f: $11 $11 $11
	ld   de, $fcff                                   ; $5d72: $11 $ff $fc
	rst  JumpTable                                         ; $5d75: $df
	or   e                                           ; $5d76: $b3
	inc  d                                           ; $5d77: $14
	xor  h                                           ; $5d78: $ac
	ld   l, b                                        ; $5d79: $68
	rst  $38                                         ; $5d7a: $ff
	ei                                               ; $5d7b: $fb
	rst  $28                                         ; $5d7c: $ef
	rst  $38                                         ; $5d7d: $ff
	ei                                               ; $5d7e: $fb
	xor  d                                           ; $5d7f: $aa
	ld   [hl], e                                     ; $5d80: $73
	ld   de, $1111                                   ; $5d81: $11 $11 $11
	ld   de, $e9ee                                   ; $5d84: $11 $ee $e9
	rst  $28                                         ; $5d87: $ef
	or   [hl]                                        ; $5d88: $b6
	ld   b, a                                        ; $5d89: $47
	cp   c                                           ; $5d8a: $b9
	ld   l, b                                        ; $5d8b: $68
	rst  JumpTable                                         ; $5d8c: $df
	db   $fd                                         ; $5d8d: $fd
	rst  $28                                         ; $5d8e: $ef
	rst  $38                                         ; $5d8f: $ff
	ei                                               ; $5d90: $fb
	call z, $11a4                                    ; $5d91: $cc $a4 $11
	ld   de, $1111                                   ; $5d94: $11 $11 $11
	sbc  c                                           ; $5d97: $99
	add  [hl]                                        ; $5d98: $86
	xor  h                                           ; $5d99: $ac
	cp   c                                           ; $5d9a: $b9
	adc  c                                           ; $5d9b: $89
	xor  d                                           ; $5d9c: $aa
	ld   a, c                                        ; $5d9d: $79
	cp   l                                           ; $5d9e: $bd
	call c, $ffce                                    ; $5d9f: $dc $ce $ff
	set  1, l                                        ; $5da2: $cb $cd
	db   $eb                                         ; $5da4: $eb
	xor  c                                           ; $5da5: $a9
	add  a                                           ; $5da6: $87
	ld   d, h                                        ; $5da7: $54
	ld   b, h                                        ; $5da8: $44
	ld   d, h                                        ; $5da9: $54
	ld   hl, $1111                                   ; $5daa: $21 $11 $11
	ld   de, $5713                                   ; $5dad: $11 $13 $57
	sbc  d                                           ; $5db0: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5db1: $cf
	rst  $38                                         ; $5db2: $ff
	rst  $38                                         ; $5db3: $ff
	rst  $38                                         ; $5db4: $ff
	rst  $38                                         ; $5db5: $ff
	rst  $38                                         ; $5db6: $ff
	rst  $38                                         ; $5db7: $ff
	jp   z, $8698                                    ; $5db8: $ca $98 $86

	ld   sp, $1101                                   ; $5dbb: $31 $01 $11
	ld   de, $1111                                   ; $5dbe: $11 $11 $11
	inc  d                                           ; $5dc1: $14
	ld   h, a                                        ; $5dc2: $67
	sbc  e                                           ; $5dc3: $9b
	rst  JumpTable                                         ; $5dc4: $df
	rst  $38                                         ; $5dc5: $ff
	rst  $38                                         ; $5dc6: $ff
	rst  $38                                         ; $5dc7: $ff
	rst  $38                                         ; $5dc8: $ff
	rst  $38                                         ; $5dc9: $ff
	cp   $dc                                         ; $5dca: $fe $dc
	res  2, a                                        ; $5dcc: $cb $97
	ld   b, c                                        ; $5dce: $41
	ld   de, $1111                                   ; $5dcf: $11 $11 $11
	ld   de, $1211                                   ; $5dd2: $11 $11 $12
	ld   d, a                                        ; $5dd5: $57
	ld   a, c                                        ; $5dd6: $79
	cp   a                                           ; $5dd7: $bf
	rst  $38                                         ; $5dd8: $ff
	rst  $38                                         ; $5dd9: $ff
	rst  $38                                         ; $5dda: $ff
	rst  $38                                         ; $5ddb: $ff
	rst  $38                                         ; $5ddc: $ff
	rst  $38                                         ; $5ddd: $ff
	db   $ed                                         ; $5dde: $ed
	db   $ec                                         ; $5ddf: $ec
	xor  b                                           ; $5de0: $a8
	ld   h, h                                        ; $5de1: $64
	ld   hl, $1111                                   ; $5de2: $21 $11 $11
	ld   de, $1111                                   ; $5de5: $11 $11 $11
	dec  h                                           ; $5de8: $25
	ld   a, c                                        ; $5de9: $79
	xor  l                                           ; $5dea: $ad
	rst  $28                                         ; $5deb: $ef
	rst  $38                                         ; $5dec: $ff
	rst  $38                                         ; $5ded: $ff
	rst  $38                                         ; $5dee: $ff
	rst  $38                                         ; $5def: $ff
	rst  $38                                         ; $5df0: $ff
	db   $fd                                         ; $5df1: $fd
	db   $ed                                         ; $5df2: $ed
	db   $db                                         ; $5df3: $db
	add  l                                           ; $5df4: $85
	ld   sp, $1111                                   ; $5df5: $31 $11 $11
	ld   de, $1111                                   ; $5df8: $11 $11 $11
	inc  d                                           ; $5dfb: $14
	ld   h, a                                        ; $5dfc: $67
	adc  e                                           ; $5dfd: $8b
	adc  $ee                                         ; $5dfe: $ce $ee
	rst  $38                                         ; $5e00: $ff
	rst  $38                                         ; $5e01: $ff
	rst  $38                                         ; $5e02: $ff
	rst  $38                                         ; $5e03: $ff
	rst  $38                                         ; $5e04: $ff
	cp   $ec                                         ; $5e05: $fe $ec
	sub  a                                           ; $5e07: $97
	ld   d, d                                        ; $5e08: $52
	ld   de, $1111                                   ; $5e09: $11 $11 $11
	ld   de, $1211                                   ; $5e0c: $11 $11 $12
	ld   d, [hl]                                     ; $5e0f: $56
	ld   a, b                                        ; $5e10: $78
	cp   l                                           ; $5e11: $bd
	xor  $ff                                         ; $5e12: $ee $ff
	rst  $38                                         ; $5e14: $ff
	rst  $38                                         ; $5e15: $ff
	rst  $38                                         ; $5e16: $ff
	rst  $38                                         ; $5e17: $ff
	rst  $38                                         ; $5e18: $ff
	db   $ed                                         ; $5e19: $ed
	xor  b                                           ; $5e1a: $a8
	ld   h, h                                        ; $5e1b: $64
	ld   de, $1111                                   ; $5e1c: $11 $11 $11
	ld   de, $1111                                   ; $5e1f: $11 $11 $11
	ld   b, l                                        ; $5e22: $45
	ld   l, b                                        ; $5e23: $68
	xor  l                                           ; $5e24: $ad
	xor  $ff                                         ; $5e25: $ee $ff
	rst  $38                                         ; $5e27: $ff
	rst  $38                                         ; $5e28: $ff
	rst  $38                                         ; $5e29: $ff
	rst  $38                                         ; $5e2a: $ff
	rst  $28                                         ; $5e2b: $ef
	xor  $b9                                         ; $5e2c: $ee $b9
	ld   h, h                                        ; $5e2e: $64
	ld   de, $1111                                   ; $5e2f: $11 $11 $11
	ld   de, $1111                                   ; $5e32: $11 $11 $11
	ld   [hl], $79                                   ; $5e35: $36 $79
	xor  [hl]                                        ; $5e37: $ae
	rst  $38                                         ; $5e38: $ff
	rst  $38                                         ; $5e39: $ff
	rst  $38                                         ; $5e3a: $ff
	rst  $38                                         ; $5e3b: $ff
	rst  $38                                         ; $5e3c: $ff
	rst  $38                                         ; $5e3d: $ff
	xor  $ed                                         ; $5e3e: $ee $ed
	cp   b                                           ; $5e40: $b8
	ld   h, h                                        ; $5e41: $64
	ld   hl, $1111                                   ; $5e42: $21 $11 $11
	ld   de, $1111                                   ; $5e45: $11 $11 $11
	ld   b, [hl]                                     ; $5e48: $46
	ld   a, b                                        ; $5e49: $78
	xor  l                                           ; $5e4a: $ad
	cp   $ef                                         ; $5e4b: $fe $ef
	rst  $38                                         ; $5e4d: $ff
	rst  $38                                         ; $5e4e: $ff
	rst  $38                                         ; $5e4f: $ff
	rst  $38                                         ; $5e50: $ff
	xor  $ed                                         ; $5e51: $ee $ed
	cp   c                                           ; $5e53: $b9
	ld   h, h                                        ; $5e54: $64
	ld   hl, $1111                                   ; $5e55: $21 $11 $11
	ld   de, $1111                                   ; $5e58: $11 $11 $11
	ld   b, [hl]                                     ; $5e5b: $46
	ld   a, b                                        ; $5e5c: $78
	cp   l                                           ; $5e5d: $bd
	cp   $ff                                         ; $5e5e: $fe $ff
	rst  $38                                         ; $5e60: $ff
	rst  $38                                         ; $5e61: $ff
	rst  $38                                         ; $5e62: $ff
	rst  $38                                         ; $5e63: $ff
	db   $ed                                         ; $5e64: $ed
	db   $ed                                         ; $5e65: $ed
	cp   b                                           ; $5e66: $b8
	ld   d, e                                        ; $5e67: $53
	ld   de, $1111                                   ; $5e68: $11 $11 $11
	ld   de, $1211                                   ; $5e6b: $11 $11 $12
	ld   d, a                                        ; $5e6e: $57
	adc  c                                           ; $5e6f: $89
	call $efee                                       ; $5e70: $cd $ee $ef
	rst  $38                                         ; $5e73: $ff
	rst  $38                                         ; $5e74: $ff
	rst  $38                                         ; $5e75: $ff
	rst  $38                                         ; $5e76: $ff
	db   $fd                                         ; $5e77: $fd
	db   $ed                                         ; $5e78: $ed
	ret  z                                           ; $5e79: $c8

	ld   d, e                                        ; $5e7a: $53
	ld   de, $1111                                   ; $5e7b: $11 $11 $11
	ld   de, $1211                                   ; $5e7e: $11 $11 $12
	ld   d, a                                        ; $5e81: $57
	adc  c                                           ; $5e82: $89
	cp   [hl]                                        ; $5e83: $be
	rst  $38                                         ; $5e84: $ff
	rst  $38                                         ; $5e85: $ff
	rst  $38                                         ; $5e86: $ff
	rst  $38                                         ; $5e87: $ff
	rst  $38                                         ; $5e88: $ff
	rst  $38                                         ; $5e89: $ff
	db   $ed                                         ; $5e8a: $ed
	db   $dd                                         ; $5e8b: $dd
	cp   b                                           ; $5e8c: $b8
	ld   b, d                                        ; $5e8d: $42
	ld   bc, $1111                                   ; $5e8e: $01 $11 $11
	ld   de, $1211                                   ; $5e91: $11 $11 $12
	ld   d, a                                        ; $5e94: $57
	adc  c                                           ; $5e95: $89
	cp   [hl]                                        ; $5e96: $be
	rst  $38                                         ; $5e97: $ff
	rst  $38                                         ; $5e98: $ff
	rst  $38                                         ; $5e99: $ff
	rst  $38                                         ; $5e9a: $ff
	rst  $38                                         ; $5e9b: $ff
	rst  $38                                         ; $5e9c: $ff
	db   $ed                                         ; $5e9d: $ed
	call $31a7                                       ; $5e9e: $cd $a7 $31
	ld   de, $1111                                   ; $5ea1: $11 $11 $11
	ld   de, $1311                                   ; $5ea4: $11 $11 $13
	ld   l, b                                        ; $5ea7: $68
	sbc  c                                           ; $5ea8: $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ea9: $cf
	rst  $38                                         ; $5eaa: $ff
	rst  $38                                         ; $5eab: $ff
	rst  $38                                         ; $5eac: $ff
	rst  $38                                         ; $5ead: $ff
	rst  $38                                         ; $5eae: $ff
	rst  $38                                         ; $5eaf: $ff
	db   $ec                                         ; $5eb0: $ec
	call c, $21a6                                    ; $5eb1: $dc $a6 $21
	ld   de, $1111                                   ; $5eb4: $11 $11 $11
	ld   de, $1411                                   ; $5eb7: $11 $11 $14
	ld   a, c                                        ; $5eba: $79
	sbc  d                                           ; $5ebb: $9a
	rst  JumpTable                                         ; $5ebc: $df
	rst  $38                                         ; $5ebd: $ff
	rst  $38                                         ; $5ebe: $ff
	rst  $38                                         ; $5ebf: $ff
	rst  $38                                         ; $5ec0: $ff
	rst  $38                                         ; $5ec1: $ff
	rst  $38                                         ; $5ec2: $ff
	db   $dd                                         ; $5ec3: $dd
	cp   e                                           ; $5ec4: $bb
	sub  l                                           ; $5ec5: $95
	ld   de, $1111                                   ; $5ec6: $11 $11 $11
	ld   de, $1111                                   ; $5ec9: $11 $11 $11
	dec  d                                           ; $5ecc: $15
	adc  c                                           ; $5ecd: $89
	sbc  e                                           ; $5ece: $9b
	rst  JumpTable                                         ; $5ecf: $df
	rst  $38                                         ; $5ed0: $ff
	rst  $38                                         ; $5ed1: $ff
	rst  $38                                         ; $5ed2: $ff
	rst  $38                                         ; $5ed3: $ff
	rst  $38                                         ; $5ed4: $ff
	rst  $38                                         ; $5ed5: $ff
	call c, $84ca                                    ; $5ed6: $dc $ca $84
	ld   de, $1111                                   ; $5ed9: $11 $11 $11
	ld   de, $1111                                   ; $5edc: $11 $11 $11
	ld   h, $89                                      ; $5edf: $26 $89
	cp   h                                           ; $5ee1: $bc
	rst  $28                                         ; $5ee2: $ef
	rst  $38                                         ; $5ee3: $ff
	rst  $38                                         ; $5ee4: $ff
	rst  $38                                         ; $5ee5: $ff
	rst  $38                                         ; $5ee6: $ff
	rst  $38                                         ; $5ee7: $ff
	rst  $38                                         ; $5ee8: $ff
	call c, $73ba                                    ; $5ee9: $dc $ba $73
	ld   de, $1111                                   ; $5eec: $11 $11 $11
	ld   de, $1111                                   ; $5eef: $11 $11 $11
	ld   h, $8a                                      ; $5ef2: $26 $8a
	cp   h                                           ; $5ef4: $bc
	rst  $38                                         ; $5ef5: $ff
	rst  $38                                         ; $5ef6: $ff
	rst  $38                                         ; $5ef7: $ff
	rst  $38                                         ; $5ef8: $ff
	rst  $38                                         ; $5ef9: $ff
	rst  $38                                         ; $5efa: $ff
	rst  $38                                         ; $5efb: $ff
	db   $ec                                         ; $5efc: $ec
	cp   b                                           ; $5efd: $b8
	ld   h, d                                        ; $5efe: $62
	ld   de, $1111                                   ; $5eff: $11 $11 $11
	ld   de, $1111                                   ; $5f02: $11 $11 $11
	scf                                              ; $5f05: $37
	sbc  d                                           ; $5f06: $9a
	call $ffef                                       ; $5f07: $cd $ef $ff
	rst  $38                                         ; $5f0a: $ff
	rst  $38                                         ; $5f0b: $ff
	rst  $38                                         ; $5f0c: $ff
	rst  $38                                         ; $5f0d: $ff
	cp   $eb                                         ; $5f0e: $fe $eb
	sub  a                                           ; $5f10: $97
	ld   d, c                                        ; $5f11: $51
	ld   de, $1111                                   ; $5f12: $11 $11 $11
	ld   de, $1111                                   ; $5f15: $11 $11 $11
	ld   b, a                                        ; $5f18: $47
	sbc  e                                           ; $5f19: $9b
	call $ffff                                       ; $5f1a: $cd $ff $ff
	rst  $38                                         ; $5f1d: $ff
	rst  $38                                         ; $5f1e: $ff
	rst  $38                                         ; $5f1f: $ff
	rst  $38                                         ; $5f20: $ff
	cp   $db                                         ; $5f21: $fe $db
	sub  [hl]                                        ; $5f23: $96
	ld   sp, $1111                                   ; $5f24: $31 $11 $11
	ld   de, $1111                                   ; $5f27: $11 $11 $11
	ld   [de], a                                     ; $5f2a: $12
	ld   e, c                                        ; $5f2b: $59
	cp   e                                           ; $5f2c: $bb
	sbc  $ff                                         ; $5f2d: $de $ff
	rst  $38                                         ; $5f2f: $ff
	rst  $38                                         ; $5f30: $ff
	rst  $38                                         ; $5f31: $ff
	rst  $38                                         ; $5f32: $ff
	rst  $38                                         ; $5f33: $ff
	db   $fd                                         ; $5f34: $fd
	db   $db                                         ; $5f35: $db
	add  l                                           ; $5f36: $85
	ld   hl, $1111                                   ; $5f37: $21 $11 $11
	ld   de, $1111                                   ; $5f3a: $11 $11 $11
	inc  de                                          ; $5f3d: $13
	ld   l, c                                        ; $5f3e: $69
	call z, $ffee                                    ; $5f3f: $cc $ee $ff
	rst  $38                                         ; $5f42: $ff
	rst  $38                                         ; $5f43: $ff
	rst  $38                                         ; $5f44: $ff
	rst  $38                                         ; $5f45: $ff
	rst  $28                                         ; $5f46: $ef
	db   $ec                                         ; $5f47: $ec
	or   [hl]                                        ; $5f48: $b6
	ld   hl, $1111                                   ; $5f49: $21 $11 $11
	ld   de, $1611                                   ; $5f4c: $11 $11 $16
	ld   [hl], a                                     ; $5f4f: $77
	ld   a, c                                        ; $5f50: $79
	rst  JumpTable                                         ; $5f51: $df
	rst  $38                                         ; $5f52: $ff
	call $ffff                                       ; $5f53: $cd $ff $ff
	rst  $38                                         ; $5f56: $ff
	db   $dd                                         ; $5f57: $dd
	jp   c, $979a                                    ; $5f58: $da $9a $97

	ld   de, $1211                                   ; $5f5b: $11 $11 $12
	ld   a, b                                        ; $5f5e: $78
	ld   [de], a                                     ; $5f5f: $12
	ld   l, e                                        ; $5f60: $6b
	ld   a, [$9e66]                                  ; $5f61: $fa $66 $9e
	db   $fc                                         ; $5f64: $fc
	xor  c                                           ; $5f65: $a9
	rst  JumpTable                                         ; $5f66: $df
	rst  $38                                         ; $5f67: $ff
	rst  $38                                         ; $5f68: $ff
	cp   $97                                         ; $5f69: $fe $97
	ld   d, [hl]                                     ; $5f6b: $56
	ld   d, c                                        ; $5f6c: $51
	ld   de, $1a11                                   ; $5f6d: $11 $11 $1a
	cp   $38                                         ; $5f70: $fe $38
	cp   a                                           ; $5f72: $bf
	rst  $30                                         ; $5f73: $f7
	ld   b, e                                        ; $5f74: $43
	adc  a                                           ; $5f75: $8f
	db   $db                                         ; $5f76: $db
	xor  d                                           ; $5f77: $aa
	rst  $38                                         ; $5f78: $ff
	rst  $38                                         ; $5f79: $ff
	rst  $38                                         ; $5f7a: $ff
	ld   sp, hl                                      ; $5f7b: $f9
	ld   h, d                                        ; $5f7c: $62
	ld   [de], a                                     ; $5f7d: $12
	ld   de, $1111                                   ; $5f7e: $11 $11 $11
	rst  $28                                         ; $5f81: $ef
	push af                                          ; $5f82: $f5
	ld   a, c                                        ; $5f83: $79
	rst  $38                                         ; $5f84: $ff
	ld   [hl], d                                     ; $5f85: $72
	inc  de                                          ; $5f86: $13
	rst  $38                                         ; $5f87: $ff
	db   $ec                                         ; $5f88: $ec
	sbc  a                                           ; $5f89: $9f
	rst  $38                                         ; $5f8a: $ff
	rst  $38                                         ; $5f8b: $ff
	db   $fd                                         ; $5f8c: $fd
	add  [hl]                                        ; $5f8d: $86
	ld   sp, $1111                                   ; $5f8e: $31 $11 $11
	ld   de, $ff1f                                   ; $5f91: $11 $1f $ff
	ld   [hl], l                                     ; $5f94: $75
	ld   c, h                                        ; $5f95: $4c
	ld   sp, hl                                      ; $5f96: $f9
	ld   hl, $ff2c                                   ; $5f97: $21 $2c $ff
	ei                                               ; $5f9a: $fb
	rst  $38                                         ; $5f9b: $ff
	rst  $38                                         ; $5f9c: $ff
	rst  $38                                         ; $5f9d: $ff
	and  [hl]                                        ; $5f9e: $a6
	ld   h, e                                        ; $5f9f: $63
	ld   de, $1111                                   ; $5fa0: $11 $11 $11
	dec  d                                           ; $5fa3: $15
	rst  $38                                         ; $5fa4: $ff
	ld   sp, hl                                      ; $5fa5: $f9
	ld   b, d                                        ; $5fa6: $42
	res  0, e                                        ; $5fa7: $cb $83
	inc  d                                           ; $5fa9: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5faa: $cf
	rst  $38                                         ; $5fab: $ff
	rst  JumpTable                                         ; $5fac: $df
	rst  $38                                         ; $5fad: $ff
	rst  $38                                         ; $5fae: $ff
	and  $55                                         ; $5faf: $e6 $55
	ld   [hl-], a                                    ; $5fb1: $32
	ld   de, $1111                                   ; $5fb2: $11 $11 $11
	cp   a                                           ; $5fb5: $bf
	rst  $38                                         ; $5fb6: $ff
	sub  d                                           ; $5fb7: $92
	ld   a, [hl+]                                    ; $5fb8: $2a
	sbc  b                                           ; $5fb9: $98
	ld   sp, $ff5b                                   ; $5fba: $31 $5b $ff
	rst  $38                                         ; $5fbd: $ff
	rst  $38                                         ; $5fbe: $ff
	rst  $38                                         ; $5fbf: $ff
	db   $fd                                         ; $5fc0: $fd
	ld   h, e                                        ; $5fc1: $63
	inc  [hl]                                        ; $5fc2: $34
	ld   sp, $1111                                   ; $5fc3: $31 $11 $11
	rra                                              ; $5fc6: $1f
	rst  $38                                         ; $5fc7: $ff
	add  $12                                         ; $5fc8: $c6 $12
	xor  b                                           ; $5fca: $a8
	ld   [hl], d                                     ; $5fcb: $72
	ld   d, $df                                      ; $5fcc: $16 $df
	rst  $38                                         ; $5fce: $ff
	rst  $38                                         ; $5fcf: $ff
	rst  $38                                         ; $5fd0: $ff
	rst  $38                                         ; $5fd1: $ff
	call nc, $2312                                   ; $5fd2: $d4 $12 $23
	ld   de, $1111                                   ; $5fd5: $11 $11 $11
	rst  $38                                         ; $5fd8: $ff
	db   $fc                                         ; $5fd9: $fc
	ld   h, c                                        ; $5fda: $61
	add  hl, de                                      ; $5fdb: $19
	ld   a, c                                        ; $5fdc: $79
	ld   d, d                                        ; $5fdd: $52
	adc  e                                           ; $5fde: $8b
	rst  $38                                         ; $5fdf: $ff
	rst  $38                                         ; $5fe0: $ff
	rst  $38                                         ; $5fe1: $ff
	rst  $38                                         ; $5fe2: $ff
	rst  $38                                         ; $5fe3: $ff
	ld   d, e                                        ; $5fe4: $53
	ld   de, $1121                                   ; $5fe5: $11 $21 $11
	ld   de, $ff4f                                   ; $5fe8: $11 $4f $ff
	pop  bc                                          ; $5feb: $c1
	ld   de, $d46a                                   ; $5fec: $11 $6a $d4
	dec  h                                           ; $5fef: $25
	adc  a                                           ; $5ff0: $8f
	rst  $38                                         ; $5ff1: $ff
	rst  $38                                         ; $5ff2: $ff
	rst  $38                                         ; $5ff3: $ff
	rst  $38                                         ; $5ff4: $ff
	call nc, $1211                                   ; $5ff5: $d4 $11 $12
	ld   de, $1611                                   ; $5ff8: $11 $11 $16
	rst  $38                                         ; $5ffb: $ff
	db   $fd                                         ; $5ffc: $fd
	ld   de, $fe15                                   ; $5ffd: $11 $15 $fe
	ld   d, e                                        ; $6000: $53
	jr   @+$01                                       ; $6001: $18 $ff

	rst  $38                                         ; $6003: $ff
	rst  $38                                         ; $6004: $ff
	rst  $38                                         ; $6005: $ff
	db   $fc                                         ; $6006: $fc
	ld   b, c                                        ; $6007: $41
	ld   de, $1111                                   ; $6008: $11 $11 $11
	ld   de, $ffbf                                   ; $600b: $11 $bf $ff
	or   c                                           ; $600e: $b1
	ld   de, $f86f                                   ; $600f: $11 $6f $f8
	ld   hl, $ffaf                                   ; $6012: $21 $af $ff
	rst  $38                                         ; $6015: $ff
	rst  $38                                         ; $6016: $ff
	rst  $38                                         ; $6017: $ff
	call nz, $1111                                   ; $6018: $c4 $11 $11
	ld   de, $1f11                                   ; $601b: $11 $11 $1f
	rst  $38                                         ; $601e: $ff
	push af                                          ; $601f: $f5
	ld   de, $fe1b                                   ; $6020: $11 $1b $fe
	and  c                                           ; $6023: $a1
	inc  e                                           ; $6024: $1c
	rst  $38                                         ; $6025: $ff
	rst  $38                                         ; $6026: $ff
	rst  $38                                         ; $6027: $ff
	rst  $38                                         ; $6028: $ff
	db   $eb                                         ; $6029: $eb
	ld   b, c                                        ; $602a: $41
	ld   de, $1111                                   ; $602b: $11 $11 $11
	inc  d                                           ; $602e: $14
	rst  $38                                         ; $602f: $ff
	rst  $38                                         ; $6030: $ff
	ld   de, rAUD1LEN                                   ; $6031: $11 $11 $ff
	ld   a, [$cf14]                                  ; $6034: $fa $14 $cf
	rst  $38                                         ; $6037: $ff
	rst  $38                                         ; $6038: $ff
	rst  $38                                         ; $6039: $ff
	cp   $92                                         ; $603a: $fe $92
	ld   de, $1111                                   ; $603c: $11 $11 $11
	ld   de, $ffcf                                   ; $603f: $11 $cf $ff
	pop  bc                                          ; $6042: $c1
	ld   de, $ff3f                                   ; $6043: $11 $3f $ff
	ld   [hl], d                                     ; $6046: $72
	ld   l, h                                        ; $6047: $6c
	rst  $38                                         ; $6048: $ff
	rst  $38                                         ; $6049: $ff
	rst  $38                                         ; $604a: $ff
	db   $fc                                         ; $604b: $fc
	add  $21                                         ; $604c: $c6 $21
	ld   de, $1111                                   ; $604e: $11 $11 $11
	rra                                              ; $6051: $1f
	rst  $38                                         ; $6052: $ff
	di                                               ; $6053: $f3
	ld   de, $ff18                                   ; $6054: $11 $18 $ff
	rst  $30                                         ; $6057: $f7
	ld   d, a                                        ; $6058: $57
	rst  $38                                         ; $6059: $ff
	rst  $38                                         ; $605a: $ff
	rst  $38                                         ; $605b: $ff
	db   $fc                                         ; $605c: $fc
	xor  b                                           ; $605d: $a8
	ld   b, d                                        ; $605e: $42
	ld   de, $1111                                   ; $605f: $11 $11 $11
	ld   a, [de]                                     ; $6062: $1a
	rst  $38                                         ; $6063: $ff
	rst  $38                                         ; $6064: $ff
	ld   de, $df11                                   ; $6065: $11 $11 $df
	ei                                               ; $6068: $fb
	ld   h, [hl]                                     ; $6069: $66
	sbc  a                                           ; $606a: $9f
	rst  $38                                         ; $606b: $ff
	rst  $38                                         ; $606c: $ff
	cp   $b9                                         ; $606d: $fe $b9
	ld   h, h                                        ; $606f: $64
	ld   de, $1111                                   ; $6070: $11 $11 $11
	inc  d                                           ; $6073: $14
	rst  $38                                         ; $6074: $ff
	rst  $38                                         ; $6075: $ff
	ld   hl, $7f11                                   ; $6076: $21 $11 $7f
	rst  $38                                         ; $6079: $ff
	sub  [hl]                                        ; $607a: $96
	ld   l, [hl]                                     ; $607b: $6e
	rst  $38                                         ; $607c: $ff
	rst  $38                                         ; $607d: $ff
	rst  $38                                         ; $607e: $ff
	sbc  c                                           ; $607f: $99
	ld   h, h                                        ; $6080: $64
	ld   hl, $1111                                   ; $6081: $21 $11 $11
	ld   de, $ffff                                   ; $6084: $11 $ff $ff
	and  c                                           ; $6087: $a1
	ld   de, $ff1d                                   ; $6088: $11 $1d $ff
	ret                                              ; $608b: $c9


	ld   e, d                                        ; $608c: $5a
	rst  $38                                         ; $608d: $ff
	rst  $38                                         ; $608e: $ff
	rst  $38                                         ; $608f: $ff
	xor  c                                           ; $6090: $a9
	ld   h, [hl]                                     ; $6091: $66
	ld   d, c                                        ; $6092: $51
	ld   de, $1111                                   ; $6093: $11 $11 $11
	xor  a                                           ; $6096: $af
	rst  $38                                         ; $6097: $ff
	pop  af                                          ; $6098: $f1
	ld   de, $ff1a                                   ; $6099: $11 $1a $ff
	ei                                               ; $609c: $fb
	ld   b, l                                        ; $609d: $45
	rst  $38                                         ; $609e: $ff
	rst  $38                                         ; $609f: $ff
	rst  $38                                         ; $60a0: $ff
	or   a                                           ; $60a1: $b7
	ld   d, l                                        ; $60a2: $55
	ld   h, e                                        ; $60a3: $63
	ld   de, $1111                                   ; $60a4: $11 $11 $11
	ld   c, a                                        ; $60a7: $4f
	rst  $38                                         ; $60a8: $ff
	di                                               ; $60a9: $f3
	ld   de, rAUD1HIGH                                   ; $60aa: $11 $14 $ff
	cp   $74                                         ; $60ad: $fe $74
	xor  a                                           ; $60af: $af
	rst  $38                                         ; $60b0: $ff
	rst  $38                                         ; $60b1: $ff
	ld   hl, sp+$54                                  ; $60b2: $f8 $54
	ld   h, l                                        ; $60b4: $65
	ld   hl, $1111                                   ; $60b5: $21 $11 $11
	rra                                              ; $60b8: $1f
	rst  $38                                         ; $60b9: $ff
	db   $fc                                         ; $60ba: $fc
	ld   de, $bf11                                   ; $60bb: $11 $11 $bf
	rst  $38                                         ; $60be: $ff
	or   h                                           ; $60bf: $b4
	ld   l, [hl]                                     ; $60c0: $6e
	rst  $38                                         ; $60c1: $ff
	rst  $38                                         ; $60c2: $ff
	ld   sp, hl                                      ; $60c3: $f9
	ld   d, d                                        ; $60c4: $52
	ld   b, [hl]                                     ; $60c5: $46
	ld   sp, $1111                                   ; $60c6: $31 $11 $11
	inc  e                                           ; $60c9: $1c
	rst  $38                                         ; $60ca: $ff
	rst  $38                                         ; $60cb: $ff
	ld   de, $8f11                                   ; $60cc: $11 $11 $8f
	rst  $38                                         ; $60cf: $ff
	push de                                          ; $60d0: $d5
	ld   c, d                                        ; $60d1: $4a
	rst  $38                                         ; $60d2: $ff
	rst  $38                                         ; $60d3: $ff
	ei                                               ; $60d4: $fb
	ld   h, e                                        ; $60d5: $63
	dec  [hl]                                        ; $60d6: $35
	ld   b, c                                        ; $60d7: $41
	ld   de, $1911                                   ; $60d8: $11 $11 $19
	rst  $38                                         ; $60db: $ff
	rst  $38                                         ; $60dc: $ff
	ld   de, $4f11                                   ; $60dd: $11 $11 $4f
	rst  $38                                         ; $60e0: $ff
	rst  $30                                         ; $60e1: $f7
	daa                                              ; $60e2: $27
	rst  $38                                         ; $60e3: $ff
	rst  $38                                         ; $60e4: $ff
	cp   $62                                         ; $60e5: $fe $62
	dec  h                                           ; $60e7: $25
	ld   b, c                                        ; $60e8: $41
	ld   de, $1411                                   ; $60e9: $11 $11 $14
	rst  $38                                         ; $60ec: $ff
	rst  $38                                         ; $60ed: $ff
	ld   d, c                                        ; $60ee: $51
	ld   de, $ff1f                                   ; $60ef: $11 $1f $ff
	ld   a, [$df36]                                  ; $60f2: $fa $36 $df
	rst  $38                                         ; $60f5: $ff
	rst  $38                                         ; $60f6: $ff
	ld   [hl], d                                     ; $60f7: $72
	inc  de                                          ; $60f8: $13
	ld   [hl-], a                                    ; $60f9: $32
	ld   de, $1111                                   ; $60fa: $11 $11 $11
	rst  $38                                         ; $60fd: $ff
	rst  $38                                         ; $60fe: $ff
	sub  c                                           ; $60ff: $91
	ld   de, $ff1b                                   ; $6100: $11 $1b $ff
	db   $fd                                         ; $6103: $fd
	ld   b, l                                        ; $6104: $45
	adc  a                                           ; $6105: $8f
	rst  $38                                         ; $6106: $ff
	rst  $38                                         ; $6107: $ff
	and  d                                           ; $6108: $a2
	ld   [de], a                                     ; $6109: $12
	inc  hl                                          ; $610a: $23
	ld   de, $1111                                   ; $610b: $11 $11 $11
	rst  $38                                         ; $610e: $ff
	rst  $38                                         ; $610f: $ff
	pop  de                                          ; $6110: $d1
	ld   de, $ff18                                   ; $6111: $11 $18 $ff
	rst  $38                                         ; $6114: $ff
	ld   d, l                                        ; $6115: $55
	ld   a, a                                        ; $6116: $7f
	rst  $38                                         ; $6117: $ff
	rst  $38                                         ; $6118: $ff
	or   e                                           ; $6119: $b3
	ld   de, $1113                                   ; $611a: $11 $13 $11
	ld   de, rAUD1LEN                                   ; $611d: $11 $11 $ff
	rst  $38                                         ; $6120: $ff
	pop  af                                          ; $6121: $f1
	ld   de, $ff15                                   ; $6122: $11 $15 $ff
	rst  $38                                         ; $6125: $ff
	ld   [hl], h                                     ; $6126: $74
	ld   e, [hl]                                     ; $6127: $5e
	rst  $38                                         ; $6128: $ff
	rst  $38                                         ; $6129: $ff
	db   $e4                                         ; $612a: $e4
	ld   de, $1112                                   ; $612b: $11 $12 $11
	ld   de, $cf11                                   ; $612e: $11 $11 $cf
	rst  $38                                         ; $6131: $ff
	di                                               ; $6132: $f3
	ld   de, rAUD1LEN                                   ; $6133: $11 $11 $ff
	rst  $38                                         ; $6136: $ff
	and  l                                           ; $6137: $a5
	ld   c, h                                        ; $6138: $4c
	rst  $38                                         ; $6139: $ff
	rst  $38                                         ; $613a: $ff
	or   $11                                         ; $613b: $f6 $11
	ld   de, $1111                                   ; $613d: $11 $11 $11
	ld   de, $ffcf                                   ; $6140: $11 $cf $ff
	push af                                          ; $6143: $f5
	ld   de, rAUD1LEN                                   ; $6144: $11 $11 $ff
	rst  $38                                         ; $6147: $ff
	rst  ToBoot                                         ; $6148: $c7
	ld   e, e                                        ; $6149: $5b
	rst  $38                                         ; $614a: $ff
	rst  $38                                         ; $614b: $ff
	ld   hl, sp+$11                                  ; $614c: $f8 $11
	ld   de, $1111                                   ; $614e: $11 $11 $11
	ld   de, $ffcf                                   ; $6151: $11 $cf $ff
	push af                                          ; $6154: $f5
	ld   de, rAUD1LEN                                   ; $6155: $11 $11 $ff
	rst  $38                                         ; $6158: $ff
	reti                                             ; $6159: $d9


	ld   l, e                                        ; $615a: $6b
	rst  $38                                         ; $615b: $ff
	rst  $38                                         ; $615c: $ff
	ld   hl, sp+$11                                  ; $615d: $f8 $11
	ld   de, $1111                                   ; $615f: $11 $11 $11
	ld   de, $ffff                                   ; $6162: $11 $ff $ff
	db   $f4                                         ; $6165: $f4
	ld   de, rAUD1LEN                                   ; $6166: $11 $11 $ff
	rst  $38                                         ; $6169: $ff
	reti                                             ; $616a: $d9


	ld   e, e                                        ; $616b: $5b
	rst  $38                                         ; $616c: $ff
	rst  $38                                         ; $616d: $ff
	rst  $30                                         ; $616e: $f7
	ld   de, $1111                                   ; $616f: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $6172: $11 $11 $ff
	rst  $38                                         ; $6175: $ff
	pop  af                                          ; $6176: $f1
	ld   de, rAUD1LOW                                   ; $6177: $11 $13 $ff
	rst  $38                                         ; $617a: $ff
	rst  $10                                         ; $617b: $d7
	ld   l, h                                        ; $617c: $6c
	rst  $38                                         ; $617d: $ff
	rst  $38                                         ; $617e: $ff
	or   $11                                         ; $617f: $f6 $11
	ld   de, $1111                                   ; $6181: $11 $11 $11
	ld   de, $ffff                                   ; $6184: $11 $ff $ff
	pop  af                                          ; $6187: $f1
	ld   de, $ff16                                   ; $6188: $11 $16 $ff
	rst  $38                                         ; $618b: $ff
	rst  $10                                         ; $618c: $d7
	ld   l, l                                        ; $618d: $6d
	rst  $38                                         ; $618e: $ff
	rst  $38                                         ; $618f: $ff
	or   $11                                         ; $6190: $f6 $11
	ld   de, $1111                                   ; $6192: $11 $11 $11
	dec  d                                           ; $6195: $15
	rst  $38                                         ; $6196: $ff
	rst  $38                                         ; $6197: $ff
	or   c                                           ; $6198: $b1
	ld   de, $ff1b                                   ; $6199: $11 $1b $ff
	rst  $38                                         ; $619c: $ff
	or   [hl]                                        ; $619d: $b6
	ld   a, a                                        ; $619e: $7f
	rst  $38                                         ; $619f: $ff
	rst  $38                                         ; $61a0: $ff
	db   $d3                                         ; $61a1: $d3
	ld   de, $1111                                   ; $61a2: $11 $11 $11
	ld   de, $ff1d                                   ; $61a5: $11 $1d $ff
	rst  $38                                         ; $61a8: $ff
	ld   h, c                                        ; $61a9: $61
	ld   de, $ff1f                                   ; $61aa: $11 $1f $ff
	rst  $38                                         ; $61ad: $ff
	or   a                                           ; $61ae: $b7
	xor  a                                           ; $61af: $af
	rst  $38                                         ; $61b0: $ff
	rst  $38                                         ; $61b1: $ff
	and  d                                           ; $61b2: $a2
	ld   de, $1111                                   ; $61b3: $11 $11 $11
	ld   de, $ff1f                                   ; $61b6: $11 $1f $ff
	rst  $38                                         ; $61b9: $ff
	ld   de, $4f11                                   ; $61ba: $11 $11 $4f
	rst  $38                                         ; $61bd: $ff
	cp   $97                                         ; $61be: $fe $97
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61c0: $cf
	rst  $38                                         ; $61c1: $ff
	rst  $38                                         ; $61c2: $ff
	ld   h, c                                        ; $61c3: $61
	ld   de, $1111                                   ; $61c4: $11 $11 $11
	ld   de, $ff7f                                   ; $61c7: $11 $7f $ff
	db   $fc                                         ; $61ca: $fc
	ld   de, $bf11                                   ; $61cb: $11 $11 $bf
	rst  $38                                         ; $61ce: $ff
	db   $fc                                         ; $61cf: $fc
	ld   a, b                                        ; $61d0: $78
	rst  $28                                         ; $61d1: $ef
	rst  $38                                         ; $61d2: $ff
	db   $fc                                         ; $61d3: $fc
	ld   b, c                                        ; $61d4: $41
	ld   de, $1111                                   ; $61d5: $11 $11 $11
	ld   de, $ffff                                   ; $61d8: $11 $ff $ff
	pop  af                                          ; $61db: $f1
	ld   de, rAUD1HIGH                                   ; $61dc: $11 $14 $ff
	rst  $38                                         ; $61df: $ff
	ld   a, [$ff7d]                                  ; $61e0: $fa $7d $ff
	rst  $38                                         ; $61e3: $ff
	rst  $30                                         ; $61e4: $f7
	ld   de, $1111                                   ; $61e5: $11 $11 $11
	ld   de, $ff18                                   ; $61e8: $11 $18 $ff
	rst  $38                                         ; $61eb: $ff
	and  c                                           ; $61ec: $a1
	ld   de, $ff1b                                   ; $61ed: $11 $1b $ff
	rst  $38                                         ; $61f0: $ff
	add  sp, -$71                                    ; $61f1: $e8 $8f
	rst  $38                                         ; $61f3: $ff
	rst  $38                                         ; $61f4: $ff
	call nz, $1101                                   ; $61f5: $c4 $01 $11
	ld   de, $1f11                                   ; $61f8: $11 $11 $1f
	rst  $38                                         ; $61fb: $ff
	rst  $38                                         ; $61fc: $ff
	ld   de, $6f11                                   ; $61fd: $11 $11 $6f
	rst  $38                                         ; $6200: $ff
	rst  $38                                         ; $6201: $ff
	xor  c                                           ; $6202: $a9
	rst  $28                                         ; $6203: $ef
	rst  $38                                         ; $6204: $ff
	cp   $62                                         ; $6205: $fe $62
	ld   de, $1111                                   ; $6207: $11 $11 $11
	ld   de, $ffff                                   ; $620a: $11 $ff $ff
	push af                                          ; $620d: $f5
	ld   de, rAUD1LEN                                   ; $620e: $11 $11 $ff
	rst  $38                                         ; $6211: $ff
	db   $fd                                         ; $6212: $fd
	adc  e                                           ; $6213: $8b
	rst  $38                                         ; $6214: $ff
	rst  $38                                         ; $6215: $ff
	ld   a, [$1131]                                  ; $6216: $fa $31 $11
	ld   de, $1c11                                   ; $6219: $11 $11 $1c
	rst  $38                                         ; $621c: $ff
	rst  $38                                         ; $621d: $ff
	ld   [hl], c                                     ; $621e: $71
	ld   de, $ff1e                                   ; $621f: $11 $1e $ff
	rst  $38                                         ; $6222: $ff
	ret  z                                           ; $6223: $c8

	xor  a                                           ; $6224: $af
	rst  $38                                         ; $6225: $ff
	rst  $38                                         ; $6226: $ff
	or   e                                           ; $6227: $b3
	ld   de, $1111                                   ; $6228: $11 $11 $11
	ld   de, $ff4f                                   ; $622b: $11 $4f $ff
	db   $fc                                         ; $622e: $fc
	ld   de, $af11                                   ; $622f: $11 $11 $af
	rst  $38                                         ; $6232: $ff
	cp   $89                                         ; $6233: $fe $89
	rst  $28                                         ; $6235: $ef
	rst  $38                                         ; $6236: $ff
	cp   $51                                         ; $6237: $fe $51
	ld   de, $1111                                   ; $6239: $11 $11 $11
	ld   de, $ffff                                   ; $623c: $11 $ff $ff
	pop  hl                                          ; $623f: $e1
	ld   de, $ff17                                   ; $6240: $11 $17 $ff
	rst  $38                                         ; $6243: $ff
	ld   sp, hl                                      ; $6244: $f9
	ld   a, e                                        ; $6245: $7b
	rst  $38                                         ; $6246: $ff
	rst  $38                                         ; $6247: $ff
	rst  $30                                         ; $6248: $f7
	ld   de, $1111                                   ; $6249: $11 $11 $11
	ld   de, $ff3f                                   ; $624c: $11 $3f $ff
	cp   $11                                         ; $624f: $fe $11
	ld   de, $ff8f                                   ; $6251: $11 $8f $ff
	rst  $38                                         ; $6254: $ff
	sbc  b                                           ; $6255: $98
	rst  JumpTable                                         ; $6256: $df
	rst  $38                                         ; $6257: $ff
	rst  $38                                         ; $6258: $ff
	ld   [hl], d                                     ; $6259: $72
	ld   de, $1111                                   ; $625a: $11 $11 $11
	ld   de, $ffff                                   ; $625d: $11 $ff $ff
	pop  af                                          ; $6260: $f1
	ld   de, $ff17                                   ; $6261: $11 $17 $ff
	rst  $38                                         ; $6264: $ff
	add  sp, $7d                                     ; $6265: $e8 $7d
	rst  $38                                         ; $6267: $ff
	rst  $38                                         ; $6268: $ff
	rst  $30                                         ; $6269: $f7
	ld   hl, $1111                                   ; $626a: $21 $11 $11
	ld   de, $ff3f                                   ; $626d: $11 $3f $ff
	db   $fd                                         ; $6270: $fd
	ld   de, $af11                                   ; $6271: $11 $11 $af
	rst  $38                                         ; $6274: $ff
	rst  $38                                         ; $6275: $ff
	adc  c                                           ; $6276: $89
	rst  $28                                         ; $6277: $ef
	rst  $38                                         ; $6278: $ff
	db   $fd                                         ; $6279: $fd
	ld   h, d                                        ; $627a: $62
	ld   de, $1111                                   ; $627b: $11 $11 $11
	inc  de                                          ; $627e: $13
	rst  $38                                         ; $627f: $ff
	rst  $38                                         ; $6280: $ff
	or   c                                           ; $6281: $b1
	ld   de, $ff1a                                   ; $6282: $11 $1a $ff
	rst  $38                                         ; $6285: $ff
	ret  z                                           ; $6286: $c8

	ld   a, [hl]                                     ; $6287: $7e
	rst  $38                                         ; $6288: $ff
	rst  $38                                         ; $6289: $ff
	push de                                          ; $628a: $d5
	ld   de, $1111                                   ; $628b: $11 $11 $11
	ld   de, $ff5f                                   ; $628e: $11 $5f $ff
	ei                                               ; $6291: $fb
	ld   de, $bf11                                   ; $6292: $11 $11 $bf
	rst  $38                                         ; $6295: $ff
	db   $fd                                         ; $6296: $fd
	sbc  c                                           ; $6297: $99
	rst  $28                                         ; $6298: $ef
	rst  $38                                         ; $6299: $ff
	db   $fd                                         ; $629a: $fd
	ld   [hl], d                                     ; $629b: $72
	ld   de, $1111                                   ; $629c: $11 $11 $11
	ld   a, [de]                                     ; $629f: $1a
	rst  $38                                         ; $62a0: $ff
	rst  $38                                         ; $62a1: $ff
	ld   h, c                                        ; $62a2: $61
	ld   de, $ff1f                                   ; $62a3: $11 $1f $ff
	rst  $38                                         ; $62a6: $ff
	cp   b                                           ; $62a7: $b8
	sbc  a                                           ; $62a8: $9f
	rst  $38                                         ; $62a9: $ff
	rst  $38                                         ; $62aa: $ff
	and  $21                                         ; $62ab: $e6 $21
	ld   de, $1111                                   ; $62ad: $11 $11 $11
	rst  $28                                         ; $62b0: $ef
	rst  $38                                         ; $62b1: $ff
	db   $f4                                         ; $62b2: $f4
	ld   de, rAUD1LEN                                   ; $62b3: $11 $11 $ff
	rst  $38                                         ; $62b6: $ff
	db   $fc                                         ; $62b7: $fc
	sbc  d                                           ; $62b8: $9a
	rst  $38                                         ; $62b9: $ff
	rst  $38                                         ; $62ba: $ff
	ei                                               ; $62bb: $fb
	ld   h, e                                        ; $62bc: $63
	ld   de, $1111                                   ; $62bd: $11 $11 $11
	rra                                              ; $62c0: $1f
	rst  $38                                         ; $62c1: $ff
	rst  $38                                         ; $62c2: $ff
	ld   hl, $1f11                                   ; $62c3: $21 $11 $1f
	rst  $38                                         ; $62c6: $ff
	rst  $38                                         ; $62c7: $ff
	ret  z                                           ; $62c8: $c8

	xor  a                                           ; $62c9: $af
	rst  $38                                         ; $62ca: $ff
	rst  $38                                         ; $62cb: $ff
	sub  $21                                         ; $62cc: $d6 $21
	ld   de, $1111                                   ; $62ce: $11 $11 $11
	rst  $38                                         ; $62d1: $ff
	rst  $38                                         ; $62d2: $ff
	pop  af                                          ; $62d3: $f1
	ld   de, rAUD1ENV                                   ; $62d4: $11 $12 $ff
	rst  $38                                         ; $62d7: $ff
	db   $fc                                         ; $62d8: $fc
	ld   a, d                                        ; $62d9: $7a
	rst  JumpTable                                         ; $62da: $df
	rst  $38                                         ; $62db: $ff
	db   $fd                                         ; $62dc: $fd
	ld   h, c                                        ; $62dd: $61
	ld   de, $1111                                   ; $62de: $11 $11 $11
	rra                                              ; $62e1: $1f
	rst  $38                                         ; $62e2: $ff
	rst  $38                                         ; $62e3: $ff
	ld   de, $5f11                                   ; $62e4: $11 $11 $5f
	rst  $38                                         ; $62e7: $ff
	rst  $38                                         ; $62e8: $ff
	xor  b                                           ; $62e9: $a8
	cp   [hl]                                        ; $62ea: $be
	rst  $38                                         ; $62eb: $ff
	rst  $38                                         ; $62ec: $ff
	add  $11                                         ; $62ed: $c6 $11
	ld   de, $1211                                   ; $62ef: $11 $11 $12
	rst  $38                                         ; $62f2: $ff
	rst  $38                                         ; $62f3: $ff
	pop  bc                                          ; $62f4: $c1
	ld   de, $ff1a                                   ; $62f5: $11 $1a $ff
	rst  $38                                         ; $62f8: $ff
	jp   hl                                          ; $62f9: $e9


	adc  h                                           ; $62fa: $8c
	rst  $38                                         ; $62fb: $ff
	rst  $38                                         ; $62fc: $ff
	ei                                               ; $62fd: $fb
	ld   d, c                                        ; $62fe: $51
	ld   de, $1111                                   ; $62ff: $11 $11 $11
	adc  a                                           ; $6302: $8f
	rst  $38                                         ; $6303: $ff
	or   $11                                         ; $6304: $f6 $11
	ld   de, $ffdf                                   ; $6306: $11 $df $ff
	cp   $b9                                         ; $6309: $fe $b9
	cp   [hl]                                        ; $630b: $be
	rst  $38                                         ; $630c: $ff
	rst  $38                                         ; $630d: $ff
	and  l                                           ; $630e: $a5
	ld   de, $1111                                   ; $630f: $11 $11 $11
	rra                                              ; $6312: $1f
	rst  $38                                         ; $6313: $ff
	rst  $38                                         ; $6314: $ff
	ld   sp, $1f11                                   ; $6315: $31 $11 $1f
	rst  $38                                         ; $6318: $ff
	rst  $38                                         ; $6319: $ff
	db   $eb                                         ; $631a: $eb
	xor  h                                           ; $631b: $ac
	rst  $38                                         ; $631c: $ff
	rst  $38                                         ; $631d: $ff
	ld   sp, hl                                      ; $631e: $f9
	ld   b, c                                        ; $631f: $41
	ld   de, $1111                                   ; $6320: $11 $11 $11
	rst  $38                                         ; $6323: $ff
	rst  $38                                         ; $6324: $ff
	ldh  a, [c]                                      ; $6325: $f2
	ld   de, rAUD1LEN                                   ; $6326: $11 $11 $ff
	rst  $38                                         ; $6329: $ff
	db   $fd                                         ; $632a: $fd
	adc  b                                           ; $632b: $88
	cp   [hl]                                        ; $632c: $be
	rst  $38                                         ; $632d: $ff
	cp   $71                                         ; $632e: $fe $71
	ld   de, $1111                                   ; $6330: $11 $11 $11
	cpl                                              ; $6333: $2f
	rst  $38                                         ; $6334: $ff
	cp   $11                                         ; $6335: $fe $11
	ld   de, $ff5f                                   ; $6337: $11 $5f $ff
	rst  $38                                         ; $633a: $ff
	jp   hl                                          ; $633b: $e9


	sbc  h                                           ; $633c: $9c
	rst  $28                                         ; $633d: $ef
	rst  $38                                         ; $633e: $ff
	add  $11                                         ; $633f: $c6 $11
	ld   de, $1311                                   ; $6341: $11 $11 $13
	rst  $38                                         ; $6344: $ff
	rst  $38                                         ; $6345: $ff
	pop  hl                                          ; $6346: $e1
	ld   de, $ff16                                   ; $6347: $11 $16 $ff
	rst  $38                                         ; $634a: $ff
	ei                                               ; $634b: $fb
	ld   a, c                                        ; $634c: $79
	cp   a                                           ; $634d: $bf
	rst  $38                                         ; $634e: $ff
	db   $fc                                         ; $634f: $fc
	ld   h, c                                        ; $6350: $61
	ld   de, $1111                                   ; $6351: $11 $11 $11
	ld   l, a                                        ; $6354: $6f
	rst  $38                                         ; $6355: $ff
	ld   sp, hl                                      ; $6356: $f9
	ld   de, $7f11                                   ; $6357: $11 $11 $7f
	rst  $38                                         ; $635a: $ff
	rst  $38                                         ; $635b: $ff
	jp   hl                                          ; $635c: $e9


	sbc  d                                           ; $635d: $9a
	rst  JumpTable                                         ; $635e: $df
	rst  $38                                         ; $635f: $ff
	add  sp, $11                                     ; $6360: $e8 $11
	ld   de, $1811                                   ; $6362: $11 $11 $18
	rst  $38                                         ; $6365: $ff
	rst  $38                                         ; $6366: $ff
	ld   [hl], c                                     ; $6367: $71
	ld   de, $ff1a                                   ; $6368: $11 $1a $ff
	rst  $38                                         ; $636b: $ff
	db   $fd                                         ; $636c: $fd
	xor  c                                           ; $636d: $a9
	xor  l                                           ; $636e: $ad
	rst  $38                                         ; $636f: $ff
	cp   $71                                         ; $6370: $fe $71
	ld   de, $1111                                   ; $6372: $11 $11 $11
	sbc  a                                           ; $6375: $9f
	rst  $38                                         ; $6376: $ff
	ld   hl, sp+$11                                  ; $6377: $f8 $11
	ld   de, $ff9f                                   ; $6379: $11 $9f $ff
	rst  $38                                         ; $637c: $ff
	ret                                              ; $637d: $c9


	adc  c                                           ; $637e: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $637f: $cf
	rst  $38                                         ; $6380: $ff
	rst  $10                                         ; $6381: $d7
	ld   de, $1111                                   ; $6382: $11 $11 $11
	dec  de                                          ; $6385: $1b
	rst  $38                                         ; $6386: $ff
	rst  $38                                         ; $6387: $ff
	ld   [hl], c                                     ; $6388: $71
	ld   de, $ff1b                                   ; $6389: $11 $1b $ff
	rst  $38                                         ; $638c: $ff
	db   $fd                                         ; $638d: $fd
	adc  c                                           ; $638e: $89
	sbc  l                                           ; $638f: $9d
	rst  $38                                         ; $6390: $ff
	cp   $91                                         ; $6391: $fe $91
	ld   de, $1111                                   ; $6393: $11 $11 $11
	rst  JumpTable                                         ; $6396: $df
	rst  $38                                         ; $6397: $ff
	db   $f4                                         ; $6398: $f4
	ld   de, $ef11                                   ; $6399: $11 $11 $ef
	rst  $38                                         ; $639c: $ff
	rst  $38                                         ; $639d: $ff
	ret  z                                           ; $639e: $c8

	sbc  d                                           ; $639f: $9a
	rst  $28                                         ; $63a0: $ef
	rst  $38                                         ; $63a1: $ff
	rst  $10                                         ; $63a2: $d7
	ld   de, $1111                                   ; $63a3: $11 $11 $11
	dec  de                                          ; $63a6: $1b
	rst  $38                                         ; $63a7: $ff
	rst  $38                                         ; $63a8: $ff
	add  c                                           ; $63a9: $81
	ld   de, $ff1a                                   ; $63aa: $11 $1a $ff
	rst  $38                                         ; $63ad: $ff
	db   $fd                                         ; $63ae: $fd
	xor  c                                           ; $63af: $a9
	xor  h                                           ; $63b0: $ac
	rst  $38                                         ; $63b1: $ff
	db   $fd                                         ; $63b2: $fd
	add  d                                           ; $63b3: $82
	ld   de, $1111                                   ; $63b4: $11 $11 $11
	xor  a                                           ; $63b7: $af
	rst  $38                                         ; $63b8: $ff
	ld   hl, sp+$11                                  ; $63b9: $f8 $11
	ld   de, $ffaf                                   ; $63bb: $11 $af $ff
	rst  $38                                         ; $63be: $ff
	jp   c, $be99                                    ; $63bf: $da $99 $be

	rst  $38                                         ; $63c2: $ff
	reti                                             ; $63c3: $d9


	ld   hl, $1111                                   ; $63c4: $21 $11 $11
	jr   @+$01                                       ; $63c7: $18 $ff

	rst  $38                                         ; $63c9: $ff
	sub  c                                           ; $63ca: $91
	ld   de, $ff19                                   ; $63cb: $11 $19 $ff
	rst  $38                                         ; $63ce: $ff
	cp   $a9                                         ; $63cf: $fe $a9
	xor  h                                           ; $63d1: $ac
	rst  $28                                         ; $63d2: $ef
	cp   $a3                                         ; $63d3: $fe $a3
	ld   de, $1111                                   ; $63d5: $11 $11 $11
	ld   l, a                                        ; $63d8: $6f
	rst  $38                                         ; $63d9: $ff
	ei                                               ; $63da: $fb
	ld   de, $7f11                                   ; $63db: $11 $11 $7f
	rst  $38                                         ; $63de: $ff
	rst  $38                                         ; $63df: $ff
	db   $eb                                         ; $63e0: $eb
	sbc  c                                           ; $63e1: $99
	xor  l                                           ; $63e2: $ad
	rst  $38                                         ; $63e3: $ff
	ld   a, [$1151]                                  ; $63e4: $fa $51 $11
	ld   de, rAUD1ENV                                   ; $63e7: $11 $12 $ff
	rst  $38                                         ; $63ea: $ff
	db   $e3                                         ; $63eb: $e3
	ld   de, $ff15                                   ; $63ec: $11 $15 $ff
	rst  $38                                         ; $63ef: $ff
	db   $fd                                         ; $63f0: $fd
	sbc  b                                           ; $63f1: $98
	sbc  h                                           ; $63f2: $9c
	rst  JumpTable                                         ; $63f3: $df
	cp   $b7                                         ; $63f4: $fe $b7
	ld   de, $1111                                   ; $63f6: $11 $11 $11
	dec  de                                          ; $63f9: $1b
	rst  $38                                         ; $63fa: $ff
	rst  $38                                         ; $63fb: $ff
	ld   [hl], c                                     ; $63fc: $71
	ld   de, $ff3a                                   ; $63fd: $11 $3a $ff
	rst  $38                                         ; $6400: $ff
	ei                                               ; $6401: $fb
	sub  a                                           ; $6402: $97
	xor  h                                           ; $6403: $ac
	rst  $38                                         ; $6404: $ff
	db   $fd                                         ; $6405: $fd
	sub  h                                           ; $6406: $94
	ld   de, $1111                                   ; $6407: $11 $11 $11
	ld   c, [hl]                                     ; $640a: $4e
	rst  $38                                         ; $640b: $ff
	ld   sp, hl                                      ; $640c: $f9
	ld   sp, $7c12                                   ; $640d: $31 $12 $7c
	rst  $38                                         ; $6410: $ff
	rst  $38                                         ; $6411: $ff
	db   $eb                                         ; $6412: $eb
	add  a                                           ; $6413: $87
	sbc  l                                           ; $6414: $9d
	rst  $38                                         ; $6415: $ff
	db   $fc                                         ; $6416: $fc
	ld   [hl], e                                     ; $6417: $73
	ld   de, $1111                                   ; $6418: $11 $11 $11
	ld   l, h                                        ; $641b: $6c
	rst  $38                                         ; $641c: $ff
	ret  c                                           ; $641d: $d8

	ld   b, d                                        ; $641e: $42
	dec  [hl]                                        ; $641f: $35
	sbc  h                                           ; $6420: $9c
	rst  $28                                         ; $6421: $ef
	rst  $38                                         ; $6422: $ff
	jp   c, $ad88                                    ; $6423: $da $88 $ad

	rst  $38                                         ; $6426: $ff
	db   $fc                                         ; $6427: $fc
	add  h                                           ; $6428: $84
	ld   de, $1111                                   ; $6429: $11 $11 $11
	scf                                              ; $642c: $37
	cp   h                                           ; $642d: $bc
	ret                                              ; $642e: $c9


	ld   h, h                                        ; $642f: $64
	ld   b, l                                        ; $6430: $45
	ld   a, d                                        ; $6431: $7a
	cp   [hl]                                        ; $6432: $be
	db   $ed                                         ; $6433: $ed
	cp   c                                           ; $6434: $b9
	xor  c                                           ; $6435: $a9
	xor  h                                           ; $6436: $ac
	rst  $28                                         ; $6437: $ef
	db   $fd                                         ; $6438: $fd
	and  [hl]                                        ; $6439: $a6
	ld   b, d                                        ; $643a: $42
	ld   de, $3511                                   ; $643b: $11 $11 $35
	ld   l, c                                        ; $643e: $69
	sbc  c                                           ; $643f: $99
	ld   [hl], l                                     ; $6440: $75
	ld   b, h                                        ; $6441: $44
	ld   a, c                                        ; $6442: $79
	cp   h                                           ; $6443: $bc
	cp   e                                           ; $6444: $bb
	sbc  b                                           ; $6445: $98
	sbc  c                                           ; $6446: $99
	cp   h                                           ; $6447: $bc
	sbc  $ee                                         ; $6448: $de $ee
	jp   z, Jump_0bc_4475                            ; $644a: $ca $75 $44

	ld   d, l                                        ; $644d: $55
	ld   b, h                                        ; $644e: $44
	ld   b, h                                        ; $644f: $44
	ld   b, l                                        ; $6450: $45
	ld   h, [hl]                                     ; $6451: $66
	ld   h, [hl]                                     ; $6452: $66
	ld   h, [hl]                                     ; $6453: $66
	ld   a, b                                        ; $6454: $78
	adc  b                                           ; $6455: $88
	sbc  c                                           ; $6456: $99
	sbc  d                                           ; $6457: $9a
	xor  d                                           ; $6458: $aa
	call z, $bacc                                    ; $6459: $cc $cc $ba
	xor  c                                           ; $645c: $a9
	sbc  c                                           ; $645d: $99
	adc  b                                           ; $645e: $88
	ld   [hl], a                                     ; $645f: $77
	ld   h, l                                        ; $6460: $65
	ld   b, l                                        ; $6461: $45
	ld   d, l                                        ; $6462: $55
	ld   h, [hl]                                     ; $6463: $66
	ld   h, [hl]                                     ; $6464: $66
	ld   [hl], a                                     ; $6465: $77
	ld   h, [hl]                                     ; $6466: $66
	ld   h, [hl]                                     ; $6467: $66
	ld   a, b                                        ; $6468: $78
	xor  e                                           ; $6469: $ab
	cp   d                                           ; $646a: $ba
	sbc  c                                           ; $646b: $99
	sbc  b                                           ; $646c: $98
	sbc  c                                           ; $646d: $99
	xor  e                                           ; $646e: $ab
	jp   z, Jump_0bc_77a8                            ; $646f: $ca $a8 $77

	ld   [hl], a                                     ; $6472: $77
	ld   [hl], a                                     ; $6473: $77
	adc  b                                           ; $6474: $88
	add  a                                           ; $6475: $87
	ld   h, h                                        ; $6476: $64
	ld   b, h                                        ; $6477: $44
	ld   h, a                                        ; $6478: $67
	adc  c                                           ; $6479: $89
	add  a                                           ; $647a: $87
	ld   [hl], a                                     ; $647b: $77
	ld   [hl], a                                     ; $647c: $77
	adc  b                                           ; $647d: $88
	adc  c                                           ; $647e: $89
	sbc  d                                           ; $647f: $9a
	xor  c                                           ; $6480: $a9
	adc  b                                           ; $6481: $88
	adc  c                                           ; $6482: $89
	sbc  c                                           ; $6483: $99
	sbc  c                                           ; $6484: $99
	sbc  b                                           ; $6485: $98
	ld   [hl], a                                     ; $6486: $77
	ld   [hl], a                                     ; $6487: $77
	adc  c                                           ; $6488: $89
	sbc  b                                           ; $6489: $98
	ld   [hl], a                                     ; $648a: $77
	ld   h, a                                        ; $648b: $67
	ld   a, b                                        ; $648c: $78
	adc  b                                           ; $648d: $88
	ld   [hl], a                                     ; $648e: $77
	ld   h, [hl]                                     ; $648f: $66
	ld   a, b                                        ; $6490: $78
	sbc  b                                           ; $6491: $98
	sbc  b                                           ; $6492: $98
	adc  b                                           ; $6493: $88
	adc  b                                           ; $6494: $88
	adc  b                                           ; $6495: $88
	sbc  c                                           ; $6496: $99
	sbc  b                                           ; $6497: $98
	adc  c                                           ; $6498: $89
	adc  b                                           ; $6499: $88
	ld   a, b                                        ; $649a: $78
	adc  b                                           ; $649b: $88
	sbc  c                                           ; $649c: $99
	adc  b                                           ; $649d: $88
	ld   [hl], a                                     ; $649e: $77
	ld   [hl], a                                     ; $649f: $77
	ld   [hl], a                                     ; $64a0: $77
	adc  c                                           ; $64a1: $89
	sbc  b                                           ; $64a2: $98
	add  a                                           ; $64a3: $87
	ld   [hl], a                                     ; $64a4: $77
	ld   a, b                                        ; $64a5: $78
	sbc  b                                           ; $64a6: $98

Call_0bc_64a7:
	adc  b                                           ; $64a7: $88

Call_0bc_64a8:
	ld   [hl], a                                     ; $64a8: $77
	ld   [hl], a                                     ; $64a9: $77
	adc  b                                           ; $64aa: $88
	sbc  c                                           ; $64ab: $99
	sbc  c                                           ; $64ac: $99
	adc  b                                           ; $64ad: $88
	add  a                                           ; $64ae: $87
	ld   a, b                                        ; $64af: $78
	adc  c                                           ; $64b0: $89
	adc  b                                           ; $64b1: $88
	sbc  b                                           ; $64b2: $98
	adc  b                                           ; $64b3: $88
	ld   [hl], a                                     ; $64b4: $77
	ld   a, b                                        ; $64b5: $78
	adc  b                                           ; $64b6: $88
	adc  b                                           ; $64b7: $88
	add  a                                           ; $64b8: $87
	ld   [hl], a                                     ; $64b9: $77
	ld   [hl], a                                     ; $64ba: $77
	adc  b                                           ; $64bb: $88
	sbc  c                                           ; $64bc: $99
	sbc  b                                           ; $64bd: $98
	adc  b                                           ; $64be: $88
	ld   [hl], a                                     ; $64bf: $77
	adc  b                                           ; $64c0: $88
	sbc  b                                           ; $64c1: $98
	adc  b                                           ; $64c2: $88
	adc  c                                           ; $64c3: $89
	adc  b                                           ; $64c4: $88
	adc  b                                           ; $64c5: $88
	adc  c                                           ; $64c6: $89
	sbc  c                                           ; $64c7: $99
	adc  b                                           ; $64c8: $88
	add  a                                           ; $64c9: $87
	ld   [hl], a                                     ; $64ca: $77
	ld   a, b                                        ; $64cb: $78
	adc  b                                           ; $64cc: $88
	adc  b                                           ; $64cd: $88
	add  a                                           ; $64ce: $87
	ld   [hl], a                                     ; $64cf: $77
	ld   [hl], a                                     ; $64d0: $77
	adc  b                                           ; $64d1: $88
	sbc  c                                           ; $64d2: $99
	sbc  c                                           ; $64d3: $99
	adc  b                                           ; $64d4: $88
	adc  b                                           ; $64d5: $88
	sbc  c                                           ; $64d6: $99
	sbc  c                                           ; $64d7: $99
	sbc  c                                           ; $64d8: $99
	sbc  b                                           ; $64d9: $98
	adc  b                                           ; $64da: $88
	adc  b                                           ; $64db: $88
	adc  b                                           ; $64dc: $88
	adc  b                                           ; $64dd: $88
	adc  b                                           ; $64de: $88
	add  a                                           ; $64df: $87
	ld   [hl], a                                     ; $64e0: $77
	ld   [hl], a                                     ; $64e1: $77
	adc  b                                           ; $64e2: $88
	adc  b                                           ; $64e3: $88
	adc  b                                           ; $64e4: $88
	adc  b                                           ; $64e5: $88
	adc  b                                           ; $64e6: $88
	sbc  c                                           ; $64e7: $99
	sbc  c                                           ; $64e8: $99
	sbc  c                                           ; $64e9: $99
	sbc  c                                           ; $64ea: $99
	sbc  c                                           ; $64eb: $99
	sbc  b                                           ; $64ec: $98
	adc  b                                           ; $64ed: $88
	adc  c                                           ; $64ee: $89
	sbc  b                                           ; $64ef: $98
	adc  b                                           ; $64f0: $88
	adc  b                                           ; $64f1: $88
	adc  b                                           ; $64f2: $88
	adc  c                                           ; $64f3: $89
	adc  b                                           ; $64f4: $88
	adc  b                                           ; $64f5: $88
	adc  b                                           ; $64f6: $88
	sbc  c                                           ; $64f7: $99
	sbc  c                                           ; $64f8: $99
	sbc  c                                           ; $64f9: $99
	adc  b                                           ; $64fa: $88
	sbc  c                                           ; $64fb: $99
	adc  b                                           ; $64fc: $88
	adc  c                                           ; $64fd: $89
	sbc  b                                           ; $64fe: $98
	adc  b                                           ; $64ff: $88
	sbc  c                                           ; $6500: $99
	adc  b                                           ; $6501: $88
	adc  b                                           ; $6502: $88
	sbc  c                                           ; $6503: $99
	sbc  c                                           ; $6504: $99
	sbc  b                                           ; $6505: $98
	adc  c                                           ; $6506: $89
	sbc  b                                           ; $6507: $98
	adc  c                                           ; $6508: $89
	sbc  c                                           ; $6509: $99
	adc  b                                           ; $650a: $88
	adc  b                                           ; $650b: $88
	adc  b                                           ; $650c: $88
	sbc  b                                           ; $650d: $98
	sbc  b                                           ; $650e: $98
	sbc  c                                           ; $650f: $99
	adc  b                                           ; $6510: $88
	adc  c                                           ; $6511: $89
	sbc  b                                           ; $6512: $98
	adc  b                                           ; $6513: $88
	adc  b                                           ; $6514: $88
	adc  b                                           ; $6515: $88
	adc  b                                           ; $6516: $88
	adc  c                                           ; $6517: $89
	sbc  c                                           ; $6518: $99
	adc  b                                           ; $6519: $88
	adc  b                                           ; $651a: $88
	adc  b                                           ; $651b: $88
	adc  b                                           ; $651c: $88
	adc  c                                           ; $651d: $89
	sbc  c                                           ; $651e: $99
	adc  b                                           ; $651f: $88
	adc  b                                           ; $6520: $88
	sbc  c                                           ; $6521: $99
	adc  b                                           ; $6522: $88
	adc  b                                           ; $6523: $88
	adc  b                                           ; $6524: $88
	adc  b                                           ; $6525: $88
	adc  b                                           ; $6526: $88
	adc  b                                           ; $6527: $88
	adc  b                                           ; $6528: $88
	add  a                                           ; $6529: $87
	ld   [hl], a                                     ; $652a: $77
	ld   [hl], a                                     ; $652b: $77
	adc  b                                           ; $652c: $88
	adc  b                                           ; $652d: $88
	adc  c                                           ; $652e: $89
	adc  c                                           ; $652f: $89
	add  a                                           ; $6530: $87
	ld   [hl], a                                     ; $6531: $77
	adc  b                                           ; $6532: $88
	sbc  c                                           ; $6533: $99
	adc  b                                           ; $6534: $88
	ld   [hl], a                                     ; $6535: $77
	ld   [hl], a                                     ; $6536: $77
	ld   [hl], a                                     ; $6537: $77
	ld   [hl], a                                     ; $6538: $77
	adc  b                                           ; $6539: $88
	sbc  b                                           ; $653a: $98
	ld   [hl], a                                     ; $653b: $77
	ld   h, a                                        ; $653c: $67
	ld   a, b                                        ; $653d: $78
	sbc  b                                           ; $653e: $98
	sub  a                                           ; $653f: $97
	ld   h, [hl]                                     ; $6540: $66
	ld   l, b                                        ; $6541: $68
	adc  b                                           ; $6542: $88
	sbc  b                                           ; $6543: $98
	add  a                                           ; $6544: $87
	adc  b                                           ; $6545: $88
	adc  b                                           ; $6546: $88
	ld   [hl], a                                     ; $6547: $77
	ld   h, a                                        ; $6548: $67
	adc  c                                           ; $6549: $89
	xor  b                                           ; $654a: $a8
	add  a                                           ; $654b: $87
	ld   h, [hl]                                     ; $654c: $66
	ld   a, c                                        ; $654d: $79
	xor  c                                           ; $654e: $a9
	sbc  c                                           ; $654f: $99
	halt                                             ; $6550: $76
	ld   h, [hl]                                     ; $6551: $66
	ld   a, c                                        ; $6552: $79
	sbc  c                                           ; $6553: $99
	sbc  c                                           ; $6554: $99
	add  [hl]                                        ; $6555: $86
	ld   h, l                                        ; $6556: $65
	ld   a, b                                        ; $6557: $78
	sbc  d                                           ; $6558: $9a
	sbc  c                                           ; $6559: $99
	halt                                             ; $655a: $76
	ld   h, [hl]                                     ; $655b: $66
	ld   a, b                                        ; $655c: $78
	sbc  d                                           ; $655d: $9a
	adc  b                                           ; $655e: $88
	ld   h, [hl]                                     ; $655f: $66
	ld   h, a                                        ; $6560: $67
	sbc  c                                           ; $6561: $99
	sbc  b                                           ; $6562: $98
	sbc  c                                           ; $6563: $99
	add  a                                           ; $6564: $87
	ld   h, [hl]                                     ; $6565: $66
	adc  b                                           ; $6566: $88
	sbc  c                                           ; $6567: $99
	add  a                                           ; $6568: $87
	ld   h, a                                        ; $6569: $67
	ld   a, b                                        ; $656a: $78
	adc  b                                           ; $656b: $88
	sbc  b                                           ; $656c: $98
	add  a                                           ; $656d: $87
	adc  b                                           ; $656e: $88
	sbc  b                                           ; $656f: $98
	ld   [hl], a                                     ; $6570: $77
	ld   h, [hl]                                     ; $6571: $66
	ld   a, c                                        ; $6572: $79
	xor  d                                           ; $6573: $aa
	sbc  c                                           ; $6574: $99
	ld   h, [hl]                                     ; $6575: $66
	ld   h, a                                        ; $6576: $67
	xor  c                                           ; $6577: $a9
	xor  b                                           ; $6578: $a8
	ld   [hl], a                                     ; $6579: $77
	ld   a, c                                        ; $657a: $79
	sbc  c                                           ; $657b: $99
	halt                                             ; $657c: $76
	ld   a, b                                        ; $657d: $78
	sbc  c                                           ; $657e: $99
	sbc  c                                           ; $657f: $99
	ld   [hl], a                                     ; $6580: $77
	ld   h, a                                        ; $6581: $67
	adc  b                                           ; $6582: $88
	sbc  c                                           ; $6583: $99
	adc  b                                           ; $6584: $88
	halt                                             ; $6585: $76
	ld   h, a                                        ; $6586: $67
	sbc  d                                           ; $6587: $9a
	cp   b                                           ; $6588: $b8
	halt                                             ; $6589: $76
	ld   h, [hl]                                     ; $658a: $66
	ld   a, b                                        ; $658b: $78
	sbc  c                                           ; $658c: $99
	add  a                                           ; $658d: $87
	ld   [hl], a                                     ; $658e: $77
	ld   [hl], a                                     ; $658f: $77
	adc  b                                           ; $6590: $88
	sbc  c                                           ; $6591: $99
	sbc  b                                           ; $6592: $98
	halt                                             ; $6593: $76
	ld   h, a                                        ; $6594: $67
	ld   a, b                                        ; $6595: $78

Call_0bc_6596:
	adc  b                                           ; $6596: $88
	sbc  c                                           ; $6597: $99
	sbc  b                                           ; $6598: $98
	halt                                             ; $6599: $76
	halt                                             ; $659a: $76
	ld   h, a                                        ; $659b: $67
	ld   h, a                                        ; $659c: $67
	adc  b                                           ; $659d: $88
	add  a                                           ; $659e: $87
	ld   [hl], a                                     ; $659f: $77
	ld   a, c                                        ; $65a0: $79
	xor  e                                           ; $65a1: $ab
	xor  b                                           ; $65a2: $a8
	ld   [hl], h                                     ; $65a3: $74
	ld   h, [hl]                                     ; $65a4: $66
	ld   a, c                                        ; $65a5: $79
	sbc  e                                           ; $65a6: $9b
	res  0, l                                        ; $65a7: $cb $85
	dec  [hl]                                        ; $65a9: $35

Call_0bc_65aa:
	ld   a, e                                        ; $65aa: $7b
	call c, Call_0bc_44a6                            ; $65ab: $dc $a6 $44
	ld   h, a                                        ; $65ae: $67
	sbc  d                                           ; $65af: $9a
	xor  e                                           ; $65b0: $ab
	xor  c                                           ; $65b1: $a9
	ld   [hl], a                                     ; $65b2: $77
	ld   l, b                                        ; $65b3: $68
	adc  c                                           ; $65b4: $89
	sbc  c                                           ; $65b5: $99
	sub  a                                           ; $65b6: $97
	adc  b                                           ; $65b7: $88
	add  a                                           ; $65b8: $87
	ld   d, l                                        ; $65b9: $55
	ld   a, c                                        ; $65ba: $79
	cp   d                                           ; $65bb: $ba
	sbc  b                                           ; $65bc: $98
	ld   d, [hl]                                     ; $65bd: $56
	ld   d, [hl]                                     ; $65be: $56
	sbc  b                                           ; $65bf: $98
	xor  e                                           ; $65c0: $ab
	xor  c                                           ; $65c1: $a9
	add  a                                           ; $65c2: $87
	halt                                             ; $65c3: $76
	adc  d                                           ; $65c4: $8a
	cp   e                                           ; $65c5: $bb
	sub  a                                           ; $65c6: $97
	ld   d, h                                        ; $65c7: $54
	ld   l, b                                        ; $65c8: $68
	sbc  c                                           ; $65c9: $99
	add  a                                           ; $65ca: $87
	halt                                             ; $65cb: $76
	ld   [hl], a                                     ; $65cc: $77
	adc  b                                           ; $65cd: $88
	sbc  c                                           ; $65ce: $99
	sbc  d                                           ; $65cf: $9a
	sub  a                                           ; $65d0: $97
	ld   [hl], a                                     ; $65d1: $77
	sbc  d                                           ; $65d2: $9a
	sbc  b                                           ; $65d3: $98
	halt                                             ; $65d4: $76
	ld   h, [hl]                                     ; $65d5: $66
	adc  d                                           ; $65d6: $8a
	cp   e                                           ; $65d7: $bb
	sub  a                                           ; $65d8: $97
	ld   d, l                                        ; $65d9: $55
	ld   a, d                                        ; $65da: $7a
	sbc  d                                           ; $65db: $9a
	ld   h, [hl]                                     ; $65dc: $66
	ld   h, a                                        ; $65dd: $67
	xor  b                                           ; $65de: $a8
	xor  d                                           ; $65df: $aa
	xor  c                                           ; $65e0: $a9
	ld   h, [hl]                                     ; $65e1: $66
	ld   h, a                                        ; $65e2: $67
	adc  d                                           ; $65e3: $8a
	xor  c                                           ; $65e4: $a9
	ld   [hl], a                                     ; $65e5: $77
	ld   a, b                                        ; $65e6: $78
	sbc  b                                           ; $65e7: $98
	add  a                                           ; $65e8: $87
	ld   [hl], a                                     ; $65e9: $77
	adc  d                                           ; $65ea: $8a
	sbc  b                                           ; $65eb: $98
	ld   h, l                                        ; $65ec: $65
	ld   d, a                                        ; $65ed: $57
	sbc  e                                           ; $65ee: $9b
	cp   d                                           ; $65ef: $ba
	add  [hl]                                        ; $65f0: $86
	ld   [hl], a                                     ; $65f1: $77
	xor  e                                           ; $65f2: $ab
	xor  c                                           ; $65f3: $a9
	halt                                             ; $65f4: $76
	adc  b                                           ; $65f5: $88
	xor  c                                           ; $65f6: $a9
	ld   [hl], a                                     ; $65f7: $77
	ld   l, c                                        ; $65f8: $69
	sbc  c                                           ; $65f9: $99
	cp   b                                           ; $65fa: $b8
	ld   [hl], l                                     ; $65fb: $75
	ld   d, [hl]                                     ; $65fc: $56
	ld   l, b                                        ; $65fd: $68
	xor  d                                           ; $65fe: $aa
	xor  c                                           ; $65ff: $a9
	ld   [hl], a                                     ; $6600: $77
	ld   a, c                                        ; $6601: $79
	adc  b                                           ; $6602: $88
	adc  b                                           ; $6603: $88
	adc  e                                           ; $6604: $8b
	cp   c                                           ; $6605: $b9
	add  l                                           ; $6606: $85
	ld   d, l                                        ; $6607: $55
	ld   l, d                                        ; $6608: $6a
	adc  d                                           ; $6609: $8a
	halt                                             ; $660a: $76
	add  a                                           ; $660b: $87
	add  a                                           ; $660c: $87
	ld   [hl], a                                     ; $660d: $77
	ld   a, b                                        ; $660e: $78
	sbc  c                                           ; $660f: $99
	xor  d                                           ; $6610: $aa
	sbc  d                                           ; $6611: $9a
	ld   [hl], a                                     ; $6612: $77
	ld   h, l                                        ; $6613: $65
	ld   a, c                                        ; $6614: $79
	xor  e                                           ; $6615: $ab
	sbc  b                                           ; $6616: $98
	ld   h, a                                        ; $6617: $67
	add  a                                           ; $6618: $87
	add  a                                           ; $6619: $87
	ld   [hl], a                                     ; $661a: $77
	ld   a, b                                        ; $661b: $78
	ld   h, a                                        ; $661c: $67
	ld   h, a                                        ; $661d: $67
	sbc  c                                           ; $661e: $99
	xor  c                                           ; $661f: $a9
	ld   a, b                                        ; $6620: $78
	sbc  d                                           ; $6621: $9a
	cp   d                                           ; $6622: $ba
	add  [hl]                                        ; $6623: $86
	ld   d, [hl]                                     ; $6624: $56
	ld   a, c                                        ; $6625: $79
	sbc  c                                           ; $6626: $99
	add  a                                           ; $6627: $87
	ld   [hl], a                                     ; $6628: $77
	adc  c                                           ; $6629: $89
	adc  b                                           ; $662a: $88
	halt                                             ; $662b: $76
	ld   a, b                                        ; $662c: $78
	adc  d                                           ; $662d: $8a
	xor  c                                           ; $662e: $a9
	sub  a                                           ; $662f: $97
	halt                                             ; $6630: $76
	adc  d                                           ; $6631: $8a
	xor  d                                           ; $6632: $aa
	xor  d                                           ; $6633: $aa
	add  l                                           ; $6634: $85
	ld   b, e                                        ; $6635: $43
	ld   a, c                                        ; $6636: $79
	cp   e                                           ; $6637: $bb
	sub  a                                           ; $6638: $97
	ld   d, l                                        ; $6639: $55
	ld   h, a                                        ; $663a: $67
	xor  c                                           ; $663b: $a9
	sub  a                                           ; $663c: $97
	ld   a, b                                        ; $663d: $78
	sbc  d                                           ; $663e: $9a
	sub  a                                           ; $663f: $97
	ld   [hl], a                                     ; $6640: $77
	xor  e                                           ; $6641: $ab
	call z, Call_0bc_64a7                            ; $6642: $cc $a7 $64
	ld   d, [hl]                                     ; $6645: $56
	adc  e                                           ; $6646: $8b
	cp   e                                           ; $6647: $bb
	sub  l                                           ; $6648: $95
	ld   b, e                                        ; $6649: $43
	ld   e, b                                        ; $664a: $58
	sbc  d                                           ; $664b: $9a
	sbc  b                                           ; $664c: $98
	add  a                                           ; $664d: $87
	sub  a                                           ; $664e: $97
	ld   [hl], a                                     ; $664f: $77
	ld   [hl], a                                     ; $6650: $77
	sbc  d                                           ; $6651: $9a
	db   $ec                                         ; $6652: $ec
	ret                                              ; $6653: $c9


	ld   b, e                                        ; $6654: $43
	inc  d                                           ; $6655: $14
	ld   a, e                                        ; $6656: $7b
	cp   $d8                                         ; $6657: $fe $d8
	ld   hl, $ad15                                   ; $6659: $21 $15 $ad
	db   $ec                                         ; $665c: $ec
	and  a                                           ; $665d: $a7
	ld   b, h                                        ; $665e: $44
	dec  h                                           ; $665f: $25
	adc  e                                           ; $6660: $8b
	rst  $38                                         ; $6661: $ff
	ei                                               ; $6662: $fb
	ld   h, e                                        ; $6663: $63
	inc  de                                          ; $6664: $13
	ld   b, a                                        ; $6665: $47
	cp   l                                           ; $6666: $bd
	db   $db                                         ; $6667: $db
	ld   [hl], e                                     ; $6668: $73
	inc  d                                           ; $6669: $14
	ld   l, e                                        ; $666a: $6b
	db   $dd                                         ; $666b: $dd
	rst  ToBoot                                         ; $666c: $c7
	ld   d, l                                        ; $666d: $55
	ld   d, a                                        ; $666e: $57
	ld   a, b                                        ; $666f: $78
	cp   l                                           ; $6670: $bd
	db   $db                                         ; $6671: $db
	sub  a                                           ; $6672: $97
	ld   h, l                                        ; $6673: $65
	ld   b, l                                        ; $6674: $45
	ld   e, c                                        ; $6675: $59
	cp   h                                           ; $6676: $bc
	ret  z                                           ; $6677: $c8

	ld   [hl], d                                     ; $6678: $72
	inc  [hl]                                        ; $6679: $34
	ld   l, d                                        ; $667a: $6a
	cp   h                                           ; $667b: $bc
	sub  a                                           ; $667c: $97
	ld   d, l                                        ; $667d: $55
	ld   l, b                                        ; $667e: $68
	ld   a, d                                        ; $667f: $7a
	xor  d                                           ; $6680: $aa
	cp   c                                           ; $6681: $b9
	and  a                                           ; $6682: $a7
	ld   d, [hl]                                     ; $6683: $56
	ld   l, b                                        ; $6684: $68
	cp   e                                           ; $6685: $bb
	sub  a                                           ; $6686: $97
	ld   b, l                                        ; $6687: $45
	ld   e, c                                        ; $6688: $59
	xor  d                                           ; $6689: $aa
	add  a                                           ; $668a: $87
	ld   [hl], a                                     ; $668b: $77
	adc  b                                           ; $668c: $88
	xor  c                                           ; $668d: $a9
	adc  c                                           ; $668e: $89
	sbc  e                                           ; $668f: $9b
	cp   d                                           ; $6690: $ba
	halt                                             ; $6691: $76
	ld   d, a                                        ; $6692: $57
	adc  b                                           ; $6693: $88
	xor  c                                           ; $6694: $a9
	xor  c                                           ; $6695: $a9
	sub  a                                           ; $6696: $97
	ld   d, l                                        ; $6697: $55
	ld   d, a                                        ; $6698: $57
	sbc  c                                           ; $6699: $99
	sub  a                                           ; $669a: $97
	adc  c                                           ; $669b: $89
	add  a                                           ; $669c: $87
	ld   h, [hl]                                     ; $669d: $66
	ld   a, d                                        ; $669e: $7a
	cp   e                                           ; $669f: $bb
	cp   c                                           ; $66a0: $b9
	ld   h, [hl]                                     ; $66a1: $66
	ld   a, c                                        ; $66a2: $79
	xor  c                                           ; $66a3: $a9
	ld   [hl], l                                     ; $66a4: $75
	ld   d, a                                        ; $66a5: $57
	sbc  d                                           ; $66a6: $9a
	sub  a                                           ; $66a7: $97
	ld   h, [hl]                                     ; $66a8: $66
	sbc  e                                           ; $66a9: $9b
	xor  b                                           ; $66aa: $a8
	ld   h, l                                        ; $66ab: $65
	ld   d, a                                        ; $66ac: $57
	sbc  d                                           ; $66ad: $9a
	cp   c                                           ; $66ae: $b9
	sbc  c                                           ; $66af: $99
	sbc  c                                           ; $66b0: $99
	sub  a                                           ; $66b1: $97
	halt                                             ; $66b2: $76
	ld   a, c                                        ; $66b3: $79
	sbc  c                                           ; $66b4: $99
	add  a                                           ; $66b5: $87
	halt                                             ; $66b6: $76
	ld   l, b                                        ; $66b7: $68
	sbc  e                                           ; $66b8: $9b
	and  a                                           ; $66b9: $a7
	ld   d, h                                        ; $66ba: $54
	ld   h, a                                        ; $66bb: $67
	xor  e                                           ; $66bc: $ab
	sbc  c                                           ; $66bd: $99
	ld   a, b                                        ; $66be: $78
	adc  b                                           ; $66bf: $88
	xor  b                                           ; $66c0: $a8
	cp   c                                           ; $66c1: $b9
	adc  c                                           ; $66c2: $89
	halt                                             ; $66c3: $76
	ld   d, l                                        ; $66c4: $55
	ld   l, d                                        ; $66c5: $6a
	xor  e                                           ; $66c6: $ab
	ret  z                                           ; $66c7: $c8

	sub  h                                           ; $66c8: $94
	ld   b, [hl]                                     ; $66c9: $46
	ld   a, d                                        ; $66ca: $7a
	xor  d                                           ; $66cb: $aa
	xor  b                                           ; $66cc: $a8
	add  a                                           ; $66cd: $87
	ld   l, c                                        ; $66ce: $69
	ld   a, d                                        ; $66cf: $7a
	sbc  b                                           ; $66d0: $98
	add  [hl]                                        ; $66d1: $86
	ld   [hl], a                                     ; $66d2: $77
	sbc  b                                           ; $66d3: $98
	sub  [hl]                                        ; $66d4: $96
	ld   d, [hl]                                     ; $66d5: $56
	ld   a, d                                        ; $66d6: $7a
	xor  c                                           ; $66d7: $a9
	halt                                             ; $66d8: $76
	ld   d, [hl]                                     ; $66d9: $56
	sbc  d                                           ; $66da: $9a
	xor  c                                           ; $66db: $a9
	adc  b                                           ; $66dc: $88
	adc  c                                           ; $66dd: $89
	cp   c                                           ; $66de: $b9
	add  l                                           ; $66df: $85
	ld   d, a                                        ; $66e0: $57
	adc  l                                           ; $66e1: $8d
	call z, $3372                                    ; $66e2: $cc $72 $33
	sbc  h                                           ; $66e5: $9c
	xor  e                                           ; $66e6: $ab
	ld   h, [hl]                                     ; $66e7: $66
	ld   [hl], a                                     ; $66e8: $77
	xor  b                                           ; $66e9: $a8
	adc  c                                           ; $66ea: $89
	xor  c                                           ; $66eb: $a9
	sbc  c                                           ; $66ec: $99
	ld   [hl], a                                     ; $66ed: $77
	ld   a, b                                        ; $66ee: $78
	cp   b                                           ; $66ef: $b8
	add  [hl]                                        ; $66f0: $86
	ld   l, c                                        ; $66f1: $69
	adc  e                                           ; $66f2: $8b
	sub  [hl]                                        ; $66f3: $96
	ld   d, l                                        ; $66f4: $55
	adc  b                                           ; $66f5: $88
	xor  d                                           ; $66f6: $aa
	adc  b                                           ; $66f7: $88
	ld   h, [hl]                                     ; $66f8: $66
	ld   h, a                                        ; $66f9: $67
	xor  c                                           ; $66fa: $a9
	ret                                              ; $66fb: $c9


	adc  b                                           ; $66fc: $88
	ld   l, d                                        ; $66fd: $6a
	adc  c                                           ; $66fe: $89
	sub  l                                           ; $66ff: $95
	ld   [hl], l                                     ; $6700: $75
	ld   a, d                                        ; $6701: $7a
	xor  h                                           ; $6702: $ac
	add  [hl]                                        ; $6703: $86
	ld   [hl], h                                     ; $6704: $74
	ld   [hl], a                                     ; $6705: $77
	xor  h                                           ; $6706: $ac
	cp   d                                           ; $6707: $ba
	ld   h, l                                        ; $6708: $65
	ld   d, a                                        ; $6709: $57
	adc  d                                           ; $670a: $8a
	cp   e                                           ; $670b: $bb
	cp   d                                           ; $670c: $ba
	add  a                                           ; $670d: $87
	ld   d, h                                        ; $670e: $54
	ld   h, [hl]                                     ; $670f: $66
	xor  d                                           ; $6710: $aa
	sbc  c                                           ; $6711: $99
	ld   h, a                                        ; $6712: $67
	ld   h, [hl]                                     ; $6713: $66
	halt                                             ; $6714: $76
	sbc  c                                           ; $6715: $99
	xor  d                                           ; $6716: $aa
	adc  b                                           ; $6717: $88
	halt                                             ; $6718: $76
	add  [hl]                                        ; $6719: $86
	ld   a, b                                        ; $671a: $78
	xor  h                                           ; $671b: $ac
	sbc  b                                           ; $671c: $98
	ld   h, h                                        ; $671d: $64
	ld   h, a                                        ; $671e: $67
	xor  e                                           ; $671f: $ab
	sbc  b                                           ; $6720: $98
	ld   d, l                                        ; $6721: $55
	adc  c                                           ; $6722: $89
	xor  c                                           ; $6723: $a9
	ld   [hl], a                                     ; $6724: $77
	ld   [hl], a                                     ; $6725: $77
	xor  d                                           ; $6726: $aa
	sbc  c                                           ; $6727: $99
	ld   a, b                                        ; $6728: $78
	adc  c                                           ; $6729: $89
	sub  a                                           ; $672a: $97
	ld   h, l                                        ; $672b: $65
	ld   l, c                                        ; $672c: $69
	xor  c                                           ; $672d: $a9
	add  a                                           ; $672e: $87
	adc  b                                           ; $672f: $88
	ld   a, b                                        ; $6730: $78
	ld   h, a                                        ; $6731: $67
	ld   [hl], a                                     ; $6732: $77
	sbc  c                                           ; $6733: $99
	sbc  b                                           ; $6734: $98
	adc  d                                           ; $6735: $8a
	sbc  c                                           ; $6736: $99
	halt                                             ; $6737: $76
	adc  d                                           ; $6738: $8a
	jp   z, $2574                                    ; $6739: $ca $74 $25

	adc  e                                           ; $673c: $8b
	jp   z, Jump_0bc_6796                            ; $673d: $ca $96 $67

	ld   a, b                                        ; $6740: $78
	ld   [hl], a                                     ; $6741: $77
	ld   a, c                                        ; $6742: $79
	xor  c                                           ; $6743: $a9
	add  a                                           ; $6744: $87
	halt                                             ; $6745: $76
	adc  c                                           ; $6746: $89
	cp   e                                           ; $6747: $bb
	add  a                                           ; $6748: $87
	ld   b, h                                        ; $6749: $44
	ld   l, b                                        ; $674a: $68
	cp   e                                           ; $674b: $bb
	xor  b                                           ; $674c: $a8
	ld   d, l                                        ; $674d: $55
	ld   b, [hl]                                     ; $674e: $46
	adc  b                                           ; $674f: $88
	xor  b                                           ; $6750: $a8
	sbc  c                                           ; $6751: $99
	ld   [hl], a                                     ; $6752: $77
	ld   a, b                                        ; $6753: $78
	sub  a                                           ; $6754: $97
	adc  d                                           ; $6755: $8a
	cp   d                                           ; $6756: $ba
	sub  [hl]                                        ; $6757: $96
	ld   h, [hl]                                     ; $6758: $66
	adc  c                                           ; $6759: $89
	ld   [hl], a                                     ; $675a: $77
	ld   h, [hl]                                     ; $675b: $66
	sbc  d                                           ; $675c: $9a
	sub  a                                           ; $675d: $97
	ld   d, [hl]                                     ; $675e: $56
	ld   l, c                                        ; $675f: $69
	cp   c                                           ; $6760: $b9
	and  [hl]                                        ; $6761: $a6
	ld   d, a                                        ; $6762: $57
	ld   a, d                                        ; $6763: $7a
	xor  b                                           ; $6764: $a8
	add  a                                           ; $6765: $87
	adc  c                                           ; $6766: $89
	ld   a, b                                        ; $6767: $78
	ld   a, b                                        ; $6768: $78
	sbc  b                                           ; $6769: $98
	sbc  b                                           ; $676a: $98
	ld   [hl], a                                     ; $676b: $77
	ld   h, a                                        ; $676c: $67
	adc  d                                           ; $676d: $8a
	xor  c                                           ; $676e: $a9
	add  l                                           ; $676f: $85
	ld   d, [hl]                                     ; $6770: $56
	adc  e                                           ; $6771: $8b
	cp   d                                           ; $6772: $ba
	halt                                             ; $6773: $76
	ld   d, [hl]                                     ; $6774: $56
	ld   a, b                                        ; $6775: $78
	sub  a                                           ; $6776: $97
	halt                                             ; $6777: $76
	ld   a, b                                        ; $6778: $78
	adc  b                                           ; $6779: $88
	ld   h, a                                        ; $677a: $67
	ld   a, b                                        ; $677b: $78
	sub  a                                           ; $677c: $97
	adc  b                                           ; $677d: $88
	sbc  b                                           ; $677e: $98
	ld   a, b                                        ; $677f: $78
	ld   h, a                                        ; $6780: $67
	adc  d                                           ; $6781: $8a
	res  0, l                                        ; $6782: $cb $85
	ld   b, l                                        ; $6784: $45
	ld   l, c                                        ; $6785: $69
	cp   d                                           ; $6786: $ba
	xor  b                                           ; $6787: $a8
	add  l                                           ; $6788: $85
	halt                                             ; $6789: $76
	ld   a, c                                        ; $678a: $79
	sbc  d                                           ; $678b: $9a
	adc  b                                           ; $678c: $88
	ld   [hl], a                                     ; $678d: $77
	add  a                                           ; $678e: $87
	ld   a, b                                        ; $678f: $78
	sbc  d                                           ; $6790: $9a
	sbc  c                                           ; $6791: $99
	add  l                                           ; $6792: $85
	ld   d, l                                        ; $6793: $55
	adc  e                                           ; $6794: $8b
	xor  d                                           ; $6795: $aa

Jump_0bc_6796:
	halt                                             ; $6796: $76
	ld   d, [hl]                                     ; $6797: $56
	sbc  c                                           ; $6798: $99
	xor  b                                           ; $6799: $a8
	sub  a                                           ; $679a: $97
	ld   a, b                                        ; $679b: $78
	ld   a, c                                        ; $679c: $79
	ld   [hl], a                                     ; $679d: $77
	sbc  c                                           ; $679e: $99
	xor  c                                           ; $679f: $a9
	adc  c                                           ; $67a0: $89
	ld   a, b                                        ; $67a1: $78
	add  [hl]                                        ; $67a2: $86
	ld   h, [hl]                                     ; $67a3: $66
	sbc  d                                           ; $67a4: $9a
	cp   d                                           ; $67a5: $ba
	halt                                             ; $67a6: $76
	ld   l, b                                        ; $67a7: $68
	sbc  c                                           ; $67a8: $99
	add  a                                           ; $67a9: $87
	ld   a, b                                        ; $67aa: $78
	xor  d                                           ; $67ab: $aa
	add  a                                           ; $67ac: $87
	ld   b, l                                        ; $67ad: $45
	ld   a, c                                        ; $67ae: $79
	cp   d                                           ; $67af: $ba
	sub  [hl]                                        ; $67b0: $96
	ld   h, [hl]                                     ; $67b1: $66
	ld   e, c                                        ; $67b2: $59
	sbc  d                                           ; $67b3: $9a
	sub  [hl]                                        ; $67b4: $96
	halt                                             ; $67b5: $76
	adc  b                                           ; $67b6: $88
	sbc  b                                           ; $67b7: $98
	add  a                                           ; $67b8: $87
	adc  c                                           ; $67b9: $89
	adc  c                                           ; $67ba: $89
	halt                                             ; $67bb: $76
	add  a                                           ; $67bc: $87
	adc  b                                           ; $67bd: $88
	adc  b                                           ; $67be: $88
	ld   [hl], a                                     ; $67bf: $77
	sbc  b                                           ; $67c0: $98
	xor  c                                           ; $67c1: $a9
	sub  a                                           ; $67c2: $97
	ld   h, a                                        ; $67c3: $67
	ld   a, b                                        ; $67c4: $78
	add  a                                           ; $67c5: $87
	sbc  b                                           ; $67c6: $98
	xor  c                                           ; $67c7: $a9
	add  a                                           ; $67c8: $87
	ld   h, a                                        ; $67c9: $67
	sbc  d                                           ; $67ca: $9a
	sub  a                                           ; $67cb: $97
	ld   h, [hl]                                     ; $67cc: $66
	adc  c                                           ; $67cd: $89
	adc  b                                           ; $67ce: $88
	adc  c                                           ; $67cf: $89
	adc  b                                           ; $67d0: $88
	sub  a                                           ; $67d1: $97
	adc  b                                           ; $67d2: $88
	adc  c                                           ; $67d3: $89
	adc  b                                           ; $67d4: $88
	ld   [hl], a                                     ; $67d5: $77
	add  a                                           ; $67d6: $87
	add  a                                           ; $67d7: $87
	adc  b                                           ; $67d8: $88
	ld   a, b                                        ; $67d9: $78
	sbc  c                                           ; $67da: $99
	xor  b                                           ; $67db: $a8
	add  a                                           ; $67dc: $87
	ld   h, [hl]                                     ; $67dd: $66
	ld   e, b                                        ; $67de: $58
	sbc  e                                           ; $67df: $9b
	ret                                              ; $67e0: $c9


	add  l                                           ; $67e1: $85
	ld   d, [hl]                                     ; $67e2: $56
	ld   a, b                                        ; $67e3: $78
	adc  c                                           ; $67e4: $89
	sbc  d                                           ; $67e5: $9a
	sbc  b                                           ; $67e6: $98
	ld   [hl], a                                     ; $67e7: $77
	ld   l, b                                        ; $67e8: $68
	sbc  e                                           ; $67e9: $9b
	xor  c                                           ; $67ea: $a9
	halt                                             ; $67eb: $76
	ld   h, a                                        ; $67ec: $67
	adc  c                                           ; $67ed: $89
	adc  c                                           ; $67ee: $89
	sbc  c                                           ; $67ef: $99
	sub  a                                           ; $67f0: $97
	halt                                             ; $67f1: $76
	ld   h, a                                        ; $67f2: $67
	adc  d                                           ; $67f3: $8a
	sbc  b                                           ; $67f4: $98
	adc  b                                           ; $67f5: $88
	add  a                                           ; $67f6: $87
	ld   [hl], a                                     ; $67f7: $77
	ld   a, c                                        ; $67f8: $79
	sbc  b                                           ; $67f9: $98
	sub  [hl]                                        ; $67fa: $96
	sbc  b                                           ; $67fb: $98
	xor  c                                           ; $67fc: $a9
	sbc  b                                           ; $67fd: $98
	ld   h, [hl]                                     ; $67fe: $66
	ld   a, b                                        ; $67ff: $78
	sbc  c                                           ; $6800: $99
	sbc  c                                           ; $6801: $99
	add  a                                           ; $6802: $87
	ld   h, [hl]                                     ; $6803: $66
	ld   a, b                                        ; $6804: $78
	adc  c                                           ; $6805: $89
	sbc  b                                           ; $6806: $98
	halt                                             ; $6807: $76
	ld   [hl], a                                     ; $6808: $77
	adc  c                                           ; $6809: $89
	sbc  c                                           ; $680a: $99
	xor  c                                           ; $680b: $a9
	add  [hl]                                        ; $680c: $86
	ld   h, [hl]                                     ; $680d: $66
	ld   a, c                                        ; $680e: $79
	xor  d                                           ; $680f: $aa
	sub  [hl]                                        ; $6810: $96
	ld   d, [hl]                                     ; $6811: $56
	ld   l, c                                        ; $6812: $69
	sbc  c                                           ; $6813: $99
	sbc  b                                           ; $6814: $98
	add  a                                           ; $6815: $87
	ld   a, b                                        ; $6816: $78
	ld   [hl], a                                     ; $6817: $77
	ld   a, c                                        ; $6818: $79
	sbc  b                                           ; $6819: $98
	sbc  b                                           ; $681a: $98
	adc  b                                           ; $681b: $88
	adc  c                                           ; $681c: $89
	adc  b                                           ; $681d: $88
	ld   h, a                                        ; $681e: $67
	adc  c                                           ; $681f: $89
	xor  b                                           ; $6820: $a8
	add  [hl]                                        ; $6821: $86
	ld   h, a                                        ; $6822: $67
	ld   a, c                                        ; $6823: $79
	sbc  d                                           ; $6824: $9a
	add  [hl]                                        ; $6825: $86
	halt                                             ; $6826: $76
	adc  c                                           ; $6827: $89
	sbc  c                                           ; $6828: $99
	ld   [hl], a                                     ; $6829: $77
	adc  b                                           ; $682a: $88
	sbc  c                                           ; $682b: $99
	add  [hl]                                        ; $682c: $86
	ld   [hl], a                                     ; $682d: $77
	adc  d                                           ; $682e: $8a
	sbc  b                                           ; $682f: $98
	halt                                             ; $6830: $76
	adc  b                                           ; $6831: $88
	adc  b                                           ; $6832: $88
	adc  b                                           ; $6833: $88
	adc  c                                           ; $6834: $89
	ld   a, b                                        ; $6835: $78
	add  a                                           ; $6836: $87
	adc  b                                           ; $6837: $88
	adc  c                                           ; $6838: $89
	adc  c                                           ; $6839: $89
	adc  c                                           ; $683a: $89
	sbc  b                                           ; $683b: $98
	add  a                                           ; $683c: $87
	add  a                                           ; $683d: $87
	adc  b                                           ; $683e: $88
	adc  d                                           ; $683f: $8a
	adc  b                                           ; $6840: $88
	ld   [hl], a                                     ; $6841: $77
	adc  c                                           ; $6842: $89
	xor  d                                           ; $6843: $aa
	add  [hl]                                        ; $6844: $86
	ld   b, l                                        ; $6845: $45
	ld   a, c                                        ; $6846: $79
	cp   d                                           ; $6847: $ba
	sbc  b                                           ; $6848: $98
	adc  b                                           ; $6849: $88
	ld   [hl], a                                     ; $684a: $77
	ld   h, a                                        ; $684b: $67
	adc  c                                           ; $684c: $89
	xor  d                                           ; $684d: $aa
	and  a                                           ; $684e: $a7
	ld   h, [hl]                                     ; $684f: $66
	ld   l, c                                        ; $6850: $69
	sbc  d                                           ; $6851: $9a
	sbc  b                                           ; $6852: $98
	add  a                                           ; $6853: $87
	ld   a, b                                        ; $6854: $78
	ld   [hl], a                                     ; $6855: $77
	ld   [hl], a                                     ; $6856: $77
	adc  b                                           ; $6857: $88
	xor  c                                           ; $6858: $a9
	add  a                                           ; $6859: $87
	ld   h, a                                        ; $685a: $67
	ld   a, b                                        ; $685b: $78
	add  a                                           ; $685c: $87
	ld   [hl], a                                     ; $685d: $77
	sbc  c                                           ; $685e: $99
	adc  b                                           ; $685f: $88
	ld   [hl], a                                     ; $6860: $77
	sbc  b                                           ; $6861: $98
	adc  b                                           ; $6862: $88
	ld   a, b                                        ; $6863: $78
	adc  c                                           ; $6864: $89
	xor  b                                           ; $6865: $a8
	halt                                             ; $6866: $76
	ld   a, b                                        ; $6867: $78
	sbc  d                                           ; $6868: $9a
	xor  d                                           ; $6869: $aa
	add  [hl]                                        ; $686a: $86
	ld   h, [hl]                                     ; $686b: $66
	adc  c                                           ; $686c: $89
	xor  d                                           ; $686d: $aa
	ld   [hl], a                                     ; $686e: $77
	ld   h, [hl]                                     ; $686f: $66
	ld   a, b                                        ; $6870: $78
	xor  b                                           ; $6871: $a8
	sub  a                                           ; $6872: $97
	ld   a, b                                        ; $6873: $78
	adc  b                                           ; $6874: $88
	add  a                                           ; $6875: $87
	ld   [hl], a                                     ; $6876: $77
	adc  c                                           ; $6877: $89
	xor  c                                           ; $6878: $a9
	add  a                                           ; $6879: $87
	ld   h, a                                        ; $687a: $67
	adc  b                                           ; $687b: $88
	sbc  d                                           ; $687c: $9a
	xor  b                                           ; $687d: $a8
	halt                                             ; $687e: $76
	ld   h, a                                        ; $687f: $67
	adc  c                                           ; $6880: $89
	sbc  c                                           ; $6881: $99
	add  a                                           ; $6882: $87
	ld   [hl], a                                     ; $6883: $77
	adc  b                                           ; $6884: $88
	adc  b                                           ; $6885: $88
	adc  c                                           ; $6886: $89
	sbc  c                                           ; $6887: $99
	add  a                                           ; $6888: $87
	halt                                             ; $6889: $76
	ld   a, b                                        ; $688a: $78
	xor  d                                           ; $688b: $aa
	add  a                                           ; $688c: $87
	ld   [hl], a                                     ; $688d: $77
	xor  d                                           ; $688e: $aa
	xor  b                                           ; $688f: $a8
	halt                                             ; $6890: $76
	ld   l, b                                        ; $6891: $68
	xor  d                                           ; $6892: $aa
	sub  a                                           ; $6893: $97
	ld   h, [hl]                                     ; $6894: $66
	ld   a, b                                        ; $6895: $78
	sbc  c                                           ; $6896: $99
	adc  c                                           ; $6897: $89
	sbc  b                                           ; $6898: $98
	add  a                                           ; $6899: $87
	halt                                             ; $689a: $76
	ld   a, b                                        ; $689b: $78
	sbc  c                                           ; $689c: $99
	sbc  b                                           ; $689d: $98
	adc  b                                           ; $689e: $88
	add  a                                           ; $689f: $87
	ld   a, b                                        ; $68a0: $78
	adc  c                                           ; $68a1: $89
	sbc  b                                           ; $68a2: $98
	adc  c                                           ; $68a3: $89
	sbc  b                                           ; $68a4: $98
	ld   [hl], a                                     ; $68a5: $77
	ld   h, [hl]                                     ; $68a6: $66
	ld   a, c                                        ; $68a7: $79
	cp   d                                           ; $68a8: $ba
	sub  [hl]                                        ; $68a9: $96
	ld   d, [hl]                                     ; $68aa: $56
	adc  c                                           ; $68ab: $89
	sbc  d                                           ; $68ac: $9a
	sbc  c                                           ; $68ad: $99
	sbc  b                                           ; $68ae: $98
	sbc  b                                           ; $68af: $98
	adc  b                                           ; $68b0: $88
	adc  c                                           ; $68b1: $89
	ld   [hl], a                                     ; $68b2: $77
	adc  b                                           ; $68b3: $88
	sbc  c                                           ; $68b4: $99
	ld   [hl], a                                     ; $68b5: $77
	ld   [hl], a                                     ; $68b6: $77
	sbc  c                                           ; $68b7: $99
	adc  b                                           ; $68b8: $88
	ld   [hl], a                                     ; $68b9: $77
	ld   a, b                                        ; $68ba: $78
	sbc  b                                           ; $68bb: $98
	add  a                                           ; $68bc: $87
	ld   a, b                                        ; $68bd: $78
	adc  b                                           ; $68be: $88
	add  a                                           ; $68bf: $87
	adc  b                                           ; $68c0: $88
	sbc  c                                           ; $68c1: $99
	adc  b                                           ; $68c2: $88
	ld   h, [hl]                                     ; $68c3: $66
	ld   a, b                                        ; $68c4: $78
	sbc  c                                           ; $68c5: $99
	xor  d                                           ; $68c6: $aa
	add  a                                           ; $68c7: $87
	halt                                             ; $68c8: $76
	adc  b                                           ; $68c9: $88
	xor  d                                           ; $68ca: $aa
	adc  b                                           ; $68cb: $88
	halt                                             ; $68cc: $76
	ld   a, b                                        ; $68cd: $78
	sbc  b                                           ; $68ce: $98
	adc  c                                           ; $68cf: $89
	sbc  c                                           ; $68d0: $99
	sbc  b                                           ; $68d1: $98
	ld   [hl], a                                     ; $68d2: $77
	ld   a, b                                        ; $68d3: $78
	sbc  c                                           ; $68d4: $99
	sbc  c                                           ; $68d5: $99
	adc  b                                           ; $68d6: $88
	adc  b                                           ; $68d7: $88
	adc  c                                           ; $68d8: $89
	adc  b                                           ; $68d9: $88
	adc  b                                           ; $68da: $88
	sbc  b                                           ; $68db: $98
	ld   [hl], a                                     ; $68dc: $77
	ld   [hl], a                                     ; $68dd: $77
	sbc  c                                           ; $68de: $99
	sbc  c                                           ; $68df: $99
	adc  b                                           ; $68e0: $88
	add  a                                           ; $68e1: $87
	ld   [hl], a                                     ; $68e2: $77
	ld   a, b                                        ; $68e3: $78
	xor  d                                           ; $68e4: $aa
	sub  a                                           ; $68e5: $97
	ld   h, [hl]                                     ; $68e6: $66
	ld   a, b                                        ; $68e7: $78
	sbc  d                                           ; $68e8: $9a
	xor  c                                           ; $68e9: $a9
	add  a                                           ; $68ea: $87
	ld   [hl], a                                     ; $68eb: $77
	adc  c                                           ; $68ec: $89
	sbc  b                                           ; $68ed: $98
	halt                                             ; $68ee: $76
	ld   a, c                                        ; $68ef: $79
	xor  d                                           ; $68f0: $aa
	sbc  b                                           ; $68f1: $98
	ld   [hl], a                                     ; $68f2: $77
	ld   a, b                                        ; $68f3: $78
	sbc  c                                           ; $68f4: $99
	add  a                                           ; $68f5: $87
	ld   a, b                                        ; $68f6: $78
	adc  c                                           ; $68f7: $89
	adc  b                                           ; $68f8: $88
	adc  b                                           ; $68f9: $88
	sbc  c                                           ; $68fa: $99
	adc  c                                           ; $68fb: $89
	adc  b                                           ; $68fc: $88
	adc  b                                           ; $68fd: $88
	adc  b                                           ; $68fe: $88
	sbc  b                                           ; $68ff: $98
	sbc  c                                           ; $6900: $99
	add  a                                           ; $6901: $87
	ld   [hl], a                                     ; $6902: $77
	adc  b                                           ; $6903: $88
	add  a                                           ; $6904: $87
	adc  c                                           ; $6905: $89
	sbc  c                                           ; $6906: $99
	add  a                                           ; $6907: $87
	ld   [hl], a                                     ; $6908: $77
	adc  c                                           ; $6909: $89
	add  a                                           ; $690a: $87
	adc  b                                           ; $690b: $88
	sbc  c                                           ; $690c: $99
	adc  b                                           ; $690d: $88
	halt                                             ; $690e: $76
	ld   [hl], a                                     ; $690f: $77
	sbc  d                                           ; $6910: $9a
	sbc  b                                           ; $6911: $98
	adc  b                                           ; $6912: $88
	ld   [hl], a                                     ; $6913: $77
	add  a                                           ; $6914: $87
	adc  c                                           ; $6915: $89
	adc  c                                           ; $6916: $89
	sbc  b                                           ; $6917: $98
	adc  b                                           ; $6918: $88
	adc  b                                           ; $6919: $88
	adc  b                                           ; $691a: $88
	sbc  c                                           ; $691b: $99
	sbc  c                                           ; $691c: $99
	add  a                                           ; $691d: $87
	ld   h, [hl]                                     ; $691e: $66
	adc  c                                           ; $691f: $89
	sbc  c                                           ; $6920: $99
	adc  b                                           ; $6921: $88
	ld   [hl], a                                     ; $6922: $77
	adc  c                                           ; $6923: $89
	adc  b                                           ; $6924: $88
	ld   a, b                                        ; $6925: $78
	adc  c                                           ; $6926: $89
	add  a                                           ; $6927: $87
	ld   [hl], a                                     ; $6928: $77
	ld   a, d                                        ; $6929: $7a
	sbc  d                                           ; $692a: $9a
	sub  a                                           ; $692b: $97
	halt                                             ; $692c: $76
	ld   a, b                                        ; $692d: $78
	adc  b                                           ; $692e: $88
	adc  c                                           ; $692f: $89
	sbc  b                                           ; $6930: $98
	adc  b                                           ; $6931: $88
	adc  b                                           ; $6932: $88
	ld   a, b                                        ; $6933: $78
	sbc  c                                           ; $6934: $99
	sbc  b                                           ; $6935: $98
	add  a                                           ; $6936: $87
	ld   h, a                                        ; $6937: $67
	ld   a, b                                        ; $6938: $78
	sbc  b                                           ; $6939: $98
	add  a                                           ; $693a: $87
	ld   [hl], a                                     ; $693b: $77
	ld   a, b                                        ; $693c: $78
	adc  b                                           ; $693d: $88
	sbc  c                                           ; $693e: $99
	adc  c                                           ; $693f: $89
	add  a                                           ; $6940: $87
	ld   a, b                                        ; $6941: $78
	adc  b                                           ; $6942: $88
	sbc  c                                           ; $6943: $99
	adc  b                                           ; $6944: $88
	adc  b                                           ; $6945: $88
	sbc  b                                           ; $6946: $98
	add  a                                           ; $6947: $87
	ld   a, b                                        ; $6948: $78
	sbc  c                                           ; $6949: $99
	adc  b                                           ; $694a: $88
	add  a                                           ; $694b: $87
	adc  b                                           ; $694c: $88
	adc  b                                           ; $694d: $88
	adc  b                                           ; $694e: $88
	adc  b                                           ; $694f: $88
	adc  b                                           ; $6950: $88
	adc  b                                           ; $6951: $88
	ld   a, b                                        ; $6952: $78
	adc  c                                           ; $6953: $89
	sbc  c                                           ; $6954: $99
	add  a                                           ; $6955: $87
	ld   [hl], a                                     ; $6956: $77
	sbc  c                                           ; $6957: $99
	adc  b                                           ; $6958: $88
	ld   [hl], a                                     ; $6959: $77
	ld   [hl], a                                     ; $695a: $77
	adc  b                                           ; $695b: $88
	sbc  b                                           ; $695c: $98
	adc  b                                           ; $695d: $88
	ld   [hl], a                                     ; $695e: $77
	ld   [hl], a                                     ; $695f: $77
	adc  c                                           ; $6960: $89
	sbc  b                                           ; $6961: $98
	adc  b                                           ; $6962: $88
	add  a                                           ; $6963: $87
	ld   [hl], a                                     ; $6964: $77
	ld   a, b                                        ; $6965: $78
	adc  b                                           ; $6966: $88
	adc  b                                           ; $6967: $88
	ld   [hl], a                                     ; $6968: $77
	ld   [hl], a                                     ; $6969: $77
	adc  c                                           ; $696a: $89
	sbc  c                                           ; $696b: $99
	sbc  b                                           ; $696c: $98
	ld   [hl], a                                     ; $696d: $77
	ld   [hl], a                                     ; $696e: $77
	adc  b                                           ; $696f: $88
	sbc  c                                           ; $6970: $99
	add  a                                           ; $6971: $87
	ld   [hl], a                                     ; $6972: $77
	adc  b                                           ; $6973: $88
	adc  b                                           ; $6974: $88
	adc  b                                           ; $6975: $88
	adc  b                                           ; $6976: $88
	add  a                                           ; $6977: $87
	ld   [hl], a                                     ; $6978: $77
	adc  b                                           ; $6979: $88
	adc  b                                           ; $697a: $88
	sbc  b                                           ; $697b: $98
	ld   [hl], a                                     ; $697c: $77
	ld   [hl], a                                     ; $697d: $77
	adc  b                                           ; $697e: $88
	adc  c                                           ; $697f: $89
	adc  c                                           ; $6980: $89
	adc  b                                           ; $6981: $88
	adc  b                                           ; $6982: $88
	add  a                                           ; $6983: $87
	adc  b                                           ; $6984: $88
	sbc  c                                           ; $6985: $99
	adc  b                                           ; $6986: $88
	add  a                                           ; $6987: $87
	ld   a, b                                        ; $6988: $78
	adc  c                                           ; $6989: $89
	adc  b                                           ; $698a: $88
	ld   a, b                                        ; $698b: $78
	adc  b                                           ; $698c: $88
	adc  b                                           ; $698d: $88
	add  a                                           ; $698e: $87
	adc  c                                           ; $698f: $89
	adc  c                                           ; $6990: $89
	sbc  b                                           ; $6991: $98
	ld   [hl], a                                     ; $6992: $77
	ld   a, b                                        ; $6993: $78
	sbc  c                                           ; $6994: $99
	sbc  c                                           ; $6995: $99
	adc  b                                           ; $6996: $88
	add  a                                           ; $6997: $87
	ld   a, b                                        ; $6998: $78
	sbc  b                                           ; $6999: $98
	adc  b                                           ; $699a: $88
	add  a                                           ; $699b: $87
	ld   [hl], a                                     ; $699c: $77
	ld   a, b                                        ; $699d: $78
	sbc  b                                           ; $699e: $98
	sbc  c                                           ; $699f: $99
	adc  b                                           ; $69a0: $88
	ld   [hl], a                                     ; $69a1: $77
	ld   a, b                                        ; $69a2: $78
	adc  c                                           ; $69a3: $89
	sbc  b                                           ; $69a4: $98
	add  a                                           ; $69a5: $87
	ld   a, b                                        ; $69a6: $78
	adc  b                                           ; $69a7: $88
	adc  b                                           ; $69a8: $88
	adc  b                                           ; $69a9: $88
	add  a                                           ; $69aa: $87
	ld   a, b                                        ; $69ab: $78
	adc  b                                           ; $69ac: $88
	adc  b                                           ; $69ad: $88
	adc  b                                           ; $69ae: $88
	add  a                                           ; $69af: $87
	ld   [hl], a                                     ; $69b0: $77
	adc  b                                           ; $69b1: $88
	sbc  c                                           ; $69b2: $99
	adc  b                                           ; $69b3: $88
	ld   [hl], a                                     ; $69b4: $77
	ld   a, b                                        ; $69b5: $78
	adc  b                                           ; $69b6: $88
	sbc  b                                           ; $69b7: $98
	adc  b                                           ; $69b8: $88
	adc  b                                           ; $69b9: $88
	adc  b                                           ; $69ba: $88
	ld   [hl], a                                     ; $69bb: $77
	adc  b                                           ; $69bc: $88
	adc  c                                           ; $69bd: $89
	adc  b                                           ; $69be: $88
	ld   [hl], a                                     ; $69bf: $77
	ld   a, b                                        ; $69c0: $78
	sbc  b                                           ; $69c1: $98
	adc  b                                           ; $69c2: $88
	add  a                                           ; $69c3: $87
	ld   a, b                                        ; $69c4: $78
	adc  b                                           ; $69c5: $88
	adc  b                                           ; $69c6: $88
	adc  b                                           ; $69c7: $88
	adc  b                                           ; $69c8: $88
	adc  b                                           ; $69c9: $88
	ld   [hl], a                                     ; $69ca: $77
	ld   a, b                                        ; $69cb: $78
	adc  b                                           ; $69cc: $88
	adc  b                                           ; $69cd: $88
	adc  b                                           ; $69ce: $88
	adc  b                                           ; $69cf: $88
	adc  b                                           ; $69d0: $88
	adc  b                                           ; $69d1: $88
	adc  b                                           ; $69d2: $88
	adc  b                                           ; $69d3: $88
	adc  b                                           ; $69d4: $88
	adc  b                                           ; $69d5: $88
	adc  b                                           ; $69d6: $88
	sbc  c                                           ; $69d7: $99
	sbc  b                                           ; $69d8: $98
	add  a                                           ; $69d9: $87
	ld   a, b                                        ; $69da: $78
	adc  b                                           ; $69db: $88
	adc  b                                           ; $69dc: $88
	adc  b                                           ; $69dd: $88
	adc  b                                           ; $69de: $88
	adc  b                                           ; $69df: $88
	adc  b                                           ; $69e0: $88
	adc  b                                           ; $69e1: $88
	adc  b                                           ; $69e2: $88
	adc  b                                           ; $69e3: $88
	adc  b                                           ; $69e4: $88
	ld   [hl], a                                     ; $69e5: $77
	adc  b                                           ; $69e6: $88
	adc  b                                           ; $69e7: $88
	adc  b                                           ; $69e8: $88
	adc  b                                           ; $69e9: $88
	adc  b                                           ; $69ea: $88
	adc  b                                           ; $69eb: $88
	adc  c                                           ; $69ec: $89
	adc  b                                           ; $69ed: $88
	ld   [hl], a                                     ; $69ee: $77
	ld   a, b                                        ; $69ef: $78
	adc  b                                           ; $69f0: $88
	adc  b                                           ; $69f1: $88
	adc  b                                           ; $69f2: $88
	adc  b                                           ; $69f3: $88
	adc  b                                           ; $69f4: $88
	adc  b                                           ; $69f5: $88
	adc  b                                           ; $69f6: $88
	adc  b                                           ; $69f7: $88
	adc  b                                           ; $69f8: $88
	adc  b                                           ; $69f9: $88
	adc  b                                           ; $69fa: $88
	adc  b                                           ; $69fb: $88
	adc  b                                           ; $69fc: $88
	adc  b                                           ; $69fd: $88
	adc  b                                           ; $69fe: $88
	ld   a, b                                        ; $69ff: $78
	adc  b                                           ; $6a00: $88
	adc  b                                           ; $6a01: $88
	add  a                                           ; $6a02: $87
	ld   a, b                                        ; $6a03: $78
	adc  b                                           ; $6a04: $88
	adc  b                                           ; $6a05: $88
	adc  b                                           ; $6a06: $88
	adc  b                                           ; $6a07: $88
	adc  b                                           ; $6a08: $88
	adc  b                                           ; $6a09: $88
	adc  b                                           ; $6a0a: $88
	adc  b                                           ; $6a0b: $88
	adc  b                                           ; $6a0c: $88
	adc  b                                           ; $6a0d: $88
	adc  b                                           ; $6a0e: $88
	adc  b                                           ; $6a0f: $88
	adc  b                                           ; $6a10: $88
	adc  b                                           ; $6a11: $88
	adc  b                                           ; $6a12: $88
	adc  b                                           ; $6a13: $88
	adc  b                                           ; $6a14: $88
	adc  b                                           ; $6a15: $88
	adc  b                                           ; $6a16: $88
	adc  b                                           ; $6a17: $88
	adc  b                                           ; $6a18: $88
	adc  b                                           ; $6a19: $88
	adc  b                                           ; $6a1a: $88
	adc  b                                           ; $6a1b: $88
	adc  b                                           ; $6a1c: $88
	adc  b                                           ; $6a1d: $88
	adc  b                                           ; $6a1e: $88
	adc  b                                           ; $6a1f: $88
	adc  b                                           ; $6a20: $88
	adc  b                                           ; $6a21: $88
	adc  b                                           ; $6a22: $88
	adc  b                                           ; $6a23: $88
	adc  b                                           ; $6a24: $88
	adc  b                                           ; $6a25: $88
	adc  b                                           ; $6a26: $88
	adc  b                                           ; $6a27: $88
	adc  b                                           ; $6a28: $88
	adc  b                                           ; $6a29: $88
	adc  b                                           ; $6a2a: $88
	adc  b                                           ; $6a2b: $88
	adc  b                                           ; $6a2c: $88
	adc  b                                           ; $6a2d: $88
	adc  b                                           ; $6a2e: $88
	adc  b                                           ; $6a2f: $88
	adc  b                                           ; $6a30: $88
	adc  b                                           ; $6a31: $88
	adc  b                                           ; $6a32: $88
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
	adc  b                                           ; $6a41: $88
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

Jump_0bc_6a67:
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
	adc  b                                           ; $6a74: $88
	adc  b                                           ; $6a75: $88
	adc  b                                           ; $6a76: $88
	adc  b                                           ; $6a77: $88
	adc  b                                           ; $6a78: $88
	adc  b                                           ; $6a79: $88
	adc  b                                           ; $6a7a: $88
	adc  b                                           ; $6a7b: $88
	adc  b                                           ; $6a7c: $88
	adc  b                                           ; $6a7d: $88
	adc  b                                           ; $6a7e: $88
	adc  b                                           ; $6a7f: $88
	adc  b                                           ; $6a80: $88
	adc  b                                           ; $6a81: $88
	adc  b                                           ; $6a82: $88
	adc  b                                           ; $6a83: $88
	adc  b                                           ; $6a84: $88
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

Jump_0bc_6ab6:
	adc  b                                           ; $6ab6: $88
	adc  b                                           ; $6ab7: $88
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
	adc  b                                           ; $6ad1: $88
	adc  b                                           ; $6ad2: $88
	adc  b                                           ; $6ad3: $88
	adc  b                                           ; $6ad4: $88
	adc  b                                           ; $6ad5: $88
	adc  b                                           ; $6ad6: $88
	adc  b                                           ; $6ad7: $88
	adc  b                                           ; $6ad8: $88
	adc  b                                           ; $6ad9: $88
	adc  b                                           ; $6ada: $88
	adc  b                                           ; $6adb: $88
	adc  b                                           ; $6adc: $88
	adc  b                                           ; $6add: $88
	adc  b                                           ; $6ade: $88
	adc  b                                           ; $6adf: $88
	adc  b                                           ; $6ae0: $88
	adc  b                                           ; $6ae1: $88
	adc  b                                           ; $6ae2: $88
	adc  b                                           ; $6ae3: $88
	adc  b                                           ; $6ae4: $88
	adc  b                                           ; $6ae5: $88
	adc  b                                           ; $6ae6: $88
	adc  b                                           ; $6ae7: $88
	adc  b                                           ; $6ae8: $88
	adc  b                                           ; $6ae9: $88
	adc  b                                           ; $6aea: $88
	adc  b                                           ; $6aeb: $88
	adc  b                                           ; $6aec: $88
	adc  b                                           ; $6aed: $88
	adc  b                                           ; $6aee: $88
	adc  b                                           ; $6aef: $88
	adc  b                                           ; $6af0: $88
	adc  b                                           ; $6af1: $88
	adc  b                                           ; $6af2: $88
	adc  b                                           ; $6af3: $88
	adc  b                                           ; $6af4: $88
	adc  b                                           ; $6af5: $88
	adc  b                                           ; $6af6: $88
	adc  b                                           ; $6af7: $88
	adc  b                                           ; $6af8: $88
	adc  b                                           ; $6af9: $88
	adc  b                                           ; $6afa: $88
	adc  b                                           ; $6afb: $88
	adc  b                                           ; $6afc: $88
	adc  b                                           ; $6afd: $88
	adc  b                                           ; $6afe: $88
	adc  b                                           ; $6aff: $88
	adc  b                                           ; $6b00: $88
	adc  b                                           ; $6b01: $88
	adc  b                                           ; $6b02: $88
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
	adc  b                                           ; $6b0d: $88
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
	adc  b                                           ; $6b1c: $88
	adc  b                                           ; $6b1d: $88
	adc  b                                           ; $6b1e: $88
	adc  b                                           ; $6b1f: $88
	adc  b                                           ; $6b20: $88
	adc  b                                           ; $6b21: $88
	adc  b                                           ; $6b22: $88
	adc  b                                           ; $6b23: $88
	adc  b                                           ; $6b24: $88
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

Call_0bc_6cb6:
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
	adc  b                                           ; $6e9f: $88
	adc  b                                           ; $6ea0: $88
	adc  b                                           ; $6ea1: $88
	adc  b                                           ; $6ea2: $88
	adc  b                                           ; $6ea3: $88
	adc  b                                           ; $6ea4: $88
	adc  b                                           ; $6ea5: $88
	adc  b                                           ; $6ea6: $88
	adc  b                                           ; $6ea7: $88
	adc  b                                           ; $6ea8: $88
	adc  b                                           ; $6ea9: $88
	adc  b                                           ; $6eaa: $88
	adc  b                                           ; $6eab: $88
	adc  b                                           ; $6eac: $88
	adc  b                                           ; $6ead: $88
	adc  b                                           ; $6eae: $88
	adc  b                                           ; $6eaf: $88
	adc  b                                           ; $6eb0: $88
	adc  b                                           ; $6eb1: $88
	adc  b                                           ; $6eb2: $88
	adc  b                                           ; $6eb3: $88
	adc  b                                           ; $6eb4: $88
	adc  b                                           ; $6eb5: $88
	adc  b                                           ; $6eb6: $88
	adc  b                                           ; $6eb7: $88
	adc  b                                           ; $6eb8: $88
	adc  b                                           ; $6eb9: $88
	adc  b                                           ; $6eba: $88
	adc  b                                           ; $6ebb: $88
	adc  b                                           ; $6ebc: $88
	adc  b                                           ; $6ebd: $88
	adc  b                                           ; $6ebe: $88
	adc  b                                           ; $6ebf: $88
	adc  b                                           ; $6ec0: $88
	adc  b                                           ; $6ec1: $88
	adc  b                                           ; $6ec2: $88
	adc  b                                           ; $6ec3: $88
	adc  b                                           ; $6ec4: $88
	adc  b                                           ; $6ec5: $88
	adc  b                                           ; $6ec6: $88
	adc  b                                           ; $6ec7: $88
	adc  b                                           ; $6ec8: $88
	adc  b                                           ; $6ec9: $88
	adc  b                                           ; $6eca: $88
	adc  b                                           ; $6ecb: $88
	adc  b                                           ; $6ecc: $88
	adc  b                                           ; $6ecd: $88
	adc  b                                           ; $6ece: $88
	adc  b                                           ; $6ecf: $88
	adc  b                                           ; $6ed0: $88
	adc  b                                           ; $6ed1: $88
	adc  b                                           ; $6ed2: $88
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
	adc  b                                           ; $6ee0: $88
	adc  b                                           ; $6ee1: $88
	adc  b                                           ; $6ee2: $88
	adc  b                                           ; $6ee3: $88
	adc  b                                           ; $6ee4: $88
	adc  b                                           ; $6ee5: $88
	adc  b                                           ; $6ee6: $88
	adc  b                                           ; $6ee7: $88
	adc  b                                           ; $6ee8: $88
	adc  b                                           ; $6ee9: $88
	adc  b                                           ; $6eea: $88
	adc  b                                           ; $6eeb: $88
	adc  b                                           ; $6eec: $88
	adc  b                                           ; $6eed: $88
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
	adc  b                                           ; $6fad: $88
	adc  b                                           ; $6fae: $88
	adc  b                                           ; $6faf: $88
	adc  b                                           ; $6fb0: $88
	adc  b                                           ; $6fb1: $88
	adc  b                                           ; $6fb2: $88
	adc  b                                           ; $6fb3: $88
	adc  b                                           ; $6fb4: $88
	adc  b                                           ; $6fb5: $88
	adc  b                                           ; $6fb6: $88
	adc  b                                           ; $6fb7: $88
	adc  b                                           ; $6fb8: $88
	adc  b                                           ; $6fb9: $88
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
	adc  b                                           ; $6fc5: $88
	adc  b                                           ; $6fc6: $88
	adc  b                                           ; $6fc7: $88
	adc  b                                           ; $6fc8: $88
	adc  b                                           ; $6fc9: $88
	adc  b                                           ; $6fca: $88
	adc  b                                           ; $6fcb: $88
	adc  b                                           ; $6fcc: $88
	adc  b                                           ; $6fcd: $88
	adc  b                                           ; $6fce: $88
	adc  b                                           ; $6fcf: $88
	adc  b                                           ; $6fd0: $88
	adc  b                                           ; $6fd1: $88
	adc  b                                           ; $6fd2: $88
	adc  b                                           ; $6fd3: $88
	adc  b                                           ; $6fd4: $88
	adc  b                                           ; $6fd5: $88
	adc  b                                           ; $6fd6: $88
	adc  b                                           ; $6fd7: $88
	adc  b                                           ; $6fd8: $88
	adc  b                                           ; $6fd9: $88
	adc  b                                           ; $6fda: $88
	adc  b                                           ; $6fdb: $88
	adc  b                                           ; $6fdc: $88
	adc  b                                           ; $6fdd: $88
	adc  b                                           ; $6fde: $88
	adc  b                                           ; $6fdf: $88
	adc  b                                           ; $6fe0: $88
	adc  b                                           ; $6fe1: $88
	adc  b                                           ; $6fe2: $88
	adc  b                                           ; $6fe3: $88
	adc  b                                           ; $6fe4: $88
	adc  b                                           ; $6fe5: $88
	adc  b                                           ; $6fe6: $88
	adc  b                                           ; $6fe7: $88
	adc  b                                           ; $6fe8: $88
	adc  b                                           ; $6fe9: $88
	adc  b                                           ; $6fea: $88
	adc  b                                           ; $6feb: $88
	adc  b                                           ; $6fec: $88
	adc  b                                           ; $6fed: $88
	adc  b                                           ; $6fee: $88
	adc  b                                           ; $6fef: $88
	adc  b                                           ; $6ff0: $88
	adc  b                                           ; $6ff1: $88
	adc  b                                           ; $6ff2: $88
	adc  b                                           ; $6ff3: $88
	adc  b                                           ; $6ff4: $88
	adc  b                                           ; $6ff5: $88
	adc  b                                           ; $6ff6: $88
	adc  b                                           ; $6ff7: $88
	adc  b                                           ; $6ff8: $88
	adc  b                                           ; $6ff9: $88
	adc  b                                           ; $6ffa: $88
	adc  b                                           ; $6ffb: $88
	adc  b                                           ; $6ffc: $88
	adc  b                                           ; $6ffd: $88
	adc  b                                           ; $6ffe: $88
	adc  b                                           ; $6fff: $88
	adc  b                                           ; $7000: $88
	adc  b                                           ; $7001: $88
	adc  b                                           ; $7002: $88
	adc  b                                           ; $7003: $88
	adc  b                                           ; $7004: $88
	adc  b                                           ; $7005: $88
	adc  b                                           ; $7006: $88
	adc  b                                           ; $7007: $88
	adc  b                                           ; $7008: $88
	adc  b                                           ; $7009: $88
	adc  b                                           ; $700a: $88
	adc  b                                           ; $700b: $88
	adc  b                                           ; $700c: $88
	adc  b                                           ; $700d: $88
	adc  b                                           ; $700e: $88
	adc  b                                           ; $700f: $88
	adc  b                                           ; $7010: $88
	adc  b                                           ; $7011: $88
	adc  b                                           ; $7012: $88
	adc  b                                           ; $7013: $88
	adc  b                                           ; $7014: $88
	adc  b                                           ; $7015: $88
	adc  b                                           ; $7016: $88
	adc  b                                           ; $7017: $88
	adc  b                                           ; $7018: $88
	adc  b                                           ; $7019: $88
	adc  b                                           ; $701a: $88
	adc  b                                           ; $701b: $88
	adc  b                                           ; $701c: $88
	adc  b                                           ; $701d: $88
	adc  b                                           ; $701e: $88
	adc  b                                           ; $701f: $88
	adc  b                                           ; $7020: $88
	adc  b                                           ; $7021: $88
	adc  b                                           ; $7022: $88
	adc  b                                           ; $7023: $88
	adc  b                                           ; $7024: $88
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
	adc  c                                           ; $7226: $89
	adc  b                                           ; $7227: $88
	xor  d                                           ; $7228: $aa
	xor  d                                           ; $7229: $aa
	xor  c                                           ; $722a: $a9
	sbc  c                                           ; $722b: $99
	adc  b                                           ; $722c: $88
	adc  c                                           ; $722d: $89
	sbc  b                                           ; $722e: $98
	ld   [hl], a                                     ; $722f: $77
	ld   h, [hl]                                     ; $7230: $66
	ld   h, l                                        ; $7231: $65
	ld   d, h                                        ; $7232: $54
	ld   b, h                                        ; $7233: $44
	ld   b, l                                        ; $7234: $45
	ld   h, [hl]                                     ; $7235: $66
	ld   h, [hl]                                     ; $7236: $66
	ld   h, [hl]                                     ; $7237: $66
	adc  c                                           ; $7238: $89
	cp   l                                           ; $7239: $bd
	call z, $9aba                                    ; $723a: $cc $ba $9a
	xor  d                                           ; $723d: $aa
	sbc  c                                           ; $723e: $99
	ld   [hl], a                                     ; $723f: $77
	ld   [hl], a                                     ; $7240: $77
	sbc  d                                           ; $7241: $9a
	xor  d                                           ; $7242: $aa
	sbc  c                                           ; $7243: $99
	adc  c                                           ; $7244: $89
	sbc  c                                           ; $7245: $99
	sbc  b                                           ; $7246: $98
	halt                                             ; $7247: $76
	ld   b, e                                        ; $7248: $43
	ld   [hl+], a                                    ; $7249: $22
	inc  sp                                          ; $724a: $33
	ld   d, [hl]                                     ; $724b: $56
	ld   h, [hl]                                     ; $724c: $66
	ld   d, l                                        ; $724d: $55
	ld   l, b                                        ; $724e: $68
	cp   l                                           ; $724f: $bd
	cp   $cb                                         ; $7250: $fe $cb
	xor  d                                           ; $7252: $aa
	cp   e                                           ; $7253: $bb
	xor  d                                           ; $7254: $aa
	sub  a                                           ; $7255: $97
	ld   h, [hl]                                     ; $7256: $66
	ld   a, c                                        ; $7257: $79
	xor  e                                           ; $7258: $ab
	cp   c                                           ; $7259: $b9
	sbc  b                                           ; $725a: $98
	adc  c                                           ; $725b: $89
	adc  b                                           ; $725c: $88
	ld   [hl], h                                     ; $725d: $74
	ld   sp, $1211                                   ; $725e: $31 $11 $12
	ld   b, a                                        ; $7261: $47
	ld   h, [hl]                                     ; $7262: $66
	ld   d, l                                        ; $7263: $55
	ld   l, c                                        ; $7264: $69
	rst  $28                                         ; $7265: $ef
	rst  $38                                         ; $7266: $ff
	jp   c, $9c88                                    ; $7267: $da $88 $9c

	cp   e                                           ; $726a: $bb
	sub  a                                           ; $726b: $97
	ld   h, a                                        ; $726c: $67
	sbc  e                                           ; $726d: $9b
	call Call_0bc_77b9                               ; $726e: $cd $b9 $77
	adc  b                                           ; $7271: $88
	halt                                             ; $7272: $76
	ld   sp, $1111                                   ; $7273: $31 $11 $11
	dec  d                                           ; $7276: $15
	xor  c                                           ; $7277: $a9
	sub  a                                           ; $7278: $97
	ld   l, c                                        ; $7279: $69
	rst  $28                                         ; $727a: $ef
	rst  $38                                         ; $727b: $ff
	ei                                               ; $727c: $fb
	ld   [hl], l                                     ; $727d: $75
	ld   a, d                                        ; $727e: $7a
	call c, Call_0bc_57b8                            ; $727f: $dc $b8 $57
	sbc  h                                           ; $7282: $9c
	rst  $38                                         ; $7283: $ff
	jp   z, Jump_0bc_5586                            ; $7284: $ca $86 $55

	ld   b, c                                        ; $7287: $41
	ld   de, $1111                                   ; $7288: $11 $11 $11
	ld   e, $ff                                      ; $728b: $1e $ff
	ei                                               ; $728d: $fb
	cp   [hl]                                        ; $728e: $be
	rst  $38                                         ; $728f: $ff
	rst  $38                                         ; $7290: $ff
	sub  h                                           ; $7291: $94
	inc  hl                                          ; $7292: $23
	ld   a, e                                        ; $7293: $7b
	jp   c, $afb9                                    ; $7294: $da $b9 $af

	rst  $38                                         ; $7297: $ff
	db   $fd                                         ; $7298: $fd
	add  [hl]                                        ; $7299: $86
	ld   b, e                                        ; $729a: $43
	ld   de, $1111                                   ; $729b: $11 $11 $11
	ld   de, $ff1d                                   ; $729e: $11 $1d $ff
	rst  $38                                         ; $72a1: $ff
	call z, $ffff                                    ; $72a2: $cc $ff $ff
	or   c                                           ; $72a5: $b1
	ld   de, $ff4b                                   ; $72a6: $11 $4b $ff
	adc  $ef                                         ; $72a9: $ce $ef
	rst  $38                                         ; $72ab: $ff
	ei                                               ; $72ac: $fb
	ld   b, c                                        ; $72ad: $41
	ld   de, $1111                                   ; $72ae: $11 $11 $11
	ld   de, $df11                                   ; $72b1: $11 $11 $df
	rst  $38                                         ; $72b4: $ff
	rst  $38                                         ; $72b5: $ff
	cp   e                                           ; $72b6: $bb
	rst  $38                                         ; $72b7: $ff
	ret  c                                           ; $72b8: $d8

	ld   de, $ff17                                   ; $72b9: $11 $17 $ff
	cp   $ff                                         ; $72bc: $fe $ff
	rst  $38                                         ; $72be: $ff
	cp   $51                                         ; $72bf: $fe $51
	ld   de, $1111                                   ; $72c1: $11 $11 $11
	ld   de, $1d11                                   ; $72c4: $11 $11 $1d
	rst  $38                                         ; $72c7: $ff
	rst  $38                                         ; $72c8: $ff
	ei                                               ; $72c9: $fb
	ld   l, d                                        ; $72ca: $6a
	ld   sp, hl                                      ; $72cb: $f9
	ld   h, c                                        ; $72cc: $61
	inc  d                                           ; $72cd: $14
	rst  $28                                         ; $72ce: $ef
	rst  $38                                         ; $72cf: $ff
	xor  $ff                                         ; $72d0: $ee $ff
	rst  $38                                         ; $72d2: $ff
	or   e                                           ; $72d3: $b3
	ld   de, $1111                                   ; $72d4: $11 $11 $11
	ld   de, $1111                                   ; $72d7: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72da: $cf
	rst  $38                                         ; $72db: $ff
	rst  $38                                         ; $72dc: $ff
	or   d                                           ; $72dd: $b2
	ld   e, $85                                      ; $72de: $1e $85
	ld   b, c                                        ; $72e0: $41
	adc  a                                           ; $72e1: $8f
	rst  $38                                         ; $72e2: $ff
	db   $fc                                         ; $72e3: $fc
	sbc  a                                           ; $72e4: $9f
	rst  $38                                         ; $72e5: $ff
	db   $fd                                         ; $72e6: $fd
	ld   [hl+], a                                    ; $72e7: $22
	ld   [de], a                                     ; $72e8: $12
	ld   de, $1111                                   ; $72e9: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $72ec: $11 $11 $ff
	rst  $38                                         ; $72ef: $ff
	ld   a, [$7c11]                                  ; $72f0: $fa $11 $7c
	ld   d, a                                        ; $72f3: $57
	add  hl, sp                                      ; $72f4: $39
	rst  $38                                         ; $72f5: $ff
	rst  $38                                         ; $72f6: $ff
	sub  e                                           ; $72f7: $93
	rst  JumpTable                                         ; $72f8: $df
	rst  $38                                         ; $72f9: $ff
	push af                                          ; $72fa: $f5
	inc  de                                          ; $72fb: $13
	ld   de, $1111                                   ; $72fc: $11 $11 $11
	ld   de, $1911                                   ; $72ff: $11 $11 $19
	rst  $38                                         ; $7302: $ff
	rst  $38                                         ; $7303: $ff
	sub  c                                           ; $7304: $91
	ld   de, $97ff                                   ; $7305: $11 $ff $97
	ld   c, a                                        ; $7308: $4f
	rst  $38                                         ; $7309: $ff
	ld   hl, sp+$13                                  ; $730a: $f8 $13
	rst  $38                                         ; $730c: $ff
	rst  $38                                         ; $730d: $ff
	ld   [hl], c                                     ; $730e: $71
	ld   [de], a                                     ; $730f: $12
	ld   de, $1111                                   ; $7310: $11 $11 $11
	ld   de, $1f11                                   ; $7313: $11 $11 $1f
	rst  $38                                         ; $7316: $ff
	rst  $38                                         ; $7317: $ff
	ld   de, $f91d                                   ; $7318: $11 $1d $f9
	ld   d, [hl]                                     ; $731b: $56
	rst  $38                                         ; $731c: $ff
	rst  $38                                         ; $731d: $ff
	ld   b, c                                        ; $731e: $41
	rra                                              ; $731f: $1f
	rst  $38                                         ; $7320: $ff
	ei                                               ; $7321: $fb
	ld   b, d                                        ; $7322: $42
	ld   b, c                                        ; $7323: $41
	ld   de, $1111                                   ; $7324: $11 $11 $11
	ld   de, $4f11                                   ; $7327: $11 $11 $4f
	rst  $38                                         ; $732a: $ff
	pop  af                                          ; $732b: $f1
	ld   de, $c53d                                   ; $732c: $11 $3d $c5
	ld   a, a                                        ; $732f: $7f
	rst  $38                                         ; $7330: $ff
	or   $11                                         ; $7331: $f6 $11
	rst  JumpTable                                         ; $7333: $df
	rst  $38                                         ; $7334: $ff
	rst  $30                                         ; $7335: $f7
	ld   de, $1111                                   ; $7336: $11 $11 $11
	inc  de                                          ; $7339: $13
	ld   d, c                                        ; $733a: $51
	ld   de, rAUD1LEN                                   ; $733b: $11 $11 $ff
	rst  $38                                         ; $733e: $ff
	db   $f4                                         ; $733f: $f4
	ld   hl, $3845                                   ; $7340: $21 $45 $38
	rst  $38                                         ; $7343: $ff
	rst  $38                                         ; $7344: $ff
	or   c                                           ; $7345: $b1
	add  hl, de                                      ; $7346: $19
	rst  $38                                         ; $7347: $ff
	rst  $38                                         ; $7348: $ff
	ld   [$1151], a                                  ; $7349: $ea $51 $11
	ld   de, $1112                                   ; $734c: $11 $12 $11
	ld   de, rAUD1LEN                                   ; $734f: $11 $11 $ff
	rst  $38                                         ; $7352: $ff
	pop  af                                          ; $7353: $f1
	ld   de, $6e16                                   ; $7354: $11 $16 $6e
	rst  $38                                         ; $7357: $ff
	rst  $38                                         ; $7358: $ff
	ld   [hl], c                                     ; $7359: $71
	ld   a, [de]                                     ; $735a: $1a
	rst  $38                                         ; $735b: $ff
	rst  $38                                         ; $735c: $ff
	ld   hl, sp+$11                                  ; $735d: $f8 $11
	ld   de, $2412                                   ; $735f: $11 $12 $24
	ld   de, $1a11                                   ; $7362: $11 $11 $1a
	rst  $38                                         ; $7365: $ff
	rst  $38                                         ; $7366: $ff
	call $11a6                                       ; $7367: $cd $a6 $11
	sbc  a                                           ; $736a: $9f
	rst  $38                                         ; $736b: $ff
	ld   sp, hl                                      ; $736c: $f9
	scf                                              ; $736d: $37
	rst  $38                                         ; $736e: $ff
	rst  $38                                         ; $736f: $ff
	rst  $38                                         ; $7370: $ff
	rst  $20                                         ; $7371: $e7
	ld   de, $1111                                   ; $7372: $11 $11 $11
	ld   de, $1111                                   ; $7375: $11 $11 $11
	rla                                              ; $7378: $17
	rst  $38                                         ; $7379: $ff
	rst  $38                                         ; $737a: $ff
	sub  c                                           ; $737b: $91
	inc  de                                          ; $737c: $13
	ld   h, l                                        ; $737d: $65
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $737e: $cf
	rst  $38                                         ; $737f: $ff
	ld   sp, hl                                      ; $7380: $f9
	ld   b, h                                        ; $7381: $44
	sbc  a                                           ; $7382: $9f
	rst  $38                                         ; $7383: $ff
	rst  $38                                         ; $7384: $ff
	or   c                                           ; $7385: $b1
	ld   de, $7511                                   ; $7386: $11 $11 $75
	ld   hl, $1111                                   ; $7389: $21 $11 $11
	ld   de, $ffff                                   ; $738c: $11 $ff $ff
	jp   c, $1584                                    ; $738f: $da $84 $15

	cp   a                                           ; $7392: $bf
	rst  $38                                         ; $7393: $ff
	db   $fc                                         ; $7394: $fc
	xor  b                                           ; $7395: $a8
	cp   [hl]                                        ; $7396: $be
	rst  $38                                         ; $7397: $ff
	rst  $38                                         ; $7398: $ff
	push af                                          ; $7399: $f5
	ld   de, $1111                                   ; $739a: $11 $11 $11
	ld   de, $1111                                   ; $739d: $11 $11 $11
	ld   de, $ffff                                   ; $73a0: $11 $ff $ff
	add  $21                                         ; $73a3: $c6 $21
	dec  h                                           ; $73a5: $25
	rst  JumpTable                                         ; $73a6: $df
	rst  $38                                         ; $73a7: $ff
	rst  $38                                         ; $73a8: $ff
	xor  b                                           ; $73a9: $a8
	sbc  h                                           ; $73aa: $9c
	rst  $38                                         ; $73ab: $ff
	rst  $38                                         ; $73ac: $ff
	jp   nc, $1111                                   ; $73ad: $d2 $11 $11

	ld   sp, $1118                                   ; $73b0: $31 $18 $11
	ld   de, $1f11                                   ; $73b3: $11 $11 $1f
	rst  $38                                         ; $73b6: $ff
	rst  $38                                         ; $73b7: $ff
	jp   Jump_0bc_7a13                               ; $73b8: $c3 $13 $7a


	rst  $38                                         ; $73bb: $ff
	rst  $38                                         ; $73bc: $ff
	ld   a, [$dfab]                                  ; $73bd: $fa $ab $df
	rst  $38                                         ; $73c0: $ff
	rst  $38                                         ; $73c1: $ff
	ld   h, c                                        ; $73c2: $61
	ld   de, $3411                                   ; $73c3: $11 $11 $34
	ld   de, $1111                                   ; $73c6: $11 $11 $11
	ld   a, [de]                                     ; $73c9: $1a
	rst  $38                                         ; $73ca: $ff
	rst  $38                                         ; $73cb: $ff
	xor  a                                           ; $73cc: $af
	add  d                                           ; $73cd: $82
	ld   e, d                                        ; $73ce: $5a
	rst  $38                                         ; $73cf: $ff
	rst  $38                                         ; $73d0: $ff
	db   $fd                                         ; $73d1: $fd
	cp   e                                           ; $73d2: $bb
	rst  JumpTable                                         ; $73d3: $df
	rst  $38                                         ; $73d4: $ff
	ld   a, [$5277]                                  ; $73d5: $fa $77 $52
	ld   de, $3114                                   ; $73d8: $11 $14 $31
	ld   de, $1311                                   ; $73db: $11 $11 $13
	cp   a                                           ; $73de: $bf
	rst  $38                                         ; $73df: $ff
	db   $fc                                         ; $73e0: $fc
	ret  z                                           ; $73e1: $c8

	ld   b, d                                        ; $73e2: $42
	cp   a                                           ; $73e3: $bf
	rst  $38                                         ; $73e4: $ff
	rst  $38                                         ; $73e5: $ff
	db   $ec                                         ; $73e6: $ec
	xor  l                                           ; $73e7: $ad
	rst  $38                                         ; $73e8: $ff
	cp   $97                                         ; $73e9: $fe $97
	ld   [hl], h                                     ; $73eb: $74
	ld   de, $3112                                   ; $73ec: $11 $12 $31
	ld   de, $1111                                   ; $73ef: $11 $11 $11
	ld   l, [hl]                                     ; $73f2: $6e
	rst  $38                                         ; $73f3: $ff
	rst  $38                                         ; $73f4: $ff
	jp   z, $bb59                                    ; $73f5: $ca $59 $bb

	xor  $ff                                         ; $73f8: $ee $ff
	db   $fc                                         ; $73fa: $fc
	call $ffff                                       ; $73fb: $cd $ff $ff
	ld   [$4475], a                                  ; $73fe: $ea $75 $44
	ld   de, $1111                                   ; $7401: $11 $11 $11
	ld   de, $1711                                   ; $7404: $11 $11 $17
	xor  d                                           ; $7407: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7408: $cf
	ld   a, [$bb79]                                  ; $7409: $fa $79 $bb
	xor  d                                           ; $740c: $aa
	rst  $38                                         ; $740d: $ff
	db   $fc                                         ; $740e: $fc
	adc  $ed                                         ; $740f: $ce $ed
	rst  $28                                         ; $7411: $ef
	db   $ec                                         ; $7412: $ec
	cp   c                                           ; $7413: $b9
	ld   h, h                                        ; $7414: $64
	ld   b, e                                        ; $7415: $43
	ld   [de], a                                     ; $7416: $12
	ld   [hl+], a                                    ; $7417: $22
	ld   de, $1111                                   ; $7418: $11 $11 $11
	ld   l, b                                        ; $741b: $68
	ld   [hl], a                                     ; $741c: $77
	rst  $28                                         ; $741d: $ef
	cp   c                                           ; $741e: $b9
	cp   [hl]                                        ; $741f: $be
	cp   b                                           ; $7420: $b8
	sbc  l                                           ; $7421: $9d
	cp   $ab                                         ; $7422: $fe $ab
	rst  $28                                         ; $7424: $ef
	call c, $dade                                    ; $7425: $dc $de $da
	adc  b                                           ; $7428: $88
	sub  a                                           ; $7429: $97
	ld   b, e                                        ; $742a: $43
	inc  hl                                          ; $742b: $23
	ld   hl, $1111                                   ; $742c: $21 $11 $11
	ld   de, $6667                                   ; $742f: $11 $67 $66
	cp   [hl]                                        ; $7432: $be
	ret  z                                           ; $7433: $c8

	cp   h                                           ; $7434: $bc
	db   $db                                         ; $7435: $db
	sbc  h                                           ; $7436: $9c
	db   $ed                                         ; $7437: $ed
	cp   d                                           ; $7438: $ba
	cp   h                                           ; $7439: $bc
	jp   c, $baab                                    ; $743a: $da $ab $ba

	sbc  c                                           ; $743d: $99
	add  a                                           ; $743e: $87
	ld   h, l                                        ; $743f: $65
	ld   b, h                                        ; $7440: $44
	ld   b, e                                        ; $7441: $43
	inc  sp                                          ; $7442: $33
	inc  [hl]                                        ; $7443: $34
	inc  sp                                          ; $7444: $33
	ld   b, e                                        ; $7445: $43
	ld   b, [hl]                                     ; $7446: $46
	ld   h, [hl]                                     ; $7447: $66
	ld   h, [hl]                                     ; $7448: $66
	ld   h, [hl]                                     ; $7449: $66
	ld   h, a                                        ; $744a: $67
	adc  c                                           ; $744b: $89
	sbc  c                                           ; $744c: $99
	sbc  d                                           ; $744d: $9a
	xor  d                                           ; $744e: $aa
	xor  l                                           ; $744f: $ad
	call z, $dccb                                    ; $7450: $cc $cb $dc
	call z, $89c9                                    ; $7453: $cc $c9 $89
	adc  b                                           ; $7456: $88
	adc  c                                           ; $7457: $89
	ld   [hl], a                                     ; $7458: $77
	ld   [hl], a                                     ; $7459: $77
	ld   [hl], a                                     ; $745a: $77
	adc  b                                           ; $745b: $88
	adc  c                                           ; $745c: $89
	sbc  c                                           ; $745d: $99
	sbc  c                                           ; $745e: $99
	xor  c                                           ; $745f: $a9
	xor  d                                           ; $7460: $aa
	cp   d                                           ; $7461: $ba
	xor  c                                           ; $7462: $a9
	xor  d                                           ; $7463: $aa
	xor  d                                           ; $7464: $aa
	xor  d                                           ; $7465: $aa
	sbc  c                                           ; $7466: $99
	adc  c                                           ; $7467: $89
	adc  b                                           ; $7468: $88
	ld   [hl], a                                     ; $7469: $77
	adc  b                                           ; $746a: $88
	adc  b                                           ; $746b: $88
	add  a                                           ; $746c: $87
	ld   [hl], a                                     ; $746d: $77
	ld   [hl], a                                     ; $746e: $77
	ld   [hl], a                                     ; $746f: $77
	ld   [hl], a                                     ; $7470: $77
	add  a                                           ; $7471: $87
	adc  b                                           ; $7472: $88
	adc  b                                           ; $7473: $88
	adc  c                                           ; $7474: $89
	sbc  c                                           ; $7475: $99
	sbc  c                                           ; $7476: $99
	adc  b                                           ; $7477: $88
	adc  c                                           ; $7478: $89
	adc  b                                           ; $7479: $88
	adc  b                                           ; $747a: $88
	adc  c                                           ; $747b: $89
	adc  b                                           ; $747c: $88
	adc  b                                           ; $747d: $88
	adc  b                                           ; $747e: $88
	adc  b                                           ; $747f: $88
	adc  b                                           ; $7480: $88
	ld   [hl], a                                     ; $7481: $77
	ld   [hl], a                                     ; $7482: $77
	ld   [hl], a                                     ; $7483: $77
	ld   a, b                                        ; $7484: $78
	adc  b                                           ; $7485: $88
	adc  b                                           ; $7486: $88
	adc  b                                           ; $7487: $88
	adc  b                                           ; $7488: $88
	sbc  c                                           ; $7489: $99
	sbc  b                                           ; $748a: $98
	adc  b                                           ; $748b: $88
	adc  b                                           ; $748c: $88
	adc  c                                           ; $748d: $89
	sbc  c                                           ; $748e: $99
	adc  b                                           ; $748f: $88
	adc  b                                           ; $7490: $88
	add  a                                           ; $7491: $87
	adc  b                                           ; $7492: $88
	adc  b                                           ; $7493: $88
	adc  b                                           ; $7494: $88
	ld   [hl], a                                     ; $7495: $77
	ld   [hl], a                                     ; $7496: $77
	ld   [hl], a                                     ; $7497: $77
	ld   [hl], a                                     ; $7498: $77
	ld   [hl], a                                     ; $7499: $77
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
	add  a                                           ; $74a9: $87
	ld   a, b                                        ; $74aa: $78
	add  a                                           ; $74ab: $87
	adc  b                                           ; $74ac: $88
	adc  b                                           ; $74ad: $88
	adc  b                                           ; $74ae: $88
	adc  b                                           ; $74af: $88
	adc  b                                           ; $74b0: $88
	adc  b                                           ; $74b1: $88
	adc  b                                           ; $74b2: $88
	adc  b                                           ; $74b3: $88
	adc  b                                           ; $74b4: $88
	adc  b                                           ; $74b5: $88
	adc  b                                           ; $74b6: $88
	adc  b                                           ; $74b7: $88
	adc  b                                           ; $74b8: $88
	adc  b                                           ; $74b9: $88
	adc  b                                           ; $74ba: $88
	adc  b                                           ; $74bb: $88
	adc  b                                           ; $74bc: $88
	adc  b                                           ; $74bd: $88
	adc  b                                           ; $74be: $88
	adc  b                                           ; $74bf: $88
	adc  b                                           ; $74c0: $88
	adc  b                                           ; $74c1: $88
	adc  b                                           ; $74c2: $88
	adc  b                                           ; $74c3: $88
	adc  b                                           ; $74c4: $88
	adc  b                                           ; $74c5: $88
	adc  b                                           ; $74c6: $88
	adc  b                                           ; $74c7: $88
	adc  b                                           ; $74c8: $88
	adc  b                                           ; $74c9: $88
	adc  b                                           ; $74ca: $88
	adc  b                                           ; $74cb: $88
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
	adc  b                                           ; $74d7: $88
	adc  b                                           ; $74d8: $88
	adc  b                                           ; $74d9: $88
	adc  b                                           ; $74da: $88
	adc  b                                           ; $74db: $88
	adc  b                                           ; $74dc: $88
	adc  b                                           ; $74dd: $88
	adc  b                                           ; $74de: $88
	adc  b                                           ; $74df: $88
	adc  b                                           ; $74e0: $88
	adc  b                                           ; $74e1: $88
	adc  b                                           ; $74e2: $88
	adc  b                                           ; $74e3: $88
	adc  b                                           ; $74e4: $88
	adc  b                                           ; $74e5: $88
	adc  b                                           ; $74e6: $88
	adc  b                                           ; $74e7: $88
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
	adc  b                                           ; $74f4: $88
	adc  b                                           ; $74f5: $88
	adc  b                                           ; $74f6: $88
	adc  b                                           ; $74f7: $88
	adc  b                                           ; $74f8: $88
	adc  b                                           ; $74f9: $88
	adc  b                                           ; $74fa: $88
	adc  b                                           ; $74fb: $88
	adc  b                                           ; $74fc: $88
	adc  b                                           ; $74fd: $88
	adc  b                                           ; $74fe: $88
	adc  b                                           ; $74ff: $88
	adc  b                                           ; $7500: $88
	adc  b                                           ; $7501: $88
	adc  b                                           ; $7502: $88
	adc  b                                           ; $7503: $88
	adc  b                                           ; $7504: $88
	adc  b                                           ; $7505: $88
	adc  b                                           ; $7506: $88
	adc  b                                           ; $7507: $88
	adc  b                                           ; $7508: $88
	adc  b                                           ; $7509: $88
	adc  b                                           ; $750a: $88
	adc  b                                           ; $750b: $88
	adc  b                                           ; $750c: $88
	adc  b                                           ; $750d: $88
	adc  b                                           ; $750e: $88
	adc  b                                           ; $750f: $88
	adc  b                                           ; $7510: $88
	adc  b                                           ; $7511: $88
	adc  b                                           ; $7512: $88
	adc  b                                           ; $7513: $88
	adc  b                                           ; $7514: $88
	adc  b                                           ; $7515: $88
	adc  b                                           ; $7516: $88
	adc  b                                           ; $7517: $88
	adc  b                                           ; $7518: $88
	adc  b                                           ; $7519: $88
	adc  b                                           ; $751a: $88
	adc  b                                           ; $751b: $88
	adc  b                                           ; $751c: $88
	adc  b                                           ; $751d: $88
	adc  b                                           ; $751e: $88
	adc  b                                           ; $751f: $88
	adc  b                                           ; $7520: $88
	adc  b                                           ; $7521: $88
	adc  b                                           ; $7522: $88
	adc  b                                           ; $7523: $88
	adc  b                                           ; $7524: $88
	adc  b                                           ; $7525: $88
	adc  b                                           ; $7526: $88
	adc  b                                           ; $7527: $88
	adc  b                                           ; $7528: $88
	adc  b                                           ; $7529: $88
	adc  b                                           ; $752a: $88
	adc  b                                           ; $752b: $88
	adc  b                                           ; $752c: $88
	adc  b                                           ; $752d: $88
	adc  b                                           ; $752e: $88
	adc  b                                           ; $752f: $88
	adc  b                                           ; $7530: $88
	adc  b                                           ; $7531: $88
	adc  b                                           ; $7532: $88
	adc  b                                           ; $7533: $88
	adc  b                                           ; $7534: $88
	adc  b                                           ; $7535: $88
	adc  b                                           ; $7536: $88
	adc  b                                           ; $7537: $88
	adc  b                                           ; $7538: $88
	adc  b                                           ; $7539: $88
	adc  b                                           ; $753a: $88
	adc  b                                           ; $753b: $88
	adc  b                                           ; $753c: $88
	adc  b                                           ; $753d: $88
	adc  b                                           ; $753e: $88
	adc  b                                           ; $753f: $88
	adc  b                                           ; $7540: $88
	adc  b                                           ; $7541: $88
	adc  b                                           ; $7542: $88
	adc  b                                           ; $7543: $88
	adc  b                                           ; $7544: $88
	adc  b                                           ; $7545: $88
	adc  b                                           ; $7546: $88
	adc  b                                           ; $7547: $88
	adc  b                                           ; $7548: $88
	adc  b                                           ; $7549: $88
	adc  b                                           ; $754a: $88
	adc  b                                           ; $754b: $88
	adc  b                                           ; $754c: $88
	adc  b                                           ; $754d: $88
	adc  b                                           ; $754e: $88
	adc  b                                           ; $754f: $88
	adc  b                                           ; $7550: $88
	adc  b                                           ; $7551: $88
	adc  b                                           ; $7552: $88
	adc  b                                           ; $7553: $88
	adc  b                                           ; $7554: $88
	adc  b                                           ; $7555: $88
	adc  b                                           ; $7556: $88
	adc  b                                           ; $7557: $88
	adc  b                                           ; $7558: $88
	adc  b                                           ; $7559: $88
	adc  b                                           ; $755a: $88
	adc  b                                           ; $755b: $88
	adc  b                                           ; $755c: $88
	adc  b                                           ; $755d: $88
	adc  b                                           ; $755e: $88
	adc  b                                           ; $755f: $88
	adc  b                                           ; $7560: $88
	adc  b                                           ; $7561: $88
	adc  b                                           ; $7562: $88
	adc  b                                           ; $7563: $88
	adc  b                                           ; $7564: $88
	adc  b                                           ; $7565: $88
	adc  b                                           ; $7566: $88
	adc  b                                           ; $7567: $88
	adc  b                                           ; $7568: $88
	adc  b                                           ; $7569: $88
	adc  b                                           ; $756a: $88
	adc  b                                           ; $756b: $88
	adc  b                                           ; $756c: $88
	adc  b                                           ; $756d: $88
	adc  b                                           ; $756e: $88
	adc  b                                           ; $756f: $88
	adc  b                                           ; $7570: $88
	adc  b                                           ; $7571: $88
	adc  b                                           ; $7572: $88
	adc  b                                           ; $7573: $88
	adc  b                                           ; $7574: $88
	adc  b                                           ; $7575: $88
	adc  b                                           ; $7576: $88
	adc  b                                           ; $7577: $88
	adc  b                                           ; $7578: $88
	adc  b                                           ; $7579: $88
	adc  b                                           ; $757a: $88
	adc  b                                           ; $757b: $88
	adc  b                                           ; $757c: $88

Jump_0bc_757d:
	adc  b                                           ; $757d: $88
	adc  b                                           ; $757e: $88
	adc  b                                           ; $757f: $88
	adc  b                                           ; $7580: $88
	adc  b                                           ; $7581: $88
	adc  b                                           ; $7582: $88
	adc  b                                           ; $7583: $88
	adc  b                                           ; $7584: $88
	adc  b                                           ; $7585: $88
	adc  b                                           ; $7586: $88
	adc  b                                           ; $7587: $88
	adc  b                                           ; $7588: $88
	adc  b                                           ; $7589: $88
	adc  b                                           ; $758a: $88
	adc  b                                           ; $758b: $88
	adc  b                                           ; $758c: $88
	adc  b                                           ; $758d: $88
	adc  b                                           ; $758e: $88
	adc  b                                           ; $758f: $88
	adc  b                                           ; $7590: $88
	adc  b                                           ; $7591: $88
	adc  b                                           ; $7592: $88
	adc  b                                           ; $7593: $88
	adc  b                                           ; $7594: $88
	adc  b                                           ; $7595: $88
	adc  b                                           ; $7596: $88
	adc  b                                           ; $7597: $88
	adc  b                                           ; $7598: $88
	adc  b                                           ; $7599: $88
	adc  b                                           ; $759a: $88
	adc  b                                           ; $759b: $88
	adc  b                                           ; $759c: $88
	adc  b                                           ; $759d: $88
	adc  b                                           ; $759e: $88
	adc  b                                           ; $759f: $88
	adc  b                                           ; $75a0: $88
	adc  b                                           ; $75a1: $88
	adc  b                                           ; $75a2: $88
	adc  b                                           ; $75a3: $88
	adc  b                                           ; $75a4: $88
	adc  b                                           ; $75a5: $88
	adc  b                                           ; $75a6: $88
	adc  b                                           ; $75a7: $88
	adc  b                                           ; $75a8: $88
	adc  b                                           ; $75a9: $88
	adc  b                                           ; $75aa: $88
	adc  b                                           ; $75ab: $88
	adc  b                                           ; $75ac: $88
	adc  b                                           ; $75ad: $88
	adc  b                                           ; $75ae: $88
	adc  b                                           ; $75af: $88
	adc  b                                           ; $75b0: $88
	adc  b                                           ; $75b1: $88
	adc  b                                           ; $75b2: $88
	adc  b                                           ; $75b3: $88
	adc  b                                           ; $75b4: $88
	adc  b                                           ; $75b5: $88
	adc  b                                           ; $75b6: $88
	adc  b                                           ; $75b7: $88
	adc  b                                           ; $75b8: $88
	adc  b                                           ; $75b9: $88
	adc  b                                           ; $75ba: $88
	adc  b                                           ; $75bb: $88
	adc  b                                           ; $75bc: $88
	adc  b                                           ; $75bd: $88
	adc  b                                           ; $75be: $88
	adc  b                                           ; $75bf: $88
	adc  b                                           ; $75c0: $88
	adc  b                                           ; $75c1: $88
	adc  b                                           ; $75c2: $88
	adc  b                                           ; $75c3: $88
	adc  b                                           ; $75c4: $88
	adc  b                                           ; $75c5: $88
	adc  b                                           ; $75c6: $88
	adc  b                                           ; $75c7: $88
	adc  b                                           ; $75c8: $88
	adc  b                                           ; $75c9: $88
	sbc  c                                           ; $75ca: $99
	adc  b                                           ; $75cb: $88
	adc  b                                           ; $75cc: $88
	adc  b                                           ; $75cd: $88
	sbc  b                                           ; $75ce: $98
	sbc  c                                           ; $75cf: $99
	sbc  c                                           ; $75d0: $99
	adc  c                                           ; $75d1: $89
	sub  a                                           ; $75d2: $97
	ld   a, b                                        ; $75d3: $78
	adc  b                                           ; $75d4: $88
	ld   a, b                                        ; $75d5: $78
	add  a                                           ; $75d6: $87
	ld   [hl], a                                     ; $75d7: $77
	adc  b                                           ; $75d8: $88
	add  a                                           ; $75d9: $87
	sbc  b                                           ; $75da: $98
	adc  b                                           ; $75db: $88
	ld   a, b                                        ; $75dc: $78
	adc  b                                           ; $75dd: $88
	add  a                                           ; $75de: $87
	ld   [hl], a                                     ; $75df: $77
	ld   [hl], a                                     ; $75e0: $77
	ld   [hl], a                                     ; $75e1: $77
	adc  b                                           ; $75e2: $88
	add  a                                           ; $75e3: $87
	adc  b                                           ; $75e4: $88
	ld   [hl], a                                     ; $75e5: $77
	adc  b                                           ; $75e6: $88
	adc  c                                           ; $75e7: $89
	ld   a, b                                        ; $75e8: $78
	sbc  b                                           ; $75e9: $98
	adc  b                                           ; $75ea: $88
	adc  b                                           ; $75eb: $88
	ld   [hl], a                                     ; $75ec: $77
	adc  b                                           ; $75ed: $88
	add  a                                           ; $75ee: $87
	ld   [hl], a                                     ; $75ef: $77
	ld   [hl], a                                     ; $75f0: $77
	ld   a, b                                        ; $75f1: $78
	sub  a                                           ; $75f2: $97
	ld   [hl], a                                     ; $75f3: $77
	ld   [hl], a                                     ; $75f4: $77
	ld   a, b                                        ; $75f5: $78
	adc  b                                           ; $75f6: $88
	adc  b                                           ; $75f7: $88
	sub  a                                           ; $75f8: $97
	ld   a, b                                        ; $75f9: $78
	adc  c                                           ; $75fa: $89
	adc  b                                           ; $75fb: $88
	ld   a, b                                        ; $75fc: $78
	sbc  b                                           ; $75fd: $98
	adc  b                                           ; $75fe: $88
	sbc  b                                           ; $75ff: $98
	add  a                                           ; $7600: $87
	adc  b                                           ; $7601: $88
	ld   a, c                                        ; $7602: $79
	add  a                                           ; $7603: $87
	halt                                             ; $7604: $76
	ld   h, l                                        ; $7605: $65
	ld   b, [hl]                                     ; $7606: $46
	ld   [hl], l                                     ; $7607: $75
	ld   d, l                                        ; $7608: $55
	ld   d, [hl]                                     ; $7609: $56
	ld   h, a                                        ; $760a: $67
	sbc  d                                           ; $760b: $9a
	xor  d                                           ; $760c: $aa
	db   $dd                                         ; $760d: $dd
	call z, $abbb                                    ; $760e: $cc $bb $ab
	call z, $97db                                    ; $7611: $cc $db $97
	halt                                             ; $7614: $76
	ld   d, l                                        ; $7615: $55
	ld   d, h                                        ; $7616: $54
	ld   de, $2111                                   ; $7617: $11 $11 $21
	add  hl, de                                      ; $761a: $19
	db   $fd                                         ; $761b: $fd
	adc  a                                           ; $761c: $8f
	rst  $38                                         ; $761d: $ff
	and  a                                           ; $761e: $a7
	rst  $38                                         ; $761f: $ff
	cp   e                                           ; $7620: $bb
	rst  $38                                         ; $7621: $ff
	cp   $cd                                         ; $7622: $fe $cd
	rst  ToBoot                                         ; $7624: $c7
	ld   d, l                                        ; $7625: $55
	ld   h, e                                        ; $7626: $63
	ld   de, $1111                                   ; $7627: $11 $11 $11
	ld   a, [de]                                     ; $762a: $1a
	cp   a                                           ; $762b: $bf
	rst  $38                                         ; $762c: $ff
	ld   a, [$54ff]                                  ; $762d: $fa $ff $54
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7630: $cf
	call z, $ffff                                    ; $7631: $cc $ff $ff
	cp   $ec                                         ; $7634: $fe $ec
	add  [hl]                                        ; $7636: $86
	ld   h, e                                        ; $7637: $63
	ld   de, $1111                                   ; $7638: $11 $11 $11
	ld   de, $ffcf                                   ; $763b: $11 $cf $ff
	db   $fc                                         ; $763e: $fc
	xor  b                                           ; $763f: $a8
	ld   de, $ffbf                                   ; $7640: $11 $bf $ff
	rst  $38                                         ; $7643: $ff
	rst  $38                                         ; $7644: $ff
	ld   a, b                                        ; $7645: $78
	rst  $28                                         ; $7646: $ef
	di                                               ; $7647: $f3
	ld   de, $1111                                   ; $7648: $11 $11 $11
	ld   de, $ff16                                   ; $764b: $11 $16 $ff
	rst  $38                                         ; $764e: $ff
	rst  $38                                         ; $764f: $ff
	ld   de, $25d5                                   ; $7650: $11 $d5 $25
	rst  $38                                         ; $7653: $ff
	rst  $38                                         ; $7654: $ff
	rst  $38                                         ; $7655: $ff
	add  c                                           ; $7656: $81
	ld   a, [de]                                     ; $7657: $1a
	rst  $38                                         ; $7658: $ff
	or   c                                           ; $7659: $b1
	ld   de, $1111                                   ; $765a: $11 $11 $11
	rra                                              ; $765d: $1f
	rst  $38                                         ; $765e: $ff
	rst  $38                                         ; $765f: $ff
	pop  af                                          ; $7660: $f1
	ld   de, $cfdf                                   ; $7661: $11 $df $cf
	rst  $38                                         ; $7664: $ff
	rst  $38                                         ; $7665: $ff
	db   $dd                                         ; $7666: $dd
	rst  ToBoot                                         ; $7667: $c7
	ld   a, a                                        ; $7668: $7f
	push af                                          ; $7669: $f5
	ld   de, $1111                                   ; $766a: $11 $11 $11
	ld   de, $ffff                                   ; $766d: $11 $ff $ff
	rst  $38                                         ; $7670: $ff
	ld   h, c                                        ; $7671: $61
	add  hl, de                                      ; $7672: $19
	ei                                               ; $7673: $fb
	sbc  a                                           ; $7674: $9f
	rst  $38                                         ; $7675: $ff

Call_0bc_7676:
	and  $fe                                         ; $7676: $e6 $fe
	and  l                                           ; $7678: $a5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7679: $cf
	ld   d, c                                        ; $767a: $51
	ld   de, $1111                                   ; $767b: $11 $11 $11
	cpl                                              ; $767e: $2f
	rst  $38                                         ; $767f: $ff
	rst  $38                                         ; $7680: $ff
	pop  af                                          ; $7681: $f1
	ld   de, $af98                                   ; $7682: $11 $98 $af
	rst  $38                                         ; $7685: $ff
	rst  $38                                         ; $7686: $ff
	ld   sp, hl                                      ; $7687: $f9
	ld   e, h                                        ; $7688: $5c
	rst  $38                                         ; $7689: $ff
	or   c                                           ; $768a: $b1
	ld   de, $1111                                   ; $768b: $11 $11 $11
	ld   de, $ffff                                   ; $768e: $11 $ff $ff
	rst  $38                                         ; $7691: $ff
	ld   de, $ff19                                   ; $7692: $11 $19 $ff
	rst  $38                                         ; $7695: $ff
	rst  $38                                         ; $7696: $ff
	db   $fc                                         ; $7697: $fc
	ld   l, e                                        ; $7698: $6b
	ld   l, $d9                                      ; $7699: $2e $d9
	ld   sp, $1111                                   ; $769b: $31 $11 $11
	dec  d                                           ; $769e: $15
	sbc  a                                           ; $769f: $9f
	rst  $38                                         ; $76a0: $ff
	ld   hl, sp+$11                                  ; $76a1: $f8 $11
	ld   de, $ff8f                                   ; $76a3: $11 $8f $ff
	rst  $38                                         ; $76a6: $ff
	rst  $38                                         ; $76a7: $ff
	cp   d                                           ; $76a8: $ba

Jump_0bc_76a9:
	sbc  l                                           ; $76a9: $9d
	ei                                               ; $76aa: $fb
	ld   de, $1111                                   ; $76ab: $11 $11 $11
	ld   de, $ffff                                   ; $76ae: $11 $ff $ff
	rst  JumpTable                                         ; $76b1: $df
	pop  de                                          ; $76b2: $d1
	inc  de                                          ; $76b3: $13
	rst  $38                                         ; $76b4: $ff
	xor  a                                           ; $76b5: $af
	rst  $38                                         ; $76b6: $ff
	rst  ToBoot                                         ; $76b7: $c7
	rst  $28                                         ; $76b8: $ef
	ld   hl, sp+$7a                                  ; $76b9: $f8 $7a
	ld   hl, $1111                                   ; $76bb: $21 $11 $11
	ld   de, $ffff                                   ; $76be: $11 $ff $ff
	rst  $38                                         ; $76c1: $ff
	pop  af                                          ; $76c2: $f1
	dec  de                                          ; $76c3: $1b
	rst  $38                                         ; $76c4: $ff
	sbc  a                                           ; $76c5: $9f
	rst  $38                                         ; $76c6: $ff
	pop  af                                          ; $76c7: $f1
	cp   a                                           ; $76c8: $bf
	or   [hl]                                        ; $76c9: $b6
	sbc  a                                           ; $76ca: $9f
	ld   de, $1111                                   ; $76cb: $11 $11 $11
	ccf                                              ; $76ce: $3f
	rst  $38                                         ; $76cf: $ff
	rst  $38                                         ; $76d0: $ff
	sub  $41                                         ; $76d1: $d6 $41
	ld   a, [de]                                     ; $76d3: $1a
	rst  $38                                         ; $76d4: $ff
	rst  $38                                         ; $76d5: $ff
	rst  $38                                         ; $76d6: $ff
	sub  a                                           ; $76d7: $97
	rst  $38                                         ; $76d8: $ff
	db   $f4                                         ; $76d9: $f4
	ld   b, c                                        ; $76da: $41
	ld   de, $1211                                   ; $76db: $11 $11 $12
	rst  $38                                         ; $76de: $ff
	rst  $38                                         ; $76df: $ff
	ldh  a, [c]                                      ; $76e0: $f2
	ld   a, [de]                                     ; $76e1: $1a
	ld   de, $ffef                                   ; $76e2: $11 $ef $ff
	ld   a, a                                        ; $76e5: $7f
	ld   sp, hl                                      ; $76e6: $f9
	add  hl, de                                      ; $76e7: $19
	rst  $38                                         ; $76e8: $ff
	or   e                                           ; $76e9: $b3
	ld   de, $1111                                   ; $76ea: $11 $11 $11
	rst  $38                                         ; $76ed: $ff
	rst  $38                                         ; $76ee: $ff
	rst  $38                                         ; $76ef: $ff
	and  c                                           ; $76f0: $a1
	ld   de, $ffff                                   ; $76f1: $11 $ff $ff
	rst  $38                                         ; $76f4: $ff
	and  c                                           ; $76f5: $a1
	rra                                              ; $76f6: $1f
	rst  $38                                         ; $76f7: $ff
	rst  $38                                         ; $76f8: $ff
	ld   de, $1111                                   ; $76f9: $11 $11 $11
	rst  $38                                         ; $76fc: $ff
	rst  $38                                         ; $76fd: $ff
	rst  $38                                         ; $76fe: $ff
	ld   b, c                                        ; $76ff: $41
	rla                                              ; $7700: $17
	rst  $38                                         ; $7701: $ff
	rst  $38                                         ; $7702: $ff
	rst  $38                                         ; $7703: $ff
	ld   de, $ff1d                                   ; $7704: $11 $1d $ff
	db   $fc                                         ; $7707: $fc
	ld   de, $1111                                   ; $7708: $11 $11 $11
	rst  $38                                         ; $770b: $ff
	rst  $38                                         ; $770c: $ff
	db   $f4                                         ; $770d: $f4
	ld   de, $7f21                                   ; $770e: $11 $21 $7f
	rst  $38                                         ; $7711: $ff
	ld   [$1a11], a                                  ; $7712: $ea $11 $1a
	rst  $38                                         ; $7715: $ff
	pop  af                                          ; $7716: $f1
	ld   de, $1f11                                   ; $7717: $11 $11 $1f
	rst  $38                                         ; $771a: $ff
	rst  $38                                         ; $771b: $ff
	pop  af                                          ; $771c: $f1
	ld   de, $ffcb                                   ; $771d: $11 $cb $ff
	rst  $38                                         ; $7720: $ff
	add  c                                           ; $7721: $81
	ld   [de], a                                     ; $7722: $12
	or   d                                           ; $7723: $b2
	xor  a                                           ; $7724: $af
	pop  af                                          ; $7725: $f1
	ld   de, $7e11                                   ; $7726: $11 $11 $7e
	rst  $38                                         ; $7729: $ff
	db   $fd                                         ; $772a: $fd
	ld   de, $1f71                                   ; $772b: $11 $71 $1f
	rst  $38                                         ; $772e: $ff
	cp   $a1                                         ; $772f: $fe $a1
	ld   de, $b97d                                   ; $7731: $11 $7d $b9
	ld   de, $2711                                   ; $7734: $11 $11 $27
	rst  JumpTable                                         ; $7737: $df
	rst  $38                                         ; $7738: $ff
	push af                                          ; $7739: $f5
	ld   d, $a1                                      ; $773a: $16 $a1
	rst  $38                                         ; $773c: $ff
	rst  $38                                         ; $773d: $ff
	ret  z                                           ; $773e: $c8

	ld   de, $eb14                                   ; $773f: $11 $14 $eb
	ld   bc, $1311                                   ; $7742: $01 $11 $13
	rst  $38                                         ; $7745: $ff
	rst  $38                                         ; $7746: $ff
	cp   $14                                         ; $7747: $fe $14
	pop  af                                          ; $7749: $f1
	xor  [hl]                                        ; $774a: $ae
	rst  $38                                         ; $774b: $ff
	rst  $38                                         ; $774c: $ff
	ld   de, $4c11                                   ; $774d: $11 $11 $4c
	sub  d                                           ; $7750: $92
	ld   de, $d511                                   ; $7751: $11 $11 $d5
	rst  $38                                         ; $7754: $ff
	rst  $38                                         ; $7755: $ff
	jp   hl                                          ; $7756: $e9


	sub  c                                           ; $7757: $91
	ld   a, c                                        ; $7758: $79
	rst  $38                                         ; $7759: $ff
	rst  $38                                         ; $775a: $ff
	ld   h, c                                        ; $775b: $61
	ld   de, $c116                                   ; $775c: $11 $16 $c1
	ld   de, $a311                                   ; $775f: $11 $11 $a3
	rst  $38                                         ; $7762: $ff
	rst  $38                                         ; $7763: $ff
	ld   a, a                                        ; $7764: $7f
	db   $e3                                         ; $7765: $e3
	rra                                              ; $7766: $1f
	rst  $38                                         ; $7767: $ff
	rst  $38                                         ; $7768: $ff
	pop  bc                                          ; $7769: $c1
	ld   de, $1111                                   ; $776a: $11 $11 $11
	ld   de, $9311                                   ; $776d: $11 $11 $93
	rst  $38                                         ; $7770: $ff
	rst  $38                                         ; $7771: $ff
	rst  $38                                         ; $7772: $ff
	pop  af                                          ; $7773: $f1
	rra                                              ; $7774: $1f
	rst  $38                                         ; $7775: $ff
	rst  $38                                         ; $7776: $ff
	pop  bc                                          ; $7777: $c1
	ld   de, $1211                                   ; $7778: $11 $11 $12
	ld   de, $f116                                   ; $777b: $11 $16 $f1
	rst  $38                                         ; $777e: $ff
	rst  $38                                         ; $777f: $ff
	ld   l, a                                        ; $7780: $6f
	rst  $30                                         ; $7781: $f7
	ld   l, d                                        ; $7782: $6a
	rst  $38                                         ; $7783: $ff
	rst  JumpTable                                         ; $7784: $df
	add  e                                           ; $7785: $83
	ld   de, $1111                                   ; $7786: $11 $11 $11
	ld   de, $411a                                   ; $7789: $11 $1a $41
	rst  $38                                         ; $778c: $ff
	ld   a, [$e1ff]                                  ; $778d: $fa $ff $e1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7790: $cf
	rst  $38                                         ; $7791: $ff
	rst  $28                                         ; $7792: $ef
	add  h                                           ; $7793: $84
	ld   de, $1111                                   ; $7794: $11 $11 $11
	ld   de, $3711                                   ; $7797: $11 $11 $37
	rst  $38                                         ; $779a: $ff
	db   $fd                                         ; $779b: $fd
	rst  $38                                         ; $779c: $ff
	and  c                                           ; $779d: $a1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $779e: $cf
	rst  $38                                         ; $779f: $ff
	rst  $38                                         ; $77a0: $ff
	sub  c                                           ; $77a1: $91
	ld   de, $1111                                   ; $77a2: $11 $11 $11
	ld   de, $4f11                                   ; $77a5: $11 $11 $4f

Jump_0bc_77a8:
	rst  $38                                         ; $77a8: $ff
	rst  $38                                         ; $77a9: $ff
	rst  $38                                         ; $77aa: $ff

Jump_0bc_77ab:
	sbc  a                                           ; $77ab: $9f
	rst  $38                                         ; $77ac: $ff
	rst  $38                                         ; $77ad: $ff
	or   $41                                         ; $77ae: $f6 $41
	ld   de, $1111                                   ; $77b0: $11 $11 $11
	ld   de, $8f11                                   ; $77b3: $11 $11 $8f
	rst  $38                                         ; $77b6: $ff
	rst  $38                                         ; $77b7: $ff
	ei                                               ; $77b8: $fb

Call_0bc_77b9:
	rst  $28                                         ; $77b9: $ef
	rst  $38                                         ; $77ba: $ff
	rst  $38                                         ; $77bb: $ff
	ld   [$1131], a                                  ; $77bc: $ea $31 $11
	ld   de, $1111                                   ; $77bf: $11 $11 $11
	ld   de, $bfff                                   ; $77c2: $11 $ff $bf
	rst  $38                                         ; $77c5: $ff
	sbc  a                                           ; $77c6: $9f
	db   $fc                                         ; $77c7: $fc
	rst  $38                                         ; $77c8: $ff
	db   $fd                                         ; $77c9: $fd

Call_0bc_77ca:
	ld   e, d                                        ; $77ca: $5a
	ld   de, $1111                                   ; $77cb: $11 $11 $11
	ld   de, $1a11                                   ; $77ce: $11 $11 $1a
	rst  $38                                         ; $77d1: $ff
	rst  $38                                         ; $77d2: $ff
	rst  $38                                         ; $77d3: $ff
	rst  $38                                         ; $77d4: $ff
	rst  $38                                         ; $77d5: $ff
	rst  $38                                         ; $77d6: $ff
	add  sp, -$7f                                    ; $77d7: $e8 $81
	ld   de, $1111                                   ; $77d9: $11 $11 $11
	ld   de, $6f11                                   ; $77dc: $11 $11 $6f
	rst  $38                                         ; $77df: $ff
	rst  $38                                         ; $77e0: $ff
	rst  $38                                         ; $77e1: $ff
	rst  $28                                         ; $77e2: $ef
	rst  $38                                         ; $77e3: $ff
	cp   $da                                         ; $77e4: $fe $da
	ld   d, c                                        ; $77e6: $51
	ld   de, $1111                                   ; $77e7: $11 $11 $11
	ld   de, $df11                                   ; $77ea: $11 $11 $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77ed: $cf
	rst  $38                                         ; $77ee: $ff
	rst  $38                                         ; $77ef: $ff
	rst  $38                                         ; $77f0: $ff
	rst  $38                                         ; $77f1: $ff
	rst  JumpTable                                         ; $77f2: $df
	add  sp, $31                                     ; $77f3: $e8 $31
	ld   de, $1111                                   ; $77f5: $11 $11 $11
	ld   de, wTitleScreenCounterBetweenBlinkAnimIdxes                                   ; $77f8: $11 $16 $cc
	rst  $38                                         ; $77fb: $ff
	rst  $38                                         ; $77fc: $ff
	rst  $38                                         ; $77fd: $ff
	rst  $38                                         ; $77fe: $ff
	rst  $38                                         ; $77ff: $ff
	rst  $28                                         ; $7800: $ef
	xor  b                                           ; $7801: $a8
	ld   hl, $1111                                   ; $7802: $21 $11 $11
	ld   de, $1b21                                   ; $7805: $11 $21 $1b
	ld   l, h                                        ; $7808: $6c
	ei                                               ; $7809: $fb
	rst  $38                                         ; $780a: $ff
	rst  $38                                         ; $780b: $ff
	rst  $28                                         ; $780c: $ef
	ei                                               ; $780d: $fb
	rst  $28                                         ; $780e: $ef
	halt                                             ; $780f: $76
	ld   d, c                                        ; $7810: $51
	ld   de, $1221                                   ; $7811: $11 $21 $12
	ld   de, $3f57                                   ; $7814: $11 $57 $3f
	rst  $38                                         ; $7817: $ff
	rst  JumpTable                                         ; $7818: $df
	db   $fc                                         ; $7819: $fc
	rst  $38                                         ; $781a: $ff
	rst  $28                                         ; $781b: $ef
	ld   sp, hl                                      ; $781c: $f9
	and  [hl]                                        ; $781d: $a6
	ld   d, c                                        ; $781e: $51
	ld   de, $1211                                   ; $781f: $11 $11 $12
	ld   sp, $ec17                                   ; $7822: $31 $17 $ec
	adc  $ff                                         ; $7825: $ce $ff
	sbc  a                                           ; $7827: $9f
	db   $fd                                         ; $7828: $fd
	rst  JumpTable                                         ; $7829: $df
	ret                                              ; $782a: $c9


	cp   b                                           ; $782b: $b8
	ld   b, d                                        ; $782c: $42
	ld   de, $1111                                   ; $782d: $11 $11 $11
	ld   hl, $6b36                                   ; $7830: $21 $36 $6b
	jp   hl                                          ; $7833: $e9


	rst  JumpTable                                         ; $7834: $df
	ei                                               ; $7835: $fb
	rst  $28                                         ; $7836: $ef
	db   $ed                                         ; $7837: $ed
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7838: $cf
	or   [hl]                                        ; $7839: $b6
	ld   [hl], l                                     ; $783a: $75
	ld   hl, $1531                                   ; $783b: $21 $31 $15
	ld   [de], a                                     ; $783e: $12
	ld   d, d                                        ; $783f: $52
	and  a                                           ; $7840: $a7
	adc  $cf                                         ; $7841: $ce $cf
	adc  $fc                                         ; $7843: $ce $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7845: $cf
	call z, $84b8                                    ; $7846: $cc $b8 $84
	ld   d, h                                        ; $7849: $54
	dec  [hl]                                        ; $784a: $35
	ld   sp, $1323                                   ; $784b: $31 $23 $13
	or   a                                           ; $784e: $b7
	ld   c, l                                        ; $784f: $4d
	xor  b                                           ; $7850: $a8
	cp   h                                           ; $7851: $bc
	call $bcfc                                       ; $7852: $cd $fc $bc
	jp   c, $536a                                    ; $7855: $da $6a $53

	add  e                                           ; $7858: $83
	dec  h                                           ; $7859: $25
	ld   d, d                                        ; $785a: $52
	ld   d, $73                                      ; $785b: $16 $73
	ld   a, l                                        ; $785d: $7d
	or   a                                           ; $785e: $b7
	cp   c                                           ; $785f: $b9
	cp   [hl]                                        ; $7860: $be
	sbc  h                                           ; $7861: $9c
	rst  JumpTable                                         ; $7862: $df
	call z, Call_0bc_45b9                            ; $7863: $cc $b9 $45
	ld   [hl], c                                     ; $7866: $71
	ld   l, h                                        ; $7867: $6c
	ld   b, c                                        ; $7868: $41
	ld   [hl], l                                     ; $7869: $75
	inc  h                                           ; $786a: $24
	and  h                                           ; $786b: $a4
	ccf                                              ; $786c: $3f
	xor  b                                           ; $786d: $a8
	xor  l                                           ; $786e: $ad
	add  a                                           ; $786f: $87
	db   $fc                                         ; $7870: $fc
	xor  d                                           ; $7871: $aa
	ld   sp, hl                                      ; $7872: $f9
	ld   e, h                                        ; $7873: $5c
	sub  c                                           ; $7874: $91
	ld   a, d                                        ; $7875: $7a
	ld   h, c                                        ; $7876: $61
	adc  c                                           ; $7877: $89
	inc  de                                          ; $7878: $13
	ld   h, a                                        ; $7879: $67
	ld   c, b                                        ; $787a: $48
	or   [hl]                                        ; $787b: $b6
	xor  b                                           ; $787c: $a8
	cp   h                                           ; $787d: $bc
	xor  e                                           ; $787e: $ab
	ld   a, [$db6e]                                  ; $787f: $fa $6e $db
	ld   d, l                                        ; $7882: $55
	call nz, Call_0bc_511a                           ; $7883: $c4 $1a $51
	add  [hl]                                        ; $7886: $86
	daa                                              ; $7887: $27
	ld   c, d                                        ; $7888: $4a
	add  l                                           ; $7889: $85
	push de                                          ; $788a: $d5
	sbc  e                                           ; $788b: $9b
	sbc  d                                           ; $788c: $9a
	ld   l, h                                        ; $788d: $6c
	and  a                                           ; $788e: $a7
	ld   e, c                                        ; $788f: $59
	sub  a                                           ; $7890: $97
	and  [hl]                                        ; $7891: $a6
	jp   z, $8627                                    ; $7892: $ca $27 $86

	halt                                             ; $7895: $76
	sub  e                                           ; $7896: $93
	ld   [hl], a                                     ; $7897: $77
	ld   b, [hl]                                     ; $7898: $46
	and  a                                           ; $7899: $a7
	ccf                                              ; $789a: $3f
	add  [hl]                                        ; $789b: $86
	ret  c                                           ; $789c: $d8

	adc  c                                           ; $789d: $89
	adc  e                                           ; $789e: $8b
	ld   a, b                                        ; $789f: $78
	or   l                                           ; $78a0: $b5
	ld   e, d                                        ; $78a1: $5a
	ld   [hl], d                                     ; $78a2: $72
	add  $59                                         ; $78a3: $c6 $59
	sbc  b                                           ; $78a5: $98
	add  hl, de                                      ; $78a6: $19
	and  h                                           ; $78a7: $a4
	sbc  c                                           ; $78a8: $99
	adc  e                                           ; $78a9: $8b
	sub  l                                           ; $78aa: $95
	ld   e, e                                        ; $78ab: $5b
	and  l                                           ; $78ac: $a5
	xor  e                                           ; $78ad: $ab
	ld   b, [hl]                                     ; $78ae: $46
	adc  b                                           ; $78af: $88
	sub  e                                           ; $78b0: $93
	adc  d                                           ; $78b1: $8a
	ld   e, b                                        ; $78b2: $58
	jp   $388a                                       ; $78b3: $c3 $8a $38


	ld   l, h                                        ; $78b6: $6c

Jump_0bc_78b7:
	add  [hl]                                        ; $78b7: $86
	cp   c                                           ; $78b8: $b9
	ld   l, h                                        ; $78b9: $6c
	halt                                             ; $78ba: $76
	jp   Jump_0bc_6ab6                               ; $78bb: $c3 $b6 $6a


	ld   h, a                                        ; $78be: $67

jr_0bc_78bf:
	ld   l, b                                        ; $78bf: $68
	ld   l, c                                        ; $78c0: $69
	ld   l, c                                        ; $78c1: $69
	and  a                                           ; $78c2: $a7
	sbc  l                                           ; $78c3: $9d
	ld   h, [hl]                                     ; $78c4: $66
	sub  $89                                         ; $78c5: $d6 $89
	sbc  c                                           ; $78c7: $99
	ld   l, d                                        ; $78c8: $6a
	and  h                                           ; $78c9: $a4
	xor  d                                           ; $78ca: $aa
	add  hl, hl                                      ; $78cb: $29
	sub  l                                           ; $78cc: $95
	sub  a                                           ; $78cd: $97
	adc  c                                           ; $78ce: $89
	ld   c, c                                        ; $78cf: $49
	add  [hl]                                        ; $78d0: $86
	adc  e                                           ; $78d1: $8b
	ld   l, c                                        ; $78d2: $69
	ret  z                                           ; $78d3: $c8

	adc  b                                           ; $78d4: $88
	sub  l                                           ; $78d5: $95
	adc  h                                           ; $78d6: $8c
	ld   h, a                                        ; $78d7: $67
	and  e                                           ; $78d8: $a3
	ld   [hl], a                                     ; $78d9: $77
	ld   e, b                                        ; $78da: $58
	ld   a, b                                        ; $78db: $78
	add  a                                           ; $78dc: $87
	ld   l, b                                        ; $78dd: $68
	sub  a                                           ; $78de: $97
	ld   e, e                                        ; $78df: $5b
	ld   a, c                                        ; $78e0: $79
	push de                                          ; $78e1: $d5
	sub  l                                           ; $78e2: $95
	sbc  c                                           ; $78e3: $99
	ld   c, a                                        ; $78e4: $4f
	ld   [hl], d                                     ; $78e5: $72
	cp   c                                           ; $78e6: $b9
	halt                                             ; $78e7: $76
	sbc  e                                           ; $78e8: $9b
	ld   d, a                                        ; $78e9: $57
	or   a                                           ; $78ea: $b7
	ld   e, b                                        ; $78eb: $58
	add  a                                           ; $78ec: $87
	ld   a, b                                        ; $78ed: $78
	xor  b                                           ; $78ee: $a8
	sbc  d                                           ; $78ef: $9a
	ld   d, a                                        ; $78f0: $57
	and  a                                           ; $78f1: $a7
	sbc  d                                           ; $78f2: $9a
	add  a                                           ; $78f3: $87
	adc  d                                           ; $78f4: $8a
	ld   [hl], e                                     ; $78f5: $73
	ld   e, c                                        ; $78f6: $59
	cp   c                                           ; $78f7: $b9
	cp   d                                           ; $78f8: $ba
	jr   z, jr_0bc_78bf                              ; $78f9: $28 $c4

	ld   a, e                                        ; $78fb: $7b
	sub  [hl]                                        ; $78fc: $96
	ld   c, d                                        ; $78fd: $4a
	add  l                                           ; $78fe: $85
	adc  h                                           ; $78ff: $8c
	ld   h, l                                        ; $7900: $65
	rst  ToBoot                                         ; $7901: $c7
	ld   a, b                                        ; $7902: $78
	ld   c, d                                        ; $7903: $4a
	and  [hl]                                        ; $7904: $a6
	adc  b                                           ; $7905: $88
	ld   a, c                                        ; $7906: $79
	sub  [hl]                                        ; $7907: $96
	add  a                                           ; $7908: $87
	ld   a, d                                        ; $7909: $7a
	ld   e, c                                        ; $790a: $59
	sbc  c                                           ; $790b: $99
	sub  [hl]                                        ; $790c: $96
	and  l                                           ; $790d: $a5
	ld   e, e                                        ; $790e: $5b
	add  [hl]                                        ; $790f: $86
	xor  b                                           ; $7910: $a8
	sbc  c                                           ; $7911: $99
	ld   l, d                                        ; $7912: $6a
	add  [hl]                                        ; $7913: $86
	sbc  c                                           ; $7914: $99
	ld   c, c                                        ; $7915: $49
	xor  b                                           ; $7916: $a8
	ld   [hl], l                                     ; $7917: $75
	and  a                                           ; $7918: $a7
	ld   a, d                                        ; $7919: $7a
	xor  c                                           ; $791a: $a9
	sbc  d                                           ; $791b: $9a
	ld   h, a                                        ; $791c: $67
	sbc  b                                           ; $791d: $98
	adc  b                                           ; $791e: $88
	ld   l, d                                        ; $791f: $6a
	ld   [hl], h                                     ; $7920: $74
	sub  $59                                         ; $7921: $d6 $59
	xor  d                                           ; $7923: $aa
	ld   [hl], a                                     ; $7924: $77
	sub  a                                           ; $7925: $97
	xor  d                                           ; $7926: $aa
	ld   l, c                                        ; $7927: $69
	and  [hl]                                        ; $7928: $a6
	adc  c                                           ; $7929: $89
	ld   a, c                                        ; $792a: $79
	ld   l, c                                        ; $792b: $69
	halt                                             ; $792c: $76
	adc  c                                           ; $792d: $89
	sub  a                                           ; $792e: $97
	call nz, Call_0bc_468c                           ; $792f: $c4 $8c $46
	call nc, $777d                                   ; $7932: $d4 $7d $77
	adc  l                                           ; $7935: $8d
	ld   b, [hl]                                     ; $7936: $46
	xor  c                                           ; $7937: $a9
	ld   d, a                                        ; $7938: $57
	push bc                                          ; $7939: $c5
	add  a                                           ; $793a: $87
	sub  [hl]                                        ; $793b: $96
	adc  e                                           ; $793c: $8b
	sub  h                                           ; $793d: $94
	xor  c                                           ; $793e: $a9
	ld   c, e                                        ; $793f: $4b
	ld   a, b                                        ; $7940: $78
	ld   a, c                                        ; $7941: $79
	ld   e, c                                        ; $7942: $59
	sub  [hl]                                        ; $7943: $96
	push bc                                          ; $7944: $c5
	sbc  c                                           ; $7945: $99
	ld   e, e                                        ; $7946: $5b
	ld   d, a                                        ; $7947: $57
	push bc                                          ; $7948: $c5
	ld   a, b                                        ; $7949: $78
	ld   a, c                                        ; $794a: $79
	sub  [hl]                                        ; $794b: $96
	sbc  c                                           ; $794c: $99
	ld   e, e                                        ; $794d: $5b
	ld   h, a                                        ; $794e: $67
	or   [hl]                                        ; $794f: $b6
	adc  d                                           ; $7950: $8a
	ld   [hl], a                                     ; $7951: $77
	adc  b                                           ; $7952: $88
	ld   a, c                                        ; $7953: $79
	or   a                                           ; $7954: $b7
	ld   a, c                                        ; $7955: $79
	sub  l                                           ; $7956: $95
	adc  d                                           ; $7957: $8a
	ld   e, e                                        ; $7958: $5b
	add  [hl]                                        ; $7959: $86
	or   l                                           ; $795a: $b5
	ld   a, c                                        ; $795b: $79
	add  a                                           ; $795c: $87
	sbc  c                                           ; $795d: $99
	ld   a, b                                        ; $795e: $78
	ld   a, d                                        ; $795f: $7a
	ld   l, b                                        ; $7960: $68
	sub  a                                           ; $7961: $97
	ld   a, c                                        ; $7962: $79
	ld   [hl], a                                     ; $7963: $77
	or   a                                           ; $7964: $b7
	ld   [hl], a                                     ; $7965: $77
	and  a                                           ; $7966: $a7
	adc  b                                           ; $7967: $88
	sub  [hl]                                        ; $7968: $96
	xor  b                                           ; $7969: $a8
	inc  a                                           ; $796a: $3c
	ld   l, b                                        ; $796b: $68
	adc  b                                           ; $796c: $88
	add  a                                           ; $796d: $87
	sub  a                                           ; $796e: $97
	sbc  b                                           ; $796f: $98
	sbc  b                                           ; $7970: $98
	ld   a, b                                        ; $7971: $78
	sub  a                                           ; $7972: $97
	sbc  c                                           ; $7973: $99
	adc  b                                           ; $7974: $88
	ld   e, d                                        ; $7975: $5a
	halt                                             ; $7976: $76
	sub  a                                           ; $7977: $97
	sbc  c                                           ; $7978: $99
	ld   l, d                                        ; $7979: $6a
	add  a                                           ; $797a: $87
	ld   l, c                                        ; $797b: $69
	sub  l                                           ; $797c: $95
	sbc  c                                           ; $797d: $99
	ld   [hl], a                                     ; $797e: $77
	sbc  c                                           ; $797f: $99
	sbc  b                                           ; $7980: $98
	ld   l, d                                        ; $7981: $6a
	ld   [hl], a                                     ; $7982: $77
	sbc  c                                           ; $7983: $99
	ld   l, b                                        ; $7984: $68
	add  a                                           ; $7985: $87
	ld   a, b                                        ; $7986: $78
	and  a                                           ; $7987: $a7
	ld   l, b                                        ; $7988: $68
	adc  b                                           ; $7989: $88
	sbc  b                                           ; $798a: $98
	sub  [hl]                                        ; $798b: $96
	sub  a                                           ; $798c: $97
	adc  d                                           ; $798d: $8a
	sbc  b                                           ; $798e: $98
	ld   a, d                                        ; $798f: $7a
	ld   l, c                                        ; $7990: $69
	ld   a, b                                        ; $7991: $78
	add  [hl]                                        ; $7992: $86
	and  a                                           ; $7993: $a7
	sub  a                                           ; $7994: $97
	adc  c                                           ; $7995: $89
	add  [hl]                                        ; $7996: $86
	and  a                                           ; $7997: $a7
	adc  c                                           ; $7998: $89
	adc  d                                           ; $7999: $8a
	ld   e, c                                        ; $799a: $59
	ld   a, b                                        ; $799b: $78
	ld   [hl], a                                     ; $799c: $77
	xor  b                                           ; $799d: $a8
	sub  a                                           ; $799e: $97
	sbc  b                                           ; $799f: $98
	ld   l, b                                        ; $79a0: $68
	sub  a                                           ; $79a1: $97
	xor  b                                           ; $79a2: $a8
	sub  a                                           ; $79a3: $97
	ld   l, d                                        ; $79a4: $6a
	ld   l, c                                        ; $79a5: $69
	sbc  c                                           ; $79a6: $99
	sub  l                                           ; $79a7: $95
	sbc  c                                           ; $79a8: $99
	adc  b                                           ; $79a9: $88

Jump_0bc_79aa:
	adc  e                                           ; $79aa: $8b
	ld   h, a                                        ; $79ab: $67
	and  a                                           ; $79ac: $a7
	sbc  c                                           ; $79ad: $99
	ld   a, c                                        ; $79ae: $79
	ld   l, b                                        ; $79af: $68
	sub  a                                           ; $79b0: $97
	and  a                                           ; $79b1: $a7
	adc  b                                           ; $79b2: $88
	adc  b                                           ; $79b3: $88
	adc  b                                           ; $79b4: $88
	ld   a, c                                        ; $79b5: $79
	ld   a, b                                        ; $79b6: $78
	adc  b                                           ; $79b7: $88
	sub  a                                           ; $79b8: $97
	sbc  b                                           ; $79b9: $98
	ld   a, c                                        ; $79ba: $79
	adc  b                                           ; $79bb: $88
	and  l                                           ; $79bc: $a5
	sbc  b                                           ; $79bd: $98
	sbc  c                                           ; $79be: $99
	ld   a, c                                        ; $79bf: $79
	ld   h, a                                        ; $79c0: $67
	adc  c                                           ; $79c1: $89
	add  a                                           ; $79c2: $87
	cp   c                                           ; $79c3: $b9
	ld   l, b                                        ; $79c4: $68
	sub  a                                           ; $79c5: $97
	ld   [hl], a                                     ; $79c6: $77
	xor  b                                           ; $79c7: $a8
	adc  d                                           ; $79c8: $8a
	ld   a, b                                        ; $79c9: $78
	ld   l, b                                        ; $79ca: $68
	adc  b                                           ; $79cb: $88
	add  a                                           ; $79cc: $87
	and  a                                           ; $79cd: $a7
	adc  b                                           ; $79ce: $88
	adc  c                                           ; $79cf: $89
	add  a                                           ; $79d0: $87
	adc  c                                           ; $79d1: $89
	ld   l, c                                        ; $79d2: $69
	and  [hl]                                        ; $79d3: $a6
	ld   a, d                                        ; $79d4: $7a
	ld   a, b                                        ; $79d5: $78
	adc  c                                           ; $79d6: $89
	adc  b                                           ; $79d7: $88
	add  a                                           ; $79d8: $87
	sub  a                                           ; $79d9: $97
	adc  b                                           ; $79da: $88
	sbc  c                                           ; $79db: $99
	adc  c                                           ; $79dc: $89
	ld   a, b                                        ; $79dd: $78
	ld   a, b                                        ; $79de: $78
	xor  d                                           ; $79df: $aa
	ld   h, a                                        ; $79e0: $67
	sub  a                                           ; $79e1: $97
	ld   a, c                                        ; $79e2: $79
	adc  b                                           ; $79e3: $88
	ld   [hl], a                                     ; $79e4: $77
	sbc  c                                           ; $79e5: $99
	adc  b                                           ; $79e6: $88
	and  a                                           ; $79e7: $a7
	ld   a, b                                        ; $79e8: $78
	sbc  b                                           ; $79e9: $98
	ld   a, d                                        ; $79ea: $7a
	adc  c                                           ; $79eb: $89
	ld   a, d                                        ; $79ec: $7a
	add  [hl]                                        ; $79ed: $86
	adc  c                                           ; $79ee: $89
	ld   a, b                                        ; $79ef: $78
	and  [hl]                                        ; $79f0: $a6
	sub  a                                           ; $79f1: $97
	adc  b                                           ; $79f2: $88
	adc  c                                           ; $79f3: $89
	adc  b                                           ; $79f4: $88
	ld   a, c                                        ; $79f5: $79
	ld   a, c                                        ; $79f6: $79
	ld   a, b                                        ; $79f7: $78
	sub  a                                           ; $79f8: $97
	ld   a, b                                        ; $79f9: $78
	sub  a                                           ; $79fa: $97
	adc  b                                           ; $79fb: $88
	adc  b                                           ; $79fc: $88
	ld   a, c                                        ; $79fd: $79
	and  a                                           ; $79fe: $a7
	xor  d                                           ; $79ff: $aa
	ld   l, b                                        ; $7a00: $68
	ld   l, b                                        ; $7a01: $68
	and  a                                           ; $7a02: $a7
	sbc  b                                           ; $7a03: $98
	and  a                                           ; $7a04: $a7
	ld   a, b                                        ; $7a05: $78
	adc  b                                           ; $7a06: $88
	ld   l, d                                        ; $7a07: $6a
	adc  c                                           ; $7a08: $89
	sub  a                                           ; $7a09: $97
	and  [hl]                                        ; $7a0a: $a6
	ld   h, a                                        ; $7a0b: $67
	xor  d                                           ; $7a0c: $aa
	ld   a, d                                        ; $7a0d: $7a
	add  [hl]                                        ; $7a0e: $86
	ld   l, b                                        ; $7a0f: $68
	sbc  b                                           ; $7a10: $98
	xor  d                                           ; $7a11: $aa
	add  a                                           ; $7a12: $87

Jump_0bc_7a13:
	ld   l, b                                        ; $7a13: $68
	ld   a, b                                        ; $7a14: $78
	xor  d                                           ; $7a15: $aa
	sub  [hl]                                        ; $7a16: $96
	ld   a, b                                        ; $7a17: $78
	ld   a, b                                        ; $7a18: $78
	sbc  d                                           ; $7a19: $9a
	adc  c                                           ; $7a1a: $89
	add  a                                           ; $7a1b: $87
	add  a                                           ; $7a1c: $87
	sbc  b                                           ; $7a1d: $98
	sbc  b                                           ; $7a1e: $98
	ld   a, c                                        ; $7a1f: $79
	ld   a, b                                        ; $7a20: $78
	adc  b                                           ; $7a21: $88
	adc  c                                           ; $7a22: $89
	ld   a, b                                        ; $7a23: $78
	sbc  b                                           ; $7a24: $98
	adc  b                                           ; $7a25: $88
	sub  a                                           ; $7a26: $97
	ld   a, c                                        ; $7a27: $79
	ld   [hl], a                                     ; $7a28: $77
	add  a                                           ; $7a29: $87
	and  a                                           ; $7a2a: $a7
	sbc  d                                           ; $7a2b: $9a
	ld   a, c                                        ; $7a2c: $79
	adc  b                                           ; $7a2d: $88
	add  a                                           ; $7a2e: $87
	sbc  b                                           ; $7a2f: $98
	adc  b                                           ; $7a30: $88
	ld   a, c                                        ; $7a31: $79
	add  a                                           ; $7a32: $87
	sub  a                                           ; $7a33: $97
	ld   [hl], a                                     ; $7a34: $77
	adc  c                                           ; $7a35: $89
	adc  e                                           ; $7a36: $8b
	ld   [hl], a                                     ; $7a37: $77
	sub  a                                           ; $7a38: $97
	add  l                                           ; $7a39: $85
	xor  c                                           ; $7a3a: $a9
	add  a                                           ; $7a3b: $87
	adc  c                                           ; $7a3c: $89
	ld   l, c                                        ; $7a3d: $69
	ld   l, c                                        ; $7a3e: $69
	adc  b                                           ; $7a3f: $88
	add  a                                           ; $7a40: $87
	adc  b                                           ; $7a41: $88
	ld   a, c                                        ; $7a42: $79
	adc  c                                           ; $7a43: $89
	sub  [hl]                                        ; $7a44: $96
	and  a                                           ; $7a45: $a7
	adc  d                                           ; $7a46: $8a
	add  a                                           ; $7a47: $87
	adc  b                                           ; $7a48: $88
	ld   a, c                                        ; $7a49: $79
	ld   a, c                                        ; $7a4a: $79
	ld   a, b                                        ; $7a4b: $78
	add  [hl]                                        ; $7a4c: $86
	adc  b                                           ; $7a4d: $88
	sub  a                                           ; $7a4e: $97
	sbc  c                                           ; $7a4f: $99
	sub  a                                           ; $7a50: $97
	ld   a, d                                        ; $7a51: $7a
	ld   [hl], a                                     ; $7a52: $77
	ld   a, d                                        ; $7a53: $7a
	add  a                                           ; $7a54: $87
	sbc  c                                           ; $7a55: $99
	ld   a, b                                        ; $7a56: $78
	ld   h, a                                        ; $7a57: $67
	sub  a                                           ; $7a58: $97
	adc  b                                           ; $7a59: $88
	and  a                                           ; $7a5a: $a7
	sbc  b                                           ; $7a5b: $98
	ld   a, c                                        ; $7a5c: $79
	ld   l, b                                        ; $7a5d: $68
	ld   [hl], a                                     ; $7a5e: $77
	adc  c                                           ; $7a5f: $89
	sbc  b                                           ; $7a60: $98
	sub  [hl]                                        ; $7a61: $96
	sub  a                                           ; $7a62: $97
	ld   a, c                                        ; $7a63: $79
	ld   a, c                                        ; $7a64: $79
	ld   a, b                                        ; $7a65: $78
	sub  a                                           ; $7a66: $97
	adc  c                                           ; $7a67: $89
	ld   l, b                                        ; $7a68: $68
	ld   a, b                                        ; $7a69: $78
	adc  b                                           ; $7a6a: $88
	and  a                                           ; $7a6b: $a7
	and  [hl]                                        ; $7a6c: $a6
	adc  b                                           ; $7a6d: $88
	ld   a, b                                        ; $7a6e: $78
	ld   a, d                                        ; $7a6f: $7a
	ld   a, c                                        ; $7a70: $79
	ld   a, b                                        ; $7a71: $78
	ld   [hl], a                                     ; $7a72: $77
	sbc  c                                           ; $7a73: $99
	sub  [hl]                                        ; $7a74: $96
	sbc  b                                           ; $7a75: $98
	ld   [hl], a                                     ; $7a76: $77
	adc  b                                           ; $7a77: $88
	ld   a, b                                        ; $7a78: $78
	ld   a, c                                        ; $7a79: $79
	adc  b                                           ; $7a7a: $88
	sbc  b                                           ; $7a7b: $98
	ld   a, b                                        ; $7a7c: $78
	ld   [hl], a                                     ; $7a7d: $77
	sub  a                                           ; $7a7e: $97
	adc  b                                           ; $7a7f: $88
	add  a                                           ; $7a80: $87
	add  a                                           ; $7a81: $87
	add  a                                           ; $7a82: $87
	ld   a, b                                        ; $7a83: $78
	ld   a, c                                        ; $7a84: $79
	adc  b                                           ; $7a85: $88
	adc  c                                           ; $7a86: $89
	add  a                                           ; $7a87: $87
	adc  c                                           ; $7a88: $89
	ld   a, b                                        ; $7a89: $78
	adc  b                                           ; $7a8a: $88
	sub  [hl]                                        ; $7a8b: $96
	sub  a                                           ; $7a8c: $97
	adc  b                                           ; $7a8d: $88
	sbc  b                                           ; $7a8e: $98
	add  a                                           ; $7a8f: $87
	ld   a, b                                        ; $7a90: $78
	adc  d                                           ; $7a91: $8a
	adc  b                                           ; $7a92: $88
	sbc  c                                           ; $7a93: $99
	ld   l, b                                        ; $7a94: $68
	ld   [hl], a                                     ; $7a95: $77
	adc  b                                           ; $7a96: $88
	sbc  b                                           ; $7a97: $98
	ld   a, b                                        ; $7a98: $78
	add  a                                           ; $7a99: $87
	ld   [hl], a                                     ; $7a9a: $77
	sbc  b                                           ; $7a9b: $98
	adc  b                                           ; $7a9c: $88
	add  a                                           ; $7a9d: $87
	sbc  b                                           ; $7a9e: $98
	adc  b                                           ; $7a9f: $88
	ld   [hl], a                                     ; $7aa0: $77
	ld   a, b                                        ; $7aa1: $78
	adc  d                                           ; $7aa2: $8a
	ld   a, c                                        ; $7aa3: $79
	add  a                                           ; $7aa4: $87
	sub  a                                           ; $7aa5: $97
	ld   a, b                                        ; $7aa6: $78
	sub  a                                           ; $7aa7: $97
	sbc  b                                           ; $7aa8: $98
	sbc  c                                           ; $7aa9: $99
	ld   a, b                                        ; $7aaa: $78
	ld   a, b                                        ; $7aab: $78
	ld   a, b                                        ; $7aac: $78
	sbc  b                                           ; $7aad: $98
	adc  c                                           ; $7aae: $89
	add  a                                           ; $7aaf: $87
	ld   a, b                                        ; $7ab0: $78
	adc  b                                           ; $7ab1: $88
	sub  a                                           ; $7ab2: $97
	adc  c                                           ; $7ab3: $89
	adc  c                                           ; $7ab4: $89
	sbc  b                                           ; $7ab5: $98
	ld   a, b                                        ; $7ab6: $78
	add  a                                           ; $7ab7: $87
	ld   a, b                                        ; $7ab8: $78
	sbc  c                                           ; $7ab9: $99
	adc  c                                           ; $7aba: $89
	sub  a                                           ; $7abb: $97
	adc  b                                           ; $7abc: $88
	ld   a, b                                        ; $7abd: $78
	add  a                                           ; $7abe: $87
	sbc  c                                           ; $7abf: $99
	sbc  b                                           ; $7ac0: $98
	ld   a, b                                        ; $7ac1: $78
	ld   a, c                                        ; $7ac2: $79
	ld   a, b                                        ; $7ac3: $78
	sbc  c                                           ; $7ac4: $99
	sbc  b                                           ; $7ac5: $98
	add  a                                           ; $7ac6: $87
	adc  b                                           ; $7ac7: $88
	ld   a, b                                        ; $7ac8: $78
	adc  b                                           ; $7ac9: $88
	add  a                                           ; $7aca: $87
	adc  d                                           ; $7acb: $8a
	add  a                                           ; $7acc: $87
	adc  c                                           ; $7acd: $89
	add  a                                           ; $7ace: $87
	adc  c                                           ; $7acf: $89
	sbc  c                                           ; $7ad0: $99
	ld   [hl], a                                     ; $7ad1: $77
	adc  c                                           ; $7ad2: $89
	ld   a, b                                        ; $7ad3: $78
	add  a                                           ; $7ad4: $87
	ld   l, b                                        ; $7ad5: $68
	xor  c                                           ; $7ad6: $a9
	sbc  b                                           ; $7ad7: $98
	sub  a                                           ; $7ad8: $97
	ld   [hl], a                                     ; $7ad9: $77
	adc  c                                           ; $7ada: $89
	xor  b                                           ; $7adb: $a8
	adc  b                                           ; $7adc: $88
	adc  b                                           ; $7add: $88
	ld   a, c                                        ; $7ade: $79
	adc  b                                           ; $7adf: $88
	ld   a, b                                        ; $7ae0: $78
	add  a                                           ; $7ae1: $87
	adc  c                                           ; $7ae2: $89
	sub  a                                           ; $7ae3: $97
	ld   a, b                                        ; $7ae4: $78
	sbc  b                                           ; $7ae5: $98
	add  a                                           ; $7ae6: $87
	adc  c                                           ; $7ae7: $89
	ld   a, b                                        ; $7ae8: $78
	xor  d                                           ; $7ae9: $aa
	ld   a, b                                        ; $7aea: $78
	add  a                                           ; $7aeb: $87
	ld   h, a                                        ; $7aec: $67
	xor  c                                           ; $7aed: $a9
	adc  b                                           ; $7aee: $88
	adc  d                                           ; $7aef: $8a
	add  a                                           ; $7af0: $87
	sbc  b                                           ; $7af1: $98
	ld   a, b                                        ; $7af2: $78
	adc  c                                           ; $7af3: $89
	add  a                                           ; $7af4: $87
	sbc  b                                           ; $7af5: $98
	add  a                                           ; $7af6: $87
	adc  c                                           ; $7af7: $89
	ld   a, b                                        ; $7af8: $78
	sbc  d                                           ; $7af9: $9a
	halt                                             ; $7afa: $76
	sub  a                                           ; $7afb: $97
	xor  b                                           ; $7afc: $a8
	adc  c                                           ; $7afd: $89
	sbc  b                                           ; $7afe: $98
	ld   e, b                                        ; $7aff: $58
	cp   b                                           ; $7b00: $b8
	halt                                             ; $7b01: $76
	sbc  c                                           ; $7b02: $99
	halt                                             ; $7b03: $76
	ld   a, d                                        ; $7b04: $7a
	add  a                                           ; $7b05: $87
	adc  b                                           ; $7b06: $88
	sbc  b                                           ; $7b07: $98
	sub  a                                           ; $7b08: $97
	adc  b                                           ; $7b09: $88
	sbc  c                                           ; $7b0a: $99
	adc  b                                           ; $7b0b: $88
	ld   [hl], a                                     ; $7b0c: $77
	sbc  c                                           ; $7b0d: $99
	adc  b                                           ; $7b0e: $88
	ld   a, d                                        ; $7b0f: $7a
	ld   b, a                                        ; $7b10: $47
	sub  [hl]                                        ; $7b11: $96
	and  $6b                                         ; $7b12: $e6 $6b
	ld   [hl], a                                     ; $7b14: $77
	ld   l, e                                        ; $7b15: $6b
	xor  b                                           ; $7b16: $a8
	add  a                                           ; $7b17: $87
	ld   a, c                                        ; $7b18: $79
	sub  a                                           ; $7b19: $97
	ld   a, c                                        ; $7b1a: $79
	sub  [hl]                                        ; $7b1b: $96
	add  [hl]                                        ; $7b1c: $86
	xor  c                                           ; $7b1d: $a9
	ld   h, [hl]                                     ; $7b1e: $66
	xor  h                                           ; $7b1f: $ac
	ld   l, b                                        ; $7b20: $68
	ld   l, c                                        ; $7b21: $69
	ld   a, c                                        ; $7b22: $79
	add  l                                           ; $7b23: $85
	rst  $10                                         ; $7b24: $d7
	ld   e, c                                        ; $7b25: $59
	adc  b                                           ; $7b26: $88
	sub  l                                           ; $7b27: $95
	xor  e                                           ; $7b28: $ab
	ld   e, d                                        ; $7b29: $5a
	ld   h, a                                        ; $7b2a: $67
	or   [hl]                                        ; $7b2b: $b6
	ld   c, d                                        ; $7b2c: $4a
	and  a                                           ; $7b2d: $a7
	sub  [hl]                                        ; $7b2e: $96
	sbc  c                                           ; $7b2f: $99
	ld   c, c                                        ; $7b30: $49
	ld   l, d                                        ; $7b31: $6a
	sub  [hl]                                        ; $7b32: $96
	sbc  d                                           ; $7b33: $9a
	add  l                                           ; $7b34: $85
	ld   a, d                                        ; $7b35: $7a
	add  h                                           ; $7b36: $84
	sbc  e                                           ; $7b37: $9b
	adc  b                                           ; $7b38: $88
	ld   c, c                                        ; $7b39: $49
	sub  a                                           ; $7b3a: $97
	ld   l, c                                        ; $7b3b: $69
	xor  c                                           ; $7b3c: $a9
	ld   [hl], a                                     ; $7b3d: $77
	add  a                                           ; $7b3e: $87
	and  a                                           ; $7b3f: $a7
	ld   [hl], l                                     ; $7b40: $75
	sbc  d                                           ; $7b41: $9a
	ld   e, c                                        ; $7b42: $59
	ld   a, c                                        ; $7b43: $79
	add  a                                           ; $7b44: $87
	sub  a                                           ; $7b45: $97
	sbc  c                                           ; $7b46: $99
	add  a                                           ; $7b47: $87
	ld   a, b                                        ; $7b48: $78
	sub  a                                           ; $7b49: $97
	ld   [hl], a                                     ; $7b4a: $77
	ld   a, b                                        ; $7b4b: $78
	adc  b                                           ; $7b4c: $88
	add  a                                           ; $7b4d: $87
	xor  c                                           ; $7b4e: $a9
	add  [hl]                                        ; $7b4f: $86
	sbc  c                                           ; $7b50: $99
	ld   l, b                                        ; $7b51: $68
	add  a                                           ; $7b52: $87
	sub  [hl]                                        ; $7b53: $96
	ld   a, b                                        ; $7b54: $78
	ld   e, d                                        ; $7b55: $5a
	add  [hl]                                        ; $7b56: $86
	sub  [hl]                                        ; $7b57: $96
	ld   a, c                                        ; $7b58: $79
	add  a                                           ; $7b59: $87
	sbc  b                                           ; $7b5a: $98
	ld   a, b                                        ; $7b5b: $78
	ld   a, c                                        ; $7b5c: $79
	ld   [hl], a                                     ; $7b5d: $77
	add  a                                           ; $7b5e: $87
	and  l                                           ; $7b5f: $a5
	ld   d, a                                        ; $7b60: $57
	adc  e                                           ; $7b61: $8b
	ld   l, b                                        ; $7b62: $68
	ret  c                                           ; $7b63: $d8

	ld   [hl], l                                     ; $7b64: $75
	adc  b                                           ; $7b65: $88
	ld   l, d                                        ; $7b66: $6a
	cp   d                                           ; $7b67: $ba
	and  l                                           ; $7b68: $a5
	ld   l, c                                        ; $7b69: $69
	ld   d, [hl]                                     ; $7b6a: $56
	ld   a, e                                        ; $7b6b: $7b
	xor  b                                           ; $7b6c: $a8
	ld   [hl], a                                     ; $7b6d: $77
	add  a                                           ; $7b6e: $87
	ld   d, a                                        ; $7b6f: $57
	adc  b                                           ; $7b70: $88
	xor  b                                           ; $7b71: $a8
	ld   [hl], a                                     ; $7b72: $77
	ld   a, c                                        ; $7b73: $79
	and  a                                           ; $7b74: $a7
	ld   l, c                                        ; $7b75: $69
	sbc  b                                           ; $7b76: $98
	ld   h, [hl]                                     ; $7b77: $66
	adc  c                                           ; $7b78: $89
	sub  l                                           ; $7b79: $95
	ld   e, b                                        ; $7b7a: $58
	xor  c                                           ; $7b7b: $a9
	ld   d, [hl]                                     ; $7b7c: $56
	xor  b                                           ; $7b7d: $a8
	ld   d, a                                        ; $7b7e: $57
	sub  a                                           ; $7b7f: $97
	sbc  c                                           ; $7b80: $99
	adc  c                                           ; $7b81: $89
	halt                                             ; $7b82: $76
	ld   l, b                                        ; $7b83: $68
	xor  b                                           ; $7b84: $a8
	adc  b                                           ; $7b85: $88
	adc  b                                           ; $7b86: $88
	ld   [hl], l                                     ; $7b87: $75
	ld   l, c                                        ; $7b88: $69
	add  a                                           ; $7b89: $87
	ld   h, [hl]                                     ; $7b8a: $66
	sbc  b                                           ; $7b8b: $98
	ld   [hl], a                                     ; $7b8c: $77
	ld   l, d                                        ; $7b8d: $6a
	cp   b                                           ; $7b8e: $b8
	ld   d, [hl]                                     ; $7b8f: $56
	jp   z, Jump_0bc_6a67                            ; $7b90: $ca $67 $6a

	sub  [hl]                                        ; $7b93: $96
	ld   e, c                                        ; $7b94: $59
	sub  [hl]                                        ; $7b95: $96
	ld   a, b                                        ; $7b96: $78
	add  l                                           ; $7b97: $85
	adc  b                                           ; $7b98: $88
	ld   l, d                                        ; $7b99: $6a
	ld   h, a                                        ; $7b9a: $67

jr_0bc_7b9b:
	ld   l, c                                        ; $7b9b: $69
	and  [hl]                                        ; $7b9c: $a6
	ld   h, [hl]                                     ; $7b9d: $66
	sbc  d                                           ; $7b9e: $9a
	sub  a                                           ; $7b9f: $97
	ld   a, l                                        ; $7ba0: $7d
	ret  c                                           ; $7ba1: $d8

	add  a                                           ; $7ba2: $87
	xor  l                                           ; $7ba3: $ad
	sub  l                                           ; $7ba4: $95
	ld   [hl], $85                                   ; $7ba5: $36 $85
	ld   de, $3125                                   ; $7ba7: $11 $25 $31
	jr   jr_0bc_7b9b                                 ; $7baa: $18 $ef

	adc  $ff                                         ; $7bac: $ce $ff
	rst  $38                                         ; $7bae: $ff
	sbc  $ff                                         ; $7baf: $de $ff
	call nc, $1101                                   ; $7bb1: $d4 $01 $11
	ld   de, $2115                                   ; $7bb4: $11 $15 $21
	ld   l, l                                        ; $7bb7: $6d
	rst  $38                                         ; $7bb8: $ff
	rst  $38                                         ; $7bb9: $ff
	rst  $38                                         ; $7bba: $ff
	rst  $38                                         ; $7bbb: $ff
	rst  $38                                         ; $7bbc: $ff
	db   $fc                                         ; $7bbd: $fc
	ld   [hl], c                                     ; $7bbe: $71
	ld   de, $1111                                   ; $7bbf: $11 $11 $11
	ld   de, $ff2b                                   ; $7bc2: $11 $2b $ff
	rst  $38                                         ; $7bc5: $ff
	rst  $38                                         ; $7bc6: $ff
	rst  $38                                         ; $7bc7: $ff
	rst  $38                                         ; $7bc8: $ff
	rst  $38                                         ; $7bc9: $ff
	db   $d3                                         ; $7bca: $d3
	ld   de, $1111                                   ; $7bcb: $11 $11 $11
	ld   de, $5f91                                   ; $7bce: $11 $91 $5f
	rst  $38                                         ; $7bd1: $ff
	rst  $38                                         ; $7bd2: $ff
	rst  $38                                         ; $7bd3: $ff
	rst  $38                                         ; $7bd4: $ff
	rst  $38                                         ; $7bd5: $ff
	rst  $38                                         ; $7bd6: $ff
	and  c                                           ; $7bd7: $a1
	ld   de, $1111                                   ; $7bd8: $11 $11 $11
	inc  e                                           ; $7bdb: $1c
	pop  bc                                          ; $7bdc: $c1
	rst  $38                                         ; $7bdd: $ff
	rst  $38                                         ; $7bde: $ff
	rst  $38                                         ; $7bdf: $ff
	rst  $38                                         ; $7be0: $ff
	rst  $28                                         ; $7be1: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7be2: $cf
	rst  $38                                         ; $7be3: $ff
	ld   b, c                                        ; $7be4: $41
	ld   de, $1111                                   ; $7be5: $11 $11 $11
	ld   c, a                                        ; $7be8: $4f
	ld   c, c                                        ; $7be9: $49
	rst  $38                                         ; $7bea: $ff
	rst  $38                                         ; $7beb: $ff
	rst  $38                                         ; $7bec: $ff
	cp   $ec                                         ; $7bed: $fe $ec
	cp   a                                           ; $7bef: $bf
	ld   a, [$1131]                                  ; $7bf0: $fa $31 $11
	ld   de, rAUD1LEN                                   ; $7bf3: $11 $11 $ff
	rra                                              ; $7bf6: $1f
	rst  $38                                         ; $7bf7: $ff
	rst  $38                                         ; $7bf8: $ff
	rst  $38                                         ; $7bf9: $ff
	rst  $30                                         ; $7bfa: $f7
	rst  $30                                         ; $7bfb: $f7
	rst  $38                                         ; $7bfc: $ff
	or   $21                                         ; $7bfd: $f6 $21
	ld   de, $1711                                   ; $7bff: $11 $11 $17
	rst  $30                                         ; $7c02: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c03: $cf
	rst  $38                                         ; $7c04: $ff
	rst  $38                                         ; $7c05: $ff
	rst  $38                                         ; $7c06: $ff
	adc  e                                           ; $7c07: $8b
	sbc  c                                           ; $7c08: $99
	rst  $38                                         ; $7c09: $ff
	rst  $10                                         ; $7c0a: $d7
	ld   de, $1111                                   ; $7c0b: $11 $11 $11
	rra                                              ; $7c0e: $1f
	db   $f4                                         ; $7c0f: $f4
	rst  $38                                         ; $7c10: $ff
	rst  $38                                         ; $7c11: $ff
	rst  $38                                         ; $7c12: $ff
	rst  $38                                         ; $7c13: $ff
	dec  a                                           ; $7c14: $3d
	ld   l, a                                        ; $7c15: $6f
	rst  $38                                         ; $7c16: $ff
	add  $11                                         ; $7c17: $c6 $11
	ld   de, $4f11                                   ; $7c19: $11 $11 $4f
	rst  $20                                         ; $7c1c: $e7
	rst  $38                                         ; $7c1d: $ff
	rst  $38                                         ; $7c1e: $ff
	db   $fc                                         ; $7c1f: $fc
	or   $6a                                         ; $7c20: $f6 $6a
	ld   a, a                                        ; $7c22: $7f
	rst  $38                                         ; $7c23: $ff
	and  c                                           ; $7c24: $a1
	ld   de, $1111                                   ; $7c25: $11 $11 $11
	rst  $38                                         ; $7c28: $ff
	ld   e, a                                        ; $7c29: $5f
	rst  $38                                         ; $7c2a: $ff
	rst  $38                                         ; $7c2b: $ff
	rst  $38                                         ; $7c2c: $ff
	pop  de                                          ; $7c2d: $d1
	or   [hl]                                        ; $7c2e: $b6
	rst  $28                                         ; $7c2f: $ef
	cp   $91                                         ; $7c30: $fe $91
	ld   de, $1311                                   ; $7c32: $11 $11 $13
	rst  $38                                         ; $7c35: $ff
	ld   a, a                                        ; $7c36: $7f
	rst  $38                                         ; $7c37: $ff
	rst  $38                                         ; $7c38: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c39: $cf
	ld   d, e                                        ; $7c3a: $53
	and  a                                           ; $7c3b: $a7
	rst  $38                                         ; $7c3c: $ff
	db   $fd                                         ; $7c3d: $fd
	ld   h, c                                        ; $7c3e: $61
	ld   de, $1f11                                   ; $7c3f: $11 $11 $1f
	ld   hl, sp-$11                                  ; $7c42: $f8 $ef
	rst  $38                                         ; $7c44: $ff
	rst  $38                                         ; $7c45: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c46: $cf
	jr   jr_0bc_7cc5                                 ; $7c47: $18 $7c

	rst  $38                                         ; $7c49: $ff
	db   $fc                                         ; $7c4a: $fc
	ld   de, $1111                                   ; $7c4b: $11 $11 $11
	rra                                              ; $7c4e: $1f
	or   $ff                                         ; $7c4f: $f6 $ff
	rst  $38                                         ; $7c51: $ff
	db   $fd                                         ; $7c52: $fd
	ld   hl, sp+$1a                                  ; $7c53: $f8 $1a
	ld   e, a                                        ; $7c55: $5f
	rst  $38                                         ; $7c56: $ff
	ld   a, [$1111]                                  ; $7c57: $fa $11 $11
	ld   de, $cb9f                                   ; $7c5a: $11 $9f $cb
	rst  $38                                         ; $7c5d: $ff
	rst  $38                                         ; $7c5e: $ff
	db   $fc                                         ; $7c5f: $fc
	pop  af                                          ; $7c60: $f1
	ld   c, c                                        ; $7c61: $49
	ld   a, a                                        ; $7c62: $7f
	rst  $38                                         ; $7c63: $ff
	sub  $11                                         ; $7c64: $d6 $11
	ld   de, rAUD1LEN                                   ; $7c66: $11 $11 $ff
	adc  a                                           ; $7c69: $8f
	rst  $38                                         ; $7c6a: $ff
	rst  $38                                         ; $7c6b: $ff
	rst  $38                                         ; $7c6c: $ff
	pop  af                                          ; $7c6d: $f1
	sub  [hl]                                        ; $7c6e: $96
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c6f: $cf
	rst  $38                                         ; $7c70: $ff
	pop  de                                          ; $7c71: $d1
	ld   de, $2111                                   ; $7c72: $11 $11 $21
	rst  $38                                         ; $7c75: $ff
	ld   a, a                                        ; $7c76: $7f
	rst  $38                                         ; $7c77: $ff
	rst  $38                                         ; $7c78: $ff
	rst  $28                                         ; $7c79: $ef
	add  c                                           ; $7c7a: $81
	or   l                                           ; $7c7b: $b5
	rst  $38                                         ; $7c7c: $ff
	rst  $38                                         ; $7c7d: $ff
	pop  de                                          ; $7c7e: $d1
	ld   de, $1a11                                   ; $7c7f: $11 $11 $1a
	ld   a, [$ffcf]                                  ; $7c82: $fa $cf $ff
	rst  $38                                         ; $7c85: $ff
	rst  JumpTable                                         ; $7c86: $df
	inc  d                                           ; $7c87: $14
	add  a                                           ; $7c88: $87
	rst  $38                                         ; $7c89: $ff
	cp   $91                                         ; $7c8a: $fe $91
	ld   de, $1f11                                   ; $7c8c: $11 $11 $1f
	rst  $30                                         ; $7c8f: $f7
	rst  $38                                         ; $7c90: $ff
	rst  $38                                         ; $7c91: $ff
	rst  $38                                         ; $7c92: $ff
	rst  $38                                         ; $7c93: $ff
	jr   jr_0bc_7d11                                 ; $7c94: $18 $7b

	rst  $38                                         ; $7c96: $ff
	db   $fd                                         ; $7c97: $fd
	ld   sp, $1311                                   ; $7c98: $31 $11 $13
	ccf                                              ; $7c9b: $3f
	ret                                              ; $7c9c: $c9


	rst  $38                                         ; $7c9d: $ff
	rst  $38                                         ; $7c9e: $ff
	rst  $38                                         ; $7c9f: $ff
	ld   sp, hl                                      ; $7ca0: $f9
	ld   a, [de]                                     ; $7ca1: $1a
	ld   a, [hl]                                     ; $7ca2: $7e
	rst  $38                                         ; $7ca3: $ff
	call z, $1111                                    ; $7ca4: $cc $11 $11
	ld   de, $6fdf                                   ; $7ca7: $11 $df $6f
	rst  $38                                         ; $7caa: $ff
	rst  $38                                         ; $7cab: $ff
	rst  $38                                         ; $7cac: $ff
	di                                               ; $7cad: $f3
	ld   l, b                                        ; $7cae: $68
	xor  a                                           ; $7caf: $af
	db   $fd                                         ; $7cb0: $fd
	add  $11                                         ; $7cb1: $c6 $11
	ld   de, $fc41                                   ; $7cb3: $11 $41 $fc
	ld   a, a                                        ; $7cb6: $7f
	rst  $38                                         ; $7cb7: $ff
	rst  $38                                         ; $7cb8: $ff
	rst  $38                                         ; $7cb9: $ff
	pop  af                                          ; $7cba: $f1
	xor  b                                           ; $7cbb: $a8
	adc  $fb                                         ; $7cbc: $ce $fb
	or   c                                           ; $7cbe: $b1
	ld   de, $0a11                                   ; $7cbf: $11 $11 $0a
	db   $f4                                         ; $7cc2: $f4
	rst  $38                                         ; $7cc3: $ff
	rst  $38                                         ; $7cc4: $ff

jr_0bc_7cc5:
	rst  $38                                         ; $7cc5: $ff
	rst  $38                                         ; $7cc6: $ff
	ld   h, [hl]                                     ; $7cc7: $66
	sbc  c                                           ; $7cc8: $99
	sbc  $da                                         ; $7cc9: $de $da
	ld   [hl], c                                     ; $7ccb: $71
	ld   de, $1f14                                   ; $7ccc: $11 $14 $1f
	sub  a                                           ; $7ccf: $97
	rst  $38                                         ; $7cd0: $ff
	rst  $38                                         ; $7cd1: $ff
	rst  $38                                         ; $7cd2: $ff
	rst  $38                                         ; $7cd3: $ff
	ld   a, [hl-]                                    ; $7cd4: $3a
	sbc  h                                           ; $7cd5: $9c
	sbc  $98                                         ; $7cd6: $de $98
	ld   de, $1111                                   ; $7cd8: $11 $11 $11
	cp   a                                           ; $7cdb: $bf
	cpl                                              ; $7cdc: $2f
	rst  $38                                         ; $7cdd: $ff
	rst  $38                                         ; $7cde: $ff
	rst  $38                                         ; $7cdf: $ff
	ld   sp, hl                                      ; $7ce0: $f9
	ld   a, e                                        ; $7ce1: $7b
	cp   h                                           ; $7ce2: $bc
	jp   c, $1174                                    ; $7ce3: $da $74 $11

	ld   de, $f621                                   ; $7ce6: $11 $21 $f6
	ld   a, a                                        ; $7ce9: $7f
	rst  $38                                         ; $7cea: $ff
	rst  $38                                         ; $7ceb: $ff
	rst  $38                                         ; $7cec: $ff
	push af                                          ; $7ced: $f5
	set  1, l                                        ; $7cee: $cb $cd
	or   [hl]                                        ; $7cf0: $b6
	ld   d, c                                        ; $7cf1: $51
	ld   de, $1d11                                   ; $7cf2: $11 $11 $1d
	pop  hl                                          ; $7cf5: $e1
	rst  $38                                         ; $7cf6: $ff
	rst  $38                                         ; $7cf7: $ff
	rst  $38                                         ; $7cf8: $ff
	rst  $38                                         ; $7cf9: $ff
	cp   d                                           ; $7cfa: $ba
	db   $ec                                         ; $7cfb: $ec
	call $1175                                       ; $7cfc: $cd $75 $11
	ld   de, $4f11                                   ; $7cff: $11 $11 $4f
	add  hl, hl                                      ; $7d02: $29
	rst  $38                                         ; $7d03: $ff
	rst  $38                                         ; $7d04: $ff
	rst  $38                                         ; $7d05: $ff
	rst  $38                                         ; $7d06: $ff
	xor  a                                           ; $7d07: $af
	ei                                               ; $7d08: $fb
	ld   [$1142], a                                  ; $7d09: $ea $42 $11
	ld   de, $f611                                   ; $7d0c: $11 $11 $f6
	ccf                                              ; $7d0f: $3f
	rst  $38                                         ; $7d10: $ff

jr_0bc_7d11:
	rst  $38                                         ; $7d11: $ff
	rst  $38                                         ; $7d12: $ff
	db   $fd                                         ; $7d13: $fd
	rst  $38                                         ; $7d14: $ff
	db   $dd                                         ; $7d15: $dd
	push bc                                          ; $7d16: $c5
	ld   sp, $1111                                   ; $7d17: $31 $11 $11
	ld   d, $b1                                      ; $7d1a: $16 $b1
	ld   a, e                                        ; $7d1c: $7b
	adc  $ff                                         ; $7d1d: $ce $ff
	rst  $38                                         ; $7d1f: $ff
	rst  $38                                         ; $7d20: $ff
	rst  $38                                         ; $7d21: $ff
	adc  $b5                                         ; $7d22: $ce $b5
	ld   b, c                                        ; $7d24: $41
	ld   de, $1a11                                   ; $7d25: $11 $11 $1a
	ld   [hl], c                                     ; $7d28: $71
	ld   d, l                                        ; $7d29: $55
	ld   l, e                                        ; $7d2a: $6b
	rst  $38                                         ; $7d2b: $ff
	rst  $38                                         ; $7d2c: $ff
	cp   $fe                                         ; $7d2d: $fe $fe
	rst  JumpTable                                         ; $7d2f: $df
	jp   z, $2187                                    ; $7d30: $ca $87 $21

	inc  de                                          ; $7d33: $13
	ld   d, a                                        ; $7d34: $57
	sub  d                                           ; $7d35: $92
	ld   hl, $5913                                   ; $7d36: $21 $13 $59
	sbc  d                                           ; $7d39: $9a
	xor  b                                           ; $7d3a: $a8
	sbc  e                                           ; $7d3b: $9b
	cp   [hl]                                        ; $7d3c: $be
	rst  $38                                         ; $7d3d: $ff
	xor  $ca                                         ; $7d3e: $ee $ca
	xor  c                                           ; $7d40: $a9
	xor  c                                           ; $7d41: $a9
	sbc  c                                           ; $7d42: $99
	add  h                                           ; $7d43: $84
	ld   [hl-], a                                    ; $7d44: $32
	ld   bc, $3413                                   ; $7d45: $01 $13 $34
	ld   d, h                                        ; $7d48: $54
	ld   l, b                                        ; $7d49: $68
	cp   h                                           ; $7d4a: $bc
	sbc  $cc                                         ; $7d4b: $de $cc
	cp   h                                           ; $7d4d: $bc
	db   $db                                         ; $7d4e: $db
	cp   e                                           ; $7d4f: $bb
	xor  d                                           ; $7d50: $aa
	sbc  d                                           ; $7d51: $9a
	adc  b                                           ; $7d52: $88
	ld   h, h                                        ; $7d53: $64
	ld   [hl-], a                                    ; $7d54: $32
	ld   [de], a                                     ; $7d55: $12
	inc  hl                                          ; $7d56: $23
	ld   b, l                                        ; $7d57: $45
	ld   h, a                                        ; $7d58: $67
	adc  c                                           ; $7d59: $89
	xor  e                                           ; $7d5a: $ab
	res  7, h                                        ; $7d5b: $cb $bc
	set  1, e                                        ; $7d5d: $cb $cb
	xor  d                                           ; $7d5f: $aa
	cp   c                                           ; $7d60: $b9
	cp   d                                           ; $7d61: $ba
	sbc  b                                           ; $7d62: $98
	ld   h, l                                        ; $7d63: $65
	ld   b, e                                        ; $7d64: $43
	ld   [hl+], a                                    ; $7d65: $22
	inc  hl                                          ; $7d66: $23
	ld   b, h                                        ; $7d67: $44
	ld   d, l                                        ; $7d68: $55
	ld   a, c                                        ; $7d69: $79
	xor  d                                           ; $7d6a: $aa
	cp   h                                           ; $7d6b: $bc
	call z, $dccd                                    ; $7d6c: $cc $cd $dc
	res  7, d                                        ; $7d6f: $cb $ba
	xor  d                                           ; $7d71: $aa
	sub  a                                           ; $7d72: $97
	ld   d, h                                        ; $7d73: $54
	ld   [hl+], a                                    ; $7d74: $22
	ld   de, $3422                                   ; $7d75: $11 $22 $34
	ld   d, [hl]                                     ; $7d78: $56
	ld   a, d                                        ; $7d79: $7a
	xor  h                                           ; $7d7a: $ac
	db   $dd                                         ; $7d7b: $dd
	call z, $dbdd                                    ; $7d7c: $cc $dd $db
	xor  d                                           ; $7d7f: $aa
	sbc  c                                           ; $7d80: $99
	adc  b                                           ; $7d81: $88
	ld   [hl], a                                     ; $7d82: $77
	ld   d, h                                        ; $7d83: $54
	ld   [hl-], a                                    ; $7d84: $32
	ld   [hl+], a                                    ; $7d85: $22
	inc  [hl]                                        ; $7d86: $34
	ld   d, [hl]                                     ; $7d87: $56
	ld   h, a                                        ; $7d88: $67
	adc  d                                           ; $7d89: $8a
	xor  h                                           ; $7d8a: $ac
	call z, $bcbb                                    ; $7d8b: $cc $bb $bc
	cp   d                                           ; $7d8e: $ba
	xor  c                                           ; $7d8f: $a9
	adc  c                                           ; $7d90: $89
	sbc  c                                           ; $7d91: $99
	sbc  b                                           ; $7d92: $98
	halt                                             ; $7d93: $76
	ld   d, h                                        ; $7d94: $54
	ld   b, h                                        ; $7d95: $44
	ld   b, l                                        ; $7d96: $45
	ld   d, l                                        ; $7d97: $55
	ld   d, [hl]                                     ; $7d98: $56
	ld   a, b                                        ; $7d99: $78
	sbc  d                                           ; $7d9a: $9a
	xor  d                                           ; $7d9b: $aa
	xor  e                                           ; $7d9c: $ab
	cp   e                                           ; $7d9d: $bb
	cp   e                                           ; $7d9e: $bb
	cp   e                                           ; $7d9f: $bb
	xor  d                                           ; $7da0: $aa
	sbc  b                                           ; $7da1: $98
	sbc  b                                           ; $7da2: $98
	halt                                             ; $7da3: $76
	ld   h, l                                        ; $7da4: $65
	ld   b, e                                        ; $7da5: $43
	ld   b, h                                        ; $7da6: $44
	ld   d, l                                        ; $7da7: $55
	ld   d, [hl]                                     ; $7da8: $56
	ld   h, a                                        ; $7da9: $67
	adc  b                                           ; $7daa: $88
	xor  d                                           ; $7dab: $aa
	cp   d                                           ; $7dac: $ba
	cp   e                                           ; $7dad: $bb
	cp   e                                           ; $7dae: $bb
	cp   e                                           ; $7daf: $bb
	xor  d                                           ; $7db0: $aa
	xor  b                                           ; $7db1: $a8
	sbc  c                                           ; $7db2: $99
	adc  b                                           ; $7db3: $88
	add  a                                           ; $7db4: $87
	ld   h, [hl]                                     ; $7db5: $66
	ld   d, h                                        ; $7db6: $54
	ld   b, h                                        ; $7db7: $44
	ld   b, l                                        ; $7db8: $45
	ld   d, [hl]                                     ; $7db9: $56
	ld   h, a                                        ; $7dba: $67
	adc  b                                           ; $7dbb: $88
	xor  d                                           ; $7dbc: $aa
	xor  h                                           ; $7dbd: $ac
	cp   h                                           ; $7dbe: $bc
	res  7, d                                        ; $7dbf: $cb $ba
	xor  c                                           ; $7dc1: $a9
	sbc  c                                           ; $7dc2: $99
	adc  b                                           ; $7dc3: $88
	ld   [hl], a                                     ; $7dc4: $77
	ld   h, [hl]                                     ; $7dc5: $66
	ld   d, l                                        ; $7dc6: $55
	ld   d, l                                        ; $7dc7: $55
	ld   d, l                                        ; $7dc8: $55
	ld   d, [hl]                                     ; $7dc9: $56
	ld   h, a                                        ; $7dca: $67
	ld   a, b                                        ; $7dcb: $78
	sbc  d                                           ; $7dcc: $9a
	xor  e                                           ; $7dcd: $ab
	cp   h                                           ; $7dce: $bc
	cp   e                                           ; $7dcf: $bb
	cp   e                                           ; $7dd0: $bb
	ret                                              ; $7dd1: $c9


	ld   a, c                                        ; $7dd2: $79
	adc  c                                           ; $7dd3: $89
	add  a                                           ; $7dd4: $87
	ld   [hl], a                                     ; $7dd5: $77
	halt                                             ; $7dd6: $76
	ld   h, [hl]                                     ; $7dd7: $66
	ld   d, h                                        ; $7dd8: $54
	ld   d, l                                        ; $7dd9: $55
	ld   h, [hl]                                     ; $7dda: $66
	ld   h, a                                        ; $7ddb: $67
	adc  b                                           ; $7ddc: $88
	adc  d                                           ; $7ddd: $8a
	cp   e                                           ; $7dde: $bb
	cp   e                                           ; $7ddf: $bb
	adc  $c8                                         ; $7de0: $ce $c8
	sbc  b                                           ; $7de2: $98
	sbc  b                                           ; $7de3: $98
	ld   h, [hl]                                     ; $7de4: $66
	ld   h, [hl]                                     ; $7de5: $66
	ld   d, l                                        ; $7de6: $55
	ld   b, h                                        ; $7de7: $44
	ld   b, h                                        ; $7de8: $44
	ld   b, l                                        ; $7de9: $45
	ld   l, c                                        ; $7dea: $69
	sbc  d                                           ; $7deb: $9a
	call z, $edcd                                    ; $7dec: $cc $cd $ed
	cp   e                                           ; $7def: $bb
	xor  b                                           ; $7df0: $a8
	ld   [hl], h                                     ; $7df1: $74
	ld   b, h                                        ; $7df2: $44
	ld   b, h                                        ; $7df3: $44
	ld   b, e                                        ; $7df4: $43
	inc  hl                                          ; $7df5: $23
	inc  sp                                          ; $7df6: $33
	ld   d, a                                        ; $7df7: $57
	sbc  d                                           ; $7df8: $9a
	call $ffff                                       ; $7df9: $cd $ff $ff
	db   $ed                                         ; $7dfc: $ed
	cp   c                                           ; $7dfd: $b9
	ld   d, c                                        ; $7dfe: $51
	ld   d, $44                                      ; $7dff: $16 $44
	ld   d, d                                        ; $7e01: $52
	inc  sp                                          ; $7e02: $33
	ld   [hl-], a                                    ; $7e03: $32
	ld   e, d                                        ; $7e04: $5a
	sbc  d                                           ; $7e05: $9a
	call z, $ffff                                    ; $7e06: $cc $ff $ff
	cp   $a7                                         ; $7e09: $fe $a7
	ld   b, c                                        ; $7e0b: $41
	ld   d, $22                                      ; $7e0c: $16 $22
	ld   b, c                                        ; $7e0e: $41
	ld   de, $5a32                                   ; $7e0f: $11 $32 $5a
	sbc  l                                           ; $7e12: $9d
	cp   $ff                                         ; $7e13: $fe $ff
	rst  $38                                         ; $7e15: $ff
	rst  $38                                         ; $7e16: $ff
	sub  [hl]                                        ; $7e17: $96
	ld   de, $1135                                   ; $7e18: $11 $35 $11
	ld   de, $1111                                   ; $7e1b: $11 $11 $11
	cp   l                                           ; $7e1e: $bd
	cp   a                                           ; $7e1f: $bf
	rst  $38                                         ; $7e20: $ff
	rst  $38                                         ; $7e21: $ff
	rst  $38                                         ; $7e22: $ff
	db   $fc                                         ; $7e23: $fc
	add  h                                           ; $7e24: $84
	ld   de, $1171                                   ; $7e25: $11 $71 $11
	ld   de, $1411                                   ; $7e28: $11 $11 $14
	db   $fd                                         ; $7e2b: $fd
	rst  $38                                         ; $7e2c: $ff
	rst  $38                                         ; $7e2d: $ff
	rst  $38                                         ; $7e2e: $ff
	rst  $38                                         ; $7e2f: $ff
	ld   hl, sp+$41                                  ; $7e30: $f8 $41
	inc  d                                           ; $7e32: $14
	ld   de, $1111                                   ; $7e33: $11 $11 $11
	ld   de, $ff1f                                   ; $7e36: $11 $1f $ff
	rst  $38                                         ; $7e39: $ff
	rst  $38                                         ; $7e3a: $ff
	rst  $38                                         ; $7e3b: $ff
	rst  $38                                         ; $7e3c: $ff
	add  c                                           ; $7e3d: $81
	ld   de, $1121                                   ; $7e3e: $11 $21 $11
	ld   de, $1211                                   ; $7e41: $11 $11 $12
	rst  $38                                         ; $7e44: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e45: $cf
	rst  $38                                         ; $7e46: $ff
	rst  $38                                         ; $7e47: $ff
	rst  $38                                         ; $7e48: $ff
	di                                               ; $7e49: $f3
	ld   de, $1111                                   ; $7e4a: $11 $11 $11
	ld   de, $1411                                   ; $7e4d: $11 $11 $14
	sbc  a                                           ; $7e50: $9f
	rst  JumpTable                                         ; $7e51: $df
	rst  $38                                         ; $7e52: $ff
	rst  $38                                         ; $7e53: $ff
	rst  $38                                         ; $7e54: $ff
	cp   $21                                         ; $7e55: $fe $21
	ld   de, $1111                                   ; $7e57: $11 $11 $11
	ld   de, $2b14                                   ; $7e5a: $11 $14 $2b
	rst  $38                                         ; $7e5d: $ff
	rst  $38                                         ; $7e5e: $ff
	rst  $38                                         ; $7e5f: $ff
	rst  $38                                         ; $7e60: $ff
	rst  $38                                         ; $7e61: $ff
	or   h                                           ; $7e62: $b4
	ld   de, $1111                                   ; $7e63: $11 $11 $11
	ld   de, $a111                                   ; $7e66: $11 $11 $a1
	rst  $38                                         ; $7e69: $ff
	rst  $38                                         ; $7e6a: $ff
	rst  $38                                         ; $7e6b: $ff
	rst  $38                                         ; $7e6c: $ff
	rst  $38                                         ; $7e6d: $ff
	ld   hl, sp+$41                                  ; $7e6e: $f8 $41
	ld   de, $1111                                   ; $7e70: $11 $11 $11
	ld   de, $1f1f                                   ; $7e73: $11 $1f $1f
	rst  $38                                         ; $7e76: $ff
	rst  $38                                         ; $7e77: $ff
	rst  $38                                         ; $7e78: $ff
	rst  $38                                         ; $7e79: $ff
	rst  $38                                         ; $7e7a: $ff
	ld   h, c                                        ; $7e7b: $61
	ld   de, $1111                                   ; $7e7c: $11 $11 $11
	ld   de, $f117                                   ; $7e7f: $11 $17 $f1
	rst  $38                                         ; $7e82: $ff
	rst  $38                                         ; $7e83: $ff
	rst  $38                                         ; $7e84: $ff
	rst  $38                                         ; $7e85: $ff
	rst  $38                                         ; $7e86: $ff
	pop  hl                                          ; $7e87: $e1
	ld   de, $1111                                   ; $7e88: $11 $11 $11
	ld   h, c                                        ; $7e8b: $61
	ld   de, $cff2                                   ; $7e8c: $11 $f2 $cf
	rst  $38                                         ; $7e8f: $ff
	rst  $38                                         ; $7e90: $ff
	rst  $38                                         ; $7e91: $ff
	rst  $38                                         ; $7e92: $ff
	pop  af                                          ; $7e93: $f1
	ld   de, $1111                                   ; $7e94: $11 $11 $11
	inc  de                                          ; $7e97: $13
	ld   de, $1fcf                                   ; $7e98: $11 $cf $1f
	rst  $38                                         ; $7e9b: $ff
	rst  $38                                         ; $7e9c: $ff
	rst  $38                                         ; $7e9d: $ff
	rst  $38                                         ; $7e9e: $ff
	di                                               ; $7e9f: $f3
	ld   de, $1111                                   ; $7ea0: $11 $11 $11
	rra                                              ; $7ea3: $1f
	ld   de, $1f2f                                   ; $7ea4: $11 $2f $1f
	rst  $38                                         ; $7ea7: $ff
	rst  $38                                         ; $7ea8: $ff
	rst  $38                                         ; $7ea9: $ff
	rst  $38                                         ; $7eaa: $ff
	rst  $38                                         ; $7eab: $ff
	ld   de, $1111                                   ; $7eac: $11 $11 $11
	inc  e                                           ; $7eaf: $1c
	ld   de, $271f                                   ; $7eb0: $11 $1f $27
	rst  $38                                         ; $7eb3: $ff
	rst  $38                                         ; $7eb4: $ff
	rst  $38                                         ; $7eb5: $ff
	rst  $38                                         ; $7eb6: $ff
	rst  $38                                         ; $7eb7: $ff
	inc  de                                          ; $7eb8: $13
	ld   de, $1111                                   ; $7eb9: $11 $11 $11
	ld   b, c                                        ; $7ebc: $41
	rra                                              ; $7ebd: $1f
	or   c                                           ; $7ebe: $b1
	rst  $38                                         ; $7ebf: $ff
	rst  $38                                         ; $7ec0: $ff
	rst  $38                                         ; $7ec1: $ff
	rst  $38                                         ; $7ec2: $ff
	rst  $38                                         ; $7ec3: $ff
	inc  de                                          ; $7ec4: $13
	ld   de, $1111                                   ; $7ec5: $11 $11 $11
	pop  de                                          ; $7ec8: $d1
	rra                                              ; $7ec9: $1f
	pop  hl                                          ; $7eca: $e1
	rst  $38                                         ; $7ecb: $ff
	rst  $38                                         ; $7ecc: $ff
	rst  $38                                         ; $7ecd: $ff
	rst  $38                                         ; $7ece: $ff
	rst  $38                                         ; $7ecf: $ff
	ld   de, $1111                                   ; $7ed0: $11 $11 $11
	ld   de, $1ff1                                   ; $7ed3: $11 $f1 $1f
	pop  hl                                          ; $7ed6: $e1
	rst  $38                                         ; $7ed7: $ff
	rst  $38                                         ; $7ed8: $ff
	rst  $38                                         ; $7ed9: $ff
	rst  $38                                         ; $7eda: $ff
	rst  $38                                         ; $7edb: $ff
	ld   de, $1111                                   ; $7edc: $11 $11 $11
	inc  de                                          ; $7edf: $13
	pop  de                                          ; $7ee0: $d1
	rra                                              ; $7ee1: $1f
	call nz, $ffff                                   ; $7ee2: $c4 $ff $ff
	rst  $38                                         ; $7ee5: $ff
	cp   $ff                                         ; $7ee6: $fe $ff
	ld   [de], a                                     ; $7ee8: $12
	ld   de, $1f31                                   ; $7ee9: $11 $31 $1f
	ld   d, c                                        ; $7eec: $51
	sbc  a                                           ; $7eed: $9f
	ld   a, l                                        ; $7eee: $7d
	rst  $38                                         ; $7eef: $ff
	rst  $38                                         ; $7ef0: $ff
	rst  $38                                         ; $7ef1: $ff
	db   $fd                                         ; $7ef2: $fd
	db   $fd                                         ; $7ef3: $fd
	ld   de, $6111                                   ; $7ef4: $11 $11 $61
	rra                                              ; $7ef7: $1f
	ld   de, $3fff                                   ; $7ef8: $11 $ff $3f
	rst  $38                                         ; $7efb: $ff
	rst  $38                                         ; $7efc: $ff
	rst  $38                                         ; $7efd: $ff
	cp   $f2                                         ; $7efe: $fe $f2
	ld   de, $2111                                   ; $7f00: $11 $11 $21
	rra                                              ; $7f03: $1f
	ld   de, $3fff                                   ; $7f04: $11 $ff $3f
	rst  $38                                         ; $7f07: $ff
	rst  $38                                         ; $7f08: $ff
	rst  $38                                         ; $7f09: $ff
	sbc  a                                           ; $7f0a: $9f
	pop  af                                          ; $7f0b: $f1
	ld   de, $1113                                   ; $7f0c: $11 $13 $11
	xor  [hl]                                        ; $7f0f: $ae
	ld   [de], a                                     ; $7f10: $12
	cp   $bf                                         ; $7f11: $fe $bf
	rst  $38                                         ; $7f13: $ff
	rst  $38                                         ; $7f14: $ff
	rst  $38                                         ; $7f15: $ff
	ld   l, a                                        ; $7f16: $6f
	pop  af                                          ; $7f17: $f1
	ld   de, $1119                                   ; $7f18: $11 $19 $11
	pop  af                                          ; $7f1b: $f1
	ld   e, $f9                                      ; $7f1c: $1e $f9
	rst  $38                                         ; $7f1e: $ff
	rst  $38                                         ; $7f1f: $ff
	rst  $38                                         ; $7f20: $ff
	rst  $38                                         ; $7f21: $ff
	xor  a                                           ; $7f22: $af
	ld   sp, $1111                                   ; $7f23: $31 $11 $11
	ld   de, $1ff1                                   ; $7f26: $11 $f1 $1f
	ei                                               ; $7f29: $fb
	rst  $38                                         ; $7f2a: $ff
	rst  $38                                         ; $7f2b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f2c: $cf
	ld   sp, hl                                      ; $7f2d: $f9
	rst  $38                                         ; $7f2e: $ff
	ld   de, $d111                                   ; $7f2f: $11 $11 $d1
	rra                                              ; $7f32: $1f
	ld   h, c                                        ; $7f33: $61
	ccf                                              ; $7f34: $3f
	rst  $38                                         ; $7f35: $ff
	rst  $38                                         ; $7f36: $ff
	rst  $38                                         ; $7f37: $ff
	rst  $38                                         ; $7f38: $ff
	or   $fa                                         ; $7f39: $f6 $fa
	ld   de, $5111                                   ; $7f3b: $11 $11 $51
	rra                                              ; $7f3e: $1f
	ld   de, $ffaf                                   ; $7f3f: $11 $af $ff
	rst  $38                                         ; $7f42: $ff
	ei                                               ; $7f43: $fb
	rst  $38                                         ; $7f44: $ff
	ei                                               ; $7f45: $fb
	pop  af                                          ; $7f46: $f1
	ld   de, $111f                                   ; $7f47: $11 $1f $11
	ld   l, d                                        ; $7f4a: $6a
	ld   de, $ffaf                                   ; $7f4b: $11 $af $ff
	cp   a                                           ; $7f4e: $bf
	db   $fc                                         ; $7f4f: $fc
	rst  $38                                         ; $7f50: $ff
	db   $fc                                         ; $7f51: $fc
	ld   d, c                                        ; $7f52: $51
	ld   de, $111d                                   ; $7f53: $11 $1d $11
	or   c                                           ; $7f56: $b1
	ld   d, $5f                                      ; $7f57: $16 $5f
	rst  $38                                         ; $7f59: $ff
	rst  $38                                         ; $7f5a: $ff
	rst  $38                                         ; $7f5b: $ff
	rst  $38                                         ; $7f5c: $ff
	rst  $38                                         ; $7f5d: $ff
	ld   de, $1311                                   ; $7f5e: $11 $11 $13
	ld   de, $2771                                   ; $7f61: $11 $71 $27
	ccf                                              ; $7f64: $3f
	db   $fd                                         ; $7f65: $fd
	rst  $38                                         ; $7f66: $ff
	rst  $38                                         ; $7f67: $ff
	rst  $38                                         ; $7f68: $ff
	rst  $38                                         ; $7f69: $ff
	ld   de, $1a11                                   ; $7f6a: $11 $11 $1a
	ld   de, $1971                                   ; $7f6d: $11 $71 $19
	inc  de                                          ; $7f70: $13
	db   $fc                                         ; $7f71: $fc
	sbc  a                                           ; $7f72: $9f
	rst  $38                                         ; $7f73: $ff
	rst  $38                                         ; $7f74: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f75: $cf
	add  [hl]                                        ; $7f76: $86
	ld   h, [hl]                                     ; $7f77: $66
	ld   a, [hl-]                                    ; $7f78: $3a
	ld   [hl], c                                     ; $7f79: $71
	ld   b, h                                        ; $7f7a: $44
	ld   d, $71                                      ; $7f7b: $16 $71
	ld   e, h                                        ; $7f7d: $5c
	ld   d, h                                        ; $7f7e: $54
	adc  c                                           ; $7f7f: $89
	xor  l                                           ; $7f80: $ad
	sbc  e                                           ; $7f81: $9b
	db   $db                                         ; $7f82: $db
	xor  d                                           ; $7f83: $aa
	xor  b                                           ; $7f84: $a8
	xor  d                                           ; $7f85: $aa
	cp   c                                           ; $7f86: $b9
	adc  d                                           ; $7f87: $8a
	add  a                                           ; $7f88: $87
	adc  b                                           ; $7f89: $88
	ld   b, h                                        ; $7f8a: $44
	ld   h, h                                        ; $7f8b: $64
	inc  [hl]                                        ; $7f8c: $34
	ld   d, [hl]                                     ; $7f8d: $56
	halt                                             ; $7f8e: $76
	ld   e, c                                        ; $7f8f: $59
	xor  c                                           ; $7f90: $a9
	xor  d                                           ; $7f91: $aa
	xor  d                                           ; $7f92: $aa
	call z, $eece                                    ; $7f93: $cc $ce $ee
	xor  c                                           ; $7f96: $a9
	and  a                                           ; $7f97: $a7
	ld   [hl-], a                                    ; $7f98: $32
	ld   hl, $1311                                   ; $7f99: $21 $11 $13
	ld   b, l                                        ; $7f9c: $45
	ld   a, c                                        ; $7f9d: $79
	xor  l                                           ; $7f9e: $ad
	cp   $fd                                         ; $7f9f: $fe $fd
	xor  $ac                                         ; $7fa1: $ee $ac
	ei                                               ; $7fa3: $fb
	ld   a, c                                        ; $7fa4: $79
	ld   h, h                                        ; $7fa5: $64
	ld   b, c                                        ; $7fa6: $41
	ld   de, $3311                                   ; $7fa7: $11 $11 $33
	ld   c, c                                        ; $7faa: $49
	xor  d                                           ; $7fab: $aa
	adc  $ff                                         ; $7fac: $ce $ff
	call $86d9                                       ; $7fae: $cd $d9 $86
	ld   l, e                                        ; $7fb1: $6b
	ld   h, e                                        ; $7fb2: $63
	ld   d, e                                        ; $7fb3: $53
	dec  [hl]                                        ; $7fb4: $35
	ld   hl, $6757                                   ; $7fb5: $21 $57 $67
	ld   a, e                                        ; $7fb8: $7b
	db   $db                                         ; $7fb9: $db
	cp   a                                           ; $7fba: $bf
	rst  $38                                         ; $7fbb: $ff
	ld   [$1165], a                                  ; $7fbc: $ea $65 $11
	add  a                                           ; $7fbf: $87
	inc  d                                           ; $7fc0: $14
	ld   sp, $1952                                   ; $7fc1: $31 $52 $19
	cp   c                                           ; $7fc4: $b9
	adc  d                                           ; $7fc5: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fc6: $cf
	xor  $ff                                         ; $7fc7: $ee $ff
	ei                                               ; $7fc9: $fb
	ld   b, d                                        ; $7fca: $42
	inc  de                                          ; $7fcb: $13
	pop  bc                                          ; $7fcc: $c1
	ld   d, $34                                      ; $7fcd: $16 $34
	ld   de, $888f                                   ; $7fcf: $11 $8f $88
	rst  $38                                         ; $7fd2: $ff
	rst  $38                                         ; $7fd3: $ff
	rst  $28                                         ; $7fd4: $ef
	ld   a, [$1175]                                  ; $7fd5: $fa $75 $11
	rra                                              ; $7fd8: $1f
	ld   de, $7374                                   ; $7fd9: $11 $74 $73
	dec  de                                          ; $7fdc: $1b
	ld   a, [$ffbd]                                  ; $7fdd: $fa $bd $ff
	ei                                               ; $7fe0: $fb
	rst  $38                                         ; $7fe1: $ff
	and  h                                           ; $7fe2: $a4
	ld   de, $611a                                   ; $7fe3: $11 $1a $61
	ld   [hl], a                                     ; $7fe6: $77
	ld   [hl], $12                                   ; $7fe7: $36 $12
	rst  $38                                         ; $7fe9: $ff
	ld   a, a                                        ; $7fea: $7f
	rst  $38                                         ; $7feb: $ff
	rst  $38                                         ; $7fec: $ff
	rst  $38                                         ; $7fed: $ff
	db   $e4                                         ; $7fee: $e4
	ld   de, $e114                                   ; $7fef: $11 $14 $e1
	ld   a, [de]                                     ; $7ff2: $1a
	jr   z, @+$13                                    ; $7ff3: $28 $11

	rst  $38                                         ; $7ff5: $ff
	adc  l                                           ; $7ff6: $8d
	rst  $38                                         ; $7ff7: $ff
	rst  $38                                         ; $7ff8: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ff9: $cf
	ldh  a, [c]                                      ; $7ffa: $f2
	ld   de, $e113                                   ; $7ffb: $11 $13 $e1
	inc  e                                           ; $7ffe: $1c
	add  hl, de                                      ; $7fff: $19
